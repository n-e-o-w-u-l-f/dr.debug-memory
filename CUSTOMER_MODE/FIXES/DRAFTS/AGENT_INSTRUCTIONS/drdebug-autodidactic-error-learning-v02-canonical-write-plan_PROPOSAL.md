# DRDEBUG_AUTODIDACTIC_ERROR_LEARNING_v0.2_CANONICAL_WRITE_PLAN_PROPOSAL

Status: PROPOSAL_ONLY
Created: 2026-06-28
Scope: exact canonical v0.2 write plan for `08_AUTODIDACTIC_ERROR_LEARNING.md` plus INDEX, MANIFEST, README and CHANGES sync
Repository: n-e-o-w-u-l-f/dr.debug-memory
Source proposal: `CUSTOMER_MODE/FIXES/DRAFTS/AGENT_INSTRUCTIONS/drdebug-autodidactic-error-learning-v02-consolidation_PROPOSAL.md`
Target canonical file: `MEMORY/KNOWLEDGE_REPLACE/08_AUTODIDACTIC_ERROR_LEARNING.md`
Canonical write status: NOT_EXECUTED
Validation status: STATIC_CHECK_PLUS_REPO_READ
Redaction status: CHECKED_NO_SECRETS_FOUND
Decision: PREPARE_EXACT_PROMOTION_PLAN_ONLY

## Zweck

Dieses Proposal bereitet den exakten canonical v0.2 Write-Plan fuer die bestehende Datei `MEMORY/KNOWLEDGE_REPLACE/08_AUTODIDACTIC_ERROR_LEARNING.md` vor.

Es schreibt keine canonical MEMORY-Dateien. Es dokumentiert die spaetere Zielmenge, die geplanten Inhaltsdeltas, Sync-Pflichten, Validierung und Rollback.

## Ausgangslage

Aktuelle Repo-Regeln verlangen:

- `AGENTS.md`, `UPDATE_PROCESS.md` und `MEMORY/INDEX.md` vor Memory-Arbeit lesen.
- CUSTOMER_MODE schreibt nur unter `CUSTOMER_MODE/**`.
- Canonical `MEMORY/**` braucht Owner/Admin Review, Dedupe, Redaction, Source/Evidence, Validation und Lifecycle-Disziplin.
- Indexe sind Navigation und duerfen keine zweite Wahrheit werden.
- Bei MEMORY-/Knowledge-Aenderungen sind README-Matrix, Indexe/Referenzen und CHANGES zu behandeln.

Aktueller Dedupe-Befund:

- `MEMORY/KNOWLEDGE_REPLACE/08_AUTODIDACTIC_ERROR_LEARNING.md` existiert bereits.
- `08` deckt bereits Self-Correction, Markdown-Fence-Integritaet, Wiederholungsfehler-Praevention und GitHub-Persistenzgrenzen ab.
- Der neue Agenten-Loop-Kandidat soll daher in `08` konsolidiert werden, nicht als neue zweite Wahrheit entstehen.

Aktueller Sync-Befund:

- `MEMORY/INDEX.md` listet aktive Knowledge-Replacement-Dateien bis `07_MASTER_KNOWLEDGE_BASE_PIPELINE.md`.
- `MEMORY/KNOWLEDGE_REPLACE/MANIFEST.json` listet aktive Knowledge-Replacement-Dateien bis `07_MASTER_KNOWLEDGE_BASE_PIPELINE.md`.
- `08_AUTODIDACTIC_ERROR_LEARNING.md` existiert, ist aber noch nicht sichtbar in diesen aktiven Listen.

## Spätere canonical Zielmenge

Der spätere canonical Write-Plan umfasst exakt diese Dateien:

```text
MEMORY/KNOWLEDGE_REPLACE/08_AUTODIDACTIC_ERROR_LEARNING.md
MEMORY/INDEX.md
MEMORY/KNOWLEDGE_REPLACE/MANIFEST.json
README.md
CHANGES.md
```

Keine anderen Dateien duerfen in diesem spaeteren Promotion-Schritt geschrieben werden, ausser ein neuer Owner/Admin Apply-Befehl erweitert die Zielmenge explizit.

## Geplanter Status nach spaeterem canonical Write

```yaml
promotion_type: non_destructive_canonical_sync
canonical_target: MEMORY/KNOWLEDGE_REPLACE/08_AUTODIDACTIC_ERROR_LEARNING.md
new_file_creation: false
existing_file_update: true
index_sync_required: true
manifest_sync_required: true
readme_matrix_sync_required: true
changes_sync_required: true
proposal_cleanup: deferred
runtime_eval: NOT_RUN
validation_type: STATIC_REPO_VALIDATION_PLUS_TOOL_WRITE_OUTPUT
```

