# MEMORY PROPOSAL — Stammbaum v0.13 electronics memory/web taxonomy

id: MP-20260624-STAMMBAUM-V013-ELECTRONICS-MEMORY-WEB
status: PROPOSAL_ONLY
canonical: false
target: Dr.Debug-MEMORY text database and Dr.Debug-Web Jekyll render tree
created_at: 2026-06-24
updated_at: 2026-06-24
owner_request: "DRDEBUG_OWNER_ADMIN=TRUE !dd memory proposal Stammbaum/v0.13 telecom-audio-cyber --apply"
evidence_level: E1_USER_DIRECTIVE_PLUS_RESEARCH_SEED
validation_status: DRY_RUN_READY_FOR_REVIEW
review_required: true

## Purpose

This proposal defines a high-detail electronics Stammbaum for two coordinated repositories:

1. `dr.debug-memory`
   - text-first, agent-readable, source-aware content database for Dr.Debug-GPT
   - preferred before internet search when repository content matches the user question
   - stores canonical/proposal records, source records, device/manufacturer candidates, error signatures, scripts, fixes, manuals metadata, and artifact references

2. `dr.debug-web`
   - Jekyll-based web viewpoint and renderer
   - stores non-text/renderable artifacts under a Stammbaum folder layout
   - renders endpoint pages, PDF/manual viewers, NFO/DIZ viewers, tables, diagrams, and artifact panels
   - does not become the canonical text database; it mirrors and renders Memory records

This proposal does not create canonical endpoint records yet. It defines the branching rules, slots, artifact classes, render strategy, and README knowledge-matrix update policy.

## Non-negotiable branching rules

- Do not merge two real endpoints into one endpoint.
- `Fix` is never the final path identity. A fix is a content slot or relation under the endpoint.
- `Version` can be a branch, but if it cannot be usefully decomposed further it should be represented as list items and release-record rows.
- Build/revision should normally precede language/locale for installable packages and OS media:
  `Version -> Edition/SKU -> Channel -> Build/Revision -> Architecture -> Language/Locale -> Package/Medium`.
- Legacy exceptions are allowed when localization is a build-family or separate product-family, e.g. old Windows 3.x regional builds.
- Manufacturer branches are navigation, not necessarily canonical identity. Endpoint identity must include enough discriminators: manufacturer, product line, device/model, revision, build, language, region, package, board revision, firmware, or artifact hash as applicable.
- Scripts should be assigned primarily to the operating system, shell, script engine, service manager, package manager, or firmware environment where they execute.
- Hazardous domains stay metadata/diagnosis/safety-first: mains, HV batteries, vehicles, surveillance, firmware flashing, router/firewall, ADB, cyber threat-intel, ROMs/trainers.

## Repository priority rule

When answering a user:
1. Search Dr.Debug-MEMORY first for matching canonical/proposal/source records.
2. If no or insufficient Memory match exists, research external sources.
3. New useful findings become Memory proposals with source status and dedupe notes.
4. Dr.Debug-Web renders the matched Memory endpoint and attached artifacts if present.
5. External internet content remains secondary unless Memory is missing, stale, or weaker.

## Dr.Debug-Web artifact rule

Non-text or render-focused artifacts belong in the web repository under a path corresponding to the Stammbaum endpoint, for example:

```text
Dr.Debug-WEB/_stammbaum/$MANUFACTURER/$DEVICE/$MODEL/$BRANCH/$ARTIFACT
```

Translated PDF example:

```text
Dr.Debug-WEB/_stammbaum/$MANUFACTURER/$DEVICE/$MODEL/manuals/$MANUFACTURER_$DEVICE_$MODEL_$LANGUAGE.pdf
```

The corresponding Memory record stores:
- artifact_id
- web_path
- original_source_url
- source_language
- target_language
- translator_model/tool
- source_hash
- translated_hash
- copyright/license note
- review status
- rendering profile
- canonical endpoint path

PDF translation rule:
- Only translate content the user has rights to process or where use is lawful.
- Keep original and translated artifact metadata linked.
- Do not claim a translated PDF exists unless generated and stored by tool output.
- Render translated PDFs via the web endpoint viewer, not as canonical text in Memory.

