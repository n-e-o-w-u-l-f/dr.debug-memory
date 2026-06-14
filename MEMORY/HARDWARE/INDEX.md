# # # # # # # # # # # # #
# DR. DEBUG HARDWARE INDEX #
# # # # # # # # # # # # #

Status: ACTIVE
Scope: Navigation index for `/MEMORY/HARDWARE/`.

# # # # # # # #
# Purpose #
# # # # # # # #

This area stores normalized, source-based hardware knowledge for Dr. Debug.

It covers devices, manufacturers, model families, chipsets, components, interfaces, compatibility notes, safe diagnostics, repair references, source records and run status.

Canonical agent directive:

```text
/MEMORY/AGENTS/DEVICE_HARDWARE_DATABASE_INGEST_AGENT.md
```

# # # # # # # #
# Subtrees #
# # # # # # # #

Expected or planned subtrees:

```text
/MEMORY/HARDWARE/MANUFACTURERS/INDEX.md
/MEMORY/HARDWARE/DEVICES/INDEX.md
/MEMORY/HARDWARE/CHIPSETS/INDEX.md
/MEMORY/HARDWARE/COMPONENTS/INDEX.md
/MEMORY/HARDWARE/MODELS/INDEX.md
/MEMORY/HARDWARE/INTERFACES/INDEX.md
/MEMORY/HARDWARE/REPAIR/INDEX.md
/MEMORY/HARDWARE/DATASHEETS/INDEX.md
/MEMORY/HARDWARE/IDS/USB_IDS.yaml
/MEMORY/HARDWARE/IDS/PCI_IDS.yaml
/MEMORY/HARDWARE/IDS/DMI_IDS.yaml
/MEMORY/HARDWARE/IDS/ANDROID_PROPS.yaml
/MEMORY/HARDWARE/COMPATIBILITY/LINUX.yaml
/MEMORY/HARDWARE/COMPATIBILITY/WINDOWS.yaml
/MEMORY/HARDWARE/COMPATIBILITY/ANDROID.yaml
/MEMORY/HARDWARE/COMPATIBILITY/OPENWRT.yaml
/MEMORY/HARDWARE/COMPATIBILITY/STEAMOS.yaml
/MEMORY/HARDWARE/SOURCES/INDEX.md
/MEMORY/HARDWARE/SOURCES/distributor-sources.md
/MEMORY/HARDWARE/SOURCES/datasheet-sources.md
/MEMORY/HARDWARE/RUNS/INDEX.md
/MEMORY/HARDWARE/INGEST_STATE.yaml
/MEMORY/HARDWARE/STATE.md
```

# # # # # # # # # #
# Import Notes #
# # # # # # # # # #

- Prefer official manufacturer and datasheet sources.
- Treat distributors such as Conrad, Reichelt, Mouser, Digi-Key, Farnell / element14, RS Components, TME and Pollin as factual reference sources only when public technical metadata is visible.
- Do not mirror product pages, price lists, images, reviews or protected long-form text.
- Use distributor records as links, identifiers and short paraphrased evidence notes, not as copied catalog pages.
- Keep devices, chips, components and manufacturers in separate canonical files.
- Mark missing or weak evidence as `STATUS_RESEARCH_REQUIRED` or `needs_review: true`.
