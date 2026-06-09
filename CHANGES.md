# # # # # # # # # # # #
# DR. DEBUG CHANGES.md #
# # # # # # # # # # # #

Version: 0.1.0
Status: ACTIVE
Scope: Repository change history for Dr. Debug /MEMORY/

# # # # # # # # # #
# 2026-06-09 #
# # # # # # # # # #

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

## Review notes

- Some writes were blocked by connector safety filtering and need follow-up in a later small commit.
- Blocked paths included `/MEMORY/INDEX.md`, selected state files, and selected templates.
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
6. safety or review notes,
7. suggested or executed commit message.
