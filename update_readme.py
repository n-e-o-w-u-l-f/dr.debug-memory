#!/usr/bin/env python3
import json
import re
from collections import Counter
from datetime import date
from pathlib import Path

ROOT = Path(__file__).resolve().parent
MEMORY = ROOT / "MEMORY"
README = ROOT / "README.md"
TOPICS = MEMORY / "INDEXES" / "database_topics.jsonl"

START = "<!-- DRDEBUG_DATABASE_STATUS_START -->"
END = "<!-- DRDEBUG_DATABASE_STATUS_END -->"

CANONICAL_STATUSES = {"CANONICAL", "ACTIVE", "CONFIRMED"}
USER_VERIFIED_FIX_STATUSES = {"USER_VERIFIED_FIX", "CONFIRMED_BY_USER"}


def load_jsonl(path: Path):
    if not path.exists():
        return []

    rows = []

    with path.open("r", encoding="utf-8") as f:
        for line_no, line in enumerate(f, 1):
            line = line.strip()
            if not line:
                continue

            try:
                rows.append(json.loads(line))
            except json.JSONDecodeError as exc:
                raise SystemExit(f"Invalid JSONL: {path}:{line_no}: {exc}") from exc

    return rows


def load_topics():
    rows = load_jsonl(TOPICS)
    topics = [row for row in rows if row.get("include_in_readme") is True]
    return sorted(topics, key=lambda row: row.get("sort_order", 9999))


def iter_memory_records():
    for path in MEMORY.rglob("*.jsonl"):
        if path == TOPICS:
            continue
        if ".git" in path.parts:
            continue

        for row in load_jsonl(path):
            yield row


def is_canonical(record):
    return str(record.get("status", "")).upper() in CANONICAL_STATUSES


def is_user_verified_fix(record):
    if str(record.get("entity_type", "")).lower() != "fix":
        return False

    if str(record.get("validation_status", "")).upper() not in USER_VERIFIED_FIX_STATUSES:
        return False

    user_validation = record.get("user_validation") or {}
    return user_validation.get("confirmed") is True


def build_counts(records):
    counts = Counter()

    for record in records:
        entity_type = str(record.get("entity_type", "")).lower().strip()

        if entity_type and is_canonical(record):
            counts[entity_type] += 1

        if is_user_verified_fix(record):
            counts["__user_verified_fix__"] += 1

    return counts


def render_block(topics, counts):
    rows = []

    for topic in topics:
        label = topic["label"]

        if topic.get("special_count") == "user_verified_fix":
            number = counts["__user_verified_fix__"]
        else:
            entity_type = str(topic.get("entity_type", "")).lower()
            number = counts[entity_type]

        rows.append(f"| {label} | {number} |")

    rows_text = "\n".join(rows)

    return f"""{START}
# Datenbank-Stand

Meine Datenbank beinhaltet aktuell:

| Kategorie | Anzahl |
|---|---:|
{rows_text}

_Last updated: {date.today().isoformat()}_
{END}"""


def update_readme(new_block):
    if README.exists():
        text = README.read_text(encoding="utf-8")
    else:
        text = "# Dr.Debug-MEMORY\n"

    pattern = re.compile(
        re.escape(START) + r".*?" + re.escape(END),
        flags=re.DOTALL,
    )

    if pattern.search(text):
        text = pattern.sub(new_block, text)
    else:
        text = text.rstrip() + "\n\n" + new_block + "\n"

    README.write_text(text, encoding="utf-8")


def main():
    topics = load_topics()
    records = list(iter_memory_records())
    counts = build_counts(records)
    block = render_block(topics, counts)
    update_readme(block)
    print(f"Updated README database status with {len(topics)} topics.")


if __name__ == "__main__":
    main()
