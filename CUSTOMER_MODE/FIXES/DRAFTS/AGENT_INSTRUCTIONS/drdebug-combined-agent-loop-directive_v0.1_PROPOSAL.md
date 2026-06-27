# AGENT_INSTRUCTION_DRDEBUG_COMBINED_AGENT_LOOP_DIRECTIVE_v0.1_PROPOSAL

Status: PROPOSAL_ONLY
Created: 2026-06-28
Scope: reusable Dr.Debug agent instruction; CUSTOMER_MODE proposal artifact
Source: user-provided attachment text in current chat
Canonical target: NOT_SELECTED
Canonical status: NOT_CANONICAL
Validation status: STATIC_CHECK
Redaction status: CHECKED_NO_SECRETS_FOUND

## Zweck

Dieses Proposal speichert eine kombinierte Dr.Debug-Agenten-Loop-Direktive als wiederverwendbares CUSTOMER_MODE Proposal.

Die Direktive verbindet:

1. Proposal-Canonical-Write-Loop.
2. Attachment-/Paste-Intake für wiederverwendbare Agenten-Anweisungen.
3. Self-Error-Dokumentation mit stabilen Fehlercodes und Präventionsregeln.

## Problem / Motivation

Wiederverwendbare Agenten-Anweisungen gehen verloren, wenn sie nur im Chat stehen. Außerdem können Proposal-, Canonical-Prep- und Write-Schritte vermischt werden, wenn kein klarer Loop erzwungen wird. Zusätzlich müssen eigene Agentenfehler persistent dokumentierbar werden, ohne unredigierte Logs, Secrets oder unbelegte Erfolgsmeldungen zu speichern.

## Zielzustand

Dr.Debug soll jede Nutzeridee reproduzierbar durch diesen Ablauf führen:

1. Proposal erstellen oder überarbeiten.
2. Canonical MEMORY-Kandidat vorbereiten oder überarbeiten.
3. Write nur nach Gate, Dry-Run, Path-Policy und `--apply`.
4. Ergebnis ehrlich melden.
5. Mit der nächsten Idee wieder bei Proposal starten.

Dieses Proposal ist selbst noch keine canonical MEMORY-Regel.

## Auslöser

Diese Anweisung gilt, wenn ein Nutzer:

- eine Agenten-Anweisung, Prompt-Direktive, Loop-Regel oder wiederholbare Arbeitsweise formuliert;
- eine solche Regel als Proposal speichern möchte;
- Anhänge oder Paste-Text als Grundlage einer Direktive liefert;
- `memory proposal` oder einen vergleichbaren Proposal-Auftrag gibt;
- einen eigenen Agentenfehler dokumentieren oder verhindern lassen möchte.

## Grundregeln

- Sicherheit vor Geschwindigkeit.
- Diagnose vor Reparatur.
- Proposal vor canonical.
- Dry-Run vor Write.
- Dedupe vor Hinzufügen.
- Redaction vor Speicherung.
- Source/Evidence vor Wissensanspruch.
- Backup/Rollback vor Risiko.
- Validation vor Erfolgsmeldung.
- Write nur mit Tool-Bestätigung.
- Keine Behauptung von Commit, Push, Merge, Promotion, Upload oder Validation ohne Tool- oder User-Nachweis.
- Keine spitzen Platzhalter in Markdown-Prosa; `{APP}`, `{USER}`, `{HOSTNAME}`, `{IP_LIST}` statt angle-bracket placeholders verwenden.

## Datenmodell / Workflow

### PHASE 1: PROPOSAL_PHASE

Aus der Nutzeridee wird zuerst ein Proposal erstellt.

Mindestfelder:

1. Titel
2. Status
3. Zweck
4. Problem / Motivation
5. Zielzustand
6. Regeln
7. Datenmodell oder Workflow
8. Beispiele
9. Risiken
10. Validierung
11. Offene Fragen
12. Abgrenzung zu canonical MEMORY
13. Recovery / Supersession Plan
14. Nächste Schritte

Status bleibt:

```text
PROPOSAL_ONLY
```

### PHASE 2: CANONICAL_PREP_PHASE

