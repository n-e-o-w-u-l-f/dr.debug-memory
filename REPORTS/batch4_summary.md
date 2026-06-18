# Batch 4 summary

## Added

- Networking protocol and repair memory seeds:
  - CGNAT / NAT / double NAT / IPv4 / IPv6 / firewall.
  - TCP, HTTP, FTP, SSH, SMB/Samba, NetBIOS.
  - IANA service-port seed.
  - Network error-code families.

- Builds structure:
  - Generic build identity schema.
  - Windows 11 current versions/builds as of 2026-06-09.
  - Windows 10 22H2 ESU-context seed.
  - Android/AOSP build identity rules.
  - Samsung firmware/build identity schema and Samsung Open Source examples.

- Android/custom ROM/recovery:
  - LineageOS identity model.
  - TWRP identity model.
  - CyanogenMod/CyanogenOS legacy model.
  - SamMobile/SamFW/XDA source handling matrix.

- Device identifiers:
  - PCI-SIG / PCI IDs.
  - USB-IF / USB IDs.
  - LVFS/fwupd.
  - DMI/SMBIOS.
  - Android getprop.

- Manufacturer/device category map:
  - Seed mapping for Acer, ASUS, Dell, HP, Lenovo, MSI, Samsung, Google, Sony, Microsoft, Amazon, NVIDIA, AMD, Intel, Broadcom, Qualcomm, MediaTek, 3dfx.

- User website technical evaluation:
  - Every URL requested by the user is represented with a source classification and import policy.

## Not done / not claimed

- No complete global list of all devices per manufacturer.
- No complete Samsung Android model+firmware universe.
- No exploit/jailbreak bypass instructions.
- No GitHub write/commit/merge/index update.
- No copyrighted manual scraping.
- No marketplace-driven authoritative specs.

## Recommended next private workflow

1. Review schemas.
2. Decide whether `MEMORY/BUILDS` becomes top-level.
3. Add validators for `source_status`, `record_id`, and duplicate model/build IDs.
4. Build importers only for primary registries first:
   - IANA ports CSV/XML.
   - PCI-SIG/PCI IDs.
   - usb.ids.
   - Samsung Open Source listing.
   - LineageOS/TWRP device registries.
5. Treat SamMobile/SamFW/XDA as review queues, not canonical importers.
