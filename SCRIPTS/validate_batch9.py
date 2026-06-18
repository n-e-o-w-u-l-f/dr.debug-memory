#!/usr/bin/env python3
import json, pathlib, sys
root = pathlib.Path(__file__).resolve().parents[1]
jsonl_records = 0
batch9_slots = 0
errors = []
for path in root.rglob("*"):
    if path.suffix == ".json":
        try:
            json.loads(path.read_text(encoding="utf-8"))
        except Exception as e:
            errors.append((str(path), str(e)))
    elif path.suffix == ".jsonl":
        with path.open(encoding="utf-8") as f:
            for i, line in enumerate(f, 1):
                if not line.strip():
                    continue
                try:
                    rec = json.loads(line)
                    jsonl_records += 1
                    if rec.get("batch") == "batch9" and rec.get("record_type") == "network_port_diagnostic_slot":
                        batch9_slots += 1
                except Exception as e:
                    errors.append((f"{path}:{i}", str(e)))
if errors:
    print("ERRORS:")
    for loc, err in errors[:50]:
        print(loc, err)
    sys.exit(1)
expected = 61072
if batch9_slots != expected:
    print(f"ERROR: expected {expected} batch9 slots, found {batch9_slots}")
    sys.exit(2)
print(f"OK: JSON/JSONL parse validation passed; jsonl_records={jsonl_records}; batch9_port_slots={batch9_slots}")
