# DR-20260620-known-artifacts-loop-004-iana-import-review

Status: APPLIED_REPORT
Mode: OWNER_ADMIN_MODE
Command: memory loop known-artifacts continuation
Continuation from: `MEMORY cursor: known_artifacts/report-003-index-changelog-reconciled; next=review-iana-candidates-for-source-registry-import-or-start-manufacturer-source-batch; batch-size=25`
Created: 2026-06-20
Repository: n-e-o-w-u-l-f/dr.debug-memory
Artifact class: SOURCE_REGISTRY_IMPORT_REVIEW
Family: IANA networking registry
Reviewed source-candidate batch: `/MEMORY/REPORTS/KNOWN_ARTIFACTS/DR-20260620-known-artifacts-loop-003-iana-source-candidates.md`

## Scope

This pass reviews the 25 IANA/IETF source-record candidates from report 003 for safe source-registry import readiness. It does not edit `MEMORY/SOURCE_REGISTRY.md`, does not promote canonical records, and does not perform a broad port-row import.

## Inputs reviewed

- Report 003 exists and records 25 bounded IANA/IETF source-record candidates.
- Report 003 explicitly states that IANA service/port assignments are registry evidence only and not evidence that observed traffic is legitimate, safe, endorsed, or actually using the assigned service.
- Current repository file reads show a branch/view inconsistency for `MEMORY/REPORTS/INDEX.md` and `CHANGES.md`; therefore this pass writes only this isolated report file and avoids overwriting navigation/history state.

## Review result summary

| Candidate range | Review decision | Reason |
|---|---|---|
| SR-CAND-IANA-PORTREG-001 through 005 | IMPORT_READY_AS_BASELINE_SOURCE_RECORDS | These candidates describe registry identity, procedure, licensing, anti-overclaim limitation, and port-range definitions. They are bounded, reusable and low-risk if imported as source records only. |
| SR-CAND-IANA-PORTREG-006 through 025 | DEFER_BULK_IMPORT | Individual port-row claims are valid as candidates, but importing many row records without a target diagnostic family risks creating broad registry mirrors/second truth. Keep report-scoped until a specific diagnostic, protocol, service, or artifact family requires them. |

## Candidate-by-candidate review

| Candidate | Decision | Import note |
|---|---|---|
| SR-CAND-IANA-PORTREG-001 | IMPORT_READY | Use as primary registry source record for IANA Service Name and Transport Protocol Port Number Registry metadata. |
| SR-CAND-IANA-PORTREG-002 | IMPORT_READY | Use as procedure source for IANA service-name/port-number assignment management; do not treat RFC text as CC0 registry data. |
| SR-CAND-IANA-PORTREG-003 | IMPORT_READY | Use as licensing/terms source for IANA protocol registry data only; keep RFC and third-party exclusions explicit. |
| SR-CAND-IANA-PORTREG-004 | IMPORT_READY | Use as mandatory anti-overclaim diagnostic guard for port-number interpretation. |
| SR-CAND-IANA-PORTREG-005 | IMPORT_READY | Use as bounded range-classification source for System/User/Dynamic ports; no runtime inference. |
| SR-CAND-IANA-PORTREG-006 | DEFER | Port 0 reserved row may be imported only when a specific port-0 diagnostic family exists. |
| SR-CAND-IANA-PORTREG-007 | DEFER | tcpmux port 1 row is valid but should remain report-scoped until a specific diagnostic/use case needs it. |
| SR-CAND-IANA-PORTREG-008 | DEFER | ports 2 and 3 reserved/de-assigned row is valid but broad import would mirror the registry. |
| SR-CAND-IANA-PORTREG-009 | DEFER | port 4 unassigned row is valid but should not become standalone canonical memory without use case. |
| SR-CAND-IANA-PORTREG-010 | DEFER | rje port 5 row is valid but needs target family before import. |
| SR-CAND-IANA-PORTREG-011 | DEFER | port 6 unassigned row is valid but no target family identified. |
| SR-CAND-IANA-PORTREG-012 | DEFER | echo port 7 row is valid but requires a target diagnostic/service family. |
| SR-CAND-IANA-PORTREG-013 | DEFER | port 8 unassigned row is valid but no target family identified. |
| SR-CAND-IANA-PORTREG-014 | DEFER | discard port 9 multi-protocol row is valid but should be imported only for a specific diagnostic context. |
| SR-CAND-IANA-PORTREG-015 | DEFER | port 10 unassigned row is valid but no target family identified. |
| SR-CAND-IANA-PORTREG-016 | DEFER | systat port 11 row is valid but no target family identified. |
| SR-CAND-IANA-PORTREG-017 | DEFER | port 12 unassigned row is valid but no target family identified. |
| SR-CAND-IANA-PORTREG-018 | DEFER | daytime port 13 row is valid but no target family identified. |
| SR-CAND-IANA-PORTREG-019 | DEFER | ports 14-16 unassigned/historical note is valid but broad import would mirror the registry. |
| SR-CAND-IANA-PORTREG-020 | DEFER | qotd port 17 row is valid but no target family identified. |
| SR-CAND-IANA-PORTREG-021 | DEFER | msp port 18 historic row is valid but should remain report-scoped unless needed. |
| SR-CAND-IANA-PORTREG-022 | DEFER | chargen port 19 row is valid but requires a target diagnostic/security context. |
| SR-CAND-IANA-PORTREG-023 | DEFER | ftp-data port 20 row is valid but should be imported only for FTP diagnostic family. |
| SR-CAND-IANA-PORTREG-024 | DEFER | ftp port 21 row is valid but should be imported only for FTP diagnostic family. |
| SR-CAND-IANA-PORTREG-025 | DEFER | ssh port 22 row is valid but should be imported only for SSH diagnostic family and remote-access rollback rules. |

## Proposed import batch, not applied

If a later command explicitly targets source-registry import, the safe first import batch is limited to these five baseline records:

1. IANA service-name and transport-protocol port-number registry metadata.
2. RFC 6335 IANA registry procedure source.
3. IANA protocol registry licensing terms source.
4. IANA port-assignment anti-overclaim limitation source.
5. IANA port-range classification source.

The row-level candidates should remain report-scoped until a specific family requires them, for example FTP diagnostics, SSH diagnostics, low-port anomalies, legacy echo/daytime/chargen exposure, or port-0/reserved traffic triage.

## Validation performed

- Source hierarchy check: official IANA/IETF sources only.
- Dedupe posture: no source-registry IDs or canonical records created.
- Second-truth guard: deferred row-level bulk import to avoid mirroring the IANA registry inside MEMORY.
- Redaction check: no secrets, credentials, customer data, serials, private hosts, raw logs, raw crawl dumps or downloaded files added.
- Runtime-overclaim check: preserved registry-vs-runtime separation for all candidates.
- Binary/rehosting check: no binaries, firmware, drivers, installers, manuals, downloads, archive uploads or rehosting artifacts added.

## Cursor update

Next resume cursor: `MEMORY cursor: known_artifacts/report-004-iana-import-review-complete; next=apply-baseline-source-registry-proposal-or-start-manufacturer-source-batch; batch-size=5-or-25`

## Rollback

Delete this report file. No canonical records, source-registry records, index entries, changelog entries, binaries, archive uploads, status promotions or broad reclassifications need rollback from this pass.
