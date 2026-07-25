#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
ASSETS="$ROOT/release/1.0/assets"

hash_file() {
  python3 - "$1" <<'PYHASH'
import hashlib, sys
p=sys.argv[1]
h=hashlib.sha256()
with open(p,'rb') as f:
    for chunk in iter(lambda:f.read(1024*1024), b''):
        h.update(chunk)
print(h.hexdigest())
PYHASH
}

check() {
  local expected="$1" path="$2"
  local actual
  actual="$(hash_file "$path")"
  [[ "$actual" == "$expected" ]] || { echo "FAIL $path: $actual" >&2; exit 1; }
  echo "OK $path"
}

check 382e39864e257d93a0afd16c377c54f59a2182ecc5c38178764ded29ffb3f034 "$ASSETS/WITNESSABILITY-CORE-1.0.md"
check 9ab6071ee53354dacf9ad7377d5a3fc75dc6a4d310a131ca2335703d35a1b541 "$ASSETS/Witnessability_Core_1.0_RC2_Ratification_Package_Final.zip"
check 7d7772adb887f0df0408b3c162bafb1010f84dac7f716fea451817628afe483c "$ASSETS/RATIFICATION-ATTESTATION-FINAL.md"
check 4235cb20eb9fe13cf8621509afefba74ef265618cdc8c107815580b219f87f97 "$ASSETS/RATIFICATION-ATTESTATION-FINAL.md.asc"
check 5f9a0ecdaf9925905397bc2289ea78abbac018e91da0cab39637d643e7b73115 "$ASSETS/RELEASE-AUTHORITY-PUBLIC-KEY.asc"

gpg --batch --import "$ASSETS/RELEASE-AUTHORITY-PUBLIC-KEY.asc" >/dev/null 2>&1 || true
gpg --batch --verify "$ASSETS/RATIFICATION-ATTESTATION-FINAL.md.asc" "$ASSETS/RATIFICATION-ATTESTATION-FINAL.md"

echo "PASS: pinned release assets and ratification signature verified."
