# AUTODIDACTIC_ERROR_LEARNING_v0.2_CONSOLIDATION_PROPOSAL

Status: PROPOSAL_ONLY
Created: 2026-06-28
Scope: consolidation proposal for existing `MEMORY/KNOWLEDGE_REPLACE/08_AUTODIDACTIC_ERROR_LEARNING.md`
Source canonical candidate: `MEMORY/KNOWLEDGE_REPLACE/08_AUTODIDACTIC_ERROR_LEARNING.md`
Source proposal: `CUSTOMER_MODE/FIXES/DRAFTS/AGENT_INSTRUCTIONS/drdebug-combined-agent-loop-directive-canonical-prep_v0.1_PROPOSAL.md`
Decision: EXTEND_EXISTING_08_INSTEAD_OF_CREATING_SECOND_TRUTH
Canonical write status: NOT_PROMOTED
Validation status: STATIC_CHECK_PLUS_REPO_READ
Redaction status: CHECKED_NO_SECRETS_FOUND

## Zweck

Dieses Proposal bereitet eine v0.2-Konsolidierung der bestehenden Datei `MEMORY/KNOWLEDGE_REPLACE/08_AUTODIDACTIC_ERROR_LEARNING.md` vor.

Die Konsolidierung soll den bestehenden Autodidactic-Error-Learning-Guard um die kombinierte Dr.Debug Agenten-Loop-Direktive erweitern, ohne eine zweite canonical Wahrheit anzulegen.

## Problem / Motivation

Es existieren zwei verwandte Wissensstränge:

1. `08_AUTODIDACTIC_ERROR_LEARNING.md` beschreibt Self-Correction, Markdown-Fence-Integrität, Wiederholungsprävention und Grenzen von GitHub-Persistenzbehauptungen.
2. `drdebug-combined-agent-loop-directive-canonical-prep_v0.1_PROPOSAL.md` beschreibt Proposal-Canonical-Write-Loop, Attachment-/Paste-Intake, 100-Proposal/100-Canonical-Prep-Modus und Self-Error-Datenbank.

Eine neue parallele canonical Datei wie `08_AGENT_LOOP_SELF_ERROR_DIRECTIVE.md` würde Dedupe-Risiko erzeugen. Der sauberere Weg ist eine v0.2-Konsolidierung der bestehenden `08`.

## Zielzustand

`08_AUTODIDACTIC_ERROR_LEARNING.md` wird spaeter, nach separatem canonical Write-Plan, zur konsolidierten v0.2-Regel fuer:

1. Autodidactic Error Learning.
2. Proposal -> Canonical Prep -> Write -> Loop Restart.
3. Attachment-/Paste-Intake fuer wiederverwendbare Agenten-Anweisungen.
4. Self-Error-Datenbank mit stabilen `DDERR-*` Codes.
5. Session-Start-Check fuer bekannte Fehlerpraevention.
6. Result-Format fuer Loop-Schritte.

Dieses Proposal schreibt die canonical Datei noch nicht um.

## Dedupe-Entscheidung

Decision: USE_EXISTING_08_AS_CANONICAL_CONSOLIDATION_POINT.

Begruendung:

- Bestehende `08` behandelt bereits den Self-Error-/Autodidactic-Kern.
- Der neue Agenten-Loop-Kandidat erweitert denselben Wissensbereich.
- Eine zweite Datei mit aehnlichem Scope waere eine zweite Wahrheit.
- Die v0.2-Route erlaubt klare Delta-Dokumentation, README-/INDEX-/MANIFEST-Sync und CHANGES-Rollback.

## Nicht neu anlegen

Nicht als canonical Ziel verwenden:

```text
MEMORY/KNOWLEDGE_REPLACE/08_AGENT_LOOP_SELF_ERROR_DIRECTIVE.md
```

Nicht ohne weitere Entscheidung verwenden:

```text
MEMORY/AGENT_INSTRUCTIONS/DRDEBUG_COMBINED_AGENT_LOOP_DIRECTIVE.md
```

