# DR. DEBUG CHANGES.md

Version: 0.8.9-autodidactic-error-learning-v0.2
Status: ACTIVE
Scope: Repository change history for Dr. Debug /MEMORY/

## 2026-06-28

### docs(memory): promote autodidactic error learning v0.2 guard

* Consolidated `MEMORY/KNOWLEDGE_REPLACE/08_AUTODIDACTIC_ERROR_LEARNING.md` as the single Knowledge-Replacement point for autodidactic repeat-error prevention, proposal/canonical/write loop, attachment intake, self-error database guidance and Markdown artifact integrity.
* Updated `MEMORY/INDEX.md` and `MEMORY/KNOWLEDGE_REPLACE/MANIFEST.json` to include `08_AUTODIDACTIC_ERROR_LEARNING.md` in the active Knowledge-Replacement set.
* Updated `README.md` knowledge matrix with the CustomGPT Knowledge behavior guard row.
* Avoided creating a second canonical truth such as `08_AGENT_LOOP_SELF_ERROR_DIRECTIVE.md`.
* Validation: Owner/Admin gate, repository status check, source/dedupe review, path-policy dry-run and authenticated write output.
* Rollback: revert `MEMORY/KNOWLEDGE_REPLACE/08_AUTODIDACTIC_ERROR_LEARNING.md`, `MEMORY/INDEX.md`, `MEMORY/KNOWLEDGE_REPLACE/MANIFEST.json`, `README.md`, `CHANGES.md` to the previous commit state.

## 2026-06-26

### test(memory): add machine-readable endpoint count scan report

* Updated `MEMORY/SCANNERS/count_endpoint_matrix_scan.py` to version 0.2.0 so it can emit both Markdown and JSON validation reports.
* Added `MEMORY/REPORTS/VALIDATION/endpoint-count-matrix-scan.json` as a machine-readable endpoint-count scan report with stable `validation`, `counts`, `safety`, `review_required` and `review_status` fields.
* Updated `MEMORY/REPORTS/VALIDATION/endpoint-count-matrix-scan.md` to version 0.2.0 and status `COUNT_SCAN_READY_FOR_REVIEW`.
* Updated `MEMORY/SCANNERS/count_scan_rules.md` to version 0.2.0 with the JSON report shape and review status model.
* Updated `README.md` and `MEMORY/INDEX.md` so the public/status navigation exposes the JSON report and `COUNT_SCAN_READY_FOR_REVIEW` review state.
* Matrix rows remain `COUNT_SCAN_REQUIRED`; this change does not promote endpoint rows, canonical MEMORY records, or final dataset counts.
* Validation represented in JSON: 67 visible endpoint rows, 0 duplicate normalized names, 0 forbidden `_GLOBAL` prefixes, 0 metadata-only candidates, 0 relationship-only candidates, 0 prefix-explosion candidates and 0 bad status rows.
* No binaries, downloads, archive uploads, raw crawl dumps, copyrighted manual mirrors, public rehosting artifacts, force-pushes, history rewrites or destructive deletes were added.
* Rollback: remove `MEMORY/REPORTS/VALIDATION/endpoint-count-matrix-scan.json`, revert `MEMORY/SCANNERS/count_endpoint_matrix_scan.py`, `MEMORY/REPORTS/VALIDATION/endpoint-count-matrix-scan.md`, `MEMORY/SCANNERS/count_scan_rules.md`, `README.md`, `MEMORY/INDEX.md` and this `CHANGES.md` entry to their previous versions.

## 2026-06-25

### docs(memory): sync endpoint count validation navigation and public status

* Updated `README.md` so the public `Wissensstand` block exposes the endpoint validation report status: `PASS_STATIC_CHECK`.
* Updated `README.md` agent-relevant file list with `MEMORY/SCANNERS/count_endpoint_matrix_scan.py` and `MEMORY/REPORTS/VALIDATION/endpoint-count-matrix-scan.md`.
* Updated `MEMORY/INDEX.md` so endpoint count navigation includes the implemented scanner script and validation report, not just scanner planning rules.
* Updated `MEMORY/SCANNERS/count_scan_rules.md` from the rejected `tools/count_endpoint_matrix_scan.py` pseudo-path to the allowed implemented path `MEMORY/SCANNERS/count_endpoint_matrix_scan.py`.
* Updated `MEMORY/REPORTS/VALIDATION/endpoint-count-matrix-scan.md` to mark README, INDEX, scanner-rule and CHANGES consistency as synced.
* No canonical MEMORY records, status promotions, binaries, downloads, archive uploads, raw crawl dumps, copyrighted manual mirrors, public rehosting artifacts, force-pushes, history rewrites or destructive deletes were added.
* Rollback: revert `README.md`, `MEMORY/INDEX.md`, `MEMORY/SCANNERS/count_scan_rules.md`, `MEMORY/REPORTS/VALIDATION/endpoint-count-matrix-scan.md` and this `CHANGES.md` entry.

