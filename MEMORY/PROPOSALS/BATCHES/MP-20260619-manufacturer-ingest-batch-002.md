# MP-20260619-manufacturer-ingest-batch-002

Status: PROPOSAL_ONLY  
Mode: OWNER_ADMIN_MODE bounded apply batch  
Repository: n-e-o-w-u-l-f/dr.debug-memory  
Created: 2026-06-19  
Scope: manufacturer official endpoint discovery, proposal-first ingest  
Batch size requested/applied: 25 / 25  
Canonical promotion: none  
Binary downloads: none  
Rehosting/archive upload: none  
Raw crawl dumps: none  

## Purpose

First bounded, resumable batch for the requested manufacturer ingest loop. This file records official-source manufacturer endpoint seeds only. It does not create canonical manufacturer profiles and does not assert model-level driver, firmware, BIOS, compatibility, error-code or fix facts.

## Dedupe and conflict notes

Existing manufacturer trees observed and excluded from this batch:

- `/MEMORY/MANUFACTURERS/DELL/`
- `/MEMORY/MANUFACTURERS/HP/`
- `/MEMORY/MANUFACTURERS/LENOVO/`

Repository status conflict observed: `README.md` database count showed `Hersteller | 0`, while `/MEMORY/INDEX/MANUFACTURERS/README.md` already referenced Dell, HP and Lenovo manufacturer trees. This batch keeps changes additive and does not overwrite README/CHANGES.

## Candidate schema defaults

```yaml
family: MANUFACTURERS
category: manufacturer
status: RESEARCH_SEED
confidence: MEDIUM
validation_status: SOURCE_CONFIRMED_FOR_OFFICIAL_ENDPOINT_ONLY
review_required: true
source_class: A_PRIMARY_OFFICIAL_VENDOR
retrieved_at: "2026-06-19"
canonical_promotion: "blocked pending repository-wide dedupe, source-record review and reviewer approval"
content_policy: "LINK_ONLY_METADATA"
binary_policy: "NO_DOWNLOADS_NO_REHOSTING"
```

## Batch candidates

