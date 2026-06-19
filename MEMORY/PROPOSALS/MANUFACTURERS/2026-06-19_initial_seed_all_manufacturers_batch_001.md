# MEMORY_PROPOSAL manufacturer ingest seed batch 001

proposal_id: memory-proposal-manufacturers-initial-seed-20260619-batch-001
created_at: 2026-06-19
updated_at: 2026-06-19
mode: OWNER_ADMIN_MODE
write_mode: proposal_only
status: RESEARCH_SEED
review_required: true
canonical_promotion: false
batch_mode: resumable
batch_size: 100
source_scope: official_sources_only
validation_status: DRY_RUN_ONLY
source_status_default: OFFICIAL_HOME_ONLY_UNVERIFIED_TARGET_URLS_PENDING
confidence_default: LOW

Rules: official homepage candidates only; no raw crawl dumps; no login/paywall bypass; no binary downloads; no rehosting; no canonical promotion. Support/downloads/manuals/security/firmware target URLs remain blank until verified from official sources in review.

Dedupe keys: canonical_name, normalized_name, aliases, official_home, support_url, downloads_url, manuals_url, security_url, firmware_url, source_url, domain, canonical_id.
Alias policy: aliases point to canonical records and must not create second truths.
Conflict policy: do not merge conflicts; create review notes.

Limitations code L1: homepage-domain seed only; all target URLs except official_home require later official-source verification and repository-wide dedupe before promotion.

