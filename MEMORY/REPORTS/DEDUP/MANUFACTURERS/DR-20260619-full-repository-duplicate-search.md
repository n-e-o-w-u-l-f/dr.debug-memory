# DR-20260619 full repository duplicate search

mode: OWNER_ADMIN_MODE
repo: n-e-o-w-u-l-f/dr.debug-memory
scope: manufacturer proposals, manufacturer profiles, source records, relationship proposals
created_at: 2026-06-19
status: REQUIRES_OWNER_LOCAL
report_type: dedupe_catchup
promotion: none
rehosting: none

## Requested dedupe dimensions

- exact_name
- normalized_name
- aliases
- manufacturer_model
- source_url
- checksum
- canonical_id
- duplicate_ids
- duplicate_titles
- duplicate_aliases
- duplicate_source_urls
- duplicate_canonical_paths

## Result classification

| Dimension | Classification | Reason |
|---|---|---|
| exact_name | REQUIRES_OWNER_LOCAL | Requires complete checked-out repository scan. |
| normalized_name | REQUIRES_OWNER_LOCAL | Requires normalization over all manufacturer records and proposals. |
| aliases | REQUIRES_OWNER_LOCAL | Requires parsing alias arrays/sections across canonical and proposal files. |
| manufacturer_model | REQUIRES_OWNER_LOCAL | Requires device/manufacturer cross-reference scan. |
| source_url | REQUIRES_OWNER_LOCAL | Requires source-record URL extraction across MEMORY. |
| checksum | REQUIRES_OWNER_LOCAL | Requires source/checksum field extraction. |
| canonical_id | REQUIRES_OWNER_LOCAL | Requires metadata scan across canonical/proposal records. |
| duplicate_ids | REQUIRES_OWNER_LOCAL | Requires full repository metadata scan. |
| duplicate_titles | REQUIRES_OWNER_LOCAL | Requires full repository metadata scan. |
| duplicate_aliases | REQUIRES_OWNER_LOCAL | Requires full repository alias scan. |
| duplicate_source_urls | REQUIRES_OWNER_LOCAL | Requires full source URL scan. |
| duplicate_canonical_paths | REQUIRES_OWNER_LOCAL | Requires full canonical_path scan. |

## Known high-priority relationship/dedupe review blockers

The next local pass should prioritize relationship-sensitive manufacturer groups where a naive alias merge could create duplicate canonical truth:

1. HP Inc. / Hewlett Packard Enterprise / legacy Hewlett-Packard
2. Kingston / HyperX / HP-owned HyperX gaming peripherals
3. Micron / Crucial
4. Western Digital / WD / SanDisk Professional / G-DRIVE
5. Samsung Electronics / Samsung Semiconductor / Samsung SSD / Samsung Memory
6. SK hynix / Solidigm
7. Dynabook / Toshiba PC / Toshiba Memory / Kioxia
8. ADATA / XPG
9. Schenker / XMG
10. Clevo / OEM/ODM reseller records

## Safe local duplicate scan sketch

```bash
# run from repository root in a clean local clone
python3 - <<'PY'
from pathlib import Path
import re, collections
root = Path('MEMORY')
fields = ['id','title','canonical_path','official_home','support_url','downloads_url','manuals_url','security_url','firmware_url','source_url','checksum']
seen = {f: collections.defaultdict(list) for f in fields}
for p in root.rglob('*'):
    if p.is_file() and p.suffix.lower() in {'.md','.json','.jsonl','.yml','.yaml'}:
        text = p.read_text(errors='replace')
        for f in fields:
            for m in re.finditer(rf'(?im)^\s*{re.escape(f)}\s*[:=]\s*(.+?)\s*$', text):
                v = m.group(1).strip().strip('"\'')
                if v:
                    seen[f][v.lower()].append(str(p))
for f, table in seen.items():
    for value, paths in sorted(table.items()):
        if len(set(paths)) > 1:
            print(f'DUPLICATE {f}: {value}')
            for path in sorted(set(paths)):
                print(f'  {path}')
PY
```

## Decision

No duplicate-canonical-truth finding is asserted by this report because the required full repository duplicate search was not executed in a local clone. This report blocks promotion claims until the owner-local scan is run and reviewed.

## Rollback

Revert this report file if superseded by a completed local duplicate scan report.
