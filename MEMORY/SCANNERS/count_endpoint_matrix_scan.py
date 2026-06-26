#!/usr/bin/env python3
"""
name: count_endpoint_matrix_scan.py
version: 0.2.0
status: DRAFT_VALIDATOR
purpose: Validate Dr.Debug endpoint-count matrix and emit Markdown/JSON reports.
platform: repository-local
risk: LOW
root_required: false
network_required: false
destructive: false
backup: not required; read-only scan unless report outputs are requested
rollback: remove this script and generated report files
validation: run against MEMORY/INDEXES/endpoint_count_matrix.md
source/context: MEMORY/SCANNERS/count_scan_rules.md
"""

from __future__ import annotations

import argparse
import json
import re
import sys
from collections import Counter
from dataclasses import dataclass
from pathlib import Path
from typing import Iterable, Sequence

REQUIRED_COLUMNS = ["Bereich", "Wissen", "User", "Admin", "Recherche", "Status"]
DEFAULT_REQUIRED_STATUS = "COUNT_SCAN_REQUIRED"
READY_STATUS = "COUNT_SCAN_READY_FOR_REVIEW"
METADATA_ONLY_NAMES = {
    "id", "canonical id", "canonical_id", "created at", "created_at",
    "updated at", "updated_at", "source status", "source_status",
    "confidence", "validation status", "validation_status",
}
RELATION_ONLY_PREFIXES = (
    "belongs_to", "belongs to", "has_", "has ", "supports_", "supports ",
    "linked_", "linked ", "relation_", "relation ",
)
FORBIDDEN_VISIBLE_PREFIXES = ("_GLOBAL",)


@dataclass(frozen=True)
class MatrixRow:
    line_number: int
    cells: list[str]

    @property
    def bereich(self) -> str:
        return self.cells[0] if len(self.cells) > 0 else ""

    @property
    def wissen(self) -> str:
        return self.cells[1] if len(self.cells) > 1 else ""

    @property
    def status(self) -> str:
        return self.cells[5] if len(self.cells) > 5 else ""


def split_table_row(line: str) -> list[str]:
    stripped = line.strip()
    if not stripped.startswith("|") or not stripped.endswith("|"):
        return []
    return [cell.strip() for cell in stripped.strip("|").split("|")]


def is_separator_row(cells: Sequence[str]) -> bool:
    return bool(cells) and all(re.fullmatch(r":?-{3,}:?", cell.strip()) for cell in cells)


def find_matrix_rows(text: str) -> tuple[list[str], list[MatrixRow]]:
    header: list[str] | None = None
    rows: list[MatrixRow] = []
    in_table = False
    for line_number, line in enumerate(text.splitlines(), start=1):
        cells = split_table_row(line)
        if not cells:
            if in_table:
                break
            continue
        if header is None and cells == REQUIRED_COLUMNS:
            header = cells
            in_table = True
            continue
        if in_table:
            if is_separator_row(cells):
                continue
            rows.append(MatrixRow(line_number, cells))
    if header is None:
        return [], []
    return header, rows


def normalize_name(value: str) -> str:
    value = value.strip().lower()
    value = re.sub(r"[`*_]+", "", value)
    value = re.sub(r"[\s\-_/]+", " ", value)
    value = re.sub(r"\s+", " ", value)
    return value.strip()


def collect_duplicates(values: Iterable[str]) -> list[str]:
    counts = Counter(values)
    return sorted(name for name, count in counts.items() if count > 1)


def looks_like_prefix_explosion(name: str) -> bool:
    lowered = name.lower()
    if any(marker in lowered for marker in (" > ", "::", "\\", "/")):
        return True
    hints = (
        "sega mega drive ", "mega drive sonic", "sonic ",
        "playstation spiele", "nintendo spiele", "xbox spiele",
    )
    return any(hint in lowered for hint in hints)