|#|id|canonical_name_candidate|aliases|categories|official_home|regions|
|-:|-|-|-|-|-|-|
|1|mfg-research-seed-20260619-001-amd|AMD|Advanced Micro Devices|pc_components,server_oems|https://www.amd.com/|GLOBAL|
|2|mfg-research-seed-20260619-002-intel|Intel|Intel Corporation|pc_components,server_oems,networking|https://www.intel.com/|GLOBAL|
|3|mfg-research-seed-20260619-003-nvidia|NVIDIA|Nvidia|pc_components,server_oems|https://www.nvidia.com/|GLOBAL|
|4|mfg-research-seed-20260619-004-qualcomm|Qualcomm||smartphone_tablet,radio_iot,networking|https://www.qualcomm.com/|GLOBAL|
|5|mfg-research-seed-20260619-005-mediatek|MediaTek||smartphone_tablet,tv_av,networking,radio_iot|https://www.mediatek.com/|GLOBAL|
|6|mfg-research-seed-20260619-006-broadcom|Broadcom||networking,storage,server_oems|https://www.broadcom.com/|GLOBAL|
|7|mfg-research-seed-20260619-007-marvell|Marvell|Marvell Technology|networking,storage,server_oems|https://www.marvell.com/|GLOBAL|
|8|mfg-research-seed-20260619-008-realtek|Realtek|Realtek Semiconductor|pc_components,networking,audio|https://www.realtek.com/|GLOBAL|
|9|mfg-research-seed-20260619-009-asmedia|ASMedia|ASMedia Technology|pc_components,storage|https://www.asmedia.com.tw/|GLOBAL|
|10|mfg-research-seed-20260619-010-via-labs|VIA Labs|VLI|pc_components,storage|https://www.via-labs.com/|GLOBAL|
|11|mfg-research-seed-20260619-011-texas-instruments|Texas Instruments|TI|embedded_sbc,radio_iot,industrial_pc|https://www.ti.com/|GLOBAL|
|12|mfg-research-seed-20260619-012-stmicroelectronics|STMicroelectronics|ST|embedded_sbc,industrial_pc,radio_iot|https://www.st.com/|GLOBAL|
|13|mfg-research-seed-20260619-013-nxp|NXP|NXP Semiconductors|embedded_sbc,automotive_diagnostic_devices,radio_iot|https://www.nxp.com/|GLOBAL|
|14|mfg-research-seed-20260619-014-microchip|Microchip|Microchip Technology|embedded_sbc,industrial_pc,radio_iot|https://www.microchip.com/|GLOBAL|
|15|mfg-research-seed-20260619-015-renesas|Renesas|Renesas Electronics|embedded_sbc,industrial_pc,automotive_diagnostic_devices|https://www.renesas.com/|GLOBAL|
|16|mfg-research-seed-20260619-016-infineon|Infineon|Infineon Technologies|embedded_sbc,industrial_pc,automotive_diagnostic_devices|https://www.infineon.com/|GLOBAL|
|17|mfg-research-seed-20260619-017-silicon-labs|Silicon Labs|Silicon Laboratories|radio_iot,smart_home|https://www.silabs.com/|GLOBAL|
|18|mfg-research-seed-20260619-018-espressif|Espressif|Espressif Systems|embedded_sbc,radio_iot,smart_home|https://www.espressif.com/|GLOBAL|
|19|mfg-research-seed-20260619-019-raspberry-pi|Raspberry Pi|Raspberry Pi Ltd|embedded_sbc|https://www.raspberrypi.com/|GLOBAL|
|20|mfg-research-seed-20260619-020-arduino|Arduino||embedded_sbc,radio_iot|https://www.arduino.cc/|GLOBAL|
|21|mfg-research-seed-20260619-021-adafruit|Adafruit|Adafruit Industries|embedded_sbc,peripherals,radio_iot|https://www.adafruit.com/|GLOBAL|
|22|mfg-research-seed-20260619-022-sparkfun|SparkFun|SparkFun Electronics|embedded_sbc,radio_iot|https://www.sparkfun.com/|GLOBAL|
|23|mfg-research-seed-20260619-023-framework|Framework|Framework Computer|notebook_oems|https://frame.work/|GLOBAL|
|24|mfg-research-seed-20260619-024-dell|Dell|Dell Technologies|notebook_oems,desktop_oems,server_oems,monitor_display,peripherals|https://www.dell.com/|GLOBAL|
|25|mfg-research-seed-20260619-025-hp|HP|HP Inc.|notebook_oems,desktop_oems,printer_scanner,monitor_display,peripherals|https://www.hp.com/|GLOBAL|
|26|mfg-research-seed-20260619-026-lenovo|Lenovo||notebook_oems,desktop_oems,server_oems,monitor_display,peripherals|https://www.lenovo.com/|GLOBAL|
|27|mfg-research-seed-20260619-027-acer|Acer||notebook_oems,desktop_oems,monitor_display,peripherals|https://www.acer.com/|GLOBAL|
|28|mfg-research-seed-20260619-028-asus|ASUS|ASUSTeK|pc_components,notebook_oems,desktop_oems,router_wifi,monitor_display,gaming_accessories|https://www.asus.com/|GLOBAL|
|29|mfg-research-seed-20260619-029-msi|MSI|Micro-Star International|pc_components,notebook_oems,desktop_oems,monitor_display,gaming_accessories|https://www.msi.com/|GLOBAL|
|30|mfg-research-seed-20260619-030-gigabyte|GIGABYTE|Gigabyte Technology|pc_components,notebook_oems,desktop_oems,monitor_display|https://www.gigabyte.com/|GLOBAL|
|31|mfg-research-seed-20260619-031-asrock|ASRock||pc_components,desktop_oems,industrial_pc|https://www.asrock.com/|GLOBAL|
|32|mfg-research-seed-20260619-032-biostar|BIOSTAR||pc_components|https://www.biostar.com.tw/|GLOBAL|
|33|mfg-research-seed-20260619-033-evga|EVGA||pc_components,cooling_power,gaming_accessories|https://www.evga.com/|GLOBAL|
|34|mfg-research-seed-20260619-034-sapphire|SAPPHIRE|Sapphire Technology|pc_components,industrial_pc|https://www.sapphiretech.com/|GLOBAL|
|35|mfg-research-seed-20260619-035-powercolor|PowerColor|TUL Corporation|pc_components|https://www.powercolor.com/|GLOBAL|
|36|mfg-research-seed-20260619-036-zotac|ZOTAC||pc_components,desktop_oems|https://www.zotac.com/|GLOBAL|
|37|mfg-research-seed-20260619-037-pny|PNY|PNY Technologies|pc_components,storage|https://www.pny.com/|GLOBAL|
|38|mfg-research-seed-20260619-038-palit|Palit|Palit Microsystems|pc_components|https://www.palit.com/|GLOBAL|
|39|mfg-research-seed-20260619-039-kfa2|KFA2|GALAX|pc_components|https://www.galax.com/|GLOBAL|
|40|mfg-research-seed-20260619-040-western-digital|Western Digital|WD|storage,nas|https://www.westerndigital.com/|GLOBAL|
|41|mfg-research-seed-20260619-041-seagate|Seagate|Seagate Technology|storage,nas|https://www.seagate.com/|GLOBAL|
|42|mfg-research-seed-20260619-042-samsung|Samsung|Samsung Electronics|storage,monitor_display,tv_av,smartphone_tablet,printer_scanner|https://www.samsung.com/|GLOBAL|
|43|mfg-research-seed-20260619-043-sk-hynix|SK hynix|SK Hynix|storage,pc_components|https://www.skhynix.com/|GLOBAL|
|44|mfg-research-seed-20260619-044-micron|Micron|Micron Technology, Crucial|storage,pc_components|https://www.micron.com/|GLOBAL|
|45|mfg-research-seed-20260619-045-kingston|Kingston|Kingston Technology|storage,pc_components|https://www.kingston.com/|GLOBAL|
|46|mfg-research-seed-20260619-046-kioxia|Kioxia|Toshiba Memory|storage|https://www.kioxia.com/|GLOBAL|
|47|mfg-research-seed-20260619-047-sandisk|SanDisk||storage|https://www.sandisk.com/|GLOBAL|
|48|mfg-research-seed-20260619-048-synology|Synology||nas,networking|https://www.synology.com/|GLOBAL|
|49|mfg-research-seed-20260619-049-qnap|QNAP|QNAP Systems|nas,networking|https://www.qnap.com/|GLOBAL|
|50|mfg-research-seed-20260619-050-netgear|NETGEAR||networking,router_wifi,nas,smart_home|https://www.netgear.com/|GLOBAL|
|51|mfg-research-seed-20260619-051-tp-link|TP-Link||networking,router_wifi,smart_home|https://www.tp-link.com/|GLOBAL|
|52|mfg-research-seed-20260619-052-d-link|D-Link||networking,router_wifi,smart_home|https://www.dlink.com/|GLOBAL|
|53|mfg-research-seed-20260619-053-cisco|Cisco|Cisco Systems|networking,server_oems,security|https://www.cisco.com/|GLOBAL|
|54|mfg-research-seed-20260619-054-ubiquiti|Ubiquiti||networking,router_wifi,camera_imaging,smart_home|https://www.ui.com/|GLOBAL|
|55|mfg-research-seed-20260619-055-mikrotik|MikroTik||networking,router_wifi|https://mikrotik.com/|GLOBAL|
|56|mfg-research-seed-20260619-056-avm|AVM|FRITZ!|networking,router_wifi,smart_home|https://avm.de/|EU|
|57|mfg-research-seed-20260619-057-zyxel|Zyxel||networking,router_wifi|https://www.zyxel.com/|GLOBAL|
|58|mfg-research-seed-20260619-058-brother|Brother||printer_scanner|https://www.brother.com/|GLOBAL|
|59|mfg-research-seed-20260619-059-canon|Canon||printer_scanner,camera_imaging|https://www.canon.com/|GLOBAL|
|60|mfg-research-seed-20260619-060-epson|Epson|Seiko Epson|printer_scanner,monitor_display|https://www.epson.com/|GLOBAL|
|61|mfg-research-seed-20260619-061-lexmark|Lexmark||printer_scanner|https://www.lexmark.com/|GLOBAL|
|62|mfg-research-seed-20260619-062-xerox|Xerox||printer_scanner|https://www.xerox.com/|GLOBAL|
|63|mfg-research-seed-20260619-063-ricoh|Ricoh||printer_scanner,camera_imaging|https://www.ricoh.com/|GLOBAL|
|64|mfg-research-seed-20260619-064-benq|BenQ||monitor_display,peripherals|https://www.benq.com/|GLOBAL|
|65|mfg-research-seed-20260619-065-viewsonic|ViewSonic||monitor_display|https://www.viewsonic.com/|GLOBAL|
|66|mfg-research-seed-20260619-066-aoc|AOC||monitor_display|https://aoc.com/|GLOBAL|
|67|mfg-research-seed-20260619-067-lg|LG|LG Electronics|monitor_display,tv_av,smartphone_tablet,smart_home|https://www.lg.com/|GLOBAL|
|68|mfg-research-seed-20260619-068-sony|Sony||tv_av,camera_imaging,audio,gaming_accessories|https://www.sony.com/|GLOBAL|
|69|mfg-research-seed-20260619-069-panasonic|Panasonic||tv_av,camera_imaging,smart_home,medical_consumer_devices|https://www.panasonic.com/|GLOBAL|
|70|mfg-research-seed-20260619-070-philips|Philips||monitor_display,tv_av,audio,medical_consumer_devices,smart_home|https://www.philips.com/|GLOBAL|
|71|mfg-research-seed-20260619-071-tcl|TCL||tv_av,smartphone_tablet,smart_home|https://www.tcl.com/|GLOBAL|
|72|mfg-research-seed-20260619-072-hisense|Hisense||tv_av,smart_home|https://www.hisense.com/|GLOBAL|
|73|mfg-research-seed-20260619-073-apple|Apple||notebook_oems,desktop_oems,smartphone_tablet,peripherals,audio|https://www.apple.com/|GLOBAL|
|74|mfg-research-seed-20260619-074-microsoft|Microsoft||notebook_oems,desktop_oems,peripherals,gaming_accessories|https://www.microsoft.com/|GLOBAL|
|75|mfg-research-seed-20260619-075-google|Google||smartphone_tablet,smart_home,router_wifi|https://www.google.com/|GLOBAL|
|76|mfg-research-seed-20260619-076-motorola|Motorola||smartphone_tablet,radio_iot|https://www.motorola.com/|GLOBAL|
|77|mfg-research-seed-20260619-077-nokia|Nokia||smartphone_tablet,networking|https://www.nokia.com/|GLOBAL|
|78|mfg-research-seed-20260619-078-logitech|Logitech||peripherals,gaming_accessories,camera_imaging,audio|https://www.logitech.com/|GLOBAL|
|79|mfg-research-seed-20260619-079-razer|Razer||peripherals,gaming_accessories,notebook_oems,audio|https://www.razer.com/|GLOBAL|
|80|mfg-research-seed-20260619-080-corsair|Corsair||pc_components,cooling_power,peripherals,gaming_accessories|https://www.corsair.com/|GLOBAL|
|81|mfg-research-seed-20260619-081-steelseries|SteelSeries||peripherals,gaming_accessories,audio|https://steelseries.com/|GLOBAL|
|82|mfg-research-seed-20260619-082-hyperx|HyperX||peripherals,gaming_accessories,audio,pc_components|https://hyperx.com/|GLOBAL|
|83|mfg-research-seed-20260619-083-cooler-master|Cooler Master||cooling_power,pc_components,peripherals,gaming_accessories|https://www.coolermaster.com/|GLOBAL|
|84|mfg-research-seed-20260619-084-noctua|Noctua||cooling_power,pc_components|https://noctua.at/|GLOBAL|
|85|mfg-research-seed-20260619-085-be-quiet|be quiet!||cooling_power,pc_components|https://www.bequiet.com/|GLOBAL|
|86|mfg-research-seed-20260619-086-seasonic|Seasonic||cooling_power,pc_components|https://seasonic.com/|GLOBAL|
|87|mfg-research-seed-20260619-087-thermaltake|Thermaltake||cooling_power,pc_components,peripherals,gaming_accessories|https://www.thermaltake.com/|GLOBAL|
|88|mfg-research-seed-20260619-088-gopro|GoPro||camera_imaging|https://gopro.com/|GLOBAL|
|89|mfg-research-seed-20260619-089-dji|DJI||camera_imaging,radio_iot,smart_home|https://www.dji.com/|GLOBAL|
|90|mfg-research-seed-20260619-090-garmin|Garmin||smartphone_tablet,medical_consumer_devices,automotive_diagnostic_devices,radio_iot|https://www.garmin.com/|GLOBAL|
|91|mfg-research-seed-20260619-091-fitbit|Fitbit||medical_consumer_devices,smartphone_tablet|https://www.fitbit.com/|GLOBAL|
|92|mfg-research-seed-20260619-092-withings|Withings||medical_consumer_devices,smart_home|https://www.withings.com/|GLOBAL|
|93|mfg-research-seed-20260619-093-omron-healthcare|Omron Healthcare||medical_consumer_devices|https://www.omron-healthcare.com/|GLOBAL|
|94|mfg-research-seed-20260619-094-bosch|Bosch||automotive_diagnostic_devices,industrial_pc,smart_home|https://www.bosch.com/|GLOBAL|
|95|mfg-research-seed-20260619-095-autel|Autel|Autel Intelligent Technology|automotive_diagnostic_devices,radio_iot|https://www.autel.com/|GLOBAL|
|96|mfg-research-seed-20260619-096-launch-tech|Launch Tech|LAUNCH|automotive_diagnostic_devices|https://www.cnlaunch.com/|GLOBAL|
|97|mfg-research-seed-20260619-097-fluke|Fluke||industrial_pc,peripherals|https://www.fluke.com/|GLOBAL|
|98|mfg-research-seed-20260619-098-advantech|Advantech||industrial_pc,embedded_sbc,networking|https://www.advantech.com/|GLOBAL|
|99|mfg-research-seed-20260619-099-siemens|Siemens||industrial_pc,networking,medical_consumer_devices|https://www.siemens.com/|GLOBAL|
|100|mfg-research-seed-20260619-100-schneider-electric|Schneider Electric||industrial_pc,smart_home|https://www.se.com/|GLOBAL|

Implicit candidate fields for every row: support_url blank; downloads_url blank; manuals_url blank; security_url blank; firmware_url blank; regions as listed; source_status OFFICIAL_HOME_ONLY_UNVERIFIED_TARGET_URLS_PENDING; confidence LOW; retrieved_at 2026-06-19; limitations L1.

Resumability:
next_batch: 002
cursor: after_row_100
rollback: remove this proposal batch file and its proposal-index row only.
