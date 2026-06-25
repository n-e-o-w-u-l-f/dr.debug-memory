# MEMORY/INDEX.md

Version: 0.8.4-endpoint-count-validation-sync
Status: ACTIVE_INDEX
Last checked: 2026-06-25
Canonical families: MANUFACTURERS, HARDWARE, DEVICES, DEVICE_IDENTIFIERS, SPECS, FIRMWARE, DRIVERS, MANUALS, OPERATING_SYSTEMS, BUILDS, SOFTWARE, PROGRAMS, ERROR_CODES, FIXES, PATCHES, REPAIR, NETWORKING, PROTOCOLS, SOURCES, SECURITY, SCRIPTS, TEMPLATES, STATE, INDEXES, SCANNERS.

Index files are navigation only and must not become second truth.

## Repository directives

- `AGENTS.md`
- `UPDATE_PROCESS.md`
- `README.md`
- `CHANGES.md`

## Consolidated CustomGPT Knowledge v0.8.x

- `MEMORY/KNOWLEDGE_REPLACE/00_WORKING_MODE.md`
- `MEMORY/KNOWLEDGE_REPLACE/01_REPOSITORY_CHANGE_WORKFLOW.md`
- `MEMORY/KNOWLEDGE_REPLACE/02_RESEARCH_ARCHIVE_BINARY_SOURCES.md`
- `MEMORY/KNOWLEDGE_REPLACE/03_DEVICE_MANUFACTURER_INTAKE.md`
- `MEMORY/KNOWLEDGE_REPLACE/04_EVIDENCE_SCHEMA_DEDUP_MEMORY.md`
- `MEMORY/KNOWLEDGE_REPLACE/05_RISK_REDACTION_PLATFORM.md`
- `MEMORY/KNOWLEDGE_REPLACE/06_KNOWLEDGE_TOOL_SYNC_AUDIT.md`
- `MEMORY/KNOWLEDGE_REPLACE/07_MASTER_KNOWLEDGE_BASE_PIPELINE.md`

## Foundation layer

- `MEMORY/SCHEMA.md`
- `MEMORY/QUALITY_RULES.md`
- `MEMORY/SOURCES/SOURCE_REGISTRY.md`
- `MEMORY/TOOLS/README_MATRIX_RENDERER_SPEC.md`
- `MEMORY/VALIDATION/LINKCHECK_MASTER_PIPELINE_2026-06-21.md`
- `MEMORY/PROPOSALS/TEMPLATE_DEVICE.md`
- `MEMORY/PROPOSALS/TEMPLATE_DIAGNOSE.md`
- `MEMORY/PROPOSALS/TEMPLATE_SOURCE_RECORD.md`
- `MEMORY/PROPOSALS/TEMPLATE_TAXONOMY_NODE.md`

## Endpoint count matrix navigation

Status: ACTIVE_NAVIGATION
Last checked: 2026-06-25
Canonical status: planning/count index only; no canonical MEMORY records are promoted by these files.

- Matrix: `MEMORY/INDEXES/endpoint_count_matrix.md`
- Count rules: `MEMORY/INDEXES/endpoint_count_rules.md`
- Scanner planning rules: `MEMORY/SCANNERS/count_scan_rules.md`
- Implemented scanner script: `MEMORY/SCANNERS/count_endpoint_matrix_scan.py`
- Validation report: `MEMORY/REPORTS/VALIDATION/endpoint-count-matrix-scan.md`
- Quality gates: `MEMORY/QUALITY_RULES.md`
- README status matrix: `README.md`
- Changelog: `CHANGES.md`
- Update process gate: `UPDATE_PROCESS.md`

Count summary:

- visible endpoint rows: 67
- required row status: `COUNT_SCAN_REQUIRED`
- endpoint style: flat global count matrix
- count model: global dataset collections with filterable relations
- deep paths: filters and relations, not duplicated visible endpoints
- validation status: `PASS_STATIC_CHECK`
- prohibited endpoint forms: `_GLOBAL` prefixes, duplicate names, metadata-only endpoints, relationship-only endpoints, canonical IDs, packaging-only endpoints, regional-edition-only endpoints and game-/console-/vendor-specific prefix explosions

Repository routing:

- `dr.debug-memory`: matrix, rules, scanner planning, scanner script, validation report, quality gates and README/INDEX status
- `dr.debug-web`: public matrix view and optional visual/category presentation
- `dr.debug-agents`: agent routing/prompt policy if needed
- `dr.debug-admin_api`: future scanner execution and admin-gated count automation if implemented

