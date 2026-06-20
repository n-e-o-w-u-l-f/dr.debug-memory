# DR. DEBUG CHANGES.md
Version: 0.3.4-installer-metadata-loop
Status: ACTIVE
Scope: Repository change history for Dr. Debug /MEMORY/

# 2026-06-20

## docs(memory): add installer metadata loop review controls

- Added `/MEMORY/REPORTS/INSTALLERS/DR-20260620-installers-loop-001.md` as a review-package-only control report for installer/setup-package/software-installer/driver-installer metadata intake.
- Added `/MEMORY/STATE/CURSORS/installers.md` as the resume cursor for installer metadata batches.
- Added `/MEMORY/REPORTS/INDEX.md` and `/MEMORY/STATE/INDEX.md` to expose the installer loop and its high-risk-binary metadata gate on this review branch.
- No installer product/version/source candidates, canonical records, status promotions, binaries, downloads, archive uploads, raw crawl dumps, public rehosting artifacts, deletions or destructive migrations were added.
- Redaction/static safety review recorded no secrets, credentials, customer data, serials, private logs, raw crawl dumps or binary files.
- Rollback: remove the installer report and cursor, remove the report/state index files if they were created only for this batch, and revert this changelog entry.

# 2026-06-18

## docs(agents): add owner-gated public GitHub write model

- Updated repository governance drafts so Dr.Debug public may use GitHub write tools only in OWNER_ADMIN_MODE.
- Added the required owner flag: `DRDEBUG_OWNER_ADMIN=TRUE`.
- Added the admin command prefix: `!dd`.
- Added dry-run default; real write actions require `--apply`.
- Added destructive action gate: `DRDEBUG_DESTRUCTIVE=TRUE`.
- Preserved that repository maintenance, merge, commit, push, status maintenance and fixed database intake belong exclusively to the owner in the chat.
- Replaced unconditional public-write bans in Public proposal policy files with owner-gated write rules.
- Added admin help command requirements.

## Affected repository override files in this ZIP

- `/AGENTS.md`
- `/AGENTS/ACTIVE/DR_DEBUG.md`
- `/AGENTS/ACTIVE/DR_DEBUG_MEMORY.md`
- `/AGENTS/PROPOSALS/dr_debug_public_unknown_entity_permission_policy_BATCH6_PROPOSAL_ONLY.md`
- `/AGENTS/PROPOSALS/dr_debug_public_unknown_entity_policy_BUILD4_SAFE_PROPOSAL_ONLY.md`
- `/MEMORY/AGENTS/GLOBAL_DIRECTIVE.md`
- `/MEMORY/AGENTS/README.md`
- `/MEMORY/QUALITY_RULES.md`
- `/MEMORY/SCHEMA.md`
- `/MEMORY/LIFECYCLE.md`
- `/MEMORY/STATUS_REGISTRY.md`
- `/UPDATE_PROCESS.md`
- `/CHANGES.md`
