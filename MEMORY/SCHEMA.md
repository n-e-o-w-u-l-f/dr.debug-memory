# # # # # # # # # # # #
# DR. DEBUG SCHEMA.md #
# # # # # # # # # # # #

Version: 0.0.1
Zielpfad: /MEMORY/SCHEMA.md
Status: ACTIVE
Scope: Base schema rules for Dr. Debug memory entries

# # # # # # #
# Zweck #
# # # # # # #

Dieses Dokument definiert die gemeinsamen Mindestfelder, Familien, Statuswerte und Strukturregeln fuer die Dr.-Debug-/MEMORY/-Datenbank.

Es gilt fuer:

```text
Error-Codes
Cases
Playbooks
MEMORY_PROPOSALs
Agenten-Direktiven
Index- und Alias-Dateien
Quellenregister
```

# # # # # # # # # # #
# Common Fields #
# # # # # # # # # # #

Jeder kanonische Wissenseintrag soll Metadaten enthalten:

```yaml
id: <stable-id>
title: <human-readable-title>
family: error | case | playbook | source | agent_directive | index | state | manual | hardware | software
status: <STATUS_*>
confidence: NONE | LOW | MEDIUM | HIGH
first_added: YYYY-MM-DD
last_verified: YYYY-MM-DD | UNKNOWN
sources:
  - <source_id-or-url>
related_entries:
  - <path-or-id>
review_required: true | false
canonical_path: <repo-path>
version: 0.0.1
```

# # # # # # # # # #
# Entry Families #
# # # # # # # # # #

Unterstuetzte Familien:

```text
software
error
hardware
source
agent_directive
index
state
manual
case
playbook
memory_proposal
system
device
package
command
script
```

# # # # # # # # # # # #
# Status System #
# # # # # # # # # # # #

Erlaubte Hauptstatuswerte:

```text
STATUS_NEW
STATUS_RESEARCH_REQUIRED
STATUS_RESEARCHED
STATUS_OBSERVED_LOCAL
STATUS_PROPOSED_FIX
STATUS_EXPERIMENTAL_FIX
STATUS_USER_VALIDATED
STATUS_REPAIR_TESTED
STATUS_REPAIR_CONFIRMED_MULTIPLE
STATUS_CONFIRMED
STATUS_PARTIAL
STATUS_FAILED_FIX
STATUS_SUPERSEDED
STATUS_DEPRECATED
STATUS_DANGEROUS_REQUIRES_CONFIRMATION
STATUS_UNKNOWN
```

Regel:

```text
STATUS_EXPERIMENTAL_FIX darf gespeichert werden, muss aber klar als nicht verifiziert markiert sein.
STATUS_USER_VALIDATED benoetigt eine User-Rueckmeldung.
STATUS_REPAIR_TESTED benoetigt Vorher-Zustand, Massnahme, Nachher-Zustand und Validierung.
STATUS_CONFIRMED benoetigt Quellen, Geltungsbereich, Risiko- und Validierungsangaben.
```

# # # # # # # # # # # # # #
# ERROR_CODE Schema #
# # # # # # # # # # # # # #

```yaml
id: <DOMAIN-NNNN>
title: <short-title>
family: error
status: STATUS_RESEARCH_REQUIRED
confidence: LOW
canonical_path: /MEMORY/ERROR_CODES/<DOMAIN>_ERROR_CODES.md
signatures:
  exact: []
  regex: []
  symptoms: []
context:
  os_family: Unknown
  distribution: Unknown
  version: Unknown
  device: Unknown
  service: Unknown
  program: Unknown
  package_manager: Unknown
  architecture: Unknown
root_cause:
  confirmed: []
  hypotheses: []
diagnosis:
  non_destructive_steps: []
fixes:
  experimental: []
  validated: []
  failed: []
validation:
  expected_result: Unknown
  observed_result: Unknown
sources: []
related_cases: []
```

