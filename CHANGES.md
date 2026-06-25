# DR. DEBUG CHANGES.md

Version: 0.8.4-endpoint-count-matrix
Status: ACTIVE
Scope: Repository change history for Dr. Debug /MEMORY/

## 2026-06-25

### feat(memory): add global endpoint count matrix planning

* Added `MEMORY/INDEXES/endpoint_count_matrix.md` with a flat global visible endpoint-count matrix and `COUNT_SCAN_REQUIRED` status.
* Added `MEMORY/INDEXES/endpoint_count_rules.md` with countable endpoint rules, deep-tree filter/relation handling, TV handling and HTTP/network handling.
* Added `MEMORY/SCANNERS/count_scan_rules.md` with scanner planning checks for required columns, duplicates, forbidden prefixes, metadata-only candidates, relationship-only candidates and markdown table shape.
* Updated `MEMORY/QUALITY_RULES.md` with endpoint-count matrix quality gates.
* Updated `README.md` with an endpoint-count matrix status section.
* Updated `UPDATE_PROCESS.md` with the endpoint-count matrix update gate.
* No canonical MEMORY records, status promotions, binaries, downloads, archive uploads, raw crawl dumps, copyrighted manual mirrors, rehosting artifacts, force-pushes or destructive migrations were added.
* Validation: static matrix validation checked 67 visible endpoint rows, 0 duplicate names, no `_GLOBAL` prefixes and required table columns present.
* Rollback: revert `MEMORY/INDEXES/endpoint_count_matrix.md`, `MEMORY/INDEXES/endpoint_count_rules.md`, `MEMORY/SCANNERS/count_scan_rules.md`, `MEMORY/QUALITY_RULES.md`, `README.md`, `UPDATE_PROCESS.md` and this `CHANGES.md` update to the previous commit state.

## 2026-06-24

### docs(manifests): consolidate batch manifest/readme/source lineage summary

* Added `MEMORY/REPORTS/AUDIT/BATCH_IMPORT_SUMMARY.md` as the active review index for observed `MANIFEST_BATCH*`, `README_IMPORTANT_BATCH*`, and `SOURCES_RESEARCHED_BATCH*` transition artifacts.
* Consolidated the observed Batch 4-9 lineage into one navigation file without promoting any proposal records to canonical MEMORY status.
* Documented that root `MANIFEST_BATCH7.json`, root `MANIFEST_BATCH8.json`, root `MANIFEST_BATCH9.json`, and root `SOURCES_RESEARCHED_BATCH8.md` were not visible in the inspected root listing; batch 8 and 9 manifests are under `MANIFESTS/`.
* No legacy batch files were deleted or tombstoned in this pass because the destructive gate was not provided.
* No canonical MEMORY records, status promotions, binaries, downloads, archive uploads, raw crawl dumps, rehosting artifacts, force-pushes or destructive migrations were added.
* Redaction/static safety review: no secrets, credentials, customer data, serials, raw logs, raw crawl dumps or binary files were intentionally added.
* Rollback: revert `MEMORY/REPORTS/AUDIT/BATCH_IMPORT_SUMMARY.md` and this `CHANGES.md` update to the previous commit state.

## 2026-06-21

### docs(memory): add next foundation layer for schema, quality, sources and proposals

* Added static master-pipeline linkcheck validation artifact.
* Added README matrix renderer specification.
* Added `MEMORY/SCHEMA.md` and `MEMORY/QUALITY_RULES.md`.
* Added `MEMORY/SOURCES/SOURCE_REGISTRY.md` and source-area scaffold.
* Added proposal templates for devices, diagnoses, source records and taxonomy nodes.
* Added generation-/bit-hotspot scaffold README files for retro console, retro computer, diagnose, sources, proposals, aliases and indexes.
* Added five non-canonical seed proposals for NES/Famicom, Sega Master System, SNES/Super Famicom, Sega Mega Drive/Genesis and Sony PlayStation/PSX.
* Added release notes, validation summary and rollback plan for v0.8.1 master-pipeline foundation layer.
* Updated `README.md` with foundation-layer navigation and proposal counts in the visible status matrix.
* Updated `MEMORY/INDEX.md` with foundation-layer navigation.
* No legacy directive files were deleted.
* No canonical MEMORY records were promoted.
* No binaries, downloads, archive uploads, raw crawl dumps, rehosting artifacts, force-pushes or destructive migrations were added.
* Rollback: revert the files listed in `MEMORY/RELEASES/v0.8.1-master-pipeline/ROLLBACK.md` to their previous commit state.

