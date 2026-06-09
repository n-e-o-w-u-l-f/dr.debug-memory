# # # # # # # # # # # #
# DR. DEBUG CHANGES.md #
# # # # # # # # # # # #

Version: 0.1.2
Status: ACTIVE
Scope: Repository change history for Dr. Debug /MEMORY/

# # # # # # # # # #
# 2026-06-09 #
# # # # # # # # # #

## docs(agents): add manufacturer agent directive

- Added `/MEMORY/AGENTS/MANUFACTURER_CRAWL_AGENT.md`.
- Updated `/MEMORY/AGENTS/README.md`.
- Read and preserved `/AGENTS.md`.
- No data batch was executed in this run.
- Follow-up: add `/MEMORY/INDEX.md` navigation entry when possible.

## chore(memory): bootstrap memory governance files

- Added repository hygiene rules through `.gitignore`.
- Added initial change log.
- Added `UPDATE_PROCESS.md`.
- Added `/MEMORY/MEMORY.md`.
- Added `/MEMORY/SCHEMA.md`.
- Added `/MEMORY/QUALITY_RULES.md`.
- Added `/MEMORY/SOURCE_REGISTRY.md`.
- Added `/MEMORY/NAMING_CONVENTIONS.md`.
- Added `/MEMORY/DEDUPLICATION_RULES.md`.
- Added `/MEMORY/RESEARCH_RULES.md`.
- Added `/MEMORY/SOURCES/` source bucket files.
- Added `/MEMORY/STATE/TODO.md` and `/MEMORY/STATE/CRAWL_STATUS.md`.

## docs(agents): add global crawl directive

- Added `/MEMORY/AGENTS/GLOBAL_CRAWL_AGENT.md`.
- Added `/MEMORY/AGENTS/README.md`.
- Preserved existing root `/AGENTS.md`; it was read and not overwritten.

## chore(memory): add initial templates

- Added `/MEMORY/TEMPLATES/SOFTWARE_ENTRY_TEMPLATE.md`.
- Added `/MEMORY/TEMPLATES/SOURCE_ENTRY_TEMPLATE.md`.

## docs(agents): add manual catalog directive

- Added `/MEMORY/AGENTS/MANUAL_CATALOG_AGENT.md`.
- Added `/MEMORY/AGENTS/GLOBAL_DIRECTIVE.md`.
- Updated `/MEMORY/AGENTS/README.md`.
- Added `/MEMORY/INDEX.md`.
- Added `/MEMORY/INDEX/MANUALS/README.md`.
- Added `/MEMORY/STATE/REVIEW_QUEUE.md`.
- Updated `/MEMORY/STATE/CRAWL_STATUS.md`.
- Updated `.gitignore`.

## Review notes

- Some writes were blocked by connector filtering and need follow-up in a later small commit.
- No external crawl batch was executed in this run.

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
