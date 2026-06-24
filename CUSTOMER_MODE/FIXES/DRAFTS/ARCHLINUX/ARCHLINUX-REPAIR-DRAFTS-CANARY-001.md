---
id: ARCHLINUX-REPAIR-DRAFTS-CANARY-001
batch_id: ARCHLINUX-CANARY-001
created_at: 2026-06-24
updated_at: 2026-06-24
mode: ADMIN_MODE
status: PROPOSAL_READY_FOR_REVIEW
canonical_status: PROPOSAL_ONLY
validation_status: NOT_TESTED
redaction_status: clean; no secrets/logs/full manuals
---

# Arch Linux repair drafts — canary 001

These are draft workflows only. They require exact platform/device confirmation, backup/snapshot decision and rollback before use.

## DRAFT-PACMAN-KEYRING-MIRROR-001

- diagnosis: pacman sync/signature failure may be stale mirror, stale keyring, bad clock/network or wrong config.
- commands:
```sh
timedatectl status
ping -c 3 archlinux.org
pacman-conf --config /etc/pacman.conf | sed -n '1,120p'
tail -n 80 /var/log/pacman.log
pacman-key --list-keys | head
pacman -Sy archlinux-keyring
pacman-key --populate archlinux
pacman -Syu
```
- expected result: exact failing layer identified; full upgrade only after mirror/keyring are healthy.
- danger level: MEDIUM
- rollback/prevention: back up `/etc/pacman.conf` and `/etc/pacman.d/mirrorlist`; never lower SigLevel as a fix.
- evidence: pacman-key(8), pacman.conf(5), Arch mirrorlist generator.
- canonical_status: PROPOSAL_ONLY

## DRAFT-ARCH-CHROOT-RECOVERY-001

- diagnosis: recovery often fails because root, boot or ESP is not mounted into the target hierarchy.
- commands:
```sh
lsblk -f
blkid
mount /dev/<root-partition> /mnt
mkdir -p /mnt/boot
mount /dev/<esp-or-boot-partition> /mnt/boot
findmnt /mnt /mnt/boot
arch-chroot /mnt
```
- expected result: chroot shell in installed system with correct mount tree.
- danger level: HIGH
- rollback/prevention: `exit`; `umount -R /mnt`; document actual devices before writes.
- limitations: LUKS/LVM/RAID/Btrfs subvolumes need separate steps.
- evidence: arch-chroot(8), mount(8), blkid(8).
- canonical_status: PROPOSAL_ONLY

## DRAFT-MKINITCPIO-REGEN-001

- diagnosis: missing/stale initramfs after kernel, storage, encryption or boot partition changes.
- commands:
```sh
findmnt /boot
df -h /boot
pacman -Q linux linux-lts mkinitcpio 2>/dev/null || true
mkinitcpio -P
ls -lh /boot
```
- expected result: presets run without error and initramfs images exist.
- danger level: MEDIUM
- rollback/prevention: back up `/etc/mkinitcpio.conf`; keep fallback initramfs and known-good entry.
- limitations: hooks/modules are system-specific.
- evidence: Arch mkinitcpio manual path plus Arch recovery context.
- canonical_status: PROPOSAL_ONLY

## DRAFT-BOOTLOADER-DECISION-001

- diagnosis: do not reinstall a bootloader until boot mode, ESP mount and installed loader are known.
- commands:
```sh
test -d /sys/firmware/efi && echo UEFI || echo BIOS-or-CSM
findmnt /boot
bootctl status || true
bootctl list || true
ls -R /boot/loader /boot/grub 2>/dev/null | sed -n '1,120p'
```
- expected result: boot mode and loader evidence identified before any write command.
- danger level: HIGH for install/update/remove.
- rollback/prevention: copy `/boot`, loader entries and grub config; keep firmware boot menu access.
- evidence: bootctl(1); GRUB overview requires later dedicated batch.
- canonical_status: PROPOSAL_ONLY

## DRAFT-SYSTEMD-DIAGNOSIS-001

- diagnosis: service/display/login/network issue should be diagnosed from failed units and boot logs first.
- commands:
```sh
systemctl --failed
systemctl status <unit> --no-pager
journalctl -b -p warning..alert --no-pager
journalctl -u <unit> -b --no-pager
```
- expected result: failed unit and error signature identified.
- danger level: LOW
- rollback/prevention: redact usernames, hostnames, IPs, tokens and private paths before storage.
- evidence: systemctl(1), journalctl context.
- canonical_status: PROPOSAL_ONLY

## DRAFT-FSCK-SAFETY-001

- diagnosis: suspected ext filesystem corruption or mount failure.
- commands:
```sh
lsblk -f
findmnt /dev/<partition> || true
e2fsck -n /dev/<unmounted-ext-partition>
# only after confirming unmounted state and backup/snapshot decision:
e2fsck -f /dev/<unmounted-ext-partition>
```
- expected result: read-only check first; repair only on unmounted ext filesystem.
- danger level: HIGH
- rollback/prevention: image/snapshot if possible; never repair mounted filesystem; use btrfs/xfs tools for those filesystems.
- evidence: fsck(8), e2fsck(8), blkid(8).
- canonical_status: PROPOSAL_ONLY
