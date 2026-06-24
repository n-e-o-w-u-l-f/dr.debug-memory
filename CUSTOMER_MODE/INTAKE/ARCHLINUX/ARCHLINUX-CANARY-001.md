---
id: ARCHLINUX-CANARY-001
batch_id: ARCHLINUX-CANARY-001
created_at: 2026-06-24
updated_at: 2026-06-24
mode: ADMIN_MODE
family: linux
distribution: Arch Linux
status: PROPOSAL_READY_FOR_REVIEW
canonical_status: PROPOSAL_ONLY
validation_status: SOURCE_CONFIRMED
source_note: embedded; separate SOURCE_NOTES path rejected by policy dry-run
manual_note: embedded; separate MANUAL_NOTES path rejected by policy dry-run
fix_draft: CUSTOMER_MODE/FIXES/DRAFTS/ARCHLINUX/ARCHLINUX-REPAIR-DRAFTS-CANARY-001.md
redaction_status: clean; no secrets, private logs, serials or raw terminal dumps
---

# Arch Linux canary intake 001

Small repair-research batch. Not a validated workflow and not canonical MEMORY.

## Source records embedded due path policy

| id | title | source_url | source_type | evidence | repair scope |
|---|---|---|---|---|---|
| SRC-001 | Installation guide | https://wiki.archlinux.org/title/Installation_guide | ArchWiki | E2 | install/recovery; search-index confirmed, direct page challenged |
| SRC-002 | Pacman Mirrorlist Generator | https://archlinux.org/mirrorlist/ | official Arch service | E3 | fresh mirrorlist from Arch internal mirror database |
| SRC-003 | pacman-key(8) | https://man.archlinux.org/man/pacman-key.8 | Arch manual pages | E3 | pacman keyring wrapper and init/populate/refresh operations |
| SRC-004 | pacman.conf(5) | https://man.archlinux.org/man/pacman.conf.5.en | Arch manual pages | E3 | RootDir/DBPath/CacheDir/GPGDir/LogFile and repository Include |
| SRC-005 | arch-chroot(8) | https://man.archlinux.org/man/arch-chroot.8 | Arch manual pages | E3 | enhanced chroot; target should be a mountpoint |
| SRC-006 | pacstrap(8) | https://man.archlinux.org/man/pacstrap.8 | Arch manual pages | E3 | new root creation; host keys/mirrorlist copied by default |
| SRC-007 | bootctl(1) | https://man.archlinux.org/man/bootctl.1.en | Arch manual pages | E3 | EFI/systemd-boot status/list/install/update/remove |
| SRC-008 | systemctl(1) | https://man.archlinux.org/man/systemctl.1.en | Arch manual pages | E3 | service manager introspection/control |
| SRC-009 | fsck(8) | https://man.archlinux.org/man/fsck.8 | Arch manual pages | E3 | filesystem check/repair front-end and exit status |
| SRC-010 | e2fsck(8) | https://man.archlinux.org/man/e2fsck.8.en | Arch manual pages | E3 | ext2/3/4 check; mounted FS warning |
| SRC-011 | blkid(8) | https://man.archlinux.org/man/blkid.8.en | Arch manual pages | E3 | UUID/LABEL/type probing; lsblk --fs preferred for overview |
| SRC-012 | mount(8) | https://man.archlinux.org/man/mount.8 | Arch manual pages | E3 | attach filesystem device to directory tree |
| SRC-013 | Arch Logos and Artwork | https://archlinux.org/art/ | official Arch website | E3 | logos available subject to trademark policy |
| SRC-014 | Arch Trademark Policy | https://terms.archlinux.org/docs/trademark-policy/ | official Arch terms | E3 | non-endorsement, trademark restrictions, logo usage |

## ARCHLINUX-CANARY-PACMAN-001 — Pacman repair basics

