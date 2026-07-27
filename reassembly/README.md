# Reassembly — verified round trip back to identical bytes

The decompilation in `../decompiled/` is only trustworthy if we can **put it back
together byte-for-byte**. This directory provides and verifies that round trip.

`VERIFICATION.txt` is the last run: **70/70 checks pass** (image concat + ROOTFS splice
+ 68 RISC-V ELF `.text` reassemblies). Reproduce with:

```bash
reassembly/verify_all.sh            # needs ~/.local/melis-tools/bin/dump_tool + riscv64-linux-gnu-*
```

## The three reassembly levels

Melis RTOS is closed-source and the modules are **stripped** — there is no recompilable
C. "Reassembly" here means regenerating the **exact original bytes**, which is what a
flashable image actually needs. It is verified at three levels:

| Level | Claim (all byte-exact, sha256-verified) | How |
|------|------------------------------------------|-----|
| **L1 image** | `chipdump.bin` == `boot0.bin` \|\| `gpt.bin` | concatenation |
| **L2 ROOTFS** | edit tree → `dump_tool pack` → splice ROOTFS @ `0x190000` → identical image | `dump_tool` + Python splice (see repo `README.md` §5, `../mods/`) |
| **L3 code** | every RISC-V ELF `.text` → GAS source → `as` → identical section bytes | `reassemble.py` |

## L3: how the code round trip works (and its honest limits)

`reassemble.py` emits, for each `.text`, one assembler line per instruction: the real
encoding as data (`.2byte`/`.4byte`) plus the decoded mnemonic in a comment, e.g.

```asm
    .4byte 0x00a5c7b3    # e4b00000: xor	a5,a1,a0
    .2byte 0x8b9d        # e4b00004: c.andi	a5,7
```

`as` reassembles this to **exactly** the original bytes (proven for all 68 binaries). This
sidesteps RISC-V compressed-instruction ambiguity that makes naive mnemonic reassembly
non-deterministic. See `samples/ginkgo.mod.text.s` for a full example.

Usage:

```bash
python3 reassembly/reassemble.py emit   <module.mod> out.s   # generate editable asm
python3 reassembly/reassemble.py verify <module.mod>         # emit+assemble+compare bytes
```

### Editing code (maintainer workflow)

To change an instruction, replace its `.Nbyte 0x...  # mnemonic` line with a real RISC-V
mnemonic; `as` encodes it. **Constraint:** to reflash, the rebuilt `.mod` must keep the
**same file layout/size** the Melis loader and MinFS expect, so edits are done **in place**
(same byte length) — the module ELF is not relinked from scratch (a from-scratch `as`+`ld`
would not reproduce the vendor's exact ELF headers/layout). Byte-length-neutral instruction
patches verified by `reassemble.py verify`, then repacked via L2, are the safe path.

## What is NOT claimed

- No recompilable C source (stripped, closed-source RTOS — no decompiler yields that).
- No from-scratch relink of a whole `.mod`/kernel into a byte-identical ELF file.
- `boot0.bin` and `epos.img` are raw blobs; their round trip is the L1/L2 identity plus the
  raw disassembly in `../decompiled/` for analysis, not a reassembly-from-source.
