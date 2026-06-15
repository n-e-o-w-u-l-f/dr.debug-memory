# # # # # # # # # # # # # # # # # # # #
# ARCHIVE.ORG BOOTSTRAP RECOVERY NOTES #
# # # # # # # # # # # # # # # # # # # #

Status: RECOVERY_NOTE
Last updated: 2026-06-15
Canonical-Path: /MEMORY/ARCHIVE_ORG/RECOVERED_BOOTSTRAP_NOTES_20260615.md

# Hintergrund

Ein frueherer Lauf meldete den Branch `chatgpt/archive-org-bootstrap-20260615` mit 22 hinzugefuegten oder geaenderten Dateien. Der Branch war laut damaligem Stand 23 Commits ahead und 26 behind `main`; ein PR konnte nicht geoeffnet werden.

Die ChatGPT-Konversationslinks waren in diesem Lauf nicht direkt abrufbar. Daher enthaelt diese Datei nur rekonstruierte Pfad- und Merge-Hinweise, keine erfundenen Archive.org-Datensaetze.

# Gemeldete Zielstruktur

```text
/MEMORY/ARCHIVE_ORG/README.md
/MEMORY/ARCHIVE_ORG/INDEX.md
/MEMORY/ARCHIVE_ORG/archive_org_collections.jsonl
/MEMORY/ARCHIVE_ORG/archive_org_items.jsonl
/MEMORY/ARCHIVE_ORG/archive_org_manuals.jsonl
/MEMORY/ARCHIVE_ORG/archive_org_software.jsonl
/MEMORY/ARCHIVE_ORG/archive_org_operating_systems.jsonl
/MEMORY/ARCHIVE_ORG/archive_org_drivers_firmware.jsonl
/MEMORY/ARCHIVE_ORG/archive_org_research_log.md
/MEMORY/ARCHIVE_ORG/archive_org_api_notes.md
/MEMORY/ARCHIVE_ORG/candidates_needing_review.md
/MEMORY/ARCHIVE_ORG/legal_or_access_notes.md
/MEMORY/ARCHIVE_ORG/removed_or_dead_archive_links.md
/MEMORY/ARCHIVE_ORG/UPDATE_PROCESS.md
/MEMORY/ARCHIVE_ORG/CHANGES.md
```

# Merge-Regel

Die eigentlichen JSONL-Datensaetze aus dem Archive.org-Branch muessen aus dem lokalen Branch oder aus einem exportierten Patch nachgezogen werden. Diese Recovery-Datei verhindert, dass der offene Merge-Punkt verloren geht.