Jekyll note:
- `_stammbaum` should be configured as a collection if endpoint pages need front matter and output.
- PDFs and other binaries can be static files or collection-adjacent artifacts, with endpoint metadata referencing them.
- `_data` may hold navigation/count indexes generated from Memory exports, but must not become canonical truth.

## High-detail electronics Stammbaum v0.13

```text
Elektronik
├── 00_Quellen_und_Register
│   ├── Herstellerregister
│   │   ├── canonical_name
│   │   ├── aliases
│   │   ├── brands
│   │   ├── acquired_by
│   │   ├── support_url
│   │   ├── downloads_url
│   │   ├── manuals_url
│   │   ├── security_url
│   │   └── source_status
│   ├── Geräteidentifikatoren
│   │   ├── USB VID/PID
│   │   ├── PCI Vendor/Device/Subsys
│   │   ├── IEEE OUI/MA-L/MA-M/MA-S/IAB/CID
│   │   ├── Bluetooth SIG identifiers
│   │   ├── ACPI IDs
│   │   ├── DMI/SMBIOS
│   │   ├── Android build fingerprint
│   │   ├── Windows Hardware IDs
│   │   ├── Linux modalias
│   │   ├── fwupd/LVFS GUID
│   │   ├── UPC/EAN/GTIN
│   │   ├── MPN/SKU/OPN/S-Spec
│   │   └── serial_redaction_policy
│   ├── Standards_und_Normen
│   │   ├── IEC
│   │   ├── ISO
│   │   ├── IEEE
│   │   ├── IETF/RFC
│   │   ├── USB-IF
│   │   ├── Bluetooth SIG
│   │   ├── JEDEC
│   │   ├── PCI-SIG
│   │   ├── Khronos
│   │   ├── W3C/WHATWG
│   │   └── regional electrical codes
│   └── Archive_und_Metadata
│       ├── manuals metadata
│       ├── service manuals metadata
│       ├── firmware metadata
│       ├── driver metadata
│       ├── ROM/DAT metadata
│       ├── file format signatures
│       ├── checksums
│       └── artifact preservation notes
├── 01_Hersteller
│   ├── consumer electronics
│   ├── white goods
│   ├── networking vendors
│   ├── smartphone vendors
│   ├── computer vendors
│   ├── chip vendors
│   ├── industrial vendors
│   ├── automotive vendors
│   ├── audio vendors
│   ├── lighting vendors
│   ├── clone/bootleg/counterfeit labels
│   └── unknown/asserted manufacturers
├── 02_Geräte
│   ├── Computer_und_Mainboards
│   │   ├── Desktop PCs
│   │   ├── Laptops
│   │   ├── Single-board computers
│   │   │   ├── Raspberry Pi
│   │   │   ├── Banana Pi
│   │   │   ├── Orange Pi
│   │   │   ├── BeagleBone
│   │   │   └── Pico/microcontroller boards
│   │   ├── BIOS/UEFI devices
│   │   ├── Boot media
│   │   └── storage controllers
│   ├── Smartphones_Tablets_Wearables
│   │   ├── Android
│   │   │   ├── Samsung Galaxy
│   │   │   ├── Xiaomi
│   │   │   ├── Redmi
│   │   │   ├── BMAX / tablets / mini-PC adjacent
│   │   │   ├── Android TV
│   │   │   ├── ADB-capable smart TVs
│   │   │   └── pre-Android smartphones
│   │   ├── iPhone
│   │   ├── iPad
│   │   ├── Windows Mobile phones
│   │   ├── Nokia feature phones
│   │   ├── Google Glass
│   │   └── watches/projector clocks/digital clocks
│   ├── Netzwerk_und_Telekommunikation
│   │   ├── Router
│   │   │   ├── FRITZ!Box
│   │   │   ├── DG WLAN Plus Router
│   │   │   ├── Plume/SuperPod
│   │   │   ├── OpenWrt targets
│   │   │   ├── DD-WRT targets
│   │   │   ├── custom firmware targets
│   │   │   └── SOHO router security endpoints
│   │   ├── Modems
│   │   ├── ONT/Glasfasermodem
│   │   ├── TAE/DSL/Splitter/Telefonie
│   │   ├── Faxgeräte
│   │   ├── VoIP phones/ATA/PBX
│   │   ├── NAS
│   │   ├── switches
│   │   ├── access points/repeaters
│   │   ├── IP cameras
│   │   └── surveillance/NVR/VMS
│   ├── Spielkonsolen_und_Retro
│   │   ├── Sega
│   │   │   ├── Master System
│   │   │   ├── Mega Drive / Genesis
│   │   │   ├── Saturn
│   │   │   └── Dreamcast
│   │   ├── Nintendo
│   │   │   ├── NES/Famicom
│   │   │   ├── SNES/Super Famicom
│   │   │   ├── Wii
│   │   │   ├── Switch
│   │   │   └── Switch 2
│   │   ├── Sony PlayStation
│   │   ├── Microsoft Xbox
│   │   │   ├── Xbox Classic
│   │   │   ├── Xbox 360
│   │   │   ├── Xbox One S
│   │   │   ├── Xbox One X
│   │   │   ├── Xbox Series S
│   │   │   ├── Xbox Series X
│   │   │   └── Zubehör
│   │   ├── Steam hardware
│   │   │   ├── Steam Deck
│   │   │   ├── Steam Dock
│   │   │   ├── Steam Link
│   │   │   └── Steam Controller/SteamPad
│   │   ├── unlicensed/bootleg/clone consoles
│   │   ├── cartridge copiers
│   │   ├── SNES SD modules
│   │   ├── cheat modules
│   │   └── controllers/HID/XInput/DirectInput
│   ├── Haushaltsgeraete_und_Weissware
│   │   ├── mixer
│   │   ├── microwave ovens
│   │   ├── refrigerators
│   │   ├── dishwashers
│   │   ├── dryers
│   │   ├── freezers/ice chests/cooling shelves
│   │   ├── washing machines
│   │   ├── vacuum cleaners
│   │   └── spare parts/housing/pumps/boards
│   ├── Audio_HiFi_Medien
│   │   ├── amplifiers
│   │   ├── JBL Charge and Bluetooth speakers
│   │   ├── receivers
│   │   ├── DVD/Blu-ray players
│   │   ├── internet radios
│   │   ├── SHOUTcast clients/servers
│   │   ├── DAW hardware
│   │   ├── microphones
│   │   ├── headphones
│   │   ├── mixers
│   │   └── audio interfaces
│   ├── Display_und_Optik
│   │   ├── CRT TVs
│   │   ├── CRT monitors
│   │   ├── LCD/OLED TVs
│   │   ├── projectors/beamers
│   │   ├── 3D glasses
│   │   ├── VR headsets
│   │   │   ├── Oculus Rift
│   │   │   └── PC/console VR accessories
│   │   ├── laser pointers
│   │   └── projection clocks
│   ├── Licht_und_Gebaeude
│   │   ├── bulbs
│   │   ├── lamp sockets
│   │   ├── LED strips
│   │   ├── fairy lights
│   │   ├── ballasts
│   │   │   ├── KVG
│   │   │   └── EVG
│   │   ├── NDL/HPS
│   │   ├── MH/metal halide
│   │   ├── switches
│   │   │   ├── toggle switches
│   │   │   └── two-way switches
│   │   ├── sockets/outlets
│   │   ├── timers
│   │   └── digital timers
│   ├── Klima_Automation_Agrar
│   │   ├── terrarium automation
│   │   ├── aquarium lighting control
│   │   ├── digital thermometers
│   │   ├── HVAC/air conditioners
│   │   ├── dehumidifiers
│   │   ├── fans
│   │   ├── pipe fans
│   │   ├── radial/snail housing fans
│   │   ├── UFO LTI fans
│   │   └── sensors/controllers
│   ├── Mobilitaet_Industrie
│   │   ├── e-bikes/EPAC/Pedelec
│   │   ├── e-cars/BEV/PHEV/HEV/FCEV
│   │   ├── electric motors
│   │   ├── electrical pallet trucks
│   │   ├── electric forklifts
│   │   ├── automotive electronics
│   │   ├── sensors
│   │   ├── Mitsubishi MUT vehicle diagnostics
│   │   ├── Mitsubishi MELDAS C6/C64 CNC
│   │   ├── reverse vending/pfandautomaten
│   │   └── hydraulic pumps
│   └── Messgeraete_Werkzeuge
│       ├── multimeters
│       ├── oscilloscopes
│       ├── logic analyzers
│       ├── cable finders
│       ├── EC meters
│       ├── pH meters
│       ├── other meters
│       ├── drills
│       ├── cordless screwdrivers
│       └── service tools
├── 03_Bauteile
│   ├── ICs/chips
│   │   ├── microcontrollers
│   │   ├── CPUs
│   │   │   ├── Intel Pentium family
│   │   │   ├── Pentium II
│   │   │   ├── Pentium III
│   │   │   ├── Intel Atom
│   │   │   ├── AMD Athlon 64
│   │   │   └── AMD Ryzen
│   │   ├── GPUs
│   │   │   ├── 3dfx Voodoo
│   │   │   ├── Direct3D-era devices
│   │   │   └── OpenGL-capable devices
│   │   ├── EEPROM
│   │   │   ├── I2C
│   │   │   ├── SPI
│   │   │   ├── Microwire
│   │   │   ├── parallel
│   │   │   ├── density
│   │   │   ├── voltage
│   │   │   ├── package
│   │   │   ├── page size
│   │   │   ├── write protect
│   │   │   ├── endurance
│   │   │   └── retention
│   │   ├── RAM/ROM/Flash
│   │   ├── voltage regulators
│   │   ├── motor drivers
│   │   ├── sensor ICs
│   │   └── audio ICs
│   ├── LEDs_and_Diodes
│   │   ├── LED colors/wavelength
│   │   ├── forward voltage
│   │   ├── current rating
│   │   ├── luminous intensity
│   │   ├── viewing angle
│   │   ├── thermal derating
│   │   └── polarity/marking
│   ├── Passives
│   │   ├── resistors
│   │   ├── capacitors
│   │   ├── inductors
│   │   ├── transformers
│   │   ├── fuses
│   │   └── connectors
│   ├── Energy
│   │   ├── power supplies
│   │   ├── transformers
│   │   ├── accumulators
│   │   ├── chargers
│   │   ├── BMS
│   │   └── safety metadata
│   ├── Platinen_und_Baugruppen
│   │   ├── used boards
│   │   ├── board revision
│   │   ├── PCB markings
│   │   ├── schematic reference
│   │   ├── BOM
│   │   ├── test pads
│   │   └── replacement compatibility
│   └── Ersatzteile
│       ├── housing
│       ├── buttons
│       ├── cables
│       ├── screens
│       ├── boards
│       ├── motors
│       ├── pumps
│       └── sensors
├── 04_Software_Firmware_Boot
│   ├── Operating systems
│   │   ├── Microsoft
│   │   │   ├── MS-DOS
│   │   │   ├── Windows 3.x
│   │   │   ├── Windows 9x/ME
│   │   │   ├── Windows NT/2000/XP/Vista/7/8/10/11
│   │   │   ├── Windows Server
│   │   │   ├── Windows Mobile
│   │   │   └── WSL
│   │   ├── FreeDOS
│   │   ├── Linux distributions
│   │   ├── Debian/Raspberry Pi OS
│   │   ├── SteamOS
│   │   ├── Android
│   │   ├── iOS/iPadOS
│   │   ├── macOS / Mac OS X
│   │   ├── SunOS
│   │   ├── Solaris
│   │   ├── Xebian
│   │   └── embedded firmware OSes
│   ├── Shells_and_Scripts
│   │   ├── MS-DOS command.com/BATCH
│   │   ├── FreeDOS FreeCOM/BATCH/FDAUTO/FDCONFIG
│   │   ├── Windows CMD
│   │   ├── PowerShell
│   │   ├── POSIX sh
│   │   ├── Bash
│   │   ├── Zsh/Fish/Ksh
│   │   ├── Android shell/ADB
│   │   ├── macOS shell/launchd
│   │   ├── Linux systemd units/timers
│   │   ├── package maintainer scripts
│   │   └── installer scripts
│   ├── Boot
│   │   ├── boot CDs
│   │   ├── floppy images
│   │   ├── MBR
│   │   ├── GPT
│   │   ├── BIOS
│   │   ├── UEFI/EFI
│   │   ├── EFI System Partition
│   │   ├── boot managers
│   │   │   ├── GRUB
│   │   │   ├── systemd-boot
│   │   │   ├── Windows Boot Manager
│   │   │   ├── rEFInd
│   │   │   └── chainloaders
│   │   ├── secure boot
│   │   └── recovery media
│   ├── Applications
│   │   ├── Java
│   │   ├── .NET
│   │   ├── Visual Basic
│   │   ├── C
│   │   ├── C++
│   │   ├── C#
│   │   ├── Python
│   │   ├── PHP
│   │   ├── Apache
│   │   ├── nginx
│   │   ├── lighttpd
│   │   ├── vsftpd
│   │   ├── OpenSSH
│   │   ├── Dropbear
│   │   ├── OpenOffice
│   │   ├── Photoshop
│   │   ├── Photopea
│   │   ├── iTunes Store
│   │   ├── App Store
│   │   ├── Google Play
│   │   ├── F-Droid
│   │   ├── XP-AntiSpy
│   │   ├── SteamTinkerLaunch
│   │   ├── NonSteamLaunchers
│   │   ├── RetroArch
│   │   ├── Pi-hole
│   │   ├── Tailscale
│   │   ├── noip.com
│   │   ├── afraid.org/FreeDNS
│   │   └── MUGEN/XMUGEN
│   └── Packages_and_Containers
│       ├── Debian/APT
│       ├── Arch/pacman
│       ├── Flatpak
│       ├── Snap
│       ├── PyPI
│       ├── npm
│       ├── Maven
│       ├── NuGet
│       ├── crates.io
│       ├── Packagist
│       ├── RubyGems
│       ├── Go modules
│       ├── OCI containers
│       ├── Podman
│       ├── Distrobox
│       └── Steam Deck /home/deck/.local user-local packages
├── 05_Netzwerk_Protokolle_Dienste
│   ├── L1/L2
│   │   ├── Ethernet
│   │   ├── Wi-Fi
│   │   ├── Bluetooth
│   │   ├── Zigbee
│   │   ├── Z-Wave
│   │   ├── Thread/Matter
│   │   └── KNX/BACnet
│   ├── IP
│   │   ├── IPv4
│   │   ├── IPv6
│   │   ├── ICMP/ping
│   │   ├── subnetting
│   │   ├── CGNAT
│   │   ├── NAT
│   │   ├── firewall
│   │   └── routing
│   ├── Naming_and_Config
│   │   ├── DNS
│   │   ├── mDNS
│   │   ├── NetBIOS
│   │   ├── DHCPv4
│   │   ├── DHCPv6
│   │   ├── SLAAC
│   │   └── IANA port mapping
│   ├── File_and_Web
│   │   ├── FTP
│   │   ├── SFTP
│   │   ├── FTPS
│   │   ├── SMB
│   │   ├── HTTP
│   │   ├── HTTPS
│   │   ├── WebDAV
│   │   └── NAS protocols
│   ├── Messaging_and_Realtime
│   │   ├── IRC
│   │   ├── DCC
│   │   ├── SIP
│   │   ├── SDP
│   │   ├── RTP/RTCP
│   │   ├── RTSP
│   │   ├── ONVIF
│   │   └── SHOUTcast
│   ├── VPN_Privacy
│   │   ├── WireGuard
│   │   ├── IPsec/IKEv2
│   │   ├── OpenVPN
│   │   ├── Tailscale
│   │   ├── Tor
│   │   ├── bridge/exit/subnet-router profiles
│   │   └── DNS leak/MTU/routing diagnostics
│   └── Services
│       ├── Windows Services
│       ├── Linux systemd services
│       ├── macOS launchd services
│       ├── inetd/xinetd legacy
│       └── container services
├── 06_Spiele_Medien_Dateiformate
│   ├── Games
│   │   ├── Master of Orion
│   │   ├── The Ur-Quan Masters
│   │   ├── After Burner II
│   │   └── per-game slots
│   │       ├── identity
│   │       ├── versions/releases
│   │       ├── manual
│   │       ├── savegames
│   │       ├── cheats
│   │       ├── Game Genie
│   │       ├── Pro Action Replay
│   │       ├── trainer metadata
│   │       ├── hex/binary-diff metadata
│   │       ├── known ROM/DAT metadata
│   │       ├── emulator compatibility
│   │       ├── mods
│   │       └── debug notes
│   ├── File_formats
│   │   ├── file signatures / magic bytes
│   │   ├── NES iNES
│   │   ├── SNES SFC/SMC
│   │   ├── ISO/BIN/CUE
│   │   ├── NFO
│   │   ├── FILE_ID.DIZ
│   │   ├── PDF
│   │   ├── ROM/DAT
│   │   ├── savegame formats
│   │   └── config formats
│   ├── Graphics_APIs
│   │   ├── DirectX
│   │   ├── DirectPlay
│   │   ├── Direct3D
│   │   ├── OpenGL
│   │   ├── Glide/3dfx
│   │   └── Vulkan
│   └── Stores_and_Ecommerce
│       ├── Steam
│       ├── iTunes/App Store
│       ├── Google Play
│       ├── F-Droid
│       ├── Wish/Temu/Alibaba/AliExpress counterfeit risk
│       └── eCommerce catalog metadata
├── 07_Schaltplaene_Walkthroughs_Safety
│   ├── International schematic logic
│   ├── legacy wiring logic
│   ├── modern 3-phase color identification
│   ├── LED low-voltage color identification
│   ├── mains safety gates
│   ├── lockout/tagout metadata
│   ├── datasheet walkthrough template
│   ├── chip walkthrough template
│   ├── EEPROM walkthrough template
│   ├── lamp/bulb datasheet template
│   ├── board/BOM/schematic template
│   ├── measurement template
│   └── repair-risk classifier
├── 08_Cyber_Threat_Intel
│   ├── Actors
│   │   ├── APT28 / Fancy Bear / Forest Blizzard / STRONTIUM
│   │   ├── APT29 / Midnight Blizzard
│   │   ├── Sandworm
│   │   ├── Turla
│   │   ├── COLDRIVER / Star Blizzard
│   │   └── Anonymous / hacktivist label
│   ├── Threat_classes
│   │   ├── phishing
│   │   ├── credential theft
│   │   ├── malware
│   │   ├── ransomware
│   │   ├── DDoS
│   │   ├── supply-chain
│   │   ├── router compromise
│   │   ├── DNS hijacking
│   │   └── data espionage
│   ├── Defensive_slots
│   │   ├── advisory source
│   │   ├── affected product class
│   │   ├── indicator class
│   │   ├── detection placeholder
│   │   ├── mitigation
│   │   ├── patch/firmware guidance
│   │   ├── MFA/credential reset
│   │   ├── segmentation
│   │   └── incident response checklist
│   └── Safety
│       ├── no exploit reproduction
│       ├── no credential theft
│       ├── no malware
│       ├── no operational attack chains
│       └── attribution always source-bound
└── 09_Render_und_Artifacts
    ├── Text artifacts
    │   ├── Markdown
    │   ├── plain text
    │   ├── logs redacted
    │   ├── NFO
    │   ├── FILE_ID.DIZ
    │   └── source excerpts within quote limits
    ├── Binary/render artifacts
    │   ├── PDF manuals
    │   ├── translated PDFs
    │   ├── images
    │   ├── diagrams
    │   ├── schematics metadata
    │   ├── firmware metadata only
    │   ├── driver metadata only
    │   └── ROM/DAT metadata only
    ├── Web render profiles
    │   ├── pdf_viewer
    │   ├── text_viewer
    │   ├── nfo_cp437_viewer
    │   ├── file_id_diz_viewer
    │   ├── table_viewer
    │   ├── graph_viewer
    │   ├── diagram_viewer
    │   ├── image_gallery
    │   └── artifact_download_policy_panel
    └── Memory-Web sync
        ├── memory_record_id
        ├── web_endpoint_path
        ├── artifact_id
        ├── artifact_hash
        ├── language
        ├── source
        ├── license note
        ├── render mode
        ├── last_synced
        └── do_not_edit_canonical_data_here
```

