# # # # # # # # # # # # # #
# DR. DEBUG AGENTS README #
# # # # # # # # # # # # # #

Status: ACTIVE
Scope: Agent directive index for Dr. Debug /MEMORY/

# # # # # # # #
# Purpose #
# # # # # # # #

This directory stores durable agent directives for repository work.

Chat instructions are temporary unless stored here or in `/AGENTS.md`.

# # # # # # # # # #
# Active Directives #
# # # # # # # # # #

- `GLOBAL_CRAWL_AGENT.md`: global crawl, curation, deduplication, indexing and validation directive.
- `MANUAL_CATALOG_AGENT.md`: manual, manpage, datasheet, service documentation, recovery guide and technical reference catalog directive.

# # # # # # # # # #
# Manual Catalog Agent #
# # # # # # # # # #

For manuals, manpages, service manuals, datasheets, installation guides, recovery guides and technical references, use:

- Specific directive: `/MEMORY/AGENTS/MANUAL_CATALOG_AGENT.md`
- Canonical manual content: `/MEMORY/MANUALS/`
- Manual index: `/MEMORY/INDEX/MANUALS/`
- Manual template: `/MEMORY/TEMPLATES/MANUAL_ENTRY_TEMPLATE.md`
- Review queue: `/MEMORY/STATE/REVIEW_QUEUE.md`
- Crawl status: `/MEMORY/STATE/CRAWL_STATUS.md`

Manual content must not be duplicated in software, hardware, service, vendor or error-code files.
Those files should reference canonical manual entries through `related_manuals`.

Before manual work, read:

- `/AGENTS.md`
- `/MEMORY/AGENTS/GLOBAL_DIRECTIVE.md`
- `/MEMORY/AGENTS/MANUAL_CATALOG_AGENT.md`
- `/MEMORY/SOURCE_REGISTRY.md`
- `/MEMORY/INDEX/MANUALS/README.md`
- `/MEMORY/QUALITY_RULES.md`
- `/MEMORY/SCHEMA.md`

Unclear licenses, proprietary service manuals, schematics, boardviews and restricted manufacturer PDFs are normally:

- `license_status: UNKNOWN` or `RESTRICTED`
- `content_policy: LINK_ONLY`
- `status: REVIEW_REQUIRED`

# # # # # # # # # # # #
# Merge Rules #
# # # # # # # # # # # #

1. Do not keep contradictory directives active without comment.
2. Merge older rules into newer directives when useful.
3. Mark superseded directives clearly.
4. Update `/CHANGES.md` after directive changes.
5. Preserve user-provided rules unless they are unsafe or contradicted by stronger repository rules.
