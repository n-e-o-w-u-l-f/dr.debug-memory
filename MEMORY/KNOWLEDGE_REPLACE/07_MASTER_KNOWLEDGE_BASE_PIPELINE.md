# DRDEBUG_MASTER_KNOWLEDGE_BASE_PIPELINE.md

Version: 1.0.0  
Status: ACTIVE_DIRECTIVE_PENDING_BRANCH_REVIEW  
Date: 2026-06-21  
Scope: Dr.Debug-MEMORY taxonomy, README status matrix, schema, evidence lifecycle, owner/admin workflow

## 0. Zweck

Diese Arbeitsanweisung konsolidiert die einfache Knowledge-Base-Pipeline und die generationen-/bit-orientierte Taxonomie-Pipeline zu einer sicheren, auditierbaren und langfristig autonomen Dr.Debug-MEMORY-Struktur.

Sie erlaubt autonome Strukturpflege nur innerhalb der folgenden Gates:
- Owner/Admin-Gate
- Repository-Leseprotokoll
- Recherche-vor-Behauptung
- Dedupe-vor-Neuanlage
- Redaction-vor-Speicherung
- Evidence/Status-Lifecycle
- README-Matrix-Sync
- Backup/Rollback/Validation
- nicht überschreibbare Sicherheits-, Rechts-, Tool- und Privacy-Grenzen

## 1. Direktiven-Merge: Entscheidung

Prompt 1 ist stark in Prozessdisziplin: Scan-Pflicht, sinnvolle Ergänzung, Redigierung, Monospace-Symmetrie.

Prompt 2 ist stark in Taxonomiequalität: historische Generation, Bit-Architektur, Hersteller erst darunter, empirische Recherche, Evaluation und Mutation.

Der Master-Merge übernimmt beides, entfernt aber absolute Formulierungen wie „überschreibt alles“ oder „ohne Rückfragen direkt“, sofern sie Owner-Gate, Redaction, Quellenqualität, Rollback, Tool-Limits oder Rechtssicherheit verletzen würden.

## 2. Normative Grundregel

Dr.Debug-MEMORY wird als agentenlesbare, source-aware, validation-aware und deduplizierte Diagnose- und Reparaturdatenbank gepflegt.

Jede Änderung muss:
1. vorhandene Struktur scannen,
2. Duplikate suchen,
3. Quellen bewerten,
4. Evidence-Level bestimmen,
5. Kategorie-Hotspot wählen,
6. kanonischen Pfad bestimmen,
7. README-Matrix synchronisieren,
8. Links/Indizes validieren,
9. Rollback dokumentieren,
10. Ergebnis nicht überbehaupten.

## 3. Konsolen- und Retro-Hotspot

Für Spielekonsolen und Retro-Plattformen gilt:

1. Primärer Klassifizierungsanker ist die historische Generation.
2. Sekundärer Anker ist Bit-/CPU-/Bus-/Grafik-/Speicher-Architektur.
3. Hersteller sind Unterzweige, nicht Top-Level-Fließbandkategorien.
4. Klone, unlizenzierte Hardware, Flash-Cartridges und Modchips werden nicht als normale Herstellergeräte kanonisiert, sondern als eigene Modifikations-/Kompatibilitätszweige geführt.
5. Uneindeutige Systeme werden als Proposal oder Hybrid-Knoten geführt, bis die Quellenlage stabil ist.

## 4. 1000-Schritte-Prinzip als komprimierter Workflow

Die Pipeline arbeitet nicht chaotisch in 1000 Einzelbefehlen, sondern in 10 Phasen mit je 100 Qualitätsprüfungen:

### Phase 1: Scope und Gate
- Modus prüfen.
- Owner/Admin-Gate prüfen.
- Zielrepository/Zielpfade prüfen.
- Risk-Level bestimmen.
- Destruktivität bestimmen.
- Apply oder Proposal festlegen.

### Phase 2: Repository-Scan
- AGENTS.md lesen.
- UPDATE_PROCESS.md lesen.
- MEMORY/INDEX.md lesen.
- taskrelevante Schema-/Quality-/Source-Dateien lesen.
- betroffene Pfade erfassen.
- alte Direktiven als Legacy klassifizieren, nicht blind überschreiben.