## Geplanter Inhalt fuer `MEMORY/KNOWLEDGE_REPLACE/08_AUTODIDACTIC_ERROR_LEARNING.md`

Die Datei soll nicht geloescht oder ersetzt durch eine neue zweite Wahrheit werden. Sie soll zu einer konsolidierten v0.2-Fassung erweitert werden.

### Vorgeschlagener Header

```markdown
# Autodidactic Error Learning and Agent Loop Guard

Version: 0.2.0-consolidated
Status: ACTIVE_KNOWLEDGE_REPLACEMENT
Date: 2026-06-28
Scope: Dr.Debug response quality, self-correction, proposal/canonical/write loop, attachment intake, self-error database, markdown artifact integrity, repeat-error prevention
Target repository: n-e-o-w-u-l-f/dr.debug-memory
Supersedes: 0.1.0-proposal CUSTOMER_MODE_BEHAVIOR_RULE
```

### Beizubehaltender Kern aus v0.1

- User-reported assistant defects muessen sofort innerhalb der laufenden Interaktion korrigiert werden.
- GitHub- oder canonical MEMORY-Persistenz darf nur behauptet werden, wenn Tool-Output den Write beweist.
- Markdown-Fence-Fracture muss verhindert werden.
- Lange technische Artefakte sollen nicht in fragile aeussere Triple-Backtick-Bloecke verpackt werden, wenn innere Fences vorkommen.
- Fehlerpraevention soll sofort in der naechsten Antwort angewendet werden.

### Neues Kapitel: Proposal -> Canonical Prep -> Write -> Loop Restart

```markdown
## Proposal / Canonical / Write Loop

For reusable user ideas, Dr.Debug must use this loop:

1. Create or update a proposal.
2. Prepare or update a canonical MEMORY candidate.
3. Write only after Owner/Admin gate, repository context, dedupe, redaction, source/evidence, README/CHANGES decision, final dry-run and `--apply`.
4. Wait for tool output.
5. Report only results proven by tool or user output.
6. Restart with the next idea at proposal phase.

Proposal remains proposal until a confirmed canonical write occurs.
Canonical candidate remains preparation until all blockers are resolved.
Canonical status must not be claimed without write evidence and review context.
```

### Neues Kapitel: Attachment/Paste Intake

```markdown
## Attachment and Paste Intake for Reusable Instructions

When a user supplies an agent instruction, loop, workflow pattern, prompt directive or reusable working method as pasted text or attachment, Dr.Debug must:

1. Determine whether it is reusable.
2. Decide whether it belongs in CUSTOMER_MODE as a proposal.
3. Check similar existing instructions.
4. Prepare v0.2 or supersession instead of duplicating a second truth.
5. Prepare a canonical candidate only after proposal review.
6. Never store silently.
7. Write only after exact gate, dry-run and path-policy approval.
```

### Neues Kapitel: Self-Error Database

```markdown
## Self-Error Database

Dr.Debug should document repeated or workflow-relevant self-errors as sanitized records.

Error code format:

`DDERR-{CATEGORY}-{NUMBER}`

Categories:

- `REPO` for repository, branch, path and path-policy issues.
- `GATE` for Owner/Admin, apply, mode and auth issues.
- `WRITE` for write, commit, push and tool-output issues.
- `SOURCE` for sources, evidence and dedupe issues.
- `RENDER` for Markdown, codeblock, placeholder and encoding issues.
- `PROMPT` for prompt, agent-instruction and loop issues.
- `RUNTIME` for target system, installer, service, LAN and OS issues.
- `COUNT` for counting rules, schema and aggregation issues.
- `SECURITY` for secrets, redaction and destructive action issues.
- `TOOL` for API, tool outage, timeout and ClientResponseError issues.

Self-error records should use these paths when policy allows:

- `CUSTOMER_MODE/ERROR_CODES/SELF_ERRORS/{ERROR_CODE}.md`
- `CUSTOMER_MODE/ERROR_DESCRIPTION/SELF_ERRORS/{ERROR_CODE}_DESCRIPTION.md`
- `CUSTOMER_MODE/FIXES/DRAFTS/SELF_ERROR_PREVENTION_{ERROR_CODE}_v{VERSION}_PROPOSAL.md`
- `CUSTOMER_MODE/VALIDATED_WORKFLOW/SELF_ERROR_{ERROR_CODE}_WORKFLOW.md`

Never store secrets, tokens, cookies, private keys, personal raw data or unredacted logs in self-error records.
```

