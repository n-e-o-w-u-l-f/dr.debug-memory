#!/usr/bin/env python3
"""
name: apply_gigabyte_url_only_patch_001.py
version: 0.1.0
status: proposal_only_apply_gated
purpose: Apply the reviewed GIGABYTE URL-only replacements to MEMORY/HARDWARE/DEVICES/devices.jsonl.
platform: local trusted checkout of n-e-o-w-u-l-f/dr.debug-memory
shell: Python 3
risk: LOW
root_required: no
network_required: no
destructive: no deletion; writes one canonical JSONL file only when --apply is passed
backup: MEMORY/HARDWARE/DEVICES/devices.jsonl.bak.gigabyte-url-only-001
rollback: restore backup over devices.jsonl and rerun --dry-run
validation: JSONL parse before/after, exact replacement counts, GIGABYTE record count check
source/context: DD-RUN-20260620-DEVICES-JSONL-GIGABYTE-URL-CANONICAL-DIFF-PROPOSAL-001
"""

from __future__ import annotations

import argparse
import json
import pathlib
import shutil
import sys

TARGET = pathlib.Path("MEMORY/HARDWARE/DEVICES/devices.jsonl")
BACKUP = pathlib.Path("MEMORY/HARDWARE/DEVICES/devices.jsonl.bak.gigabyte-url-only-001")

REPLACEMENTS = {
    "https://www.gigabyte.com/Motherboard/Z890-AORUS-MASTER-rev-10/support#support-manual": "https://www.gigabyte.com/Motherboard/Z890-AORUS-MASTER/support#support-manual",
    "https://www.gigabyte.com/Motherboard/Z890-AORUS-MASTER-rev-10/support#support-dl": "https://www.gigabyte.com/Motherboard/Z890-AORUS-MASTER/support#support-dl",
    "https://www.gigabyte.com/Motherboard/Z890-AORUS-MASTER-rev-10/support": "https://www.gigabyte.com/Motherboard/Z890-AORUS-MASTER/support",
    "https://www.gigabyte.com/Motherboard/Z890-AORUS-MASTER-rev-10": "https://www.gigabyte.com/Motherboard/Z890-AORUS-MASTER",

    "https://www.gigabyte.com/Motherboard/Z890-AORUS-ELITE-WIFI7-rev-10/support#support-manual": "https://www.gigabyte.com/Motherboard/Z890-AORUS-ELITE-WIFI7/support#support-manual",
    "https://www.gigabyte.com/Motherboard/Z890-AORUS-ELITE-WIFI7-rev-10/support#support-dl": "https://www.gigabyte.com/Motherboard/Z890-AORUS-ELITE-WIFI7/support#support-dl",
    "https://www.gigabyte.com/Motherboard/Z890-AORUS-ELITE-WIFI7-rev-10/support": "https://www.gigabyte.com/Motherboard/Z890-AORUS-ELITE-WIFI7/support",
    "https://www.gigabyte.com/Motherboard/Z890-AORUS-ELITE-WIFI7-rev-10": "https://www.gigabyte.com/Motherboard/Z890-AORUS-ELITE-WIFI7",

    "https://www.gigabyte.com/Motherboard/X870E-AORUS-MASTER-rev-10/support#support-manual": "https://www.gigabyte.com/Motherboard/X870E-AORUS-MASTER/support#support-manual",
    "https://www.gigabyte.com/Motherboard/X870E-AORUS-MASTER-rev-10/support#support-dl": "https://www.gigabyte.com/Motherboard/X870E-AORUS-MASTER/support#support-dl",
    "https://www.gigabyte.com/Motherboard/X870E-AORUS-MASTER-rev-10/support": "https://www.gigabyte.com/Motherboard/X870E-AORUS-MASTER/support",
    "https://www.gigabyte.com/Motherboard/X870E-AORUS-MASTER-rev-10": "https://www.gigabyte.com/Motherboard/X870E-AORUS-MASTER",

    "https://www.gigabyte.com/Motherboard/X870-AORUS-ELITE-WIFI7-ICE-rev-10/support#support-manual": "https://www.gigabyte.com/Motherboard/X870-AORUS-ELITE-WIFI7-ICE-rev-10-11/support#support-manual",
    "https://www.gigabyte.com/Motherboard/X870-AORUS-ELITE-WIFI7-ICE-rev-10/support#support-dl": "https://www.gigabyte.com/Motherboard/X870-AORUS-ELITE-WIFI7-ICE-rev-10-11/support#support-dl",
    "https://www.gigabyte.com/Motherboard/X870-AORUS-ELITE-WIFI7-ICE-rev-10/support": "https://www.gigabyte.com/Motherboard/X870-AORUS-ELITE-WIFI7-ICE-rev-10-11/support",
    "https://www.gigabyte.com/Motherboard/X870-AORUS-ELITE-WIFI7-ICE-rev-10": "https://www.gigabyte.com/Motherboard/X870-AORUS-ELITE-WIFI7-ICE-rev-10-11",

    "https://www.gigabyte.com/Motherboard/B850-AORUS-ELITE-WIFI7-rev-10/support#support-manual": "https://www.gigabyte.com/Motherboard/B850-AORUS-ELITE-WIFI7-rev-1x/support#support-manual",
    "https://www.gigabyte.com/Motherboard/B850-AORUS-ELITE-WIFI7-rev-10/support#support-dl": "https://www.gigabyte.com/Motherboard/B850-AORUS-ELITE-WIFI7-rev-1x/support#support-dl",
    "https://www.gigabyte.com/Motherboard/B850-AORUS-ELITE-WIFI7-rev-10/support": "https://www.gigabyte.com/Motherboard/B850-AORUS-ELITE-WIFI7-rev-1x/support",
    "https://www.gigabyte.com/Motherboard/B850-AORUS-ELITE-WIFI7-rev-10": "https://www.gigabyte.com/Motherboard/B850-AORUS-ELITE-WIFI7-rev-1x",
}