### Phase 3: Struktur- und Dedupe-Scan
- exakten Namen suchen.
- normalisierte Namen suchen.
- Aliase suchen.
- Hersteller/Modell/System suchen.
- Error-Signaturen suchen.
- Quellen-URLs suchen.
- Checksummen suchen.
- Canonical IDs suchen.

### Phase 4: Empirische Recherche
- offizielle Hersteller-/Projektquellen priorisieren.
- Standards, Register, technische Datenbanken nutzen.
- Community nur als Discovery oder User-Evidenz werten.
- Hardwaredaten validieren: CPU, Bus, Speicher, Chipsatz, Medien, DRM/Lockout, Region, Revision.
- Quelle mit Source-Record dokumentieren.

### Phase 5: Taxonomische Evaluation
- Hotspot bestimmen: Epoche, Generation, Architektur, Plattform, Komponente, Fehlerbild.
- Flache Herstellerzweige vermeiden, wenn sie Architektur/Geschichte zerreißen.
- Hybridfälle markieren.
- Waisen erkennen.
- redundante Kategorien mergen oder als Alias/Tombstone erhalten.

### Phase 6: Mutation
Erlaubte Mutationen:
- Kategorie ergänzen.
- Kategorie umbenennen.
- Kategorie verschieben.
- Alias/Mirror anlegen.
- Proposal erzeugen.
- README-Matrix aktualisieren.
- Schema ergänzen.

Riskante Mutationen:
- Löschen.
- Massen-Reklassifizierung.
- Status-Promotion.
- Broad merge.
- Canonical overwrite.

Riskante Mutationen benötigen zusätzlich Destructive-Gate, Diff, Backup, Rollback und Validation.

### Phase 7: Datei- und Schemaerzeugung
Dateinamen:
```text
[kategorie]-[plattform]-[komponente-oder-fehler].md
```

Pfadlogik:
```text
/MEMORY/
├── HARDWARE/
│   ├── RETRO_CONSOLE/
│   │   ├── RETRO_GEN1_DISCRETE_IC/
│   │   ├── RETRO_GEN2_3_8BIT/
│   │   ├── RETRO_GEN4_16BIT/
│   │   ├── RETRO_GEN5_32_64BIT/
│   │   └── MODERN_GEN6_9_HD/
│   ├── RETRO_COMPUTER/
│   ├── PC_SERVER/
│   ├── NETWORK_NAS/
│   ├── CONSUMER_ELECTRONICS/
│   └── MUSIC_MIDI/
├── SOFTWARE/
│   ├── OS_ENVIRONMENTS/
│   ├── APPLICATIONS/
│   ├── GAMING_MEDIA/
│   └── RELEASES_PATCHES/
├── DIAGNOSE/
├── SOURCES/
├── PROPOSALS/
├── ALIASES/
└── INDEXES/
```

### Phase 8: README-Matrix-Sync
Jede relevante MEMORY-Änderung muss:
- README-Matrix prüfen,
- passenden Zweig aktualisieren,
- Statusspalten konsistent zählen,
- Orphans markieren,
- Datum aktualisieren,
- Pre-Block mit Display-Width-Ausrichtung neu rendern.

### Phase 9: Validierung
Pflichtprüfungen:
- Markdown-Linkcheck.
- alter Pfad/alte ID grep.
- Index/Menu-Auflösung.
- canonical_path-Auflösung.
- Alias/Mirror-Sync.
- README-Matrix-Spaltenflucht.
- Redaction-Check.
- Source/Evidence-Check.
- Status-Lifecycle-Check.
- Rollback-Test oder Rollback-Dokumentation.

### Phase 10: Audit, Changelog, Ergebnis
Auditfelder:
```yaml
action:
mode:
actor:
target:
reason:
files:
risk:
override_id_if_any:
validation:
rollback:
result:
```

Ergebnis darf nur als angewendet, committet, gepusht, validiert oder kanonisch bezeichnet werden, wenn Tool-Output oder Review dies beweist.

## 5. Override-Regel

Legacy-Direktiven dürfen ersetzt, entschärft oder migriert werden, wenn sie:
- die neue Taxonomie blockieren,
- zweite Wahrheiten erzeugen,
- Dedupe/Redaction/Validation verhindern,
- README-Sync umgehen,
- unsichere Direktwrites verlangen.

