# DR. DEBUG CHANGES.md

Version: 0.3.9-support-articles-loop
Status: ACTIVE
Scope: Repository change history for Dr. Debug /MEMORY/

# 2026-06-21

## docs(memory): continue support-articles source-candidate loop batch 002

* Added `/MEMORY/PROPOSALS/BATCHES/MP-20260621-support-articles-loop-002.md` with 15 official support/help-center/troubleshooting article source candidates as proposal-only intake records.
* Added `/MEMORY/SOURCES/SUPPORT_ARTICLES/SOURCE_RECORDS_20260621_BATCH_002.json` with scoped source-record candidate metadata.
* Added `/MEMORY/REPORTS/SUPPORT_ARTICLES/DR-20260621-support-articles-loop-002.md` and updated `/MEMORY/STATE/CURSORS/support_articles.md` for resume/rollback at offset 26.
* Updated proposal/report navigation indexes.
* No canonical support records, broad status changes, source-registry promotions, binaries, downloads, archive uploads, raw crawl dumps, rehosting artifacts, deletions or destructive migrations were added.
* Redaction/static safety review recorded no secrets, credentials, customer data, serials, raw logs, raw crawl dumps or binary files.
* Rollback: remove the created batch-002 batch/report/source-record files, restore the previous support-article cursor state, and revert this changelog/index update.

# 2026-06-20

## docs(memory): add support-articles source-candidate batch 001

* Added `/MEMORY/PROPOSALS/BATCHES/MP-20260620-support-articles-loop-001.md` with 11 official support/help-center/troubleshooting article source candidates as proposal-only intake records.
* Added `/MEMORY/SOURCES/SUPPORT_ARTICLES/SOURCE_RECORDS_20260620_BATCH_001.json` with scoped source-record candidate metadata.
* Added `/MEMORY/REPORTS/SUPPORT_ARTICLES/DR-20260620-support-articles-loop-001.md` and `/MEMORY/STATE/CURSORS/support_articles.md` for resume/rollback.
* Updated proposal/report navigation indexes.
* No canonical support records, broad status changes, source-registry promotions, binaries, downloads, archive uploads, raw crawl dumps, rehosting artifacts, deletions or destructive migrations were added.
* Redaction/static safety review recorded no secrets, credentials, customer data, serials, raw logs, raw crawl dumps or binary files.
* Rollback: remove the created batch/report/source-record files, restore the previous support-article cursor state, and revert this changelog/index update.

## docs(memory): reconcile known-artifacts reports in index and changelog

* Updated `/MEMORY/REPORTS/INDEX.md` to list known-artifacts reports 001, 002 and 003 under audit navigation.
* Reconciled `/CHANGES.md` with applied known-artifacts report files already present on `main`.
* No canonical records, broad status changes, source-registry promotions, binaries, downloads, archive uploads, raw crawl dumps, rehosting artifacts, deletions or destructive migrations were added.
* Redaction/static safety review recorded no secrets, credentials, customer data, serials, raw logs, raw crawl dumps or binary files.
* Rollback: restore the previous `/MEMORY/REPORTS/INDEX.md` and `/CHANGES.md` contents.

## docs(memory): add IANA source candidate batch report 003

* Added `/MEMORY/REPORTS/KNOWN_ARTIFACTS/DR-20260620-known-artifacts-loop-003-iana-source-candidates.md` with 25 bounded IANA/IETF source-record candidates.
* Kept all candidates report-scoped; no canonical source-registry records were created or promoted.
* Preserved the runtime-overclaim guard that IANA service/port assignments are registry evidence only and not proof of observed service traffic.
* No downloads, binaries, firmware, drivers, installers, manuals, archive uploads, source-registry promotions or canonical records were added.
* Rollback: remove the report file if rolling back report 003.

## docs(memory): continue known-artifacts loop with source-registry normalization report

