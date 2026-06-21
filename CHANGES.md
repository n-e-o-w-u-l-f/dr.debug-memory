# DR. DEBUG CHANGES.md

Version: 0.8.1-master-pipeline  
Status: ACTIVE  
Scope: Repository change history for Dr. Debug /MEMORY/

## 2026-06-21

### policy(memory): add master taxonomy pipeline and generation-bit README matrix

- Updated `README.md` with a generation-/bit-hotspot status matrix between `DRDEBUG_DATABASE_STATUS_START` and `DRDEBUG_DATABASE_STATUS_END`.
- Added the Master-Pipeline policy section to `README.md` so retro console/platform taxonomy is anchored by historical generation plus bit-/CPU-/bus-/graphics-/memory architecture before manufacturer branches.
- Added `MEMORY/KNOWLEDGE_REPLACE/07_MASTER_KNOWLEDGE_BASE_PIPELINE.md` as the non-destructive master directive for taxonomy, evidence lifecycle, README matrix sync, rollback and Owner/Admin gates.
- Updated `MEMORY/INDEX.md` to reference `07_MASTER_KNOWLEDGE_BASE_PIPELINE.md` as part of the consolidated Knowledge routing.
- Updated `MEMORY/MIGRATION/OLD_FILES_TO_REMOVE_OR_TOMBSTONE.md` to mark legacy Knowledge directives as tombstone/alias references instead of deleting them.
- Updated `MEMORY/MIGRATION/MIGRATION_MAP.md` to document tombstone/alias handling and the new `07_MASTER_KNOWLEDGE_BASE_PIPELINE.md` overlay.
- No legacy directive files were deleted in this pass.
- No canonical MEMORY records, status promotions, binaries, downloads, archive uploads, raw crawl dumps, rehosting artifacts, force-pushes or destructive migrations were added.
- Redaction/static safety review: no secrets, credentials, customer data, serials, raw logs, raw crawl dumps or binary files were intentionally added.
- Rollback: revert the README, `MEMORY/INDEX.md`, `MEMORY/KNOWLEDGE_REPLACE/07_MASTER_KNOWLEDGE_BASE_PIPELINE.md`, `MEMORY/MIGRATION/OLD_FILES_TO_REMOVE_OR_TOMBSTONE.md`, `MEMORY/MIGRATION/MIGRATION_MAP.md`, and this `CHANGES.md` update to the previous commit state.

### docs(policy): apply consolidated CustomGPT Knowledge v0.8.0 under MEMORY paths

- Added the seven consolidated CustomGPT Knowledge files under `MEMORY/KNOWLEDGE_REPLACE/`.
- Added migration references under `MEMORY/MIGRATION/`.
- Updated `README.md` with the consolidated Knowledge file list, migration references and README Wissensmatrix.
- Updated `UPDATE_PROCESS.md` and `MEMORY/INDEX.md` with consolidated Knowledge routing and README matrix duties.
- Added `MEMORY/KNOWLEDGE_REPLACE/MANIFEST.json` and `MEMORY/KNOWLEDGE_REPLACE/VALIDATION.md` for package validation.
- No old Knowledge files were deleted or tombstoned in this pass.
- No canonical MEMORY records, status promotions, binaries, downloads, archive uploads, raw crawl dumps, rehosting artifacts, force-pushes or destructive migrations were added.
- Redaction/static safety review: no secrets, credentials, customer data, serials, raw logs, raw crawl dumps or binary files were intentionally added.
- Rollback: revert this branch commit or remove `MEMORY/KNOWLEDGE_REPLACE/`, `MEMORY/MIGRATION/`, and restore previous `README.md`, `UPDATE_PROCESS.md`, `MEMORY/INDEX.md`, and `CHANGES.md`.
