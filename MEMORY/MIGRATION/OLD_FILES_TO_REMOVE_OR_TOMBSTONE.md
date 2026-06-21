# OLD_FILES_TO_REMOVE_OR_TOMBSTONE.md
Version: 0.8.0-proposal
Status: MIGRATION_REVIEW_REQUIRED
Created: 2026-06-21
Scope: Old CustomGPT Knowledge files superseded by consolidated v0.8.0 files.

## Superseded files

The following old active Knowledge files are superseded by the v0.8.0 consolidated layout: `00_ADMIN.md`, `01_PUBLIC_MODE.md`, `02_OWNER_ADMIN_MODE.md`, `03_REPOSITORY_WORKFLOW.md`, `04_BRANCH_MERGE_COMMIT.md`, `05_STRUCTURE_REFERENCE_MIGRATION.md`, `06_ARTIFACTS_SCRIPTS_PATCHES.md`, `07_REDACTION_PRIVACY.md`, `08_RESEARCH_SOURCE_CLASSIFICATION.md`, `09_ARCHIVE_ORG_REHOSTING.md`, `10_DEVICE_IDENTIFICATION.md`, `11_MANUFACTURER_INGEST.md`, `12_FIRMWARE_DRIVER_MANUAL.md`, `13_RISK_PLATFORM.md`, `14_VALIDATION_EVIDENCE_EVALS.md`, `15_CONFLICTS_DEDUP_CANONICAL.md`, `16_MEMORY_SCHEMA_MENU_STATUS.md`, `17_KNOWLEDGE_LOADING_RETRIEVAL.md`, `18_TOOL_ACTIONS_AUDIT_RELEASE_DRIFT.md` and `99_FINAL.md`.

## Safe handling

Do not upload these old files to CustomGPT Knowledge together with the seven replacements.

Repository deletion or tombstoning is intentionally not performed in the non-destructive apply pass. If deletion is requested later, require `DRDEBUG_DESTRUCTIVE=TRUE`, `--apply`, affected-file detection, diff, backup or branch, rollback, validation, README/INDEX/reference updates and changelog update.
