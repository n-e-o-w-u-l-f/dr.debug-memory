# Bounded manufacturer source-record workflow

Date: 2026-06-24
Status: proposal_only
Scope: manufacturer support/manual/driver/firmware/source discovery

## Goal

Replace unbounded massdump crawling with reviewable source-record intake for manufacturer support ecosystems.

## Allowed collection

Collect only minimal records:

- manufacturer
- official_home_url
- support_url
- downloads_url
- manuals_url
- security_url
- firmware_or_bios_url_when_public
- source_class
- retrieved_at
- claim_supported
- limitations
- crawl_allowed_note
- binary_downloaded: false
- sha256: null unless owner later downloads a file locally for review
- review_status

## Disallowed in this workflow

- raw crawl dumps
- hidden/login/paywalled content acquisition
- robots/TOS bypass
- bulk binary mirroring
- automatic archive.org upload
- automatic canonical promotion
- firmware/BIOS recommendations without exact model and revision scope

## Batch limits

Recommended first pass:

- max_manufacturers_per_run: 10
- max_urls_per_manufacturer: 6
- max_depth: 1
- same_domain_only: true
- binary_downloads: false
- interval_seconds_minimum: 10
- stop_on_auth_or_tos_uncertainty: true

## Review states

- RESEARCH_SEED
- SOURCE_CONFIRMED
- PROPOSAL_READY_FOR_REVIEW
- PRIVATE_REVIEW_REQUIRED
- REJECTED

## Validation

Before promotion or broader execution:

1. Dedupe exact names, normalized names, aliases, support URLs, and source URLs.
2. Confirm official source status.
3. Confirm that no raw crawl dump or binary is stored.
4. Confirm no login, paywall, robots/TOS, or access-control bypass.
5. Confirm README knowledge matrix update is either unnecessary for proposal-only customer artifacts or explicitly planned for any MEMORY/canonical change.

## Expected result

A small source-record batch that can be reviewed, deduplicated, and promoted only after Owner/Admin review.

## Rollback

Revert the artifact directory. No external state should be changed by this workflow.
