# Proposal: MS-DOS / FreeDOS / MSCDEX / AUTOEXEC.BAT / FAT source registry seed

Status: PROPOSAL_ONLY
Mode: OWNER_ADMIN_MODE apply requested; proposal-only import
Created: 2026-06-24
Canonical: false
Review required: true

## Scope

This proposal seeds source records for legacy DOS-family knowledge: MS-DOS, FreeDOS, startup files such as AUTOEXEC.BAT, CONFIG.SYS/FDCONFIG.SYS, MSCDEX/SHSUCDX, and FAT12/FAT16/FAT32 filesystem references.

The user phrase `mscidex` is treated as likely referring to `MSCDEX`. Keep `mscidex` as an alias/search key, not as canonical spelling.

## Safety / evidence decision

A complete canonical import of MS-DOS, FreeDOS, every DOS command, every historical driver and every FAT implementation is not safe in one pass. This file is a source-registry seed only.

- Official vendor/project/standards sources: E3 SOURCE_CONFIRMED candidates.
- Mirrors, archive copies and community notes: E2 DISCOVERY_ONLY unless confirmed by official sources.
- Binary installers, boot disks, driver packages and DOS utilities are high-risk binaries: do not rehost automatically.
- Do not store raw crawl dumps.
- Promote only after dedupe, README matrix sync, and source review.

## Proposed taxonomy

- OS/DOS/MS-DOS
- OS/DOS/FreeDOS
- OS/DOS/Startup/AUTOEXEC.BAT
- OS/DOS/Startup/CONFIG.SYS
- OS/DOS/Startup/FDCONFIG.SYS
- OS/DOS/CD-ROM/MSCDEX
- OS/DOS/CD-ROM/SHSUCDX
- Filesystems/FAT/FAT12
- Filesystems/FAT/FAT16
- Filesystems/FAT/FAT32
- Filesystems/FAT/exFAT

## Proposed source records

### freedos-project-home
- url: https://www.freedos.org/
- title: The FreeDOS Project
- source_class: official_project_docs
- publisher: FreeDOS Project
- retrieved_at: 2026-06-24
- scope: OS/DOS/FreeDOS overview and release entry point
- claim_supported: FreeDOS is an open-source DOS-compatible operating system for classic DOS games, legacy business software, and new DOS programs.
- limitations: Overview only; not a complete command reference.
- evidence_level: E3

### freedos-fdconfig-sys
- url: https://www.freedos.org/books/get-started/9-fdconfig-sys/
- title: How to configure FreeDOS with FDCONFIG.SYS
- source_class: official_project_docs
- publisher: FreeDOS Project
- retrieved_at: 2026-06-24
- scope: FDCONFIG.SYS and FreeDOS boot configuration
- claim_supported: FreeDOS uses FDCONFIG.SYS as a main root-directory configuration file containing configuration lines such as LASTDRIVE and FILES.
- limitations: FreeDOS-specific; do not generalize to MS-DOS without MS-DOS evidence.
- evidence_level: E3

### freedos-mscdex-help
- url: https://help.fdos.org/en/hhstndrd/base/mscdex.htm
- title: FreeDOS help: MSCDEX
- source_class: official_project_docs
- publisher: FreeDOS Help
- retrieved_at: 2026-06-24
- scope: MSCDEX compatibility command and SHSUCDX replacement note
- claim_supported: FreeDOS documents MSCDEX syntax and notes that FreeDOS uses SHSUCDX instead of MSCDEX.
- aliases: mscdex, mscidex, SHSUCDX
- limitations: Help page; verify exact binary behavior against package/version before canonical command records.
- evidence_level: E3

### freedos-help-index
- url: https://help.fdos.org/en/index.htm
- title: FreeDOS Help
- source_class: official_project_docs
- publisher: FreeDOS Help / FreeDOS Documentation Project
- retrieved_at: 2026-06-24
- scope: FreeDOS command/help documentation discovery
- claim_supported: Provides FreeDOS help index and command-help entry points.
- limitations: Command-level facts need per-page evidence.
- evidence_level: E3

