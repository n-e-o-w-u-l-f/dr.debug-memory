# # # # # # # # # # # # # # #
# DR. DEBUG QUALITY_RULES.md #
# # # # # # # # # # # # # # #

Version: 0.0.1
Zielpfad: /MEMORY/QUALITY_RULES.md
Status: ACTIVE
Scope: Quality rules for Dr. Debug memory work

# # # # # # # # # #
# Core Rules #
# # # # # # # # # #

```text
1. Do not invent facts.
2. Prefer official sources.
3. Mark uncertainty explicitly.
4. Keep canonical content in one place.
5. Use index files only for navigation.
6. Do not store raw crawl dumps.
7. Do not store secrets.
8. Do not store illegal bypass instructions.
9. Do not claim tests that were not run.
10. Update CHANGES.md or the matching changelog file for repository-changing runs.
```

# # # # # # # # # # # # # # #
# Quellenqualitaet #
# # # # # # # # # # # # # # #

Faktische Eintraege brauchen Quellenstatus.

Pflicht:

```text
Quelle vorhanden?
Quellenklasse gesetzt?
Datum der Pruefung gesetzt?
Versionsbezug dokumentiert?
Unsicherheiten markiert?
```

Nicht erlaubt:

```text
- ungelesene Quellen als Beleg verwenden.
- Recherche als lokalen Test darstellen.
- Blog- oder Community-Wissen allein als STATUS_CONFIRMED nutzen.
- veraltete Quellen ohne Versionsgrenze als aktuell darstellen.
```

# # # # # # # # # # # # # # #
# Deduplizierung #
# # # # # # # # # # # # # # #

Vor neuen Dateien pruefen:

```text
1. Gibt es den Fehler bereits?
2. Gibt es dieselbe Signatur in anderem Wortlaut?
3. Gibt es ein allgemeineres Playbook?
4. Ist ein Index-Alias statt einer neuen Vollkopie ausreichend?
5. Ist der kanonische Pfad korrekt?
```

Keine unabhaengige Doppelpflege.

# # # # # # # # # # # # #
# Statusqualitaet #
# # # # # # # # # # # # #

Status-Upgrades brauchen Belege:

```text
STATUS_RESEARCHED: Quelle gelesen und dokumentiert.
STATUS_EXPERIMENTAL_FIX: Fix plausibel, aber klar nicht verifiziert.
STATUS_USER_VALIDATED: User meldet Erfolg im konkreten Kontext.
STATUS_REPAIR_TESTED: Vorher/Nachher und Validierung dokumentiert.
STATUS_CONFIRMED: Quellen, Geltungsbereich, Risiko und Validierung stabil.
```

Status-Downgrades sind Pflicht, wenn:

```text
Quelle veraltet ist.
Fix in neuer Version scheitert.
Signatur falsch gematcht wurde.
Sicherheitsrisiko bekannt wird.
User-Erfolg nicht reproduzierbar ist.
```

# # # # # # # # # # # # #
# Secret-Schutz #
# # # # # # # # # # # # #

Niemals speichern:

```text
Passwoerter
Token
private Schluessel
Cookies
Sessions
OAuth-Werte
Datenbankzugangsdaten
unredigierte Rohlogs
personenbezogene Daten ohne technische Notwendigkeit
```

Wenn sensible Daten gefunden werden:

```text
Commit stoppen.
Inhalt redigieren.
Quelle oder Case als REDACTED markieren.
Keine Historienbereinigung ohne ausdruecklichen Auftrag planen.
```

# # # # # # # # # # # # #
# Case-Qualitaet #
# # # # # # # # # # # # #

Eine Case-Akte muss enthalten:

```text
Case-ID
Status
redigierter Input
System-Kontext
betroffene Fehler-IDs
Diagnoseverlauf
angebotene Schritte
User-Validierung oder NEEDS_MORE_DATA
Repository-Aenderungen
```

# # # # # # # # # # # # # # #
# Playbook-Qualitaet #
# # # # # # # # # # # # # # #

Ein Playbook braucht:

```text
Zweck
betroffene Fehler-IDs
betroffene Systeme
Risiko
Voraussetzungen
Diagnose
Backup
Reparaturweg
Rollback
Validierung
Grenzen
Quellen
```

# # # # # # # # # # # # # # # # #
# MEMORY_PROPOSAL Qualitaet #
# # # # # # # # # # # # # # # # #

Ein MEMORY_PROPOSAL braucht:

```text
Fehler-Signatur
System-Kontext
Versionen
Diagnoseweg
Loesungsvorschlag
User-Validierung
Risiko
Backup-Hinweis
Rollback-Hinweis
Validierungs-Hinweis
Quellen oder Recherchebedarf
vorgeschlagener kanonischer Pfad
Statusvorschlag
```

# # # # # # # # # # # # # # # # #
# Agenten-Direktiven-Qualitaet #
# # # # # # # # # # # # # # # # #

Eine aktive Agenten-Direktive braucht:

```text
Version
Zielpfad
Status
Geltungsbereich
Rolle
Grenzen
Sicherheitsregeln
Zusammenarbeit mit anderen Agenten
finale Auswahlfrage, wenn Repository-Arbeit betroffen ist
```

# # # # # # # # # # # #
# GitHub-Hygiene #
# # # # # # # # # # # #

Nicht committen:

```text
Rohlogs
Cache-Dateien
Build-Artefakte
grosse Binaerdateien ohne Zweck
lokale Backups
private Konfigurationen
temporäre Agenten-Arbeitsdateien
```

# # # # # # # # # #
# Validation #
# # # # # # # # # #

Before finalizing a run, check:

```text
new factual files have sources
templates are clearly marked
links point to existing files where possible
review-required items are listed
temporary files are ignored
unsafe content is excluded
status upgrades are justified
canonical paths are respected
index files do not duplicate full truth
```

# # # # # # # #
# Finale Regel #
# # # # # # # #

Wenn eine Aenderung nur Textmenge erhoeht, aber keine bessere Diagnose, Sicherheit, Quellenlage, Struktur, Statusklarheit oder Agentenlesbarkeit bringt, darf sie nicht committed werden.