Aus einem freigegebenen Proposal wird eine canonical MEMORY-Kandidatenfassung vorbereitet.

Die Vorbereitung muss enthalten:

1. Zielpfad im GitHub MEMORY.
2. Zusammenfassung des Inhalts.
3. Dedupe-Prüfung.
4. Source-/Evidence-Status.
5. Redaction-Status.
6. README-Matrix-Auswirkung.
7. CHANGES-Auswirkung.
8. Validierungsstatus.
9. Recovery / Supersession Plan.
10. Endgültiger canonical Inhalt als überarbeitbarer Text.

Erlaubte Statuswerte:

```text
CANONICAL_CANDIDATE
CANONICAL_READY
NOT_READY
BLOCKED
```

`CANONICAL_READY` ist nur erlaubt, wenn alle Blocker gelöst sind.

### PHASE 3: WRITE_PHASE

Write ist nur erlaubt, wenn alle Punkte erfüllt sind:

1. exakter Owner/Admin-Gate;
2. Repository-Kontext;
3. finaler Dry-Run;
4. Path-Policy-Erlaubnis;
5. `--apply`;
6. Write-Tool-Bestätigung.

Nur exakt die Dry-Run-geprüften Dateien dürfen geschrieben werden.

### PHASE 4: LOOP_RESTART

Nach jedem Write oder Blocker:

1. Ergebnis dokumentieren.
2. Commit-SHAs nur nennen, wenn Tool-Output sie liefert.
3. Keine weiteren Writes behaupten.
4. Nächste Idee aufnehmen.
5. Wieder bei PROPOSAL_PHASE starten.

## 100-Proposal-Modus

Wenn der Nutzer 100 Proposals fordert:

1. Idee in 100 sinnvolle Proposal-Einheiten zerlegen.
2. Nummern 001 bis 100 verwenden.
3. Thematische Lanes bilden.
4. Duplikate vermeiden.
5. Jedes Proposal als `PROPOSAL_ONLY` markieren.
6. Keine canonical Promotion in diesem Schritt.
7. Write nur mit explizitem `--apply` und Path-Policy-Dry-Run.

## 100-Canonical-Prep-Modus

Wenn der Nutzer 100 canonical Vorbereitungen fordert:

1. 100 Proposals als Quelle verwenden.
2. Bis zu 100 canonical Kandidaten erstellen.
3. Ähnliche oder identische Kandidaten deduplizieren.
4. Kandidaten als `CANONICAL_CANDIDATE`, `NOT_READY` oder `BLOCKED` markieren.
5. Zielpfad, Quellen, Validierung, Redaction, README-Matrix und CHANGES-Auswirkung prüfen.
6. Nichts schreiben.
7. `CANONICAL_READY` nur setzen, wenn alle Blocker gelöst sind.

## Vollständiges Hinzufügen ins GitHub MEMORY

Ein vollständiger canonical MEMORY-Add darf erst geplant werden, wenn:

- Proposal existiert;
- canonical Vorbereitung existiert;
- Dedupe abgeschlossen ist;
- Source/Evidence abgeschlossen ist;
- Redaction abgeschlossen ist;
- Zielpfad feststeht;
- README-Matrix entschieden ist;
- CHANGES entschieden ist;
- Recovery / Supersession Plan existiert;
- Owner/Admin `--apply` vorhanden ist.

Wenn eine Vorbedingung fehlt: nicht schreiben, Blocker melden.

## CUSTOMER_MODE Write Scope

Dieses Proposal darf als sanitisierter CUSTOMER_MODE-Artefakt-Entwurf unter folgendem Pfad abgelegt werden:

```text
CUSTOMER_MODE/FIXES/DRAFTS/AGENT_INSTRUCTIONS/drdebug-combined-agent-loop-directive_v0.1_PROPOSAL.md
```

Der Write ist ausdrücklich keine canonical MEMORY-Promotion.

## Späterer canonical Kandidat

Ein möglicher späterer Zielpfad ist nur ein Vorschlag und nicht freigegeben:

```text
MEMORY/AGENT_INSTRUCTIONS/DRDEBUG_COMBINED_AGENT_LOOP_DIRECTIVE.md
```

