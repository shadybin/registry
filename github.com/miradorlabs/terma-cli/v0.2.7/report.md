# github.com/miradorlabs/terma-cli v0.2.7

## Rebuild

Rebuilt from tag `v0.2.7` (124153677a002e56637d3151048bbb58460cc1c3) and compared with the published checksums.

| File | Published | Rebuilt | Result |
|---|---|---|---|
| `terma_Darwin_arm64.tar.gz` | `sha256:a14ce2442647…` | `sha256:1ecb35ad476e…` | same contents (only archive times and owners differ) |
| `terma_Darwin_x86_64.tar.gz` | `sha256:2d0e814686a4…` | `sha256:1dc39bf4ca04…` | same contents (only archive times and owners differ) |
| `terma_Linux_arm64.tar.gz` | `sha256:a5528120350f…` | `sha256:3b538e23eef3…` | same contents (only archive times and owners differ) |
| `terma_Linux_x86_64.tar.gz` | `sha256:e16e64dba292…` | `sha256:a03b2f08dbc5…` | same contents (only archive times and owners differ) |
| `terma_Windows_arm64.zip` | `sha256:78c3524bd04f…` | `sha256:589c6f6804ec…` | same contents (only archive times and owners differ) |
| `terma_Windows_x86_64.zip` | `sha256:ef72a4134dfd…` | `sha256:d65cf89a3fd2…` | same contents (only archive times and owners differ) |

## Capabilities

What each package compiled into the binary uses directly from the standard library, for darwin, linux, windows, found by `github.com/google/capslock/cmd/capslock@v0.3.4`. Reflection, runtime and unanalyzed calls are left out: nearly every package has them.

