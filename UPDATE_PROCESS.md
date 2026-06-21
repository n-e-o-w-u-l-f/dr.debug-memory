# UPDATE_PROCESS.md
Version: 0.8.0-consolidated-knowledge
Status: ACTIVE

## Required read order

For repository tasks, read `AGENTS.md`, `UPDATE_PROCESS.md`, `MEMORY/INDEX.md`, then task-relevant schema, quality, source-registry, category, proposal, report or Knowledge files only.

Do not read everything blindly. Use task scope and the repository index.

## Update workflow

Before any write:

1. Verify Owner/Admin or authenticated write-enabled scope.
2. Inspect repository status, branch and target.
3. Load active directives and task-relevant files.
4. Search duplicates before adding records.
5. Identify affected files.
6. Generate intended diff or dry run.
7. Run redaction and secret checks.
8. Run source/evidence checks.
9. Run status lifecycle checks.
10. Update README knowledge matrix when MEMORY/Knowledge changes.
11. Update indexes/references/menus for migrations.
12. Update changelog.
13. Document validation and rollback.
14. Commit/push only when tool output proves authenticated write success.

## Structure migration

If a path is moved, renamed, split, merged, deprecated or replaced, update Markdown links, indexes, menus, aliases, schema references, source-registry scope fields, AGENTS/Knowledge references, README links, CHANGES links, UPDATE_PROCESS links, scripts, templates, manifests, validation paths and archive metadata where relevant.

Stop on unclear authority, dirty unrelated state, missing rollback for risky change, unresolved source conflict, suspected secret, validation failure, missing evidence for canonical promotion, or missing README knowledge matrix handling.

## Cleanup / Konsolidierung

Übergangs-, Proposal-, Manifest-, Validierungs- und Migrationsdateien sind nicht kanonisch, sobald ihre relevanten Inhalte verlustfrei in aktive Repository-Direktiven, kanonische MEMORY-Pfade, Indexe und CHANGES.md übertragen wurden.

Cleanup bedeutet:

1. relevante Regeln/Fakten in kanonische Dateien übertragen,
2. doppelte oder historische Übergangsdateien entfernen,
3. Indexe und README-Matrix aktualisieren,
4. CHANGES.md mit Zielzustand und Rollback aktualisieren,
5. keine zweite Wahrheit behalten.

Historie alter CustomGPT-Knowledge-Strukturen muss nicht als aktives Repository-Wissen erhalten bleiben.

Proposal-Dateien sind Arbeitsmaterial, nicht Endzustand. Wenn ein Proposal fertig ist, wird sein Inhalt in den passenden Wissensstand übertragen:

- Hersteller → `MEMORY/MANUFACTURERS/...`
- Geräte → `MEMORY/DEVICES/...`
- Hardware IDs → `MEMORY/DEVICE_IDENTIFIERS/...`
- Quellen → `MEMORY/SOURCE_REGISTRY.md` oder klar kanonische Source-Record-Pfade
- Reports → nur behalten, wenn sie eigene Prüfnachweise enthalten
- Indexe → nur Navigation, keine zweite Wahrheit
- `CHANGES.md` → nur Ergebnis, Validierung und Rollback

Für repo-weiten Cleanup sind Proposal-/Report-Loops systematisch zu prüfen: Ist der Inhalt kanonisch übernommen? Wenn ja: Proposal entfernen oder archivieren. Wenn nein: Status behalten.

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
