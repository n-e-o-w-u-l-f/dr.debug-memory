# MP-20260620-manufacturer-ingest-batch-017

Status: PROPOSAL_ONLY  
Mode: OWNER_ADMIN_MODE bounded apply batch  
Repository: n-e-o-w-u-l-f/dr.debug-memory  
Created: 2026-06-20  
Scope: manufacturer official endpoint discovery after dedupe-index installation  
Batch size requested/applied: 25 / 25  
Canonical promotion: none  
Binary downloads: none  
Rehosting/archive upload: none  
Raw crawl dumps: none  

## Purpose

Sixteenth continued bounded manufacturer-ingest batch. This batch focuses on network/security appliances, enterprise switches, Wi-Fi systems, router/firewall platforms, network testing equipment and related firmware/software ecosystems after reading the active resume/dedupe state.

## Mandatory resume/dedupe inputs for this batch

Read before continuing:

1. `/AGENTS.md`
2. `/MEMORY/INDEX.md`
3. `/MEMORY/STATE/INDEX.md`
4. `/MEMORY/PROPOSALS/INDEX.md`
5. `/MEMORY/MANUFACTURERS/INDEX.md`
6. `/MEMORY/INDEXES/MANUFACTURER_DEDUPE_STATE_20260619.md`

## Exclusions applied

Excluded all names listed as existing manufacturer-index entries and all proposal-only names from batches 002 through 016. Batch 017 is non-overlapping with that dedupe state unless a later reviewer finds alias/sub-brand overlap.

## Candidate schema defaults

```yaml
family: MANUFACTURERS
category: manufacturer
status: RESEARCH_SEED
confidence: MEDIUM
validation_status: SOURCE_CONFIRMED_FOR_OFFICIAL_ENDPOINT_ONLY
review_required: true
source_class: A_PRIMARY_OFFICIAL_VENDOR
retrieved_at: "2026-06-20"
canonical_promotion: "blocked pending repository-wide dedupe, source-record review and reviewer approval"
content_policy: "LINK_ONLY_METADATA"
binary_policy: "NO_DOWNLOADS_NO_REHOSTING"
```

## Batch candidates

| Candidate ID | Canonical name candidate | Aliases | Official home | Support/source URL | Category candidates | Source status |
|---|---|---|---|---|---|---|
| `FORTINET` | Fortinet | FortiGate, FortiSwitch, FortiAP | https://www.fortinet.com/ | https://www.fortinet.com/support/product-downloads | security, networking, firewall_router, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `PALO_ALTO_NETWORKS` | Palo Alto Networks | PAN, PAN-OS | https://www.paloaltonetworks.com/ | https://support.paloaltonetworks.com/ | security, networking, firewall_router, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED_PORTAL |
| `SONICWALL` | SonicWall | SonicWall firewall, MySonicWall | https://www.sonicwall.com/ | https://www.sonicwall.com/support | security, networking, firewall_router, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `WATCHGUARD` | WatchGuard | Firebox, Fireware | https://www.watchguard.com/ | https://software.watchguard.com/ | security, networking, firewall_router, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `SOPHOS` | Sophos | Sophos Firewall, XGS | https://www.sophos.com/ | https://support.sophos.com/support/s/article/KBA-000007972 | security, networking, firewall_router, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `CHECK_POINT` | Check Point | Check Point Software Technologies | https://www.checkpoint.com/ | https://downloads.checkpoint.com/dc/login.htm | security, networking, firewall_router, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED_LOGIN_REQUIRED |
| `NETGATE` | Netgate | pfSense, Netgate Installer | https://www.netgate.com/ | https://www.pfsense.org/download/ | security, networking, firewall_router, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `DECISO` | Deciso | OPNsense, Deciso Appliances | https://www.deciso.com/ | https://opnsense.org/download/ | security, networking, firewall_router, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `PROTECTLI` | Protectli | Vault, coreboot Vault | https://protectli.com/ | https://kb.protectli.com/kb/bios-versions-for-the-vault/ | security, mini_pc, firewall_router, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `ARISTA_NETWORKS` | Arista Networks | Arista EOS, CloudVision | https://www.arista.com/ | https://www.arista.com/en/support | networking, switch, datacenter, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `EXTREME_NETWORKS` | Extreme Networks | ExtremeCloud, EXOS | https://www.extremenetworks.com/ | https://www.extremenetworks.com/support | networking, switch, wireless, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED_PORTAL |
| `RUCKUS_NETWORKS` | Ruckus Networks | RUCKUS, CommScope RUCKUS | https://www.ruckusnetworks.com/ | https://support.ruckuswireless.com/software | networking, wireless, switch, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `CAMBIUM_NETWORKS` | Cambium Networks | cnMaestro, PMP, ePMP | https://www.cambiumnetworks.com/ | https://support.cambiumnetworks.com/ | networking, wireless, radio_iot, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `ENGENIUS` | EnGenius | EnGenius Networks | https://www.engeniustech.com/ | https://www.engeniustech.com/eu/downloads/ | networking, wireless, switch, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `DRAYTEK` | DrayTek | Vigor, DrayOS | https://www.draytek.com/ | https://www.draytek.com/support/resources/routers | networking, firewall_router, wireless, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `ALLIED_TELESIS` | Allied Telesis | AlliedWare Plus | https://www.alliedtelesis.com/ | https://alliedtelesis.my.site.com/Support/CustomerCommunityArticle?articleId=kaBPJ0000000Q6O2AU | networking, switch, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED_LOGIN_REQUIRED |
| `TRENDNET` | TRENDnet | TRENDnet networking | https://www.trendnet.com/ | https://www.trendnet.com/support/ | networking, switch, wireless, camera_imaging, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `PLANET_TECHNOLOGY` | PLANET Technology | PLANET Networking | https://www.planet.com.tw/ | https://www.planet.com.tw/en/support/downloads | networking, switch, industrial_pc, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `EDGECORE_NETWORKS` | Edgecore Networks | Edgecore, Accton lineage | https://www.edge-core.com/ | https://support.edge-core.com/hc/en-us/sections/900000391183-Firmware | networking, switch, datacenter, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `FS` | FS | FS.com, Fiberstore | https://www.fs.com/ | https://www.fs.com/support.html | networking, switch, optics, datacenter, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED_SUPPORT_SEED |
| `RUIJIE_NETWORKS` | Ruijie Networks | Ruijie Reyee | https://www.ruijie.com/ | https://www.ruijie.com/en-global/support | networking, wireless, switch, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `KEENETIC` | Keenetic | KeeneticOS | https://keenetic.com/ | https://support.keenetic.com/ | networking, firewall_router, wireless, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `ALTA_LABS` | Alta Labs | Alta Networks, Alta Control | https://www.alta.inc/ | https://help.alta.inc/ | networking, wireless, switch, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED_SUPPORT_SEED |
| `LANTRONIX` | Lantronix | Lantronix Technical Resource Center | https://www.lantronix.com/ | https://www.lantronix.com/technical-support/ | networking, serial_console, industrial_pc, radio_iot, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `NETALLY` | NetAlly | LinkRunner, AirCheck, Link-Live | https://www.netally.com/ | https://www.netally.com/support/ | network_testing, networking, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |

## Per-candidate limitations

- Network/security appliances, switches, WLAN controllers and firewall/router platforms are often production-critical. Any operational fix or update requires platform context, backup/export, alternate access, maintenance window, rollback and lockout-risk review.
- `FORTINET`, `PALO_ALTO_NETWORKS`, `SONICWALL`, `WATCHGUARD`, `SOPHOS`, `CHECK_POINT`, `NETGATE`, `DECISO` and `PROTECTLI`: firewall/router platforms may expose firmware, OS images, BIOS, installers, license-gated downloads, VPN clients or upgrade-path tools. Store link-only metadata until exact product/model/version and entitlement context are reviewed.
- `ARISTA_NETWORKS`, `EXTREME_NETWORKS`, `RUCKUS_NETWORKS`, `CAMBIUM_NETWORKS`, `ENGENIUS`, `DRAYTEK`, `ALLIED_TELESIS`, `TRENDNET`, `PLANET_TECHNOLOGY`, `EDGECORE_NETWORKS`, `FS`, `RUIJIE_NETWORKS`, `KEENETIC`, `ALTA_LABS` and `LANTRONIX`: firmware/software compatibility depends on hardware revision, region, bootloader, controller/cloud tenancy and support entitlement.
- `PALO_ALTO_NETWORKS`, `CHECK_POINT`, `ALLIED_TELESIS`, `EXTREME_NETWORKS` and some `FORTINET`/`SONICWALL` paths require login, license, serial, contract or portal access. Do not bypass login/paywall/entitlement gates.
- `NETGATE` and `DECISO`: pfSense/OPNsense software and appliance firmware must be scoped to project, edition, hardware platform and installer/update channel. Do not conflate project/community software with appliance firmware without source-backed scope.
- `PROTECTLI`: BIOS/coreboot updates can brick devices or require external programmer recovery. Do not store procedural flashing steps as canonical records without exact Vault model, firmware family and rollback plan.
- `NETALLY`: test-equipment updates may involve Link-Live accounts or service plans. Store no account identifiers, site data, capture data, serials or support tickets.
- `FS`: support/download evidence was seeded at support-center level; product-specific firmware/software pages need direct model-level retrieval before promotion.
- `ALTA_LABS`: support evidence was seeded at help/release-note level; verify official product-download or update-channel scope before promotion.

## Promotion gate

Promotion from this proposal to canonical records requires:

1. Search exact name, normalized name, aliases, official domains, support URLs and canonical IDs.
2. Add source records using the source registry fields.
3. Verify product/model/SKU-level facts only from product/model/SKU-level official sources.
4. Preserve aliases as pointers to canonical records; do not create second truths.
5. Keep driver, firmware, BIOS, installer, OS image and vendor-tool binaries out of the repository by default.
6. Record review actor, validation status and rollback before canonical promotion.

## Validation

- Dedupe state read before candidate selection.
- Official-source-only endpoint seeds.
- Current web verification was performed for selected official support/download pages; seed-only entries are explicitly marked.
- No secrets, serials, customer data, account pages, license keys, raw logs, raw crawl dumps, binaries, firmware, drivers, installers, PDFs, OS images or manual bodies stored.
- Data-loss classifier: LOW, additive proposal/status/index files only.

## Resume pointer

Next safe loop must re-read `/MEMORY/INDEXES/MANUFACTURER_DEDUPE_STATE_20260619.md`, confirm batch 017 names are present, then continue with a non-overlapping `MP-YYYYMMDD-manufacturer-ingest-batch-NNN.md`.