| Capability | Packages |
|---|---|
| ARBITRARY_EXECUTION | <details><summary>29</summary>`./internal/account/api`, `./internal/account/auth`, `./internal/account/keystore`, `./internal/agents/antigravity`, `./internal/agents/claude`, `./internal/agents/codex`, `./internal/agents/cursor`, `./internal/agents/dsh`, `./internal/agents/gemini`, `./internal/agents/hermes`, `./internal/agents/internal/pifamily`, `./internal/agents/omp`, `./internal/agents/opencode`, `./internal/cli`, `./internal/config`, `./internal/delivery`, `./internal/harness`, `./internal/hooks/hookmgr`, `./internal/hooks/hookrun`, `./internal/relay`, `./internal/relay/claim`, `./internal/relay/daemon`, `./internal/selfupdate`, `./internal/session`, `./internal/spool`, `./internal/ui/output`, `github.com/spf13/cobra`, `golang.org/x/sys/windows`, `google.golang.org/protobuf/internal/impl`</details> |
| EXEC | <details><summary>17</summary>`./internal/account/auth`, `./internal/agents/claude`, `./internal/agents/codex`, `./internal/agents/hermes`, `./internal/agents/omp`, `./internal/cli`, `./internal/delivery`, `./internal/gitx`, `./internal/harness`, `./internal/hooks/hookrun`, `./internal/relay`, `./internal/relay/daemon`, `./internal/relay/service`, `./internal/selfupdate`, `./internal/trailer`, `github.com/godbus/dbus/v5`, `github.com/zalando/go-keyring`</details> |
| FILES | <details><summary>47</summary>`./internal/account/api`, `./internal/account/auth`, `./internal/account/keystore`, `./internal/agents/antigravity`, `./internal/agents/claude`, `./internal/agents/codex`, `./internal/agents/cursor`, `./internal/agents/dsh`, `./internal/agents/gemini`, `./internal/agents/hermes`, `./internal/agents/internal/pifamily`, `./internal/agents/internal/relayexport`, `./internal/agents/omp`, `./internal/agents/opencode`, `./internal/agents/pi`, `./internal/cli`, `./internal/config`, `./internal/doctor`, `./internal/flock`, `./internal/gitx`, `./internal/globalmode`, `./internal/harness`, `./internal/hooks/hookmgr`, `./internal/hooks/hookrun`, `./internal/procinfo`, `./internal/project`, `./internal/relay`, `./internal/relay/claim`, `./internal/relay/daemon`, `./internal/relay/service`, `./internal/repohooks`, `./internal/selfupdate`, `./internal/session`, `./internal/shellrc`, `./internal/spool`, `./internal/ui/output`, `./internal/ui/prompt`, `./internal/ui/style`, `github.com/godbus/dbus/v5`, `github.com/spf13/cobra`, `github.com/spf13/pflag`, `github.com/zalando/go-keyring`, `golang.org/x/term`, `google.golang.org/protobuf/internal/impl`, `gopkg.in/yaml.v3`, `mvdan.cc/sh/v3/fileutil`, `mvdan.cc/sh/v3/syntax`</details> |
| MODIFY_SYSTEM_STATE | <details><summary>3</summary>`./internal/agents/claude`, `./internal/cli`, `github.com/godbus/dbus/v5`</details> |
| NETWORK | <details><summary>37</summary>`./internal/account/api`, `./internal/account/auth`, `./internal/account/keystore`, `./internal/account/secret`, `./internal/agents`, `./internal/agents/antigravity`, `./internal/agents/claude`, `./internal/agents/codex`, `./internal/agents/cursor`, `./internal/agents/dsh`, `./internal/agents/gemini`, `./internal/agents/hermes`, `./internal/agents/internal/pifamily`, `./internal/agents/omp`, `./internal/agents/opencode`, `./internal/cli`, `./internal/config`, `./internal/delivery`, `./internal/doctor`, `./internal/flock`, `./internal/gitx`, `./internal/harness`, `./internal/hooks/hookmgr`, `./internal/hooks/hookrun`, `./internal/policy`, `./internal/relay`, `./internal/relay/claim`, `./internal/relay/daemon`, `./internal/relay/service`, `./internal/selfupdate`, `./internal/session`, `./internal/spool`, `./internal/trailer`, `./internal/ui/output`, `github.com/godbus/dbus/v5`, `github.com/spf13/cobra`, `google.golang.org/protobuf/internal/impl`</details> |
| OPERATING_SYSTEM | <details><summary>10</summary>`./internal/agents/codex`, `./internal/cli`, `./internal/gitx`, `./internal/harness`, `./internal/hooks/hookrun`, `./internal/relay`, `./internal/relay/claim`, `./internal/relay/daemon`, `./internal/repohooks`, `./internal/session`</details> |
| READ_SYSTEM_STATE | <details><summary>29</summary>`./internal/account/auth`, `./internal/agents/antigravity`, `./internal/agents/claude`, `./internal/agents/codex`, `./internal/agents/cursor`, `./internal/agents/dsh`, `./internal/agents/gemini`, `./internal/agents/hermes`, `./internal/agents/omp`, `./internal/agents/opencode`, `./internal/agents/pi`, `./internal/cli`, `./internal/config`, `./internal/doctor`, `./internal/gitx`, `./internal/harness`, `./internal/hooks/hookmgr`, `./internal/procinfo`, `./internal/relay`, `./internal/relay/daemon`, `./internal/relay/service`, `./internal/repohooks`, `./internal/shellrc`, `./internal/ui/output`, `./internal/ui/style`, `github.com/godbus/dbus/v5`, `github.com/spf13/cobra`, `golang.org/x/sys/windows`, `google.golang.org/protobuf/internal/impl`</details> |
| SYSTEM_CALLS | <details><summary>46</summary>`./internal/account/api`, `./internal/account/auth`, `./internal/account/keystore`, `./internal/account/secret`, `./internal/agents/antigravity`, `./internal/agents/claude`, `./internal/agents/codex`, `./internal/agents/cursor`, `./internal/agents/dsh`, `./internal/agents/gemini`, `./internal/agents/hermes`, `./internal/agents/internal/pifamily`, `./internal/agents/omp`, `./internal/agents/opencode`, `./internal/agents/pi`, `./internal/cli`, `./internal/config`, `./internal/delivery`, `./internal/doctor`, `./internal/flock`, `./internal/gitx`, `./internal/globalmode`, `./internal/harness`, `./internal/hooks/hookmgr`, `./internal/hooks/hookrun`, `./internal/procinfo`, `./internal/project`, `./internal/relay`, `./internal/relay/claim`, `./internal/relay/daemon`, `./internal/relay/service`, `./internal/repohooks`, `./internal/selfupdate`, `./internal/session`, `./internal/shellrc`, `./internal/spool`, `./internal/ui/output`, `github.com/danieljoos/wincred`, `github.com/godbus/dbus/v5`, `github.com/inconshreveable/mousetrap`, `github.com/spf13/cobra`, `golang.org/x/sys/unix`, `golang.org/x/sys/windows`, `golang.org/x/sys/windows/registry`, `google.golang.org/protobuf/internal/impl`, `gopkg.in/yaml.v3`</details> |
| UNSAFE_POINTER | <details><summary>35</summary>`./internal/account/api`, `./internal/account/auth`, `./internal/account/keystore`, `./internal/agents/antigravity`, `./internal/agents/claude`, `./internal/agents/codex`, `./internal/agents/cursor`, `./internal/agents/dsh`, `./internal/agents/gemini`, `./internal/agents/hermes`, `./internal/agents/internal/pifamily`, `./internal/agents/omp`, `./internal/agents/opencode`, `./internal/cli`, `./internal/config`, `./internal/delivery`, `./internal/doctor`, `./internal/harness`, `./internal/hooks/hookmgr`, `./internal/hooks/hookrun`, `./internal/relay`, `./internal/relay/claim`, `./internal/relay/daemon`, `./internal/selfupdate`, `./internal/session`, `./internal/spool`, `./internal/ui/output`, `github.com/danieljoos/wincred`, `github.com/godbus/dbus/v5`, `github.com/spf13/cobra`, `golang.org/x/sys/windows`, `golang.org/x/sys/windows/registry`, `google.golang.org/protobuf/internal/impl`, `google.golang.org/protobuf/internal/protolazy`, `google.golang.org/protobuf/reflect/protoreflect`</details> |

