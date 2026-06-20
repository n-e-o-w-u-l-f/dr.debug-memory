# Devices by Manufacturer — Batch Review Queue 001

run_id: DD-RUN-20260620-DEVICES-BY-MANUFACTURER-BATCH100-REVIEW-001
mode: OWNER_ADMIN_MODE
repo: n-e-o-w-u-l-f/dr.debug-memory
command_context: `!dd memory loop devices-by-manufacturer --batch-size 100 --resume-from "MEMORY cursor: devices_by_manufacturer" --apply`
created_at: 2026-06-20
risk: LOW
data_loss_risk: NONE
status: REVIEW_QUEUE_ONLY
canonical_records_changed: 0
candidate_records_changed: 0
binary_actions: 0
rehosting_actions: 0

## Scope

Continuation of the devices-by-manufacturer loop after the initial checkpoint. This report prepares the visible current device set for source review and dedupe without changing canonical data.

The requested batch size is 100. The currently visible canonical device set from `MEMORY/HARDWARE/DEVICES/devices.jsonl` contains 14 device records, so this review queue covers 14/100 visible records and stops at the last visible record.

## Repository rules applied

- `AGENTS.md`: safety before speed, source quality before claims, dedupe before second truth, redaction before storage.
- `UPDATE_PROCESS.md`: read directives, inspect status, use schema/quality/source registry for factual records, search duplicates, plan affected files, validate before write.
- `MEMORY/INDEX.md`: index files are navigation only and must not become second truth.
- `MEMORY/SCHEMA.md`: factual records require id/family/category/title/status/confidence/source_status/validation_status/canonical_path/aliases/timestamps/review_required/sources.
- `MEMORY/QUALITY_RULES.md`: do not invent facts; prefer official sources; keep canonical content in one place; every canonical fact needs source and validation status.
- `MEMORY/SOURCE_REGISTRY.md`: official vendor pages are primary official sources; secondary/community sources are discovery-only unless explicitly justified.

## Batch cursor

```yaml
resume_from: MEMORY cursor: devices_by_manufacturer
source_index: MEMORY/HARDWARE/DEVICES/devices_by_manufacturer.md
canonical_data: MEMORY/HARDWARE/DEVICES/devices.jsonl
visible_records_reviewed: 14
requested_batch_size: 100
next_cursor_after_visible_set: gigabyte/b850-aorus-elite-wifi7
next_action: continue with repository-local full file read and duplicate grep before adding any new manufacturer/device rows
```

## Dedupe summary

No duplicate canonical device names were identified inside the 14 visible records by normalized manufacturer + normalized device name.

Observed manufacturer groups:

- ASUS: 4 visible device records
- ASRock: 5 visible device records
- GIGABYTE: 5 visible device records

Potential alias/revision risks requiring careful handling:

- GIGABYTE records include revision-sensitive model numbers such as `rev. 1.0`; official public URLs may canonicalize to non-revision or combined revision paths.
- ASRock `DeskMini X600 Series` is a series record with model variants `DeskMini X600`, `DeskMini X600W`, and `X600M-STX`; do not split into separate canonical devices without per-variant evidence.
- ASUS support/download URLs are generic for several entries; exact product support pages should be verified before marking download/manual fields as product-specific.

## Review queue

