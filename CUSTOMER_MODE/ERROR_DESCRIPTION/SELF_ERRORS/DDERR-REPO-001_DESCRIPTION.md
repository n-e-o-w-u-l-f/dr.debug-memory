# DDERR-REPO-001_DESCRIPTION

Status: CONFIRMED
Created: 2026-06-28
Detected_by: SELF
Severity: MEDIUM
Scope: REPO

## Was ist passiert?

Ein Owner-Gate-Check wurde mit einem falsch geschriebenen Repository-Namen ausgefuehrt. Der erlaubte Repository-Name lautet:

```text
n-e-o-w-u-l-f/dr.debug-memory
```

Der fehlerhafte Name war:

```text
n-e-o-w-u-lf/dr.debug-memory
```

Der Fehler bestand im fehlenden Bindestrich vor `f` im Owner-Namen.

## Risiko

Ein falscher Repository-Name kann zu blockierten Writes, falschen Audit-Eintraegen oder im schlimmsten Fall zu einem Write-Versuch gegen ein falsches Ziel fuehren, falls eine Policy das nicht abfaengt.

## Erkennung

Der Tool-Aufruf wurde nicht als Erfolg gewertet. Dr.Debug stoppte vor weiterem Write und meldete den Fehler als `DDERR-REPO-001`.

## Korrektur

Der Retry wurde nur mit dem exakten Repository-Namen ausgefuehrt:

```text
n-e-o-w-u-l-f/dr.debug-memory
```

## Praevention

1. Vor jedem `ownerPing`, `githubStatus`, `filesDryRun` und `githubWriteFiles` den Repo-String visuell pruefen.
2. Nach `githubStatus` den Wert `repo.full_name` als Referenz verwenden.
3. Vor `githubWriteFiles` pruefen: `request.repo == githubStatus.repo.full_name`.
4. Bei Abweichung sofort stoppen und keinen Write ausfuehren.

## Speichergrenzen

Keine Secrets, Tokens, Cookies, private Keys, personenbezogene Rohdaten oder vollstaendigen Tool-Responses speichern.