106 packages outside the standard library are compiled in.

### Changes

This is the project's first certified release: there is nothing to compare it with.

## Review

**Certified.**

`claude-opus-5-5` reviewed the code compiled into the binary whole, as the project's first reviewed release: 13 units, 0 of them answered from the shared cache. The verdict follows from its answers by a fixed rule, with no person involved.

- Reviewed with the project's code, since it is in the vendor's repository: `github.com/miradorlabs/terma-cli`
- Third-party, new to the project: reviewed at its surface (build-time and load-time code, binaries, assembly and C, and packages that can act on the world): `github.com/godbus/dbus/v5@v5.2.2`, `github.com/pelletier/go-toml/v2@v2.4.3`, `github.com/spf13/cobra@v1.10.2`, `github.com/spf13/pflag@v1.0.9`, `github.com/zalando/go-keyring@v0.2.8`, `go.opentelemetry.io/proto/otlp@v1.7.0`, `golang.org/x/sys@v0.47.0`, `google.golang.org/protobuf@v1.36.11`, `gopkg.in/yaml.v3@v3.0.1`
- Third-party, with nothing at its surface to review: `github.com/danieljoos/wincred@v1.2.3`, `github.com/inconshreveable/mousetrap@v1.1.0`, `golang.org/x/term@v0.45.0`, `mvdan.cc/sh/v3@v3.14.1`

### `github.com/miradorlabs/terma-cli` (the project) (part 1 of 2)

PASS: This part of terma-cli covers sign-in (PKCE loopback flow), keychain and server-key storage, the agent integrations, the hook runtime, spool delivery, doctor, and the local OTLP relay that forwards only claimed, policy-filtered telemetry to Terma. I checked the network destinations, credential handling, subprocess use, writes to other programs' configs, and the embedded plugins; everything serves the documented spend-attribution purpose. No exfiltration, backdoor, or hidden payload was found; reading Codex/Claude account identity and auto-approving terma's own Codex hooks are noted as concerns.

- **concern** `internal/agents/codex/hooks_trust.go:64` Auto-approves terma's hooks in Codex's trust store: syncHookTrust writes trusted_hash entries into the user's ~/.codex/config.toml [hooks.state] for terma's own hook entries. This skips Codex's interactive hook review for those entries. It approves only entries byte-for-byte identical to what terma writes, withdraws only approvals it wrote itself, verifies the splice changes nothing else, and tells the user ("approved Terma's N machine-wide hooks (review them with /hooks)"). It is disclosed and scoped, but it does bypass another program's trust gate.
- **concern** `internal/agents/codex/funding.go:44` Reads identity from Codex auth.json id_token: oauthEmail and oauthAccountID read Codex's auth.json, which holds OAuth tokens. They decode the unverified id_token to get the user's email and account_id for spend attribution; the tokens themselves are not sent. Claude's ~/.claude.json oauthAccount metadata is read the same way. This serves the tool's spend-attribution purpose, but it does read another program's credential file.
- **concern** `internal/agents/omp/extension/terma.ts:56` Unvalidated project ID used to build an executed helper path (dormant): In the omp extension's perRepo mode, readProjectID takes the project ID from a repository's committed .terma/settings.json and joins it into a helper path that execFileSync runs, with no validation. The OpenCode plugin explicitly validates the same input against path traversal. perRepo is never set by the Go config() in omp/harness.go, so this path is currently dormant.
- **info** `internal/agents/opencode/plugin/terma.js:440` OpenCode plugin modifies OpenRouter request metadata: The OpenCode plugin's chat.params hook adds parent_session_id and agent to the trace field of OpenRouter request bodies. The plugin header discloses this and the data is limited to session metadata.
- **info** `internal/cli/relay_deps.go:157` Heartbeat uses default HTTP client that follows redirects: sendHeartbeat uses http.DefaultClient, unlike the other senders, which refuse redirects. A same-host https→http redirect could expose the server key. This is an ordinary hardening gap, not deliberate.
- **info** `internal/config/policy.go:143` Test override env var honored in release builds: The TERMA_POLICY_STUB environment variable replaces the fetched collection policy in production builds. It only changes what the user's own machine collects and grants no access to anything.