EXTRA_SOURCE_URLS = {
    "z890-aorus-master": "https://www.gigabyte.com/Motherboard/Z890-AORUS-MASTER/sp",
    "z890-aorus-elite-wifi7": "https://www.gigabyte.com/Motherboard/Z890-AORUS-ELITE-WIFI7/sp",
    "b850-aorus-elite-wifi7": "https://www.gigabyte.com/Motherboard/B850-AORUS-ELITE-WIFI7-rev-1x/sp",
}

EXPECTED_GIGABYTE = {
    "z890-aorus-master",
    "z890-aorus-elite-wifi7",
    "x870e-aorus-master",
    "x870-aorus-elite-wifi7-ice",
    "b850-aorus-elite-wifi7",
}


def parse_jsonl(text: str) -> list[dict]:
    records: list[dict] = []
    for lineno, line in enumerate(text.splitlines(), 1):
        if not line.strip():
            continue
        try:
            records.append(json.loads(line))
        except json.JSONDecodeError as exc:
            raise SystemExit(f"JSONL parse failed at line {lineno}: {exc}") from exc
    return records


def dump_jsonl(records: list[dict]) -> str:
    return "\n".join(json.dumps(record, ensure_ascii=False, separators=(",", ":")) for record in records) + "\n"


def patch_records(records: list[dict]) -> tuple[list[dict], dict[str, int]]:
    changed_counts: dict[str, int] = {key: 0 for key in REPLACEMENTS}
    touched: set[str] = set()

    for record in records:
        if record.get("manufacturer_normalized_name") != "gigabyte":
            continue
        name = record.get("device_normalized_name")
        if name not in EXPECTED_GIGABYTE:
            raise SystemExit(f"Unexpected GIGABYTE record in URL-only patch scope: {name!r}")
        touched.add(name)

        for field in ("official_product_url", "support_url", "manuals_url", "downloads_url"):
            value = record.get(field)
            if value in REPLACEMENTS:
                changed_counts[value] += 1
                record[field] = REPLACEMENTS[value]

        source_urls = record.get("source_urls")
        if not isinstance(source_urls, list):
            raise SystemExit(f"source_urls is not a list for {name}")
        new_source_urls: list[str] = []
        for url in source_urls:
            new_url = REPLACEMENTS.get(url, url)
            if new_url != url:
                changed_counts[url] += 1
            if new_url not in new_source_urls:
                new_source_urls.append(new_url)
        extra = EXTRA_SOURCE_URLS.get(name)
        if extra and extra not in new_source_urls:
            insert_at = new_source_urls.index("https://www.gigabyte.com/Support") if "https://www.gigabyte.com/Support" in new_source_urls else len(new_source_urls)
            new_source_urls.insert(insert_at, extra)
        record["source_urls"] = new_source_urls

    if touched != EXPECTED_GIGABYTE:
        missing = sorted(EXPECTED_GIGABYTE - touched)
        extra = sorted(touched - EXPECTED_GIGABYTE)
        raise SystemExit(f"GIGABYTE scope mismatch; missing={missing}, extra={extra}")

    return records, changed_counts


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--apply", action="store_true", help="write changes to devices.jsonl")
    parser.add_argument("--dry-run", action="store_true", help="validate and report without writing")
    args = parser.parse_args()

    if args.apply and args.dry_run:
        raise SystemExit("Use either --apply or --dry-run, not both")
    if not args.apply:
        args.dry_run = True

    if not TARGET.exists():
        raise SystemExit(f"Target not found: {TARGET}")

    original = TARGET.read_text(encoding="utf-8")
    records = parse_jsonl(original)
    patched_records, changed_counts = patch_records(records)
    patched = dump_jsonl(patched_records)
    parse_jsonl(patched)

    old_total = sum(original.count(old) for old in REPLACEMENTS)
    new_total = sum(patched.count(new) for new in set(REPLACEMENTS.values()))
    print(f"records_total={len(records)}")
    print(f"old_url_occurrences_before={old_total}")
    print(f"new_url_occurrences_after={new_total}")
    print(f"content_changed={patched != original}")

    for old, count in changed_counts.items():
        if count:
            print(f"replace_count {old} -> {REPLACEMENTS[old]} = {count}")

    if args.dry_run:
        print("dry_run_ok=true")
        return 0

    if not BACKUP.exists():
        shutil.copy2(TARGET, BACKUP)
        print(f"backup_written={BACKUP}")
    else:
        print(f"backup_exists={BACKUP}")

    TARGET.write_text(patched, encoding="utf-8")
    print(f"applied={TARGET}")
    print("apply_ok=true")
    return 0


if __name__ == "__main__":
    sys.exit(main())