| # | Manufacturer | Device | Current status in visible record | Source review result | Canonical-ready preparation |
|---:|---|---|---|---|---|
| 1 | ASUS | TUF GAMING Z890-PRO WIFI | verified | Official ASUS product page accessible and identifies model/features. | Keep as existing canonical candidate; verify exact support/download URL before any source_status promotion. |
| 2 | ASUS | PRIME Z890-P WIFI | verified | Official ASUS product page accessible and identifies model/features including Intel Core Ultra Series 2 platform, M.2, WiFi 7 and Ethernet. | Keep; product-specific support URL exists in record; re-check before promotion. |
| 3 | ASUS | Pro WS WRX90E-SAGE SE | verified | Stored official URL redirected to ASUS regional home in this web session. | Needs exact current product URL recheck; do not promote source_status from this session alone. |
| 4 | ASUS | EX-B860M-V5 | verified | Official ASUS product page accessible and identifies Intel B860/LGA1851 mATX board with listed features. | Keep; verify support/download/manual target before source_status promotion. |
| 5 | ASRock | Z890 Taichi AQUA | verified | Official ASRock product page accessible and identifies model. | Keep; exact page is primary source; support/download anchors should be checked locally. |
| 6 | ASRock | Z890 Taichi | verified | Official ASRock product page accessible and identifies model. | Keep; exact page is primary source; support/download anchors should be checked locally. |
| 7 | ASRock | X870E Taichi | verified | Official ASRock product page accessible and identifies model. | Keep; exact page is primary source; support/download anchors should be checked locally. |
| 8 | ASRock | B850 Steel Legend WiFi | verified | Official ASRock product page accessible and identifies model/series. | Keep; exact page is primary source; support/download anchors should be checked locally. |
| 9 | ASRock | DeskMini X600 Series | verified | Official ASRock product page accessible and identifies series plus several platform/storage/memory claims. | Keep as series-level record unless per-variant pages support splitting. |
| 10 | GIGABYTE | Z890 AORUS MASTER | verified | Stored `-rev-10` URL did not fetch in this session; search found official GIGABYTE non-revision product/support pages and official manual evidence for rev. 1.0. | Normalize/check URL; keep revision evidence; do not rewrite without full duplicate/source pass. |
| 11 | GIGABYTE | Z890 AORUS ELITE WIFI7 | verified | Stored `-rev-10` URL did not fetch in this session; search found official GIGABYTE/AORUS pages and support/specification pages. | Normalize/check URL; note PCB rev differences for Wi-Fi module before feature-level promotion. |
| 12 | GIGABYTE | X870E AORUS MASTER | verified | Stored `-rev-10` URL did not fetch in this session; search found official GIGABYTE product and manual/specification evidence. | Normalize/check URL; preserve rev. 1.0 manual evidence if accepted. |
| 13 | GIGABYTE | X870 AORUS ELITE WIFI7 ICE | verified | Stored URL appears superseded by official combined `rev-10-11` path in search results. | Needs canonical URL update proposal, not silent in-place rewrite. |
| 14 | GIGABYTE | B850 AORUS ELITE WIFI7 | verified | Stored `-rev-10` URL could not be independently confirmed in this session. | Keep as review-required until official product/support page is directly verified. |

## Canonical-readiness decision

Prepared but not promoted.

```yaml
ready_for_automatic_canonical_mutation: false
safe_to_keep_existing_verified_records: true
needs_url_normalization_proposal: true
needs_schema_enrichment_review: true
needs_full_repo_duplicate_grep: true
needs_product_specific_download_url_review: true
```

Reason: the visible records use `status: verified`, but the active schema requires richer factual metadata fields and explicit source/validation status before status lifecycle promotion. Several support/download fields are generic, and several GIGABYTE URLs need revision-aware canonicalization.

## Proposed next patch scope

Create a separate proposal patch, not a direct canonical rewrite, with:

1. URL-normalization candidates for GIGABYTE records.
2. Product-specific support/download/manual URL enrichment for ASUS and ASRock records where official product support pages can be verified.
3. Schema mapping from current compact device fields to required lifecycle metadata.
4. Dedupe notes per manufacturer/device normalized key.
5. A changelog entry after full diff review.

## Validation performed

- GitHub repository status: read/write/admin permissions available through authenticated tool output.
- Current repository directives reviewed from active raw repository files.
- Current visible canonical data reviewed from `devices.jsonl`.
- Official source checks performed for ASUS and ASRock visible records where pages were accessible.
- GIGABYTE source checks found official alternative/current pages, but stored revision URLs need normalization review.
- Redaction: no secrets, serial numbers, private hostnames, account data, customer data or raw crawl dumps included.
- Binary safety: no driver/firmware/BIOS/manual binary downloaded, hashed or rehosted.

## Rollback

Delete this report file if the queue is not wanted:

`MEMORY/RUNS/DEVICES/2026-06-20_memory_loop_devices_by_manufacturer_batch_100_review_queue_001.md`

No canonical records, indexes, source registry entries, candidates or binaries were modified by this run.