Data leaving the process:

- CLI access and refresh tokens, PKCE code and verifier, team ID, requests for the policy, projects and organizations, and server-key minting → auth.terma.ai / api.terma.ai (or configured hosts, https only) (`internal/account/api/client.go`)
- Sign-in URL carrying the PKCE challenge, state, loopback port, machine hostname as label, and an organization hint → user's browser via open/xdg-open, then app.terma.ai (`internal/account/auth/login.go`)
- Spooled hook events: session IDs, file paths, commit SHAs, branch and remote, repository root, model and quota data, account IDs and emails, assistant replies and titles. Content follows team policy; email is withheld when content is withheld. → team OTLP ingest (otel.terma.ai) (`internal/delivery/otlp.go`)
- Agent telemetry (prompts, responses, tool content) for claimed sessions, filtered by the team's content policy and stamped with project, checkout, branch and user ID → team OTLP ingest (`internal/relay/forward.go`)
- Relay heartbeat with hostname, terma version, launch mode, aggregate counters and signed-in user ID → team OTLP ingest (`internal/cli/relay_deps.go`)
- ChatGPT account_id and email decoded from the id_token in ~/.codex/auth.json (the tokens themselves are not sent) → spool, then Terma ingest (`internal/agents/codex/funding.go`)
- oauthAccount metadata from ~/.claude.json: account and org UUIDs, billing type, seat tier, email → spool, then Terma ingest (`internal/agents/claude/funding.go`)
- Codex assistant reply text and thread titles read from rollout files and session_index.jsonl → spool, then Terma ingest (policy-gated) (`internal/agents/codex/replies_hooks.go`)
- Parent session ID and agent name added to the request body's trace metadata for subagent sessions → OpenRouter (inside the agent's own requests) (`internal/agents/opencode/plugin/terma.js`)
- OTEL env block pointing at the local relay with the relay token, hooks, and a wrapped statusLine → ~/.claude/settings.json (`internal/agents/claude/settings.go`)
- [otel] exporters with the relay token, hooks, notify entry, and hooks.state trust hashes for terma's own entries → ~/.codex/config.toml and hooks.json (`internal/agents/codex/toml.go`)
- Telemetry endpoint carrying the relay token, and hook extension → ~/.gemini/settings.json and extensions/terma (`internal/agents/gemini/settings.go`)
- Exporter plugin with the relay token, and its insert entry → $DSH_HOME/plugins/terma-relay.mjs and cordis.patch.yml (`internal/agents/dsh/plugin.go`)
- Exporter plugin with the relay token → $HERMES_HOME/plugins/terma (`internal/agents/hermes/plugin.go`)
- Exporter extension with the relay token → ~/.pi/agent/extensions and ~/.omp/agent/extensions (`internal/agents/internal/pifamily/pifamily.go`)
- CLI tokens and team server keys → system keychain (`internal/account/secret/secret.go`)

### `github.com/miradorlabs/terma-cli` (the project) (part 2 of 2)

PASS: This part of terma covers the local OTLP relay daemon and its per-user service, git hook installation, session manifests, the event spool, the signed self-updater, collection-policy storage and UI helpers. I checked process spawning, service and hook installation, network endpoints, and update verification (ed25519 key pinned in the binary plus SHA-256). All of it matches the tool's documented behaviour, and I found no exfiltration, backdoor or hidden behaviour.

- **info** `internal/selfupdate/selfupdate.go:209` Self-update verifies a pinned-key signature and checksum: Apply verifies an ed25519 signature over 'terma release <tag>\n' plus checksums.txt against keys pinned in sign.go, then checks the archive's SHA-256 against the signed checksums before renaming the binary into place. Downloads are restricted to https GitHub hosts, also on redirect. Release keys can only be overridden through a Client field used by tests. This meets the signed-update exception.
- **info** `internal/relay/service/manager.go:176` Per-user relay service installed as documented: The relay is installed as a launchd agent, a systemd user unit, or a Windows HKCU Run key that launches a hidden wscript launcher. This is persistence, but it is the documented relay service set up by `terma setup` and removed by teardown or `relay daemon remove`.
- **info** `internal/repohooks/sync.go:28` Git hooks installed into collected repositories under team policy: Writes prepare-commit-msg, post-commit and pre-push into a repository's .git/hooks only when the validated team policy has GitHooks on and admits the repository. It chains any existing hook by renaming it to .pre-terma and leaves core.hooksPath repositories alone. This matches the README's commit stamping section.
- **info** `internal/ui/style/style.go:64` Environment detection limited to output formatting: AgentMode checks CLAUDECODE, CURSOR_TRACE_ID and similar variables only to disable colour and choose JSON output. It hides no behaviour.
- **info** `internal/trailer/trailer.go:0` Capabilities attributed to a pure string package: Capslock attributes EXEC and NETWORK to the trailer package, but the code only uses regexp and strings. This looks like call-graph over-approximation, not real use.