## Endpoint record template

```yaml
id: ENDPOINT-...
status: PROPOSAL_ONLY
canonical: false
family: electronics
category: ...
manufacturer: ...
device: ...
model: ...
revision: ...
version: ...
build: ...
language: ...
region: ...
artifact_slots:
  manuals: 0
  translated_manuals: 0
  datasheets: 0
  service_manuals: 0
  firmware_metadata: 0
  drivers_metadata: 0
  scripts: 0
  fixes: 0
  diagrams: 0
  sources: 0
web:
  endpoint_path: Dr.Debug-WEB/_stammbaum/...
  render_profiles: []
sources: []
dedupe:
  searched_names: []
  conflicts: []
  result: NOT_RUN
risk:
  safety_tags: []
  redaction_required: true
```

## README Wissenstand compact table requested by owner

This is a proposal table for the README knowledge matrix style. The numeric values are owner-provided examples/targets in this task and must not be treated as real canonical database counts until verified by repo scan.

| 🧭 Bereich | 📚 Im Wissen | 👤 User | 🛠️ Admin | 🔎 Recherche | 🧾 Status |
|---|---:|---:|---:|---:|---|
| 🏭 Hersteller | 1021 | 31 | 721 | 260 | PROPOSED_UNVERIFIED_COUNTS |
| 📟 Geräte | 32 | 4 | 23 | 59 | PROPOSED_UNVERIFIED_COUNTS |
| 🧩 Modelle | 0 | 0 | 0 | 0 | COUNT_SCAN_REQUIRED |
| 🔢 Versionen / Revisionen / Builds | 0 | 0 | 0 | 0 | COUNT_SCAN_REQUIRED |
| 📘 Manuals / PDFs / NFO / DIZ | 0 | 0 | 0 | 0 | COUNT_SCAN_REQUIRED |
| 🧠 Branch-/Endpoint-Proposals | 1 | 1 | 0 | 1 | THIS_PROPOSAL_ONLY |

