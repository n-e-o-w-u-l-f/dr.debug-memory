# MP-20260621-support-articles-loop-002

Version: 0.1.0
Status: PROPOSAL_ONLY
Artifact class: MEMORY_PROPOSAL_BATCH
Batch id: DR-20260621-support-articles-loop-002
Created: 2026-06-21
Updated: 2026-06-21
Previous cursor: `MEMORY cursor: support_articles` offset 11
Requested batch size: 100
Applied intake count: 15
Canonical promotion: NO
Raw crawl dumps: NO
Binaries/downloads/rehosting: NO

## Scope

Continuation of proposal-first intake for official support/help-center/troubleshooting article source candidates. Claims are limited to the documented product/version/scope of each source and are not canonical Dr.Debug fixes.

## Dedupe keys

`publisher + article_id + title + product_or_device_scope + error_signature_if_any + source_url + canonical_id`

## Candidate records

| # | Publisher | Article ID | Title | Scope | Error/signature scope |
|---:|---|---|---|---|---|
| 12 | Microsoft Support | `32adb016-b29c-a928-0073-53d31da0dad5` | Camera doesn't work in Windows | Windows camera/webcam | camera not working |
| 13 | Microsoft Support | `73025246-b61c-40fb-671a-2535c7cd56c8` | Fix sound or audio problems in Windows | Windows audio | sound/audio problems |
| 14 | Microsoft Support | `684eb0bb-824e-4003-9755-f263067341fa` | Fix audio issues when no sound plays from speakers or headphones in Windows | Windows audio output | no sound from speakers/headphones |
| 15 | Microsoft Support | `5504aed3-2c01-4214-89d1-9e8dbe6828e8` | Fix missing or undetected audio output device in Windows | Windows audio device detection | missing/undetected audio output device |
| 16 | Microsoft Support | `05d738b3-b1fd-06f2-f5fc-c0437ff8db32` | Camera app shows error 0xA00F4244 NoCamerasAreAttached | Windows Camera app | error 0xA00F4244 NoCamerasAreAttached |
| 17 | Apple Support | `102623` | If your Mac doesn't turn on | Mac | Mac does not turn on / blank screen |
| 18 | Apple Support | `102675` | If your Mac doesn't start up all the way | Mac startup | startup screen/symbol issue |
| 19 | Apple Support | `102601` | If your Mac starts up to a question mark | Mac startup disk | flashing question mark |
| 20 | Apple Support | `102535` | If your Mac starts up to an Apple logo or progress bar | Mac startup | Apple logo/progress bar stall |
| 21 | Apple Support | `101666` | If your Mac starts up to a circle with a line through it | Mac startup compatibility | prohibitory symbol |
| 22 | Android Help | `2651367` | Fix internet connection problems on Android devices | Android network connectivity | mobile data/Wi-Fi connection problem |
| 23 | Pixel Phone Help | `7167687` | Fix a Pixel phone that won't charge or turn on | Pixel phone power/charging | won't turn on/black screen/won't charge |
| 24 | Pixel Phone Help | `6090599` | Fix battery drain problem | Pixel phone battery | battery draining quickly |
| 25 | Mozilla Support | `websites-dont-load-troubleshoot-and-fix-errors` | Websites don't load - troubleshoot and fix error messages | Firefox web loading | website load/error messages |
| 26 | Mozilla Support | `firefox-hangs-or-not-responding` | Firefox hangs or is not responding - How to fix | Firefox responsiveness | hangs/not responding |

## Validation

- Source class: official vendor/project support pages only.
- Source-record fields are stored in `/MEMORY/SOURCES/SUPPORT_ARTICLES/SOURCE_RECORDS_20260621_BATCH_002.json`.
- No second truth: this proposal batch is review/navigation lineage only.
- No canonical status promotion, binaries, downloads, archive uploads, rehosting or raw crawl dumps.
- Redaction review: no secrets, personal data, serial numbers, customer logs or raw logs.

## Limitations

Batch size 100 remains the overall loop request. This continuation applies 15 bounded official records so each article can be source-scoped and deduplicated before any future review.

## Rollback

Remove this file, `/MEMORY/SOURCES/SUPPORT_ARTICLES/SOURCE_RECORDS_20260621_BATCH_002.json`, `/MEMORY/REPORTS/SUPPORT_ARTICLES/DR-20260621-support-articles-loop-002.md`, restore the previous support_articles cursor/index/changelog state, and rerun validation.
