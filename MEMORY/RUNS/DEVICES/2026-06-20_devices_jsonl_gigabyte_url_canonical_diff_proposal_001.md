# Canonical-Diff-Proposal 001 — GIGABYTE URL-Familien in devices.jsonl

run_id: DD-RUN-20260620-DEVICES-JSONL-GIGABYTE-URL-CANONICAL-DIFF-PROPOSAL-001
mode: OWNER_ADMIN_MODE
repo: n-e-o-w-u-l-f/dr.debug-memory
created_at: 2026-06-20
status: PROPOSAL_ONLY
risk: LOW
data_loss_risk: LOW
canonical_records_changed: 0
canonical_write_performed: false
schema_migration_performed: false
rich_sources_conversion_performed: false
index_update_performed: false
binary_actions: 0
rehosting_actions: 0

## Zweck

Dieses Proposal ist der explizite Canonical-Diff-Vorschlag für:

`MEMORY/HARDWARE/DEVICES/devices.jsonl`

Es betrifft ausschließlich die fünf sichtbaren GIGABYTE-Datensätze und dort ausschließlich URL-Familien in diesen Feldern:

- `official_product_url`
- `support_url`
- `manuals_url`
- `downloads_url`
- `source_urls`

Nicht Teil dieses Proposals:

- keine Schema-/Lifecycle-Migration;
- keine Umwandlung von `source_urls` in rich `sources`;
- keine Indexaktualisierung;
- keine Änderung von `model_numbers`, `status`, `confidence`, `source_status`, `validation_status`, `canonical_path` oder `review_required`;
- keine Änderung von technischen Feature-Claims;
- keine Treiber-/BIOS-/Firmware-/Manual-Downloads;
- kein Rehosting.

## Vorbedingung / Gate-Reihenfolge

Dieses Proposal folgt der festgelegten Reihenfolge:

1. GIGABYTE-URL-Normalisierung zuerst reviewen. **Erledigt durch Review-Decision 001.**
2. Danach erst `devices.jsonl` schema-konform migrieren. **Noch nicht ausführen.**
3. `source_urls` erst nach Quellenprüfung in rich `sources`-Objekte überführen. **Noch nicht ausführen.**
4. Indexdateien nur nach erfolgreicher Canonical-Validierung aktualisieren. **Noch nicht ausführen.**

## Aktueller Befund

Die aktuellen sichtbaren GIGABYTE-Einträge in `devices.jsonl` verwenden folgende alte URL-Familien:

- `Z890-AORUS-MASTER-rev-10`
- `Z890-AORUS-ELITE-WIFI7-rev-10`
- `X870E-AORUS-MASTER-rev-10`
- `X870-AORUS-ELITE-WIFI7-ICE-rev-10`
- `B850-AORUS-ELITE-WIFI7-rev-10`

Die Review-Decision 001 stuft die folgenden Ziel-URL-Familien als offizielle GIGABYTE-Ziele ein, aber nicht als stillen Canonical-Write. Dieses Proposal macht daraus einen prüfbaren, begrenzten Diff-Vorschlag.

## Explizite Diff-Kandidaten

### 1. GIGABYTE Z890 AORUS MASTER

Nur diese URL-Felder ersetzen:

```diff
- "official_product_url":"https://www.gigabyte.com/Motherboard/Z890-AORUS-MASTER-rev-10"
+ "official_product_url":"https://www.gigabyte.com/Motherboard/Z890-AORUS-MASTER"

- "support_url":"https://www.gigabyte.com/Motherboard/Z890-AORUS-MASTER-rev-10/support"
+ "support_url":"https://www.gigabyte.com/Motherboard/Z890-AORUS-MASTER/support"

- "manuals_url":"https://www.gigabyte.com/Motherboard/Z890-AORUS-MASTER-rev-10/support#support-manual"
+ "manuals_url":"https://www.gigabyte.com/Motherboard/Z890-AORUS-MASTER/support#support-manual"

- "downloads_url":"https://www.gigabyte.com/Motherboard/Z890-AORUS-MASTER-rev-10/support#support-dl"
+ "downloads_url":"https://www.gigabyte.com/Motherboard/Z890-AORUS-MASTER/support#support-dl"

- "source_urls":["https://www.gigabyte.com/Motherboard/Z890-AORUS-MASTER-rev-10","https://www.gigabyte.com/Motherboard/Z890-AORUS-MASTER-rev-10/support","https://www.gigabyte.com/Support"]
+ "source_urls":["https://www.gigabyte.com/Motherboard/Z890-AORUS-MASTER","https://www.gigabyte.com/Motherboard/Z890-AORUS-MASTER/support","https://www.gigabyte.com/Motherboard/Z890-AORUS-MASTER/sp","https://www.gigabyte.com/Support"]
```