README update note:
- Direct README replacement is not performed in this proposal because current README table uses a compact/marker-sensitive structure.
- A future safe patch should append one row without deleting or restructuring the existing table.
- Canonical counters require repo scan and matrix renderer validation.

## Proposed README row

```markdown
| Stammbaum v0.13 electronics memory/web proposal | PROPOSAL_ONLY | 1 proposal | 2026-06-24 | `MEMORY/PROPOSALS/2026-06-24-stammbaum-v0-13-electronics-memory-web-proposal.md`; counts unverified; no canonical promotion. |
```

## Dr.Debug-Web proposed endpoint layout

```text
Dr.Debug-WEB/
├── _config.yml
├── _data/
│   ├── stammbaum_index.yml
│   ├── stammbaum_counts.yml
│   └── render_profiles.yml
├── _layouts/
│   ├── stammbaum_endpoint.html
│   ├── pdf_viewer.html
│   ├── text_artifact.html
│   └── diagram_viewer.html
├── _includes/
│   ├── stammbaum_breadcrumbs.html
│   ├── artifact_panel.html
│   ├── source_panel.html
│   └── risk_panel.html
└── _stammbaum/
    └── $MANUFACTURER/
        └── $DEVICE/
            └── $MODEL/
                ├── index.md
                ├── manuals/
                │   ├── original/
                │   └── translated/
                ├── diagrams/
                ├── nfo/
                ├── diz/
                ├── datasheets/
                ├── service/
                ├── scripts/
                ├── logs_redacted/
                └── metadata.yml
```

## Validation and limits

- No canonical promotion.
- No binary rehosting.
- No PDF generated or translated in this step.
- No direct Dr.Debug-Web write because the web repository target was not available to the current write tool.
- No direct README update performed; README patch row is proposed.
- Must run future repo scan before treating owner-provided counts as actual database counts.