Nicht überschreibbar:
- System-/Developer-/OpenAI-Regeln,
- Recht/TOS/Tool-Limits,
- Credentials/Secrets/Privacy,
- Malware-/Exploit-Grenzen,
- Wahrheitspflicht,
- Owner/Admin-Gate,
- Redaction,
- Dedupe,
- Source/Evidence,
- Rollback/Validation.

## 6. Factual Record Template

```markdown
---
id: "DDB-GEN4-AMIGA-001"
family: "hardware"
category: "📱 Geräte und Hardware-Komponenten > 💻 Retro-Heimcomputer nach Architektur & Epoche > Commodore Amiga"
title: "Guru Meditation Error 00000004"
platform: "Commodore Amiga 500"
architecture: "Motorola 68000 / 16-Bit CISC"
status: "PROPOSAL_READY_FOR_REVIEW"
confidence: "HIGH"
source_status: "SOURCE_CONFIRMED"
validation_status: "SOURCE_CONFIRMED"
canonical_path: "MEMORY/DIAGNOSE/RETRO_GEN4_16BIT/diagnose-amiga500-guru-meditation-00000004.md"
aliases: []
created_at: "2026-06-21"
updated_at: "2026-06-21"
review_required: true
canonical: false
sources: []
---

# Titel

## 1. Symptom-Beschreibung
## 2. Technische Ursachen-Analyse
## 3. Sichere Diagnose
## 4. Lösungen / Workarounds
## 5. Validierung
## 6. Rollback / Risiko
## 7. Quellen
## 8. Verwandte Indizes & Querverweise
```

## 7. README Master Matrix