Nicht ändern: `model_numbers:["Z890 AORUS MASTER","rev. 1.0"]` bleibt bis zur Schema-/Revision-Review unverändert.

### 2. GIGABYTE Z890 AORUS ELITE WIFI7

Nur diese URL-Felder ersetzen:

```diff
- "official_product_url":"https://www.gigabyte.com/Motherboard/Z890-AORUS-ELITE-WIFI7-rev-10"
+ "official_product_url":"https://www.gigabyte.com/Motherboard/Z890-AORUS-ELITE-WIFI7"

- "support_url":"https://www.gigabyte.com/Motherboard/Z890-AORUS-ELITE-WIFI7-rev-10/support"
+ "support_url":"https://www.gigabyte.com/Motherboard/Z890-AORUS-ELITE-WIFI7/support"

- "manuals_url":"https://www.gigabyte.com/Motherboard/Z890-AORUS-ELITE-WIFI7-rev-10/support#support-manual"
+ "manuals_url":"https://www.gigabyte.com/Motherboard/Z890-AORUS-ELITE-WIFI7/support#support-manual"

- "downloads_url":"https://www.gigabyte.com/Motherboard/Z890-AORUS-ELITE-WIFI7-rev-10/support#support-dl"
+ "downloads_url":"https://www.gigabyte.com/Motherboard/Z890-AORUS-ELITE-WIFI7/support#support-dl"

- "source_urls":["https://www.gigabyte.com/Motherboard/Z890-AORUS-ELITE-WIFI7-rev-10","https://www.gigabyte.com/Motherboard/Z890-AORUS-ELITE-WIFI7-rev-10/support","https://www.gigabyte.com/Support"]
+ "source_urls":["https://www.gigabyte.com/Motherboard/Z890-AORUS-ELITE-WIFI7","https://www.gigabyte.com/Motherboard/Z890-AORUS-ELITE-WIFI7/support","https://www.gigabyte.com/Motherboard/Z890-AORUS-ELITE-WIFI7/sp","https://www.gigabyte.com/Support"]
```

Nicht ändern: `model_numbers:["Z890 AORUS ELITE WIFI7","rev. 1.0"]` bleibt unverändert. Die PCB-Rev.-1.0/1.1-Wi-Fi-Unterscheidung wird erst in der späteren Schema-/Evidence-Migration als Review-Hinweis behandelt.

### 3. GIGABYTE X870E AORUS MASTER

Nur diese URL-Felder ersetzen:

```diff
- "official_product_url":"https://www.gigabyte.com/Motherboard/X870E-AORUS-MASTER-rev-10"
+ "official_product_url":"https://www.gigabyte.com/Motherboard/X870E-AORUS-MASTER"

- "support_url":"https://www.gigabyte.com/Motherboard/X870E-AORUS-MASTER-rev-10/support"
+ "support_url":"https://www.gigabyte.com/Motherboard/X870E-AORUS-MASTER/support"

- "manuals_url":"https://www.gigabyte.com/Motherboard/X870E-AORUS-MASTER-rev-10/support#support-manual"
+ "manuals_url":"https://www.gigabyte.com/Motherboard/X870E-AORUS-MASTER/support#support-manual"

- "downloads_url":"https://www.gigabyte.com/Motherboard/X870E-AORUS-MASTER-rev-10/support#support-dl"
+ "downloads_url":"https://www.gigabyte.com/Motherboard/X870E-AORUS-MASTER/support#support-dl"

- "source_urls":["https://www.gigabyte.com/Motherboard/X870E-AORUS-MASTER-rev-10","https://www.gigabyte.com/Motherboard/X870E-AORUS-MASTER-rev-10/support","https://www.gigabyte.com/Support"]
+ "source_urls":["https://www.gigabyte.com/Motherboard/X870E-AORUS-MASTER","https://www.gigabyte.com/Motherboard/X870E-AORUS-MASTER/support","https://www.gigabyte.com/Support"]
```

Nicht ändern: `model_numbers:["X870E AORUS MASTER","rev. 1.0"]` bleibt bis zur Revision-Review unverändert.