### docs(readme): sync active Knowledge table with master pipeline overlay

* Updated `README.md` so the active Knowledge table includes `MEMORY/KNOWLEDGE_REPLACE/07_MASTER_KNOWLEDGE_BASE_PIPELINE.md`.
* Kept the README matrix markers and generation-/bit-hotspot status matrix unchanged.
* No legacy directive files were deleted in this pass.
* No canonical MEMORY records, status promotions, binaries, downloads, archive uploads, raw crawl dumps, rehosting artifacts, force-pushes or destructive migrations were added.
* Rollback: revert `README.md` and this `CHANGES.md` update to the previous commit state.

### docs(validation): sync manifest and validation with master pipeline overlay

* Updated `MEMORY/KNOWLEDGE_REPLACE/MANIFEST.json` from the v0.8.0 seven-file package to the v0.8.1 master-pipeline package.
* Added `MEMORY/KNOWLEDGE_REPLACE/07_MASTER_KNOWLEDGE_BASE_PIPELINE.md` to the active Knowledge file list.
* Updated `MEMORY/KNOWLEDGE_REPLACE/VALIDATION.md` to validate eight active Knowledge files, the master overlay, README matrix markers, tombstone/alias policy and non-destructive migration limits.
* No legacy directive files were deleted in this pass.
* Rollback: revert `MEMORY/KNOWLEDGE_REPLACE/MANIFEST.json`, `MEMORY/KNOWLEDGE_REPLACE/VALIDATION.md`, and this `CHANGES.md` update to the previous commit state.

### policy(memory): add master taxonomy pipeline and generation-bit README matrix

* Updated `README.md` with a generation-/bit-hotspot status matrix between `DRDEBUG_DATABASE_STATUS_START` and `DRDEBUG_DATABASE_STATUS_END`.
* Added the Master-Pipeline policy section to `README.md` so retro console/platform taxonomy is anchored by historical generation plus bit-/CPU-/bus-/graphics-/memory architecture before manufacturer branches.
* Added `MEMORY/KNOWLEDGE_REPLACE/07_MASTER_KNOWLEDGE_BASE_PIPELINE.md` as the non-destructive master directive for taxonomy, evidence lifecycle, README matrix sync, rollback and Owner/Admin gates.
* Updated `MEMORY/INDEX.md` to reference `07_MASTER_KNOWLEDGE_BASE_PIPELINE.md` as part of the consolidated Knowledge routing.
* Updated `MEMORY/MIGRATION/OLD_FILES_TO_REMOVE_OR_TOMBSTONE.md` to mark legacy Knowledge directives as tombstone/alias references instead of deleting them.
* Updated `MEMORY/MIGRATION/MIGRATION_MAP.md` to document tombstone/alias handling and the new `07_MASTER_KNOWLEDGE_BASE_PIPELINE.md` overlay.
* No legacy directive files were deleted in this pass.
* No canonical MEMORY records, status promotions, binaries, downloads, archive uploads, raw crawl dumps, rehosting artifacts, force-pushes or destructive migrations were added.
* Redaction/static safety review: no secrets, credentials, customer data, serials, raw logs, raw crawl dumps or binary files were intentionally added.
* Rollback: revert the README, `MEMORY/INDEX.md`, `MEMORY/KNOWLEDGE_REPLACE/07_MASTER_KNOWLEDGE_BASE_PIPELINE.md`, `MEMORY/MIGRATION/OLD_FILES_TO_REMOVE_OR_TOMBSTONE.md`, `MEMORY/MIGRATION/MIGRATION_MAP.md`, and this `CHANGES.md` update to the previous commit state.
