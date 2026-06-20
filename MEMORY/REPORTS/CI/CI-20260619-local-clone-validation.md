# CI-20260619 local clone validation

mode: OWNER_ADMIN_MODE
repo: n-e-o-w-u-l-f/dr.debug-memory
scope: MEMORY, AGENTS, UPDATE_PROCESS, CHANGES.md
created_at: 2026-06-19
status: REQUIRES_OWNER_LOCAL
report_type: ci_catchup
promotion: none
rehosting: none

## Requested CI checks

- markdown_links
- frontmatter_schema
- jsonl_parse
- required_metadata_fields
- source_record_fields
- changelog_present
- no_raw_crawl_dumps
- no_secret_like_values

## CI classification

| CI check | Classification | Result |
|---|---|---|
| markdown_links | REQUIRES_OWNER_LOCAL | Requires full checkout and link checker. |
| frontmatter_schema | REQUIRES_OWNER_LOCAL | Requires repository schema validator. |
| jsonl_parse | REQUIRES_OWNER_LOCAL | Requires parser across repository files. |
| required_metadata_fields | REQUIRES_OWNER_LOCAL | Requires metadata validator for MEMORY records. |
| source_record_fields | REQUIRES_OWNER_LOCAL | Requires source registry/source record validator. |
| changelog_present | WARNING | CHANGES.md update is included in this report-only patch, but local CI did not run. |
| no_raw_crawl_dumps | REQUIRES_OWNER_LOCAL | Requires full repository scan. |
| no_secret_like_values | REQUIRES_OWNER_LOCAL | Requires secret-like-value scanner in local clone. |

## Available-tool validation

Performed in current environment:

- owner/admin gate check
- repository status/permission check
- current AGENTS.md, UPDATE_PROCESS.md, MEMORY/INDEX.md, MEMORY/SCHEMA.md, MEMORY/QUALITY_RULES.md and MEMORY/SOURCE_REGISTRY.md review from public repository content
- report content static redaction check
- no-promotion/no-delete/no-rehosting/no-download compliance check

Not performed in current environment:

- local clone grep
- CI runner execution
- markdown link checker
- JSONL parse job
- schema/frontmatter validator
- source-record field validator
- full repository secret scanner
- full repository raw crawl dump scanner

## Minimal owner-local CI sketch

```bash
# run from repository root in a clean local clone
set -eu

git status --short

# JSONL parse
find MEMORY AGENTS -type f -name '*.jsonl' -print0 | while IFS= read -r -d '' f; do
  python3 -m json.tool "$f" >/dev/null || exit 1
done

# basic prohibited content scan; tune false positives before enforcing in CI
grep -RInE 'BEGIN (RSA|OPENSSH|PRIVATE) KEY|api[_-]?key\s*[:=]|token\s*[:=]|password\s*[:=]' MEMORY AGENTS UPDATE_PROCESS.md CHANGES.md && exit 1 || true
grep -RInE 'raw crawl dump|full raw log' MEMORY AGENTS UPDATE_PROCESS.md CHANGES.md && exit 1 || true

# metadata presence smoke check for markdown records
python3 - <<'PY'
from pathlib import Path
required = ['id','family','category','title','status','confidence','source_status','validation_status','canonical_path','aliases','created_at','updated_at','review_required','sources']
fail = False
for p in Path('MEMORY').rglob('*.md'):
    text = p.read_text(errors='replace')
    if 'status:' in text or 'canonical_path:' in text:
        missing = [k for k in required if f'{k}:' not in text]
        if missing:
            print(f'MISSING {p}: {missing}')
            fail = True
raise SystemExit(1 if fail else 0)
PY
```

## Decision

This CI catch-up is not complete until an owner-local clean clone executes the checks. No CI PASS is claimed by this report.

## Rollback

Revert this report file if superseded by a completed CI output report.
