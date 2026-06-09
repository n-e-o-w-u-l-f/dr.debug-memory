# # # # # # # # # # # #
# DR. DEBUG CHANGES.md #
# # # # # # # # # # # #

Version: 0.2.0
Status: ACTIVE
Scope: Repository change history for Dr. Debug /MEMORY/

# # # # # # # # # #
# 2026-06-09 #
# # # # # # # # # #

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

- Product-specific Dell and HP pages still require separate review before detailed entries are created.
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
