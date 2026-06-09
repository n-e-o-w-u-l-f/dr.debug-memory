# # # # # # # # # # # # #
# DR. DEBUG LIFECYCLE.md #
# # # # # # # # # # # # #

Version: 0.0.1
Zielpfad: /MEMORY/LIFECYCLE.md
Status: ACTIVE
Scope: Error-, Case-, Fix-, Proposal-, Source- und Directive-Lifecycle fuer Dr. Debug /MEMORY/

# # # # # # #
# Zweck #
# # # # # # #

Dieses Dokument zentralisiert die Lebenszyklen der Dr.-Debug-/MEMORY/-Datenbank.

Es verbindet:

```text
Dr.Debug-GPT Diagnose
Dr.Debug-MEMORY Repositorypflege
MEMORY_PROPOSAL Workflow
Error-Code Statussystem
Case-Akten
Playbooks
Quellen
Agenten-Direktiven
```

# # # # # # # # # # # # #
# Error Lifecycle #
# # # # # # # # # # # # #

```text
STATUS_NEW
  -> STATUS_RESEARCH_REQUIRED
  -> STATUS_RESEARCHED
  -> STATUS_EXPERIMENTAL_FIX
  -> STATUS_USER_VALIDATED
  -> STATUS_REPAIR_TESTED
  -> STATUS_REPAIR_CONFIRMED_MULTIPLE
  -> STATUS_CONFIRMED
```

Rueckstufungen:

```text
STATUS_FAILED_FIX
STATUS_PARTIAL
STATUS_DEPRECATED
STATUS_SUPERSEDED
STATUS_DANGEROUS_REQUIRES_CONFIRMATION
STATUS_UNKNOWN
```

# # # # # # # # # # #
# Case Lifecycle #
# # # # # # # # # # #

```text
OPEN
  -> NEEDS_MORE_DATA
  -> RESEARCHING
  -> EXPERIMENTAL_FIX_OFFERED
  -> USER_VALIDATED
  -> CLOSED
```

Alternative Endzustaende:

```text
CLOSED_NO_REPRODUCTION
CLOSED_OUT_OF_SCOPE
CLOSED_UNSAFE
ARCHIVED
```

# # # # # # # # # # # # # # #
# MEMORY_PROPOSAL Lifecycle #
# # # # # # # # # # # # # # #

```text
PROPOSED
  -> REDACTION_REQUIRED
  -> DEDUP_REQUIRED
  -> RESEARCH_REQUIRED
  -> READY_FOR_MEMORY
  -> MERGED_TO_MEMORY
```

Ablehnungszustaende:

```text
REJECTED_DUPLICATE
REJECTED_UNSAFE
REJECTED_INSUFFICIENT_DATA
REJECTED_OUT_OF_SCOPE
```

# # # # # # # # # #
# Fix Lifecycle #
# # # # # # # # # #

```text
HYPOTHESIS
  -> PROPOSED_FIX
  -> EXPERIMENTAL_FIX
  -> USER_VALIDATED_FIX
  -> REPAIR_TESTED_FIX
  -> CONFIRMED_FIX
```

Fehlschlaege:

```text
FAILED_FIX
PARTIAL_FIX
REGRESSION
SIDE_EFFECTS_FOUND
```

# # # # # # # # # # # # #
# Source Lifecycle #
# # # # # # # # # # # # #

```text
SOURCE_DISCOVERED
  -> SOURCE_CLASSIFIED
  -> SOURCE_REVIEWED
  -> SOURCE_LINKED
  -> SOURCE_VERIFIED
```

Problemzustaende:

```text
SOURCE_STALE
SOURCE_CONFLICTS
SOURCE_REJECTED
SOURCE_UNAVAILABLE
```

# # # # # # # # # # # # # # # #
# Directive Lifecycle #
# # # # # # # # # # # # # # # #

```text
DRAFT
  -> ACTIVE
  -> MERGED
  -> SUPERSEDED
  -> ARCHIVED
```

Sonderzustaende:

```text
CONFLICT_REVIEW_REQUIRED
DELETED_WITH_REASON
REJECTED_UNSAFE
```

# # # # # # # # # # # # # #
# Supersede Lifecycle #
# # # # # # # # # # # # # #

Beim Ersetzen eines Eintrags muss dokumentiert werden:

```text
Alter Pfad
Neuer Pfad
Grund
Datum
Agent
Risiko
Rollback oder Legacy-Hinweis
```

# # # # # # # #
# Finale Regel #
# # # # # # # #

Kein Statuswechsel ohne Grund.
Kein bestaetigter Fix ohne Validierung.
Kein Supersede ohne Ersatzpfad oder Begruendung.
Kein Lifecycle-Endzustand ohne dokumentierten Abschluss.
