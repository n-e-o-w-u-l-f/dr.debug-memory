# MANUFACTURER_DEDUPE_STATE_20260619

Status: ACTIVE_DEDUPE_RESUME_STATE
Updated: 2026-06-20
Scope: Prevent duplicate manufacturer proposals during bounded ingest loops.
Artifact class: NAVIGATION_ONLY

## Read-before-work rule

Before any manufacturer ingest or promotion, read:

1. `/AGENTS.md`
2. `/MEMORY/INDEX.md`
3. `/MEMORY/MANUFACTURERS/INDEX.md`
4. `/MEMORY/PROPOSALS/INDEX.md`
5. `/MEMORY/PROPOSALS/BATCHES/INDEX_20260619_MANUFACTURER_INGEST.md`
6. This file

## Existing manufacturer index names observed 2026-06-19

These names were observed in `/MEMORY/MANUFACTURERS/INDEX.md` and must not be re-added as proposal seeds without explicit review/update rationale:

- ASUS
- ASRock
- GIGABYTE
- MSI
- BIOSTAR
- Intel
- AMI
- Insyde Software
- AMD
- Dell
- HP
- Lenovo
- Acer
- Samsung Semiconductor
- Western Digital
- Kingston Technology

## Proposal-only batch names observed

Batch 002 proposal-only names: Acer, ASUS, ASRock, GIGABYTE, MSI, Intel, AMD, NVIDIA, Samsung, Western Digital, Kingston, Crucial, NETGEAR, TP-Link, Ubiquiti, Brother, Canon, Epson, Logitech, Raspberry Pi, Arduino, Prusa Research, Apple, Microsoft, Sony.

Batch 003 proposal-only names: Seagate, Synology, QNAP, Cisco, Juniper Networks, MikroTik, D-Link, Zyxel, Lexmark, Xerox, Ricoh, Kyocera Document Solutions, Panasonic, LG, Bose, Sennheiser, Razer, CORSAIR, Cooler Master, Seasonic, Anker, Garmin, Fairphone, Framework, StarTech.com.

Batch 004 proposal-only names: Supermicro, Hewlett Packard Enterprise, IBM, Oracle, Fujitsu, NEC, Dynabook, PNY, ZOTAC, EVGA, be quiet!, Noctua, ARCTIC, SilverStone, Thermaltake, Fractal Design, NZXT, Lian Li, ViewSonic, BenQ, AOC, Wacom, Huion, XPPen, ELEGOO.

Batch 005 proposal-only names: Transcend, ADATA, SK hynix, KIOXIA, Patriot Memory, TEAMGROUP, Sabrent, Lexar, Silicon Power, AVM, Teltonika Networks, Peplink, GL.iNet, Tenda, Grandstream Networks, Yealink, Snom, Axis Communications, Reolink, Bambu Lab, Creality, Anycubic, Formlabs, UltiMaker, Goodram.

Batch 006 proposal-only names: Philips, TCL, Hisense, Sharp, Denon, Marantz, Yamaha, Shure, Audio-Technica, Focusrite, PreSonus, Steinberg, Native Instruments, Akai Professional, M-Audio, RODE, Blackmagic Design, DJI, GoPro, Insta360, Ring, Arlo, Belkin, Kensington, Polar.

Batch 007 proposal-only names: Huawei, Xiaomi, OPPO, OnePlus, vivo, Motorola Mobility, HMD Global, Honor, Nothing, Google, Meta, HTC VIVE, Valve, Pimax, Varjo, SteelSeries, Turtle Beach, Thrustmaster, Fanatec, 8BitDo, Keychron, Glorious, CHERRY, Jabra, Rapoo.

Batch 008 proposal-only names: Fluke, Tektronix, Keysight, RIGOL, SIGLENT, Saleae, Pico Technology, Seeed Studio, Adafruit, SparkFun, Waveshare, Espressif Systems, Nordic Semiconductor, STMicroelectronics, Texas Instruments, Microchip Technology, NXP Semiconductors, Silicon Labs, Renesas Electronics, Infineon Technologies, Quectel, u-blox, Semtech, Digi International, Bosch Sensortec.

Batch 009 proposal-only names: Zebra Technologies, Honeywell, Datalogic, Socket Mobile, Star Micronics, Schneider Electric, Eaton, CyberPower Systems, Vertiv, Siemens, Advantech, AAEON, Beckhoff Automation, Phoenix Contact, WAGO, Moxa, HMS Networks, Yubico, Nitrokey, Shelly, ITEAD, Aqara, Lutron, ecobee, Netatmo.

Batch 010 proposal-only names: Autel, Launch Tech, TOPDON, Innova Electronics, ScanTool.net, Xhorse, EcoFlow, BLUETTI, Jackery, Goal Zero, Roborock, ECOVACS, iRobot, Dreame, Narwal, Wyze, Govee, Meross, SwitchBot, Tuya, Yeelight, EZVIZ, Hikvision, Dahua Technology, UNI-T.

Batch 011 proposal-only names: Fujifilm, Nikon, Leica Camera, OM Digital Solutions, Sigma, Tamron, Tokina, Samyang Optics, Viltrox, Zhiyun, FeiyuTech, Godox, Aputure, Nanlite, SmallRig, Tilta, Atomos, Elinchrom, Profoto, Manfrotto, Gitzo, JOBY, Peak Design, Venus Optics, Hasselblad.

Batch 012 proposal-only names: Trotec Laser, Epilog Laser, Glowforge, xTool, Snapmaker, Shaper Tools, Carbide 3D, Bantam Tools, OpenBuilds, Inventables, Roland DG, Mimaki, Graphtec, Cricut, Silhouette America, Revopoint, Shining 3D, Creaform, FARO, Hexagon, Artec 3D, Flashforge, Raise3D, LulzBot, QIDI Tech.

## Known conflict/cleanup note

Batch 002 contains names already visible in `/MEMORY/MANUFACTURERS/INDEX.md` such as Acer, ASUS, ASRock, GIGABYTE, MSI, Intel, AMD, Western Digital and Kingston. Treat these as proposal lineage/refresh candidates, not as new canonical manufacturers.

## Next ingest rule

Batch 013 and later must exclude all names above unless the action is explicitly a dedupe/merge/update proposal.