```html
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
📦 Dr. Debug Wissensdatenbank Gesamt                                       0    0    0    0    0    0    0    0    0
├── 🏢 Hardware-Hersteller und Erstausrüster                               0    0    0    0    0    0    0    0    0
├── 📱 Geräte und Hardware-Komponenten                                     0    0    0    0    0    0    0    0    0
│   ├── 🏴‍☠️ Unlizenzierte Hardware, Klone und Modifikationen                0    0    0    0    0    0    0    0    0
│   │   ├── 🎮 Konsolen-Klone nach System-Architektur                      0    0    0    0    0    0    0    0    0
│   │   │   ├── 🔌 8-Bit Famiclones (Pegasus, Dendy, Micro Genius)         0    0    0    0    0    0    0    0    0
│   │   │   └── ⌨️ 8-Bit Tastatur-Computer (Subor Family Basic)            0    0    0    0    0    0    0    0    0
│   │   ├── 🛡️ DRM-Hardware-Umgehung (Modchips & Glitcher-Platinen)        0    0    0    0    0    0    0    0    0
│   │   └── 🗄️ Massenspeicher-Copier & Flash-Cartridges (R4, EverDrive)    0    0    0    0    0    0    0    0    0
│   ├── 🕹️ Spielekonsolen-Plattformen nach Epochen & Bit-Hotspots          0    0    0    0    0    0    0    0    0
│   │   ├── 📟 Frühe Epoche: Diskrete Logik & Erste ICs (1. Generation)    0    0    0    0    0    0    0    0    0
│   │   ├── 📟 8-Bit Epoche: Modul-Revolution (2. & 3. Generation)         0    0    0    0    0    0    0    0    0
│   │   │   ├── 🎮 Atari-Systeme (Atari 2600, 7800, XEGS)                  0    0    0    0    0    0    0    0    0
│   │   │   ├── 🎮 Nintendo-Systeme (NES / Famicom)                        0    0    0    0    0    0    0    0    0
│   │   │   └── 🎮 Sega-Systeme (SG-1000, Master System)                   0    0    0    0    0    0    0    0    0
│   │   ├── 📟 16-Bit Epoche: 2D-Blütezeit (4. Generation)                 0    0    0    0    0    0    0    0    0
│   │   │   ├── 🎮 Nintendo-Systeme (SNES / Super Famicom)                 0    0    0    0    0    0    0    0    0
│   │   │   ├── 🎮 Sega-Systeme (Mega Drive / Genesis)                     0    0    0    0    0    0    0    0    0
│   │   │   └── 🎮 SNK Corporation (Neo Geo AES / MVS)                     0    0    0    0    0    0    0    0    0
│   │   ├── 📟 32/64-Bit Epoche: Frühe 3D-Systeme (5. Generation)          0    0    0    0    0    0    0    0    0
│   │   │   ├── 🎮 Sony Interactive (PlayStation / PSX)                    0    0    0    0    0    0    0    0    0
│   │   │   ├── #️⃣ Nintendo-Systeme (Nintendo 64)                          0    0    0    0    0    0    0    0    0
│   │   │   ├── 🎮 Sega-Systeme (Sega Saturn)                              0    0    0    0    0    0    0    0    0
│   │   │   └── 🎮 Atari-Systeme (Atari Jaguar)                            0    0    0    0    0    0    0    0    0
│   │   └── 📟 Moderne Epoche: 128-Bit bis HD-Plattformen (Gen 6 bis 9)    0    0    0    0    0    0    0    0    0
│   ├── 💻 Retro-Heimcomputer nach Architektur & Epoche                    0    0    0    0    0    0    0    0    0
│   │   ├── 💻 Commodore Amiga (Amiga 500, 600, 1200, 4000)                0    0    0    0    0    0    0    0    0
│   │   ├── 💻 Commodore 8-Bit Reihe (C64, C128, VC20)                     0    0    0    0    0    0    0    0    0
│   │   └── 👾 Atari ST, Sinclair ZX Spectrum und Schneider CPC            0    0    0    0    0    0    0    0    0
│   ├── 💻 PC- und Server-Komponenten                                      0    0    0    0    0    0    0    0    0
│   │   ├── 🧠 Hauptprozessoren (IA-32, AMD64, Motorola 68k, ARM)          0    0    0    0    0    0    0    0    0
│   │   ├── 🎛️ Grafikkarten & Videoschnittstellen (3dfx Voodoo / Glide)    0    0    0    0    0    0    0    0    0
│   │   └── 🗄️ Massenspeicher & Wechsellaufwerke (ZIP, optische Drives)    0    0    0    0    0    0    0    0    0
│   ├── 🌐 Netzwerk-Hardware, Router & NAS-Systeme                         0    0    0    0    0    0    0    0    0
│   ├── 📺 Unterhaltungselektronik & Gebäudeautomation                     0    0    0    0    0    0    0    0    0
│   └── 🎹 Musikproduktion, Studio- & MIDI-Peripherie                      0    0    0    0    0    0    0    0    0
├── 💿 Software, Betriebssysteme und Anwendungsdaten                       0    0    0    0    0    0    0    0    0
│   ├── 💻 Betriebssystem-Umgebungen (Workbench, MS-DOS, Windows 9x)       0    0    0    0    0    0    0    0    0
│   ├── 🛠️ Anwendungssoftware & Musikprogramme (Ableton Live)              0    0    0    0    0    0    0    0    0
│   ├── 🕹️ Unterhaltungsmedien & Spiele (Gaming)                           0    0    0    0    0    0    0    0    0
│   └── 🔄 Release-Management, Updates, Patches & Hotfixes                 0    0    0    0    0    0    0    0    0
├── 🩺 Diagnose und Schadensbehebung                                       0    0    0    0    0    0    0    0    0
├── 📂 Automation und Projekt-Assets                                       0    0    0    0    0    0    0    0    0
└── 🔍 Interne Datenbank-Pipeline                                          0    0    0    0    0    0    0    0    0
</pre>
</details>

<p align="left"><small>Last updated: 2026-06-21</small></p>
<!-- DRDEBUG_DATABASE_STATUS_END -->

```

## 8. Apply-Kommando-Vorschlag

Nur wenn der Owner wirklich schreiben will:

```text
DRDEBUG_OWNER_ADMIN=TRUE !dd memory migration apply README.md --reason "Manifest DRDEBUG_MASTER_KNOWLEDGE_BASE_PIPELINE v1.0.0 and generation/bit-hotspot README status matrix" --apply
```

Für destruktive Legacy-Überschreibungen zusätzlich:

```text
DRDEBUG_DESTRUCTIVE=TRUE DRDEBUG_OWNER_ADMIN=TRUE !dd memory migration apply <target> --reason "Replace conflicting legacy directive with audited master pipeline; rollback documented" --apply
```

## 9. Commit-Vorschlag

```text
policy(memory): add master taxonomy pipeline and generation-bit README matrix
```
