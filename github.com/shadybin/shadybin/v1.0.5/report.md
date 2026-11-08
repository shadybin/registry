# github.com/shadybin/shadybin v1.0.5

## Rebuild

Rebuilt from tag `v1.0.5` (552748df672b9b4048344e148618b001d103f99d) and compared with the published checksums.

| File | Published | Rebuilt | Result |
|---|---|---|---|
| `shadybin-darwin-amd64` | `sha256:f836259dd2f8…` | `sha256:f836259dd2f8…` | identical |
| `shadybin-darwin-arm64` | `sha256:450e59ae1f9d…` | `sha256:450e59ae1f9d…` | identical |
| `shadybin-linux-amd64` | `sha256:66217202bead…` | `sha256:66217202bead…` | identical |
| `shadybin-linux-arm64` | `sha256:07a4745dd580…` | `sha256:07a4745dd580…` | identical |

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

### Changes since v1.0.4

None: the same packages, with the same capabilities.

## Review

**Certified.**

`claude-opus-5-5` reviewed the code compiled into the binary as what changed since v1.0.4, the last certified release: 1 units, 0 of them answered from the shared cache. The verdict follows from its answers by a fixed rule, with no person involved.

- Reviewed with the project's code, since it is in the vendor's repository: `github.com/shadybin/shadybin`, `github.com/shadybin/shadybin/verify`
- Third-party, unchanged since the last certified release, when it was reviewed: `github.com/anthropics/anthropic-sdk-go@v1.82.0`, `github.com/bahlo/generic-list-go@v0.2.0`, `github.com/buger/jsonparser@v1.1.2`, `github.com/go-logr/logr@v1.4.2`, `github.com/go-logr/stdr@v1.2.2`, `github.com/invopop/jsonschema@v0.14.0`, `github.com/pb33f/ordered-map/v2@v2.3.1`, `github.com/standard-webhooks/standard-webhooks/libraries@v0.0.1`, `github.com/tidwall/gjson@v1.18.0`, `github.com/tidwall/match@v1.1.1`, `github.com/tidwall/pretty@v1.2.1`, `github.com/tidwall/sjson@v1.2.5`, `go.opentelemetry.io/auto/sdk@v1.1.0`, `go.opentelemetry.io/otel@v1.33.0`, `go.opentelemetry.io/otel/metric@v1.33.0`, `go.opentelemetry.io/otel/trace@v1.33.0`, `go.yaml.in/yaml/v4@v4.0.0-rc.2`, `golang.org/x/sync@v0.16.0`

### `github.com/shadybin/shadybin` changes since v1.0.4

PASS: The change updates shadybin's Zig dependency discovery: it follows path dependencies recursively, confined to their package, and fetches packages by writing its own one-dependency build.zig.zon and running `zig build --fetch` in its own directory with a private cache, relying on Zig's pinned-hash check. I checked that no vendor or dependency build.zig runs, that the hash check and the guard against ZON injection hold, and that nothing is sent anywhere beyond fetching the dependency URLs the vendor pins. Nothing in it is shady.

- **info** `internal/review/zig.go:322` Package fetch switched to `zig build --fetch` with a generated manifest: The fetcher now writes its own build.zig.zon and runs `zig build --fetch` instead of `zig fetch`, because Zig 0.17's `zig fetch` no longer leaves an unpacked tree. The hash is still checked: Zig verifies it, the mismatch message is parsed from stderr, any other failure is returned as an error, and the result is used only if a directory named by the pinned hash exists. The fetch directory has shadybin's own empty build.zig, so no vendor or dependency build script runs. The process gets a cleaned environment and a private global cache.
- **info** `internal/review/zig.go:318` Injection into the generated build.zig.zon is guarded: The URL and hash come from the vendor's build.zig.zon and are formatted into a ZON string. Any value containing a quote, a backslash or a control character is refused rather than escaped, which keeps it from ending the string and injecting fields. The hash is also checked elsewhere by validZigHash so it cannot name a path outside the directory.
- **info** `internal/review/zig.go:61` Path dependencies are walked recursively and confined to their own package: Path dependencies are now followed recursively, both in the repository and in fetched packages. Each must stay inside its own package (the repository, or the fetched package directory), and seenPath prevents loops. This widens what the review discovers: URL dependencies reached only through path dependencies are now included. The containment check is lexical; a symlinked path inside a fetched package could point elsewhere, but that is at most a coverage bug, not a deliberate weakness.

Data leaving the process:

- a generated build.zig.zon naming one dependency, built from the URL and pinned hash in the vendor's build.zig.zon; zig downloads that URL, checks it against the pinned hash and unpacks it into the fetch directory's zig-pkg → the zig toolchain (child process `zig build --fetch`), run in shadybin's own fetch directory with a cleaned environment and ZIG_GLOBAL_CACHE_DIR pointing at its own cache (`internal/review/zig.go`)
- an HTTP(S) request for the dependency archive, which the code under review needs in order to read that dependency → network, the package URL the vendor's build.zig.zon names (performed by zig) (`internal/review/zig.go`)
