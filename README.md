# Dr. Debug /MEMORY/

**Dr. Debug /MEMORY/** ist eine strukturierte, quellenbasierte und validierungsbewusste Wissensdatenbank für technische Fehlerbilder, Geräte, Fehlermeldungen, Reparaturwege, Diagnosen, Workarounds, Quellen, Skripte und bestätigte Lösungen.

Dieses Repository ist eine **agentenlesbare Memory-Basis** für Dr. Debug. Canonical Paths, Evidence-Level, Dedupe-Regeln, Status-Lifecycle, Source Records, Redaction und Rollback sind wichtiger als dekorative Prosa.

## Sicherheitsgrenze

Dieses Repository ist **keine offizielle Reparaturanleitung**, **kein Ersatz für Fachpersonal** und **keine Garantie**, dass ein Gerät gefahrlos repariert werden kann.

Vor realen Reparaturen oder Systemänderungen müssen Stromversorgung, Akkus, Garantie, Datenschutz, Datenverlust, Herstellerhinweise, Backup und Rollback geprüft werden.

## Agenten-Einstiegspunkte

Agenten sollen vor Repository-Änderungen in dieser Reihenfolge lesen:

1. [`AGENTS.md`](./AGENTS.md)
2. [`UPDATE_PROCESS.md`](./UPDATE_PROCESS.md)
3. [`MEMORY/INDEX.md`](./MEMORY/INDEX.md)
4. taskrelevante Schema-, Quality-, Source-, Kategorie-, Proposal- oder Knowledge-Dateien

Für CustomGPT-Knowledge-Policy gilt die konsolidierte Struktur unter [`MEMORY/KNOWLEDGE_REPLACE/`](./MEMORY/KNOWLEDGE_REPLACE/):

| Active Knowledge file | Responsibility |
|---|---|
| [`00_WORKING_MODE.md`](./MEMORY/KNOWLEDGE_REPLACE/00_WORKING_MODE.md) | Operating modes, admin gate, public/customer behavior, owner/admin behavior, final response discipline |
| [`01_REPOSITORY_CHANGE_WORKFLOW.md`](./MEMORY/KNOWLEDGE_REPLACE/01_REPOSITORY_CHANGE_WORKFLOW.md) | Repository workflow, update process, branch/merge/commit planning, structure migration, artifacts/scripts/patches |
| [`02_RESEARCH_ARCHIVE_BINARY_SOURCES.md`](./MEMORY/KNOWLEDGE_REPLACE/02_RESEARCH_ARCHIVE_BINARY_SOURCES.md) | Research, source hierarchy, archive.org preservation, firmware, drivers, BIOS, installers, manuals |
| [`03_DEVICE_MANUFACTURER_INTAKE.md`](./MEMORY/KNOWLEDGE_REPLACE/03_DEVICE_MANUFACTURER_INTAKE.md) | Unknown devices, identifiers, manufacturer ingest, alias registry, existence classification |
| [`04_EVIDENCE_SCHEMA_DEDUP_MEMORY.md`](./MEMORY/KNOWLEDGE_REPLACE/04_EVIDENCE_SCHEMA_DEDUP_MEMORY.md) | Evidence, validation, conflicts, dedupe, canonical truth, memory schema, menu/category resolution, status lifecycle |
| [`05_RISK_REDACTION_PLATFORM.md`](./MEMORY/KNOWLEDGE_REPLACE/05_RISK_REDACTION_PLATFORM.md) | Redaction, privacy, platform gate, risk, backup, rollback, remote safety |
| [`06_KNOWLEDGE_TOOL_SYNC_AUDIT.md`](./MEMORY/KNOWLEDGE_REPLACE/06_KNOWLEDGE_TOOL_SYNC_AUDIT.md) | Knowledge loading, retrieval, context discipline, tool contracts, audit, release, drift sync |
| [`07_MASTER_KNOWLEDGE_BASE_PIPELINE.md`](./MEMORY/KNOWLEDGE_REPLACE/07_MASTER_KNOWLEDGE_BASE_PIPELINE.md) | Master taxonomy pipeline, generation-/bit-hotspot, README matrix sync, schema discipline, evidence lifecycle and non-destructive legacy migration overlay |

## Foundation layer

The current non-destructive foundation layer adds schema, quality rules, source registry, proposal templates, taxonomy scaffolds, non-canonical seed proposals and release validation files. These additions are scaffolding and proposals only; they do not promote canonical records.

Key files:

- [`MEMORY/SCHEMA.md`](./MEMORY/SCHEMA.md)
- [`MEMORY/QUALITY_RULES.md`](./MEMORY/QUALITY_RULES.md)
- [`MEMORY/SOURCES/SOURCE_REGISTRY.md`](./MEMORY/SOURCES/SOURCE_REGISTRY.md)
- [`MEMORY/TOOLS/README_MATRIX_RENDERER_SPEC.md`](./MEMORY/TOOLS/README_MATRIX_RENDERER_SPEC.md)
- [`MEMORY/RELEASES/v0.8.1-master-pipeline/RELEASE_NOTES.md`](./MEMORY/RELEASES/v0.8.1-master-pipeline/RELEASE_NOTES.md)

## Master-Pipeline

Die Master-Pipeline führt die bisherige Knowledge-Base-Pipeline mit der generationen- und bit-orientierten Taxonomie zusammen. Für Konsolen und Retro-Plattformen gilt: **historische Generation und Bit-/CPU-/Bus-/Grafik-/Speicher-Architektur sind der primäre Klassifizierungs-Hotspot; Hersteller werden darunter eingeordnet.**

Legacy-Direktiven dürfen nur dann migriert, entschärft oder ersetzt werden, wenn sie die neue Taxonomie, Dedupe, Redaction, Evidence/Status-Lifecycle, README-Sync, Rollback oder sichere Tool-Gates blockieren. Nicht überschreibbar bleiben System-/Developer-/OpenAI-Regeln, Recht/TOS/Tool-Limits, Credentials/Secrets/Privacy, Malware-/Exploit-Grenzen, Wahrheitspflicht, Owner/Admin-Gate, Redaction, Dedupe, Source/Evidence und Rollback/Validation.

<!-- DRDEBUG_DATABASE_STATUS_START -->
<p align="left">
  <strong>Meine Datenbank<br>beinhaltet aktuell</strong>
</p>

**Spalten-Legende:**
* **📁 Kategorie:** Der jeweilige Datentyp in der Wissensdatenbank.
* **📊 Anzahl:** Die Gesamtzahl der aktuell erfassten Einträge.
* **🕵️ Gesucht:** Einträge, die für Recherche oder Vervollständigung vorgemerkt sind.
* **💾 Vorh. (Vorhanden):** Bereits erfolgreich in die Datenbank integrierte Datensätze.
* **⚠️ Fehlt:** Bekannte Lücken oder benötigte Informationen, die noch importiert werden müssen.
* **🎈 Waise:** Einträge ohne aktive Verknüpfung oder übergeordnetes System.
* **👑 Kanon. (Kanonisch):** Bereinigte Standard-Einträge ohne Duplikate.
* **❔ Unverif. (Unverifiziert):** Automatisch importierte oder noch ungeprüfte Datenbestände.
* **💬 User-Evid. (User-Evidenz):** Durch Erfahrungsberichte untermauerte Daten.
* **🛡️ Bestätigt:** Durch Dr. Debug Review oder vertrauenswürdige Primärquellen verifizierte Einträge.

<details>
<summary><strong>📊 Vollständige Status-Matrix anzeigen</strong></summary>

<pre>
📂 KATEGORIE-BEZEICHNUNG                                                   📊    🕵️    💾    ⚠️    🎈    👑    ❔    💬    🛡️
📦 Dr. Debug Wissensdatenbank Gesamt                                       0    5    0    0    0    0    5    0    0
├── 🏢 Hardware-Hersteller und Erstausrüster                               0    0    0    0    0    0    0    0    0
├── 📱 Geräte und Hardware-Komponenten                                     0    5    0    0    0    0    5    0    0
│   ├── 🏴‍☠️ Unlizenzierte Hardware, Klone und Modifikationen                0    0    0    0    0    0    0    0    0
│   ├── 🕹️ Spielekonsolen-Plattformen nach Epochen & Bit-Hotspots          0    5    0    0    0    0    5    0    0
│   │   ├── 📟 Frühe Epoche: Diskrete Logik & Erste ICs (1. Generation)    0    0    0    0    0    0    0    0    0
│   │   ├── 📟 8-Bit Epoche: Modul-Revolution (2. & 3. Generation)         0    2    0    0    0    0    2    0    0
│   │   ├── 📟 16-Bit Epoche: 2D-Blütezeit (4. Generation)                 0    2    0    0    0    0    2    0    0
│   │   ├── 📟 32/64-Bit Epoche: Frühe 3D-Systeme (5. Generation)          0    1    0    0    0    0    1    0    0
│   │   └── 📟 Moderne Epoche: 128-Bit bis HD-Plattformen (Gen 6 bis 9)    0    0    0    0    0    0    0    0    0
│   ├── 💻 Retro-Heimcomputer nach Architektur & Epoche                    0    0    0    0    0    0    0    0    0
│   ├── 💻 PC- und Server-Komponenten                                      0    0    0    0    0    0    0    0    0
│   ├── 🌐 Netzwerk-Hardware, Router & NAS-Systeme                         0    0    0    0    0    0    0    0    0
│   ├── 📺 Unterhaltungselektronik & Gebäudeautomation                     0    0    0    0    0    0    0    0    0
│   └── 🎹 Musikproduktion, Studio- & MIDI-Peripherie                      0    0    0    0    0    0    0    0    0
├── 💿 Software, Betriebssysteme und Anwendungsdaten                       0    0    0    0    0    0    0    0    0
├── 🩺 Diagnose und Schadensbehebung                                       0    0    0    0    0    0    0    0    0
├── 📂 Automation und Projekt-Assets                                       0    0    0    0    0    0    0    0    0
└── 🔍 Interne Datenbank-Pipeline                                          0    0    0    0    0    0    0    0    0
</pre>
</details>

<p align="left"><small>Last updated: 2026-06-21</small></p>
<!-- DRDEBUG_DATABASE_STATUS_END -->

## Grundprinzipien

1. **Quellen vor Behauptungen:** Technische Aussagen brauchen nachvollziehbare Quellen oder einen klaren Evidenzstatus.
2. **Dedupe vor Datenmüll:** Gleiche Fehlerbilder, Geräte, IDs, Quellen und Checksummen werden vor Neuanlage gesucht.
3. **Canonical Truth an einer Stelle:** Index-, Alias- und Mirror-Dateien sind Navigation, nicht zweite Wahrheiten.
4. **Redaction vor Speicherung:** Keine Secrets, personenbezogenen Rohdaten oder vollständigen Rohlogs in Repository-Speicher.
5. **Backup und Rollback vor Risiko:** Riskante Änderungen brauchen Diff, Branch/Backup, Rollback und Validation.
6. **Validation vor Erfolgsmeldung:** Kein „fixed", "committed", "pushed", "canonical" oder "validated" ohne beweisenden Output.
7. **Generation/Bit vor Hersteller:** Retro- und Konsolentaxonomie folgt Epoche und Architektur; Hersteller sind Unterzweige.

---

Dr Debug's Mean /MEMORY/ Machine  
Debuggen. Reparieren. Erinnern. Verbessern.
