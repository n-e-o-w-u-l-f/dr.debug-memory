# Endpoint Count Matrix Scan Report

Version: 0.1.1
Status: PASS_STATIC_CHECK
Last checked: 2026-06-25
Matrix path: `MEMORY/INDEXES/endpoint_count_matrix.md`
Scanner path: `MEMORY/SCANNERS/count_endpoint_matrix_scan.py`
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
  result: PASS_STATIC_CHECK
```

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
  --report MEMORY/REPORTS/VALIDATION/endpoint-count-matrix-scan.md
```

## README/INDEX/CHANGES consistency check

- `README.md`: public `Wissensstand` block includes endpoint matrix planning and `PASS_STATIC_CHECK` validation report visibility.
- `MEMORY/INDEX.md`: contains endpoint count matrix navigation, implemented scanner script and validation report links.
- `MEMORY/SCANNERS/count_scan_rules.md`: re-run command points to `MEMORY/SCANNERS/count_endpoint_matrix_scan.py`, not the rejected `tools/` path.
- `CHANGES.md`: documents endpoint matrix planning, index sync, scanner/report creation and README visibility sync.

## Rollback

Revert this report to version 0.1.0 or remove it with the related scanner/changelog entries if the endpoint-count matrix planning package is rolled back.
