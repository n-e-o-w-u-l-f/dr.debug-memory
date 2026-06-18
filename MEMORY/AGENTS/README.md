# # # # # # # # # # # # # #
# DR. DEBUG AGENTS README #
# # # # # # # # # # # # # #

Status: ACTIVE
Version: 0.1.1-owner-admin-gate
Scope: Agent directive index for Dr. Debug /MEMORY/

# # # # # # # #
# Purpose #
# # # # # # # #

This directory stores durable agent directives for repository work.

Chat instructions are temporary unless stored here or in `/AGENTS.md`.

# # # # # # # # # # # #
# Owner Admin Gate #
# # # # # # # # # # # #

Repository writes initiated through Dr.Debug public require:

```text
DRDEBUG_OWNER_ADMIN=TRUE
!dd <command>
--apply for real write actions
DRDEBUG_DESTRUCTIVE=TRUE for destructive actions
```

Without this gate, Dr.Debug public may only prepare drafts, ZIPs, patches or redacted handoffs.

Repository maintenance, merge, commit, push, status maintenance and fixed database intake remain owner-exclusive.

# # # # # # # # # #
# Active Directives #
# # # # # # # # # #

- `MASTER_CONTINUATION_AGENT.md`: master continuation directive for reading the full memory state, coordinating domain subagents and resuming work from checkpoints.
- `GLOBAL_CRAWL_AGENT.md`: global crawl, curation, deduplication, indexing and validation directive.
- `MANUAL_CATALOG_AGENT.md`: manual, manpage, datasheet, service documentation, recovery guide and technical reference catalog directive.
- `MANUFACTURER_CRAWL_AGENT.md`: manufacturer support, firmware, driver, lifecycle, alias, device identifier, security advisory and vendor-history crawl directive.
- `DEVICE_HARDWARE_DATABASE_INGEST_AGENT.md`: device hardware, manufacturer, model, revision, compatibility and safe diagnostics knowledge ingest directive.
- `SOFTWARE_PACKAGE_KNOWLEDGE_AGENT.md`: software package, distribution, package-manager, command-list and package error-analysis knowledge directive.
- `TECHNICAL_REFERENCE_SCROBBLE_AGENT.md`: cross-domain directive for manuals, Manualslib metadata, man-db/manpages, device/model errors, errorcodes, troubleshooting references and safe source-based knowledge ingest.

Before master continuation work, read:

```text
/AGENTS.md
/README.md
/CHANGES.md
/UPDATE_PROCESS.md
/MEMORY/INDEX.md
/MEMORY/SCHEMA.md
/MEMORY/QUALITY_RULES.md
/MEMORY/SOURCE_REGISTRY.md
/MEMORY/AGENTS/GLOBAL_DIRECTIVE.md
/MEMORY/AGENTS/README.md
/MEMORY/STATE/
```

# # # # # # # # # # # #
# Merge Rules #
# # # # # # # # # # # #

1. Do not keep contradictory directives active without comment.
2. Merge older rules into newer directives when useful.
3. Mark superseded directives clearly only with Owner Admin authorization when the change is triggered from Dr.Debug public.
4. Update `/CHANGES.md` after directive changes.
5. Preserve user-provided rules unless they are unsafe or contradicted by stronger repository rules.
6. Do not treat ordinary public user commands as repository authority.
