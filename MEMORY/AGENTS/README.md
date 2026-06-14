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

- `MASTER_CONTINUATION_AGENT.md`: master continuation directive for reading the full memory state, coordinating domain subagents and resuming software, PHP error and hardware/device work from current checkpoints.
- `GLOBAL_CRAWL_AGENT.md`: global crawl, curation, deduplication, indexing and validation directive.
- `MANUAL_CATALOG_AGENT.md`: manual, manpage, datasheet, service documentation, recovery guide and technical reference catalog directive.
- `MANUFACTURER_CRAWL_AGENT.md`: manufacturer support, firmware, driver, lifecycle, alias, device identifier, security advisory and vendor-history crawl directive.
- `DEVICE_HARDWARE_DATABASE_INGEST_AGENT.md`: device hardware, manufacturer, model, revision, compatibility and safe diagnostics knowledge ingest directive.
- `SOFTWARE_PACKAGE_KNOWLEDGE_AGENT.md`: software package, distribution, package-manager, command-list and package error-analysis knowledge directive.
- `TECHNICAL_REFERENCE_SCROBBLE_AGENT.md`: cross-domain directive for manuals, Manualslib metadata, man-db/manpages, device/model errors, errorcodes, troubleshooting references and safe source-based knowledge ingest.

# # # # # # # # # # # # # # # # # # #
# Master Continuation Agent #
# # # # # # # # # # # # # # # # # # #

For continuing multi-domain Dr. Debug memory work from the current repository state, use:

- Specific directive: `/MEMORY/AGENTS/MASTER_CONTINUATION_AGENT.md`
- Software handoff: `software_agent_handoff_current_20260614.md`
- Software directive: `/MEMORY/AGENTS/SOFTWARE_PACKAGE_KNOWLEDGE_AGENT.md`
- PHP error directive: `/MEMORY/AGENTS/PHP_ERROR_DATABASE_INGEST_AGENT.md`
- Device hardware directive: `/MEMORY/AGENTS/DEVICE_HARDWARE_DATABASE_INGEST_AGENT.md`

Before master continuation work, read:

- `/AGENTS.md`
- `/README.md`
- `/CHANGES.md`
- `/UPDATE_PROCESS.md`
- `/MEMORY/INDEX.md`
- `/MEMORY/SCHEMA.md`
- `/MEMORY/QUALITY_RULES.md`
- `/MEMORY/SOURCE_REGISTRY.md`
- `/MEMORY/AGENTS/GLOBAL_DIRECTIVE.md`
- `/MEMORY/AGENTS/README.md`
- `/MEMORY/STATE/`

# # # # # # # # # # # # # # # # # # # # # #
# Technical Reference Scrobble Agent #
# # # # # # # # # # # # # # # # # # # # # #

For cross-domain technical reference ingestion from manuals, manpages, Manualslib metadata, man-db, manufacturer support pages, device/model troubleshooting pages, errorcode lists and software command references, use:

- Specific directive: `/MEMORY/AGENTS/TECHNICAL_REFERENCE_SCROBBLE_AGENT.md`
- Canonical manual area: `/MEMORY/MANUALS/`
- Canonical hardware/device area: `/MEMORY/HARDWARE/` or the existing device structure if already present
- Canonical software area: `/MEMORY/SOFTWARE/`
- Canonical error area: `/MEMORY/ERRORS/` or `/MEMORY/ERROR_CODES/` depending on existing structure
- Review queue: `/MEMORY/STATE/REVIEW_QUEUE.md`
- Crawl status: `/MEMORY/STATE/CRAWL_STATUS.md`

This agent must not mass-copy manuals, PDFs, protected tables, diagrams, crawled HTML, raw JSON, OCR output or proprietary service documentation. It may store source links, source metadata, short paraphrased technical facts, license/usage notes, source quality classifications and checkpoint state.

Before technical reference scrobble work, read:

- `/AGENTS.md`
- `/MEMORY/AGENTS/GLOBAL_DIRECTIVE.md`
- `/MEMORY/AGENTS/README.md`
- `/MEMORY/AGENTS/TECHNICAL_REFERENCE_SCROBBLE_AGENT.md`
- `/MEMORY/AGENTS/MANUAL_CATALOG_AGENT.md`
- `/MEMORY/AGENTS/DEVICE_HARDWARE_DATABASE_INGEST_AGENT.md`
- `/MEMORY/AGENTS/SOFTWARE_PACKAGE_KNOWLEDGE_AGENT.md`
- `/MEMORY/SOURCE_REGISTRY.md`
- `/MEMORY/QUALITY_RULES.md`
- `/MEMORY/SCHEMA.md`
- `/MEMORY/INDEX.md`
- `/CHANGES.md`
- `/UPDATE_PROCESS.md`

# # # # # # # # # # # # # # # # # #
# Device Hardware Database Ingest Agent #
# # # # # # # # # # # # # # # # # #

For device hardware records, model numbers, revisions, compatibility metadata and safe diagnostics, use:

- Specific directive: `/MEMORY/AGENTS/DEVICE_HARDWARE_DATABASE_INGEST_AGENT.md`
- Canonical hardware area: `/MEMORY/HARDWARE/`
- Hardware ingest state: `/MEMORY/HARDWARE/INGEST_STATE.yaml`
- Hardware run reports: `/MEMORY/HARDWARE/RUNS/`

Hardware work must not duplicate canonical manual, firmware, security, vendor or error-code entries. Index files should reference canonical entries only.

Before hardware ingest work, read:

- `/AGENTS.md`
- `/MEMORY/AGENTS/GLOBAL_DIRECTIVE.md`
- `/MEMORY/AGENTS/DEVICE_HARDWARE_DATABASE_INGEST_AGENT.md`
- `/MEMORY/SOURCE_REGISTRY.md`
- `/MEMORY/QUALITY_RULES.md`
- `/MEMORY/SCHEMA.md`
- `/CHANGES.md`
- `/UPDATE_PROCESS.md`

# # # # # # # # # # # # # # # # #
# Manufacturer Crawl Agent #
# # # # # # # # # # # # # # # # #

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
