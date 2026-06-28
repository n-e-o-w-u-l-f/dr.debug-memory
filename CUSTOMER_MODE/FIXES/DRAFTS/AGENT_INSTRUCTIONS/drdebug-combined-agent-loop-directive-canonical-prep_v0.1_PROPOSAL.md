# CANONICAL_PREP_DRDEBUG_COMBINED_AGENT_LOOP_DIRECTIVE_v0.1_PROPOSAL

Status: CANONICAL_PREP_ONLY
Created: 2026-06-28
Scope: canonical MEMORY candidate preparation for combined Dr.Debug agent loop directive and self-error database
Source Proposal: CUSTOMER_MODE/FIXES/DRAFTS/AGENT_INSTRUCTIONS/drdebug-combined-agent-loop-directive_v0.1_PROPOSAL.md
Source Proposal Status: PROPOSAL_ONLY
Canonical Promotion Status: NOT_PROMOTED
Candidate Status: CANONICAL_CANDIDATE_WITH_BLOCKERS
Prepared by: Dr.Debug OWNER_ADMIN_MODE apply request

## Zweck

Dieses Artefakt bereitet eine canonical MEMORY-Kandidatenfassung fuer die kombinierte Dr.Debug Agenten-Loop-Direktive vor.

Der Kandidat verbindet:

1. Proposal-Canonical-Write-Loop.
2. Attachment-/Paste-Intake fuer wiederverwendbare Agenten-Anweisungen.
3. Self-Error-Datenbank mit Fehlercodes, Fehlerbeschreibungen, Praeventionsregeln und spaeteren validierten Workflows.

Dieses Artefakt schreibt keine canonical MEMORY-Datei. Es dokumentiert nur den pruefbaren Kandidaten, die offenen Blocker und den spaeteren Write-Plan.

## Source / Evidence

Quellen fuer diese Vorbereitung:

1. Nutzerauftrag vom 2026-06-28: `drdebug-combined-agent-loop-directive-canonical-prep`.
2. Bereits geschriebenes CUSTOMER_MODE Proposal: `CUSTOMER_MODE/FIXES/DRAFTS/AGENT_INSTRUCTIONS/drdebug-combined-agent-loop-directive_v0.1_PROPOSAL.md`.
3. User-provided Attachment 1: `DR.DEBUG AGENT LOOP DIRECTIVE v0.1`.
4. User-provided Attachment 2: Zusatzblock zu Agenten-Anweisungen, Self-Error-Dokumentation, Fehlercodes und Session-Start-Check.
5. Aktuelle Repo-Regeln: `AGENTS.md`, `UPDATE_PROCESS.md`, `MEMORY/INDEX.md`.

Evidence Level: E1/E2 fuer Nutzerintent und Proposal-Inhalt, E3 fuer Repo-Regeln aus aktuellen Repository-Dateien.
Validation Level: STATIC_CHECK und DRY_RUN_ONLY bis ein spaeterer canonical Write tatsaechlich erfolgt.

## Provisorischer canonical Zielpfad

Primaerer Kandidat, wenn diese Regel im Memory-Repository bleiben soll:

```text
MEMORY/KNOWLEDGE_REPLACE/08_AGENT_LOOP_SELF_ERROR_DIRECTIVE.md
```

Alternativer Kandidat, wenn eine eigene Agenten-Instructions-Familie eroeffnet wird:

```text
MEMORY/AGENT_INSTRUCTIONS/DRDEBUG_COMBINED_AGENT_LOOP_DIRECTIVE.md
```

Cross-Repo-Hinweis:

`AGENTS.md` trennt Repository-Verantwortung: Agent policy gehoert grundsaetzlich in `dr.debug-agents`, technische Memory- und CUSTOMER_MODE-Artefakte in `dr.debug-memory`. Daher ist vor canonical Promotion zu klaeren, ob diese Direktive als technische Memory-/Knowledge-Replacement-Regel in `dr.debug-memory` verbleiben darf oder ob die canonical Agentenregel nach `dr.debug-agents` gehoert.

## Dedupe-Pruefung

Bekannte nahe Verwandte:

1. `MEMORY/KNOWLEDGE_REPLACE/00_WORKING_MODE.md` enthaelt Mode-, Gate- und Final-Response-Regeln.
2. `MEMORY/KNOWLEDGE_REPLACE/01_REPOSITORY_CHANGE_WORKFLOW.md` enthaelt Repository-Workflow- und Write-Regeln.
3. `MEMORY/KNOWLEDGE_REPLACE/04_EVIDENCE_SCHEMA_DEDUP_MEMORY.md` enthaelt Evidence-, Dedupe-, Status- und README-Matrix-Regeln.
4. `MEMORY/KNOWLEDGE_REPLACE/06_KNOWLEDGE_TOOL_SYNC_AUDIT.md` enthaelt Knowledge-, Tool-, Audit- und Drift-Regeln.
5. Das CUSTOMER_MODE Proposal `drdebug-combined-agent-loop-directive_v0.1_PROPOSAL.md` enthaelt bereits die verdichtete Proposal-Fassung.

