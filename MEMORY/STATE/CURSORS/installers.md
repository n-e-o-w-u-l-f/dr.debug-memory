# MEMORY cursor: installers

Status: ACTIVE_CURSOR
Updated: 2026-06-20
Batch scope: installers, setup packages, software installers, driver installers
Current branch target: `drdebug/proposal/local-sync-review`
Last batch id: `DR-20260620-installers-loop-001`
Requested batch size: 100
Processed in last batch: 0 metadata candidates
Next resume point: first official-source installer metadata candidate not yet reviewed

## Capture fields

- artifact_name
- publisher_or_manufacturer
- product_scope
- platform_scope
- architecture
- version
- release_date
- official_source_url
- checksum_if_owner_verified
- signature_info
- risk_note
- retrieved_at
- limitations

## Dedupe key

`publisher + product + version + platform + architecture + source-url + checksum + canonical-id`

## Policy gates

- Official source first.
- No automatic rehosting for installers.
- Review-package-only for high-risk binaries.
- Proposal-first; canonical-ready only with official source and scope validation.
- No binary downloads, no binary file storage, no raw crawl dumps, no archive uploads from this cursor.
- Checksum may be recorded only when owner/tool-verified from the official artifact or vendor metadata.
- Signature information must state whether it is vendor-published, owner-verified, absent, or not checked.

## Validation required before each apply

- Markdown links
- JSON/YAML if any structured sidecars are added
- Source-record field completeness
- No binary rehosting
- Signature note if available
- Redaction check
- Rollback-ready batch id and cursor state

## Rollback

Revert the batch id and restore the previous cursor state.
For batch `DR-20260620-installers-loop-001`, rollback removes this cursor or restores the prior missing-cursor state, removes the installer report pointer from report/state indexes, and reverts the `/CHANGES.md` entry.
