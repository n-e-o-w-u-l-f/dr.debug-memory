# Audit Report: Remaining canonical-ish BATCH category detail review

Date: 2026-06-23
Repository: n-e-o-w-u-l-f/dr.debug-memory
Status: PROPOSAL_ONLY
Validation: STATIC_CHECK
Scope: 27 remaining canonical-ish BATCH files

## Summary finding

The remaining 27 canonical-ish BATCH files are useful category-specific memory material, but they are not automatic canonical promotions.

Current status:

- KEEP as review, lineage and staging material.
- DO NOT DELETE.
- DO NOT PROMOTE in this pass.
- Normalize and dedupe before any canonical MEMORY promotion.
- Preserve status, limitations and source/evidence notes where present.
- Treat RUNS files as workflow/review lineage, not canonical factual memory.

## Files reviewed

### ANDROID, 8 files

- `MEMORY/ANDROID/android_build_and_recovery_rules_batch9.jsonl`
- `MEMORY/ANDROID/android_build_recovery_sources_batch5.jsonl`
- `MEMORY/ANDROID/aosp_version_api_seed_batch7.jsonl`
- `MEMORY/ANDROID/custom_rom_recovery_projects_seed_batch4.jsonl`
- `MEMORY/ANDROID/samsung_firmware_build_taxonomy_batch5.md`
- `MEMORY/ANDROID/samsung_open_source_observed_seed_batch7.jsonl`
- `MEMORY/ANDROID/samsung_open_source_seed_examples_batch5.jsonl`
- `MEMORY/ANDROID/twrp_oem_index_seed_batch7.jsonl`

### DEVICE_IDENTIFIERS, 3 files

- `MEMORY/DEVICE_IDENTIFIERS/device_identifier_authorities_batch5.jsonl`
- `MEMORY/DEVICE_IDENTIFIERS/device_identifier_expansion_batch4.jsonl`
- `MEMORY/DEVICE_IDENTIFIERS/device_identifier_import_targets_batch6.jsonl`

### FIRMWARE, 2 files

- `MEMORY/FIRMWARE/firmware_terminology_expansion_batch5.md`
- `MEMORY/FIRMWARE/lvfs_fwupd_firmware_metadata_seed_batch7.jsonl`

### HARDWARE, 2 files

- `MEMORY/HARDWARE/network_component_families_batch5.jsonl`
- `MEMORY/HARDWARE/network_components_seed_batch4.jsonl`

### MANUFACTURERS, 2 files

- `MEMORY/MANUFACTURERS/manufacturer_device_category_map_batch4.jsonl`
- `MEMORY/MANUFACTURERS/manufacturer_research_methods_batch5.jsonl`

### PROTOCOLS, 2 files

- `MEMORY/PROTOCOLS/application_protocol_diagnostics_seed_batch8.jsonl`
- `MEMORY/PROTOCOLS/protocol_diagnostic_matrix_batch9.jsonl`

### SINGLETON categories, 5 files

- `MEMORY/REGISTRIES/registry_import_targets_batch9.jsonl`
- `MEMORY/REPAIR/repair_source_policy_batch5.jsonl`
- `MEMORY/RETRO/retro_hardware_sources_batch5.jsonl`
- `MEMORY/SECURITY/tls_registry_policy_notes_batch9.jsonl`
- `MEMORY/SOFTWARE/CHECKPOINTS/software-package-next-small-batch.md`

### RUNS, 3 files

- `MEMORY/RUNS/DEVICES/2026-06-20_memory_loop_devices_by_manufacturer_batch_100_gate.md`
- `MEMORY/RUNS/DEVICES/2026-06-20_memory_loop_devices_by_manufacturer_batch_100_review_queue_001.md`
- `MEMORY/RUNS/MANUFACTURERS/2026-06-20_memory_loop_manufacturers_batch_100_gate.md`

## Classification outcome