- id: ARCHLINUX-CANARY-PACMAN-001
- title: Pacman repair basics
- command_or_topic: pacman
- manpage_name: pacman(8), pacman.conf(5)
- source_url: https://man.archlinux.org/man/pacman.conf.5.en
- source_type: official Arch/Arch manual source
- source_status: source-backed; see embedded source records
- Arch relevance: Arch Linux repair/recovery
- repair_relevance: failed sync/upgrade; config/cache/db/log path issue
- evidence_level: E3
- last_checked_date: 2026-06-24
- affected_files_or_components: /etc/pacman.conf; /var/lib/pacman; /var/cache/pacman/pkg; /var/log/pacman.log
- diagnosis: failed sync/upgrade; config/cache/db/log path issue
- safe command examples: `pacman -Syu; pacman-conf --config /etc/pacman.conf; tail -n 80 /var/log/pacman.log`
- expected output: successful sync or precise error
- danger level: MEDIUM
- rollback or prevention: backup config; do not delete DB blindly
- limitations: AUR helpers out of scope
- dedupe notes: canary item; verify against category index before promotion
- canonical_status: PROPOSAL_ONLY

## ARCHLINUX-CANARY-KEYRING-001 — pacman-key/keyring repair

- id: ARCHLINUX-CANARY-KEYRING-001
- title: pacman-key/keyring repair
- command_or_topic: pacman-key; archlinux-keyring
- manpage_name: pacman-key(8)
- source_url: https://man.archlinux.org/man/pacman-key.8
- source_type: official Arch/Arch manual source
- source_status: source-backed; see embedded source records
- Arch relevance: Arch Linux repair/recovery
- repair_relevance: signature/trust/expired-key failure
- evidence_level: E3
- last_checked_date: 2026-06-24
- affected_files_or_components: /etc/pacman.d/gnupg; /usr/share/pacman/keyrings
- diagnosis: signature/trust/expired-key failure
- safe command examples: `pacman-key --init; pacman-key --populate archlinux; pacman -Sy archlinux-keyring`
- expected output: initialized/populated keyring; keyring package updated before full upgrade
- danger level: MEDIUM
- rollback or prevention: keep clock sane; update keyring before long-delayed upgrades
- limitations: network/keyserver failures need separate diagnosis
- dedupe notes: canary item; verify against category index before promotion
- canonical_status: PROPOSAL_ONLY

## ARCHLINUX-CANARY-MIRROR-001 — Mirrorlist refresh

- id: ARCHLINUX-CANARY-MIRROR-001
- title: Mirrorlist refresh
- command_or_topic: mirrorlist
- manpage_name: pacman.conf(5)
- source_url: https://archlinux.org/mirrorlist/
- source_type: official Arch service
- source_status: source-backed; see embedded source records
- Arch relevance: Arch Linux repair/recovery
- repair_relevance: stale/out-of-sync mirror or download errors
- evidence_level: E3
- last_checked_date: 2026-06-24
- affected_files_or_components: /etc/pacman.d/mirrorlist; /etc/pacman.conf
- diagnosis: stale/out-of-sync mirror or download errors
- safe command examples: `cp -a /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak.$(date +%Y%m%d); curl -L https://archlinux.org/mirrorlist/ -o /tmp/mirrorlist`
- expected output: fresh candidate mirrorlist for review
- danger level: LOW
- rollback or prevention: backup mirrorlist; use official generator/status
- limitations: curl may be absent in recovery
- dedupe notes: canary item; verify against category index before promotion
- canonical_status: PROPOSAL_ONLY

## ARCHLINUX-CANARY-CHROOT-001 — arch-chroot recovery

