# # # # # # #
# HP ENVY PILOT #
# # # # # # #

Version: 0.0.1
Status: STATUS_RESEARCH_REQUIRED
Family: manufacturer_product_family
Canonical-Path: /MEMORY/MANUFACTURERS/HP/ENVY.md
First-Added: 2026-06-09
Last-Verified: 2026-06-09
Confidence: LOW
Evidence-Level: E1
Review-Required: true

# # # # # # # #
# Summary #
# # # # # # # #

```yaml
manufacturer: HP
product_family: Envy
category: consumer_premium_mainstream
batch: BATCH-0001A_PC_LAPTOP_CONSUMER
pilot_role: HP consumer pilot
support_entrypoint: https://support.hp.com/
```

# # # # # # # # # # # # #
# Research Gates #
# # # # # # # # # # # # #

```text
GATE-HP-ENVY-01: Find official HP Envy support routing page.
GATE-HP-ENVY-02: Separate laptop, desktop and 2-in-1 variants before storing model facts.
GATE-HP-ENVY-03: Select exactly one Envy pilot model only after official page verification.
GATE-HP-ENVY-04: Create separate source entries for support overview, drivers, manuals, diagnostics and BIOS/firmware.
GATE-HP-ENVY-05: Do not generalize display, audio, Wi-Fi, sleep, battery or BIOS findings across models.
```

# # # # # # # # # # #
# Safety Notes #
# # # # # # # # # # #

```text
- Do not store HP serial numbers or warranty lookup results.
- Do not store driver, BIOS or firmware binaries.
- Keep all Envy facts model-specific and source-specific.
```
