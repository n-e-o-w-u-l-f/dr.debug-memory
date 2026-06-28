# SELF_ERROR_DDERR-REPO-001

Status: CONFIRMED
Created: 2026-06-28
Detected_by: SELF
Severity: MEDIUM
Scope: REPO
Error_code: DDERR-REPO-001

## Kurzbeschreibung

Falscher Repository-Name im Owner-Gate-Tool-Aufruf.

## Fehlerklasse

Repository, Branch, Pfad, Path-Policy.

## Ausloeser

Beim Vorbereiten des canonical v0.2 Write-Plans wurde im Owner-Gate-Check versehentlich `n-e-o-w-u-lf/dr.debug-memory` statt `n-e-o-w-u-l-f/dr.debug-memory` verwendet.

## Erwartetes Verhalten

Vor jedem Owner/Admin- oder GitHub-Write-Tool-Aufruf muss der Repository-Name exakt `n-e-o-w-u-l-f/dr.debug-memory` sein und gegen den bestaetigten `githubStatus.repo.full_name` abgeglichen werden.

## Tatsaechliches Verhalten

Der Tool-Aufruf wurde mit einem Tippfehler im Repository-Namen gesendet. Es wurde kein Write ausgefuehrt.

## Sofortige Korrektur

Der Prozess wurde gestoppt, der Fehler wurde benannt, und der naechste Retry wurde nur mit dem exakten Repository-Namen ausgefuehrt.

## Praeventionsregel

Vor `filesDryRun` und `githubWriteFiles` muss `repo` exakt mit dem zuvor bestaetigten `githubStatus.repo.full_name` uebereinstimmen.

## Evidence Status

TOOL_OUTPUT and SELF_CONFIRMED_SUMMARY.

## Grenzen

Dieses Record speichert keine vollstaendige Tool-Response und keine Secrets.
