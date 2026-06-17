# Manufacturer completion review — 2026-06-15

Status: REVIEW_NOTE
Family: manufacturers
Confidence: MEDIUM_HIGH
Canonical truth: `/MEMORY/MANUFACTURERS/manufacturers.jsonl`

## Current `main` state

The current `main` manufacturer dataset visible through raw GitHub contains 23 verified manufacturers:

```text
ASUS
ASRock
GIGABYTE
MSI
BIOSTAR
Intel
AMI
Insyde Software
AMD
Dell
HP
Lenovo
Acer
Samsung Semiconductor
Western Digital
Kingston Technology
Seagate Technology
NVIDIA
Qualcomm
MediaTek
NXP Semiconductors
Texas Instruments
Broadcom
```

## Review result

No additive manufacturer JSONL patch is proposed here because current `main` already includes the manufacturer follow-ups that are missing from the older prepare branch snapshot.

## Safe merge rule

When merging `main` with `prepare/dr-debug-memory-handoff-20260615`, keep the current `main` manufacturer files unless a full local merge proves otherwise. Do not reintroduce the prepare-branch `Seagate` review-needed state.
