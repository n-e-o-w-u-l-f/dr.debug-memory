# Endpoint Count Matrix Scan Report

Version: 0.1.0
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

- `MEMORY/INDEX.md`: contains endpoint count matrix navigation.
- `CHANGES.md`: contains endpoint count matrix planning and index-sync entries.
- `README.md`: public status block still requires a later targeted README-only sync that preserves the existing public-facing README layout.

## Rollback

Remove this report and revert the related `CHANGES.md` entry. If the scanner script is removed, also revert the `MEMORY/SCANNERS/count_endpoint_matrix_scan.py` entry from the changelog.
