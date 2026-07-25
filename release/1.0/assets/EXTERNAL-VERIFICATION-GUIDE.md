# External Verification Guide

This guide lets an external verifier check the Witnessability Conceptual Core 1.0 ratification bundle without trusting a prior review statement.

## Required files

- `Witnessability_Core_1.0_RC2_Ratification_Package_Final.zip`
- `RATIFICATION-ATTESTATION-FINAL.md`
- `RATIFICATION-ATTESTATION-FINAL.md.asc`
- `RELEASE-AUTHORITY-PUBLIC-KEY.asc`
- this guide

The issued signature format for this release is OpenPGP. Minisign is **N/A**: no Minisign signature or Minisign
public-key artifact is issued or required.

## Expected canonical values

- OpenPGP fingerprint: `95C4B50ED56544DC033B130DB84B6C860ABAD0B1`
- ZIP SHA-256: `9ab6071ee53354dacf9ad7377d5a3fc75dc6a4d310a131ca2335703d35a1b541`
- Stable Core SHA-256: `382e39864e257d93a0afd16c377c54f59a2182ecc5c38178764ded29ffb3f034`

The examples below work with Bash on GNU/Linux and with the Bash 3.2 supplied by macOS. Run them from the
directory containing the downloaded release assets.

## Five-step verification

### 1. Verify the OpenPGP signature over the attestation

Use a new temporary keyring so the check does not modify or rely on the verifier's normal GnuPG keyring:

```bash
VERIFY_GNUPG_HOME="$(mktemp -d "${TMPDIR:-/tmp}/witnessability-gpg.XXXXXX")" || exit 1
chmod 700 "$VERIFY_GNUPG_HOME"
gpg --homedir "$VERIFY_GNUPG_HOME" --batch --import RELEASE-AUTHORITY-PUBLIC-KEY.asc
KEY_FINGERPRINT="$(
  gpg --homedir "$VERIFY_GNUPG_HOME" --batch --with-colons --fingerprint \
    | awk -F: '$1 == "fpr" { print $10; exit }'
)"
test "$KEY_FINGERPRINT" = "95C4B50ED56544DC033B130DB84B6C860ABAD0B1"
gpg --homedir "$VERIFY_GNUPG_HOME" --batch --no-auto-key-retrieve \
  --verify RATIFICATION-ATTESTATION-FINAL.md.asc RATIFICATION-ATTESTATION-FINAL.md
```

The signature proves only that the holder of the corresponding private key signed the exact attestation bytes.
Evaluate the key-to-release-authority binding separately using `TP-SIGNING-KEY-001` and the published anchor
records.

### 2. Verify the canonical ZIP hash

Define a portable SHA-256 helper. It uses `sha256sum` on GNU systems, the macOS-provided `shasum`, or Python 3:

```bash
sha256_file() {
  if command -v sha256sum >/dev/null 2>&1; then
    sha256sum -- "$1" | awk '{print $1}'
  elif command -v shasum >/dev/null 2>&1; then
    shasum -a 256 -- "$1" | awk '{print $1}'
  else
    python3 - "$1" <<'PYHASH'
import hashlib
import sys

digest = hashlib.sha256()
with open(sys.argv[1], "rb") as handle:
    for chunk in iter(lambda: handle.read(1024 * 1024), b""):
        digest.update(chunk)
print(digest.hexdigest())
PYHASH
  fi
}

ZIP_SHA256="$(sha256_file Witnessability_Core_1.0_RC2_Ratification_Package_Final.zip)"
test "$ZIP_SHA256" = "9ab6071ee53354dacf9ad7377d5a3fc75dc6a4d310a131ca2335703d35a1b541"
```

Confirm that the same value appears in the signed attestation. Stop before extraction if it differs.

### 3. Unpack the pinned ZIP into a new temporary directory

```bash
CHECK_DIR="$(mktemp -d "${TMPDIR:-/tmp}/witnessability-release-check.XXXXXX")" || exit 1
unzip -q Witnessability_Core_1.0_RC2_Ratification_Package_Final.zip -d "$CHECK_DIR"
PACKAGE_DIR="$CHECK_DIR/Witnessability_Core_1.0_RC2_Ratification_Package_Final"
test -d "$PACKAGE_DIR"
test ! -L "$PACKAGE_DIR"
cd "$PACKAGE_DIR"
```

The exact root name avoids wildcard directory selection. Do not verify from a previously modified working
directory. Retain or remove only the exact temporary directory printed by `printf '%s\n' "$CHECK_DIR"`.

### 4. Verify every internal file against the manifest

```bash
MANIFEST_LOG="$(mktemp "${TMPDIR:-/tmp}/witnessability-manifest.XXXXXX")" || exit 1
if command -v sha256sum >/dev/null 2>&1; then
  sha256sum -c SHA256SUMS-RC2-RATIFICATION.txt | tee "$MANIFEST_LOG"
else
  shasum -a 256 -c SHA256SUMS-RC2-RATIFICATION.txt | tee "$MANIFEST_LOG"
fi
MANIFEST_TOTAL="$(wc -l < SHA256SUMS-RC2-RATIFICATION.txt | tr -d ' ')"
MANIFEST_OK="$(grep -c ': OK$' "$MANIFEST_LOG" | tr -d ' ')"
test "$MANIFEST_TOTAL" = 52
test "$MANIFEST_OK" = 52
```

Expected: `52/52 OK`.

### 5. Run the canonical package verification procedure

The canonical verifier calls a command named `sha256sum`. On macOS, provide a temporary compatibility shim backed
by the system `shasum`; the canonical `verify-release.sh` bytes remain unchanged:

```bash
if command -v sha256sum >/dev/null 2>&1; then
  bash verify-release.sh
else
  command -v shasum >/dev/null 2>&1 || exit 1
  VERIFY_BIN="$(mktemp -d "${TMPDIR:-/tmp}/witnessability-bin.XXXXXX")" || exit 1
  cat > "$VERIFY_BIN/sha256sum" <<'SHIM'
#!/bin/sh
exec shasum -a 256 "$@"
SHIM
  chmod 700 "$VERIFY_BIN/sha256sum"
  PATH="$VERIFY_BIN:$PATH" bash verify-release.sh
fi
```

Expected summary: `Gates passed: 10  failed: 0` and `RESULT: PASS`.

## Verify the issued Stable Core

From the release-asset directory, use the `sha256_file` helper defined above:

```bash
CORE_SHA256="$(sha256_file WITNESSABILITY-CORE-1.0.md)"
test "$CORE_SHA256" = "382e39864e257d93a0afd16c377c54f59a2182ecc5c38178764ded29ffb3f034"
```

A different byte sequence falls outside the ratification.