Data leaving the process:

- Setup heartbeat request with the local relay bearer token → local relay at the recorded address (default 127.0.0.1) /heartbeat (`internal/relay/daemon/heartbeat.go`)
- Agents' OTLP telemetry is accepted locally; the relay engine (outside this unit) forwards claimed, policy-filtered sessions to the Terma ingest endpoint with the team key → HTTP server on the relay address (loopback by default) (`internal/relay/daemon/run.go`)
- Mints a project ingest key under the signed-in credential and stores it locally → Terma backend via injected CreateKey; system keychain via keystore.Set (`internal/relay/daemon/mint.go`)
- Periodic fetch of each team's collection policy → Terma backend via injected RefreshPolicy (`internal/relay/daemon/engine.go`)
- Release lookups and downloads; User-Agent terma-cli/<version> → api.github.com and github.com (miradorlabs/terma-cli releases) (`internal/selfupdate/selfupdate.go`)
- The new binary after signature and checksum verification → the terma executable path (renamed into place) (`internal/selfupdate/selfupdate.go`)
- Per-user relay service definition with the relay environment keys (TERMA_*, XDG_*, HOME and similar) → ~/Library/LaunchAgents/ai.terma.relay*.plist, ~/.config/systemd/user/ai.terma.relay*.service, or HKCU Run key plus a .vbs launcher (`internal/relay/service/manager.go`)
- terma hook scripts chaining to any displaced hook → <repo>/.git/hooks/{prepare-commit-msg,post-commit,pre-push} (`internal/repohooks/repohooks.go`)
- Queued hook events (commit, push and session events) in batches → injected Sender (Terma backend) (`internal/spool/flush.go`)
- Relay logs, counters and run info → relay state directory (activity.log, daemon.log, stats.json, daemon.json) (`internal/relay/daemon/log.go`)

### `github.com/godbus/dbus/v5` v5.2.2, surface

PASS: This surface of godbus/dbus v5.2.2 is a pure-Go D-Bus client: bus address discovery, EXTERNAL and ANONYMOUS authentication, wire encoding and decoding, and Unix, tcp and nonce-tcp transports. I checked the init functions (only transport registration and endianness detection), the exec of dbus-launch, the environment changes, credential passing and every network dial. All of it matches upstream behaviour and the library's purpose, with no hidden endpoints, encoded payloads or extra data collection.

- **info** `github.com/godbus/dbus/v5@v5.2.2/conn_other.go:19` Session bus autolaunch runs dbus-launch from PATH: When no session bus address is found, getSessionBusPlatformAddress runs "dbus-launch" resolved via PATH and sets whatever environment variable name appears before '=' in its output. This is standard upstream godbus behaviour for D-Bus autolaunch, not deliberate misuse. It is noted because it runs an external binary.
- **info** `github.com/godbus/dbus/v5@v5.2.2/transport_nonce_tcp.go:30` nonce-tcp sends noncefile contents to the bus: The nonce-tcp transport reads the file named by the bus address's noncefile key and writes its bytes to the TCP socket. This is what the D-Bus nonce-tcp spec requires. The address comes from the caller or the environment, so it is not hidden exfiltration.

Data leaving the process:

- D-Bus messages built by the application, plus any Unix file descriptors passed as SCM_RIGHTS → D-Bus daemon over a Unix domain socket (system or session bus address) (`github.com/godbus/dbus/v5@v5.2.2/transport_unix.go`)
- The process PID, UID and GID as SCM_CREDENTIALS, sent with the initial null byte for EXTERNAL authentication → D-Bus daemon over a Unix socket (`github.com/godbus/dbus/v5@v5.2.2/transport_unixcred_linux.go`)
- The hex-encoded effective UID during the EXTERNAL auth handshake → D-Bus daemon (`github.com/godbus/dbus/v5@v5.2.2/auth_external.go`)
- Authentication handshake and D-Bus messages → TCP host:port named in a tcp: bus address (`github.com/godbus/dbus/v5@v5.2.2/transport_tcp.go`)
- Contents of the noncefile named in the address (as the D-Bus spec requires), then D-Bus messages → TCP host:port named in a nonce-tcp: bus address (`github.com/godbus/dbus/v5@v5.2.2/transport_nonce_tcp.go`)
- Runs the fixed dbus-launch command with no input and reads its output to get a session bus address → dbus-launch child process (`github.com/godbus/dbus/v5@v5.2.2/conn_other.go`)
- A diagnostic line when an exported method's reply cannot be encoded → stderr (`github.com/godbus/dbus/v5@v5.2.2/export.go`)