### freedos-documentation-project
- url: https://help.freedos.org/
- title: FreeDOS Documentation Project
- source_class: official_project_docs
- publisher: FreeDOS Documentation Project
- retrieved_at: 2026-06-24
- scope: FreeDOS documentation source and contribution workflow
- claim_supported: Documentation project states that its GitLab is the master copy for documentation.
- limitations: Use docs as source records; do not mirror whole docs.
- evidence_level: E3

### msdos-622-manual-archive-discovery
- url: https://ia801204.us.archive.org/33/items/msdos_manual_622/msdos_manual_622.pdf
- title: Microsoft MS-DOS 6.22 manual archive copy
- source_class: archive_discovery
- publisher: Internet Archive copy of Microsoft manual
- retrieved_at: 2026-06-24
- scope: MS-DOS 6.22 manual discovery for CONFIG.SYS/AUTOEXEC.BAT behavior
- claim_supported: Archive text indicates MS-DOS reads CONFIG.SYS and AUTOEXEC.BAT when the computer starts, requiring restart for changes to take effect.
- limitations: Archive copy, not canonical Microsoft-hosted current source; use discovery-only until licensing/source status reviewed.
- evidence_level: E2

### msdos-622-mscdex-help-mirror
- url: https://www.infania.net/misc/dos622help/mscdex.html
- title: MS-DOS v6.22 Help: MSCDEX
- source_class: mirror_discovery
- publisher: Infania mirror of MS-DOS help
- retrieved_at: 2026-06-24
- scope: MSCDEX syntax and AUTOEXEC.BAT/CONFIG.SYS load relationship
- claim_supported: Mirror states MSCDEX provides access to CD-ROM drives and can be loaded from AUTOEXEC.BAT or command prompt, while the CD-ROM device driver must be loaded from CONFIG.SYS.
- limitations: Mirror only; confirm against original MS-DOS help/manual before canonical promotion.
- evidence_level: E2

### microsoft-fatgen-spec
- url: https://download.microsoft.com/download/1/6/1/161ba512-40e2-4cc9-843a-923143f3456c/fatgen103.doc
- title: Microsoft FAT: General Overview of On-Disk Format
- source_class: official_vendor_docs
- publisher: Microsoft
- retrieved_at: 2026-06-24
- scope: FAT12/FAT16/FAT32 on-disk format
- claim_supported: FAT12, FAT16 and FAT32 are distinguished by the bit-width of entries in the FAT structure.
- limitations: Historical specification; compare with UEFI context where firmware boot behavior matters.
- evidence_level: E3

### uefi-fat-media-access
- url: https://uefi.org/specs/UEFI/2.10/13_Protocols_Media_Access.html
- title: UEFI Specification 2.10 - Media Access
- source_class: standards_registry
- publisher: UEFI Forum
- retrieved_at: 2026-06-24
- scope: EFI FAT12/FAT16/FAT32 filesystem requirements
- claim_supported: EFI implementations must support FAT32, FAT16 and FAT12 variants of the EFI file system.
- limitations: UEFI firmware context only, not a complete generic FAT implementation guide.
- evidence_level: E3

### microsoft-exfat-specification
- url: https://learn.microsoft.com/en-us/windows/win32/fileio/exfat-specification
- title: exFAT file system specification
- source_class: official_vendor_docs
- publisher: Microsoft Learn
- retrieved_at: 2026-06-24
- scope: FAT-family successor exFAT implementation reference
- claim_supported: Microsoft describes exFAT as the successor to FAT32 in the FAT family and publishes the implementation specification.
- limitations: exFAT is not FAT32; keep separate taxonomy.
- evidence_level: E3

## Dedupe keys before promotion

- `MSCDEX`, `mscidex`, `SHSUCDX`
- `AUTOEXEC.BAT`, `CONFIG.SYS`, `FDCONFIG.SYS`, `FDAUTO.BAT`
- `FAT12`, `FAT16`, `FAT32`, `exFAT`
- source URL and normalized title
- DOS version: MS-DOS 6.22, FreeDOS 1.3/1.4, DOS 7.x/Windows 9x DOS

## README knowledge matrix note

README matrix was not updated in this apply batch because this is proposal-only and the current matrix needs targeted inspection before modification. Required future matrix fields: searched_total, present_total, missing_total, proposal_only_total, canonical_total, source_confirmed_total, last_checked.

## Apply boundary

This file may be written as proposal-only. It must not create canonical DOS/FAT command records in the same action.
