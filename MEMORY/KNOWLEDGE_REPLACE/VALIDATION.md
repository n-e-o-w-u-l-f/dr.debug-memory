# VALIDATION.md

Version: 0.8.1-master-pipeline  
Status: ACTIVE_VALIDATION_CHECKLIST  
Updated: 2026-06-21

## Validation checklist

Run these checks before claiming success:

1. **Mode gate verified:** `DRDEBUG_OWNER_ADMIN=TRUE`, `!dd`, repository target and `--apply` are present for writes.
2. **Owner/Admin scope verified:** target repository is `n-e-o-w-u-l-f/dr.debug-memory`; actor and reason are auditable.
3. **Consolidation verified:** 20 old Knowledge files are mapped to the active replacements and must not be uploaded together with the replacements.
4. **Active file count verified:** the active replacement set contains 8 files: `00_WORKING_MODE.md` through `07_MASTER_KNOWLEDGE_BASE_PIPELINE.md`.
5. **Master overlay verified:** `07_MASTER_KNOWLEDGE_BASE_PIPELINE.md` is treated as a taxonomy/evidence/README-sync overlay, not as a one-to-one replacement for a single legacy file.
6. **README matrix verified:** `README.md` contains `DRDEBUG_DATABASE_STATUS_START` and `DRDEBUG_DATABASE_STATUS_END`, and the generation-/bit-hotspot matrix is present.
7. **References verified:** old filenames are mapped, Markdown links checked, `MEMORY/INDEX.md` checked, `UPDATE_PROCESS.md` checked, `CHANGES.md` checked and `AGENTS.md` references checked if present.
8. **Tombstone policy verified:** `MEMORY/MIGRATION/OLD_FILES_TO_REMOVE_OR_TOMBSTONE.md` marks legacy directives as superseded aliases/tombstones without deletion.
9. **Migration map verified:** `MEMORY/MIGRATION/MIGRATION_MAP.md` points each legacy file to its active replacement and documents the master overlay.
10. **Safety verified:** redaction rules preserved, destructive action gate preserved, no `--force` bypass introduced and no secrets embedded.
11. **Evidence/data verified:** evidence levels preserved, dedupe-before-add preserved, canonical truth rule preserved and unknown device/manufacturer existence classification preserved.
12. **Taxonomy verified:** retro console/platform categories prioritize historical generation plus bit-/CPU-/bus-/graphics-/memory architecture before manufacturer branches.
13. **Tool/audit verified:** no GitHub write/commit/push claimed unless output proves it, audit fields preserved and rollback documented.
14. **No overreach verified:** no legacy files deleted, no canonical MEMORY records promoted, no binaries added, no archive uploads claimed and no external uploads performed.

## Rollback

Revert the touched files to the previous commit state:

- `MEMORY/KNOWLEDGE_REPLACE/MANIFEST.json`
- `MEMORY/KNOWLEDGE_REPLACE/VALIDATION.md`
- `CHANGES.md` if this validation sync is recorded there

Do not delete active Knowledge files unless a separate destructive migration is explicitly approved with `DRDEBUG_DESTRUCTIVE=TRUE`, exact Owner/Admin gate, diff, backup/branch, rollback and validation.
