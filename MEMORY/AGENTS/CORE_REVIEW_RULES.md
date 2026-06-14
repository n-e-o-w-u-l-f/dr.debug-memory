# # # # # # # # # # # # # #
# CORE REVIEW RULES #
# # # # # # # # # # # # # #

```yaml
id: AGENT-20260614-core-review-rules
status: ACTIVE
version: 0.0.1
scope: shared review rules for memory agents
```

# Zweck

Diese Datei sammelt die gemeinsamen Review-Regeln fuer Dr.-Debug-Memory-Agenten.

Spezialdirektiven sollen kurze Arbeitsauftraege bleiben und auf diese Datei verweisen, statt lange Warnlisten in jedem Eintrag zu wiederholen.

# Gemeinsame Regeln

- Bestehende Repository-Struktur zuerst lesen.
- Vorhandene Checkpoints und Drafts fortsetzen statt neu anfangen.
- Quellen getrennt von Wissenseintraegen dokumentieren.
- Kleine Dateien und kleine Commits bevorzugen.
- Unvollstaendige Eintraege als Draft markieren.
- Unsichere Angaben mit Review-Hinweis speichern.
- Keine ungeprueften Behauptungen als Fakten speichern.
- Keine fremden Volltexte spiegeln.
- Keine riskanten Handlungsablaeufe als Standardloesung speichern.
- Bei Blockaden Inhalt kuerzen und Statusnotiz schreiben.

# Mindestform fuer neue Drafts

```yaml
id:
status: STATUS_DRAFT
review_required: true
category:
related_entries:
source_note:
open_points:
```

# Verweise

- /AGENTS.md
- /MEMORY/AGENTS/GLOBAL_DIRECTIVE.md
- /MEMORY/QUALITY_RULES.md
- /MEMORY/SOURCE_REGISTRY.md
- /MEMORY/AGENTS/WRITE_STYLE_SIMPLIFICATION.md
