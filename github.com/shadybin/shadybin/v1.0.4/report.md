# github.com/shadybin/shadybin v1.0.4

## Rebuild

Rebuilt from tag `v1.0.4` (efbeadfd9983fbfcc9245fe7a9f47e521dbe16dd) and compared with the published checksums.

| File | Published | Rebuilt | Result |
|---|---|---|---|
| `shadybin-darwin-amd64` | `sha256:5f0b73fbd394…` | `sha256:5f0b73fbd394…` | identical |
| `shadybin-darwin-arm64` | `sha256:9fc143316ce0…` | `sha256:9fc143316ce0…` | identical |
| `shadybin-linux-amd64` | `sha256:46905708ed0f…` | `sha256:46905708ed0f…` | identical |
| `shadybin-linux-arm64` | `sha256:eb1b26f4f8f7…` | `sha256:eb1b26f4f8f7…` | identical |

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

### Changes since v1.0.3

- New packages: `./internal/env`

## Review

**Certified.**

`claude-opus-5-5` reviewed the code compiled into the binary as what changed since v1.0.3, the last certified release: 1 units, 0 of them answered from the shared cache. The verdict follows from its answers by a fixed rule, with no person involved.

- Reviewed with the project's code, since it is in the vendor's repository: `github.com/shadybin/shadybin`, `github.com/shadybin/shadybin/verify`
- Third-party, unchanged since the last certified release, when it was reviewed: `github.com/anthropics/anthropic-sdk-go@v1.82.0`, `github.com/bahlo/generic-list-go@v0.2.0`, `github.com/buger/jsonparser@v1.1.2`, `github.com/go-logr/logr@v1.4.2`, `github.com/go-logr/stdr@v1.2.2`, `github.com/invopop/jsonschema@v0.14.0`, `github.com/pb33f/ordered-map/v2@v2.3.1`, `github.com/standard-webhooks/standard-webhooks/libraries@v0.0.1`, `github.com/tidwall/gjson@v1.18.0`, `github.com/tidwall/match@v1.1.1`, `github.com/tidwall/pretty@v1.2.1`, `github.com/tidwall/sjson@v1.2.5`, `go.opentelemetry.io/auto/sdk@v1.1.0`, `go.opentelemetry.io/otel@v1.33.0`, `go.opentelemetry.io/otel/metric@v1.33.0`, `go.opentelemetry.io/otel/trace@v1.33.0`, `go.yaml.in/yaml/v4@v4.0.0-rc.2`, `golang.org/x/sync@v0.16.0`

### `github.com/shadybin/shadybin` changes since v1.0.3

PASS: Since v1.0.3 this diff adds zip and tar consistency checks against archive smuggling and renames project.json to shadybin.json. It moves the credential-stripping environment filter into internal/env and applies it to go list, go, cargo metadata and zig fetch. It also replaces running `zig build --fetch` with hash-checked `zig fetch` in an empty build directory, and classifies in-repo vendored or replaced Go, Rust and Zig code as vendor code. I checked each change for exfiltration, hidden behaviour or weakened checks and found none: every change narrows what the vendor's code can reach or widens what gets reviewed.

- **info** `internal/review/zig.go:239` Zig fetch work directory is never removed: newZigFetcher creates a temp directory with os.MkdirTemp and nothing in the diff removes it, so fetched packages build up in the temp directory across runs. This is not a security issue.
- **info** `internal/checksums/archive.go:133` Trailing-data check after tar EOF is bounded by maxArchive: After the tar end-of-archive marker, the new check reads at most maxArchive bytes and rejects any non-zero byte. Trailing data beyond that limit is not inspected. Most likely the earlier size limits already bound the whole archive, so this is minor.
- **info** `internal/review/zig.go:256` Repository zig-pkg copies are trusted by directory name: Packages found in the repository's zig-pkg are used without checking them against the pinned hash. They are marked InRepo, though, and so are reviewed whole as vendor code, which matches the stated intent.

Data leaving the process:

- Dependency URLs from the project's and its packages' build.zig.zon, run with the credential-stripped environment; the reported hash is checked against the pinned one. → the zig program (`zig fetch <url>`), which downloads each dependency URL named in build.zig.zon into a shadybin-owned temp directory (`internal/review/zig.go`)
- A fixed, empty build.zig, so zig fetch runs no build script of the vendor's or of a dependency's. → a new temp directory (os.MkdirTemp "shadybin-zig-fetch-*")/build.zig (`internal/review/zig.go`)
- The caller's environment minus credential-like variables, plus GOOS. Before this change it got the full environment. → the go program (`go list -deps -json`) (`internal/review/golang.go`)
- The caller's environment minus credential-like variables, plus the caller-supplied extras. Before this change it got the full environment. → the go program (goCmd) (`internal/manifest/manifest.go`)
- The caller's environment minus credential-like variables, with RUSTUP_TOOLCHAIN and RUSTC pinned and the rustc wrapper variables cleared. → the cargo program (`cargo metadata`) (`internal/review/rust.go`)
