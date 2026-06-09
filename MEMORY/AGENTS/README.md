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
- `MANUFACTURER_CRAWL_AGENT.md`: manufacturer support, firmware, driver, lifecycle, alias, device identifier, security advisory and vendor-history crawl directive.

# # # # # # # # # # # # # # # # # #
# Manufacturer Crawl Agent #
# # # # # # # # # # # # # # # # # #

For manufacturer support portals, public knowledge bases, firmware metadata, driver metadata, error-code records, service bulletins, EOL/EOS data, security advisories, manufacturer histories, aliases and device identifiers, use:

- Specific directive: `/MEMORY/AGENTS/MANUFACTURER_CRAWL_AGENT.md`
- Manufacturer canonical area: `/MEMORY/MANUFACTURERS/`
- Firmware canonical area: `/MEMORY/FIRMWARE/`
- Security canonical area: `/MEMORY/SECURITY/`
- Alias registry: `/MEMORY/ALIASES/`
- Device identifier registry: `/MEMORY/DEVICE_IDENTIFIERS/`
- Lifecycle area: `/MEMORY/LIFECYCLE/`
- Dependency graph area: `/MEMORY/DEPENDENCIES/`
- Source trust area: `/MEMORY/SOURCE_TRUST/`
- Review queue: `/MEMORY/STATE/REVIEW_QUEUE.md`
- Crawl status: `/MEMORY/STATE/CRAWL_STATUS.md`

Manufacturer work must not duplicate canonical error, firmware, security, manual, alias or device identifier entries inside index files.
Index files should reference canonical entries only.

Before manufacturer work, read:

- `/AGENTS.md`
- `/MEMORY/AGENTS/GLOBAL_DIRECTIVE.md`
- `/MEMORY/AGENTS/GLOBAL_CRAWL_AGENT.md`
- `/MEMORY/AGENTS/MANUFACTURER_CRAWL_AGENT.md`
- `/MEMORY/SOURCE_REGISTRY.md`
- `/MEMORY/QUALITY_RULES.md`
- `/MEMORY/SCHEMA.md`
- `/CHANGES.md`
- `/UPDATE_PROCESS.md`

Manufacturer sources with unclear license, restricted access, login requirements, unknown crawl permission, unsupported binaries or proprietary full-text content are normally:

- `crawl_allowed: false` or `crawl_allowed: limited`
- `license_status: UNKNOWN` or `RESTRICTED`
- `content_policy: LINK_ONLY`
- `status: REVIEW_REQUIRED`

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
