# MIGRATION_MAP.md

Version: 0.8.1-master-pipeline  
Status: ACTIVE_MIGRATION_REFERENCE  
Created: 2026-06-21  
Updated: 2026-06-21  
Scope: CustomGPT Knowledge consolidation from legacy files into consolidated v0.8.x files plus the v1.0.0 master pipeline overlay.

## Migration map

| Old active Knowledge file | New active Knowledge file |
|---|---|
| `00_ADMIN.md` | `MEMORY/KNOWLEDGE_REPLACE/00_WORKING_MODE.md` |
| `01_PUBLIC_MODE.md` | `MEMORY/KNOWLEDGE_REPLACE/00_WORKING_MODE.md` |
| `02_OWNER_ADMIN_MODE.md` | `MEMORY/KNOWLEDGE_REPLACE/00_WORKING_MODE.md` |
| `99_FINAL.md` | `MEMORY/KNOWLEDGE_REPLACE/00_WORKING_MODE.md` |
| `03_REPOSITORY_WORKFLOW.md` | `MEMORY/KNOWLEDGE_REPLACE/01_REPOSITORY_CHANGE_WORKFLOW.md` |
| `04_BRANCH_MERGE_COMMIT.md` | `MEMORY/KNOWLEDGE_REPLACE/01_REPOSITORY_CHANGE_WORKFLOW.md` |
| `05_STRUCTURE_REFERENCE_MIGRATION.md` | `MEMORY/KNOWLEDGE_REPLACE/01_REPOSITORY_CHANGE_WORKFLOW.md` |
| `06_ARTIFACTS_SCRIPTS_PATCHES.md` | `MEMORY/KNOWLEDGE_REPLACE/01_REPOSITORY_CHANGE_WORKFLOW.md` |
| `08_RESEARCH_SOURCE_CLASSIFICATION.md` | `MEMORY/KNOWLEDGE_REPLACE/02_RESEARCH_ARCHIVE_BINARY_SOURCES.md` |
| `09_ARCHIVE_ORG_REHOSTING.md` | `MEMORY/KNOWLEDGE_REPLACE/02_RESEARCH_ARCHIVE_BINARY_SOURCES.md` |
| `12_FIRMWARE_DRIVER_MANUAL.md` | `MEMORY/KNOWLEDGE_REPLACE/02_RESEARCH_ARCHIVE_BINARY_SOURCES.md` |
| `10_DEVICE_IDENTIFICATION.md` | `MEMORY/KNOWLEDGE_REPLACE/03_DEVICE_MANUFACTURER_INTAKE.md` |
| `11_MANUFACTURER_INGEST.md` | `MEMORY/KNOWLEDGE_REPLACE/03_DEVICE_MANUFACTURER_INTAKE.md` |
| `14_VALIDATION_EVIDENCE_EVALS.md` | `MEMORY/KNOWLEDGE_REPLACE/04_EVIDENCE_SCHEMA_DEDUP_MEMORY.md` |
| `15_CONFLICTS_DEDUP_CANONICAL.md` | `MEMORY/KNOWLEDGE_REPLACE/04_EVIDENCE_SCHEMA_DEDUP_MEMORY.md` |
| `16_MEMORY_SCHEMA_MENU_STATUS.md` | `MEMORY/KNOWLEDGE_REPLACE/04_EVIDENCE_SCHEMA_DEDUP_MEMORY.md` |
| `07_REDACTION_PRIVACY.md` | `MEMORY/KNOWLEDGE_REPLACE/05_RISK_REDACTION_PLATFORM.md` |
| `13_RISK_PLATFORM.md` | `MEMORY/KNOWLEDGE_REPLACE/05_RISK_REDACTION_PLATFORM.md` |
| `17_KNOWLEDGE_LOADING_RETRIEVAL.md` | `MEMORY/KNOWLEDGE_REPLACE/06_KNOWLEDGE_TOOL_SYNC_AUDIT.md` |
| `18_TOOL_ACTIONS_AUDIT_RELEASE_DRIFT.md` | `MEMORY/KNOWLEDGE_REPLACE/06_KNOWLEDGE_TOOL_SYNC_AUDIT.md` |

## Master pipeline overlay

`MEMORY/KNOWLEDGE_REPLACE/07_MASTER_KNOWLEDGE_BASE_PIPELINE.md` is an active overlay directive. It does not replace only one legacy file. It binds the consolidated v0.8.x directives to the generation-/bit-hotspot taxonomy, README matrix sync, evidence lifecycle, schema discipline and non-destructive legacy migration rules.

## Active upload rule

For CustomGPT Knowledge upload, use only the active replacement files under `MEMORY/KNOWLEDGE_REPLACE/`.

Do not keep the old `00_*.md` through `18_*.md` and `99_FINAL.md` active alongside the replacements.

## Tombstone / alias rule

Legacy directives are historical aliases/tombstones once superseded. Treat them as navigation/history only:

- no second truth,
- no active upload with replacements,
- no edits except explicit tombstone metadata,
- no deletion without destructive migration gate.

Detailed handling is documented in `MEMORY/MIGRATION/OLD_FILES_TO_REMOVE_OR_TOMBSTONE.md`.

## Repository migration rule

This apply pass is non-destructive. It updates migration references and changelog only. It does not delete old files, promote canonical records, add binaries, upload archives, force-push, or mass-reclassify records.

Deletion or broad rewriting of old files requires `DRDEBUG_DESTRUCTIVE=TRUE`, exact Owner/Admin apply gate, affected-file detection, diff, backup/branch, rollback, validation, README/INDEX/reference updates and changelog update.
