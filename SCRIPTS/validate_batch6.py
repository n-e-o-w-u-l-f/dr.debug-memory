#!/usr/bin/env python3
import json
from pathlib import Path

root = Path(__file__).resolve().parents[1]
errors = []
jsonl_count = 0
port_slots = 0

for p in root.rglob("*"):
    if p.is_file() and p.suffix == ".json":
        try:
            json.loads(p.read_text(encoding="utf-8"))
        except Exception as exc:
            errors.append(f"{p}: {exc}")
    elif p.is_file() and p.suffix == ".jsonl":
        with p.open("r", encoding="utf-8") as f:
            for i, line in enumerate(f, 1):
                if not line.strip():
                    continue
                jsonl_count += 1
                try:
                    obj = json.loads(line)
                except Exception as exc:
                    errors.append(f"{p}:{i}: {exc}")
                    continue
                if obj.get("record_type") == "iana_service_port_diagnostic_slot":
                    port_slots += 1

if errors:
    print("FAILED")
    print("\n".join(errors[:50]))
    raise SystemExit(1)

if port_slots < 5000:
    raise SystemExit(f"FAILED: expected at least 5000 port slot additions, got {port_slots}")

print(f"OK: JSON/JSONL parse validation passed; jsonl_records={jsonl_count}; port_slots={port_slots}")
