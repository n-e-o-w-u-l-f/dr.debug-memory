---
maintenance_id: manufacturer-loop-post-batch-017
date: 2026-06-21
mode: OWNER_ADMIN_MODE
scope: indexes_status_reports_proposals_only
canonical_promotion: none_prepare_only
source_scope: official_sources_only
dedupe_required: true
review_required: true
audit: true
rate_limit: conservative
robots_tos: respect
no_login_bypass: true
no_paywall_bypass: true
no_raw_crawl_dumps: true
no_binary_downloads: true
no_rehosting: true
validation_status: PATH_POLICY_BLOCKED_LOCAL_HANDOFF
---
# Dedupe, alias, risk and source matrix

## Dedupe checks required before any later record creation

- exact manufacturer name
- normalized manufacturer name
- former names, sub-brands, OEM labels and regional aliases
- official homepage/support/download/manual/security URLs
- source URL identity
- checksum identity, only where owner-reviewed local metadata exists
- canonical path, proposal path and source-registry relation

## Name normalization rules

| Field | Rule |
|---|---|
| case | compare case-insensitively for matching only |
| punctuation | strip legal-form punctuation for matching only |
| legal suffix | map Ltd/GmbH/Inc/Corp/Co. as aliases; do not erase lineage |
| region | retain region when support/download scope differs |
| brand/OEM | alias unless official source proves separate canonical entity |

## Alias lineage conflict queue

Hold in `PRIVATE_REVIEW_REQUIRED` or `PROPOSAL_ONLY` when:

- the same alias maps to multiple candidates
- acquisition/merger lineage lacks official source support
- OEM label differs from legal manufacturer
- regional site conflicts with global official site
- spelling variant lacks official support

## High-risk marking

Mark high risk for firmware, BIOS, bootloader, flashing, drivers, vendor installers, batteries, mains/high voltage, vehicles, medical devices, radio/regulatory hardware, production systems, remote access, data-loss workflows or security tooling.

## Source matrix

| Source class | Role |
|---|---|
| official vendor docs | accepted for review |
| official project docs | accepted for review |
| standards/registries | accepted for review |
| source repositories | accepted technical evidence |
| issue trackers/community/wiki/forums | discovery only unless corroborated |
| shops/blogs/media | discovery only |
| user assertion | research seed only |

## Source record gate

Future source records need url, title, source_class, publisher, retrieved_at, scope, versions when relevant, claim_supported, limitations, license_or_terms_note, crawl_allowed and hash_if_file only when owner-reviewed local metadata exists.
