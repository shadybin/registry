# github.com/shadybin/shadybin v1.0.3

## Rebuild

Rebuilt from tag `v1.0.3` (4ea0d32386875b9a27575b04c7b1c1c58575a4e1) and compared with the published checksums.

| File | Published | Rebuilt | Result |
|---|---|---|---|
| `shadybin-darwin-amd64` | `sha256:6505bea3f7ab…` | `sha256:6505bea3f7ab…` | identical |
| `shadybin-darwin-arm64` | `sha256:28559f96cef1…` | `sha256:28559f96cef1…` | identical |
| `shadybin-linux-amd64` | `sha256:e2e8703fdeb9…` | `sha256:e2e8703fdeb9…` | identical |
| `shadybin-linux-arm64` | `sha256:748fa4870db7…` | `sha256:748fa4870db7…` | identical |

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

64 packages outside the standard library are compiled in.

### Changes

This is the project's first certified release: there is nothing to compare it with.

## Review

**Certified.**

`claude-opus-5-5` reviewed the code compiled into the binary whole, as the project's first reviewed release: 18 units, 0 of them answered from the shared cache. The verdict follows from its answers by a fixed rule, with no person involved.

- Reviewed with the project's code, since it is in the vendor's repository: `github.com/shadybin/shadybin`, `github.com/shadybin/shadybin/verify`
- Third-party, new to the project, with a surface too large to review whole: its packages that can act on the world reviewed, the rest pinned to its exact release and reviewed as a diff when its version changes: `github.com/anthropics/anthropic-sdk-go@v1.82.0`
- Third-party, new to the project: reviewed at its surface (build-time and load-time code, binaries, assembly and C, and packages that can act on the world): `github.com/go-logr/logr@v1.4.2`, `github.com/invopop/jsonschema@v0.14.0`, `github.com/pb33f/ordered-map/v2@v2.3.1`, `github.com/tidwall/gjson@v1.18.0`, `github.com/tidwall/pretty@v1.2.1`, `github.com/tidwall/sjson@v1.2.5`, `go.opentelemetry.io/auto/sdk@v1.1.0`, `go.opentelemetry.io/otel@v1.33.0`, `go.opentelemetry.io/otel/trace@v1.33.0`, `go.yaml.in/yaml/v4@v4.0.0-rc.2`, `golang.org/x/sync@v0.16.0`
- Third-party, with nothing at its surface to review: `github.com/bahlo/generic-list-go@v0.2.0`, `github.com/buger/jsonparser@v1.1.2`, `github.com/go-logr/stdr@v1.2.2`, `github.com/standard-webhooks/standard-webhooks/libraries@v0.0.1`, `github.com/tidwall/match@v1.1.1`, `go.opentelemetry.io/otel/metric@v1.33.0`

### `github.com/shadybin/shadybin` (the project)

PASS: shadybin rebuilds releases from tagged source, compares them with published checksums or archive contents, and gathers the compiled-in code for review by Claude at a fixed API endpoint. It decides verdicts by a deterministic rule and signs statements and cache entries with ed25519; the verify SDK fetches and checks signed statements. I checked the network endpoints, credential handling, subprocess use, key handling, signature verification and the verdict rule, and found no exfiltration, backdoor, obfuscation or weakened verification; only hardening concerns.

- **concern** `internal/checksums/archive.go:95` Archive content comparison sees only Go's parse of the archive: In the zip branch, entries() trusts Go's central-directory view of the archive. A crafted zip whose local headers disagree with its central directory, or that carries data outside any listed entry, could extract differently with a streaming extractor. Yet it would compare as "same contents" and have its published digest certified. Gzip header extras and tar trailing data are also ignored. Nothing suggests this is deliberate; it is a hardening gap in the bytes-differ fallback.
- **concern** `internal/review/zig.go:228` Vendor build code may run during review with the full environment: zigFetch runs `zig build --fetch=needed` in the checkout during review and manifest generation, which can compile and run the project's build.zig. It inherits the full environment, including ANTHROPIC_API_KEY. The rebuild path drops credential variables before running vendor code; this path does not. Where the key is the vendor's own, the exposure is limited, but the asymmetry is worth fixing.
- **concern** `internal/cli/commands.go:323` Signed cache entries trust the review.json being signed: runSign signs cache entries for every freshly reviewed dependency unit in review.json, with shadybin's key. Before signing, it checks only that review.json matches the statement's digest and that Decide agrees. How review.json is produced in a trusted context is outside this unit (certify.yml). If a vendor could supply its own review.json, it could plant signed cache answers that other projects would use.
- **info** `internal/review/source.go:70` Stale comment about third-party review: The comment on owned() says third-party modules are "pinned and listed, but not reviewed". Gather in fact reviews them at their surface or as a diff. The comment is outdated; behaviour matches the README.
- **info** `internal/review/prompt.txt:1` Embedded reviewer prompt is the tool's own brief: The embedded system prompt addresses an AI reviewer. It is the tool's own reviewer brief, sent as the system prompt and published by design, not an attempt to influence this review. Its content matches the brief given here.

