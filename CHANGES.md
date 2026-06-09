# # # # # # # # # # # #
# DR. DEBUG CHANGES.md #
# # # # # # # # # # # #

Version: 0.1.6
Status: ACTIVE
Scope: Repository change history for Dr. Debug /MEMORY/

# # # # # # # # # #
# 2026-06-09 #
# # # # # # # # # #

## feat(memory): add Dell family pilot entries

- Added `/MEMORY/MANUFACTURERS/DELL/README.md`.
- Added `/MEMORY/INDEX/DELL/README.md`.
- Added `/MEMORY/MANUFACTURERS/DELL/LATITUDE.md`.
- Added `/MEMORY/MANUFACTURERS/DELL/PRECISION.md`.
- Added `/MEMORY/MANUFACTURERS/DELL/XPS.md`.
- Added `/MEMORY/MANUFACTURERS/DELL/INSPIRON.md`.
- Kept all family entries as pilot skeletons with `STATUS_RESEARCH_REQUIRED`.
- Used only the official Dell support home as a general entrypoint source.
- No model-specific Dell driver, firmware, BIOS, lifecycle or repair claims were added.

## feat(memory): start Dell manufacturer pilot

- Added `/MEMORY/TEMPLATES/MANUFACTURER_PROFILE_TEMPLATE.md`.
- Added `/MEMORY/TEMPLATES/SOURCE_TRUST_ENTRY_TEMPLATE.md`.
- Added `/MEMORY/TEMPLATES/DEVICE_IDENTIFIER_ENTRY_TEMPLATE.md`.
- Added `/MEMORY/MANUFACTURERS/DELL/PROFILE.md`.
- Added `/MEMORY/SOURCES/DELL/DELL_SUPPORT_HOME.md`.
- Added `/MEMORY/SOURCE_TRUST/DELL_COM.md`.
- Added `/MEMORY/DEVICE_IDENTIFIERS/DELL/SERVICE_TAG_TYPE.md`.
- Used only official public Dell start URLs for pilot skeleton entries.
- No product-specific Dell crawl was executed in this run.

## docs(memory): refine manufacturer batch planning

- Updated `/MEMORY/PROPOSALS/MANUFACTURER_BATCH_0001_PC_LAPTOP_2026-06-09.md`.
- Split `BATCH-0001_PC_LAPTOP` into Consumer, Business, Workstation, Linux-focused and Mini/SFF sub-batches.
- Kept Dell as first pilot manufacturer.
- Removed Apple from Batch 0001 and planned it as a separate platform batch.
- Expanded the manufacturer list.
- Added `/MEMORY/PROPOSALS/MANUFACTURER_BATCH_0002_APPLE_PLATFORM_2026-06-09.md`.
- Checked official public start points for Dell, Lenovo and Apple for planning context.
- No external crawl batch was executed in this run.

## docs(memory): add manufacturer batch plan

- Added `/MEMORY/INDEX/AGENTS/MANUFACTURER_CRAWL_AGENT.md` as a navigational fallback because direct root index editing was blocked.
- Added `/MEMORY/PROPOSALS/MANUFACTURER_BATCH_0001_PC_LAPTOP_2026-06-09.md`.
- Planned first manufacturer batch: `BATCH-0001_PC_LAPTOP`.
- No external data batch was executed in this run.

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

- Direct `/MEMORY/INDEX.md` update was blocked by connector filtering; `/MEMORY/INDEX/AGENTS/MANUFACTURER_CRAWL_AGENT.md` was created instead.
- Product-specific Dell pages still require separate review before creating firmware, driver, BIOS, lifecycle or error-code entries.
- Real Dell Service Tag values must never be stored.

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