### `github.com/pelletier/go-toml/v2` v2.4.3, surface

PASS: The surface is a single init function in go-toml's unstable package. It connects the module's internal parserbridge function variables to the package's own TOML scanner and parser methods. It has no network, file, exec or system side effects and touches nothing outside the module, which fits a TOML library.

- **info** `github.com/pelletier/go-toml/v2@v2.4.3/unstable/bridge.go:9` init wires internal parser bridge function variables: The package's init function assigns four function variables in the internal parserbridge package to the unstable package's own scanning and parsing methods (scanScalar, scanKey, scanComment, parseValue). This is in-process wiring between the module's own packages, a common way to share internals without exporting them. It patches no other library, does no I/O and runs no code chosen from data.

### `github.com/spf13/cobra` v1.10.2, surface

PASS: This unit is the cobra CLI framework: command tree, argument and flag parsing, help and usage templates, and shell completion script generation for bash, zsh, fish and powershell. I read every supplied file. It matches upstream cobra behaviour, with no init-time side effects, network access, process execution, credential access, obfuscation or hidden commands beyond the documented __complete helper. On Windows it waits for Enter or a timeout and exits when started from Explorer (mousetrap).

- **info** `github.com/spf13/cobra@v1.10.2/bash_completionsV2.go:0` Completion scripts eval the program's own __complete invocation: The generated bash, zsh, fish and powershell scripts use eval or Invoke-Expression to re-invoke the program with the user's own command line to fetch completions. This is the standard upstream cobra design and runs in the user's shell at their request.
- **info** `github.com/spf13/cobra@v1.10.2/completions.go:0` Opt-in debug log file via environment variable: CompDebug appends debug output to the path in BASH_COMP_DEBUG_FILE when the user sets it. This is a user-controlled, documented debugging feature.

Data leaving the process:

- Generated shell completion scripts → file path supplied by the calling program (GenBashCompletionFile, GenBashCompletionFileV2, GenFishCompletionFile, GenZshCompletionFile*, GenPowerShellCompletionFile*) (`github.com/spf13/cobra@v1.10.2/bash_completions.go`)
- Completion debug and error messages, only when that variable is set → file named by the user's BASH_COMP_DEBUG_FILE environment variable (append, 0644), and stderr (`github.com/spf13/cobra@v1.10.2/completions.go`)
- Completion choices and directives, plus completion scripts written by the default 'completion' command → stdout of the completion command, read by the user's shell (`github.com/spf13/cobra@v1.10.2/completions.go`)

### `github.com/spf13/pflag` v1.0.9, surface

PASS: The surface of github.com/spf13/pflag v1.0.9 is flag.go, a POSIX/GNU-style command-line flag parser. It only parses arguments, keeps flag state and writes usage and error text to stderr or a writer the caller supplies. It has no init functions with side effects, no network, exec, file access or encoded data, and no text aimed at reviewers; package-level initialisation is limited to NewFlagSet(os.Args[0]), the error value and the usage function.

- **info** `github.com/spf13/pflag@v1.0.9/flag.go:1180` os.Exit on parse error: When parsing fails under the ExitOnError policy, Parse and ParseAll call os.Exit(0) for a help request and os.Exit(2) for other errors. This is the documented flag-package behaviour, the same as the standard library, and not a security issue.
- **info** `github.com/spf13/pflag@v1.0.9/flag.go:1045` Go test shorthand passthrough: isGotestShorthandFlag, called from parseSingleShortArg, is defined in another file of the package that is not in this surface. Upstream it only lets 'test.' flags through when running under go test. Within this surface it is benign parsing logic.

Data leaving the process:

- Usage, help, deprecation and parse-error messages → os.Stderr or the writer the caller sets with SetOutput (`github.com/spf13/pflag@v1.0.9/flag.go`)

### `github.com/zalando/go-keyring` v0.2.8, surface

PASS: go-keyring is a thin cross-platform wrapper that stores, reads and deletes secrets in the OS keyring: the macOS security CLI, the Linux/BSD Secret Service over D-Bus, and Windows Credential Manager. I checked the init functions, the exec use on macOS and every data path. Secrets go only to the local OS keyring the caller targets, and there is no network use, hidden behaviour or encoded payload.