### 4. GIGABYTE X870 AORUS ELITE WIFI7 ICE

Nur diese URL-Felder ersetzen:

```diff
- "official_product_url":"https://www.gigabyte.com/Motherboard/X870-AORUS-ELITE-WIFI7-ICE-rev-10"
+ "official_product_url":"https://www.gigabyte.com/Motherboard/X870-AORUS-ELITE-WIFI7-ICE-rev-10-11"

- "support_url":"https://www.gigabyte.com/Motherboard/X870-AORUS-ELITE-WIFI7-ICE-rev-10/support"
+ "support_url":"https://www.gigabyte.com/Motherboard/X870-AORUS-ELITE-WIFI7-ICE-rev-10-11/support"

- "manuals_url":"https://www.gigabyte.com/Motherboard/X870-AORUS-ELITE-WIFI7-ICE-rev-10/support#support-manual"
+ "manuals_url":"https://www.gigabyte.com/Motherboard/X870-AORUS-ELITE-WIFI7-ICE-rev-10-11/support#support-manual"

- "downloads_url":"https://www.gigabyte.com/Motherboard/X870-AORUS-ELITE-WIFI7-ICE-rev-10/support#support-dl"
+ "downloads_url":"https://www.gigabyte.com/Motherboard/X870-AORUS-ELITE-WIFI7-ICE-rev-10-11/support#support-dl"

- "source_urls":["https://www.gigabyte.com/Motherboard/X870-AORUS-ELITE-WIFI7-ICE-rev-10","https://www.gigabyte.com/Motherboard/X870-AORUS-ELITE-WIFI7-ICE-rev-10/support","https://www.gigabyte.com/Support"]
+ "source_urls":["https://www.gigabyte.com/Motherboard/X870-AORUS-ELITE-WIFI7-ICE-rev-10-11","https://www.gigabyte.com/Motherboard/X870-AORUS-ELITE-WIFI7-ICE-rev-10-11/support","https://www.gigabyte.com/Support"]
```

Nicht ändern: `model_numbers:["X870 AORUS ELITE WIFI7 ICE","rev. 1.0"]` bleibt in diesem URL-only-Diff unverändert. Die spätere Schema-Migration muss `review_required:true` setzen oder die Revision ausdrücklich prüfen. Separate Rev. 1.2 darf nicht zusammengeführt werden.

### 5. GIGABYTE B850 AORUS ELITE WIFI7

Nur diese URL-Felder ersetzen:

```diff
- "official_product_url":"https://www.gigabyte.com/Motherboard/B850-AORUS-ELITE-WIFI7-rev-10"
+ "official_product_url":"https://www.gigabyte.com/Motherboard/B850-AORUS-ELITE-WIFI7-rev-1x"

- "support_url":"https://www.gigabyte.com/Motherboard/B850-AORUS-ELITE-WIFI7-rev-10/support"
+ "support_url":"https://www.gigabyte.com/Motherboard/B850-AORUS-ELITE-WIFI7-rev-1x/support"

- "manuals_url":"https://www.gigabyte.com/Motherboard/B850-AORUS-ELITE-WIFI7-rev-10/support#support-manual"
+ "manuals_url":"https://www.gigabyte.com/Motherboard/B850-AORUS-ELITE-WIFI7-rev-1x/support#support-manual"

- "downloads_url":"https://www.gigabyte.com/Motherboard/B850-AORUS-ELITE-WIFI7-rev-10/support#support-dl"
+ "downloads_url":"https://www.gigabyte.com/Motherboard/B850-AORUS-ELITE-WIFI7-rev-1x/support#support-dl"

- "source_urls":["https://www.gigabyte.com/Motherboard/B850-AORUS-ELITE-WIFI7-rev-10","https://www.gigabyte.com/Motherboard/B850-AORUS-ELITE-WIFI7-rev-10/support","https://www.gigabyte.com/Support"]
+ "source_urls":["https://www.gigabyte.com/Motherboard/B850-AORUS-ELITE-WIFI7-rev-1x","https://www.gigabyte.com/Motherboard/B850-AORUS-ELITE-WIFI7-rev-1x/support","https://www.gigabyte.com/Motherboard/B850-AORUS-ELITE-WIFI7-rev-1x/sp","https://www.gigabyte.com/Support"]
```