def build_report(matrix_path: Path, rows: list[MatrixRow], header: list[str], args: argparse.Namespace) -> dict:
    normalized_names = [normalize_name(row.bereich) for row in rows]
    duplicate_names = collect_duplicates(normalized_names)
    forbidden_prefixes = sorted(row.bereich for row in rows if row.bereich.startswith(FORBIDDEN_VISIBLE_PREFIXES))
    metadata_only = sorted(row.bereich for row, norm in zip(rows, normalized_names) if norm in METADATA_ONLY_NAMES)
    relationship_only = sorted(row.bereich for row, norm in zip(rows, normalized_names) if norm.startswith(RELATION_ONLY_PREFIXES))
    prefix_explosions = sorted(row.bereich for row in rows if looks_like_prefix_explosion(row.bereich))
    bad_status_rows = sorted(
        {"line": row.line_number, "bereich": row.bereich, "status": row.status}
        for row in rows
        if row.status != args.status
    )
    required_columns_present = header == REQUIRED_COLUMNS
    markdown_table_valid = required_columns_present and all(len(row.cells) == len(REQUIRED_COLUMNS) for row in rows)
    hard_failures = [
        not required_columns_present,
        not markdown_table_valid,
        bool(duplicate_names),
        bool(forbidden_prefixes),
        bool(bad_status_rows),
        args.expected_count is not None and len(rows) != args.expected_count,
    ]
    warning_failures = [bool(metadata_only), bool(relationship_only), bool(prefix_explosions)] if args.fail_on_warnings else []
    passed = not any(hard_failures + warning_failures)
    review_status = READY_STATUS if passed else "COUNT_SCAN_REVIEW_BLOCKED"

    endpoint_rows = [
        {
            "index": index + 1,
            "line": row.line_number,
            "bereich": row.bereich,
            "normalized_name": normalize_name(row.bereich),
            "status": row.status,
        }
        for index, row in enumerate(rows)
    ]

    return {
        "schema_version": "0.2.0",
        "report_id": "endpoint-count-matrix-scan-2026-06-26",
        "status": review_status,
        "generated_at": "2026-06-26",
        "matrix_path": str(matrix_path),
        "scanner_path": "MEMORY/SCANNERS/count_endpoint_matrix_scan.py",
        "markdown_report_path": args.report,
        "json_report_path": args.json_report,
        "evidence_type": "STATIC_CHECK",
        "canonical_promotion": False,
        "review_required": True,
        "review_status": review_status,
        "row_status_required": args.status,
        "validation": {
            "required_columns": REQUIRED_COLUMNS,
            "required_columns_present": required_columns_present,
            "visible_endpoint_rows": len(rows),
            "expected_visible_endpoint_rows": args.expected_count,
            "markdown_table_valid": markdown_table_valid,
            "duplicate_names": duplicate_names,
            "forbidden_global_prefixes": forbidden_prefixes,
            "metadata_only_candidates": metadata_only,
            "relationship_only_candidates": relationship_only,
            "prefix_explosion_candidates": prefix_explosions,
            "bad_status_rows": bad_status_rows,
            "result": "PASS_STATIC_CHECK" if passed else "FAIL_STATIC_CHECK",
        },
        "counts": {
            "visible_endpoint_rows": len(rows),
            "duplicate_names_total": len(duplicate_names),
            "forbidden_global_prefixes_total": len(forbidden_prefixes),
            "metadata_only_candidates_total": len(metadata_only),
            "relationship_only_candidates_total": len(relationship_only),
            "prefix_explosion_candidates_total": len(prefix_explosions),
            "bad_status_rows_total": len(bad_status_rows),
        },
        "endpoint_rows": endpoint_rows,
        "safety": {
            "unbounded_crawl": False,
            "binary_downloads": False,
            "copyrighted_manual_mirroring": False,
            "raw_crawl_dump": False,
            "canonical_records_promoted": False,
            "destructive_changes": False,
        },
        "next_review_actions": [
            "Review endpoint names and rule fit.",
            "Accept or adjust visible row count.",
            "Keep matrix rows COUNT_SCAN_REQUIRED until reviewed scanner counts are accepted.",
        ],
    }