- **info** `github.com/zalando/go-keyring@v0.2.8/keyring_darwin.go:45` Executes the macOS security CLI to access the Keychain: The macOS backend runs the hard-coded /usr/bin/security tool. Service and username are passed as exec arguments (no shell is involved). For Set, the command line is written to `security -i` with each field shell-quoted, and the password is base64-encoded first. Nothing beyond the caller's own service, user and secret is passed.
- **info** `github.com/zalando/go-keyring@v0.2.8/keyring_darwin.go:87` Password sent via stdin to the interactive security session: Set passes the password as the -w argument inside the interactive `security -i` session rather than on a process command line, so it is not visible in the process list. The upstream library does this on purpose.
- **info** `github.com/zalando/go-keyring@v0.2.8/keyring_unix.go:186` Init functions only select the provider: The init functions only choose the platform's keyring provider. They have no other side effects: no network use, no file access and no hooking of other code.

Data leaving the process:

- Service name, username and the caller's base64-encoded password, written on the stdin of `security -i`; service and username are also passed as arguments for lookup and delete. → /usr/bin/security subprocess (macOS Keychain) (`github.com/zalando/go-keyring@v0.2.8/keyring_darwin.go`)
- Service and username attributes, an item label, and the caller's secret, used to create, search, read and delete items in the login collection. → Secret Service daemon over the D-Bus session bus (`github.com/zalando/go-keyring@v0.2.8/keyring_unix.go`)
- Generic credentials named service:username, holding the caller's password. → Windows Credential Manager via the wincred library (`github.com/zalando/go-keyring@v0.2.8/keyring_windows.go`)

### `go.opentelemetry.io/proto/otlp` v1.7.0, surface

PASS: The unit is the protoc-gen-go generated message types for OTLP common, resource, logs, metrics and trace v1. Their only init code registers protobuf descriptors with google.golang.org/protobuf. I checked the init functions, imports and embedded raw descriptor bytes: there is no network, file, exec or environment access, and nothing deviates from standard generated code.

- **info** `go.opentelemetry.io/proto/otlp@v1.7.0/common/v1/common.pb.go:0` Standard generated init registration: Each package has an init() that only registers its protobuf file descriptor with the protobuf runtime via protoimpl.TypeBuilder. This is standard protoc-gen-go output. It has no other side effects.
- **info** `go.opentelemetry.io/proto/otlp@v1.7.0/metrics/v1/metrics.pb.go:0` Embedded raw descriptors are ordinary protobuf metadata: The rawDesc byte arrays are serialized FileDescriptorProto data. They decode to the expected OTLP message, field and enum names and go_package options. They contain no hidden payload and are passed only to the protobuf runtime.

### `golang.org/x/sys` v0.47.0, surface (part 1 of 3)

PASS: This surface of golang.org/x/sys/unix consists of the amd64 syscall assembly stubs, the generated darwin libc trampolines, the linkname bindings (auxv, darwin libSystem, vgetrandom) and the Linux syscall wrappers. All of it matches the expected upstream implementation. There is no init code, no hidden network or file activity, no encoded payloads, and nothing hooks or patches other code.

- **info** `golang.org/x/sys@v0.47.0/unix/auxv.go:14` linkname bindings to runtime internals: auxv.go, syscall_darwin_libSystem.go, syscall_linux.go (syscall_prlimit) and vgetrandom_linux.go use //go:linkname to bind to runtime and syscall internals: runtime.getAuxv, syscall.syscall*, syscall.prlimit and runtime.vgetrandom. These are the documented upstream x/sys bindings. They only call those functions and do not overwrite or hook them.
- **info** `golang.org/x/sys@v0.47.0/unix/zsyscall_darwin_amd64.s:1` Assembly trampolines are standard: The BSD and Linux amd64 assembly stubs jump to package syscall's implementations, or issue SYSCALL directly for the NoError variants. The generated darwin trampolines jump to libc symbols. All of this matches upstream mkasm output, and none of it embeds code or data beyond the trampoline addresses.

### `golang.org/x/sys` v0.47.0, surface (part 2 of 3)

PASS: This unit is the surface of golang.org/x/sys/windows: DLL loading and proc-call plumbing, syscall declarations, security/token/service/setupapi wrappers, and type and constant definitions. I checked load-time initialisation, linkname use, dynamic function-pointer calls, and every file for hidden network activity, encoded payloads or environment-dependent behaviour. All of it matches the expected upstream Go project code. Nothing runs on its own beyond obtaining the standard handles, and every OS interaction is a thin wrapper invoked by the caller.

