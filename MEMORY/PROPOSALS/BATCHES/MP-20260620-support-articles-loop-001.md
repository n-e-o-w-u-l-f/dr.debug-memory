# MP-20260620-support-articles-loop-001

Version: 0.1.0
Status: PROPOSAL_ONLY
Artifact class: MEMORY_PROPOSAL_BATCH
Batch id: DR-20260620-support-articles-loop-001
Created: 2026-06-20
Updated: 2026-06-20
Requested batch size: 100
Applied intake count: 11
Canonical promotion: NO
Raw crawl dumps: NO
Binaries/downloads/rehosting: NO

## Scope

Proposal-first intake of official support/help-center/troubleshooting article source candidates. Claims are limited to the documented product/version/scope of the source and are not canonical fixes.

## Dedupe keys

`publisher + article_id + title + product_or_device_scope + error_signature_if_any + source_url + canonical_id`

## Candidate records

| # | Publisher | Article ID | Title | Scope | Error/signature scope |
|---:|---|---|---|---|---|
| 1 | Microsoft Support | `188c2b0f-10a7-d72f-65b8-32d177eb136c` | Troubleshoot problems updating Windows | Windows Update | update download/install failure |
| 2 | Microsoft Support | `19bc41ca-ad72-ae67-af3c-89ce169755dd` | Windows Update Troubleshooter | Windows Update | recurring/general update issues |
| 3 | Microsoft Support | `ea144c24-513d-a60e-40df-31ff78b3158a` | Get help with Windows upgrade and installation errors | Windows upgrade/install | upgrade/install errors |
| 4 | Apple Support | `116940` | If your iPhone won't turn on or the screen is black | iPhone | won't turn on/black screen/frozen |
| 5 | Apple Support | `118106` | If you can't update or restore your iPhone or iPod touch | iPhone/iPod touch | update/restore failure |
| 6 | Apple Support | `102474` | If your iPhone is stuck on the Apple logo | iPhone | stuck on Apple logo/progress bar |
| 7 | Google Play Help | `2668665` | Fix an installed Android app that isn't working | Android apps / Google Play | installed app not working |
| 8 | Android Help | `7665064` | Find problem apps by rebooting to safe mode on Android | Android safe mode/app issues | suspected problem app |
| 9 | Google Play Help | `14122894` | Fix problems downloading apps with basic troubleshooting steps | Google Play app downloads/installs | app download/install problem |
| 10 | Mozilla Support | `troubleshoot-and-diagnose-firefox-problems` | Troubleshoot and diagnose Firefox problems | Firefox | general Firefox problems |
| 11 | Mozilla Support | `firefox-cant-load-websites-other-browsers-can` | Firefox can't load websites but other browsers can | Firefox networking/web loading | Firefox cannot load websites while other browsers can |

## Validation

- Source class: official vendor/project support pages only.
- Source-record fields are stored in `/MEMORY/SOURCES/SUPPORT_ARTICLES/SOURCE_RECORDS_20260620_BATCH_001.json`.
- No second truth: this proposal batch is navigation/review lineage only.
- No canonical status promotion, binaries, downloads, archive uploads, rehosting or raw crawl dumps.
- Redaction review: no secrets, personal data, serial numbers, customer logs or raw logs.

## Limitations

Batch size 100 was requested. This first safe batch applies 11 records because every article must be source-bounded and deduplicated before storage.

## Rollback

Remove this file, `/MEMORY/SOURCES/SUPPORT_ARTICLES/SOURCE_RECORDS_20260620_BATCH_001.json`, `/MEMORY/REPORTS/SUPPORT_ARTICLES/DR-20260620-support-articles-loop-001.md`, restore the prior cursor/index/changelog state, and rerun validation.