Data leaving the process:

- The system prompt, plus each review unit: the project's source, diffs and dependency surfaces, and the README excerpt → Claude API at https://api.anthropic.com/ (fixed endpoint), authenticated with ANTHROPIC_API_KEY from the environment (`internal/review/claude.go`)
- Requests for deps/<module>@<version>/<digest>.json and .sig, which reveal the module names and versions being reviewed → Registry URL given by -cache (HTTP GET), or a local directory (`internal/review/cache.go`)
- Crate name and version requests; git fetch of the commit named in .cargo_vcs_info.json → https://static.crates.io and the crate's declared source repository (via git fetch) (`internal/review/rust.go`)
- HTTP GET of upstream release archives, checked against the pinned sha256 → URLs declared in project.json's vendored entries (`internal/review/vendored.go`)
- Module path and version for `go mod download`, and `go list` in the checkout → go command, and through it the Go module proxy (`internal/review/golang.go`)
- Dependency fetches via `zig build --fetch=needed` → zig command, and through it the dependency URLs in build.zig.zon (`internal/review/zig.go`)
- `go run` of the pinned Capslock, and `go list` over the checkout → go command, and through it the Go module proxy (`internal/manifest/manifest.go`)
- Clone of the project's repository at the tag. Build commands run with the caller's environment, minus credential-like variables, plus SOURCE_DATE_EPOCH, TAG and the build's env. → git, and sh running the project.json build steps (`internal/cli/rebuild.go`)
- Copies of the built artifacts → Output directory given by -out (`internal/cli/rebuild.go`)
- statement.txt, the appended signature line, report.md, manifest.json, review.json, badges, the latest file, and signed cache entries → Local registry directory (-registry) (`internal/cli/commands.go`)
- A newly generated ed25519 private key seed → File given by keygen -o, created with mode 0600 (`internal/keys/keys.go`)
- HTTP GET of the release's statement and signature, which reveals the repository and tag being checked → Registry (https://shadybin.dev/registry by default) (`verify/verify.go`)

### `github.com/anthropics/anthropic-sdk-go` v1.82.0, packages that can act on the world (part 1 of 6)

PASS: This part of the anthropic-sdk-go root package holds generated API types and service methods for beta endpoints: agents, deployments, dreams, environments, files and memory stores. Each method sends caller-supplied parameters over HTTP to the configured Anthropic API. I checked the init functions, the request construction and the use of headers and paths, and found no hidden network destinations, credential harvesting, code execution or persistence.

- **info** `github.com/anthropics/anthropic-sdk-go@v1.82.0/betaagent.go:0` Generated SDK code with no suspicious behavior: All files are Stainless-generated API client code: typed request/response structs, union helpers, and service methods that send HTTP requests to the configured Anthropic API endpoint through internal/requestconfig. The init() functions only call apijson.RegisterUnion with constant discriminators. There is no file, environment or credential access beyond what the caller passes in, no exec, and no hidden endpoints.

Data leaving the process:

- Caller-supplied agent definitions (name, system prompt, tools, MCP server URLs, metadata), workspace ID and beta headers → Anthropic API (configured base URL), /v1/agents endpoints (`github.com/anthropics/anthropic-sdk-go@v1.82.0/betaagent.go`)
- Deployment configs including initial events, resources such as GitHub repository authorization tokens supplied by the caller, vault IDs, schedules → Anthropic API, /v1/deployments endpoints (`github.com/anthropics/anthropic-sdk-go@v1.82.0/betadeployment.go`)
- File contents the caller uploads as multipart form data; file downloads returned to the caller as an http.Response → Anthropic API, /v1/files endpoints (`github.com/anthropics/anthropic-sdk-go@v1.82.0/betafile.go`)
- Memory text content and paths supplied by the caller → Anthropic API, /v1/memory_stores endpoints (`github.com/anthropics/anthropic-sdk-go@v1.82.0/betamemorystorememory.go`)
- Worker poll/heartbeat/ack/stop requests, including an optional Anthropic-Worker-ID header → Anthropic API, /v1/environments/{id}/work endpoints (`github.com/anthropics/anthropic-sdk-go@v1.82.0/betaenvironmentwork.go`)

### `github.com/anthropics/anthropic-sdk-go` v1.82.0, packages that can act on the world (part 2 of 6)

PASS: This unit is the beta Messages and Message Batches API surface of the Anthropic Go SDK: request/response types plus service methods that send caller-supplied parameters to the configured Anthropic API. I checked the init() functions (union and validator registration only), the request paths and headers, and looked for hidden endpoints, credential or environment access, and encoded payloads, and found none.

- **info** `github.com/anthropics/anthropic-sdk-go@v1.82.0/betamessage.go:0` Generated API client code, no suspicious behavior: Both files are standard Stainless-generated SDK code: request and response types, union helpers, and init() functions that only register JSON union discriminators and field validators. Every network call goes through the shared requestconfig path to the configured API endpoint and carries only caller-supplied parameters. There is no environment, file or credential access, no hidden endpoints, and no encoded payloads.
- **info** `github.com/anthropics/anthropic-sdk-go@v1.82.0/betamessage.go:0` Tool-use types are passive data: The browser/computer toolset types, including javascript_exec, bash and file_upload, are only data structures that describe tool calls the model returns. This SDK code does not execute any of them.

Data leaving the process:

- Caller-supplied message request parameters: messages, system prompt, tools, model and settings. Also optional anthropic-beta, anthropic-user-profile-id and anthropic-workspace-id headers. → Anthropic API (configured base URL) POST v1/messages?beta=true and v1/messages/count_tokens?beta=true (`github.com/anthropics/anthropic-sdk-go@v1.82.0/betamessage.go`)
- Caller-supplied batch requests and batch IDs, pagination query parameters, and workspace and beta headers. → Anthropic API (configured base URL) v1/messages/batches endpoints (create, get, list, delete, cancel, results) (`github.com/anthropics/anthropic-sdk-go@v1.82.0/betamessagebatch.go`)

### `github.com/anthropics/anthropic-sdk-go` v1.82.0, packages that can act on the world (part 3 of 6)

PASS: This unit is part of the official Anthropic Go SDK: generated bindings for beta Models, Organization admin APIs (API keys, analytics, plugins, telemetry destinations, spend limits, RBAC, workspaces, federation) and Managed Agents sessions, plus message accumulation and structured-output parsing helpers. I checked every file for init-time side effects, hidden endpoints, credential handling, file/exec access and obfuscation. All network activity goes to the configured Anthropic API through requestconfig with data the caller supplies, and the init functions only register JSON unions.

- **info** `github.com/anthropics/anthropic-sdk-go@v1.82.0/betaorganizationcompliancesetting.go:0` Generated API client code with no hidden behaviour: All files in this unit are Stainless-generated API bindings: request/response structs, union types, and service methods that call requestconfig with fixed relative paths. The init() functions only register JSON union discriminators. There is no file or environment access, no process execution, no hard-coded endpoints, credentials or encoded payloads, and no conditional behaviour based on host or environment.
- **info** `github.com/anthropics/anthropic-sdk-go@v1.82.0/betaparse.go:30` Unbounded schema cache: schemaCache stores reflected JSON schemas keyed by reflect.Type and never evicts them, as the code comment documents. Programs that build many dynamic types could grow memory. This is benign and not a security issue.

Data leaving the process:

- Plugin files the caller supplies, sent as a multipart upload, plus release notes and marketplace ID → Anthropic API v1/organizations/plugins (configured base URL) (`github.com/anthropics/anthropic-sdk-go@v1.82.0/betaorganizationplugin.go`)
- Plugin version files the caller supplies (multipart). Plugin archives are downloaded back to the caller as an http.Response. → Anthropic API v1/organizations/plugins/{id}/versions (`github.com/anthropics/anthropic-sdk-go@v1.82.0/betaorganizationpluginversion.go`)
- Marketplace zip archive or GitHub repository URL the caller supplies → Anthropic API v1/organizations/plugin_marketplaces/validate_archive and validate_repository (`github.com/anthropics/anthropic-sdk-go@v1.82.0/betaorganizationpluginmarketplace.go`)
- OTLP endpoint URL and auth header values the caller supplies, for configuring telemetry destinations server-side → Anthropic API v1/organizations/telemetry_destinations (`github.com/anthropics/anthropic-sdk-go@v1.82.0/betaorganizationtelemetrydestination.go`)
- Session configuration the caller supplies: agent overrides, initial messages, resources (including an optional GitHub authorization token), vault IDs and metadata → Anthropic API v1/sessions (`github.com/anthropics/anthropic-sdk-go@v1.82.0/betasession.go`)
- KMS key configuration the caller supplies (ARNs, vault URIs, tenant IDs) → Anthropic API v1/organizations/external_keys (`github.com/anthropics/anthropic-sdk-go@v1.82.0/betaorganizationexternalkey.go`)
- OIDC issuer, JWKS and federation rule configuration the caller supplies → Anthropic API v1/organizations/federation_issuers and federation_rules (`github.com/anthropics/anthropic-sdk-go@v1.82.0/betaorganizationfederationissuer.go`)

### `github.com/anthropics/anthropic-sdk-go` v1.82.0, packages that can act on the world (part 4 of 6)

PASS: This part of the Anthropic Go SDK holds generated REST client services (sessions, events, threads, skills, tunnels, vaults, credentials, user profiles, files, completions), client construction with credential discovery, webhook verification via standard-webhooks, and the message and session tool-runner loops. I checked for hidden endpoints, credential exfiltration, code download or execution, and obfuscation, and found none. All network traffic goes to the configured Anthropic API, and local execution is limited to tools the caller registers.

- **info** `github.com/anthropics/anthropic-sdk-go@v1.82.0/client.go:110` Webhook key and custom headers only honored when no credentials are found: In DefaultClientOptions, ANTHROPIC_WEBHOOK_SIGNING_KEY and ANTHROPIC_CUSTOM_HEADERS are read only on the no-credentials fallback path. Every earlier credential source returns before reaching them, so these variables are silently ignored whenever any credential is found. This looks like an ordinary bug, not a deliberate concealment.
- **info** `github.com/anthropics/anthropic-sdk-go@v1.82.0/betasessiontoolrunner.go:0` Model-driven local tool execution: SessionToolRunner runs the caller's registered tools with input chosen by the remote agent. Calls gated with ask or deny are held or refused, and unknown permissions fail closed. Executed tools carry whatever risk the caller's tool implementations carry. This is the documented purpose.

Data leaving the process:

- API key or auth token from env or profile config, plus request bodies such as messages, events, credentials and tunnel parameters → Anthropic API base URL (default production, or ANTHROPIC_BASE_URL) (`github.com/anthropics/anthropic-sdk-go@v1.82.0/client.go`)
- Output of locally executed tools, posted as user.tool_result or user.custom_tool_result events → Anthropic API /v1/sessions/{id}/events (`github.com/anthropics/anthropic-sdk-go@v1.82.0/betasessiontoolrunner.go`)
- File contents the caller passes to Upload → Anthropic API /v1/files (`github.com/anthropics/anthropic-sdk-go@v1.82.0/file.go`)
- Skill files the caller supplies, sent as a multipart upload → Anthropic API /v1/skills (`github.com/anthropics/anthropic-sdk-go@v1.82.0/betaskill.go`)
- Credential secrets (OAuth tokens, bearer tokens, env-var secret values) that the caller explicitly creates or updates → Anthropic API /v1/vaults/{id}/credentials (`github.com/anthropics/anthropic-sdk-go@v1.82.0/betavaultcredential.go`)
- Span attributes covering model, tool names, and tool inputs and results, subject to the telemetry options → Application's OpenTelemetry tracer, when enabled (`github.com/anthropics/anthropic-sdk-go@v1.82.0/betatoolrunner.go`)
- Warning messages about skipped or failed compaction → stderr (`github.com/anthropics/anthropic-sdk-go@v1.82.0/betatoolrunner.go`)

