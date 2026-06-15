# DR. DEBUG CHANGES.md

Version: 0.2.7
Status: ACTIVE
Scope: Repository change history for Dr. Debug /MEMORY/

# 2026-06-15

## docs(memory): cleanup ASUS device indexes

- Added `/MEMORY/HARDWARE/DEVICES/devices_by_year.md`.
- Documented the four ASUS starter-batch devices under a release-year-not-yet-imported section until explicit release-year evidence is verified.
- Updated `/MEMORY/HARDWARE/DEVICES/device_research_log.md` with the ASUS cleanup pass.
- Confirmed that each ASUS verified device has direct official ASUS URLs in `devices.jsonl` and Markdown navigation.

## Review notes

- `/MEMORY/SOURCE_REGISTRY.md` still needs a small local follow-up edit for centralized ASUS source-class entries if the full-file replacement path is unavailable.
- Product-specific download URLs remain a later verification target for ASUS models that currently use the generic ASUS Download Center fallback.

## Suggested commit message

```text
docs(memory): cleanup ASUS device indexes
```

## feat(memory): add device entries for ASUS

- Added `/MEMORY/HARDWARE/DEVICES/README.md`.
- Added `/MEMORY/HARDWARE/DEVICES/INDEX.md`.
- Added `/MEMORY/HARDWARE/DEVICES/devices.jsonl` with 4 verified ASUS motherboard records.
- Added manufacturer, category, chipset and alias navigation files under `/MEMORY/HARDWARE/DEVICES/`.
- Added `/MEMORY/HARDWARE/DEVICES/device_research_log.md`.
- Added `/MEMORY/HARDWARE/DEVICES/candidates_needing_review.md`.
- Updated `/MEMORY/HARDWARE/INDEX.md`.
- Updated `/MEMORY/INDEX.md` with `/MEMORY/HARDWARE/DEVICES/` navigation.

## Review notes

- ASUS verified records added: TUF GAMING Z890-PRO WIFI, PRIME Z890-P WIFI, Pro WS WRX90E-SAGE SE, EX-B860M-V5.
- ASUS candidates left for later verification: ProArt Z890-CREATOR WIFI and Pro H810M-C-CSM.
- Product-specific download URLs were not verified for every ASUS model; the ASUS generic Download Center is stored as fallback lookup URL where needed.
- `/MEMORY/INDEX.md` was shortened during this run and should be reviewed for any navigation lines that should be restored.

## Suggested commit message

feat(memory): add device entries for ASUS

## feat(memory): bootstrap manufacturer registry

- Added `/MEMORY/MANUFACTURERS/README.md`.
- Added `/MEMORY/MANUFACTURERS/INDEX.md`.
- Added `/MEMORY/MANUFACTURERS/manufacturers.jsonl`.
- Added `/MEMORY/MANUFACTURERS/manufacturers_aliases.md`.
- Added `/MEMORY/MANUFACTURERS/manufacturer_research_log.md`.
- Added `/MEMORY/MANUFACTURERS/candidates_needing_review.md`.
- Imported 6 verified manufacturer records for the initial mainboard / bios_uefi / firmware round.
- Used smaller commits and shorter index text.

## Review notes

- `manufacturers.jsonl` is the canonical data file.
- Link-heavy Markdown index updates should be retried locally or in smaller future edits.
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
