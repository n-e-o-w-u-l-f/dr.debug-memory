#!/usr/bin/env python3
import json, pathlib, sys
root = pathlib.Path(__file__).resolve().parents[1]
jsonl_records = 0
errors = []
for path in root.rglob("*"):
    if path.suffix.lower() == ".json":
        try:
            json.loads(path.read_text(encoding="utf-8"))
        except Exception as e:
            errors.append(f"{path}: {e}")
    elif path.suffix.lower() == ".jsonl":
        with path.open("r",encoding="utf-8") as f:
            for i,line in enumerate(f,1):
                line=line.strip()
                if not line:
                    continue
                try:
                    json.loads(line)
                    jsonl_records += 1
                except Exception as e:
                    errors.append(f"{path}:{i}: {e}")
slots = root / "MEMORY" / "NETWORKING" / "iana_service_port_diagnostic_slots_batch8_50000.jsonl"
slot_count = 0
if slots.exists():
    with slots.open("r", encoding="utf-8") as f:
        for line in f:
            if line.strip():
                slot_count += 1
else:
    errors.append(f"missing {slots}")
if slot_count != 50000:
    errors.append(f"expected 50000 batch8 slots, got {slot_count}")
if errors:
    print("ERRORS:")
    print("\n".join(errors[:50]))
    raise SystemExit(1)
print(f"OK: JSON/JSONL parse validation passed; jsonl_records={jsonl_records}; batch8_port_slots={slot_count}")
