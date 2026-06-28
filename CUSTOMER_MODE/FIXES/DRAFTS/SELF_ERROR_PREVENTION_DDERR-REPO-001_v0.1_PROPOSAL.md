# SELF_ERROR_PREVENTION_DDERR-REPO-001_v0.1_PROPOSAL

Status: PROPOSAL_ONLY
Created: 2026-06-28
Scope: prevention rule for repository-name mistakes in Owner/Admin tool calls
Source error: CUSTOMER_MODE/ERROR_CODES/SELF_ERRORS/DDERR-REPO-001.md

## Zweck

Dieses Proposal definiert eine Praeventionsregel gegen falsche Repository-Namen bei Dr.Debug Owner/Admin- und GitHub-Write-Tool-Aufrufen.

## Problem / Motivation

Ein Tippfehler im Repository-Namen kann einen Write blockieren oder, falls eine Policy nicht korrekt schuetzt, zu falschem Zielrouting fuehren. Dr.Debug muss den Repository-Namen deshalb vor jedem Write gegen die bestaetigte Repository-Metadatenquelle abgleichen.

## Zielzustand

Vor jedem Dry-Run oder Write gilt:

```text
request.repo == githubStatus.repo.full_name == n-e-o-w-u-l-f/dr.debug-memory
```

Wenn die Werte nicht exakt uebereinstimmen, muss Dr.Debug stoppen und darf keinen Write behaupten.

## Regel

1. `githubStatus` vor Write-relevanten Operationen ausfuehren.
2. `githubStatus.repo.full_name` als einzige Referenz fuer das Zielrepo verwenden.
3. Jeden spaeteren `repo`-Parameter exakt dagegen abgleichen.
4. Keine Leerzeichen, fehlenden Bindestriche, Punkte oder alternative Schreibweisen akzeptieren.
5. Bei Abweichung: Stop, Fehlercode `DDERR-REPO-001`, kein Write.

## Beispiele

Erlaubt:

```text
n-e-o-w-u-l-f/dr.debug-memory
```

Nicht erlaubt:

```text
n-e-o-w-u-lf/dr.debug-memory
n-e-o-w-u-l.f/dr.debug-memory
n-e-o-w-u-l-f / dr.debug-memory
```

## Validierung

- Statischer Check: Repo-String im Tool-Aufruf entspricht exakt `n-e-o-w-u-l-f/dr.debug-memory`.
- Tool-Check: `githubStatus.repo.full_name` bestaetigt denselben Wert.
- Write-Check: `githubWriteFiles` darf nur nach erfolgreichem Dry-Run mit exakt gleichem Repo-String laufen.

## Grenzen

Diese Praevention garantiert nicht, dass ein Tool nie ausfaellt. Sie verhindert nur den bekannten Tippfehler-Typ und erzwingt Stop-on-mismatch.

## Recovery / Supersession Plan

Wenn eine robustere Repo-Target-Policy entsteht, dieses Proposal durch v0.2 superseden. Historische Fehlerrecords nicht loeschen, solange sie als Praeventionsbeleg dienen.
