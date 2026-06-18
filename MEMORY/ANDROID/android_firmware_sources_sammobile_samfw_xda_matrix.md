# Android firmware/community source matrix — SamMobile, SamFW, XDA

Status: RESEARCH_SEED
Purpose: Evaluate third-party/community sources for Dr.Debug-MEMORY without treating them as official authority.

## Samsung Open Source Release Center
Use for:
- Model/build/source package correlation.
- Kernel/GPL source packages.
- Official source release filenames.

Limits:
- Not a complete consumer firmware mirror.
- Source package availability does not prove OTA availability for a user.

## SamMobile
Use for:
- Firmware number interpretation.
- Firmware index hints by model and region/CSC.
- Cross-checking build strings users report.

Limits:
- Third-party source, not manufacturer authority.
- Downloads and availability can change.
- Must not override exact model/CSC/bootloader revision from device.

## SamFW
Use for:
- Model/CSC/build-date/OS/region hints.
- CSC/Multi-CSC explanations.
- Cross-checking firmware metadata.

Limits:
- Third-party source.
- Tools that change CSC or flash firmware can be risky; Dr.Debug public should not give bypass/exploit workflow.

## XDA
Use for:
- Community discovery of firmware tools, device-specific bootloader/recovery quirks, confirmed user failure modes.
- Historical SamFirm/Samloader/Odin/TWRP/rooting context.

Limits:
- Forum content is untrusted until cross-checked.
- Do not copy exploit chains or DRM/protection bypass procedures.
- Use only technical identifiers, compatibility warnings, error signatures and safe diagnostics.

## Minimal Samsung firmware memory record
```json
{
  "model": "SM-...",
  "region_or_csc": "...",
  "ap_pda": "...",
  "bl": "...",
  "cp": "...",
  "csc": "...",
  "android_version": "...",
  "one_ui_version": "...",
  "security_patch": "...",
  "bootloader_binary_revision": "...",
  "source_release_package": "...",
  "source_confidence": "official|secondary|user_claim_only"
}
```