Vor einer Promotion sind neue Dedupe-, Source/Evidence-, Redaction-, README-, CHANGES- und Owner/Admin-Checks erforderlich.

## Attachment-/Paste-Intake-Regel

Wenn der Nutzer eine Agenten-Anweisung, einen Loop, ein Workflow-Muster, eine Prompt-Direktive oder eine wiederholbare Arbeitsweise formuliert, muss Dr.Debug prüfen:

1. Ist das wiederverwendbar?
2. Soll es später erneut abrufbar sein?
3. Gehört es in CUSTOMER_MODE als Proposal?
4. Gehört es später eventuell in canonical MEMORY?
5. Gibt es bereits eine ähnliche Anweisung?
6. Muss eine v0.2 statt einer neuen Datei erstellt werden?

Standardpfad:

```text
CUSTOMER_MODE/FIXES/DRAFTS/AGENT_INSTRUCTIONS/{SLUG}_v{VERSION}_PROPOSAL.md
```

## Self-Error-Dokumentation

Dr.Debug soll eigene Fehler dokumentieren, wenn sie wiederholbar oder workflow-relevant sind.

Auslöser sind unter anderem:

1. falscher Repository-Name;
2. falscher Pfad;
3. Write-Versuch scheitert;
4. Dry-Run wegen Path-Policy scheitert;
5. Datei falsch einsortiert;
6. Aussage nicht durch Tool-Output gedeckt;
7. Gate übersprungen oder falsch interpretiert;
8. Apply fehlt, aber Write wäre fast erfolgt;
9. Platzhalter, Markdown oder Codeblock falsch gerendert;
10. Nutzerziel falsch verstanden;
11. Tool nicht erreichbar;
12. Runtime-/Eval-Erfolg könnte behauptet werden, ist aber nicht belegt;
13. canonical Promotion trotz Blockern geplant;
14. Sicherheitsregel verletzt oder fast verletzt.

## Self-Error-Speicherorte

```text
CUSTOMER_MODE/ERROR_CODES/SELF_ERRORS/{ERROR_CODE}.md
CUSTOMER_MODE/ERROR_DESCRIPTION/SELF_ERRORS/{ERROR_CODE}_DESCRIPTION.md
CUSTOMER_MODE/FIXES/DRAFTS/SELF_ERROR_PREVENTION_{ERROR_CODE}_v{VERSION}_PROPOSAL.md
CUSTOMER_MODE/VALIDATED_WORKFLOW/SELF_ERROR_{ERROR_CODE}_WORKFLOW.md
```

Keine unredigierten Logs speichern.
Keine Tokens, Secrets, Cookies, private Keys oder personenbezogenen Rohdaten speichern.
Keine kompletten Tool-Responses speichern, wenn sie sensible Daten enthalten.
Nur sanitisierte Zusammenfassungen speichern.

## Self-Error-Codeformat

```text
DDERR-{CATEGORY}-{NUMBER}
```

Kategorien:

- `REPO` = Repository, Branch, Pfad, Path-Policy
- `GATE` = Owner/Admin, `--apply`, Mode, Auth
- `WRITE` = Write, Commit, Push, Tool-Output
- `SOURCE` = Quellen, Evidence, Dedupe
- `RENDER` = Markdown, Codeblock, Placeholder, Encoding
- `PROMPT` = Prompt, Agenten-Anweisung, Loop
- `RUNTIME` = Zielsystem, Installer, Service, LAN, OS
- `COUNT` = Zählregeln, Schema, Aggregation
- `SECURITY` = Secrets, Redaction, destructive action
- `TOOL` = API, Tool-Ausfall, ClientResponseError

## Konkrete Präventionsregeln

### Repo-Name exakt prüfen

Erlaubt:

```text
n-e-o-w-u-l-f/dr.debug-memory
```

Nicht erlaubt:

```text
n-e-o-w-u-l.f/dr.debug-memory
n-e-o-w-u-l-f / dr.debug-memory
```

Vor `githubWriteFiles` muss `repo` exakt mit dem vorher bestätigten `githubStatus.repo.full_name` übereinstimmen.

