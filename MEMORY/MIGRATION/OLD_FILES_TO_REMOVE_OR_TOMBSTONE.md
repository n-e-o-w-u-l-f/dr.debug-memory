# OLD_FILES_TO_REMOVE_OR_TOMBSTONE.md

Version: 0.8.1-master-pipeline  
Status: ACTIVE_TOMBSTONE_ALIAS_REFERENCE  
Created: 2026-06-21  
Updated: 2026-06-21  
Scope: Old CustomGPT Knowledge files superseded by consolidated v0.8.x files and the v1.0.0 master pipeline overlay.

## Purpose

This file is a non-destructive tombstone/alias registry. It does **not** delete legacy directives. It marks old Knowledge filenames as superseded navigation aliases and points agents to the active replacement files.

Legacy files must not be uploaded to CustomGPT Knowledge together with the active replacements, because that would create conflicting instructions and second truths.

## Active replacements

Use these files as active CustomGPT Knowledge:

- `MEMORY/KNOWLEDGE_REPLACE/00_WORKING_MODE.md`
- `MEMORY/KNOWLEDGE_REPLACE/01_REPOSITORY_CHANGE_WORKFLOW.md`
- `MEMORY/KNOWLEDGE_REPLACE/02_RESEARCH_ARCHIVE_BINARY_SOURCES.md`
- `MEMORY/KNOWLEDGE_REPLACE/03_DEVICE_MANUFACTURER_INTAKE.md`
- `MEMORY/KNOWLEDGE_REPLACE/04_EVIDENCE_SCHEMA_DEDUP_MEMORY.md`
- `MEMORY/KNOWLEDGE_REPLACE/05_RISK_REDACTION_PLATFORM.md`
- `MEMORY/KNOWLEDGE_REPLACE/06_KNOWLEDGE_TOOL_SYNC_AUDIT.md`
- `MEMORY/KNOWLEDGE_REPLACE/07_MASTER_KNOWLEDGE_BASE_PIPELINE.md`

## Tombstone / alias policy

For each legacy file below:

- `canonical_status`: `SUPERSEDED_BY_KNOWLEDGE_REPLACE`
- `do_not_edit_here`: `YES`
- `upload_status`: `DO_NOT_UPLOAD_WITH_REPLACEMENTS`
- `handling`: `KEEP_AS_HISTORY_OR_REPLACE_WITH_TOMBSTONE_ONLY`
- `deletion_allowed`: `NO_WITHOUT_DESTRUCTIVE_GATE`

Deletion, force-removal or broad rewrite requires:

- `DRDEBUG_DESTRUCTIVE=TRUE`
- exact Owner/Admin apply gate
- affected-file detection
- diff
- backup or branch
- rollback
- validation
- README/INDEX/reference updates
- changelog update

## Superseded files