Grund: Cross-Repo-Routing ist offen, weil Agent Policy grundsaetzlich in `dr.debug-agents` gehoert, waehrend technische Memory- und CUSTOMER_MODE-Artefakte in `dr.debug-memory` liegen.

## Geplantes v0.2 Delta fuer `08_AUTODIDACTIC_ERROR_LEARNING.md`

### 1. Version und Status aktualisieren

Vorschlag:

```yaml
Version: 0.2.0-consolidation-candidate
Status: CANONICAL_CANDIDATE
Scope: Dr.Debug response quality, self-correction, proposal/canonical/write loop, attachment intake, self-error database, repeat-error prevention
```

Status `CANONICAL` erst nach bestaetigtem canonical Write und Review setzen.

### 2. Proposal-Canonical-Write-Loop ergaenzen

Dr.Debug muss wiederverwendbare Nutzerideen in diesem Loop bearbeiten:

1. Proposal erstellen oder ueberarbeiten.
2. Canonical MEMORY-Kandidat vorbereiten oder ueberarbeiten.
3. Write nur nach Owner/Admin-Gate, Repo-Kontext, Dedupe, Redaction, Source/Evidence, README-/CHANGES-Entscheidung, finalem Dry-Run und `--apply`.
4. Tool-Output abwarten.
5. Nur belegte Ergebnisse melden.
6. Danach mit der naechsten Idee wieder bei Proposal beginnen.

### 3. Attachment-/Paste-Intake ergaenzen

Wenn Nutzer eine wiederverwendbare Agenten-Anweisung, einen Loop, ein Workflow-Muster, eine Prompt-Direktive oder eine wiederholbare Arbeitsweise als Text oder Attachment liefern, muss Dr.Debug:

1. Wiederverwendbarkeit pruefen.
2. Proposal-Pfad bestimmen.
3. Aehnliche bestehende Direktiven suchen.
4. v0.2 oder Supersession statt Duplikat vorbereiten, wenn noetig.
5. Canonical-Kandidat erst nach Proposal vorbereiten.
6. Nicht stillschweigend speichern.
7. Nur mit Apply-Gate und Dry-Run schreiben.

### 4. Self-Error-Datenbank ergaenzen

Dr.Debug soll eigene, wiederholbare oder workflow-relevante Fehler als sanitisierte Records dokumentieren.

Fehlercode-Format:

```text
DDERR-{CATEGORY}-{NUMBER}
```

Kategorien:

- `REPO` fuer Repository, Branch, Pfad, Path-Policy.
- `GATE` fuer Owner/Admin, Apply, Mode, Auth.
- `WRITE` fuer Write, Commit, Push, Tool-Output.
- `SOURCE` fuer Quellen, Evidence, Dedupe.
- `RENDER` fuer Markdown, Codeblock, Placeholder, Encoding.
- `PROMPT` fuer Prompt, Agenten-Anweisung, Loop.
- `RUNTIME` fuer Zielsystem, Installer, Service, LAN, OS.
- `COUNT` fuer Zaehlregeln, Schema, Aggregation.
- `SECURITY` fuer Secrets, Redaction, destructive action.
- `TOOL` fuer API, Tool-Ausfall, ClientResponseError.

Self-Error-Speicherorte:

```text
CUSTOMER_MODE/ERROR_CODES/SELF_ERRORS/{ERROR_CODE}.md
CUSTOMER_MODE/ERROR_DESCRIPTION/SELF_ERRORS/{ERROR_CODE}_DESCRIPTION.md
CUSTOMER_MODE/FIXES/DRAFTS/SELF_ERROR_PREVENTION_{ERROR_CODE}_v{VERSION}_PROPOSAL.md
CUSTOMER_MODE/VALIDATED_WORKFLOW/SELF_ERROR_{ERROR_CODE}_WORKFLOW.md
```

### 5. 100-Proposal- und 100-Canonical-Prep-Modus ergaenzen

Wenn Nutzer 100 Proposals fordert:

1. In 100 sinnvolle Proposal-Einheiten zerlegen.
2. Nummern 001 bis 100 verwenden.
3. Thematische Lanes bilden.
4. Duplikate vermeiden.
5. Alle Einheiten als `PROPOSAL_ONLY` markieren.
6. Keine canonical Promotion in diesem Schritt.

Wenn Nutzer 100 canonical Vorbereitungen fordert:

1. Proposals als Quelle verwenden.
2. Bis zu 100 Kandidaten erstellen.
3. Kandidaten deduplizieren.
4. Status `CANONICAL_CANDIDATE`, `NOT_READY` oder `BLOCKED` setzen.
5. Zielpfad, Quellen, Redaction, Validation, README und CHANGES pruefen.
6. Nichts schreiben.
7. `CANONICAL_READY` nur setzen, wenn alle Blocker geloest sind.

### 6. Session-Start-Check ergaenzen

Bei komplexen oder repo-relevanten Aufgaben:

1. Modus bestimmen.
2. Aktive Repo-Regeln laden.
3. Relevante Fehlerrecords oder Praeventionsregeln beachten.
4. Repo-Name und Branch pruefen.
5. Dedupe, Redaction, Source/Evidence, README/CHANGES und Dry-Run vor Write pruefen.
6. Keine Erfolgsaussage ohne Tool-Output.

### 7. Result-Format ergaenzen

Nach jedem relevanten Loop-Schritt:

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

## Betroffene Dateien fuer spaetere canonical Promotion

Spaeterer canonical Write-Plan, noch nicht ausgefuehrt:

```text
MEMORY/KNOWLEDGE_REPLACE/08_AUTODIDACTIC_ERROR_LEARNING.md
MEMORY/INDEX.md
MEMORY/KNOWLEDGE_REPLACE/MANIFEST.json
README.md
CHANGES.md
```

Optional, falls Self-Error-Beispielrecords separat angelegt werden:

```text
CUSTOMER_MODE/ERROR_CODES/SELF_ERRORS/DDERR-WRITE-001.md
CUSTOMER_MODE/ERROR_DESCRIPTION/SELF_ERRORS/DDERR-WRITE-001_DESCRIPTION.md
CUSTOMER_MODE/FIXES/DRAFTS/SELF_ERROR_PREVENTION_DDERR-WRITE-001_v0.1_PROPOSAL.md
```

## README-Matrix-Auswirkung

Dieser Write ist nur ein CUSTOMER_MODE Proposal. Deshalb wird README jetzt nicht geaendert.

Vor spaeterer canonical Promotion muss README jedoch mindestens diese Klassen pruefen oder aktualisieren:

```yaml
artifact_classes:
  - proposals
  - canonical records
  - error codes
  - fixes
  - validated workflows
  - knowledge replacement files
  - aliases/mirrors
readme_matrix_update_required_now: false
readme_matrix_required_before_promotion: true
```

## INDEX- und MANIFEST-Auswirkung

Bekannter Sync-Befund:

- `MEMORY/INDEX.md` listet Knowledge-Replacement-Dateien bis `07_MASTER_KNOWLEDGE_BASE_PIPELINE.md`.
- `MEMORY/KNOWLEDGE_REPLACE/MANIFEST.json` listet aktive Knowledge-Replacement-Dateien bis `07_MASTER_KNOWLEDGE_BASE_PIPELINE.md`.
- `08_AUTODIDACTIC_ERROR_LEARNING.md` existiert, ist aber in diesen Listen noch nicht als aktiver Replacement-Eintrag sichtbar.

Spaetere Promotion muss diesen Sync entweder korrigieren oder begruenden, warum `08` Proposal-/Candidate-Status behaelt.

## CHANGES-Auswirkung

Dieser CUSTOMER_MODE Proposal-Write aktualisiert `CHANGES.md` nicht.

Spaetere canonical Promotion muss `CHANGES.md` mit diesen Punkten aktualisieren:

1. Zielzustand von `08` v0.2.
2. Dedupe-Entscheidung gegen neue zweite Wahrheit.
3. README/INDEX/MANIFEST-Sync.
4. Validation-Status.
5. Rollback/Supersession-Plan.

## Redaction

Redaction-Status fuer dieses Proposal:

- Keine Tokens.
- Keine Passwoerter.
- Keine Cookies.
- Keine SSH/private keys.
- Keine personenbezogenen Rohlogs.
- Keine vollstaendigen sensiblen Tool-Responses.

Status: CHECKED_NO_SECRETS_FOUND.

## Source / Evidence Status

```yaml
source_status: USER_PROPOSAL_PLUS_REPO_RULES
repo_rules_read:
  - AGENTS.md
  - UPDATE_PROCESS.md
  - MEMORY/INDEX.md
task_files_read:
  - MEMORY/KNOWLEDGE_REPLACE/08_AUTODIDACTIC_ERROR_LEARNING.md
  - MEMORY/KNOWLEDGE_REPLACE/MANIFEST.json
  - CUSTOMER_MODE/FIXES/DRAFTS/AGENT_INSTRUCTIONS/drdebug-combined-agent-loop-directive-canonical-prep_v0.1_PROPOSAL.md
evidence_level: E1_E2_FOR_USER_INTENT_E3_FOR_REPO_RULES
validation_status: STATIC_CHECK_PLUS_DRY_RUN_ONLY_UNTIL_WRITE_TOOL_CONFIRMS
```

## Validierung

Vor diesem CUSTOMER_MODE Write:

- Owner/Admin-Gate erforderlich.
- Repo `n-e-o-w-u-l-f/dr.debug-memory` erforderlich.
- Zielpfad unter `CUSTOMER_MODE/FIXES/DRAFTS/` erforderlich.
- Dry-Run erforderlich.
- Write nur exakt auf Dry-Run-Datei.
- Keine canonical `MEMORY/**` Datei in diesem Schritt.

## Blocker fuer canonical Promotion

1. `08` ist vorhanden, aber Index/Manifest-Sync ist offen.
2. Vollstaendige Diff-Fassung von `08` v0.2 muss erstellt werden.
3. README-Matrix-Update muss geplant werden.
4. CHANGES-Update muss geplant werden.
5. Cross-Repo-Routing zu `dr.debug-agents` bleibt offen, falls die Regel als Agent Policy statt technisches Memory gelten soll.
6. Runtime-/Model-Eval-Validation ist nicht gelaufen.
7. Optionaler Self-Error-Beispielrecord ist nicht entschieden.

## Recovery / Supersession Plan

Wenn dieses Proposal abgelehnt wird:

1. Proposal als `REJECTED` markieren oder durch v0.2 ersetzen.
2. Bestehende `08_AUTODIDACTIC_ERROR_LEARNING.md` unveraendert lassen.
3. Keine neue `08_AGENT_LOOP_SELF_ERROR_DIRECTIVE.md` anlegen.
4. Kein README/INDEX/MANIFEST/CHANGES Update ausfuehren.
5. Wenn Cross-Repo-Routing nach `dr.debug-agents` entschieden wird, in `dr.debug-memory` nur Source-/Navigation-Hinweis behalten.

Wenn dieses Proposal akzeptiert wird:

1. Exakte v0.2-Fassung fuer `08_AUTODIDACTIC_ERROR_LEARNING.md` erstellen.
2. README/INDEX/MANIFEST/CHANGES-Diff vorbereiten.
3. Dry-Run auf alle betroffenen Dateien ausfuehren.
4. Nur mit Owner/Admin `--apply` schreiben.
5. Commit-SHAs nur aus Tool-Output melden.

## Naechste Schritte

1. Dieses Konsolidierungsproposal reviewen.
2. Danach exakten canonical v0.2 Write-Plan fuer `08` plus README/INDEX/MANIFEST/CHANGES vorbereiten.
3. Optional separaten Self-Error-Record fuer fehlenden Proposal-Branch oder Tool-Write-Retry vorbereiten.