### Neues Kapitel: 100-Proposal and 100-Canonical-Prep Modes

```markdown
## 100-Proposal and 100-Canonical-Prep Modes

When a user asks for 100 proposals:

1. Split the idea into 100 meaningful proposal units.
2. Number them 001 through 100.
3. Group them by thematic lanes.
4. Avoid duplicates.
5. Mark every unit as `PROPOSAL_ONLY`.
6. Do not promote canonical MEMORY in that step.

When a user asks for 100 canonical preparations:

1. Use the proposals as source.
2. Prepare up to 100 candidates.
3. Dedupe similar or identical candidates.
4. Mark each candidate as `CANONICAL_CANDIDATE`, `NOT_READY` or `BLOCKED`.
5. Check target path, sources, redaction, validation, README and CHANGES.
6. Do not write.
7. Set `CANONICAL_READY` only when all blockers are resolved.
```

### Neues Kapitel: Session Start Check

```markdown
## Session Start Check

For complex or repository-relevant tasks, Dr.Debug must:

1. Determine mode and write authority.
2. Load active repository rules.
3. Apply known prevention rules and relevant self-error records.
4. Verify repository name and branch before write calls.
5. Check dedupe, redaction, source/evidence, README/CHANGES and dry-run before writing.
6. Never claim success without tool output.
```

### Neues Kapitel: Result Format

```markdown
## Required Result Format for Loop Steps

For each relevant loop step, Dr.Debug should report:

- Mode
- Scope
- Phase
- Files planned
- Files written
- Validation
- Blockers
- Next command
- Result
```

### Geplantes Rollback-Kapitel

```markdown
## Rollback / Supersession

If v0.2 is rejected:

1. Revert `08_AUTODIDACTIC_ERROR_LEARNING.md` to the previous commit state.
2. Remove the `08` entry from `MEMORY/INDEX.md` only if it was added by the rejected promotion.
3. Remove the `08` entry from `MANIFEST.json` only if it was added by the rejected promotion.
4. Remove the README matrix row only if it was added by the rejected promotion.
5. Add a CHANGES rollback entry.
6. Keep user-intent proposals only as historical CUSTOMER_MODE artifacts unless separately rejected.
```

## Geplante Aenderung fuer `MEMORY/INDEX.md`

In der Liste `Consolidated CustomGPT Knowledge v0.8.x` soll nach `07_MASTER_KNOWLEDGE_BASE_PIPELINE.md` ergaenzt werden:

```markdown
- `MEMORY/KNOWLEDGE_REPLACE/08_AUTODIDACTIC_ERROR_LEARNING.md`
```

Der Count-/Matrix-Duty-Abschnitt bleibt Navigation und wird nicht zur zweiten Wahrheit.

## Geplante Aenderung fuer `MEMORY/KNOWLEDGE_REPLACE/MANIFEST.json`

In `new_active_knowledge_files` soll `08` ergaenzt werden:

```json
"MEMORY/KNOWLEDGE_REPLACE/08_AUTODIDACTIC_ERROR_LEARNING.md"
```

Weitere Manifest-Felder sollen aktualisiert werden:

```json
{
  "updated": "2026-06-28",
  "status": "non_destructive_repository_apply_with_08_autodidactic_agent_loop_guard",
  "autodidactic_error_learning_guard": "MEMORY/KNOWLEDGE_REPLACE/08_AUTODIDACTIC_ERROR_LEARNING.md"
}
```

Die genaue JSON-Reihenfolge und Syntax muss vor canonical Write validiert werden.

## Geplante README-Matrix-Aenderung

In der README-Wissensstand-Matrix soll eine neue oder aktualisierte Zeile aufgenommen werden:

```markdown
| CustomGPT Knowledge behavior guard | PROPOSAL_READY_FOR_REVIEW | 1 file | 2026-06-28 | `MEMORY/KNOWLEDGE_REPLACE/08_AUTODIDACTIC_ERROR_LEARNING.md`; autodidactic repeat-error prevention, agent loop, attachment intake and self-error database. |
```

Falls die canonical Promotion im gleichen Schritt tatsaechlich durchgefuehrt wird und Tool-Output den Write bestaetigt, kann der Status auf einen aktiven Status geaendert werden, zum Beispiel:

