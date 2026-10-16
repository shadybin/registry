# github.com/jespern/marlin v0.1.7

## Rebuild

Rebuilt from tag `v0.1.7` (5742b4fbd2b42af6bcc4fb598a2e931dd8ec0df7) and compared with the published checksums.

| File | Published | Rebuilt | Result |
|---|---|---|---|
| `marlin-aarch64-darwin` | `sha256:bc1a6c143457…` | `sha256:bc1a6c143457…` | identical |
| `marlin-aarch64-darwin.tar.gz` | `sha256:05be7b53682a…` | — | not rebuilt |
| `marlin-aarch64-linux` | `sha256:0cb43c373019…` | `sha256:0cb43c373019…` | identical |
| `marlin-aarch64-linux.tar.gz` | `sha256:e2ee6c5d1cdc…` | — | not rebuilt |
| `marlin-x86_64-darwin` | `sha256:3fdeaf3cd2a9…` | `sha256:3fdeaf3cd2a9…` | identical |
| `marlin-x86_64-darwin.tar.gz` | `sha256:5fa8446fc542…` | — | not rebuilt |
| `marlin-x86_64-linux` | `sha256:1ce0386f46a7…` | `sha256:1ce0386f46a7…` | identical |
| `marlin-x86_64-linux.tar.gz` | `sha256:e8c246a46ee0…` | — | not rebuilt |

## Capabilities

What each package compiled into the binary uses directly from the standard library, for , found by `none`. Reflection, runtime and unanalyzed calls are left out: nearly every package has them.

| Capability | Packages |
|---|---|

33 packages outside the standard library are compiled in.

### Changes

This is the project's first certified release: there is nothing to compare it with.

## Review

**Certified.**

`claude-opus-5-5` reviewed the code compiled into the binary whole, as the project's first reviewed release: 8 units, 0 of them answered from the shared cache. The verdict follows from its answers by a fixed rule, with no person involved.

- Reviewed with the project's code, since it is in the vendor's repository: `github.com/jespern/marlin`
- Third-party, new to the project, too large to review at its surface: pinned to its exact release, and reviewed as a diff when its version changes: `sqlite.org/sqlite-amalgamation@3.53.4`
- Third-party, new to the project: reviewed at its surface (build-time and load-time code, binaries, assembly and C, and packages that can act on the world): `github.com/zig-utils/zig-regex@zig_regex-0.2.0-omky0f_2BgAXpSGi4MbMSngUU98FBX9RQIB2ShE3G2ww`, `github.com/rockorager/libvaxis@vaxis-0.6.0-BWNV_LC4CwBka_bJk8SOXqzCM-nyQH00jzdL0kUhGwRE`, `github.com/zigimg/zigimg@zigimg-0.1.0-8_eo2oyaFwBZwJpmqPkCfVXWBrHcqbYwmrp1I6bTD3lI`, `github.com/yaml/libyaml@0.2.5`

### `github.com/jespern/marlin` (the project) (part 1 of 4)

PASS: This part holds the build graph, entry point, CLI dispatch and a checksum-verified asset cache/downloader for marlin, an AI-agent session multiplexer. I checked build.zig for default-path build-time execution (none besides compiling vendored C: SQLite and libyaml), the asset downloader (data only, pinned SHA-256 before install), and CLI dispatch (shell escape and internal subcommands that delegate to other parts). Nothing in this unit exfiltrates data, runs downloaded code or hides behavior.

