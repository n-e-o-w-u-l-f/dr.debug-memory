# Count Scan Rules

Version: 0.1.0
Status: ACTIVE_SCANNER_RULE_DRAFT
Last checked: 2026-06-25
Scope: scanner planning for Dr.Debug visible endpoint-count matrix

## Scanner objective

Validate that endpoint-count planning remains flat, deduplicated, visible and globally countable.

The scanner must report:

- proposed visible endpoint count
- duplicate normalized names
- forbidden prefixes
- metadata-only endpoint candidates
- relationship-only endpoint candidates
- path-specific prefix explosion candidates
- markdown table validity
- repo routing and policy warnings

## Required checks

1. Read `MEMORY/INDEXES/endpoint_count_matrix.md`.
2. Confirm the table contains columns: `Bereich`, `Wissen`, `User`, `Admin`, `Recherche`, `Status`.
3. Normalize every `Bereich` value:
   - trim whitespace
   - lowercase
   - collapse repeated whitespace
   - compare hyphen/space variants conservatively
4. Fail if duplicate normalized names exist.
5. Fail if a visible endpoint starts with `_GLOBAL`.
6. Warn if a name looks relationship-only:
   - `belongs_to`
   - `has_*`
   - `supports_*`
   - `linked_*`
   - `relation_*`
7. Warn if a name looks metadata-only:
   - `id`
   - `canonical_id`
   - `created_at`
   - `updated_at`
   - `source_status`
   - `confidence`
   - `validation_status`
8. Warn if endpoint names create manufacturer/platform/game-specific prefix explosions.
9. Confirm each row has status `COUNT_SCAN_REQUIRED` until a scanner produces tool-backed counts.
10. Confirm no binary download, raw crawl dump, copyrighted manual mirror or installer payload is part of scan output.

## Suggested pseudo-command

```sh
python3 tools/count_endpoint_matrix_scan.py \
  --matrix MEMORY/INDEXES/endpoint_count_matrix.md \
  --rules MEMORY/INDEXES/endpoint_count_rules.md \
  --status COUNT_SCAN_REQUIRED \
  --fail-on-duplicates \
  --fail-on-global-prefix \
  --report MEMORY/REPORTS/VALIDATION/endpoint-count-matrix-scan.md
```

## Validation output shape

```yaml
validation:
  matrix_path: MEMORY/INDEXES/endpoint_count_matrix.md
  required_columns_present: true
  visible_endpoint_rows: 67
  duplicate_names: []
  forbidden_global_prefixes: []
  metadata_only_candidates: []
  relationship_only_candidates: []
  prefix_explosion_candidates: []
  markdown_table_valid: true
  status: COUNT_SCAN_REQUIRED
```

## Safety limits

- no unbounded crawl
- no binary downloads
- no copyrighted manual upload/mirroring
- no secrets or raw private logs
- no canonical promotion from scanner output alone
- no main-branch write before validation
