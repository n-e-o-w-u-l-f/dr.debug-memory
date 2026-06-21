# DR. DEBUG CHANGES.md
Version: 0.8.0-consolidated-knowledge
Status: ACTIVE
Scope: Repository change history for Dr. Debug /MEMORY/

# 2026-06-21

## docs(cleanup): consolidate CustomGPT Knowledge into active repository directives

* Consolidated active CustomGPT Knowledge rules into repository-maintained directives and MEMORY governance files.
* Added repository-wide cleanup rule: transitional proposal, manifest, validation and migration files are not canonical after relevant content is transferred into active directives, canonical MEMORY paths, indexes and CHANGES.md.
* Defined Proposal files as working material, not end state; completed proposal content must move into the matching canonical MEMORY path.
* Preserved Owner/Admin gates, Customer Mode limits, evidence/dedupe/redaction rules, source hierarchy, README matrix duty, unknown-device/manufacturer intake and tool-claim discipline.
* No files were deleted in this pass.
* No canonical MEMORY facts were promoted without source/evidence review.
* Rollback: restore previous `UPDATE_PROCESS.md` and `CHANGES.md` versions from Git history.

## docs(policy): apply consolidated CustomGPT Knowledge v0.8.0 under MEMORY paths

* Added the seven consolidated CustomGPT Knowledge files under `MEMORY/KNOWLEDGE_REPLACE/`.
* Added migration references under `MEMORY/MIGRATION/`.
* Updated `README.md` with the consolidated Knowledge file list, migration references and README Wissensmatrix.
* Updated `UPDATE_PROCESS.md` and `MEMORY/INDEX.md` with consolidated Knowledge routing and README matrix duties.
* Added `MEMORY/KNOWLEDGE_REPLACE/MANIFEST.json` and `MEMORY/KNOWLEDGE_REPLACE/VALIDATION.md` for package validation.
* No old Knowledge files were deleted or tombstoned in this pass.
* No canonical MEMORY records, status promotions, binaries, downloads, archive uploads, raw crawl dumps, rehosting artifacts, force-pushes or destructive migrations were added.
* Redaction/static safety review: no secrets, credentials, customer data, serials, raw logs, raw crawl dumps or binary files were intentionally added.
* Rollback: revert this branch commit or remove `MEMORY/KNOWLEDGE_REPLACE/`, `MEMORY/MIGRATION/`, and restore previous `README.md`, `UPDATE_PROCESS.md`, `MEMORY/INDEX.md`, and `CHANGES.md`.
