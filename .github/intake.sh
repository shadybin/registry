#!/usr/bin/env bash
# For every registered project, takes in its recent releases that have a statement,
# report, manifest and review from the certify workflow and are not in the registry yet,
# attached to the release or, for a release that cannot take assets (an immutable one),
# kept as the certify run's shadybin-<tag> artifact:
# checks all four were attested by that workflow, at a commit listed in certify-commits,
# in the project's repository, on a GitHub-hosted runner, then signs, which reruns the
# verdict's rule first and caches the dependency reviews.
# Then it points each project's badge at the project's latest release. Run from the
# registry's root by the intake workflow.
#
# What the vendor's release carries is only ever read: copied, hashed and parsed, never run.
set -euo pipefail

signer="shadybin/shadybin/.github/workflows/certify.yml"
assets=(shadybin-statement.txt shadybin-report.md shadybin-manifest.json shadybin-review.json)
tag_pattern='^[A-Za-z0-9][A-Za-z0-9._+-]*$'
# The certify commits shadybin has released, as a JSON array for jq.
commits=$(grep -oE '^[0-9a-f]{40}' "$(dirname "$0")/certify-commits" | jq -R . | jq -sc .)
# A certification is four small text files; anything bigger is not one.
max_artifact_bytes=$((32 * 1024 * 1024))

# verified <gh_repo> <dir>: whether all four files in dir were attested by the certify
# workflow, at a commit listed in certify-commits, in gh_repo, on a GitHub-hosted runner.
# This is the whole of what makes files trusted; where they were fetched from earns none.
verified() {
  local gh_repo=$1 dir=$2 a out
  for a in "${assets[@]}"; do
    [ -f "$dir/$a" ] || return 1
    # Which ref triggered the run does not matter: certify checks out refs/tags/<tag>
    # itself, and the statement it signs names the tag, so a run started from a branch,
    # such as a re-certification of an older release, rebuilds and reviews the same.
    # Any verified attestation will do, as long as its certify is one shadybin released.
    if ! out=$(gh attestation verify "$dir/$a" -R "$gh_repo" --signer-workflow "$signer" \
      --deny-self-hosted-runners --format json); then
      echo "::warning::$gh_repo: $a was not attested by $signer"
      return 1
    elif ! jq -e --argjson ok "$commits" \
      'any(.[]; .verificationResult.signature.certificate.buildSignerDigest as $d | $ok | index($d))' \
      <<<"$out" >/dev/null; then
      echo "::warning::$gh_repo: $a was attested by a certify commit not in certify-commits"
      return 1
    fi
  done
}

# fetch <gh_repo> <tag> <tmp>: sets $fetched to a directory holding four files that verify:
# the release's assets if they do, else the newest unexpired shadybin-<tag> artifact in the
# repository that does. Fails if there is none. (Sets a variable rather than printing, so
# the verification warnings reach the log.)
fetch() {
  local gh_repo=$1 tag=$2 tmp=$3 a id size
  local args=()
  for a in "${assets[@]}"; do args+=(-p "$a"); done
  if gh release download "$tag" -R "$gh_repo" "${args[@]}" -D "$tmp/release" 2>/dev/null &&
    [ "$(ls "$tmp/release" | wc -l)" -eq "${#assets[@]}" ] &&
    verified "$gh_repo" "$tmp/release"; then
    fetched="$tmp/release"
    return 0
  fi
  while read -r id size; do
    [ -n "$id" ] || continue
    [ "$size" -le "$max_artifact_bytes" ] || continue
    gh api "repos/$gh_repo/actions/artifacts/$id/zip" >"$tmp/$id.zip" 2>/dev/null || continue
    # Only the four expected names, paths stripped: nothing else in the archive is read.
    unzip -q -j -o "$tmp/$id.zip" "${assets[@]}" -d "$tmp/artifact-$id" 2>/dev/null || continue
    if verified "$gh_repo" "$tmp/artifact-$id"; then
      fetched="$tmp/artifact-$id"
      return 0
    fi
  done < <(gh api "repos/$gh_repo/actions/artifacts?name=shadybin-$tag&per_page=20" \
    -q '[.artifacts[] | select(.expired | not)] | sort_by(.created_at) | reverse | .[] | "\(.id) \(.size_in_bytes)"' 2>/dev/null)
  return 1
}

shopt -s nullglob
for project in github.com/*/*/project.json; do
  repo=${project%/project.json}
  gh_repo=${repo#github.com/}
  # Oldest first, so latest ends at the newest.
  tags=$(gh release list -R "$gh_repo" --limit 20 --json tagName,isDraft \
    -q '[.[] | select(.isDraft | not) | .tagName] | reverse | .[]')
  for tag in $tags; do
    [[ "$tag" =~ $tag_pattern ]] || continue
    dir="$repo/$tag"
    [ -e "$dir/statement.txt" ] && continue

    tmp=$(mktemp -d)
    if fetch "$gh_repo" "$tag" "$tmp"; then
      src=$fetched
      mkdir -p "$dir"
      cp "$src/shadybin-statement.txt" "$dir/statement.txt"
      cp "$src/shadybin-report.md" "$dir/report.md"
      cp "$src/shadybin-manifest.json" "$dir/manifest.json"
      cp "$src/shadybin-review.json" "$dir/review.json"
      # sign checks the statement names this repository and tag and that the files beside
      # it are the ones it names, reruns the rule that gave the verdict, and only then signs.
      if ! shadybin sign -registry . -repo "$repo" -tag "$tag"; then
        echo "::warning::$repo $tag: not signed"
        rm -rf "$dir"
      fi
    fi
    rm -rf "$tmp"
  done

  # The badge names the latest release, the one users are getting, whatever shadybin made
  # of it: so an old green badge cannot outlive a release nobody certified.
  if latest=$(gh api "repos/$gh_repo/releases/latest" -q '.tag_name + " " + .published_at' 2>/dev/null) &&
    read -r tag published <<<"$latest" && [[ "$tag" =~ $tag_pattern ]]; then
    shadybin badge -registry . -repo "$repo" -tag "$tag" -published "$published" ||
      echo "::warning::$repo $tag: badge not updated"
  fi
done

# The pages people reach from a badge: an index, and each project's releases.
shadybin pages -registry .
