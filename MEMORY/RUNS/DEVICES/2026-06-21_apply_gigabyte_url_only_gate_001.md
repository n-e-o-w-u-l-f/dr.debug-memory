# Apply Gate 001 — GIGABYTE URL-only devices.jsonl patch

run_id: DD-RUN-20260621-GIGABYTE-URL-ONLY-APPLY-GATE-001
mode: OWNER_ADMIN_MODE
repo: n-e-o-w-u-l-f/dr.debug-memory
created_at: 2026-06-21
status: APPLY_GATE_SCRIPT_PREPARED
risk: LOW
data_loss_risk: LOW
canonical_records_changed: 0
canonical_write_performed: false
schema_migration_performed: false
rich_sources_conversion_performed: false
index_update_performed: false
binary_actions: 0
rehosting_actions: 0

## Decision

The URL-only canonical diff is reviewed and ready, but this chat write tool can only replace complete files. Directly overwriting `MEMORY/HARDWARE/DEVICES/devices.jsonl` from this session would require reconstructing the whole JSONL file and could accidentally alter non-GIGABYTE records or formatting.

Therefore the safe continuation is an apply-gated local/trusted-repo patch script, not a direct full-file replacement from chat.

## Allowed scope

Only these five GIGABYTE records may be changed:

- `z890-aorus-master`
- `z890-aorus-elite-wifi7`
- `x870e-aorus-master`
- `x870-aorus-elite-wifi7-ice`
- `b850-aorus-elite-wifi7`

Only these fields may be changed:

- `official_product_url`
- `support_url`
- `manuals_url`
- `downloads_url`
- `source_urls`

No schema migration, rich-source conversion, index update, model-number mutation, evidence-note mutation, status promotion, binary download, firmware/driver/manual download or rehosting is allowed in this step.

## Prepared apply artifact

Script prepared:

`MEMORY/RUNS/DEVICES/apply_gigabyte_url_only_patch_001.py`

The script defaults to dry-run mode. It requires `--apply` to write `devices.jsonl`. It validates JSONL parseability, exact old URL presence, expected replacement counts, and that the set of GIGABYTE records remains five.

## Required command in a trusted checkout

```sh
python3 MEMORY/RUNS/DEVICES/apply_gigabyte_url_only_patch_001.py --dry-run
python3 MEMORY/RUNS/DEVICES/apply_gigabyte_url_only_patch_001.py --apply
```

## Rollback

The script writes a sibling backup before apply:

`MEMORY/HARDWARE/DEVICES/devices.jsonl.bak.gigabyte-url-only-001`

Rollback command in the same checkout:

```sh
cp MEMORY/HARDWARE/DEVICES/devices.jsonl.bak.gigabyte-url-only-001 MEMORY/HARDWARE/DEVICES/devices.jsonl
python3 MEMORY/RUNS/DEVICES/apply_gigabyte_url_only_patch_001.py --dry-run
```

The rollback dry-run should then report the old URL families as present and replacements as pending again.

## Gate status

```yaml
gigabyte_url_normalization_reviewed: true
canonical_diff_proposal_ready: true
chat_direct_full_file_write_blocked: true
reason: full-file replacement would exceed safe URL-only confidence without local exact diff
apply_script_prepared: true
schema_migration_unblocked: after script apply succeeds or URL mutation is formally deferred
rich_sources_conversion_unblocked: false
index_update_unblocked: false
```
