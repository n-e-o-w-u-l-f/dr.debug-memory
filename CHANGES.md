# DR. DEBUG CHANGES.md

Version: 0.3.3-owner-admin-gate-proposal
Status: ACTIVE
Scope: Repository change history for Dr. Debug /MEMORY/

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
