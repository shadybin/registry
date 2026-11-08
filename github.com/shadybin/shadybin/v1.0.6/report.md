# github.com/shadybin/shadybin v1.0.6

## Rebuild

Rebuilt from tag `v1.0.6` (ffcc43d6ec406aa4fd02603b9b08919ba9db8151) and compared with the published checksums.

| File | Published | Rebuilt | Result |
|---|---|---|---|
| `shadybin-darwin-amd64` | `sha256:ec34854be8de…` | `sha256:ec34854be8de…` | identical |
| `shadybin-darwin-arm64` | `sha256:b1ae422ab22b…` | `sha256:b1ae422ab22b…` | identical |
| `shadybin-linux-amd64` | `sha256:b12e67699df4…` | `sha256:b12e67699df4…` | identical |
| `shadybin-linux-arm64` | `sha256:8be853d9afc3…` | `sha256:8be853d9afc3…` | identical |

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

### Changes since v1.0.5

None: the same packages, with the same capabilities.

## Review

**Certified.**

`claude-opus-5-5` reviewed the code compiled into the binary as what changed since v1.0.5, the last certified release: 1 units, 0 of them answered from the shared cache. The verdict follows from its answers by a fixed rule, with no person involved.

- Reviewed with the project's code, since it is in the vendor's repository: `github.com/shadybin/shadybin`, `github.com/shadybin/shadybin/verify`
- Third-party, unchanged since the last certified release, when it was reviewed: `github.com/anthropics/anthropic-sdk-go@v1.82.0`, `github.com/bahlo/generic-list-go@v0.2.0`, `github.com/buger/jsonparser@v1.1.2`, `github.com/go-logr/logr@v1.4.2`, `github.com/go-logr/stdr@v1.2.2`, `github.com/invopop/jsonschema@v0.14.0`, `github.com/pb33f/ordered-map/v2@v2.3.1`, `github.com/standard-webhooks/standard-webhooks/libraries@v0.0.1`, `github.com/tidwall/gjson@v1.18.0`, `github.com/tidwall/match@v1.1.1`, `github.com/tidwall/pretty@v1.2.1`, `github.com/tidwall/sjson@v1.2.5`, `go.opentelemetry.io/auto/sdk@v1.1.0`, `go.opentelemetry.io/otel@v1.33.0`, `go.opentelemetry.io/otel/metric@v1.33.0`, `go.opentelemetry.io/otel/trace@v1.33.0`, `go.yaml.in/yaml/v4@v4.0.0-rc.2`, `golang.org/x/sync@v0.16.0`

### `github.com/shadybin/shadybin` changes since v1.0.5

PASS: The change adds optional -run, -run-status and -run-conclusion flags to the badge command. These record a release's newest certify run in run.json inside the registry, show "certifying" or "certify failed" badge states, and link the run from the project page. I checked the new validation, the file writes, the state logic and the template change. None of it touches the network, secrets, execution or the signature verification path, and nothing is hidden or deceptive.

- **info** `internal/registry/registry.go:317` Stale run record can hold a release in 'certifying' past the pending window: State now returns Certifying whenever a recorded run.json has a status other than "completed", and this takes precedence over the PendingFor clock. If intake records a queued or in-progress run and never refreshes run.json, the badge could read "certifying" indefinitely instead of turning to "not certified". It is a state-display weakness, not a hidden behaviour. It cannot make an unsigned release look certified, because verify.Checker relies on signed statements, not on badges.
- **info** `internal/registry/registry.go:232` Run link constructed and validated, not taken from input: NewRun builds the run URL as https://github.com/<owner>/<name>/actions/runs/<id>. It does not accept a caller-supplied URL. It requires the repo to be on github.com with exactly owner/name, and it rejects any status or conclusion GitHub does not use. LoadRun checks the same things again when it reads the file. The URL goes into an href in the project page template, so the input validation limits link injection.

Data leaving the process:

- The newest certify run's GitHub Actions URL (built from the repo and numeric run id), its status and its conclusion, all checked against fixed lists. → run.json in the release's directory of the local registry checkout (the registry's own state, later published at shadybin.dev/registry) (`internal/registry/registry.go`)
