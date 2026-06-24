# Proposal Review Batch: Linux / Manpages

Status: APPLIED_PROPOSAL_READY_RECORDS
Mode: OWNER_ADMIN_MODE apply requested
Created: 2026-06-24
Scope: Review Linux man-pages records from the broad source-registry proposal and prepare targeted README matrix handling.

## Reviewed proposal source

- MEMORY/PROPOSALS/2026-06-24-linux-distros-manpages-packages-source-registry.md

## Repository directives checked

- AGENTS.md: memory work read order and canonical memory boundary checked.
- UPDATE_PROCESS.md: dedupe, source/evidence checks, README matrix handling and rollback requirements checked.
- MEMORY/INDEX.md: canonical families and current navigation checked.
- MEMORY/SOURCES/SOURCE_REGISTRY.md: source-record template and discovery-only rule checked.
- MEMORY/SCHEMA.md: frontmatter and status lifecycle fields checked.
- MEMORY/QUALITY_RULES.md: research, dedupe, evidence and promotion rules checked.

## Dedupe result against MEMORY/INDEX.md

Dedupe target terms:

- linux-man-pages
- Linux man-pages project
- kernel.org man-pages
- man7
- man7.org Linux man pages
- Linux man pages online

Result:

- MEMORY/INDEX.md lists canonical family `SOURCES` and `MEMORY/SOURCES/SOURCE_REGISTRY.md`.
- MEMORY/INDEX.md does not list an existing specific source record for `LINUX_MAN_PAGES_PROJECT.md`.
- MEMORY/INDEX.md does not list an existing specific source record for `MAN7_LINUX_MANPAGES_ONLINE.md`.
- This supports separate source records with status `PROPOSAL_READY_FOR_REVIEW`.
- It does not support `CANONICAL` promotion because local clone grep/CI-like duplicate checks were not run.

## Promotion decision

Promoted from broad proposal seed into separate source-record files:

1. MEMORY/SOURCES/LINUX_MAN_PAGES_PROJECT.md — `PROPOSAL_READY_FOR_REVIEW`
2. MEMORY/SOURCES/MAN7_LINUX_MANPAGES_ONLINE.md — `PROPOSAL_READY_FOR_REVIEW`

Canonical promotions in this batch: 0.

## Evidence classification

- Linux man-pages project: E3 / SOURCE_CONFIRMED / official_project_docs
- man7 Linux man pages online: E3 / SOURCE_CONFIRMED for rendered manpage navigation / manpage source class

## README matrix handling

README.md was not overwritten directly in this apply because the available write tool writes full file content, and the current README matrix is embedded in a compact/marker-sensitive block. Blind full-file replacement would risk unrelated formatting loss.

Targeted README matrix rows were captured in:

- MEMORY/REPORTS/PROPOSALS/PR-20260624-linux-manpages-readme-matrix-patch.md

Required future README rows:

| Area | Status | Count / Result | Last checked | Notes |
|---|---|---:|---|---|
| Linux manpages review batch | PROPOSAL_READY_FOR_REVIEW | 2 source records | 2026-06-24 | `MEMORY/SOURCES/LINUX_MAN_PAGES_PROJECT.md`, `MEMORY/SOURCES/MAN7_LINUX_MANPAGES_ONLINE.md`; canonical promotion blocked until local grep/CI duplicate scan. |
| Linux manpages canonical promotions | BLOCKED | 0 | 2026-06-24 | Source-confirmed records only; no CANONICAL promotion without local duplicate scan and index/reference update. |

## Index update handling

MEMORY/INDEX.md was not overwritten directly because the available write tool requires full-file content and index formatting is compact. New source records remain discoverable by path and are listed in this report. A follow-up patch should add navigation links after local duplicate scan.

Recommended MEMORY/INDEX.md additions:

- Under Source/registry navigation: `MEMORY/SOURCES/LINUX_MAN_PAGES_PROJECT.md`
- Under Source/registry navigation: `MEMORY/SOURCES/MAN7_LINUX_MANPAGES_ONLINE.md`

## Redaction check

- Secrets: none
- Personal data: none
- Raw logs: none
- Binary files: none
- Crawl dumps: none

## Validation checklist

Completed in this batch:

1. Owner/Admin gate checked.
2. Repository status checked.
3. Active directives read in required order.
4. Dedupe against MEMORY/INDEX.md checked.
5. Source/evidence status set.
6. Redaction check completed.
7. Rollback documented.
8. README matrix handling captured in patch artifact.

Blocked for CANONICAL promotion:

1. Local clone grep/CI-like duplicate scan.
2. Direct README matrix edit with safe patch tooling.
3. Direct MEMORY/INDEX.md navigation edit with safe patch tooling.

## Rollback

Rollback by deleting:

- MEMORY/SOURCES/LINUX_MAN_PAGES_PROJECT.md
- MEMORY/SOURCES/MAN7_LINUX_MANPAGES_ONLINE.md
- MEMORY/REPORTS/PROPOSALS/PR-20260624-linux-manpages-review-batch.md
- MEMORY/REPORTS/PROPOSALS/PR-20260624-linux-manpages-readme-matrix-patch.md

If later README/MEMORY/INDEX rows are added, remove those rows too.

## Result

Applied as proposal-ready source records. No canonical promotion claimed.
