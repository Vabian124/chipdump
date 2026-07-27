#!/usr/bin/env bash
# Verify the full reassembly chain for the Melis firmware:
#   L1  image  : chipdump.bin == boot0.bin || gpt.bin  (byte-exact)
#   L2  ROOTFS : edit tree -> dump_tool pack -> splice @0x190000 == flash image (byte-exact)
#   L3  code   : every RISC-V ELF .text disassembles -> reassembles to identical bytes
#
# Usage: reassembly/verify_all.sh [chipdump.bin]
set -uo pipefail
REPO="$(cd "$(dirname "$0")/.." && pwd)"
CHIP="${1:-$REPO/chipdump.bin}"
DT="${DUMP_TOOL:-$HOME/.local/melis-tools/bin/dump_tool}"
WORK="$(mktemp -d)"; trap 'rm -rf "$WORK"' EXIT
RA="$REPO/reassembly/reassemble.py"

pass=0; fail=0
ok(){ echo "  [PASS] $1"; pass=$((pass+1)); }
no(){ echo "  [FAIL] $1"; fail=$((fail+1)); }

echo "== L1: image = boot0 || gpt =="
"$DT" extract "$CHIP" "$WORK/x" >/dev/null 2>&1 || true
cat "$WORK/x/boot0.bin" "$WORK/x/gpt.bin" > "$WORK/recon.bin"
[ "$(sha256sum <"$CHIP"|cut -d' ' -f1)" = "$(sha256sum <"$WORK/recon.bin"|cut -d' ' -f1)" ] \
  && ok "chipdump.bin == boot0.bin || gpt.bin" || no "image concat"

echo "== L2: ROOTFS splice round-trip =="
python3 - "$CHIP" "$WORK/x/gpt.bin.out/2_ROOTFS.bin" <<'PY'
import sys,hashlib
orig=open(sys.argv[1],'rb').read()
chip=bytearray(orig)
chip[0x190000:0x190000+14614528]=open(sys.argv[2],'rb').read()
sys.exit(0 if hashlib.sha256(bytes(chip)).hexdigest()==hashlib.sha256(orig).hexdigest() else 1)
PY
[ $? -eq 0 ] && ok "ROOTFS splice @0x190000 reproduces image" || no "ROOTFS splice"

echo "== L3: reassemble every RISC-V ELF .text =="
mapfile -t ELVES < <(find "$WORK/x/gpt.bin.out/2_ROOTFS.bin.out" -type f \
  -exec sh -c 'head -c4 "$1"|od -An -tx1|tr -d " "|grep -q 7f454c46' _ {} \; -print | sort)
for e in "${ELVES[@]}"; do
  if python3 "$RA" verify "$e" >/dev/null 2>&1; then ok "reassemble $(basename "$e")"
  else no "reassemble $(basename "$e")"; fi
done

echo "======================================"
echo "RESULT: $pass passed, $fail failed"
[ "$fail" -eq 0 ] && echo "ALL REASSEMBLY CHECKS PASS" || echo "FAILURES PRESENT"
exit "$fail"
