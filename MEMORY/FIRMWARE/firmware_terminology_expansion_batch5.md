# Firmware terminology expansion - Batch 5

Status: PROPOSAL_ONLY

## Why firmware appears in multiple places

Firmware can describe several different technical layers depending on device class:

- Embedded controller firmware
- BIOS/UEFI firmware
- SSD/HDD firmware
- NIC/Wi-Fi/Bluetooth firmware
- GPU VBIOS
- Router firmware image
- Baseband/modem firmware
- Android vendor/boot/dtbo/vendor_boot/radio packages
- Console NAND/bootloader/dashboard images
- Peripheral firmware delivered through DFU, UEFI UpdateCapsule or vendor flashers

Therefore Dr.Debug-MEMORY should store firmware as a cross-cutting entity linked to:

```text
manufacturer -> device -> model -> hardware revision -> firmware component -> firmware/build version -> source -> update method -> risk/rollback
```

## Modding terminology warning

Scene terms may use "firmware hack" loosely. Examples:

- Xbox 360 JTAG/RGH: often discussed as firmware/NAND/bootchain modification, but it may involve hardware glitching, NAND image changes, bootloader chain behavior and dashboard/kernel versions.
- iPhone jailbreak: usually exploit/patch chain affecting boot/userland/kernel policy, not normal firmware update.
- PlayStation jailbreak/modding: may refer to firmware version, exploit chain, custom firmware or hardware flasher depending on generation.

Memory rule: store the user's term, but normalize to the technical layer. Do not provide DRM, signature bypass, piracy, FRP/iCloud/activation-lock bypass or unauthorized access instructions.
