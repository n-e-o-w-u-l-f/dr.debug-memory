# # # # # # # # # # # # # # # #
# DR. DEBUG CHANGELOG_SCHEMA.md #
# # # # # # # # # # # # # # # #

Version: 0.0.1
Zielpfad: /MEMORY/CHANGELOG_SCHEMA.md
Status: ACTIVE
Scope: Standardisierte Aenderungsdokumentation fuer Dr. Debug /MEMORY/

# # # # # # #
# Zweck #
# # # # # # #

Dieses Dokument definiert, wie Aenderungen an der Dr.-Debug-/MEMORY/-Datenbank dokumentiert werden sollen.

Es gilt fuer:

```text
Agenten-Direktiven
Error-Code-Eintraege
Case-Akten
Playbooks
Quellenregister
Schema-Dateien
Index-Dateien
Qualitaetsregeln
```

# # # # # # # # # # # # #
# Changelog Entry #
# # # # # # # # # # # # #

Jeder relevante Aenderungseintrag soll enthalten:

```yaml
change_id: CHANGE-YYYYMMDD-<slug>
version: 0.0.1
date: YYYY-MM-DD
agent: Dr.Debug-GPT | Dr.Debug-MEMORY | Dr.Debug-CONFIGURATION | Repository-Agent
scope: <affected-area>
affected_files:
  - <path>
reason: <why-the-change-was-needed>
change_type: add | update | merge | supersede | archive | delete_with_reason | index | quality
risk: LOW | MEDIUM | HIGH | CRITICAL
rollback: <how-to-revert-or-supersede>
validation: <how-the-change-was-checked>
commit: <commit-sha-or-pending>
supersedes:
  - <path-or-id-or-NONE>
related_cases:
  - <case-id-or-NONE>
related_error_ids:
  - <error-id-or-NONE>
source_status: SOURCE_REGISTERED | SOURCE_REQUIRED | GOVERNANCE_ONLY
notes: <short-notes>
```

# # # # # # # # # # # # #
# Change Types #
# # # # # # # # # # # # #

```text
add
Neue Datei oder neuer kanonischer Eintrag.

update
Bestehender Eintrag wurde erweitert oder korrigiert.

merge
Mehrere Eintraege oder Direktiven wurden zusammengefuehrt.

supersede
Ein Eintrag wurde durch einen neueren ersetzt.

archive
Eintrag bleibt erhalten, ist aber nicht mehr aktiv.

delete_with_reason
Eintrag wurde entfernt oder soll entfernt werden; Grund und Ersatz muessen dokumentiert sein.

index
Navigations- oder Alias-Aenderung ohne neue fachliche Wahrheit.

quality
Qualitaets-, Schema- oder Governance-Aenderung.
```

# # # # # # # # # # #
# Pflichtregeln #
# # # # # # # # # # #

```text
Keine groessere Repository-Aenderung ohne Aenderungsnotiz.
Keine Supersede-Aktion ohne Ersatzpfad oder Grund.
Keine Delete-Aktion ohne Grund.
Keine Status-Hochstufung ohne Validierungsangabe.
Keine riskante Aenderung ohne Rollback-Hinweis.
```

# # # # # # # # # # # #
# Commit-Bezug #
# # # # # # # # # # # #

Wenn ein GitHub-Commit existiert, soll die Commit-SHA in der Aenderungsnotiz genannt werden.

Wenn ein Vorschlag noch nicht geschrieben wurde:

```text
commit: PENDING
```

# # # # # # # #
# Finale Regel #
# # # # # # # #

Jede dokumentierte Aenderung muss nachvollziehbar machen:

```text
was geaendert wurde
warum es geaendert wurde
welche Dateien betroffen sind
welcher Status gilt
wie die Aenderung validiert wurde
wie sie rueckgaengig gemacht oder ersetzt werden kann
```