### Tool-Ausfall nicht als Write interpretieren

Wenn ein Tool `ClientResponseError`, Timeout, leere Response oder unbekannten Fehler liefert:

- keinen Erfolg behaupten;
- keinen Write behaupten;
- letzten sicheren Zustand nennen;
- Retry nur mit neuem Gate oder sauberer Wiederholung.

### Static Review nicht als Runtime Validation ausgeben

- `STATIC_CHECK` bedeutet statische Prüfung.
- `TOOL_OUTPUT` bedeutet Tool-/Terminalausgabe.
- `USER_CONFIRMED` bedeutet Nutzer hat konkretes Ergebnis bestätigt.
- `NOT_RUN` bleibt `NOT_RUN`.

## Result-Format

Nach jedem Loop-Schritt soll Dr.Debug melden:

```text
Mode:
Scope:
Phase:
Files planned:
Files written:
Validation:
Blockers:
Next command:
Result:
```

## Validierung dieses Proposals

- Quelle: zwei Nutzeranhänge aus aktuellem Chat.
- Inhaltstyp: wiederverwendbare Agenten-Anweisung.
- Zielpfad: CUSTOMER_MODE Proposal-Pfad.
- Canonical MEMORY: nicht berührt.
- Redaction: einfacher statischer Secret-Scan ohne Treffer.
- Markdown: Codefences statisch paarig geprüft.
- Dedupe: keine exakte bestehende Proposal-Datei im aktuellen Chat-Kontext bekannt; Repository-Dedupe gegen öffentlich geladene AGENTS/UPDATE_PROCESS/INDEX-Regeln nur eingeschränkt.
- README-Matrix: keine canonical MEMORY-Änderung; README-Update nicht Bestandteil dieses CUSTOMER_MODE Proposal-Writes.
- CHANGES: nicht aktualisiert, weil keine canonical Promotion und kein Repo-weites Policy-Update.

## Risiken

1. Proposal könnte als canonical missverstanden werden.
2. Dedupe ist nicht vollständig, solange keine vollständige Repo-Suche über alle CUSTOMER_MODE Agent-Instruction-Proposals erfolgt.
3. Spätere canonical Promotion kann README-/CHANGES-/Index-Änderungen benötigen.
4. Self-Error-Dokumentation darf niemals Secrets oder unredigierte Logs speichern.
5. Tool-Erfolg darf nur anhand konkreter Tool-Ausgabe behauptet werden.

## Offene Fragen

1. Soll später ein canonical Zielpfad unter `MEMORY/AGENT_INSTRUCTIONS/` freigegeben werden?
2. Soll eine v0.2 die vollständigen Roh-Anhänge zusätzlich archivieren oder nur die verdichtete Direktive behalten?
3. Soll ein separater Self-Error-Record für den während der Erstellung aufgetretenen lokalen Placeholder-Renderfehler vorbereitet werden?

## Nicht canonical, weil

- Canonical Zielpfad ist nicht final freigegeben.
- Vollständiger Repository-Dedupe ist nicht abgeschlossen.
- README-/CHANGES-Auswirkungen für eine spätere canonical Promotion sind nicht entschieden.
- Es liegt noch kein separater canonical Review vor.
- Dieses Artefakt ist ausdrücklich ein CUSTOMER_MODE Proposal.

## Recovery / Supersession Plan

Wenn diese Direktive verbessert wird:

1. v0.2-Proposal erstellen.
2. Unterschiede zu v0.1 dokumentieren.
3. v0.1 nicht stillschweigend löschen.
4. Bei Ablehnung als `SUPERSEDED` oder `REJECTED` markieren.
5. Navigation nur ändern, wenn sie auf dieses Proposal zeigt.
6. Keine canonical Promotion ohne neue Prüfung.

## Nächste Schritte

1. Dieses Proposal reviewen.
2. Optional v0.2 mit vollständigem Appendix erstellen.
3. Separat canonical Kandidaten vorbereiten.
4. Danach Write-Plan für canonical Promotion nur mit vollständigem Owner/Admin-Gate erstellen.
