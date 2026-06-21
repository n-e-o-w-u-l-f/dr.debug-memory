# UPDATE_PROCESS.md
Version: 0.8.0-consolidated-knowledge
Status: ACTIVE

## Required read order

For repository tasks, read `AGENTS.md`, `UPDATE_PROCESS.md`, `MEMORY/INDEX.md`, then task-relevant schema, quality, source-registry, category, proposal, report or Knowledge files only. Do not read everything blindly. Use task scope and the repository index.

## Update workflow

Before any write: verify Owner/Admin or authenticated write-enabled scope; inspect repository status, branch and target; load active directives and task-relevant files; search duplicates before adding records; identify affected files; generate intended diff or dry run; run redaction and secret checks; run source/evidence checks; run status lifecycle checks; update README knowledge matrix when MEMORY/Knowledge changes; update indexes/references/menus for migrations; update changelog; document validation and rollback; commit/push only when tool output proves authenticated write success.

## Structure migration

If a path is moved, renamed, split, merged, deprecated or replaced, update Markdown links, indexes, menus, aliases, schema references, source-registry scope fields, AGENTS/Knowledge references, README links, CHANGES links, UPDATE_PROCESS links, scripts, templates, manifests, validation paths and archive metadata where relevant.

Stop on unclear authority, dirty unrelated state, missing rollback for risky change, unresolved source conflict, suspected secret, validation failure, missing evidence for canonical promotion, or missing README knowledge matrix handling.

## Consolidated CustomGPT Knowledge v0.8.0

Active replacement files are stored under `MEMORY/KNOWLEDGE_REPLACE/`:

- `MEMORY/KNOWLEDGE_REPLACE/00_WORKING_MODE.md`
- `MEMORY/KNOWLEDGE_REPLACE/01_REPOSITORY_CHANGE_WORKFLOW.md`
- `MEMORY/KNOWLEDGE_REPLACE/02_RESEARCH_ARCHIVE_BINARY_SOURCES.md`
- `MEMORY/KNOWLEDGE_REPLACE/03_DEVICE_MANUFACTURER_INTAKE.md`
- `MEMORY/KNOWLEDGE_REPLACE/04_EVIDENCE_SCHEMA_DEDUP_MEMORY.md`
- `MEMORY/KNOWLEDGE_REPLACE/05_RISK_REDACTION_PLATFORM.md`
- `MEMORY/KNOWLEDGE_REPLACE/06_KNOWLEDGE_TOOL_SYNC_AUDIT.md`

Do not keep the old `00_*.md` through `18_*.md` and `99_FINAL.md` files active in CustomGPT Knowledge alongside these replacements. Repository deletion/tombstoning of old files requires the destructive migration gate if those files exist.