- id: ARCHLINUX-CANARY-CHROOT-001
- title: arch-chroot recovery
- command_or_topic: arch-chroot; mount; lsblk; blkid
- manpage_name: arch-chroot(8), mount(8), blkid(8)
- source_url: https://man.archlinux.org/man/arch-chroot.8
- source_type: official Arch/Arch manual source
- source_status: source-backed; see embedded source records
- Arch relevance: Arch Linux repair/recovery
- repair_relevance: wrong/incomplete target hierarchy
- evidence_level: E3
- last_checked_date: 2026-06-24
- affected_files_or_components: target root; /boot/ESP; /mnt
- diagnosis: wrong/incomplete target hierarchy
- safe command examples: `lsblk -f; blkid; mount /dev/<root> /mnt; mount /dev/<esp> /mnt/boot; arch-chroot /mnt`
- expected output: chroot shell in installed system with mounted hierarchy
- danger level: HIGH
- rollback or prevention: exit; umount -R /mnt
- limitations: LUKS/LVM/RAID/Btrfs need extra steps
- dedupe notes: canary item; verify against category index before promotion
- canonical_status: PROPOSAL_ONLY

## ARCHLINUX-CANARY-MKINITCPIO-001 — mkinitcpio regeneration

- id: ARCHLINUX-CANARY-MKINITCPIO-001
- title: mkinitcpio regeneration
- command_or_topic: mkinitcpio
- manpage_name: mkinitcpio(1)
- source_url: https://man.archlinux.org/man/core/mkinitcpio/mkinitcpio.1.en
- source_type: Arch manual source
- source_status: source-backed via Arch manual path; challenged page not fully opened in this session
- Arch relevance: Arch Linux repair/recovery
- repair_relevance: stale/missing initramfs after kernel/storage/encryption change
- evidence_level: E2
- last_checked_date: 2026-06-24
- affected_files_or_components: /etc/mkinitcpio.conf; presets; /boot/initramfs-*
- diagnosis: stale/missing initramfs after kernel/storage/encryption change
- safe command examples: `findmnt /boot; df -h /boot; mkinitcpio -P; ls -lh /boot`
- expected output: presets complete; images exist
- danger level: MEDIUM
- rollback or prevention: backup config; keep fallback image; ensure /boot space
- limitations: hook order is system-specific
- dedupe notes: canary item; verify against category index before promotion
- canonical_status: PROPOSAL_ONLY

## ARCHLINUX-CANARY-BOOT-001 — Bootloader repair overview

- id: ARCHLINUX-CANARY-BOOT-001
- title: Bootloader repair overview
- command_or_topic: bootctl; grub-install; grub-mkconfig
- manpage_name: bootctl(1), systemd-boot(7), grub-install(8)
- source_url: https://man.archlinux.org/man/bootctl.1.en
- source_type: official Arch/Arch manual source
- source_status: source-backed for bootctl; GRUB overview needs later split batch
- Arch relevance: Arch Linux repair/recovery
- repair_relevance: missing/stale boot entry or wrong boot mode
- evidence_level: E3/E2
- last_checked_date: 2026-06-24
- affected_files_or_components: ESP; /boot/loader/entries; /boot/grub/grub.cfg; EFI NVRAM
- diagnosis: missing/stale boot entry or wrong boot mode
- safe command examples: `test -d /sys/firmware/efi; findmnt /boot; bootctl status; bootctl list`
- expected output: boot mode and loader evidence identified before writes
- danger level: HIGH
- rollback or prevention: backup /boot and entries; keep firmware menu access
- limitations: GRUB details need later split batch
- dedupe notes: canary item; verify against category index before promotion
- canonical_status: PROPOSAL_ONLY

## ARCHLINUX-CANARY-SYSTEMD-001 — journalctl/systemctl diagnosis

- id: ARCHLINUX-CANARY-SYSTEMD-001
- title: journalctl/systemctl diagnosis
- command_or_topic: systemctl; journalctl
- manpage_name: systemctl(1), journalctl(1)
- source_url: https://man.archlinux.org/man/systemctl.1.en
- source_type: official Arch/Arch manual source
- source_status: source-backed; see embedded source records
- Arch relevance: Arch Linux repair/recovery
- repair_relevance: failed service, login, display, network, mount unit
- evidence_level: E3
- last_checked_date: 2026-06-24
- affected_files_or_components: systemd units; journal
- diagnosis: failed service, login, display, network, mount unit
- safe command examples: `systemctl --failed; systemctl status <unit>; journalctl -b -p warning..alert; journalctl -u <unit> -b`
- expected output: failed unit/log signature identified
- danger level: LOW
- rollback or prevention: store redacted excerpts only
- limitations: journal persistence varies
- dedupe notes: canary item; verify against category index before promotion
- canonical_status: PROPOSAL_ONLY

