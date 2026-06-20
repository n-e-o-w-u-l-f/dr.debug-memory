# MP-20260621-support-articles-loop-003

Version: 0.1.0
Status: PROPOSAL_ONLY
Artifact class: MEMORY_PROPOSAL_BATCH
Batch id: DR-20260621-support-articles-loop-003
Created: 2026-06-21
Updated: 2026-06-21
Previous cursor: `MEMORY cursor: support_articles` offset 26
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
| 27 | Microsoft Support | `60b01860-58f2-be66-7516-5c45a66ae3c6` | Troubleshooting Windows unexpected restarts and stop code errors | Windows stop code / blue screen | unexpected restart / stop code error |
| 28 | Microsoft Support | `723e092f-03fa-858b-5c80-131ec3fba75c` | Fix Bluetooth problems in Windows | Windows Bluetooth | Bluetooth pairing/audio/missing Bluetooth problems |
| 29 | Microsoft Support | `9424a1f7-6a3b-65a6-4d78-7f07eee84d2c` | Fix Wi-Fi connection issues in Windows | Windows Wi-Fi | Wi-Fi connection problem |
| 30 | Microsoft Support | `2311254e-cab8-42d6-90f3-cb0b9f63645f` | Fix Ethernet connection problems in Windows | Windows Ethernet | Ethernet connection problem |
| 31 | Microsoft Support | `524e9e89-4dee-8883-0afa-6bca0456324e` | Error codes in Device Manager in Windows | Windows Device Manager | Device Manager error code |
| 32 | Apple Support | `101588` | If your Mac isn't connecting to the internet over Wi-Fi | Mac Wi-Fi / internet | Mac connected to Wi-Fi but no internet / Wi-Fi issue |
| 33 | Apple Support | `102501` | If your external display is dark or low resolution | Mac external display | external display dark / low resolution / not detected workflow |
| 34 | Apple Support | `102498` | If you can't connect your Magic Keyboard, Magic Mouse, or Magic Trackpad to your Mac | Mac Bluetooth accessories | Magic Keyboard/Mouse/Trackpad won't connect |
| 35 | Apple Support | `102437` | If the built-in camera isn't working on your Mac | Mac built-in camera | built-in camera won't activate or appear in an app |
| 36 | Apple Support | `102411` | If the internal speakers on your Mac aren't working | Mac internal audio | internal speakers not working |
| 37 | HP Support | `ish_3974055-3873564-16` | HP PCs - Computer does not turn on, start, or boot | HP PCs startup/power | computer does not turn on/start/boot |
| 38 | HP Support | `ish_14746154-14746200-16` | HP printers – Cannot print | HP printers | cannot print / printer offline or disconnected |
| 39 | HP Support | `ish_2026505-1746064-16` | Troubleshoot a Wi-Fi connection to an HP printer | HP printer Wi-Fi | printer Wi-Fi connection problem |
| 40 | Dell Support | `000125609` | Resolve No Power, No POST, No Boot or No Video Issues | Dell computers startup/power/video | no power / no POST / no boot / no video |
| 41 | Dell Support | `000192048` | Windows 11 Wireless Networking Usage and Troubleshooting Guide for the Home | Dell Windows 11 wireless networking | wireless network usage/troubleshooting |

## Validation

- Source class: official vendor/project support pages only.
- Source-record fields are stored in `/MEMORY/SOURCES/SUPPORT_ARTICLES/SOURCE_RECORDS_20260621_BATCH_003.json`.
- No second truth: this proposal batch is review/navigation lineage only.
- No canonical status promotion, binaries, downloads, archive uploads, rehosting or raw crawl dumps.
- Redaction review: no secrets, personal data, serial numbers, customer logs or raw logs.

## Limitations

Batch size 100 remains the overall loop request. This continuation applies 15 bounded official records so each article can be source-scoped and deduplicated before any future review.

## Rollback

Remove this file, `/MEMORY/SOURCES/SUPPORT_ARTICLES/SOURCE_RECORDS_20260621_BATCH_003.json`, `/MEMORY/REPORTS/SUPPORT_ARTICLES/DR-20260621-support-articles-loop-003.md`, restore the previous support_articles cursor/index/changelog state, and rerun validation.