Nicht ändern: `model_numbers:["B850 AORUS ELITE WIFI7","rev. 1.0"]` bleibt in diesem URL-only-Diff unverändert. Die spätere Schema-Migration muss `review_required:true` setzen oder `rev. 1.0` gegen `Rev. 1.x` ausdrücklich als eigene factual mutation reviewen.

## Erlaubter Patch-Umfang

Ein späterer Apply darf nur diese 25 Feldänderungen enthalten:

- 5x `official_product_url`
- 5x `support_url`
- 5x `manuals_url`
- 5x `downloads_url`
- 5x `source_urls`

Jede zusätzliche Änderung gilt als Scope-Verstoß und muss in ein separates Proposal verschoben werden.

## Nicht erlaubte Begleitänderungen in demselben Diff

- keine `model_numbers`-Änderung;
- keine `evidence_note`-Änderung;
- keine `last_verified_utc`-Änderung, außer der spätere Apply führt eine dokumentierte Live-Quellenprüfung aus;
- keine `status`-Promotion;
- keine Rich-Source-Objekte;
- keine Index-/Menü-Dateien;
- keine Changelog-Ergänzung vor finaler Diff-Bestätigung;
- keine Download-/Hash-/Archive-Aktion.

## Vor-Apply-Validierung für den späteren Canonical-Diff

Vor einem echten `devices.jsonl`-Write muss ein lokaler oder trusted repo validation step laufen:

```sh
# 1. Exakte alten URL-Familien zählen.
grep -R "Z890-AORUS-MASTER-rev-10\|Z890-AORUS-ELITE-WIFI7-rev-10\|X870E-AORUS-MASTER-rev-10\|X870-AORUS-ELITE-WIFI7-ICE-rev-10\|B850-AORUS-ELITE-WIFI7-rev-10" MEMORY/HARDWARE/DEVICES MEMORY/RUNS || true

# 2. devices.jsonl vor Patch sichern.
cp MEMORY/HARDWARE/DEVICES/devices.jsonl MEMORY/HARDWARE/DEVICES/devices.jsonl.bak.gigabyte-url-proposal-001

# 3. Nach Patch JSON/JSONL-Struktur prüfen; falls Datei aktuell mehrzeilige JSON-Strings enthält, Validator entsprechend anpassen und nicht blind normalisieren.
python3 - <<'PY'
import json, pathlib
p = pathlib.Path('MEMORY/HARDWARE/DEVICES/devices.jsonl')
text = p.read_text(encoding='utf-8')
try:
    for i, line in enumerate(text.splitlines(), 1):
        if line.strip():
            json.loads(line)
except Exception as e:
    raise SystemExit(f'JSONL parse failed at line {i}: {e}')
print('JSONL parse ok')
PY

# 4. Nach Patch sicherstellen: genau fünf GIGABYTE device_normalized_name-Ziele wurden berührt.
grep -n '"manufacturer_normalized_name":"gigabyte"' MEMORY/HARDWARE/DEVICES/devices.jsonl
```

## Apply-Entscheidung

```yaml
canonical_diff_proposal_ready: true
apply_now: false
reason_not_applied: proposal-only gate; canonical JSONL write requires explicit apply/diff review step
next_allowed_action: apply exactly this URL-only diff to devices.jsonl, or defer URL mutation and mark all five GIGABYTE records review_required during schema migration
schema_migration_unblocked_after_this: only after URL-only diff is applied or formally deferred
rich_sources_conversion_unblocked: false
index_update_unblocked: false
```

## Rollback für späteren Canonical-Apply

Falls der spätere URL-only Canonical-Patch angewendet wird und zurückgerollt werden muss:

1. `MEMORY/HARDWARE/DEVICES/devices.jsonl.bak.gigabyte-url-proposal-001` zurückkopieren, wenn im selben Arbeitsbaum vorhanden.
2. Alternativ alle oben genannten neuen URL-Familien wieder auf die alten `-rev-10`-Familien zurücksetzen.
3. JSONL-Validierung erneut ausführen.
4. Indexdateien nicht anfassen, weil dieses Proposal keine Indexänderung vorsieht.

## Rollback dieses Proposals

Falls dieses Proposal nicht bleiben soll, nur diese Datei löschen:

`MEMORY/RUNS/DEVICES/2026-06-20_devices_jsonl_gigabyte_url_canonical_diff_proposal_001.md`

Keine Canonical-Datei wurde durch dieses Proposal verändert.
