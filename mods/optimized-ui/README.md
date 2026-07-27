# Optimised + custom-UI build

A **reproducible, resource-level modification** of the firmware that rebuilds into a
valid, flashable 16 MiB image. This is the honest "modify → recompile" for this device:
there is no OS source to recompile, so changes are made in the unpacked tree and the
MinFS ROOTFS is repacked and spliced back (see repo `README.md` §5).

## What it changes (`config.patch`, applied to `apps/Config.ini`)

Speed:

- `startUpDelayTime` 500 → **0** — removes the 500 ms startup stall.
- `bPrintLog` 1 → **0** — disables serial debug logging (logging costs runtime cycles).
- `idleReturnTime` 1000 → **500** — snappier return-to-idle.

Custom UI:

- `animationType` 0 → **1** — enables UI transition animation.
- `wallPaper` `2.jpg` → **`3.jpg`** — different default wallpaper.
- Boot video `res/stamovie.mp4` replaced with a shorter 1.5 s clip (faster boot).

Edits are byte-level so the file's original **CRLF** line endings are preserved; only the
five intended keys differ from stock.

## "Update packages" — not applicable

Melis RTOS is a monolithic closed-source image with **no package manager**. The only
update-like mechanism is the vendor OTA image (`appUpdateFile=SKLF133.img` in `Config.ini`),
which is out of scope. There is nothing to `apt`/`npm`/`pip` update inside this firmware.

## Build

```bash
DT="$HOME/.local/melis-tools/bin/dump_tool"     # native Linux dump_tool
W=$(mktemp -d)
cp -r ../../unpacked "$W/unpacked"
cp ../../chipdump.bin "$W/chipdump.bin"

# 1. apply config edits
patch "$W/unpacked/gpt.bin.out/2_ROOTFS.bin.out/apps/Config.ini" < config.patch

# 2. (optional) custom boot video — README §6 recipe
ffmpeg -y -f lavfi -i "color=c=black:s=800x480:d=1.5" \
  -vf "drawtext=text='OPTIMISED BUILD':fontcolor=cyan:fontsize=60:x=(w-text_w)/2:y=(h-text_h)/2" \
  -an -c:v libx264 -profile:v baseline -level 3.0 -pix_fmt yuv420p -r 25 -movflags +faststart \
  "$W/unpacked/gpt.bin.out/2_ROOTFS.bin.out/res/stamovie.mp4"

# 3. repack MinFS (uart_debug_rx error is expected) then splice ROOTFS at 0x190000
"$DT" pack "$W/unpacked" "$W/_pack_tmp.bin" || true
python3 - "$W" <<'PY'
from pathlib import Path; W=Path(__import__('sys').argv[1])
chip=bytearray((W/'chipdump.bin').read_bytes())
rp=(W/'unpacked/gpt.bin.out/2_ROOTFS.bin.repacked').read_bytes(); assert rp.startswith(b'MINFS')
part=bytearray(14614528); part[:len(rp)]=rp
chip[0x190000:0x190000+14614528]=part
(W/'chipdump.optimized.bin').write_bytes(chip)
print('wrote', W/'chipdump.optimized.bin', len(chip),'bytes')
PY
```

Verify by re-extracting the built image and confirming the five keys and boot video
survived (`python3 ../../scripts/verify_roundtrip.py` covers the generic round trip).

## Reference build

The image built in this session (exact bytes depend on your `ffmpeg` version):

- Size: `16777216` bytes
- `chipdump.optimized.bin` sha256: `ed19e825e90070faa72c18ae4909e99b97daf29b14d492bad7894e493ddc2e5c`

Flash exactly like `chipdump.modified.bin` (repo `README.md` §3). Keep `chipdump.bin` for recovery.