# # # # # # # # #
# CASE Schema #
# # # # # # # # #

```yaml
id: CASE-YYYYMMDD-<slug>
family: case
status: OPEN | RESEARCHING | EXPERIMENTAL_FIX_OFFERED | USER_VALIDATED | CLOSED | NEEDS_MORE_DATA
redacted: true
input_summary: <summary>
affected_error_ids: []
canonical_paths: []
diagnosis_timeline: []
proposed_actions: []
user_validation: Unknown
repository_changes: []
```

# # # # # # # # # # #
# PLAYBOOK Schema #
# # # # # # # # # # #

```yaml
id: PLAYBOOK-<DOMAIN>-<SLUG>
family: playbook
status: STATUS_RESEARCH_REQUIRED
purpose: <what-this-playbook-solves>
affected_error_ids: []
affected_systems: []
risk_level: LOW | MEDIUM | HIGH | CRITICAL
prerequisites: []
diagnosis_steps: []
backup_steps: []
repair_steps: []
rollback_steps: []
validation_steps: []
known_limits: []
sources: []
```

# # # # # # # # # # # # # # #
# MEMORY_PROPOSAL Schema #
# # # # # # # # # # # # # # #

```yaml
proposal_id: MP-YYYYMMDD-<slug>
family: memory_proposal
status_suggestion: STATUS_RESEARCH_REQUIRED | STATUS_EXPERIMENTAL_FIX | STATUS_USER_VALIDATED
knowledge_class: OBSERVED | RESEARCHED | INFERRED | USER_VALIDATED
error_signature: <exact-or-summary>
system_context: {}
versions: {}
diagnosis_path: []
experimental_fix: []
user_validation: Unknown
risk: LOW | MEDIUM | HIGH | CRITICAL
backup: <required-or-not>
rollback: <how-to-reverse>
validation: <how-to-check>
sources_or_research_needed: []
proposed_canonical_path: <path>
index_aliases: []
```

# # # # # # # # # # # # # # # #
# AGENT_DIRECTIVE Schema #
# # # # # # # # # # # # # # # #

```yaml
directive_id: AGENT-YYYYMMDD-<slug>
title: <title>
version: 0.0.1
status: ACTIVE | DRAFT | MERGED | SUPERSEDED | ARCHIVED | DELETED_WITH_REASON
source: USER_DIRECTIVE | AGENT_DERIVED | RESEARCHED | MERGED
created: YYYY-MM-DD
last_modified: YYYY-MM-DD
target_path: <path>
replaces: NONE | <path>
replaced_by: NONE | <path>
conflicts: NONE | <path>
security_relevance: LOW | MEDIUM | HIGH | CRITICAL
github_suitable: YES | NO | REDACTED_REQUIRED
```

# # # # # # # # # # # # # # # #
# Alias- und Mirror-System #
# # # # # # # # # # # # # # # #

Index- und Mirror-Dateien duerfen Navigation erleichtern, aber keine zweite Wahrheit erzeugen.

Pflichtfelder fuer Alias/Mirror:

```markdown
**Mirror-Type:** INDEX_ALIAS | SUMMARY_MIRROR | DEPRECATED_MIRROR | GENERATED_MIRROR
**Canonical-Path:** <Pfad>
**Canonical-Status:** <Status>
**Last-Synced:** YYYY-MM-DD oder MANUAL
**Do-Not-Edit-Here:** YES
**Purpose:** Navigation | Compatibility | Generated copy | Legacy path
```

# # # # # # # # # #
# Source Rule #
# # # # # # # # # #

Ein kanonischer faktischer Eintrag braucht mindestens eine registrierte Quelle, ausser er ist klar markiert als:

```text
Template
State file
Index file
Repository governance file
Agent directive
```

# # # # # # # #
# Finale Regel #
# # # # # # # #

Keine neue kanonische Datei ohne Familie, Status, Confidence, Quellenstatus und kanonischen Pfad.
