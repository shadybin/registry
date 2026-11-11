# github.com/shadybin/shadybin v1.1.0

## Rebuild

Rebuilt from tag `v1.1.0` (a317b74eb941b7d1966b67b47fab4c2c8d6deb01) and compared with the published checksums.

| File | Published | Rebuilt | Result |
|---|---|---|---|
| `shadybin-darwin-amd64` | `sha256:83c18302ccc2…` | `sha256:83c18302ccc2…` | identical |
| `shadybin-darwin-arm64` | `sha256:6dadb6df6047…` | `sha256:6dadb6df6047…` | identical |
| `shadybin-linux-amd64` | `sha256:021bb8a66f3f…` | `sha256:021bb8a66f3f…` | identical |
| `shadybin-linux-arm64` | `sha256:998cdab1e7ba…` | `sha256:998cdab1e7ba…` | identical |

## Capabilities

What each package compiled into the binary uses directly from the standard library, for darwin, linux, found by `github.com/google/capslock/cmd/capslock@v0.3.4`. Reflection, runtime and unanalyzed calls are left out: nearly every package has them.

| Capability | Packages |
|---|---|
| ARBITRARY_EXECUTION | <details><summary>20</summary>`./internal/checksums`, `./internal/manifest`, `./internal/registry`, `./internal/review`, `github.com/anthropics/anthropic-sdk-go`, `github.com/anthropics/anthropic-sdk-go/config`, `github.com/anthropics/anthropic-sdk-go/internal/apierror`, `github.com/anthropics/anthropic-sdk-go/internal/apijson`, `github.com/anthropics/anthropic-sdk-go/internal/auth`, `github.com/anthropics/anthropic-sdk-go/internal/requestconfig`, `github.com/anthropics/anthropic-sdk-go/internal/telemetry`, `github.com/invopop/jsonschema`, `github.com/pb33f/ordered-map/v2`, `github.com/tidwall/pretty`, `github.com/tidwall/sjson`, `go.opentelemetry.io/auto/sdk`, `go.opentelemetry.io/auto/sdk/internal/telemetry`, `go.opentelemetry.io/otel/attribute`, `go.opentelemetry.io/otel/codes`, `go.opentelemetry.io/otel/trace`</details> |
| EXEC | <details><summary>3</summary>`./internal/cli`, `./internal/manifest`, `./internal/review`</details> |
| FILES | <details><summary>25</summary>`./internal/checksums`, `./internal/cli`, `./internal/keys`, `./internal/manifest`, `./internal/registry`, `./internal/review`, `github.com/anthropics/anthropic-sdk-go`, `github.com/anthropics/anthropic-sdk-go/config`, `github.com/anthropics/anthropic-sdk-go/internal/apierror`, `github.com/anthropics/anthropic-sdk-go/internal/apijson`, `github.com/anthropics/anthropic-sdk-go/internal/auth`, `github.com/anthropics/anthropic-sdk-go/internal/requestconfig`, `github.com/anthropics/anthropic-sdk-go/internal/telemetry`, `github.com/anthropics/anthropic-sdk-go/internal/tracing`, `github.com/anthropics/anthropic-sdk-go/packages/ssestream`, `github.com/go-logr/logr`, `github.com/invopop/jsonschema`, `github.com/pb33f/ordered-map/v2`, `github.com/tidwall/pretty`, `github.com/tidwall/sjson`, `go.opentelemetry.io/auto/sdk`, `go.opentelemetry.io/auto/sdk/internal/telemetry`, `go.opentelemetry.io/otel/attribute`, `go.opentelemetry.io/otel/codes`, `go.opentelemetry.io/otel/trace`</details> |
| MODIFY_SYSTEM_STATE | <details><summary>2</summary>`./cmd/shadybin`, `github.com/go-logr/logr/funcr`</details> |
| NETWORK | <details><summary>29</summary>`./internal/checksums`, `./internal/cli`, `./internal/manifest`, `./internal/registry`, `./internal/review`, `./verify`, `github.com/anthropics/anthropic-sdk-go`, `github.com/anthropics/anthropic-sdk-go/config`, `github.com/anthropics/anthropic-sdk-go/internal/apierror`, `github.com/anthropics/anthropic-sdk-go/internal/apiform`, `github.com/anthropics/anthropic-sdk-go/internal/apijson`, `github.com/anthropics/anthropic-sdk-go/internal/auth`, `github.com/anthropics/anthropic-sdk-go/internal/requestconfig`, `github.com/anthropics/anthropic-sdk-go/internal/telemetry`, `github.com/anthropics/anthropic-sdk-go/internal/tracing`, `github.com/anthropics/anthropic-sdk-go/option`, `github.com/anthropics/anthropic-sdk-go/packages/ssestream`, `github.com/go-logr/logr`, `github.com/go-logr/logr/funcr`, `github.com/invopop/jsonschema`, `github.com/pb33f/ordered-map/v2`, `github.com/tidwall/pretty`, `github.com/tidwall/sjson`, `go.opentelemetry.io/auto/sdk`, `go.opentelemetry.io/auto/sdk/internal/telemetry`, `go.opentelemetry.io/otel/attribute`, `go.opentelemetry.io/otel/codes`, `go.opentelemetry.io/otel/trace`, `golang.org/x/sync/errgroup`</details> |
| READ_SYSTEM_STATE | <details><summary>9</summary>`./internal/cli`, `./internal/manifest`, `./internal/review`, `github.com/anthropics/anthropic-sdk-go`, `github.com/anthropics/anthropic-sdk-go/config`, `github.com/anthropics/anthropic-sdk-go/internal/auth`, `github.com/anthropics/anthropic-sdk-go/internal/tracing`, `github.com/anthropics/anthropic-sdk-go/option`, `go.opentelemetry.io/auto/sdk`</details> |
| UNSAFE_POINTER | <details><summary>4</summary>`github.com/buger/jsonparser`, `github.com/tidwall/gjson`, `github.com/tidwall/sjson`, `go.opentelemetry.io/otel/internal`</details> |