## Scaffold indexes

- `MEMORY/HARDWARE/RETRO_CONSOLE/RETRO_GEN1_DISCRETE_IC/README.md`
- `MEMORY/HARDWARE/RETRO_CONSOLE/RETRO_GEN2_3_8BIT/README.md`
- `MEMORY/HARDWARE/RETRO_CONSOLE/RETRO_GEN4_16BIT/README.md`
- `MEMORY/HARDWARE/RETRO_CONSOLE/RETRO_GEN5_32_64BIT/README.md`
- `MEMORY/HARDWARE/RETRO_CONSOLE/MODERN_GEN6_9_HD/README.md`
- `MEMORY/HARDWARE/RETRO_COMPUTER/README.md`
- `MEMORY/DIAGNOSE/README.md`
- `MEMORY/SOURCES/README.md`
- `MEMORY/PROPOSALS/README.md`
- `MEMORY/ALIASES/README.md`
- `MEMORY/INDEXES/README.md`

## Seed proposals

- `MEMORY/PROPOSALS/retro-gen2-3-8bit-nes-famicom.md`
- `MEMORY/PROPOSALS/retro-gen2-3-8bit-sega-master-system.md`
- `MEMORY/PROPOSALS/retro-gen4-16bit-snes-super-famicom.md`
- `MEMORY/PROPOSALS/retro-gen4-16bit-sega-mega-drive-genesis.md`
- `MEMORY/PROPOSALS/retro-gen5-32bit-sony-playstation-psx.md`

## Releases

- `MEMORY/RELEASES/v0.8.1-master-pipeline/RELEASE_NOTES.md`
- `MEMORY/RELEASES/v0.8.1-master-pipeline/VALIDATION_SUMMARY.md`
- `MEMORY/RELEASES/v0.8.1-master-pipeline/ROLLBACK.md`

## Migration references

- `MEMORY/MIGRATION/MIGRATION_MAP.md`
- `MEMORY/MIGRATION/OLD_FILES_TO_REMOVE_OR_TOMBSTONE.md`

## Matrix duty

When Knowledge/MEMORY is searched, changed, or a proposal/candidate is created, check the README knowledge matrix and report or update searched/present/missing/orphan/proposal/canonical status for the relevant artifact classes.

## Taxonomy hotspot

For retro consoles and related historical platforms, the primary classification hotspot is historical generation plus bit-/CPU-/bus-/graphics-/memory architecture. Manufacturer branches are subordinate navigation nodes unless a task-specific schema says otherwise.

## BATCH / bulk-memory audit navigation

Status: ACTIVE_NAVIGATION
Last checked: 2026-06-23
Current BATCH file count: 162.

Navigation:

- Audit report: `MEMORY/REPORTS/AUDIT/AR-20260623-batch-memory-index-sync.md`
- Proposal batches: `MEMORY/PROPOSALS/BATCHES/`
- Manufacturer proposal batches: `MEMORY/PROPOSALS/MANUFACTURERS/`
- Proposal review reports: `MEMORY/REPORTS/PROPOSALS/`
- Status records: `MEMORY/STATUS/`
- Category batch records requiring index/schema review:
  - `MEMORY/ANDROID/`
  - `MEMORY/DEVICE_IDENTIFIERS/`
  - `MEMORY/FIRMWARE/`
  - `MEMORY/HARDWARE/`
  - `MEMORY/MANUFACTURERS/`
  - `MEMORY/NETWORKING/`
  - `MEMORY/PROTOCOLS/`
  - `MEMORY/REGISTRIES/`
  - `MEMORY/REPAIR/`
  - `MEMORY/RETRO/`
  - `MEMORY/RUNS/`
  - `MEMORY/SCHEMAS/`
  - `MEMORY/SECURITY/`
  - `MEMORY/SOFTWARE/`
  - `MEMORY/SOURCES/`

Deletion rule: no BATCH artifact is currently a safe delete candidate.

## Linux manpages source navigation

Status: ACTIVE_NAVIGATION
Last checked: 2026-06-24

Source records:

- `MEMORY/SOURCES/LINUX_MAN_PAGES_PROJECT.md`
- `MEMORY/SOURCES/MAN7_LINUX_MANPAGES_ONLINE.md`

Validation report: `MEMORY/REPORTS/VALIDATION/VR-20260624-linux-manpages-canonical-readiness-scan.md`.

Canonical promotion remains blocked until a dedicated promotion batch updates the source records.

Deletion requires duplicate proof, canonical replacement path, reference grep, README/MEMORY index update and rollback note.
