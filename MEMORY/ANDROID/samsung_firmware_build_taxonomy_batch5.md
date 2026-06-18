# Samsung Android firmware/build taxonomy - Batch 5

Status: PROPOSAL_ONLY
Purpose: Store Samsung firmware/build information in a way that is useful for diagnosis and repair without pretending that a third-party index is authoritative.

## Core identity fields

```json
{
  "manufacturer": "Samsung",
  "marketing_name": "",
  "model_code": "SM-...",
  "device_codename": "",
  "region_or_csc": "",
  "multi_csc": "",
  "carrier": "",
  "android_version": "",
  "one_ui_version": "",
  "pda_or_ap": "",
  "bl": "",
  "cp": "",
  "csc": "",
  "home_csc": "",
  "bootloader_binary": "",
  "security_patch_level": "",
  "build_fingerprint": "",
  "source_package": "",
  "source_url": "",
  "source_strength": "primary_vendor|secondary_index|community|user_claim"
}
```

## Odin package terms

- `BL`: bootloader package.
- `AP` / historical `PDA`: large Android/platform package; often contains system/vendor/product/boot-related images depending on generation.
- `CP`: modem/baseband package.
- `CSC`: region/carrier customization package; may wipe data depending on package and procedure.
- `HOME_CSC`: commonly used to preserve data, but never assume safety without device-specific instructions.
- `PIT`: partition information table; high risk and only relevant for explicit partition-layout repair.

## Safety rules

1. Never match firmware by marketing name only.
2. Record exact `SM-...` model code and region/CSC.
3. Record current bootloader binary; downgrades across bootloader binary boundaries may fail or brick.
4. Record FRP/OEM unlock/KG/RMM state only as diagnostic context; do not provide bypass instructions.
5. Store SamMobile/SamFW/XDA as secondary/community unless cross-checked with Samsung/Open Source, device output, or known vendor package metadata.
6. Use firmware knowledge for owned-device repair, data recovery planning, bootloop triage and source-code matching.
