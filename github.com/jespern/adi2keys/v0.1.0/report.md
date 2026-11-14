# github.com/jespern/adi2keys v0.1.0

## Rebuild

Rebuilt from tag `v0.1.0` (3909ed1a8811c3dd467c802c0a35cc18b75e5569) and compared with the published checksums.

Rebuilt offline, as a user without privileges, from the files the review covers: 0 other files of the repository emptied and `.git` removed first (scope `sha256:4eb42b0e975c25fa30e9e179a8fbc1213ba0ebd46817b68f1c962e7c6dead8db`).

| File | Published | Rebuilt | Result |
|---|---|---|---|
| `adi2keys-0.1.0-unsigned.zip` | `sha256:3217dbcb7181…` | `sha256:3217dbcb7181…` | identical |

## Capabilities

What each package compiled into the binary uses directly from the standard library, for , found by `none`. Reflection, runtime and unanalyzed calls are left out: nearly every package has them.

| Capability | Packages |
|---|---|

7 packages outside the standard library are compiled in.

### Changes

This is the project's first certified release: there is nothing to compare it with.

## Review

**Certified.**

`claude-opus-5-5` reviewed the code compiled into the binary whole, as the project's first reviewed release: 1 units, 0 of them answered from the shared cache. The verdict follows from its answers by a fixed rule, with no person involved.

- Reviewed with the project's code, since it is in the vendor's repository: `github.com/jespern/adi2keys`

### `github.com/jespern/adi2keys` (the project)

PASS: adi2keys is a small macOS background agent that installs a session event tap for the media volume and mute keys and, while an RME ADI-2 is the default output, sends matching SysEx volume and mute commands to the device over CoreMIDI. I read all the Swift sources, the protocol tests, the install, uninstall, signing and release scripts and the CI workflow. There is no networking, no access to secrets, no capture of other input, no code downloads and no hidden behaviour; the login item and local signing certificate are documented in the README.

- **info** `Sources/adi2keys/KeyTap.swift:57` Event tap limited to media volume keys: The CGEvent tap's mask covers only NSEvent systemDefined events. The callback acts only on NX_SUBTYPE_AUX_CONTROL_BUTTONS volume up, volume down and mute, and passes every other event through. Keystrokes are not captured, recorded or sent anywhere. This matches the README's statement that the app only intercepts the volume keys.
- **info** `Sources/adi2keys/main.swift:19` Registers itself as a login item: SMAppService.mainApp.register() runs on every launch from a bundle, so the app opens at login. The README discloses this and uninstall.sh reverses it.
- **info** `make-signing-identity.sh:39` Local self-signed signing identity: The script imports a self-signed code-signing identity into the login keychain with -T /usr/bin/codesign, so builds keep a stable signature and the Accessibility grant. It is local only and documented. uninstall.sh does not remove the certificate, which the README also states.

Data leaving the process:

- SysEx messages: a 'request all settings' command and volume and mute parameter changes for the configured output → The connected ADI-2 device's CoreMIDI destination port (USB MIDI) (`Sources/adi2keys/MIDI.swift`)
- Registers the app as a login item at launch, and unregisters it when run with --unregister-login-item (used by uninstall.sh); both are documented in the README → macOS ServiceManagement (login items) (`Sources/adi2keys/main.swift`)
- Connection status and the ADI-2 MIDI port name, marked public; errors → macOS unified log (subsystem org.noehr.adi2keys) (`Sources/adi2keys/Agent.swift`)
- A self-signed code-signing certificate and private key, with codesign allowed to use the key without a prompt → User's login keychain (`make-signing-identity.sh`)
- The built, locally signed app bundle; the script then launches it → ~/Applications/adi2keys.app (`install.sh`)
- Removes the app, its login item, its Accessibility grant and its org.noehr.adi2keys settings → TCC database and user defaults (`uninstall.sh`)
- Unsigned release zip, its checksum and toolchain notes; the ANTHROPIC_API_KEY secret is passed to the certify workflow, pinned by commit → GitHub Releases and the pinned shadybin certify workflow (`.github/workflows/release.yml`)
