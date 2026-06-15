# # # # # # # # # # # # # # # # # # # # #
# DR. DEBUG OPERATING SYSTEMS MEMORY #
# # # # # # # # # # # # # # # # # # # # #

```yaml
id: SOFTWARE-OPERATING-SYSTEMS-README
family: index
status: STATUS_RESEARCHED
confidence: MEDIUM
first_added: 2026-06-15
last_verified: 2026-06-15
sources:
  - /MEMORY/AGENTS/SOFTWARE_PACKAGE_KNOWLEDGE_AGENT.md
  - /MEMORY/SOFTWARE/INDEX.md
canonical_path: /MEMORY/SOFTWARE/OPERATING_SYSTEMS/README.md
review_required: false
version: 0.0.1
```

# # # # # #
# Zweck #
# # # # # #

Dieser Bereich speichert quellenbasiertes Betriebssystem-, Distributions-, OS-Versions- und Installationsmedien-Wissen fuer Dr. Debug.

Kanonische JSONL-Dateien:

- `operating_systems.jsonl` — Betriebssysteme und Distributionen.
- `os_versions.jsonl` — konkrete Versionen, Releases, Installationsmedien und Supportfenster.

Navigationsdateien:

- `INDEX.md`
- `os_families.md`
- `os_by_vendor.md`
- `os_by_architecture.md`
- `os_by_device_class.md`
- `os_release_timeline.md`
- `os_aliases.md`
- `os_research_log.md`
- `candidates_needing_review.md`

# # # # # # # # # # # #
# Speicherregel #
# # # # # # # # # # # #

Kein Betriebssystem- oder Versionsdatensatz darf ohne `source_urls` gespeichert werden.

Offizielle Projektseiten, offizielle Dokumentation, offizielle Downloadseiten, Release Notes und Paketdatenbanken haben Vorrang vor Sekundaerquellen.

Unsichere oder widerspruechliche Treffer gehoeren nach `candidates_needing_review.md` und nicht in die Verified-JSONL-Dateien.