| Category | Count | Review class | Recommendation |
|---|---:|---|---|
| ANDROID | 8 | `NEEDS_ANDROID_DEDUPE_AND_SOURCE_REVIEW` | Keep; normalize AOSP, TWRP, Samsung and recovery/build claims before promotion. |
| DEVICE_IDENTIFIERS | 3 | `NEEDS_IDENTIFIER_AUTHORITY_REVIEW` | Keep; dedupe authority/import-target records before promotion. |
| FIRMWARE | 2 | `NEEDS_FIRMWARE_SOURCE_REVIEW` | Keep; validate LVFS/fwupd and terminology claims before promotion. |
| HARDWARE | 2 | `NEEDS_HARDWARE_TAXONOMY_REVIEW` | Keep; dedupe network component family/component records. |
| MANUFACTURERS | 2 | `NEEDS_MANUFACTURER_METHOD_REVIEW` | Keep; treat as method/category staging, not canonical manufacturer memory. |
| PROTOCOLS | 2 | `NEEDS_PROTOCOL_DEDUPE` | Keep; compare with NETWORKING protocol and diagnostics records. |
| REGISTRIES | 1 | `NEEDS_REGISTRY_SOURCE_REVIEW` | Keep; validate registry import targets before canonical source linkage. |
| REPAIR | 1 | `NEEDS_POLICY_REVIEW` | Keep; review as repair-source policy material. |
| RETRO | 1 | `NEEDS_SOURCE_REVIEW` | Keep; validate retro hardware source usefulness and source class. |
| RUNS | 3 | `REVIEW_LINEAGE_DO_NOT_PROMOTE` | Keep as run/gate lineage; do not promote as canonical factual memory. |
| SECURITY | 1 | `NEEDS_SECURITY_SOURCE_REVIEW` | Keep; review TLS registry policy notes against official registry/security sources. |
| SOFTWARE | 1 | `CHECKPOINT_LINEAGE` | Keep as checkpoint lineage, not canonical software memory. |

## Aggregate outcome

| Class | Count | Recommendation |
|---|---:|---|
| `KEEP_REVIEW_LINEAGE` | 27 | Retain all files as review/staging/lineage material. |
| `SAFE_DELETE_CANDIDATE` | 0 | No file is safe to delete in this pass. |
| `PROMOTION_READY` | 0 | No file is promotion-ready without category-specific normalization and source review. |

## Required local validation commands

    wc -l /tmp/remaining-canonical-ish-batch-files.txt

    python3 - <<'PY'
    import json
    from pathlib import Path

    files = [Path(line.strip()) for line in Path('/tmp/remaining-canonical-ish-batch-files.txt').read_text().splitlines() if line.strip()]
    errors = []
    reviewed = []

    for path in files:
        text = path.read_text(encoding='utf-8')
        if path.suffix.lower() == '.json':
            try:
                json.loads(text)
                reviewed.append((str(path), 'json'))
            except Exception as exc:
                errors.append((str(path), 'json', str(exc)))
        elif path.suffix.lower() == '.jsonl':
            for i, line in enumerate(text.splitlines(), 1):
                if not line.strip():
                    continue
                try:
                    json.loads(line)
                except Exception as exc:
                    errors.append((str(path), f'jsonl:{i}', str(exc)))
            reviewed.append((str(path), 'jsonl'))
        else:
            reviewed.append((str(path), 'non-json-review'))

    print('files=', len(files))
    print('reviewed=', len(reviewed))
    print('errors=', len(errors))
    for err in errors[:20]:
        print('ERROR', err)
    raise SystemExit(1 if errors else 0)
    PY

## Recommended next action

Create later category-specific normalization branches only after dedupe and source review:

1. Android/source-backed firmware and recovery material.
2. Device identifier authority/import target material.
3. Firmware/LVFS/fwupd material.
4. Hardware/network component taxonomy material.
5. Manufacturer method/category material.
6. Protocol and registry material.
7. RUNS lineage archival/index decision.

## Rollback

This report is additive. Rollback is deletion of this audit report from the review branch before merge or revert of the commit after merge.
