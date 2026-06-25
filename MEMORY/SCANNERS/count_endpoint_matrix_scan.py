#!/usr/bin/env python3
"""
name: count_endpoint_matrix_scan.py
version: 0.1.0
status: DRAFT_VALIDATOR
purpose: Validate Dr.Debug endpoint-count matrix shape and safety rules.
platform: repository-local
risk: LOW
root_required: false
network_required: false
destructive: false
backup: not required; read-only scan unless --report writes a report file
rollback: remove this script and generated report file
validation: run against MEMORY/INDEXES/endpoint_count_matrix.md
source/context: MEMORY/SCANNERS/count_scan_rules.md
"""

from __future__ import annotations

import argparse
import re
import sys
from collections import Counter
from dataclasses import dataclass
from pathlib import Path
from typing import Iterable, Sequence

REQUIRED_COLUMNS = ["Bereich", "Wissen", "User", "Admin", "Recherche", "Status"]
DEFAULT_REQUIRED_STATUS = "COUNT_SCAN_REQUIRED"
METADATA_ONLY_NAMES = {
    "id",
    "canonical id",
    "canonical_id",
    "created at",
    "created_at",
    "updated at",
    "updated_at",
    "source status",
    "source_status",
    "confidence",
    "validation status",
    "validation_status",
}
RELATION_ONLY_PREFIXES = (
    "belongs_to",
    "belongs to",
    "has_",
    "has ",
    "supports_",
    "supports ",
    "linked_",
    "linked ",
    "relation_",
    "relation ",
)
FORBIDDEN_VISIBLE_PREFIXES = ("_GLOBAL",)


@dataclass(frozen=True)
class MatrixRow:
    line_number: int
    cells: list[str]

    @property
    def bereich(self) -> str:
        return self.cells[0]

    @property
    def status(self) -> str:
        return self.cells[5]


def split_table_row(line: str) -> list[str]:
    stripped = line.strip()
    if not stripped.startswith("|") or not stripped.endswith("|"):
        return []
    return [cell.strip() for cell in stripped.strip("|").split("|")]


def is_separator_row(cells: Sequence[str]) -> bool:
    return bool(cells) and all(re.fullmatch(r":?-{3,}:?", cell.strip()) for cell in cells)


def find_matrix_rows(text: str) -> tuple[list[str], list[MatrixRow]]:
    lines = text.splitlines()
    header: list[str] | None = None
    rows: list[MatrixRow] = []
    in_table = False

    for index, line in enumerate(lines, start=1):
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
            if len(cells) != len(REQUIRED_COLUMNS):
                rows.append(MatrixRow(index, cells))
                continue
            rows.append(MatrixRow(index, cells))

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
    forbidden_path_markers = (" > ", "::", "\\", "/")
    if any(marker in lowered for marker in forbidden_path_markers):
        return True
    vendor_platform_game_hints = (
        "sega mega drive ",
        "mega drive sonic",
        "sonic ",
        "playstation spiele",
        "nintendo spiele",
        "xbox spiele",
    )
    return any(hint in lowered for hint in vendor_platform_game_hints)