## ARCHLINUX-CANARY-FSCK-001 — fsck/e2fsck safety

- id: ARCHLINUX-CANARY-FSCK-001
- title: fsck/e2fsck safety
- command_or_topic: fsck; e2fsck
- manpage_name: fsck(8), e2fsck(8)
- source_url: https://man.archlinux.org/man/e2fsck.8.en
- source_type: official Arch/Arch manual source
- source_status: source-backed; see embedded source records
- Arch relevance: Arch Linux repair/recovery
- repair_relevance: suspected filesystem corruption or mount failure
- evidence_level: E3
- last_checked_date: 2026-06-24
- affected_files_or_components: ext2/3/4 partitions; fstab
- diagnosis: suspected filesystem corruption or mount failure
- safe command examples: `lsblk -f; findmnt /dev/<part>; e2fsck -n /dev/<unmounted-ext-part>; e2fsck -f /dev/<unmounted-ext-part>`
- expected output: read-only check first; interactive repair only unmounted
- danger level: HIGH
- rollback or prevention: image/snapshot if possible; never repair mounted FS
- limitations: not for btrfs/xfs
- dedupe notes: canary item; verify against category index before promotion
- canonical_status: PROPOSAL_ONLY

## ARCHLINUX-CANARY-BLOCK-001 — lsblk/blkid/mount diagnosis

- id: ARCHLINUX-CANARY-BLOCK-001
- title: lsblk/blkid/mount diagnosis
- command_or_topic: lsblk; blkid; mount
- manpage_name: blkid(8), mount(8), lsblk(8)
- source_url: https://man.archlinux.org/man/blkid.8.en
- source_type: official Arch/Arch manual source
- source_status: source-backed; see embedded source records
- Arch relevance: Arch Linux repair/recovery
- repair_relevance: wrong UUID, wrong root/boot partition, unmounted target
- evidence_level: E3
- last_checked_date: 2026-06-24
- affected_files_or_components: block devices; UUID/LABEL; fstab; mountpoints
- diagnosis: wrong UUID, wrong root/boot partition, unmounted target
- safe command examples: `lsblk -f; blkid; findmnt --real; mount --target /mnt`
- expected output: device IDs and mounts visible before repair
- danger level: LOW
- rollback or prevention: prefer UUID/LABEL; backup fstab before edit
- limitations: encrypted/LVM stacks need extra tools
- dedupe notes: canary item; verify against category index before promotion
- canonical_status: PROPOSAL_ONLY

## ARCHLINUX-CANARY-ICON-001 — Arch icon/logo source record

- id: ARCHLINUX-CANARY-ICON-001
- title: Arch icon/logo source record
- command_or_topic: Arch Linux logo/artwork
- manpage_name: n/a
- source_url: https://archlinux.org/art/
- source_type: official Arch website
- source_status: source-backed; see trademark source notes
- Arch relevance: Arch Linux web render/reference
- repair_relevance: render needs source/trademark record without rehosting
- evidence_level: E3
- last_checked_date: 2026-06-24
- affected_files_or_components: logo references; web assets
- diagnosis: render needs source/trademark record without rehosting
- safe command examples: `no binary retrieval; store URL/trademark note only`
- expected output: render can link source; no copied logo
- danger level: LOW
- rollback or prevention: keep trademark declaration; avoid endorsement implication
- limitations: permission review required before storing any image
- dedupe notes: canary item; verify against category index before promotion
- canonical_status: PROPOSAL_ONLY

## README matrix status

README matrix update was not performed because the available write policy is additive `CUSTOMER_MODE/**` only. This batch remains proposal-only.
