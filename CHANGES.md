# DR. DEBUG CHANGES.md

Version: 0.8.7-endpoint-count-consistency-sync
Status: ACTIVE
Scope: Repository change history for Dr. Debug /MEMORY/

## 2026-06-25

### docs(memory): sync endpoint count validation navigation and public status

* Updated `README.md` so the public `Wissensstand` block exposes the endpoint validation report status: `PASS_STATIC_CHECK`.
* Updated `README.md` agent-relevant file list with `MEMORY/SCANNERS/count_endpoint_matrix_scan.py` and `MEMORY/REPORTS/VALIDATION/endpoint-count-matrix-scan.md`.
* Updated `MEMORY/INDEX.md` so endpoint count navigation includes the implemented scanner script and validation report, not just scanner planning rules.
* Updated `MEMORY/SCANNERS/count_scan_rules.md` from the rejected `tools/count_endpoint_matrix_scan.py` pseudo-path to the allowed implemented path `MEMORY/SCANNERS/count_endpoint_matrix_scan.py`.
* Updated `MEMORY/REPORTS/VALIDATION/endpoint-count-matrix-scan.md` to mark README, INDEX, scanner-rule and CHANGES consistency as synced.
* No canonical MEMORY records, status promotions, binaries, downloads, archive uploads, raw crawl dumps, copyrighted manual mirrors, public rehosting artifacts, force-pushes, history rewrites or destructive deletes were added.
* Rollback: revert `README.md`, `MEMORY/INDEX.md`, `MEMORY/SCANNERS/count_scan_rules.md`, `MEMORY/REPORTS/VALIDATION/endpoint-count-matrix-scan.md` and this `CHANGES.md` entry.

### test(memory): add endpoint count matrix scanner and validation report

* Added `MEMORY/SCANNERS/count_endpoint_matrix_scan.py` as a read-only validator for `MEMORY/INDEXES/endpoint_count_matrix.md` after `tools/` was rejected by repository path policy.
* Added `MEMORY/REPORTS/VALIDATION/endpoint-count-matrix-scan.md` with the first static validation report for the endpoint-count matrix.
* Validation scope: required columns, visible endpoint row count, duplicate normalized names, forbidden `_GLOBAL` prefix, metadata-only candidates, relationship-only candidates, path-specific prefix explosions and required row status `COUNT_SCAN_REQUIRED`.
* Result: `PASS_STATIC_CHECK` for 67 visible endpoint rows, 0 duplicate normalized names, no forbidden `_GLOBAL` prefixes and required columns present.
* No canonical MEMORY records, status promotions, binaries, downloads, archive uploads, raw crawl dumps, copyrighted manual mirrors, public rehosting artifacts, force-pushes, history rewrites or destructive deletes were added.
* Rollback: remove `MEMORY/SCANNERS/count_endpoint_matrix_scan.py`, remove `MEMORY/REPORTS/VALIDATION/endpoint-count-matrix-scan.md`, and revert this `CHANGES.md` entry.

### docs(memory): index endpoint count matrix navigation

* Updated `MEMORY/INDEX.md` to add endpoint count matrix navigation for `MEMORY/INDEXES/endpoint_count_matrix.md`, `MEMORY/INDEXES/endpoint_count_rules.md` and `MEMORY/SCANNERS/count_scan_rules.md`.
* Preserved the existing foundation, scaffold, seed proposal, release, migration, BATCH audit and Linux manpages navigation sections.
* Kept endpoint count data as navigation/planning only; no canonical MEMORY records were promoted.
* No binaries, downloads, raw crawl dumps, copyrighted manual mirrors, archive uploads, public rehosting artifacts, force-pushes, history rewrites or destructive deletes were added.
* Validation: static link/reference check confirmed the endpoint matrix file exists on `main`; required visible endpoint matrix status remains `COUNT_SCAN_REQUIRED`.
* Rollback: revert `MEMORY/INDEX.md` and this `CHANGES.md` update to the previous commit state.

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

### docs(manifests): document blocked destructive batch cleanup