65 packages outside the standard library are compiled in.

### Changes since v1.0.6

None: the same packages, with the same capabilities.

## Review

**Certified.**

`claude-opus-5-5` reviewed the code compiled into the binary as what changed since v1.0.6, the last certified release: 1 units, 0 of them answered from the shared cache. The verdict follows from its answers by a fixed rule, with no person involved.

- Reviewed with the project's code, since it is in the vendor's repository: `github.com/shadybin/shadybin`, `github.com/shadybin/shadybin/verify`
- Third-party, unchanged since the last certified release, when it was reviewed: `github.com/anthropics/anthropic-sdk-go@v1.82.0`, `github.com/bahlo/generic-list-go@v0.2.0`, `github.com/buger/jsonparser@v1.1.2`, `github.com/go-logr/logr@v1.4.2`, `github.com/go-logr/stdr@v1.2.2`, `github.com/invopop/jsonschema@v0.14.0`, `github.com/pb33f/ordered-map/v2@v2.3.1`, `github.com/standard-webhooks/standard-webhooks/libraries@v0.0.1`, `github.com/tidwall/gjson@v1.18.0`, `github.com/tidwall/match@v1.1.1`, `github.com/tidwall/pretty@v1.2.1`, `github.com/tidwall/sjson@v1.2.5`, `go.opentelemetry.io/auto/sdk@v1.1.0`, `go.opentelemetry.io/otel@v1.33.0`, `go.opentelemetry.io/otel/metric@v1.33.0`, `go.opentelemetry.io/otel/trace@v1.33.0`, `go.yaml.in/yaml/v4@v4.0.0-rc.2`, `golang.org/x/sync@v0.16.0`

### `github.com/shadybin/shadybin` changes since v1.0.6

PASS: This change adds Swift project support: a Package.resolved reader, pinned dependency fetching over https only with hardened git, and Swift surface markers. It also adds a 'seal' command that empties every repository file outside the review scope and removes .git before a rebuild, with fetch/run phases for rebuilds, and removes the default test/bench/example exclusions for Rust. I checked the new subprocess, network and file-system operations and found that all of them serve the tool's evident purpose. Most of them tighten security, and nothing hidden, exfiltrating or backdoor-like was added.

- **info** `internal/cli/seal.go:162` seal destructively empties files in the given checkout: seal truncates every tracked file outside the review scope and deletes .git in the -src directory. This is destructive, but it is the command's stated purpose. It first requires a clean checkout of the tag and acts only on the directory the user names.
- **info** `internal/review/swift.go:61` ls-files output split on whitespace: Swift.Modules splits git ls-files output with strings.Fields, so a path containing whitespace is mis-split. The effect fails safe: such a file falls outside the kept scope and seal empties it, rather than letting unreviewed code through.
- **info** `internal/review/rust.go:181` Rust review scope widened: walkCrate no longer skips tests, benches and examples, and Rust has no default excludes. This widens what is reviewed, closing a gap where Cargo.toml or #[path] could compile in a file under tests/.
- **info** `internal/review/swift.go:148` Hardened git fetch for Swift dependencies: Swift packages are fetched with protocol.allow=never except https, an empty credential.helper, core.hooksPath=/dev/null, no system or global git config, and a cleaned environment. The fetched commit is verified against the pinned revision, and symlinks that leave the package are rejected. Package.swift is never executed in the review job.

Data leaving the process:

- git fetch of each pinned commit, run with a cleaned environment, no credential helper, no prompts, hooks disabled and only https allowed; only the fetch request leaves the machine → the https git repositories named by the project's Package.resolved pins, and their submodules (`internal/review/swift.go`)
- the seal record: repo, tag, commit, epoch, scope digest and the count of emptied files → the file given by -o (`internal/cli/seal.go`)
- tracked files outside the review's scope are truncated to empty, and .git is removed → the checkout directory given by -src (`internal/cli/seal.go`)
- the project's declared fetch commands, now run before its run commands, according to -phase → sh -c subprocesses in the checkout (`internal/cli/rebuild.go`)
