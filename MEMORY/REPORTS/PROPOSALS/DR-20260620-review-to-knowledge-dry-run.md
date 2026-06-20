# DR-20260620 Review-to-Knowledge Dry-Run

Version: 0.1.0
Status: REVIEW_REPORT
Created: 2026-06-20
Scope: MEMORY/PROPOSALS, MEMORY/proposals
Command: `!dd proposal audit review-to-knowledge`
Repository: `n-e-o-w-u-l-f/dr.debug-memory`
Apply scope: report file only; no proposal promotion, no canonical record creation, no status lifecycle change.
Reason: Review-Report fuer alle offenen Proposals erzeugen, Pfadkonflikt PROPOSALS/proposals markieren, Promotion-Blocker dokumentieren und canonical-ready Kandidaten ohne Statuswechsel vorbereiten.

## Executive summary

This audit prepared a review-to-knowledge status report for the visible proposal roots:

- `/MEMORY/PROPOSALS/`
- `/MEMORY/proposals/`

Result:

- Promoted to canonical: 0
- Proposal status changed: 0
- Canonical records created: 0
- Files changed by this apply: this report only
- Immediate canonical-ready without further work: 0
- Candidate proposals that may become review-ready after repository-wide dedupe: 2
- High-risk/review-required proposals: at least 1
- Lowercase proposal-path items requiring structure decision: 2

## Gates checked

The following repository gates were used for this report:

- Root directive: `/AGENTS.md`
- Update process: `/UPDATE_PROCESS.md`
- Navigation: `/MEMORY/INDEX.md`
- Factual metadata/status lifecycle: `/MEMORY/SCHEMA.md`
- Quality rules: `/MEMORY/QUALITY_RULES.md`
- Source registry: `/MEMORY/SOURCE_REGISTRY.md`
- Proposal navigation: `/MEMORY/PROPOSALS/INDEX.md`

Gate conclusions:

- Repository writes must remain scoped, auditable, validated and redacted.
- Canonical facts require source and validation status.
- Indexes/navigation files must not become second truth.
- Proposal status changes require review notes and repository-wide dedupe.
- Missing evidence, unresolved source conflict, suspected secret, validation failure or missing canonical-promotion evidence are stop conditions.

## Proposal root findings

### `/MEMORY/PROPOSALS/`

Visible top-level proposal area includes:

- `BATCHES/`
- `MANUFACTURERS/`
- `CRAWL_PLAN_DELL_PRECISION_2026-06-09.md`
- `CRAWL_PLAN_HP_ZBOOK_2026-06-09.md`
- `INDEX.md`
- `MANUFACTURER_BATCH_0001_PC_LAPTOP_2026-06-09.md`
- `MANUFACTURER_BATCH_0002_APPLE_PLATFORM_2026-06-09.md`
- `asus_usb_bios_flashback_MEMORY_PROPOSAL.md`
- `github_resource_not_accessible_integration_MEMORY_PROPOSAL.md`
- `systemd_status_203_exec_MEMORY_PROPOSAL.md`

The active proposal index states that manufacturer-ingest batches are proposal/navigation material and that no canonical promotion has occurred for the active batch records.

### `/MEMORY/proposals/`

Visible lowercase proposal path includes:

- `puzzles_and-survival_chat_color_syntax.yaml`
- `puzzles_and_survival_chat_color_syntax_validation.yaml`

This creates a structure/case-sensitivity review issue because `/MEMORY/PROPOSALS/` and `/MEMORY/proposals/` are different paths on case-sensitive systems.

## Item review matrix