def render_markdown(report: dict) -> str:
    validation = report["validation"]
    counts = report["counts"]
    status = report["status"]
    checks = [
        ("Required columns `Bereich,Wissen,User,Admin,Recherche,Status`", validation["required_columns_present"]),
        ("Markdown table shape", validation["markdown_table_valid"]),
        ("Visible endpoint row count", validation["visible_endpoint_rows"] == validation["expected_visible_endpoint_rows"]),
        ("Duplicate normalized names", counts["duplicate_names_total"] == 0),
        ("Forbidden `_GLOBAL` prefix", counts["forbidden_global_prefixes_total"] == 0),
        ("Metadata-only endpoint names", counts["metadata_only_candidates_total"] == 0),
        ("Relationship-only endpoint names", counts["relationship_only_candidates_total"] == 0),
        ("Path-specific prefix explosion", counts["prefix_explosion_candidates_total"] == 0),
        ("Required row status `COUNT_SCAN_REQUIRED`", counts["bad_status_rows_total"] == 0),
    ]
    check_rows = "\n".join(f"| {name} | {'PASS' if ok else 'FAIL'} |" for name, ok in checks)
    json_summary = json.dumps({
        "status": report["status"],
        "review_status": report["review_status"],
        "validation": validation,
        "counts": counts,
    }, ensure_ascii=False, indent=2)
    return f"""# Endpoint Count Matrix Scan Report

Version: 0.2.0
Status: {status}
Last checked: 2026-06-26
Matrix path: `{report['matrix_path']}`
Scanner path: `{report['scanner_path']}`
JSON report: `{report['json_report_path']}`
Evidence type: STATIC_CHECK
Canonical promotion: none

## Summary

```json
{json_summary}
```

## Checks

| Check | Result |
|---|---|
{check_rows}

## Review state

`{status}` means the static scanner output is machine-readable and ready for owner/admin review. It does not mean canonical MEMORY records or final endpoint counts were promoted.

Matrix rows remain `{report['row_status_required']}` until reviewed count outputs are accepted.

## Scope boundaries

- This report validates endpoint-matrix shape and policy fit only.
- This report does not promote canonical MEMORY records.
- This report does not prove real-world dataset completeness.
- This report does not perform web, binary, firmware, manual or installer crawling.
- Counts remain `COUNT_SCAN_REQUIRED` until a reviewed scanner run produces accepted count outputs.

## Re-run command

```sh
python3 MEMORY/SCANNERS/count_endpoint_matrix_scan.py \
  --matrix MEMORY/INDEXES/endpoint_count_matrix.md \
  --status COUNT_SCAN_REQUIRED \
  --expected-count 67 \
  --report MEMORY/REPORTS/VALIDATION/endpoint-count-matrix-scan.md \
  --json-report MEMORY/REPORTS/VALIDATION/endpoint-count-matrix-scan.json
```

## Consistency check

- `README.md`: public `Wissensstand` block exposes `{status}`.
- `MEMORY/INDEX.md`: links Markdown and JSON validation reports.
- `MEMORY/SCANNERS/count_scan_rules.md`: re-run command emits Markdown and JSON reports.
- `CHANGES.md`: documents the machine-readable scan-report transition.

## Rollback

Revert this report to version 0.1.1 and remove `MEMORY/REPORTS/VALIDATION/endpoint-count-matrix-scan.json` if the machine-readable report transition is rolled back.
"""


def main(argv: Sequence[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description="Validate Dr.Debug endpoint-count matrix.")
    parser.add_argument("--matrix", default="MEMORY/INDEXES/endpoint_count_matrix.md")
    parser.add_argument("--status", default=DEFAULT_REQUIRED_STATUS)
    parser.add_argument("--expected-count", type=int, default=67)
    parser.add_argument("--report", default="MEMORY/REPORTS/VALIDATION/endpoint-count-matrix-scan.md")
    parser.add_argument("--json-report", default="MEMORY/REPORTS/VALIDATION/endpoint-count-matrix-scan.json")
    parser.add_argument("--fail-on-warnings", action="store_true")
    args = parser.parse_args(argv)

    matrix_path = Path(args.matrix)
    text = matrix_path.read_text(encoding="utf-8")
    header, rows = find_matrix_rows(text)
    report = build_report(matrix_path, rows, header, args)

    if args.report:
        report_path = Path(args.report)
        report_path.parent.mkdir(parents=True, exist_ok=True)
        report_path.write_text(render_markdown(report), encoding="utf-8")
    if args.json_report:
        json_path = Path(args.json_report)
        json_path.parent.mkdir(parents=True, exist_ok=True)
        json_path.write_text(json.dumps(report, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")

    return 0 if report["status"] == READY_STATUS else 1


if __name__ == "__main__":
    sys.exit(main())
