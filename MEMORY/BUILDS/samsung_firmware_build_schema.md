# Samsung Android firmware/build identity model

Status: RESEARCH_SEED
Source strength: Samsung Open Source Release Center is primary for open-source release packages and build strings; SamMobile/SamFW/XDA are secondary/community/firmware-index sources requiring review.

## Required identity fields

- Marketing name, if known: e.g. Galaxy S24 Ultra.
- Exact model code: e.g. `SM-S928B`, `SM-S928U`, `SM-S9280`.
- Region/CSC/Multi-CSC: e.g. `DBT`, `XEO`, `OXM`, carrier code.
- Android version and One UI version, if available.
- Security patch level.
- Firmware components:
  - `AP` / `PDA`
  - `BL`
  - `CP`
  - `CSC`
  - `HOME_CSC`
- Bootloader/Binary revision.
- Build date/release date.
- Kernel source package link, if from Samsung Open Source.
- Device partition/slot/AVB context before flashing/rooting.

## Diagnostic capture commands

```bash
adb shell getprop ro.product.model
adb shell getprop ro.product.device
adb shell getprop ro.build.fingerprint
adb shell getprop ro.bootloader
adb shell getprop gsm.version.baseband
adb shell getprop ro.build.version.release
adb shell getprop ro.build.version.security_patch
adb shell getprop ro.build.version.incremental
```

Samsung dialer/service code often shown by users:
```text
*#1234#
AP:
CP:
CSC:
```

## Important repair constraints

- Same marketing model is not enough. Exact `SM-...` model and CSC matter.
- Downgrade may be blocked by bootloader/binary revision anti-rollback.
- Carrier variants can differ in radio, bootloader unlockability, bands, and update channels.
- Unofficial mirror listings must not override official model/build evidence.
- Avoid giving exploit/root bypass instructions; keep to identification, backup, compatibility and recovery safety.
