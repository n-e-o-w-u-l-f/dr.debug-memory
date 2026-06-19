# MP-20260619 next 25 proposals

proposal_id: MP-20260619-NEXT-25-PROPOSALS
family: memory_proposal_batch
status: REVIEW_READY
created_at: 2026-06-19
updated_at: 2026-06-19
source_scope: MEMORY/PROPOSALS
batch_size: 25
batch_mode: review_then_apply_safe_subset
canonical_promotions: none
write_mode: proposal_batch_only
risk: LOW
redaction: no secrets, credentials, accounts, serials, emails, customer data, raw logs or raw crawl dumps included
binary_downloads: none
rehosting: none

## Purpose

This is the next conservative 25-item review queue for proposal processing. It is promotion-candidates-only. Each item must be handled one-by-one with duplicate search, source-record review, relationship review, redaction check and validation before any canonical write.

## Required gates for each item

1. Confirm exact canonical target path.
2. Search duplicate keys: canonical_name, normalized_name, aliases, official_home, support_url, downloads_url, manuals_url, security_url, firmware_url, source_url, domain and canonical_id.
3. Confirm no second truth is created.
4. Confirm official or primary source record is adequate.
5. Confirm relationship/alias boundaries where brand, acquisition, rename or legacy split exists.
6. Do not download binaries, manuals, installers, firmware or raw crawl dumps.
7. Do not rehost.
8. Do not promote if security/source URL is unknown and required by the target schema.
9. Keep indexes/navigation separate from canonical facts.
10. Validate changed files and update changelog if a later item is applied.

## Next 25 review items

| # | Candidate | Review status | Safe action for next pass |
|---:|---|---|---|
| 1 | Hewlett Packard Enterprise | ALIAS_CONFLICT_REVIEW_REQUIRED | Review HPE vs HP Inc. legacy split; do not merge into HP canonical without scoped relationship note. |
| 2 | Supermicro | SOURCE_RECORD_READY_REVIEW_REQUIRED | Validate source-record template and canonical target before one-item promotion proposal. |
| 3 | Fujitsu | SOURCE_RECORD_READY_REVIEW_REQUIRED | Validate source-record template and product-scope boundaries before one-item promotion proposal. |
| 4 | Dynabook | ALIAS_CONFLICT_REVIEW_REQUIRED | Review Dynabook/Toshiba PC legacy split; keep Toshiba PC alias scoped. |
| 5 | Framework Computer | SOURCE_RECORD_READY_REVIEW_REQUIRED | Validate official source record and canonical manufacturer target. |
| 6 | System76 | SOURCE_RECORD_READY_REVIEW_REQUIRED | Validate official source record and Linux-OEM category placement. |
| 7 | TUXEDO Computers | SOURCE_RECORD_READY_SECURITY_GAP | Confirm security/advisory source or explicitly document limitation before promotion. |
| 8 | Schenker Technologies | SOURCE_RECORD_READY_SECURITY_GAP | Confirm security/advisory source and XMG relationship scope before promotion. |
| 9 | Clevo | SOURCE_RECORD_READY_SECURITY_GAP | Confirm security/support source and ODM/OEM relationship scope before promotion. |
| 10 | Getac | SOURCE_RECORD_READY_REVIEW_REQUIRED | Validate rugged-device source record and target category. |
| 11 | Durabook | SOURCE_RECORD_READY_SECURITY_GAP | Confirm security/advisory source or document limitation before promotion. |
| 12 | Advantech | SOURCE_RECORD_READY_REVIEW_REQUIRED | Validate industrial/embedded source record and target category. |
| 13 | Siemens | SOURCE_RECORD_READY_REVIEW_REQUIRED | Validate industrial scope; avoid broad corporate second truth. |
| 14 | Beckhoff Automation | SOURCE_RECORD_READY_REVIEW_REQUIRED | Validate industrial automation scope and source record. |
| 15 | Kontron | SOURCE_RECORD_READY_REVIEW_REQUIRED | Validate embedded/industrial source record and category placement. |
| 16 | AAEON | SOURCE_RECORD_READY_SECURITY_GAP | Confirm security/advisory source or document limitation before promotion. |
| 17 | DFI | SOURCE_RECORD_READY_SECURITY_GAP | Confirm security/advisory source and exact manufacturer identity before promotion. |
| 18 | Axiomtek | SOURCE_RECORD_READY_SECURITY_GAP | Confirm security/advisory source or document limitation before promotion. |
| 19 | Lanner Electronics | SOURCE_RECORD_READY_SECURITY_GAP | Confirm security/advisory source or document limitation before promotion. |
| 20 | OnLogic | SOURCE_RECORD_READY_SECURITY_GAP | Confirm security/advisory source or document limitation before promotion. |
| 21 | Micron Technology | ALIAS_CONFLICT_REVIEW_REQUIRED | Review Micron/Crucial transition; avoid duplicate Crucial second truth. |
| 22 | Kioxia | ALIAS_CONFLICT_REVIEW_REQUIRED | Review Kioxia/Toshiba Memory rename; do not merge with Dynabook/Toshiba PC. |
| 23 | Transcend | SOURCE_RECORD_READY_SECURITY_GAP | Confirm security/advisory source or document limitation before promotion. |
| 24 | ADATA | SOURCE_RECORD_READY_SECURITY_GAP | Review XPG sub-brand scope and confirm security/advisory source. |
| 25 | PNY | SOURCE_RECORD_READY_SECURITY_GAP | Confirm security/advisory source or document limitation before promotion. |

## Batch decision

No item in this queue is automatically approved for canonical promotion. Items with alias conflicts or source/security gaps must remain proposal/review material until a single scoped patch passes source review, dedupe review, redaction review and validation.

## Rollback

If this queue is wrong or superseded, mark this batch file superseded in a later proposal and create a corrected batch. Do not delete historical review material without destructive-action authorization.