Dedupe-Ergebnis:

- Inhalt ist nicht als direkte canonical Regel promoted.
- Inhalt ueberschneidet sich stark mit bestehenden Knowledge-Replacement-Regeln.
- Der neue Mehrwert liegt in der kombinierten Loop-Form, dem 100-Proposal/100-Canonical-Prep-Modus und der expliziten Self-Error-Datenbank.
- Promotion sollte nicht als komplett neue zweite Wahrheit erfolgen, sondern als Zusammenfuehrung oder Zusatzmodul mit klaren Verweisen auf bestehende Regeln.

Dedupe Status: PARTIAL_DEDUPE_COMPLETE, FULL_REPO_DEDUPE_REQUIRED_BEFORE_PROMOTION.

## Redaction Status

Statischer Redaction-Check fuer diese Vorbereitung:

- Keine Tokens.
- Keine Passwoerter.
- Keine Cookies.
- Keine SSH/private keys.
- Keine personenbezogenen Rohlogs.
- Keine unredigierten Tool-Responses.

Redaction Status: CHECKED_NO_SECRETS_FOUND.

## README-Matrix-Auswirkung

Dieser CUSTOMER_MODE Write aendert keine canonical MEMORY-Datei.

Fuer eine spaetere canonical Promotion muss die README Knowledge Matrix mindestens diese Artefaktklassen pruefen oder aktualisieren:

- proposals
- canonical records
- fixes
- error codes
- validated workflows
- aliases/mirrors, falls ein Navigations- oder Alias-Pfad entsteht

Aktueller Status fuer diesen Write:

```yaml
readme_matrix_update_required_now: false
reason: CUSTOMER_MODE canonical-prep artifact only, no canonical MEMORY promotion
readme_matrix_required_before_promotion: true
```

## CHANGES-Auswirkung

Dieser CUSTOMER_MODE Write aktualisiert `CHANGES.md` nicht.

Bei spaeterer canonical Promotion muss `CHANGES.md` mindestens enthalten:

- neuer oder geaenderter canonical Zielpfad;
- Zweck der Direktive;
- Dedupe-Entscheidung;
- Redaction-/Evidence-Status;
- Validation-Status;
- Rollback oder Supersession-Plan.

## Canonical Inhalt: Kandidatenfassung

# DRDEBUG_AGENT_LOOP_SELF_ERROR_DIRECTIVE

Status: CANONICAL_CANDIDATE
Created: 2026-06-28
Source: CUSTOMER_MODE Proposal `drdebug-combined-agent-loop-directive_v0.1_PROPOSAL.md`
Scope: Dr.Debug reusable workflow directive for proposals, canonical preparation, gated writes, attachment intake and self-error records

## Regel / Wissen

Dr.Debug muss wiederverwendbare Nutzerideen in einem sicheren Loop bearbeiten:

1. Proposal erstellen oder ueberarbeiten.
2. Canonical MEMORY-Kandidat vorbereiten oder ueberarbeiten.
3. Write nur nach Gate, Repository-Kontext, Dedupe, Redaction, Source/Evidence, README-/CHANGES-Entscheidung, finalem Dry-Run und `--apply`.
4. Tool-Output abwarten und nur belegte Ergebnisse melden.
5. Danach mit der naechsten Idee wieder bei Proposal beginnen.

## Attachment-/Paste-Intake

Wenn Nutzer eine wiederverwendbare Agenten-Anweisung, einen Loop, ein Workflow-Muster, eine Prompt-Direktive oder eine wiederholbare Arbeitsweise als Text oder Attachment liefern, muss Dr.Debug:

1. Wiederverwendbarkeit pruefen.
2. Proposal-Pfad bestimmen.
3. Aehnliche bestehende Direktiven suchen.
4. v0.2 oder Supersession statt Duplikat vorbereiten, wenn noetig.
5. Canonical-Kandidat erst nach Proposal vorbereiten.
6. Nicht stillschweigend speichern.
7. Nur mit exaktem Apply-Gate und Dry-Run schreiben.

## Self-Error-Datenbank

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

Self-Error-Dokumentation darf keine Secrets, Tokens, Cookies, private Keys, personenbezogene Rohdaten oder unredigierten Logs speichern.

## Praeventionsregeln