| Candidate ID | Canonical name candidate | Aliases | Official home | Support/source URL | Category candidates | Source status |
|---|---|---|---|---|---|---|
| `ACER` | Acer | Acer Group, Acer Inc. | https://www.acer.com/ | https://www.acer.com/support | pc_components, notebook_oems, desktop_oems, monitor_display, peripherals | OFFICIAL_URL_RETRIEVED |
| `ASUS` | ASUS | ASUSTeK, ASUSTeK Computer Inc. | https://www.asus.com/ | https://www.asus.com/support/ | pc_components, notebook_oems, desktop_oems, router_wifi, gaming_accessories, monitor_display | OFFICIAL_URL_RETRIEVED |
| `ASROCK` | ASRock | ASRock Inc. | https://www.asrock.com/ | https://www.asrock.com/support/ | pc_components, embedded_sbc, industrial_pc | OFFICIAL_URL_RETRIEVED |
| `GIGABYTE` | GIGABYTE | GIGABYTE Technology, Gigabyte Technology Co., Ltd. | https://www.gigabyte.com/ | https://www.gigabyte.com/Support | pc_components, notebook_oems, gaming_accessories, monitor_display | OFFICIAL_URL_RETRIEVED |
| `MSI` | MSI | Micro-Star International, MSI Global | https://www.msi.com/ | https://www.msi.com/support | pc_components, notebook_oems, desktop_oems, gaming_accessories, monitor_display, networking | OFFICIAL_URL_RETRIEVED |
| `INTEL` | Intel | Intel Corporation | https://www.intel.com/ | https://www.intel.com/content/www/us/en/support.html | pc_components, server_oems, networking, embedded_sbc, industrial_pc | OFFICIAL_URL_RETRIEVED |
| `AMD` | AMD | Advanced Micro Devices | https://www.amd.com/ | https://www.amd.com/en/support | pc_components, server_oems, embedded_sbc | OFFICIAL_URL_RETRIEVED |
| `NVIDIA` | NVIDIA | NVIDIA Corporation | https://www.nvidia.com/ | https://www.nvidia.com/en-us/support/ | pc_components, server_oems, embedded_sbc, software_games | OFFICIAL_URL_RETRIEVED |
| `SAMSUNG` | Samsung | Samsung Electronics | https://www.samsung.com/ | https://www.samsung.com/support/ | smartphone_tablet, tv_av, monitor_display, storage, smart_home, audio | OFFICIAL_URL_RETRIEVED |
| `WESTERN_DIGITAL` | Western Digital | WD, SanDisk Professional | https://www.westerndigital.com/ | https://support-en.wd.com/ | storage | OFFICIAL_URL_RETRIEVED |
| `KINGSTON` | Kingston | Kingston Technology, Kingston FURY | https://www.kingston.com/ | https://www.kingston.com/en/support | storage, pc_components | OFFICIAL_URL_RETRIEVED |
| `CRUCIAL` | Crucial | Micron Crucial, Micron Technology | https://www.crucial.com/ | https://www.crucial.com/support | storage, pc_components | OFFICIAL_URL_RETRIEVED |
| `NETGEAR` | NETGEAR | Netgear | https://www.netgear.com/ | https://www.netgear.com/support/ | networking, router_wifi, smart_home | OFFICIAL_URL_RETRIEVED_EMPTY_BODY |
| `TP_LINK` | TP-Link | TP-Link, Tapo, Kasa, Omada, VIGI | https://www.tp-link.com/ | https://www.tp-link.com/support/ | networking, router_wifi, smart_home, camera_imaging | OFFICIAL_URL_RETRIEVED |
| `UBIQUITI` | Ubiquiti | UI, UniFi | https://ui.com/ | https://help.ui.com/hc/en-us | networking, router_wifi, camera_imaging, smart_home | OFFICIAL_URL_RETRIEVED |
| `BROTHER` | Brother | Brother Industries | https://www.brother.com/ | https://support.brother.com/ | printer_scanner | OFFICIAL_URL_RETRIEVED |
| `CANON` | Canon | Canon USA, Canon Inc. | https://www.usa.canon.com/ | https://www.usa.canon.com/support | printer_scanner, camera_imaging | OFFICIAL_URL_RETRIEVED |
| `EPSON` | Epson | Seiko Epson | https://epson.com/ | https://epson.com/Support/sl/s | printer_scanner, projector_display, industrial_pc | OFFICIAL_URL_RETRIEVED |
| `LOGITECH` | Logitech | Logi | https://www.logitech.com/ | https://support.logi.com/ | peripherals, gaming_accessories, audio, camera_imaging | OFFICIAL_URL_RETRIEVED |
| `RASPBERRY_PI` | Raspberry Pi | Raspberry Pi Ltd | https://www.raspberrypi.com/ | https://www.raspberrypi.com/documentation/ | embedded_sbc, radio_iot, software_games | OFFICIAL_URL_RETRIEVED |
| `ARDUINO` | Arduino | Arduino.cc | https://www.arduino.cc/ | https://support.arduino.cc/hc/en-us | embedded_sbc, radio_iot, software_games | OFFICIAL_URL_RETRIEVED |
| `PRUSA` | Prusa Research | Original Prusa, Prusa3D | https://www.prusa3d.com/ | https://help.prusa3d.com/ | peripherals, embedded_sbc, software_games | OFFICIAL_URL_RETRIEVED |
| `APPLE` | Apple | Apple Inc. | https://www.apple.com/ | https://support.apple.com/ | notebook_oems, desktop_oems, smartphone_tablet, tv_av, audio, smart_home | OFFICIAL_URL_RETRIEVED |
| `MICROSOFT` | Microsoft | Microsoft Corporation, Surface, Xbox | https://www.microsoft.com/ | https://support.microsoft.com/ | desktop_oems, notebook_oems, gaming_accessories, software_games | OFFICIAL_URL_RETRIEVED |
| `SONY` | Sony | Sony Electronics, Sony Corporation | https://www.sony.com/ | https://www.sony.com/electronics/support | tv_av, audio, camera_imaging, software_games, gaming_accessories | OFFICIAL_URL_RETRIEVED |

## Per-candidate limitations

- `ASUS`: support URL redirected to a regional/home view during retrieval; verify product-level support paths before promotion.
- `NETGEAR`: official support URL resolved but parser returned empty body; retry before promotion.
- Region-sensitive vendors: Acer, ASUS, Samsung, Western Digital, Kingston, Crucial, TP-Link and Brother may redirect by locale. Store region-specific endpoint records separately when needed.
- Product/model claims are not included. Create separate device/model proposals from official model pages only.

## Promotion gate

Promotion from this proposal to canonical records requires:

1. Search exact name, normalized name, aliases, official domains, source URLs and canonical IDs.
2. Add or update source records using the source registry fields.
3. Verify product/model-level details only from product/model-level official sources.
4. Preserve aliases as pointers to canonical records; do not create second truths.
5. Keep driver, firmware, BIOS, installer and vendor-tool binaries out of the repository by default.
6. Record review actor, validation status and rollback before canonical promotion.

## Validation

- Official-source-only endpoint discovery.
- No secrets, serials, customer data, account pages, raw logs, raw crawl dumps, binaries, firmware, drivers, installers, PDFs or manual bodies stored.
- Data-loss classifier: LOW, additive proposal files only.
- Rollback: remove this proposal file, the proposal index, status companion and report created by this batch.

## Resume pointer

Next safe loop should re-read current repository state, dedupe against this batch and existing Dell/HP/Lenovo trees, then continue with a non-overlapping `MP-YYYYMMDD-manufacturer-ingest-batch-NNN.md`.