* Added `/MEMORY/REPORTS/KNOWN_ARTIFACTS/DR-20260620-known-artifacts-loop-002.md` as a conservative continuation report for source-registry normalization planning.
* Recorded source-registry extraction requirements and artifact group priorities for later review.
* No canonical records, broad status changes, source-registry promotions, binaries, downloads, archive uploads, raw crawl dumps, rehosting artifacts, deletions or destructive migrations were added.
* Rollback: remove the created report 002 file and revert this changelog entry.

## docs(memory): add known-artifacts loop audit report 001

* Added `/MEMORY/REPORTS/KNOWN_ARTIFACTS/DR-20260620-known-artifacts-loop-001.md` as a conservative, resume-ready known-artifacts loop report.
* No canonical records, broad status changes, source-registry promotions, binaries, downloads, archive uploads, raw crawl dumps, rehosting artifacts, deletions or destructive migrations were added.
* Rollback: remove the report file and revert this changelog entry.

# 2026-06-19

## docs(memory): add official-source manufacturer seed proposal batch 001

* Added `/MEMORY/PROPOSALS/BATCHES/MP-20260619-manufacturer-seed-batch-001.md` with 25 official-source manufacturer discovery candidates as `RESEARCH_SEED` `MEMORY_PROPOSAL` entries.
* Added `/MEMORY/PROPOSALS/BATCHES/INDEX.md` as proposal-index-only navigation for active proposal batches.
* No canonical manufacturer records, source registry records, status promotions, binaries, downloads, archive uploads, raw crawl dumps or rehosting artifacts were added.
* Redaction/static safety review recorded no secrets, credentials, customer data, serials, raw logs, raw crawl dumps or binary files.
* Rollback: remove the created proposal batch file and proposal batch index entry, and revert this changelog entry.

## docs(memory): add proposal batch review 001

* Added `/MEMORY/REPORTS/PROPOSALS/DR-20260619-proposal-batch-review-001.md` with owner-gated proposal batch review results.
* Added `/MEMORY/PROPOSALS/BATCHES/MP-20260619-next-25-proposals.md` as a conservative promotion-candidates-only next batch.
* No canonical records, proposal statuses, source records, indexes, binaries, downloads, archive uploads or rehosting artifacts were changed.
* Redaction/static safety review recorded no secrets, credentials, customer data, serials, raw logs or raw crawl dumps.
* Rollback: revert this changelog entry and the two added proposal/report files.

# 2026-06-18

## docs(agents): add owner-gated public GitHub write model

* Updated repository governance drafts so Dr.Debug public may use GitHub write tools only in OWNER_ADMIN_MODE.
* Added the required owner flag: `DRDEBUG_OWNER_ADMIN=TRUE`.
* Added the admin command prefix: `!dd`.
* Added dry-run default; real write actions require `--apply`.
* Added destructive action gate: `DRDEBUG_DESTRUCTIVE=TRUE`.
* Preserved that repository maintenance, merge, commit, push, status maintenance and fixed database intake belong exclusively to the owner in the chat.
* Replaced unconditional public-write bans in Public proposal policy files with owner-gated write rules.
* Added admin help command requirements.

## Affected repository override files in this ZIP

* `/AGENTS.md`
* `/AGENTS/ACTIVE/DR_DEBUG.md`
* `/AGENTS/ACTIVE/DR_DEBUG_MEMORY.md`
* `/AGENTS/PROPOSALS/dr_debug_public_unknown_entity_permission_policy_BATCH6_PROPOSAL_ONLY.md`
* `/AGENTS/PROPOSALS/dr_debug_public_unknown_entity_policy_BUILD4_SAFE_PROPOSAL_ONLY.md`
* `/MEMORY/AGENTS/GLOBAL_DIRECTIVE.md`
* `/MEMORY/AGENTS/README.md`
* `/MEMORY/QUALITY_RULES.md`
* `/MEMORY/SCHEMA.md`
* `/MEMORY/LIFECYCLE.md`
* `/MEMORY/STATUS_REGISTRY.md`
* `/UPDATE_PROCESS.md`
* `/CHANGES.md`
