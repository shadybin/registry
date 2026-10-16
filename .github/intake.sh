#!/usr/bin/env bash
# For every registered project, takes in its recent releases that carry a statement,
# report, manifest and review from the certify workflow and are not in the registry yet:
# checks all four were attested by that workflow, for that tag, on a GitHub-hosted runner,
# then signs, which reruns the verdict's rule first and caches the dependency reviews.
# Then it points each project's badge at the project's latest release. Run from the
# registry's root by the intake workflow.
#
# What the vendor's release carries is only ever read: copied, hashed and parsed, never run.
set -euo pipefail

signer="shadybin/shadybin/.github/workflows/certify.yml"
assets=(shadybin-statement.txt shadybin-report.md shadybin-manifest.json shadybin-review.json)
tag_pattern='^[A-Za-z0-9][A-Za-z0-9._+-]*$'

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
    args=()
    for a in "${assets[@]}"; do args+=(-p "$a"); done
    if ! gh release download "$tag" -R "$gh_repo" "${args[@]}" -D "$tmp" 2>/dev/null ||
      [ "$(ls "$tmp" | wc -l)" -ne "${#assets[@]}" ]; then
      rm -rf "$tmp"
      continue # not certified by the vendor's workflow, or not yet
    fi

    ok=1
    for a in "${assets[@]}"; do
      if ! gh attestation verify "$tmp/$a" -R "$gh_repo" --signer-workflow "$signer" \
        --source-ref "refs/tags/$tag" --deny-self-hosted-runners >/dev/null; then
        echo "::warning::$repo $tag: $a was not attested by $signer for refs/tags/$tag"
        ok=0
      fi
    done
    if [ "$ok" = 1 ]; then
      mkdir -p "$dir"
      cp "$tmp/shadybin-statement.txt" "$dir/statement.txt"
      cp "$tmp/shadybin-report.md" "$dir/report.md"
      cp "$tmp/shadybin-manifest.json" "$dir/manifest.json"
      cp "$tmp/shadybin-review.json" "$dir/review.json"
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
