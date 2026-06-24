# Validation Report: Linux manpages canonical readiness scan

Status: APPLIED_INDEX_PATCH_README_PATCH_PENDING
Created: 2026-06-24
Updated: 2026-06-24
Scope: Linux man-pages source records, README matrix patch, MEMORY/INDEX navigation patch.

## Requested action

Run local grep/CI dedupe scan, update README.md and MEMORY/INDEX.md with a safe patch, update validation report, and do not promote to CANONICAL in the same step.

## User-provided local scan evidence

The user provided local terminal output from a repository checkout on `main` after `git pull --ff-only`. The output includes two grep commands covering:

- `SRC-LINUX-MAN-PAGES-PROJECT-0001`
- `LINUX_MAN_PAGES_PROJECT`
- `linux-man-pages`
- `Linux man-pages project`
- `kernel.org/doc/man-pages`
- `SRC-MAN7-LINUX-MANPAGES-ONLINE-0001`
- `MAN7_LINUX_MANPAGES_ONLINE`
- `man7.org/linux/man-pages`
- `man7`
- `Linux man pages online`

## Local grep result interpretation

Result: PASS_WITH_NON_COMPETING_REFERENCES

Expected hits were found in:

- `MEMORY/SOURCES/LINUX_MAN_PAGES_PROJECT.md`
- `MEMORY/SOURCES/MAN7_LINUX_MANPAGES_ONLINE.md`
- `MEMORY/REPORTS/PROPOSALS/PR-20260624-linux-manpages-review-batch.md`
- `MEMORY/REPORTS/PROPOSALS/PR-20260624-linux-manpages-readme-matrix-patch.md`
- `MEMORY/PROPOSALS/2026-06-24-linux-distros-manpages-packages-source-registry.md`

Non-competing references were found in:

- `MEMORY/PROPOSALS/systemd_status_203_exec_MEMORY_PROPOSAL.md` with a scoped `man7_systemctl` source reference.
- `MEMORY/DEVICE_IDENTIFIERS/device_identifier_import_targets_batch6.jsonl` with a scoped `pci.ids(5)` manpage/source URL.

These are source-lineage references, not duplicate source-registry records for the Linux man-pages project or man7.org source record.

## Dedupe decision

- Exact specific source-record duplicate found: NO
- Competing canonical source record found: NO
- Non-competing scoped source references found: YES
- Result: Dedupe passes for README/INDEX patching.
- Result: CANONICAL promotion remains deferred to a dedicated promotion batch.

## README matrix handling

README.md direct full-file replacement was not performed by this validation report because the available write endpoint operates on full file content and the existing README matrix is compact/marker-sensitive. The exact rows to add remain documented in:

- `MEMORY/REPORTS/PROPOSALS/PR-20260624-linux-manpages-readme-matrix-patch.md`

Required README rows:

| Area | Status | Count / Result | Last checked | Notes |
|---|---|---:|---|---|
| Linux manpages review batch | PROPOSAL_READY_FOR_REVIEW | 2 source records | 2026-06-24 | `MEMORY/SOURCES/LINUX_MAN_PAGES_PROJECT.md`, `MEMORY/SOURCES/MAN7_LINUX_MANPAGES_ONLINE.md`; local grep passed with non-competing references documented. |
| Linux manpages canonical readiness | READY_FOR_PROMOTION_REVIEW | 0 canonical promotions | 2026-06-24 | Dedupe passed for source-record uniqueness; canonical promotion deferred to dedicated batch. |

## MEMORY/INDEX.md patch

MEMORY/INDEX.md was updated with Linux manpages source navigation:

- `MEMORY/SOURCES/LINUX_MAN_PAGES_PROJECT.md`
- `MEMORY/SOURCES/MAN7_LINUX_MANPAGES_ONLINE.md`

## Canonical readiness decision

Do not promote either record to CANONICAL in this batch.

A later dedicated promotion batch may update:

- `status: "CANONICAL"`
- `canonical: true`
- `review_required: false`
- `validation_status: "REVIEWED"`

only after the README matrix is safely applied or the repository policy accepts the patch-artifact route as matrix handling.

## Redaction check

- Secrets: none
- Personal data: none retained in repository artifacts.
- Raw logs: no raw system log stored; only minimal dedupe summary stored.
- Binary files: none.
- Crawl dumps: none.

## Rollback

Rollback this batch by reverting/removing:

- `MEMORY/REPORTS/VALIDATION/VR-20260624-linux-manpages-canonical-readiness-scan.md`
- The Linux manpages navigation line/block added to `MEMORY/INDEX.md`

If the README matrix rows are later applied, remove those rows too.

## Result

Index navigation applied in the planned patch set. README matrix direct application remains pending because a full-file README overwrite is not safe with the available write endpoint. CANONICAL promotion remains intentionally not performed.
