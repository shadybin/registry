# github.com/shadybin/shadybin v1.1.2

## Rebuild

Rebuilt from tag `v1.1.2` (93871fcf6f35ac60d6325ed620fac532c5b1b044) and compared with the published checksums.

| File | Published | Rebuilt | Result |
|---|---|---|---|
| `shadybin-darwin-amd64` | `sha256:11c1e2d80543…` | `sha256:11c1e2d80543…` | identical |
| `shadybin-darwin-arm64` | `sha256:7ae944500d6a…` | `sha256:7ae944500d6a…` | identical |
| `shadybin-linux-amd64` | `sha256:69d90f7fc141…` | `sha256:69d90f7fc141…` | identical |
| `shadybin-linux-arm64` | `sha256:e3f4f719a584…` | `sha256:e3f4f719a584…` | identical |

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

### Changes since v1.1.1

None: the same packages, with the same capabilities.

## Review

**Certified.**

`claude-opus-5-5` reviewed the code compiled into the binary as what changed since v1.1.1, the last certified release: 1 units, 0 of them answered from the shared cache. The verdict follows from its answers by a fixed rule, with no person involved.

- Reviewed with the project's code, since it is in the vendor's repository: `github.com/shadybin/shadybin`, `github.com/shadybin/shadybin/verify`
- Third-party, unchanged since the last certified release, when it was reviewed: `github.com/anthropics/anthropic-sdk-go@v1.82.0`, `github.com/bahlo/generic-list-go@v0.2.0`, `github.com/buger/jsonparser@v1.1.2`, `github.com/go-logr/logr@v1.4.2`, `github.com/go-logr/stdr@v1.2.2`, `github.com/invopop/jsonschema@v0.14.0`, `github.com/pb33f/ordered-map/v2@v2.3.1`, `github.com/standard-webhooks/standard-webhooks/libraries@v0.0.1`, `github.com/tidwall/gjson@v1.18.0`, `github.com/tidwall/match@v1.1.1`, `github.com/tidwall/pretty@v1.2.1`, `github.com/tidwall/sjson@v1.2.5`, `go.opentelemetry.io/auto/sdk@v1.1.0`, `go.opentelemetry.io/otel@v1.33.0`, `go.opentelemetry.io/otel/metric@v1.33.0`, `go.opentelemetry.io/otel/trace@v1.33.0`, `go.yaml.in/yaml/v4@v4.0.0-rc.2`, `golang.org/x/sync@v0.16.0`

### `github.com/shadybin/shadybin` changes since v1.1.1

PASS: The diff makes seal remove untracked and ignored files from the tag checkout with `git clean -ffdx` before and after its checks. It also makes the manifest's Markdown report explain that only Go has a capability analysis when the manifest has none. I checked that the git invocation is confined to the checkout seal already empties, that it uses the existing git helper, and that the report change only formats output; neither change sends data anywhere or adds hidden behaviour.

- **info** `internal/cli/seal.go:203` seal now force-removes untracked and ignored files from the checkout: seal now runs `git clean -ffdx` on src before checkCheckout and again before removing .git. This deletes every untracked file, ignored file and nested repository in that directory. The intent is stated and serves the tool's purpose: nothing the tag does not track, such as a .zig-cache restored by setup-zig, should reach a build whose review never saw it. It strengthens the seal. The deletion is confined to the checkout seal already empties and strips of .git. Pointed at a developer's working copy it would delete untracked work, but the documented precondition is a checkout of the tag, and seal was already destructive there.
- **info** `internal/manifest/report.go:62` Capability report branch for languages without capability analysis: Markdown now handles manifests whose Tool is "none" (non-Go languages). It prints a note and the package and module counts instead of an empty capability table. This is report formatting only, with no new I/O beyond the existing writer.

Data leaving the process:

- The arguments "clean -ffdx". Git deletes every untracked and ignored file and every nested repository from that checkout, before and after the tracked-file check. → the git program, run in the source checkout passed as src (`internal/cli/seal.go`)
- The list of paths git clean removed. → the log writer (the CI job log) (`internal/cli/seal.go`)
- For non-Go manifests: a note that no capability analysis exists, with counts of packages and third-party modules. → the markdown report writer (the published review report) (`internal/manifest/report.go`)