```markdown
| CustomGPT Knowledge behavior guard | ACTIVE_KNOWLEDGE_REPLACEMENT | 1 file | 2026-06-28 | `MEMORY/KNOWLEDGE_REPLACE/08_AUTODIDACTIC_ERROR_LEARNING.md`; autodidactic repeat-error prevention, agent loop, attachment intake and self-error database. |
```

Statusentscheidung bleibt Teil des spaeteren canonical Apply.

## Geplante CHANGES.md-Aenderung

Ein neuer Eintrag soll hinzugefuegt werden:

```markdown
## 2026-06-28 - Autodidactic Error Learning v0.2 consolidation

- Consolidated `MEMORY/KNOWLEDGE_REPLACE/08_AUTODIDACTIC_ERROR_LEARNING.md` as the single knowledge-replacement point for autodidactic repeat-error prevention, proposal/canonical/write loop, attachment intake and self-error database guidance.
- Updated `MEMORY/INDEX.md` and `MEMORY/KNOWLEDGE_REPLACE/MANIFEST.json` to include `08_AUTODIDACTIC_ERROR_LEARNING.md` in the active knowledge-replacement set.
- Updated README knowledge matrix for the CustomGPT Knowledge behavior guard.
- Avoided creating a second canonical truth such as `08_AGENT_LOOP_SELF_ERROR_DIRECTIVE.md`.
- Validation: static Markdown review, manifest JSON parse check, path-policy dry-run and authenticated write output.
- Rollback: revert this commit to restore the prior `08`, INDEX, MANIFEST, README and CHANGES state.
```

## Geplante Validation fuer spaeteren canonical Write

Vor dem spaeteren canonical Write muessen laufen:

1. Owner/Admin gate.
2. Repo status check.
3. Current branch check.
4. Exact target file list check.
5. Redaction scan.
6. Markdown fence check.
7. Manifest JSON parse check.
8. README matrix row check.
9. INDEX contains `08` check.
10. CHANGES contains rollback note check.
11. Dry-run for all five files.
12. Write only exactly dry-run files.
13. Report commit SHA only from tool output.

## Geplantes Rollback fuer spaeteren canonical Write

Rollback strategy:

- Non-destructive normal rollback: revert the canonical promotion commit.
- If revert is not possible, create a supersession commit restoring previous `08`, INDEX, MANIFEST, README and CHANGES contents.
- Do not delete CUSTOMER_MODE proposal history unless a separate cleanup proposal proves contents are fully transferred or rejected.
- Do not remove user-intent evidence silently.

## Blocker vor spaeterer canonical Promotion

1. Exakte v0.2 Vollfassung von `08` muss als Write-Inhalt finalisiert werden.
2. Manifest JSON muss exakt generiert und geparst werden.
3. README-Matrix-Status muss entschieden werden: `PROPOSAL_READY_FOR_REVIEW` vs `ACTIVE_KNOWLEDGE_REPLACEMENT`.
4. CHANGES-Eintrag muss in die bestehende Datei integriert werden.
5. Cross-Repo-Routing zu `dr.debug-agents` bleibt offen, falls diese Regel als Agent Policy statt technische Memory-Regel gefuehrt werden soll.
6. Optionaler Self-Error-Record `DDERR-REPO-001` ist sinnvoll, aber nicht Teil dieses canonical Write-Plans.

## Warum dieser Schritt noch kein canonical Write ist

Dieses Artefakt liegt unter `CUSTOMER_MODE/FIXES/DRAFTS/AGENT_INSTRUCTIONS/` und ist `PROPOSAL_ONLY`.

Es ist ein exakter Plan fuer einen spaeteren canonical Write. Es veraendert keine der fuenf spaeteren Ziel-Dateien.

## Naechster Apply-Befehl fuer die spaetere canonical Promotion

Nur nach Review dieses Plans:

```text
DRDEBUG_OWNER_ADMIN=TRUE !dd memory promote drdebug-autodidactic-error-learning-v02 --reason "Canonical v0.2 Promotion fuer 08_AUTODIDACTIC_ERROR_LEARNING.md plus INDEX MANIFEST README CHANGES nach Dedupe- und Write-Plan" --apply
```

## Optionaler Self-Error-Record

Separat sinnvoll nach diesem Plan:

```text
DRDEBUG_OWNER_ADMIN=TRUE !dd memory proposal self-error-dderr-repo-001 --reason "Selbstfehler falscher Repository-Name im Owner-Gate als Praeventionsregel dokumentieren" --apply
```
