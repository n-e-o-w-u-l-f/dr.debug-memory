#!/usr/bin/env python3
import json
from pathlib import Path
import sys

root = Path(__file__).resolve().parents[1]
ok = True
for p in root.rglob("*"):
    if p.suffix == ".json":
        try:
            json.loads(p.read_text(encoding="utf-8"))
        except Exception as e:
            print(f"JSON ERROR {p.relative_to(root)}: {e}")
            ok = False
    elif p.suffix == ".jsonl":
        for i, line in enumerate(p.read_text(encoding="utf-8").splitlines(), 1):
            if not line.strip():
                continue
            try:
                json.loads(line)
            except Exception as e:
                print(f"JSONL ERROR {p.relative_to(root)}:{i}: {e}")
                ok = False
if not ok:
    sys.exit(1)
print("OK: batch JSON/JSONL parse validation passed")
