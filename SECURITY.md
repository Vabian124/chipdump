# Security policy

## Flashing / hardware risk

- Use **3.3 V** only with CH341-class programmers on XM25QH128C.
- A wrong voltage, wrong chip selection, or partial write can permanently
  damage the NOR or brick the head unit.
- Keep a verified copy of `chipdump.bin` before writing any modified image.

## Reporting issues

Open a GitHub issue describing:

1. Board marking (e.g. `SK-8168-MAIN-V6.3`)
2. Programmer / software used
3. SHA256 of the file you flashed
4. What failed (no boot, boot loop, video issue, etc.)

This project is provided **as-is**; there is no warranty and no guaranteed
fix timeline.
