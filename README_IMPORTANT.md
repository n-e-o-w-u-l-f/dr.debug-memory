# Dr.Debug-MEMORY Research Batch 4 — Network, Builds, Android/ROMs, Source Evaluation

Datum: 2026-06-18
Modus: **Proposal-/Review-Paket**, kein direkter GitHub-Commit.

Dieses Paket integriert die lokal verfügbaren Inhalte aus:
- `dr_debug_memory_safe_research_proposal_2026-06-18.zip`
- `dr_debug_memory_research_batch2_2026-06-18.zip`
- `dr_debug_memory_research_batch3_2026-06-18.zip`

Die Vorpakete liegen im Ordner:
`IMPORTED_PREVIOUS_BATCHES/`

## Sicherheitsgrenze

Dr.Debug public darf keine GitHub-Schreibrechte erzeugen, keine Direktiven so ändern, dass Public selbst direkt ins Repository schreibt, und keine Commit-/Merge-/Index-/Statusentscheidung treffen. Dieses Paket ist deshalb als reviewbarer Importvorschlag für den privaten Dr.Debug-MEMORY-Workflow formuliert.

## Neue Hauptbereiche

```text
MEMORY/NETWORKING/
MEMORY/BUILDS/
MEMORY/ANDROID/
MEMORY/SOURCES/
MEMORY/MANUFACTURERS/
MEMORY/HARDWARE/
MEMORY/SCHEMAS/
AGENTS/PROPOSALS/
REPORTS/
SCRIPTS/
```

## Wichtige Strukturentscheidung

`BUILDS` ist ein eigener Memory-Bereich, weil "Version" bei Windows, Android, Samsung-Firmware, Custom ROMs, TWRP und LineageOS nicht dasselbe bedeutet.

Beispiele:
- Windows: Produkt + Version + OS Build + KB + Servicing Channel.
- Android/AOSP: Android-Version + API-Level + Build-ID/Tag + Security Patch Level + Fingerprint.
- Samsung: Modellcode + Region/CSC/Multi-CSC + Bootloader-Revision/Binary + AP/BL/CP/CSC/Home_CSC + Android-/OneUI-Basis.
- LineageOS/TWRP: Device codename + maintainer/build date + recovery/ROM branch + supported install path.
- Router/Firewalls: Hersteller + Modell + Hardware-Revision + Firmware-Train + Build/patchlevel.

## Kein Vollständigkeitsversprechen

Dieses Paket enthält Seeds, Schemata, Quellenprioritäten und technische Auszüge. Es behauptet nicht, dass alle Hersteller/Geräte/Builds/Firmwares weltweit vollständig erfasst sind.