- **info** `golang.org/x/sys@v0.47.0/windows/dll_windows.go:44` Documented DLL preloading risk in LoadDLL/NewLazyDLL: LoadDLL and NewLazyDLL accept non-absolute names and are subject to DLL search-order hijacking. This is upstream behaviour and documented in the source; NewLazySystemDLL restricts loading to System32. It is a caller-side concern, not deliberate.
- **info** `golang.org/x/sys@v0.47.0/windows/syscall_windows.go:0` Package-level variable initialisation calls GetStdHandle: The only load-time side effect is the package-level initialisation of Stdin/Stdout/Stderr via GetStdHandle. This is benign and matches upstream. There is no init() function, no hooking or patching, and no embedded or encoded data.

### `golang.org/x/sys` v0.47.0, surface (part 3 of 3)

PASS: This unit is the generated surface of golang.org/x/sys/windows: Win32 error constants, known-folder GUIDs, and the mksyscall-generated bindings that lazily resolve procedures from System32 DLLs and call them via syscall.SyscallN. I checked for load-time side effects, non-system DLL loading, encoded data, hidden calls and deviations from the upstream generated patterns, and found none. The code is consistent with the upstream library.

- **info** `golang.org/x/sys@v0.47.0/windows/zsyscall_windows.go:38` System DLLs loaded lazily from System32 only: All 23 DLLs (CfgMgr32, advapi32, kernel32, ntdll, ws2_32 and others) are loaded with NewLazySystemDLL, which restricts loading to the System32 directory. Procedures are resolved lazily on first use, and the package-level var blocks only build lazy descriptors. No init function, constructor or load-time side effect is present in these files.
- **info** `golang.org/x/sys@v0.47.0/windows/zerrors_windows.go:1` Generated constant tables contain only data: zerrors_windows.go contains only error, HRESULT and NTSTATUS constants. zknownfolderids_windows.go contains only KNOWNFOLDERID GUID literals. Both match the upstream mkerrors.bash and mkknownfolderids.bash output style. There is no executable code, encoded payload or hidden data.
- **info** `golang.org/x/sys@v0.47.0/windows/zsyscall_windows.go:1` Wrappers are uniform generated thin bindings: The wrappers include powerful APIs: WriteProcessMemory, VirtualProtect, CreateProcessAsUser, CreateService, InitiateSystemShutdownEx, CryptUnprotectData and others. These are the standard x/sys/windows API surface. Each function is a plain argument-marshalling call with the upstream error-handling pattern, and nothing calls them automatically. Whether they are misused depends on the importing code, which is reviewed separately.

### `google.golang.org/protobuf` v1.36.11, surface

PASS: This surface of google.golang.org/protobuf v1.36.11 is the official Go protobuf runtime: wire encode/decode, reflection, legacy message support, lazy decoding, and the embedded edition-defaults blob parsed at init. I checked the init code, the embedded binary's consumer, environment reads, and the reflection/unsafe uses. All match upstream behaviour, with no network, process execution, file writes, secret access or hidden payloads.

- **info** `google.golang.org/protobuf@v1.36.11/internal/editiondefaults/defaults.go:11` Embedded binary edition defaults: editiondefaults embeds a 154-byte binary FeatureSetDefaults protobuf, which upstream generates from protoc. It is consumed only by filedesc.unmarshalEditionDefaults at init. That parser accepts a fixed set of field numbers, panics on anything unknown, and only sets boolean/int feature flags in a defaults cache. It cannot carry executable content or change behaviour beyond protobuf edition defaults.
- **info** `google.golang.org/protobuf@v1.36.11/internal/impl/lazy.go:24` Environment variable toggles lazy decoding: An init-time read of GOPROTODEBUG=nolazy disables lazy unmarshalling. This is a documented upstream debug knob that only selects between eager and lazy decoding paths. It does not affect security.
- **info** `google.golang.org/protobuf@v1.36.11/internal/filedesc/editions.go:21` Init functions are benign: filedesc and proto have init functions. They parse the embedded edition defaults, set surrogate file features, and assign proto.Error. None has side effects outside process memory.

### `gopkg.in/yaml.v3` v3.0.1, surface

PASS: The surface of gopkg.in/yaml.v3 v3.0.1 shown here is resolve.go and yaml.go. Their init functions only build in-memory lookup tables for YAML scalar resolution and tags, and cache a reflect type. Nothing reaches the network, file system, environment or process execution, and the code matches the upstream library and its purpose.

- **info** `gopkg.in/yaml.v3@v3.0.1/resolve.go:35` Init functions only populate in-memory lookup tables: init() in resolve.go fills the resolver lookup table and the tag maps. init() in yaml.go caches the reflect type of Unmarshaler. None of these touch the file system, network, environment or other packages.