### `github.com/anthropics/anthropic-sdk-go` v1.82.0, packages that can act on the world (part 5 of 6)

PASS: This unit is generated client code from the Anthropic Go SDK: Messages, batches, models, organization admin and skills endpoints, plus the config package for profile and credential files and OIDC federation token exchange, the API error type, and the multipart form encoder. I checked the init functions (union and decoder registration only), all network endpoints (the configured Anthropic API, with HTTPS-only and no-redirect token exchange), file writes (the SDK's own config directory with restrictive modes) and environment reads. I found no exfiltration, backdoor, obfuscation or hidden behaviour.

- **info** `github.com/anthropics/anthropic-sdk-go@v1.82.0/config/writers.go:0` Local credential file handling: The config package reads profiles and credentials from the Anthropic config directory and from ANTHROPIC_* environment variables, and writes credential files with 0600 and 0700 permissions. It refuses symlinked targets and validates profile names against path traversal. All of this is the SDK's documented credential storage.
- **info** `github.com/anthropics/anthropic-sdk-go@v1.82.0/config/https.go:0` Token endpoint hardening present: RequireSecureTokenEndpoint rejects non-HTTPS token endpoints except loopback. WithoutRedirects stops a 307/308 from replaying credentials to another host. RedactOAuthErrorBody keeps only RFC 6749 error keys when logging. These checks strengthen security.
- **info** `github.com/anthropics/anthropic-sdk-go@v1.82.0/internal/apierror/apierror.go:0` Sensitive headers redacted in error dumps: DumpRequest and DumpResponse replace Authorization, x-api-key, cookie and similar header values with *** before dumping.

Data leaving the process:

- User-supplied prompts, messages, tool definitions and optional user-profile and workspace headers → Anthropic API (configured base URL), /v1/messages and /v1/messages/count_tokens (`github.com/anthropics/anthropic-sdk-go@v1.82.0/message.go`)
- Batch message requests the caller supplies → Anthropic API /v1/messages/batches (`github.com/anthropics/anthropic-sdk-go@v1.82.0/messagebatch.go`)
- Skill files the caller passes as io.Readers → Anthropic API /v1/skills (multipart upload) (`github.com/anthropics/anthropic-sdk-go@v1.82.0/skill.go`)
- Organization admin operations the caller invokes: API keys, users, invites, workspaces, federation, external keys → Anthropic Admin API /v1/organizations/* (`github.com/anthropics/anthropic-sdk-go@v1.82.0/organizationapikey.go`)
- OIDC JWT assertion, federation rule ID, organization ID, service account ID and workspace ID → Anthropic token endpoint <base>/v1/oauth/token (HTTPS only, no redirects) (`github.com/anthropics/anthropic-sdk-go@v1.82.0/config/federation.go`)
- Profile config JSON (mode 0644) and OAuth access/refresh tokens (mode 0600), written atomically when the caller asks → Local Anthropic config dir (~/.config/anthropic/configs and credentials, or ANTHROPIC_CONFIG_DIR) (`github.com/anthropics/anthropic-sdk-go@v1.82.0/config/writers.go`)
- Deprecation warning naming the model → stderr (`github.com/anthropics/anthropic-sdk-go@v1.82.0/thinking_warn.go`)
- Warn-once messages naming unknown authentication fields in profile files → Go standard log output (`github.com/anthropics/anthropic-sdk-go@v1.82.0/config/config.go`)

### `github.com/anthropics/anthropic-sdk-go` v1.82.0, packages that can act on the world (part 6 of 6)

PASS: These packages are the Anthropic Go SDK's request pipeline: JSON encoding and decoding, OAuth/OIDC federation and refresh-token auth, the request/retry engine, OpenTelemetry span recording and SSE stream decoding. I checked the network destinations (configured base URL only, with a secure token endpoint and same-origin bearer attachment), file access (the SDK's own credentials file and a user-specified identity token file, both with safety checks), telemetry (application-registered OTel provider only), and looked for hidden behaviour, encoded payloads or code execution, finding none.

- **info** `github.com/anthropics/anthropic-sdk-go@v1.82.0/internal/requestconfig/requestconfig.go:67` Platform headers sent to API: Every request carries the OS, architecture and Go runtime version in X-Stainless-* headers. This is standard for generated Stainless SDKs and goes only to the configured API endpoint.
- **info** `github.com/anthropics/anthropic-sdk-go@v1.82.0/internal/tracing/tracing.go:127` OpenTelemetry spans via the application's provider: Spans are on by default but go only through the TracerProvider the application registered, which is a no-op unless the application configures one. Prompt and response content is recorded only in opt-in content mode. Spans can be turned off with an option or with ANTHROPIC_OPEN_TELEMETRY=false.
- **info** `github.com/anthropics/anthropic-sdk-go@v1.82.0/internal/apijson/decoder.go:636` unsafe used to set unexported metadata field: reflect.NewAt with unsafe.Pointer writes the unexported raw-JSON metadata field of response structs. It touches only the SDK's own types.

Data leaving the process:

- API request bodies and headers: API key or bearer token, User-Agent, anthropic-version, and X-Stainless OS/arch/Go-version/package-version headers. → Configured API base URL (default https://api.anthropic.com/) (`github.com/anthropics/anthropic-sdk-go@v1.82.0/internal/requestconfig/requestconfig.go`)
- OIDC identity JWT, federation rule ID, organization ID, and optional service account and workspace IDs, for the token exchange. → base URL + /v1/oauth/token (must pass RequireSecureTokenEndpoint) (`github.com/anthropics/anthropic-sdk-go@v1.82.0/internal/auth/workload.go`)
- Refresh token and client_id for the user OAuth refresh. → base URL + /v1/oauth/token (`github.com/anthropics/anthropic-sdk-go@v1.82.0/internal/auth/credentials_file.go`)
- Cached or refreshed access token, refresh token and expiry. → Profile credentials file (config.WriteCredentials) (`github.com/anthropics/anthropic-sdk-go@v1.82.0/internal/auth/credentials_file.go`)
- Span metadata: model, token usage, request IDs, URL path, and allow-listed query parameters. Prompt and response content only when content mode is enabled. Trace-context headers go on outgoing requests. → Application-registered OpenTelemetry TracerProvider and propagator (`github.com/anthropics/anthropic-sdk-go@v1.82.0/internal/tracing/tracing.go`)
- HTTP request and response dumps with sensitive headers redacted. → Application-supplied log.Logger (opt-in WithDebugLog) (`github.com/anthropics/anthropic-sdk-go@v1.82.0/option/middleware.go`)
- One-time warnings about credential cache or refresh failures and shadowed config. → Standard logger (stderr) (`github.com/anthropics/anthropic-sdk-go@v1.82.0/internal/auth/logging.go`)

### `github.com/go-logr/logr` v1.4.2, surface

PASS: go-logr/logr v1.4.2 is a structured-logging API (Logger/LogSink, context helpers, slog bridges); its funcr subpackage formats log lines and passes them to a caller-provided function. I read every surface file for init code, I/O, exec, network, encoded payloads, environment-dependent behaviour and text addressed to reviewers, and found none. The flagged capabilities arise only from reflection, runtime caller lookup and dynamic calls into user-supplied interfaces.

- **info** `github.com/go-logr/logr@v1.4.2/funcr/funcr.go:0` No side effects beyond formatting and dispatch to user-supplied sinks: Both packages are purely in-process logging abstractions. logr defines Logger/LogSink, context helpers and slog adapters. funcr formats key/value pairs and hands the strings to a caller-supplied function. The unit has no init functions, build scripts, embedded data, encoded strings, exec, file or network I/O, or environment or credential access. The content matches the well-known upstream v1.4.2 source.

### `github.com/invopop/jsonschema` v0.14.0, surface

PASS: invopop/jsonschema generates JSON Schema documents from Go types by reflection, with optional extraction of doc comments from local Go source files. I checked all surface files for init code, network or exec use, file writes, encoded payloads and hooking, and found none. The NETWORK capability comes only from using net.IP and url.URL types and url.Parse.

- **info** `github.com/invopop/jsonschema@v0.14.0/reflect_comments.go:64` Reads Go source files from a caller-provided path: AddGoComments uses filepath.Walk to read and parse the .go files under a directory the caller supplies, extracting doc comments into an in-memory map. It is read-only, local and documented as the library's purpose.

### `github.com/pb33f/ordered-map/v2` v2.3.1, surface

PASS: This is a fork of wk8/go-ordered-map: a generic insertion-ordered map with JSON (via encoding/json and buger/jsonparser) and YAML (go.yaml.in/yaml/v4) marshalling. I read all three files and found no init functions, build-time code, network, file, exec or environment access, encoded payloads, or runtime patching. The flagged capabilities come from reflection and interface-based serialization only.

- **info** `github.com/pb33f/ordered-map/v2@v2.3.1/yaml.go:17` Minor correctness quirks in YAML handling: MarshalYAML returns []byte("null") for a nil map, which encodes as a byte sequence rather than a YAML null. UnmarshalYAML indexes Content[index+1] without checking bounds. These are ordinary bugs inherited from the wk8/go-ordered-map fork and have no security impact.

### `github.com/tidwall/gjson` v1.18.0, surface

PASS: gjson v1.18.0 is a pure-Go JSON path query library. Its surface file gjson.go contains parsing, validation and modifier functions, plus an init that only builds an in-memory map of modifier functions. I checked for I/O, network, exec, environment access, encoded payloads and runtime hooking and found none; the only unsafe use is the library's well-known zero-copy string/byte conversion.

- **info** `github.com/tidwall/gjson@v1.18.0/gjson.go:3360` unsafe pointer casts for zero-copy string/byte conversion: The package uses unsafe.Pointer to convert between strings and byte slices without copying (getBytes, stringBytes, bytesString) and to compute result indexes (fillIndex). This is the upstream library's long-standing performance technique. It is local memory handling with no external effect, so it is not shady.
- **info** `github.com/tidwall/gjson@v1.18.0/gjson.go:2763` init registers modifier table only: init() only fills the built-in modifiers map with local pure functions (pretty, ugly, reverse, this, flatten, join, valid, keys, values, tostr, fromstr, group, dig). None of them perform I/O, run programs or have other side effects.

### `github.com/tidwall/pretty` v1.2.1, surface

PASS: github.com/tidwall/pretty is a pure JSON formatting library: pretty-printing, compacting, colorizing and stripping comments. It imports only bytes, encoding/json, sort and strconv. I checked the single file, including its init function, and found no file, process, network or environment access, and no encoded payloads.

- **info** `github.com/tidwall/pretty@v1.2.1/pretty.go:441` init assigns default terminal color style: init() only builds the TerminalStyle struct of ANSI color codes and a byte-escaping Append function. It has no side effects beyond setting a package variable.

### `github.com/tidwall/sjson` v1.2.5, surface

PASS: sjson v1.2.5 is a pure-Go library that sets and deletes values in JSON text by path. It uses gjson for lookups and encoding/json for marshaling. I checked the single source file for init code, build-time hooks, network or file I/O, process execution and encoded payloads, and found none; the unsafe usage is the library's documented zero-copy optimisation.

- **info** `github.com/tidwall/sjson@v1.2.5/sjson.go:478` unsafe string/byte aliasing for in-place JSON edits: In-place replacement (ReplaceInPlace with Optimistic) casts the input string's backing memory to a writable []byte and mutates it. The library documents this, and SetOptions disables it for string inputs. It is an upstream design choice for performance, not malicious.

### `go.opentelemetry.io/auto/sdk` v1.1.0, surface

PASS: This is the OpenTelemetry auto-instrumentable trace SDK: a TracerProvider whose spans are serialised to OTLP JSON and handed to no-op hook functions that an external eBPF agent can probe. I checked every file for build-time code, init side effects, network use, process execution, encoded payloads and secret access. The only init-time work is reading OTEL_* limit environment variables, and none of the rest is present.

- **info** `go.opentelemetry.io/auto/sdk@v1.1.0/span.go:297` eBPF hook points are no-op functions: tracer.start and span.ended are //go:noinline functions that call no-op package variables. They are documented as being 'implemented in eBPF': an external OpenTelemetry auto-instrumentation agent attaches uprobes to read span data and supply sampling decisions. This is the module's stated purpose. The Go code itself does nothing with the data.
- **info** `go.opentelemetry.io/auto/sdk@v1.1.0/limit.go:13` Init-time environment read for span limits: Span limits are read from standard OTEL_* environment variables at package initialisation. This is an ordinary configuration read with no side effects beyond logging invalid values.

Data leaving the process:

- OTLP-JSON encoding of finished span data (names, attributes, events, links, status) → An externally attached eBPF auto-instrumentation probe (uprobe on span.ended), if one is configured; otherwise a no-op (`go.opentelemetry.io/auto/sdk@v1.1.0/span.go`)
- Warning naming an OTEL_* limit environment variable that held an invalid value → Process log via slog (stderr by default) (`go.opentelemetry.io/auto/sdk@v1.1.0/limit.go`)

### `go.opentelemetry.io/otel` v1.33.0, surface

PASS: This unit is the surface of go.opentelemetry.io/otel v1.33.0's attribute and codes packages: pure in-memory types for telemetry key/value attributes and status codes, with JSON and string encoding. I checked for init code, build steps, embedded payloads, runtime hooking, and network, file or exec use, and found none. The flagged NETWORK and ARBITRARY_EXECUTION capabilities come from reflection and fmt/json interface dispatch.

- **info** `go.opentelemetry.io/otel@v1.33.0/attribute/set.go:0` Pure data-type library with no side effects: The attribute and codes packages match upstream OpenTelemetry v1.33.0. They contain no init functions, no build-time code, no cgo or assembly, and no encoded or embedded data. The packages do no file, network or process access. type_string.go is ordinary stringer output.

### `go.opentelemetry.io/otel/trace` v1.33.0, surface

PASS: This unit is the OpenTelemetry Go trace API package (v1.33.0): interfaces for TracerProvider, Tracer and Span, a no-op implementation, SpanContext and ID types with hex and JSON encoding, and W3C tracestate parsing. I checked every file for init code, encoded payloads, network, exec, filesystem or unsafe use, and found nothing beyond pure data-structure logic. The flagged capabilities come from reflection in encoding/json and interface calls in fmt, not from any real network or code-execution behavior.

- **info** `go.opentelemetry.io/otel/trace@v1.33.0/trace.go:0` Pure API package with no side effects: The package has no init functions, no package-level side effects beyond zero-value variables, no unsafe, cgo, exec, filesystem or network use, and no embedded or encoded data. Its contents match the upstream OpenTelemetry trace API: span and context types, a no-op tracer, W3C trace-id/span-id hex parsing and tracestate parsing.

### `go.yaml.in/yaml/v4` v4.0.0-rc.2, surface

PASS: The surface of go.yaml.in/yaml/v4 v4.0.0-rc.2 consists of resolve.go and yaml.go. They implement YAML scalar resolution, the public Marshal/Unmarshal API, struct field reflection and event formatting. I checked the init functions, the imports and the encoded data: there is no network, exec, filesystem, environment or unsafe use, no files missing from the source repository, and nothing beyond what a YAML library needs.

- **info** `go.yaml.in/yaml/v4@v4.0.0-rc.2/resolve.go:35` Init functions only populate static tables: resolve.go has two init functions that fill in in-memory lookup tables: resolveTable, resolveMap and the long/short tag maps. yaml.go has one init that caches the reflect.Type of the Unmarshaler interface. None of them does I/O, touches the environment, uses the network or patches other code.
- **info** `go.yaml.in/yaml/v4@v4.0.0-rc.2/resolve.go:281` Base64 use is standard !!binary encoding: Base64 appears only in encodeBase64, which encodes non-UTF-8 strings as !!binary scalars during marshalling. This is standard YAML behaviour and the file contains no embedded payload.

### `golang.org/x/sync` v0.16.0, surface

PASS: golang.org/x/sync/errgroup is a small goroutine-synchronization library that uses only context, fmt and sync from the standard library. I checked the whole file for init code, network or file access, process execution, encoded payloads and runtime patching and found none. The NETWORK capability is a transitive standard-library attribution, not real network use.

- **info** `golang.org/x/sync@v0.16.0/errgroup/errgroup.go:0` Standard errgroup implementation, no side effects: The file matches upstream errgroup: Group, WithContext, Wait, Go, TryGo and SetLimit. It imports only context, fmt and sync. It has no init functions, no build steps, no encoded data, no file or network access and no runtime hooking.