1. Repository-Name vor Write exakt gegen `githubStatus.repo.full_name` pruefen.
2. Branch-Status pruefen; fehlender Branch ist kein Write-Erfolg.
3. Tool-Ausfall, Timeout, leere Response oder unbekannter Fehler ist kein Write-Erfolg.
4. `STATIC_CHECK` niemals als Runtime Validation ausgeben.
5. `NOT_RUN` bleibt `NOT_RUN`.
6. Proposal bleibt Proposal, bis ein bestaetigter canonical Write erfolgt.
7. Canonical Ready nur setzen, wenn Dedupe, Source/Evidence, Redaction, README, CHANGES, Zielpfad, Validation und Recovery geloest sind.
8. Keine spitzen Platzhalter in Markdown-Prosa verwenden.

## Anwendung

Diese Direktive ist anzuwenden bei:

- `memory proposal` Auftraegen;
- wiederverwendbaren Agenten-/Prompt-Direktiven;
- 100-Proposal- oder 100-Canonical-Prep-Anforderungen;
- Owner/Admin Write-Gates;
- Self-Error-Erkennung;
- Dokumentation von Tool-, Repo-, Gate-, Rendering-, Runtime-, Count- oder Security-Fehlern.

## Beispiele

Beispiel Proposal-Apply:

```text
DRDEBUG_OWNER_ADMIN=TRUE !dd memory proposal drdebug-combined-agent-loop-directive --reason "Kombinierte Dr.Debug Agenten-Loop-Direktive als CUSTOMER_MODE Proposal ablegen" --apply
```

Beispiel Canonical-Prep-Apply:

```text
DRDEBUG_OWNER_ADMIN=TRUE !dd memory proposal drdebug-combined-agent-loop-directive-canonical-prep --reason "Canonical MEMORY Kandidat fuer die kombinierte Dr.Debug Agenten-Loop-Direktive mit Self-Error-Datenbank vorbereiten" --apply
```

## Grenzen

- Diese Kandidatenfassung ist keine aktive canonical MEMORY-Regel.
- Cross-Repo-Routing ist offen, weil Agent Policy moeglicherweise nach `dr.debug-agents` gehoert.
- Full-Repo-Dedupe ist vor Promotion erneut erforderlich.
- README und CHANGES sind fuer Promotion offen.
- Runtime-/Eval-Validierung wurde nicht ausgefuehrt.

## Validierung

Aktueller Validierungsstatus:

```yaml
proposal_exists: true
canonical_candidate_prepared: true
dedupe_status: PARTIAL_DEDUPE_COMPLETE
source_evidence_status: USER_ATTACHMENT_PLUS_REPO_RULES
redaction_status: CHECKED_NO_SECRETS_FOUND
readme_matrix_status: NOT_UPDATED_FOR_CUSTOMER_MODE_PREP
changes_status: NOT_UPDATED_FOR_CUSTOMER_MODE_PREP
runtime_validation: NOT_RUN
write_validation: DRY_RUN_ONLY_UNTIL_TOOL_WRITE_OK
promotion_status: BLOCKED
```

## Promotion-Entscheidung

Decision: NOT_READY_FOR_CANONICAL_PROMOTION.

Blocker:

1. Zielpfad muss final entschieden werden.
2. Cross-Repo-Routing `dr.debug-memory` vs `dr.debug-agents` muss entschieden werden.
3. Full-Repo-Dedupe gegen bestehende Knowledge-Replacement- und Agenten-Regeln muss abgeschlossen werden.
4. README-Matrix-Auswirkung muss fuer Promotion entschieden werden.
5. CHANGES.md-Auswirkung muss fuer Promotion entschieden werden.
6. Optionaler Self-Error-Record fuer den frueheren fehlenden Proposal-Branch kann separat vorbereitet werden.

## Recovery / Supersession Plan

Wenn diese Canonical-Prep-Fassung ueberarbeitet wird:

1. v0.2-Canonical-Prep als neues CUSTOMER_MODE Proposal erstellen.
2. Unterschiede zu v0.1 dokumentieren.
3. v0.1 nicht stillschweigend loeschen.
4. Wenn eine canonical Promotion erfolgt, dieses Prep-Artefakt als Quelle referenzieren.
5. Wenn die Direktive nach `dr.debug-agents` verschoben wird, in `dr.debug-memory` nur Navigation oder Source-Verweis behalten, keine zweite Wahrheit.
6. Bei Ablehnung Status auf `REJECTED` oder `SUPERSEDED` setzen.

## Naechste sichere Schritte

1. Cross-Repo-Routing entscheiden.
2. Full-Repo-Dedupe gegen `MEMORY/KNOWLEDGE_REPLACE/**`, `MEMORY/AGENT_INSTRUCTIONS/**` und `CUSTOMER_MODE/FIXES/DRAFTS/AGENT_INSTRUCTIONS/**` durchfuehren.
3. README-Matrix- und CHANGES-Plan fuer Promotion erstellen.
4. Erst danach canonical Write-Plan mit exakten Dateien vorbereiten.
