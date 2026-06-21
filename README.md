# Dr. Debug /MEMORY/

**Dr. Debug /MEMORY/** is a structured, source-aware and validation-aware technical memory base for Dr.Debug agents.

This repository stores diagnostic and repair knowledge for devices, systems, errors, sources, workflows, proposals, scripts and validation records. It is optimized for agent-readable maintenance: canonical paths, evidence levels, dedupe rules, status lifecycles, source records, redaction and rollback matter more than prose.

## Safety boundary

This repository is not an official repair manual and does not guarantee that any repair is safe. Before real-world repair or system changes, check power, batteries, warranty, data loss, privacy, manufacturer instructions, backup and rollback. High-risk areas such as mains voltage, batteries, vehicles, medical devices, firmware flashing, production systems and remote access require extra caution.

## Agent entry points

Agents should read:

- [`AGENTS.md`](./AGENTS.md)
- [`UPDATE_PROCESS.md`](./UPDATE_PROCESS.md)
- [`MEMORY/INDEX.md`](./MEMORY/INDEX.md)
- [`MEMORY/SCHEMA.md`](./MEMORY/SCHEMA.md)
- [`MEMORY/QUALITY_RULES.md`](./MEMORY/QUALITY_RULES.md)
- [`MEMORY/SOURCE_REGISTRY.md`](./MEMORY/SOURCE_REGISTRY.md)
- [`CHANGES.md`](./CHANGES.md)

For CustomGPT Knowledge policy, use the consolidated v0.8.0 files stored under `MEMORY/KNOWLEDGE_REPLACE/`:

| Active Knowledge file | Responsibility |
|---|---|
| [`00_WORKING_MODE.md`](./MEMORY/KNOWLEDGE_REPLACE/00_WORKING_MODE.md) | Operating modes, admin gate, public/customer behavior, owner/admin behavior, final response discipline |
| [`01_REPOSITORY_CHANGE_WORKFLOW.md`](./MEMORY/KNOWLEDGE_REPLACE/01_REPOSITORY_CHANGE_WORKFLOW.md) | Repository workflow, update process, branch/merge/commit planning, structure migration, artifacts/scripts/patches |
| [`02_RESEARCH_ARCHIVE_BINARY_SOURCES.md`](./MEMORY/KNOWLEDGE_REPLACE/02_RESEARCH_ARCHIVE_BINARY_SOURCES.md) | Research, source hierarchy, archive.org preservation, firmware, drivers, BIOS, installers, manuals |
| [`03_DEVICE_MANUFACTURER_INTAKE.md`](./MEMORY/KNOWLEDGE_REPLACE/03_DEVICE_MANUFACTURER_INTAKE.md) | Unknown devices, identifiers, manufacturer ingest, alias registry, existence classification |
| [`04_EVIDENCE_SCHEMA_DEDUP_MEMORY.md`](./MEMORY/KNOWLEDGE_REPLACE/04_EVIDENCE_SCHEMA_DEDUP_MEMORY.md) | Evidence, validation, conflicts, dedupe, canonical truth, memory schema, menu/category resolution, status lifecycle |
| [`05_RISK_REDACTION_PLATFORM.md`](./MEMORY/KNOWLEDGE_REPLACE/05_RISK_REDACTION_PLATFORM.md) | Redaction, privacy, platform gate, risk, backup, rollback, remote safety |
| [`06_KNOWLEDGE_TOOL_SYNC_AUDIT.md`](./MEMORY/KNOWLEDGE_REPLACE/06_KNOWLEDGE_TOOL_SYNC_AUDIT.md) | Knowledge loading, retrieval, context discipline, tool contracts, audit, release, drift sync |

Migration references:

- [`MEMORY/MIGRATION/MIGRATION_MAP.md`](./MEMORY/MIGRATION/MIGRATION_MAP.md)
- [`MEMORY/MIGRATION/OLD_FILES_TO_REMOVE_OR_TOMBSTONE.md`](./MEMORY/MIGRATION/OLD_FILES_TO_REMOVE_OR_TOMBSTONE.md)
- [`MEMORY/KNOWLEDGE_REPLACE/VALIDATION.md`](./MEMORY/KNOWLEDGE_REPLACE/VALIDATION.md)
- [`MEMORY/KNOWLEDGE_REPLACE/MANIFEST.json`](./MEMORY/KNOWLEDGE_REPLACE/MANIFEST.json)

## Datenbank-Stand / Wissensmatrix

_Last checked: 2026-06-21_

| class | searched | present | missing | orphan | proposal only | canonical | asserted unverified | user evidenced | source confirmed |
|---|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| manufacturers | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| devices | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| hardware IDs | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| firmware | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| BIOS | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| drivers | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| manuals/documentation | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| source records | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| proposals | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| canonical records | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| aliases/mirrors | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| orphan candidates | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |

The matrix is a navigation/status checkpoint, not a second truth. Canonical factual content must live in one canonical record path and indexes/aliases/mirrors must point to that path.

## Principles

1. Source quality before claims.
2. Dedupe before adding records.
3. Redaction before storage.
4. Backup and rollback before risky change.
5. Validation before success.
6. No raw secrets, raw crawl dumps or unsupported canonical promotion.
7. Public/customer mode may propose; Owner/Admin mode may apply only through authenticated gated workflows.
