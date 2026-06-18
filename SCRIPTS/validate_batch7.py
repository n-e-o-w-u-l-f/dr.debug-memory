#!/usr/bin/env python3
import json
from pathlib import Path
import sys

root = Path(__file__).resolve().parents[1]
json_files = list(root.rglob("*.json"))
jsonl_files = list(root.rglob("*.jsonl"))
records = 0
port_slots_batch7 = 0
errors = []

for p in json_files:
    try:
        json.loads(p.read_text(encoding="utf-8"))
    except Exception as e:
        errors.append(f"JSON parse error {p}: {e}")

for p in jsonl_files:
    with p.open("r", encoding="utf-8") as f:
        for i, line in enumerate(f, 1):
            line = line.strip()
            if not line:
                continue
            try:
                obj = json.loads(line)
                records += 1
                if p.name == "iana_service_port_diagnostic_slots_batch7_2500_9999.jsonl":
                    port_slots_batch7 += 1
            except Exception as e:
                errors.append(f"JSONL parse error {p}:{i}: {e}")

if errors:
    print("\n".join(errors))
    sys.exit(1)

print(f"OK: JSON/JSONL parse validation passed; jsonl_records={records}; batch7_port_slots={port_slots_batch7}")
if port_slots_batch7 != 15000:
    print(f"ERROR: expected 15000 batch7 port slots, got {port_slots_batch7}")
    sys.exit(2)
