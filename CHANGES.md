# # # # # # # # # # # #
# DR. DEBUG CHANGES.md #
# # # # # # # # # # # #

Version: 0.2.2
Status: ACTIVE
Scope: Repository change history for Dr. Debug /MEMORY/

# # # # # # # # # #
# 2026-06-14 #
# # # # # # # # # #

## docs(agents): add device hardware database ingestion directive

- Added `/MEMORY/AGENTS/DEVICE_HARDWARE_DATABASE_INGEST_AGENT.md`.
- Registered the new hardware ingest directive in `/MEMORY/AGENTS/README.md`.
- Created `/MEMORY/HARDWARE/INDEX.md` and `/MEMORY/HARDWARE/STATE.md` as the first bootstrap files for the hardware memory area.
- Checked existing repository governance files before writing.

## Review notes

- `/MEMORY/HARDWARE/INGEST_STATE.yaml` still needs to be created in a follow-up run; the write action for YAML state files was blocked by connector filtering in this run.
- Hardware device records and manufacturer YAML files were not imported in this run to avoid partially committed source records.

# # # # # # # # # #
# 2026-06-09 #
# # # # # # # # # #

## docs(memory): add index, Inspiron, Dell, HP and Lenovo follow-ups

- Updated `/MEMORY/INDEX/MANUFACTURERS/README.md` with Lenovo navigation.
- Added `/MEMORY/SOURCES/DELL/INSPIRON_FAMILY_ENTRY.md` as an alternate neutral Inspiron source path.
- Added `/MEMORY/SOURCES/DELL/LATITUDE_5450_OVERVIEW.md`.
- Added `/MEMORY/SOURCE_TRUST/LENOVO_COM.md`.
- Confirmed Lenovo profile and Lenovo README already existed and were preserved.
- Dell Latitude 5450 now has one dedicated source shell.
- HP EliteBook 840 G11 remains a review shell because a concrete official HP support path was not verified in this run.
- No final product-specific facts were added.

## feat(memory): add source shells and model review shells

- Added HP source-register shells for Spectre, Envy and Pavilion.
- Existing HP source-register shells for EliteBook and ProBook were preserved.
- Added Dell source shells for Latitude, Precision and XPS planning targets.
- Added Dell Latitude 5450 as a neutral model pilot shell.
- Added HP EliteBook 840 G11 as a neutral review shell.
- Dell Inspiron family source shell remains a follow-up target because creation was blocked by safety filtering.
- No final product-specific facts were added in this run.

## feat(memory): add HP family skeletons and improve Dell source registers

- Added HP family skeletons for ZBook, EliteBook, ProBook, Spectre, Envy and Pavilion.
- Updated Dell source registers for Latitude, Precision, XPS and Inspiron.
- Kept HP family files as `STATUS_RESEARCH_REQUIRED` skeletons.
- Kept Dell source registers as routing/checklist files, not model-specific evidence.

## docs(memory): improve indexes and Dell research gates

- Added `/MEMORY/TEMPLATES/README.md`.
- Added `/MEMORY/INDEX/MANUFACTURERS/README.md`.
- Added `/MEMORY/SOURCE_TRUST/HP_COM.md`.
- Updated Dell family research gates.
- HP manufacturer files already existed and were preserved rather than overwritten.

## Review notes

- Product-specific Dell, HP and Lenovo pages still require separate review before detailed entries are created.
- Customer-specific values must not be stored.
- Vendor files must not be mirrored.

# # # # # # # # # # # # #
# Maintenance Rules #
# # # # # # # # # # # # #

Every future repository-changing agent run must update this file with:

1. date,
2. affected gates,
3. created files,
4. changed files,
5. removed or superseded files,
6. review notes,
7. suggested or executed commit message.