- **info** `assets/wo.pak:0` Opaque binary asset bundles in repository: assets/mk.pak (241 KB) and assets/wo.pak (3.5 MB) are opaque binaries that cannot be read as source. build.zig does not embed them, and their location outside src/ puts them out of @embedFile reach for the module rooted at src/. At run time asset_store.zig reads them from a source checkout or downloads them, and in both cases holds them to a pinned SHA-256 and a format validator. They appear to be data bundles for the optional Mario Kart 64 and wipEout easter-egg ports, not code. Their decoders live in other parts of the module and should be checked there.
- **info** `src/asset_store.zig:116` Asset download pinned by checksum: download() fetches only data, never executables. acquireWith() runs verify(), which checks a pinned SHA-256 and a validator, before install(). Cached copies and copies from a checkout go through the same check. Following redirects (@enumFromInt(3)) is harmless given the digest pin.
- **info** `src/cli.zig:276` User-initiated shell escape: runShellRequest spawns $SHELL, or $SHELL -c <command>, with the full environment. This is the documented !command / bare ! shell escape, and the user starts it.
- **info** `src/cli.zig:101` Hidden internal subcommands: The internal commands cc_approve, landlock_exec, _pipe, _rebuild, _web, _push and resolve_host are left out of help. Comments say the daemon or the ssh remote-attach path spawns them. Their implementations are in other parts. Nothing in this unit shows them granting access or skipping checks.

Data leaving the process:

- Requests for the optional game asset bundles (mk.pak, wo.pak). Nothing is uploaded; follows up to 3 redirects. The response is checked against the pinned SHA-256 and a format validator before it is cached. → network: HTTP GET to the URL in each consumer's Spec (defined in other parts) (`src/asset_store.zig`)
- Verified asset bundle bytes, written atomically through a temp file and rename (the tool's own cache). → $XDG_CACHE_HOME or ~/.cache/marlin/assets/<sha256>/<filename> (`src/asset_store.zig`)
- The user's shell-escape command line and the user's environment, with the working directory set to the session cwd. The user asks for this with !cmd or a bare !. → child process: the user's $SHELL (`src/cli.zig`)
- A hostname looked up by the internal resolve_host worker that the daemon spawns. Prints one IPv4 address to stdout. → DNS resolver (`src/cli.zig`)

### `github.com/jespern/marlin` (the project) (part 2 of 4)

PASS: This unit is the marlin client package: the daemon socket/SSH transport, the TUI with its commands, keybindings, rendering, setup wizard and screensaver effects, headless CLI commands, the cc_approve MCP bridge, voice dictation and the localhost web companion. I checked network use, subprocess spawning, credential handling, downloads and embedded binaries. All of them match the tool's documented purpose, and I found no exfiltration, backdoor, hidden behavior or execution of downloaded code.

- **concern** `src/client/web.zig:200` Unauthenticated localhost/tailnet control bridge: The web companion has no authentication; any local process or user on the machine (and any tailnet member when [web] tailscale is enabled) can POST arbitrary ClientMsg lines via /send, including approvals, permission mode changes and MCP server additions (which run commands). This is documented in the file header and README as an intentional design ('the tailnet is the gate'), with Host/Origin checks against browser attacks.
- **info** `src/client/web.zig:24` Web companion default state inconsistent with README: The module comment says serving honors `[web] enabled` 'on by default', whereas the README describes the web companion as opt-in. The default lives in core config (outside this unit); worth confirming.
- **info** `src/client/web.zig:43` Embedded binary icons: webui-icon-180.png and webui-icon-512.png are embedded via @embedFile and served only as PWA icons with content-type image/png; purpose is evident.
- **info** `src/client/voice.zig:228` Unverified data downloads: Voice models and wipEout assets are downloaded over HTTPS without checksum verification in this unit. They are data (models/assets), not executed code, and only fetched on explicit user command.

Data leaving the process:

- NDJSON protocol messages: prompts, attachments, approvals, session commands → local daemon unix socket, or `ssh <host> sh -lc 'exec marlin _pipe'` child process when MARLIN_REMOTE is set (`src/client/attach.zig`)
- Provider API key typed in the masked /setup prompt, plus base URL and model; buffers are zeroed after sending → daemon (via attach socket/ssh pipe, sendSensitive) (`src/client/setup.zig`)
- OTLP endpoint and header values entered by the user for /otel set → daemon (sendSensitive) (`src/client/commands.zig`)
- Downloaded speech-model data files, only after the user runs /voice setup → huggingface.co (whisper.cpp model URLs) and ~/.local/share/marlin/models (`src/client/voice.zig`)
- Game asset bundle download on first `!wipeout` → wipEout asset bundle URL (from wipeout module) into the data directory (`src/client/tui.zig`)
- Microphone recording while the user holds/toggles the voice key; deleted after transcription → $TMPDIR wav file, ffmpeg and STT subprocesses (`src/client/tui.zig`)
- Reads clipboard image on Ctrl+V to attach to a prompt → osascript / wl-paste / xclip subprocesses (`src/client/media.zig`)
- Selected transcript text copied to clipboard, cwd, progress, desktop notifications, effect frames → terminal (OSC 52 / OSC 7 / OSC 9 / OSC 99 / Kitty graphics) (`src/client/tui.zig`)
- http(s)/file URI the user Ctrl/Cmd-clicks in the transcript → /usr/bin/open or xdg-open (`src/client/tui.zig`)
- Session event streams and arbitrary client messages forwarded to the daemon → 127.0.0.1 HTTP listener, optionally exposed via `tailscale serve` to the tailnet (`src/client/web.zig`)
- Persisted [voice] and [web] settings → ~/.config/marlin/config.toml (`src/client/commands.zig`)
- Full session handle → user-specified --session-file path (`src/client/session_file.zig`)
- Self rebuild of the client when the binary lives in <checkout>/zig-out/bin → `zig build` subprocess in the source checkout (`src/client/self_build.zig`)

### `github.com/jespern/marlin` (the project) (part 3 of 4)

PASS: This part covers marlin's core config/protocol code, the daemon (session dispatcher, agent loop, SQLite store, sandbox, permissions, plugins, OTLP exporter, LAN discovery) and the Claude Code and Codex guest adapters. I checked every network call, subprocess spawn, credential read and write, and file write. All of them serve the documented agent-multiplexer purpose: provider requests, catalog and blocklist fetches, user-configured OTLP, Bonjour advertisement, and user-installed plugins, hooks and MCP servers. I found no exfiltration, backdoor, obfuscation or execution of downloaded code.

- **concern** `src/core/config.zig:131` Unauthenticated local web companion enabled by default: README describes the web companion as 'an opt-in, localhost-only client', but Config.web_enabled defaults to true. The code comment says it is an unauthenticated loopback surface that can drive every daemon capability, including shutdown and full-access approvals. Binding is loopback-only with Host/Origin checks, so this looks like a design choice rather than a hidden backdoor, but other local users on a multi-user host could reach it.
- **info** `src/core/discovery.zig:168` LAN Bonjour advertisement on by default: The daemon advertises user@hostname, the ssh user and the session count on the LAN by default. The README documents `marlin discover` and the config documents the opt-out, so this is visible to the user, but it broadcasts identifying details to the local network without opt-in.
- **concern** `src/daemon/permissions.zig:140` Heuristic auto-approval of guest shell commands: ccAutoAllow auto-grants Claude Code Bash commands unless a lexical scan finds an out-of-workspace or protected path. The code openly states this is a convenience, not a security boundary, and read-only children are denied mutations outright.
- **info** `src/daemon/loop.zig:296` Guest image attachments written to shared temp directory: Attachments are written to $TMPDIR/marlin-attachments with default permissions. If TMPDIR is a shared /tmp, other local users may be able to read the images.
- **info** `src/core/credentials.zig:143` Credentials file chmod after write: credentials.store writes the file and only then chmods it to 0600, which leaves a brief window where it may be readable under the process umask.
- **info** `src/daemon/network_policy.zig:27` Default blocklist download from jsDelivr: The generated config subscribes to the HaGeZi TIF mini blocklist, so the daemon fetches from cdn.jsdelivr.net at startup. The contents are parsed only as domain names and never executed.

Data leaving the process:

- Assembled conversation context (system prompt, project instructions, environment facts such as cwd, git branch and date, transcript, tool results, image attachments) and the provider API key as a bearer or x-api-key header → Configured LLM provider endpoint (OpenRouter, Anthropic, Vercel, LiteLLM, local or custom base_url) (`src/daemon/loop.zig`)
- HTTP GET of the public model catalog for the /model picker, cached for one hour → OpenRouter models endpoint (registry.openrouterModelsUrl) (`src/daemon/daemon.zig`)
- HTTP GET of a DNS blocklist feed, about every 12 hours; cached under ~/.cache/marlin/blocklists and used only as a list of domains → https://cdn.jsdelivr.net (HaGeZi TIF mini blocklist) (`src/daemon/network_policy.zig`)
- Trace spans: model, token usage, timings and tool names. Prompts, replies and tool arguments/results are included only when content capture is opted in. Uses the user-supplied auth headers. → User-configured OTLP collector endpoint (`src/daemon/otel.zig`)
- Instance name user@hostname, marlin version, ssh user name and session count in a TXT record; on by default, disabled with [discovery] enabled=false or MARLIN_DISCOVERY=0 → Local network via the system Bonjour responder (_marlin._tcp) (`src/core/discovery.zig`)
- Provider API keys and OTEL endpoint/header settings entered during setup or via /otel → ~/.config/marlin/credentials (mode 0600) (`src/core/credentials.zig`)
- Starter config and user preference, MCP, council, provider and voice edits → ~/.config/marlin/config.toml (`src/core/config.zig`)
- Repository URL; uses the user's existing git credentials; hooks are disabled → git clone of a user-named marketplace repository (GitHub or other Git URL) into ~/.config/marlin/plugins/snapshots (`src/daemon/plugins.zig`)
- JSON event payloads: session id, tool name, args, error text, token counts → User-configured hook scripts (stdin) (`src/daemon/hooks.zig`)
- User prompts and steering; scrubbed environment plus OTEL endpoint/headers and TRACEPARENT when Marlin exports telemetry → claude subprocess (stdin, argv, env) (`src/daemon/guest/claude_code_turn.zig`)
- Prompts, approval decisions and thread ids; scrubbed environment plus TRACEPARENT; OTEL overrides passed as -c arguments → codex app-server subprocess (JSON-RPC over stdio) (`src/daemon/guest/codex_turn.zig`)
- User image attachments written to files so guest agents can read them → $TMPDIR/marlin-attachments/<hash>.<ext> (`src/daemon/loop.zig`)
- Full session transcripts, blobs and telemetry → ~/.local/state/marlin/marlin.db (SQLite) (`src/daemon/store.zig`)
- Session commands, messages, approvals and push subscription data from the browser → Same-origin daemon web companion (/send, /events, /push/*) (`src/client/webui.html`)
- Login status probes (`codex login status`, `claude auth status`) run with a scrubbed environment → codex / claude CLIs (`src/daemon/daemon.zig`)

### `github.com/jespern/marlin` (the project) (part 4 of 4)

PASS: This unit covers the daemon's provider layer (OpenAI-compatible and Anthropic wire dialects, Claude Code and Codex guest adapters, the HTTP client), the built-in tools (bash, file, search, fetch, MCP, exec), the Web Push notification helper, and two terminal game ports (MK64 and wipEout) with their asset loaders. I checked network destinations, subprocess spawning, credential handling, TLS, and asset downloads: secrets go only to their configured providers, downloaded game data is checksum-pinned and never executed, credential paths are refused by the file tools, and nothing is obfuscated or hidden. Nothing malicious was found; the only concern is a deliberate loosening of the Codex guest sandbox's network access, documented in the code.

- **concern** `src/daemon/provider/codex.zig:104` Codex guest sandbox network access enabled: The Codex guest is always launched with `-c sandbox_workspace_write.network_access=true`, so its workspace-write sandbox allows network access. The source comment explains the reason (matching Marlin's own sandbox, which scopes writes only) and it applies only to the guest's write mode. It is a deliberate, documented policy choice, but it does loosen the guest's default sandbox.
- **info** `src/wipeout/snapshot.zig:51` Bytewise deserialization of state files without enum validation: Both the save file and the race snapshot are read by memcpy straight into extern structs that contain Zig enums (Scene, RaceType, ship Mode and others). Only magic, version and size are checked, plus a few indices in restoreState. A corrupted or crafted local file could hold invalid enum values. This is an ordinary robustness bug limited to the user's own state directory, not deliberate.
- **info** `src/mk64/cache.zig:4` Game asset bundles downloaded with pinned checksums: The MK64 and wipEout data packs are downloaded from the vendor's GitHub repository. Each pack is checked against a SHA-256 compiled into the binary and parsed as data (geometry, textures). Nothing in them is executed. A URL override exists for wipEout, but the pinned digest is still enforced.
- **info** `src/daemon/provider/http.zig:930` Self-exec DNS resolver helper preserves TLS hostname verification: The DNS preflight connects to a numeric address while keeping the logical hostname for TLS SNI and certificate verification. The code calls ensureTlsReady to load the CA bundle before any direct TLS connect. TLS verification is not weakened.

Data leaving the process:

- HTTPS POST of chat request bodies (system prompt, user messages, tool results, base64 images) with the provider API key as a Bearer or x-api-key header → Configured model provider endpoint (OpenRouter, Anthropic, Vercel, LiteLLM, local or [providers.*] base URL) (`src/daemon/provider/http.zig`)
- Hostname and port to resolve. The child prints a numeric address, and the parent connects to it while keeping the original host for TLS SNI and certificate checks. → Own marlin executable (`resolve_host` subprocess) (`src/daemon/provider/http.zig`)
- argv with model, session UUID, permission mode, an MCP config pointing back at `marlin cc_approve`, and an appended system prompt. The turn's stream-json goes over stdin. → Official `claude` binary (or MARLIN_CLAUDE_CODE_BIN) subprocess (`src/daemon/provider/claude_code.zig`)
- JSON-RPC initialize and model/list requests with the client name and version, plus `-c` overrides including an OTLP endpoint and headers when the operator configures one → Official `codex app-server` (or MARLIN_CODEX_BIN) subprocess (`src/daemon/provider/codex.zig`)
- Trace spans, and when capture_content is explicitly enabled, also log events with tool arguments and user prompts → Operator-configured OTLP collector (by way of codex) (`src/daemon/provider/codex.zig`)
- HTTP GET of the URL → Model-requested http(s) URL, subject to network policy checks on every redirect hop (`src/daemon/tools/fetch.zig`)
- Model-supplied shell command run with a scrubbed environment in the session cwd → bash -c subprocess, optionally inside a Seatbelt or Landlock sandbox (`src/daemon/tools/bash.zig`)
- Tool arguments as JSON on stdin → Config-declared executable (`src/daemon/tools/exec_tool.zig`)
- JSON-RPC tools/list and tools/call requests carrying tool arguments → Configured stdio MCP server subprocesses (`src/daemon/tools/mcp.zig`)
- Search pattern, glob and path → rg / grep subprocesses (`src/daemon/tools/search.zig`)
- File contents written by write_file and edit → Files under paths chosen by the model (protected credential paths are refused) (`src/daemon/tools/files.zig`)
- Notification JSON: a fixed title and body, plus the session id → Own marlin executable (`_push deliver` subprocess) (`src/mobile/push.zig`)
- aes128gcm-encrypted notification payload with a VAPID JWT authorization header → Allowlisted Web Push services (Apple, FCM, Mozilla, Windows) taken from stored phone subscriptions (`src/mobile/webpush.zig`)
- VAPID private key (vapid.json) and subscription files, written with mode 0600 → $XDG_STATE_HOME/marlin/push (`src/mobile/webpush.zig`)
- HTTP GET of the mk.pak data bundle, verified against a pinned SHA-256 and then structurally validated → raw.githubusercontent.com/jespern/marlin (by way of asset_store) (`src/mk64/cache.zig`)
- HTTP GET of the wo.pak data bundle, verified against a pinned SHA-256 and then validated as a file index → raw.githubusercontent.com/jespern/marlin, or the MARLIN_WIPEOUT_URL override (`src/wipeout/assets.zig`)
- Game options and best times → $XDG_STATE_HOME/marlin/wipeout-save.bin (`src/wipeout/save.zig`)
- Bytewise game-state snapshot → $XDG_STATE_HOME/marlin/wipeout-race.bin (`src/wipeout/snapshot.zig`)
- Time-trial pose recordings → Ghost file path in the cache/state directory (`src/mk64/ghost.zig`)

### `github.com/zig-utils/zig-regex` zig_regex-0.2.0-omky0f_2BgAXpSGi4MbMSngUU98FBX9RQIB2ShE3G2ww, surface

PASS: The surface of this pure-Zig regex library is a stock build.zig that defines the regex module, tests, examples and benchmarks; a build.zig.zon with no dependencies; and a C FFI wrapper that exports compile/match/free functions using the C allocator. I found no build-time commands, downloads, network or file access, encoded payloads or load-time hooks.

- **info** `github.com/zig-utils/zig-regex@zig_regex-0.2.0-omky0f_2BgAXpSGi4MbMSngUU98FBX9RQIB2ShE3G2ww/build.zig:9` Standard build script with no side effects: build.zig only defines modules, executables, tests, examples and benchmarks from the package's own sources, with no system commands, downloads, generated code or file writes outside the normal install prefix. When consumed as a dependency, only the 'regex' module (src/root.zig) is imported. build.zig.zon declares no dependencies.
- **info** `github.com/zig-utils/zig-regex@zig_regex-0.2.0-omky0f_2BgAXpSGi4MbMSngUU98FBX9RQIB2ShE3G2ww/src/c_api.zig:107` C API returns non-null-terminated slice as C string: zig_match_get_text returns a pointer into the input slice cast as null-terminated, so C callers may read past the match end. Its own comment acknowledges this. It is an ordinary API bug, not deliberate, and only reachable through the exported C functions.
- **info** `github.com/zig-utils/zig-regex@zig_regex-0.2.0-omky0f_2BgAXpSGi4MbMSngUU98FBX9RQIB2ShE3G2ww/build.zig.zon:7` Package paths omit test/example directories referenced by build.zig: build.zig.zon lists README.md and LICENSE in its paths, but tests/, examples/ and benchmarks/ are referenced by build.zig and are not packaged. Those steps only run if invoked directly on this package, so this does not affect consumers.

### `github.com/rockorager/libvaxis` vaxis-0.6.0-BWNV_LC4CwBka_bJk8SOXqzCM-nyQH00jzdL0kUhGwRE, surface

PASS: This unit is the build surface and C ABI wrapper of libvaxis, a Zig terminal UI library: build.zig, the pinned dependency manifest, the C header, and src/c_api.zig, which exports screen, window, parser, TTY, runtime and embedded-terminal functions. I checked the build script for build-time execution, downloads and code generation, and the C API for hidden network use, secret access, backdoors and load-time side effects. I found none: all behaviour matches a terminal UI library.

- **info** `github.com/rockorager/libvaxis@vaxis-0.6.0-BWNV_LC4CwBka_bJk8SOXqzCM-nyQH00jzdL0kUhGwRE/build.zig:4` Build script is conventional: build.zig defines library, example, bench, test and docs steps. It reads build.zig.zon with @embedFile only to get the version string. It runs no external commands, downloads nothing and generates no code beyond a version option. Run steps exist only for the example, bench and test targets.
- **info** `github.com/rockorager/libvaxis@vaxis-0.6.0-BWNV_LC4CwBka_bJk8SOXqzCM-nyQH00jzdL0kUhGwRE/build.zig.zon:6` Dependencies pinned by commit and hash: The zigimg and uucode dependencies are fetched from GitHub at fixed commits and verified against Zig package hashes. Both are well-known libraries that fit the module's purpose.
- **info** `github.com/rockorager/libvaxis@vaxis-0.6.0-BWNV_LC4CwBka_bJk8SOXqzCM-nyQH00jzdL0kUhGwRE/src/c_api.zig:560` C API can spawn a caller-specified program in a PTY: vaxis_terminal_new/spawn start the program named in the caller's argv inside a PTY. This is the documented embedded-terminal widget, and the child is chosen by the host application, not by the library.
- **info** `github.com/rockorager/libvaxis@vaxis-0.6.0-BWNV_LC4CwBka_bJk8SOXqzCM-nyQH00jzdL0kUhGwRE/src/c_api.zig:748` F3 key during query used for capability detection: applyRuntimeEvent treats an F3 key with shift or alt during terminal querying as a capability reply for explicit width or scaled text. This mirrors upstream vaxis.Loop, which detects these features through cursor-position reports. It only toggles rendering capabilities and grants no access.

Data leaving the process:

- Escape sequences for rendering, alt screen, mouse mode, bracketed paste, window title, terminal capability queries, and Kitty graphics image data or file paths, all supplied by the calling application. → the controlling terminal (TTY) (`github.com/rockorager/libvaxis@vaxis-0.6.0-BWNV_LC4CwBka_bJk8SOXqzCM-nyQH00jzdL0kUhGwRE/src/c_api.zig`)
- The argv, environment entries and working directory given by the caller, plus key events the caller forwards to the embedded terminal. → child process spawned in a PTY (vaxis_terminal_spawn) (`github.com/rockorager/libvaxis@vaxis-0.6.0-BWNV_LC4CwBka_bJk8SOXqzCM-nyQH00jzdL0kUhGwRE/src/c_api.zig`)

### `github.com/zigimg/zigimg` zigimg-0.1.0-8_eo2oyaFwBZwJpmqPkCfVXWBrHcqbYwmrp1I6bTD3lI, surface

PASS: zigimg is a pure-Zig image encoding/decoding library. The surface consists of its README, a standard build.zig that declares the module and a test artifact, and a build.zig.zon with no dependencies. None of these files contain build-time code generation, downloads, external process execution or hidden payloads, and no capabilities were flagged.

- **info** `github.com/zigimg/zigimg@zigimg-0.1.0-8_eo2oyaFwBZwJpmqPkCfVXWBrHcqbYwmrp1I6bTD3lI/build.zig:1` Build script is standard module/test declaration: build.zig only declares the zigimg module from zigimg.zig, adds a test artifact and its run step, and defines test steps. It does not download anything, run external programs, generate code or read files outside the package. The tests only run when a developer asks for `zig build test`.
- **info** `github.com/zigimg/zigimg@zigimg-0.1.0-8_eo2oyaFwBZwJpmqPkCfVXWBrHcqbYwmrp1I6bTD3lI/build.zig.zon:1` No external dependencies declared: The manifest lists no dependencies, so nothing transitive is fetched. Its paths cover only the project's source, tests, license and README.

### `github.com/yaml/libyaml` 0.2.5, surface

PASS: This unit is the parser, scanner, reader, loader and core API of libyaml 0.2.5: a pure C YAML tokenizer, parser and document composer with memory-management helpers. I checked every provided file for load-time constructors, build-time hooks, encoded or embedded payloads, network, exec, environment or secret access, and code patching, and found none. The code matches upstream libyaml and does I/O only through caller-supplied FILE* streams or handlers.

- **info** `github.com/yaml/libyaml@0.2.5/api.c:0` I/O only through caller-provided streams: The library does I/O only through FILE* streams and handlers the caller supplies. yaml_file_read_handler uses fread and yaml_file_write_handler uses fwrite on those streams. It never opens files, reads the environment, uses the network or runs processes.
- **info** `github.com/yaml/libyaml@0.2.5/yaml_private.h:1` No load-time code or hidden payloads in headers: The headers define only macros, types and declarations: buffer, stack and queue helpers, token and event initializers, and an unused-attribute shim. There are no constructor attributes, inline assembly, embedded blobs or encoded data. The optional config.h include is the standard autotools pattern.
- **info** `github.com/yaml/libyaml@0.2.5/api.c:0` Unused context arguments in macro calls: yaml_document_delete passes an undeclared identifier, &context, to the STACK_EMPTY, POP and STACK_DEL macros. yaml_emitter_delete passes 'empty'. These macros never use their context argument, so this is a harmless quirk that matches the upstream source.

Data leaving the process:

- Serialized YAML output written with fwrite by yaml_file_write_handler → a FILE* stream the caller opens and passes to yaml_emitter_set_output_file (`github.com/yaml/libyaml@0.2.5/api.c`)
