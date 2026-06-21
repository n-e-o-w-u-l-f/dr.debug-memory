# VALIDATION.md

## Validation checklist

Run these checks before claiming success:

1. Mode gate verified: `DRDEBUG_OWNER_ADMIN=TRUE`, `!dd`, repository target and `--apply` for writes.
2. Consolidation verified: 20 old Knowledge files mapped to 7 new files, no active duplicate old Knowledge upload, no rule made weaker during merge.
3. README matrix verified: README.md knowledge matrix updated or explicit reason documented, artifact counts checked where applicable.
4. References verified: old filenames grepped, Markdown links checked, MEMORY/INDEX.md checked, UPDATE_PROCESS.md checked, CHANGES.md checked and AGENTS.md references checked if present.
5. Safety verified: redaction rules preserved, destructive action gate preserved, no `--force` bypass introduced and no secrets embedded.
6. Evidence/data verified: evidence levels preserved, dedupe-before-add preserved, canonical truth rule preserved and unknown device/manufacturer existence classification preserved.
7. Tool/audit verified: no GitHub write/commit/push claimed unless output proves it, audit fields preserved and rollback documented.