* Updated `MEMORY/REPORTS/AUDIT/BATCH_IMPORT_SUMMARY.md` to version 0.2.1 as the single active review/index point for historical `MANIFEST_BATCH*`, `README_IMPORTANT_BATCH*`, and `SOURCES_RESEARCHED_BATCH*` artifacts.
* Attempted destructive dry-run tombstoning for legacy root and `MANIFESTS/` batch files after owner supplied `DRDEBUG_DESTRUCTIVE=TRUE`.
* Dry-run rejected tombstoning of legacy batch files because those paths are outside the server write path-policy.
* No physical delete, tombstone overwrite, canonical MEMORY promotion, binaries, downloads, archive uploads, raw crawl dumps, rehosting artifacts, force-pushes or history rewrites were performed.
* Redaction/static safety review: no secrets, credentials, customer data, serials, raw logs, raw crawl dumps or binary files were intentionally added.
* Rollback: revert `MEMORY/REPORTS/AUDIT/BATCH_IMPORT_SUMMARY.md` and this `CHANGES.md` entry to the previous commit state.

## 2026-06-21

### docs(admin): add next 100 safe maintenance roadmap gate reports

* Added `MEMORY/ROADMAPS/RM-20260619-next-100-safe-steps.md` as a bounded 100-step maintenance roadmap.
* Added `MEMORY/PROPOSALS/BATCHES/MP-20260619-next-four-25-step-batches.md` as four 25-item gate-checked review batches.
* Added `MEMORY/REPORTS/VALIDATION/VR-20260619-next-100-roadmap-gate-report.md` as the validation gate report for this safe subset.
* Added `MEMORY/REPORTS/NEXT_ACTIONS/NA-20260619-next-3-directions.md` with the next three work directions and next three concrete items.
* No canonical MEMORY records were promoted.
* No binaries, downloads, archive uploads, raw crawl dumps, rehosting artifacts, login/paywall bypasses, force-pushes, history rewrites, destructive deletes or broad reclassifications were added.
* Redaction/static safety review: no secrets, credentials, customer data, serials, raw logs or private local paths were intentionally added.
* Validation: repository gate/dry-run checks were performed in chat; local-clone grep, CI-like checks and complete duplicate scan remain required before any promotion.
* Rollback: revert the four added roadmap/report files and this `CHANGES.md` entry.

### docs(memory): add programs seed proposal batch 001

* Added `MEMORY/PROPOSALS/BATCHES/MP-20260621-programs-seed-batch-001.md` with 100 proposal-only program/application/software-tool discovery candidates.
* Updated `MEMORY/PROPOSALS/BATCHES/INDEX.md` with a Programs proposals section.
* Added `MEMORY/STATE/CURSORS/programs.md` with `next_offset: 100`.
* Used `MEMORY/SOURCES/SOURCE_REGISTRY.md` as the source-review context for later canonical import.
* No canonical SOFTWARE/PROGRAMS records were promoted.
* No versions, compatibility claims, official URL claims, binaries, installers, downloads, archive uploads, raw crawl dumps, rehosting artifacts, force-pushes or destructive migrations were added.
* Redaction/static safety review: no secrets, credentials, customer data, serials, raw logs or local paths were intentionally added.
* Rollback: revert `MEMORY/PROPOSALS/BATCHES/MP-20260621-programs-seed-batch-001.md`, `MEMORY/PROPOSALS/BATCHES/INDEX.md`, `MEMORY/STATE/CURSORS/programs.md` and this `CHANGES.md` update to the previous commit state.

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
* Updated `MEMORY/INDEX.md` to reference `MEMORY/KNOWLEDGE_REPLACE/07_MASTER_KNOWLEDGE_BASE_PIPELINE.md` as part of the consolidated Knowledge routing.
* Updated `MEMORY/MIGRATION/OLD_FILES_TO_REMOVE_OR_TOMBSTONE.md` to mark legacy Knowledge directives as tombstone/alias references instead of deleting them.
* Updated `MEMORY/MIGRATION/MIGRATION_MAP.md` to document tombstone/alias handling and the new `MEMORY/KNOWLEDGE_REPLACE/07_MASTER_KNOWLEDGE_BASE_PIPELINE.md` overlay.
* No legacy directive files were deleted in this pass.
* No canonical MEMORY records, status promotions, binaries, downloads, archive uploads, raw crawl dumps or binary files were intentionally added.
* Redaction/static safety review: no secrets, credentials, customer data, serials, raw logs, raw crawl dumps or binary files were intentionally added.
* Rollback: revert the README, `MEMORY/INDEX.md`, `MEMORY/KNOWLEDGE_REPLACE/07_MASTER_KNOWLEDGE_BASE_PIPELINE.md`, `MEMORY/MIGRATION/OLD_FILES_TO_REMOVE_OR_TOMBSTONE.md`, `MEMORY/MIGRATION/MIGRATION_MAP.md`, and this `CHANGES.md` update to their previous commit state.
