# Endpoint Count Matrix Scan Report

Version: 0.2.0
Status: COUNT_SCAN_READY_FOR_REVIEW
Last checked: 2026-06-26
Matrix path: `MEMORY/INDEXES/endpoint_count_matrix.md`
Scanner path: `MEMORY/SCANNERS/count_endpoint_matrix_scan.py`
JSON report: `MEMORY/REPORTS/VALIDATION/endpoint-count-matrix-scan.json`
Evidence type: STATIC_CHECK
Canonical promotion: none

## Summary

```yaml
validation:
  matrix_path: MEMORY/INDEXES/endpoint_count_matrix.md
  required_columns_present: true
  visible_endpoint_rows: 67
  expected_visible_endpoint_rows: 67
  duplicate_names: []
  forbidden_global_prefixes: []
  metadata_only_candidates: []
  relationship_only_candidates: []
  prefix_explosion_candidates: []
  bad_status_rows: []
  markdown_table_valid: true
  required_status: COUNT_SCAN_REQUIRED
  static_result: PASS_STATIC_CHECK
  review_status: COUNT_SCAN_READY_FOR_REVIEW
```

## Machine-readable report

The machine-readable scan output is stored at:

- `MEMORY/REPORTS/VALIDATION/endpoint-count-matrix-scan.json`

It includes stable count fields under `counts`, validation arrays under `validation`, safety flags under `safety`, and review routing fields `review_required` / `review_status`.

## Checks

| Check | Result |
|---|---|
| Required columns `Bereich,Wissen,User,Admin,Recherche,Status` | PASS |
| Markdown table shape | PASS |
| Visible endpoint row count | PASS |
| Duplicate normalized names | PASS |
| Forbidden `_GLOBAL` prefix | PASS |
| Metadata-only endpoint names | PASS |
| Relationship-only endpoint names | PASS |
| Path-specific prefix explosion | PASS |
| Required row status `COUNT_SCAN_REQUIRED` | PASS |
| JSON report emitted | PASS |

## Review state

`COUNT_SCAN_READY_FOR_REVIEW` means the static scanner output is machine-readable and ready for owner/admin review. It does not mean canonical MEMORY records or final endpoint counts were promoted.

Matrix rows remain `COUNT_SCAN_REQUIRED` until reviewed count outputs are accepted.

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

- `README.md`: public `Wissensstand` block exposes `COUNT_SCAN_READY_FOR_REVIEW`.
- `MEMORY/INDEX.md`: links Markdown and JSON validation reports.
- `MEMORY/SCANNERS/count_scan_rules.md`: re-run command emits Markdown and JSON reports.
- `CHANGES.md`: documents the machine-readable scan-report transition.

## Rollback

Revert this report to version 0.1.1 and remove `MEMORY/REPORTS/VALIDATION/endpoint-count-matrix-scan.json` if the machine-readable report transition is rolled back.
