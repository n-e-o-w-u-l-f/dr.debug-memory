# DR. DEBUG CHANGES.md

Version: 0.2.6
Status: ACTIVE
Scope: Repository change history for Dr. Debug /MEMORY/

# 2026-06-15

## feat(memory): bootstrap manufacturer registry

- Added `/MEMORY/MANUFACTURERS/README.md`.
- Added `/MEMORY/MANUFACTURERS/INDEX.md`.
- Added `/MEMORY/MANUFACTURERS/manufacturers.jsonl`.
- Added `/MEMORY/MANUFACTURERS/manufacturers_aliases.md`.
- Added `/MEMORY/MANUFACTURERS/manufacturer_research_log.md`.
- Added `/MEMORY/MANUFACTURERS/candidates_needing_review.md`.
- Imported 6 verified manufacturer records for the initial mainboard / bios_uefi / firmware round.
- Reduced connector filter pressure by using smaller commits and shorter index text.

## Review notes

- `manufacturers.jsonl` is the canonical data file.
- Link-heavy Markdown index updates were blocked by the connector and should be retried locally or in smaller future edits.
- AMD, AMI and Insyde Software are staged for a later follow-up round.

## Suggested commit message

feat(memory): bootstrap manufacturer registry

# 2026-06-14

## docs(agents): add versioned knowledge directives

- Added `/MEMORY/AGENTS/VERSIONED_ERROR_KNOWLEDGE_AGENT.md`.
- Added `/MEMORY/AGENTS/PHP_ERROR_DATABASE_VERSIONING_EXTENSION.md`.
- Added `/MEMORY/TEMPLATES/VERSIONED_ERROR_ENTRY_TEMPLATE.md`.
- Updated `/MEMORY/INDEX.md`.
- The PHP error database now requires per-version behavior, diagnosis, fix, regression and source matrices.
- The general versioned directive also covers evolving software packages, runtimes, frameworks and device-specific technical components.

## Review notes

- `/MEMORY/AGENTS/README.md` still needs a navigation entry.
- `/MEMORY/PHP/ERRORS/VERSION_MATRIX/` and `/MEMORY/VERSIONED_KNOWLEDGE/` are target structures for later data imports.
- No factual PHP error records were imported in this run; this run changed agent governance and templates only.

## Suggested commit message

docs(agents): add versioned error knowledge directives

## docs(agents): update hardware knowledge directive

- Updated `/MEMORY/AGENTS/DEVICE_HARDWARE_DATABASE_INGEST_AGENT.md`.
- Updated `/MEMORY/HARDWARE/INDEX.md`.
- Updated `/MEMORY/HARDWARE/STATE.md`.
- Updated `/UPDATE_PROCESS.md`.
- No factual catalog records were imported in this run.

## docs(software): bootstrap software package knowledge agent

- Added `/MEMORY/AGENTS/SOFTWARE_PACKAGE_KNOWLEDGE_AGENT.md`.
- Added `/MEMORY/SOFTWARE/INDEX.md`.
- Added `/MEMORY/TEMPLATES/SOFTWARE_PACKAGE_ENTRY_TEMPLATE.md`.
- Added `/MEMORY/SOFTWARE/CHECKPOINTS/software-package-research-progress.md`.
- Updated `/MEMORY/INDEX.md`.
- Preserved the root index navigation areas.
- Checked existing governance files before writing.

## Review notes

- No package data was imported in this bootstrap run.
- No package database was copied.
- `MEMORY/AGENTS/README.md` still needs a software-agent navigation entry.

# Maintenance Rules

Every future repository-changing agent run must update this file with date, affected gates, created files, changed files, removed or superseded files, review notes and commit message.