| Legacy file | Active replacement | Tombstone / alias note |
|---|---|---|
| `00_ADMIN.md` | `MEMORY/KNOWLEDGE_REPLACE/00_WORKING_MODE.md` | Owner/Admin gate and mode rules moved into active working-mode directive. |
| `01_PUBLIC_MODE.md` | `MEMORY/KNOWLEDGE_REPLACE/00_WORKING_MODE.md` | Customer/public behavior consolidated. |
| `02_OWNER_ADMIN_MODE.md` | `MEMORY/KNOWLEDGE_REPLACE/00_WORKING_MODE.md` | Owner/Admin behavior consolidated with non-overridable gates. |
| `99_FINAL.md` | `MEMORY/KNOWLEDGE_REPLACE/00_WORKING_MODE.md` | Final-answer discipline consolidated. |
| `03_REPOSITORY_WORKFLOW.md` | `MEMORY/KNOWLEDGE_REPLACE/01_REPOSITORY_CHANGE_WORKFLOW.md` | Repository workflow and apply checks consolidated. |
| `04_BRANCH_MERGE_COMMIT.md` | `MEMORY/KNOWLEDGE_REPLACE/01_REPOSITORY_CHANGE_WORKFLOW.md` | Branch, commit and merge rules consolidated. |
| `05_STRUCTURE_REFERENCE_MIGRATION.md` | `MEMORY/KNOWLEDGE_REPLACE/01_REPOSITORY_CHANGE_WORKFLOW.md` | Structure/reference migration rules consolidated. |
| `06_ARTIFACTS_SCRIPTS_PATCHES.md` | `MEMORY/KNOWLEDGE_REPLACE/01_REPOSITORY_CHANGE_WORKFLOW.md` | Artifact, script and patch rules consolidated. |
| `08_RESEARCH_SOURCE_CLASSIFICATION.md` | `MEMORY/KNOWLEDGE_REPLACE/02_RESEARCH_ARCHIVE_BINARY_SOURCES.md` | Research and source hierarchy consolidated. |
| `09_ARCHIVE_ORG_REHOSTING.md` | `MEMORY/KNOWLEDGE_REPLACE/02_RESEARCH_ARCHIVE_BINARY_SOURCES.md` | Archive/rehosting gate consolidated. |
| `12_FIRMWARE_DRIVER_MANUAL.md` | `MEMORY/KNOWLEDGE_REPLACE/02_RESEARCH_ARCHIVE_BINARY_SOURCES.md` | Firmware, driver, BIOS and manual rules consolidated. |
| `10_DEVICE_IDENTIFICATION.md` | `MEMORY/KNOWLEDGE_REPLACE/03_DEVICE_MANUFACTURER_INTAKE.md` | Unknown-device intake consolidated. |
| `11_MANUFACTURER_INGEST.md` | `MEMORY/KNOWLEDGE_REPLACE/03_DEVICE_MANUFACTURER_INTAKE.md` | Manufacturer ingest and alias registry consolidated. |
| `14_VALIDATION_EVIDENCE_EVALS.md` | `MEMORY/KNOWLEDGE_REPLACE/04_EVIDENCE_SCHEMA_DEDUP_MEMORY.md` | Evidence and validation rules consolidated. |
| `15_CONFLICTS_DEDUP_CANONICAL.md` | `MEMORY/KNOWLEDGE_REPLACE/04_EVIDENCE_SCHEMA_DEDUP_MEMORY.md` | Conflict, dedupe and canonical truth rules consolidated. |
| `16_MEMORY_SCHEMA_MENU_STATUS.md` | `MEMORY/KNOWLEDGE_REPLACE/04_EVIDENCE_SCHEMA_DEDUP_MEMORY.md` | Memory schema, menu/category and status lifecycle consolidated. |
| `07_REDACTION_PRIVACY.md` | `MEMORY/KNOWLEDGE_REPLACE/05_RISK_REDACTION_PLATFORM.md` | Redaction and privacy rules consolidated. |
| `13_RISK_PLATFORM.md` | `MEMORY/KNOWLEDGE_REPLACE/05_RISK_REDACTION_PLATFORM.md` | Platform/risk gates consolidated. |
| `17_KNOWLEDGE_LOADING_RETRIEVAL.md` | `MEMORY/KNOWLEDGE_REPLACE/06_KNOWLEDGE_TOOL_SYNC_AUDIT.md` | Knowledge loading/retrieval consolidated. |
| `18_TOOL_ACTIONS_AUDIT_RELEASE_DRIFT.md` | `MEMORY/KNOWLEDGE_REPLACE/06_KNOWLEDGE_TOOL_SYNC_AUDIT.md` | Tool, audit, release and drift sync rules consolidated. |

## Master pipeline overlay

`MEMORY/KNOWLEDGE_REPLACE/07_MASTER_KNOWLEDGE_BASE_PIPELINE.md` is not a one-to-one replacement for a single legacy file. It is the active overlay that harmonizes:

- scan-before-write,
- research-before-claim,
- generation/bit taxonomy hotspot,
- README matrix sync,
- schema discipline,
- evidence lifecycle,
- legacy directive override limits.

When a legacy directive conflicts with the master pipeline, prefer the active replacement plus the master pipeline, except where system/developer/OpenAI safety, law/TOS/tool limits, privacy, secrets handling, malware/exploit boundaries, truthful reporting, Owner/Admin gate, redaction, dedupe, source/evidence, rollback or validation impose a stricter rule.

## Safe handling

This pass performs non-destructive tombstone/alias marking only. It does not delete old files and does not promote any factual records to canonical status.