| Path | Observed status | Evidence/source status | Validation status | Risk | Review-to-knowledge decision |
|---|---:|---:|---:|---:|---|
| `MEMORY/PROPOSALS/asus_usb_bios_flashback_MEMORY_PROPOSAL.md` | DRAFT | Official ASUS source referenced in proposal metadata | Draft/manual validation only | HIGH firmware/BIOS brick risk | Do not promote. Keep as model-specific firmware recovery proposal. Requires model-scope dedupe, source-registry normalization, and explicit review before any canonical playbook. |
| `MEMORY/PROPOSALS/github_resource_not_accessible_integration_MEMORY_PROPOSAL.md` | DRAFT | Official GitHub documentation referenced in proposal metadata | Not repository-reproduced | LOW diagnosis / MEDIUM-HIGH if permission fix is overbroad | Candidate for review-ready after dedupe against GitHub Actions/API/token entries. Do not promote until target canonical family/path is selected. |
| `MEMORY/PROPOSALS/systemd_status_203_exec_MEMORY_PROPOSAL.md` | DRAFT | Primary manpage/project references listed in proposal metadata | Not target-host reproduced | LOW diagnosis / MEDIUM repair / HIGH for remote-critical services | Candidate for review-ready after dedupe against systemd/Linux error-code and repair playbook areas. Do not promote until canonical family/path is selected. |
| `MEMORY/proposals/puzzles_and-survival_chat_color_syntax.yaml` | USER_VERIFIED_FIX | USER_PROVIDED_UNVERIFIED | USER_CONFIRMED | LOW technical risk / MEDIUM factual generalization risk | Do not promote directly. Keep exact-scope user-verified proposal. Needs path normalization, app/game scope, alias decision, and external/source limitations note. |
| `MEMORY/proposals/puzzles_and_survival_chat_color_syntax_validation.yaml` | PROPOSAL_READY_FOR_REVIEW | USER_PROVIDED_UNVERIFIED | NOT_TESTED except 230-char note | LOW technical risk / MEDIUM factual generalization risk | Do not promote. Merge or link with base syntax proposal after structure decision; pending tests block broader claims. |

## Promotion blockers

1. Most individually reviewed markdown proposals are still `DRAFT`, while schema lifecycle requires explicit status control before `REVIEWED` or `CANONICAL`.
2. Repository-wide dedupe has not been completed for:
   - ASUS firmware/BIOS recovery material
   - GitHub Actions/API/token permission errors
   - systemd/Linux error-code entries
   - game chat formatting/user-verified fix material
3. `/MEMORY/PROPOSALS/` versus `/MEMORY/proposals/` must be resolved before lowercase YAML items are promoted or indexed as canonical knowledge.
4. User-provided evidence can support exact-scope user-verified proposals, but must not be generalized into canonical facts without source/validation limits.
5. Firmware/BIOS content must remain model-specific, high-risk and review-required.
6. No report entry should claim a fix, upload, validation, promotion, commit, merge or push unless corresponding tool/user output confirms it.

## Canonical-path recommendations

These are recommendations only; no canonical paths were created by this report.

| Topic | Suggested canonical area | Notes |
|---|---|---|
| ASUS USB BIOS FlashBack | `MEMORY/FIRMWARE/` or `MEMORY/REPAIR/` with ASUS/model-scope aliasing | Prefer model-specific recovery playbook; no generic BIOS flash fix. |
| GitHub 403 Resource not accessible by integration | `MEMORY/ERROR_CODES/` plus possible `MEMORY/SOFTWARE/GITHUB/` navigation alias | Keep least-privilege permission warning. |
| systemd status=203/EXEC | `MEMORY/ERROR_CODES/` or `MEMORY/SOFTWARE/SYSTEMD/` | Could be both canonical error-code entry plus playbook alias, but only one canonical fact body. |
| Puzzle and Survival chat color syntax | Proposal/user-verified area until structure normalized | Exact-scope user-confirmed behavior only; do not universalize beyond tested chats/versions. |

## Required next actions before promotion

1. Run repository-wide duplicate search for normalized signatures, aliases, source URLs and canonical IDs.
2. Decide whether `/MEMORY/proposals/` is legacy, alias-only, or must be migrated into `/MEMORY/PROPOSALS/`.
3. For each candidate, write missing source-registry records or verify existing registry entries.
4. Assign one canonical target path per factual body; convert all other locations to navigation, alias or review-lineage pointers.
5. Update relevant family index/menu only after canonical-path decision.
6. Add validation notes and rollback notes for any future status changes.
7. Update changelog when future apply changes touch proposals, status lifecycle or canonical records.

## Validation performed for this report

- Owner/admin gate checked before write planning.
- Repository metadata and write permission checked before dry-run/write.
- Current repository files were read from the main branch for the relevant gates and visible proposal paths.
- Redaction review: no secrets or personal credentials were included in this report.
- Destructive action check: no delete, force-push, history rewrite, mass status change, secret purge or broad reclassification was planned.

## Rollback

Rollback for this apply is limited to removing this report file:

- `MEMORY/REPORTS/PROPOSALS/DR-20260620-review-to-knowledge-dry-run.md`

No proposal or canonical data rollback is required because this report does not change proposal statuses or canonical records.

## Final decision

This apply creates a review report only. It intentionally does not promote any proposal to canonical knowledge. The safest next step is a targeted dedupe/path-normalization apply before any proposal status promotion.