### test(memory): add endpoint count matrix scanner and validation report

* Added `MEMORY/SCANNERS/count_endpoint_matrix_scan.py` as a read-only validator for `MEMORY/INDEXES/endpoint_count_matrix.md` after `tools/` was rejected by repository path policy.
* Added `MEMORY/REPORTS/VALIDATION/endpoint-count-matrix-scan.md` with the first static validation report for the endpoint-count matrix.
* Validation scope: required columns, visible endpoint row count, duplicate normalized names, forbidden `_GLOBAL` prefix, metadata-only candidates, relationship-only candidates, path-specific prefix explosions and required row status `COUNT_SCAN_REQUIRED`.
* Result: `PASS_STATIC_CHECK` for 67 visible endpoint rows, 0 duplicate normalized names, no forbidden `_GLOBAL` prefixes and required columns present.
* No binaries, downloads, raw crawl dumps, copyrighted manual mirrors, archive uploads, public rehosting artifacts, force-pushes, history rewrites or destructive deletes were added.
* Rollback: remove `MEMORY/SCANNERS/count_endpoint_matrix_scan.py`, remove `MEMORY/REPORTS/VALIDATION/endpoint-count-matrix-scan.md`, and revert this `CHANGES.md` entry.

### docs(memory): index endpoint count matrix navigation

* Updated `MEMORY/INDEX.md` to add endpoint count matrix navigation for `MEMORY/INDEXES/endpoint_count_matrix.md`, `MEMORY/INDEXES/endpoint_count_rules.md` and `MEMORY/SCANNERS/count_scan_rules.md`.
* Preserved the existing foundation, scaffold, seed proposal, release, migration, BATCH audit and Linux manpages navigation sections.
* Kept endpoint count data as navigation/planning only; no canonical MEMORY records were promoted.
* No binaries, downloads, raw crawl dumps, copyrighted manual mirrors, archive uploads, public rehosting artifacts, force-pushes, history rewrites or destructive deletes were added.
* Validation: static link/reference check confirmed the endpoint matrix file exists on `main`; required visible endpoint matrix status remains `COUNT_SCAN_REQUIRED`.
* Rollback: revert `MEMORY/INDEX.md` and this `CHANGES.md` update to the previous commit state.

### feat(memory): add global endpoint count matrix planning

* Added `MEMORY/INDEXES/endpoint_count_matrix.md` with a flat global visible endpoint-count matrix and `COUNT_SCAN_REQUIRED` status.
* Added `MEMORY/INDEXES/endpoint_count_rules.md` with countable endpoint rules, deep-tree filter/relation handling, TV handling and HTTP/network handling.
* Added `MEMORY/SCANNERS/count_scan_rules.md` with scanner planning checks for required columns, duplicates, forbidden prefixes, metadata-only candidates, relationship-only candidates and markdown table shape.
* Updated `MEMORY/QUALITY_RULES.md` with endpoint-count matrix quality gates.
* Updated `README.md` with an endpoint-count matrix status section.
* Updated `UPDATE_PROCESS.md` with the endpoint-count matrix update gate.
* No canonical MEMORY records, status promotions, binaries, downloads, archive uploads, raw crawl dumps, copyrighted manual mirrors, rehosting artifacts, force-pushes or destructive migrations were added.
* Validation: static matrix validation checked 67 visible endpoint rows, 0 duplicate names, no `_GLOBAL` prefixes and required table columns present.
* Rollback: revert `MEMORY/INDEXES/endpoint_count_matrix.md`, `MEMORY/INDEXES/endpoint_count_rules.md`, `MEMORY/SCANNERS/count_scan_rules.md`, `MEMORY/QUALITY_RULES.md`, `README.md`, `UPDATE_PROCESS.md` and this `CHANGES.md` update to their previous states.
