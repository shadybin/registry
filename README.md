# The shadybin registry

Every release [shadybin](https://github.com/shadybin/shadybin) has certified or rejected,
signed. It is served at **https://shadybin.dev/registry**, and its commit history is the
public record of every signature: `main` cannot be force-pushed or deleted.

A release is **certified** when shadybin rebuilt it from its git tag, the result matched
what the vendor published, and Claude's review of the code that goes into it found
nothing shady. It is **rejected** when it rebuilt but failed review. No person approves
either verdict: it follows from the review by a fixed rule, and anyone can rerun the rule
from the files here.

## Layout

```text
github.com/<owner>/<repo>/
  project.json            how shadybin rebuilds and reviews the project
  badge.json              the badge: the latest release and its standing
  latest                  the newest certified release, the base the next is reviewed against
  <tag>/
    statement.txt         what was certified, and the verdict
    statement.txt.sig     shadybin's Ed25519 signature over it
    report.md             the rebuild, the capabilities and the review, for people
    manifest.json         what the code can do, and every module compiled in
    review.json           the reviewer's answers, which the verdict follows from
    badge.json            the release's own badge
deps/<module>@<version>/  cached, signed reviews of third-party code, shared by every project
```

Each release's `report.md` is the place to start.

## Checking a release

Fetch `statement.txt` and `statement.txt.sig` for the release, check the signature with
shadybin's public key, and check the statement lists your file with its SHA-256:

```text
d971638b671326b3831fb6962e0da516593a1af317b29521651bdf02bb2ed8fc
```

The CLI does it in one step:

```sh
shadybin verify -key d971638b671326b3831fb6962e0da516593a1af317b29521651bdf02bb2ed8fc \
  -repo github.com/miradorlabs/terma-cli -tag v0.2.7 terma_Linux_x86_64.tar.gz
```

Updaters use an SDK instead: `verify` for Go, `sdk/zig` for Zig, `sdk/rust` for Rust, all
in [shadybin/shadybin](https://github.com/shadybin/shadybin). Each has the key built in.
The full rules are in [spec/SPEC.md](https://github.com/shadybin/shadybin/blob/main/spec/SPEC.md).

## Badges

A project's badge names its latest GitHub release, whatever shadybin made of it:

| The latest release is | The badge reads |
|---|---|
| certified | `v1.2.0 not shady` |
| rejected | `v1.2.0 shady` |
| not yet signed, under 24 hours old | `v1.2.0 pending` |
| not signed after that | `v1.2.0 not certified` |

```markdown
[![shadybin](https://img.shields.io/endpoint?url=https://shadybin.dev/registry/github.com/<owner>/<repo>/badge.json)](https://shadybin.dev/registry/github.com/<owner>/<repo>/)
```

## Adding a project

1. Open a pull request adding `github.com/<owner>/<repo>/project.json`, which says how to
   rebuild the project. See the ones here and
   [the spec](https://github.com/shadybin/shadybin/blob/main/spec/SPEC.md#projectjson).
   It lives here, not in the project's repository, so a vendor cannot change how its own
   release is checked from inside the release.
2. In the project's release workflow, after the release is published, call the certify
   workflow, pinned to a commit of shadybin/shadybin:

   ```yaml
   shadybin:
     needs: release
     permissions: { contents: write, id-token: write, attestations: write }
     uses: shadybin/shadybin/.github/workflows/certify.yml@<commit>
     with: { tag: "${{ github.ref_name }}" }
     secrets: { ANTHROPIC_API_KEY: "${{ secrets.ANTHROPIC_API_KEY }}" }
   ```

   It runs on the project's own Actions minutes and Claude API key, and attaches its
   statement, report, manifest and review to the release.
3. Every 15 minutes, this repository's `intake` workflow finds them. It checks that the
   certify workflow made them, for that tag, on a GitHub-hosted runner, reruns the rule
   behind the verdict, and signs.