def render_report(
    matrix_path: Path,
    required_columns_present: bool,
    row_count: int,
    expected_count: int | None,
    duplicate_names: list[str],
    forbidden_prefixes: list[str],
    metadata_only: list[str],
    relationship_only: list[str],
    prefix_explosions: list[str],
    bad_status_rows: list[tuple[int, str, str]],
    markdown_table_valid: bool,
    required_status: str,
) -> str:
    passed = (
        required_columns_present
        and markdown_table_valid
        and not duplicate_names
        and not forbidden_prefixes
        and not metadata_only
        and not relationship_only
        and not prefix_explosions
        and not bad_status_rows
        and (expected_count is None or row_count == expected_count)
    )
    expected_line = "null" if expected_count is None else str(expected_count)
    status = "PASS" if passed else "FAIL"

    return f"""# Endpoint Count Matrix Scan Report

Version: 0.1.0
Status: {status}
Last checked: 2026-06-25
Matrix path: `{matrix_path}`
Scanner: `MEMORY/SCANNERS/count_endpoint_matrix_scan.py`
Evidence type: STATIC_CHECK
Canonical promotion: none

## Summary

```yaml
validation:
  matrix_path: {matrix_path}
  required_columns_present: {str(required_columns_present).lower()}
  visible_endpoint_rows: {row_count}
  expected_visible_endpoint_rows: {expected_line}
  duplicate_names: {duplicate_names}
  forbidden_global_prefixes: {forbidden_prefixes}
  metadata_only_candidates: {metadata_only}
  relationship_only_candidates: {relationship_only}
  prefix_explosion_candidates: {prefix_explosions}
  bad_status_rows: {bad_status_rows}
  markdown_table_valid: {str(markdown_table_valid).lower()}
  required_status: {required_status}
  result: {status}
```

## Checks

| Check | Result |
|---|---|
| Required columns | {'PASS' if required_columns_present else 'FAIL'} |
| Markdown table shape | {'PASS' if markdown_table_valid else 'FAIL'} |
| Visible endpoint row count | {'PASS' if expected_count is None or row_count == expected_count else 'FAIL'} |
| Duplicate normalized names | {'PASS' if not duplicate_names else 'FAIL'} |
| Forbidden `_GLOBAL` prefix | {'PASS' if not forbidden_prefixes else 'FAIL'} |
| Metadata-only endpoint names | {'PASS' if not metadata_only else 'FAIL'} |
| Relationship-only endpoint names | {'PASS' if not relationship_only else 'FAIL'} |
| Path-specific prefix explosion | {'PASS' if not prefix_explosions else 'FAIL'} |
| Required row status | {'PASS' if not bad_status_rows else 'FAIL'} |

## Safety notes

- No binary downloads were performed.
- No raw crawl dump was stored.
- No copyrighted manual was mirrored.
- No canonical MEMORY record was promoted.
- Counts remain `COUNT_SCAN_REQUIRED` until a scanner run is reviewed and accepted.

## Re-run command

```sh
python3 MEMORY/SCANNERS/count_endpoint_matrix_scan.py \
  --matrix MEMORY/INDEXES/endpoint_count_matrix.md \
  --status COUNT_SCAN_REQUIRED \
  --expected-count 67 \
  --report MEMORY/REPORTS/VALIDATION/endpoint-count-matrix-scan.md
```

## Rollback

Remove this report and revert the related `CHANGES.md` entry.
"""


def main(argv: Sequence[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description="Validate Dr.Debug endpoint-count matrix.")
    parser.add_argument("--matrix", default="MEMORY/INDEXES/endpoint_count_matrix.md", help="Path to matrix markdown file")
    parser.add_argument("--status", default=DEFAULT_REQUIRED_STATUS, help="Required status for every endpoint row")
    parser.add_argument("--expected-count", type=int, default=67, help="Expected number of visible endpoint rows")
    parser.add_argument("--report", help="Optional markdown report output path")
    parser.add_argument("--fail-on-warnings", action="store_true", help="Treat warning candidates as failures")
    args = parser.parse_args(argv)

    matrix_path = Path(args.matrix)
    text = matrix_path.read_text(encoding="utf-8")
    header, rows = find_matrix_rows(text)
    required_columns_present = header == REQUIRED_COLUMNS
    markdown_table_valid = required_columns_present and all(len(row.cells) == len(REQUIRED_COLUMNS) for row in rows)

    normalized_names = [normalize_name(row.bereich) for row in rows if len(row.cells) >= 1]
    duplicate_names = collect_duplicates(normalized_names)
    forbidden_prefixes = sorted(row.bereich for row in rows if row.bereich.startswith(FORBIDDEN_VISIBLE_PREFIXES))
    metadata_only = sorted(row.bereich for row, norm in zip(rows, normalized_names) if norm in METADATA_ONLY_NAMES)
    relationship_only = sorted(row.bereich for row, norm in zip(rows, normalized_names) if norm.startswith(RELATION_ONLY_PREFIXES))
    prefix_explosions = sorted(row.bereich for row in rows if looks_like_prefix_explosion(row.bereich))
    bad_status_rows = sorted((row.line_number, row.bereich, row.status) for row in rows if len(row.cells) >= 6 and row.status != args.status)

    report = render_report(
        matrix_path=matrix_path,
        required_columns_present=required_columns_present,
        row_count=len(rows),
        expected_count=args.expected_count,
        duplicate_names=duplicate_names,
        forbidden_prefixes=forbidden_prefixes,
        metadata_only=metadata_only,
        relationship_only=relationship_only,
        prefix_explosions=prefix_explosions,
        bad_status_rows=bad_status_rows,
        markdown_table_valid=markdown_table_valid,
        required_status=args.status,
    )

    if args.report:
        report_path = Path(args.report)
        report_path.parent.mkdir(parents=True, exist_ok=True)
        report_path.write_text(report, encoding="utf-8")
    else:
        print(report)

    hard_failures = [
        not required_columns_present,
        not markdown_table_valid,
        bool(duplicate_names),
        bool(forbidden_prefixes),
        bool(bad_status_rows),
        len(rows) != args.expected_count,
    ]
    warning_failures = [bool(metadata_only), bool(relationship_only), bool(prefix_explosions)] if args.fail_on_warnings else []

    return 1 if any(hard_failures + warning_failures) else 0


if __name__ == "__main__":
    sys.exit(main())
