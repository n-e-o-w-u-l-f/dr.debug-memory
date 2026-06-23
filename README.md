<p align="center">
  <img src="./dr_debug_banner.png" alt="Dr Debug's Mean /MEMORY/ Machine" width="100%">
</p>
<h1 align="center">
    # # # # # # # # # # # # # # # # # # # # #</br>
    # # 🛠️ &nbsp; Dr. Debug's Werkstatt &nbsp; 🛠️ # #</br>
    # # # # # # # # # # # # # # # # # # # # #
</h1>

<div align="left">
  <p>Hast du auch ein defektes Gerät?</p>
  <p>Reparieren war dir immer zu schwer?</p>
  <p>Dann komm in:</p>
  <p>
    <a href="https://chatgpt.com/g/g-6a277f8eea4081919dc68e814902b055-dr-debug"><strong>DrDebug Hardware Praxis</strong></a>
  </p>
  <p>Sprechzeiten nach dem klick des links.</p>
</div>

---

<h3 align="left">
  # # # # # # # # # # # # # # # # <br>
  # # 📊 &nbsp; Wissenstand &nbsp; 📊 # # <br>
  # # # # # # # # # # # # # # # #
</h3>

<!-- DRDEBUG_DATABASE_STATUS_START -->
<!-- Managed README database-status block: replace only the content between DRDEBUG_DATABASE_STATUS markers. -->
| Area | Status | Count / Result | Last checked | Notes |
|---|---|---:|---|---|
| BATCH memory artifacts | PRESENT_INDEXED_REVIEW_REQUIRED | 162 files | 2026-06-23 | Current BATCH file count across MEMORY. Indexed in MEMORY/INDEX; later schema/status review required. No safe delete candidates identified. |
| BATCH duplicate filename check | PASS | 0 duplicates | 2026-06-23 | Filename-level duplicate check returned no duplicate names. |
| BATCH audit report | STATIC_CHECK | 1 | 2026-06-23 | `MEMORY/REPORTS/AUDIT/AR-20260623-batch-memory-index-sync.md` |
| BATCH proposal lineage | REVIEW_LINEAGE | 59 files | 2026-06-23 | `MEMORY/PROPOSALS/**`; retain as proposal/review lineage unless canonical replacement is proven. |
| BATCH reports | REVIEW_LINEAGE | 20 files | 2026-06-23 | `MEMORY/REPORTS/**`; includes audit/report evidence. |
| BATCH status records | REVIEW_LINEAGE | 15 files | 2026-06-23 | `MEMORY/STATUS/**`; retain as status history. |
| BATCH canonical-ish category files | INDEX_COVERAGE_REQUIRED | 68 files | 2026-06-23 | Outside PROPOSALS/REPORTS/STATUS; requires MEMORY/INDEX coverage and later schema/status review. |
| Four 25-item batch plan | REPORT_ONLY | 1 | 2026-06-21 | `MEMORY/PROPOSALS/BATCHES/MP-20260619-next-four-25-step-batches.md` |
| Validation gate report | REPORT_ONLY | 1 | 2026-06-21 | `MEMORY/REPORTS/VALIDATION/VR-20260619-next-100-roadmap-gate-report.md` |
| Next actions report | REPORT_ONLY | 1 | 2026-06-21 | `MEMORY/REPORTS/NEXT_ACTIONS/NA-20260619-next-3-directions.md` |
| Next-100 roadmap report | REPORT_ONLY | 1 | 2026-06-21 | `MEMORY/ROADMAPS/RM-20260619-next-100-safe-steps.md` |
| Canonical promotions from this package | BLOCKED | 0 | 2026-06-21 | No item is marked `PROMOTION_READY` by this package. |
| Local clone grep / CI-like static checks | REQUIRED_BEFORE_PROMOTION | 0 | 2026-06-21 | Must be run locally before any later promotion. |
| Binaries / downloads / rehosting | NOT_INCLUDED | 0 | 2026-06-21 | No binary download, raw crawl dump, manual rehosting or public rehosting is included. |
| README update mode | MARKER_BLOCK_ONLY | 1 | 2026-06-21 | Only this marked block may be replaced; the rest of `README.md` must be preserved. |
<!-- DRDEBUG_DATABASE_STATUS_END -->

---

<h3 align="left">
  # # # # # # # # # # # # # # # # # # # # <br>
  # # 🧠 &nbsp; Dr. Debug /MEMORY/ &nbsp; 🧠 # # <br>
  # # # # # # # # # # # # # # # # # # # #
</h3>

**Dr. Debug /MEMORY/** ist eine strukturierte, quellenbasierte Wissensdatenbank für technische Fehlerbilder, Geräte, Fehlermeldungen, Reparaturwege, Diagnosen, Workarounds und bestätigte Lösungen.

Dieses Repository ist nicht als gewöhnliche Dokumentationsseite gedacht. Es ist eine **agentenlesbare Memory-Basis** für Dr. Debug: ein wachsendes Nachschlagewerk.

---

<h3 align="left">
  # # # # # # # # # # # # # # # # # # # # # # <br>
  # # 🎯 &nbsp; Was dieses Repository ist &nbsp; 🎯 # # <br>
  # # # # # # # # # # # # # # # # # # # # # #
</h3>

Dieses Repository sammelt und ordnet technische Erinnerungen in einer dauerhaft wartbaren Struktur.

Ziel ist eine Datenbasis, die einem Agenten hilft, unter anderem folgende Fragen besser zu beantworten:

- Welche Fehlermeldung gehört zu welchem System, Programm, Paket, Gerät oder Dienst?
- Welche Ursachen sind bekannt, wahrscheinlich oder historisch dokumentiert?
- Welche Reparaturwege wurden gefunden, geprüft oder von Usern bestätigt?
- Welche Geräte, Betriebssysteme, Programme, Pakete, Logs und Handbücher gehören zusammen?
- Welche Quellen, Indizes und Querverweise müssen erhalten bleiben, damit Wissen nicht verloren geht?

Die Datenbank soll langfristig dabei helfen, aus einem einfachen Gespräch heraus auch komplexe Reparatur-, Diagnose- und Planungsfragen nachvollziehbar zu strukturieren.

---

<h3 align="left">
  # # # # # # # # # # # # # # # # # # # # # # # # # # # <br>
  # # ⚠️ &nbsp; Was dieses Repository nicht ist &nbsp; ⚠️ # # <br>
  # # # # # # # # # # # # # # # # # # # # # # # # # # #
</h3>

Dieses Repository ist **keine offizielle Reparaturanleitung**, **kein Ersatz für Fachpersonal** und **keine Garantie**, dass ein Gerät gefahrlos repariert werden kann.

Die Inhalte können technische Hinweise, historische Fehlerbilder, Querverweise, Agenten-Direktiven und Erfahrungswerte enthalten. Vor jeder realen Reparatur müssen Risiken, Stromversorgung, Garantie, Datenschutz, Sicherheit und Herstellerhinweise geprüft werden.

Besonders bei Netzteilen, Akkus, Hochspannung, Fahrzeugen, medizinischen Geräten, sicherheitskritischen Systemen oder Geräten mit Brand-/Explosionsgefahr gilt: nicht blind ausführen, sondern zuerst prüfen, absichern und im Zweifel Fachpersonal einbeziehen.

---

<h3 align="left">
  # # # # # # # # # # # # # # # # # # # # # # <br>
  # # 👥 &nbsp; Für wen ist das gedacht? &nbsp; 👥 # # <br>
  # # # # # # # # # # # # # # # # # # # # # #
</h3>

#### Für ChatGPT-Agenten

Agenten sollen dieses Repository lesen, bevor sie neue technische Memory-Dateien anlegen, bestehende Einträge ändern oder Rechercheergebnisse dauerhaft integrieren.

Wichtige Bereiche können je nach Repository-Stand unter anderem sein:

- [`AGENTS.md`](./AGENTS.md)
- [`/MEMORY/AGENTS/`](./MEMORY/AGENTS/)
- [`/MEMORY/INDEX.md`](./MEMORY/INDEX.md)
- [`/MEMORY/SCHEMA.md`](./MEMORY/SCHEMA.md)
- [`/MEMORY/QUALITY_RULES.md`](./MEMORY/QUALITY_RULES.md)
- [`/MEMORY/SOURCE_REGISTRY.md`](./MEMORY/SOURCE_REGISTRY.md)
- [`/CHANGES.md`](./CHANGES.md)
- [`/UPDATE_PROCESS.md`](./UPDATE_PROCESS.md)

Agenten sollen keine Vollständigkeit behaupten, wenn keine vollständige Primärquelle existiert. Neue Daten müssen nachvollziehbar, dedupliziert, quellenbezogen und agentenlesbar eingepflegt werden.

---

<h3 align="left">
  # # # # # # # # # # # # # # # # # # <br>
  # # 📜 &nbsp; Grundprinzipien &nbsp; 📜 # # <br>
  # # # # # # # # # # # # # # # # # #
</h3>

Dieses Repository folgt einigen einfachen Regeln:

1. **Quellen vor Behauptungen**  
   Technische Aussagen sollen möglichst belegbar sein.

2. **Bestätigt ist nicht gleich gefunden**  
   Eine Lösung gilt erst dann als bestätigt, wenn sie nachvollziehbar getestet oder von Usern als erfolgreich markiert wurde.

3. **Deduplizierung vor Datenmüll**  
   Gleiche Fehlerbilder sollen zusammengeführt, verlinkt oder sauber voneinander abgegrenzt werden.

4. **Agentenlesbarkeit vor Schönschrift**  
   Struktur, Pfade, IDs, Statusfelder, Quellen und Querverweise sind wichtiger als dekorative Prosa.

5. **Sicherheit vor Aktionismus**  
   Riskante Reparatur- oder Systemeingriffe müssen als solche erkennbar sein und dürfen nicht blind empfohlen werden.

---

<h3 align="left">
  # # # # # # # # # # # # # # # # # # <br>
  # # 📂 &nbsp; Typische Inhalte &nbsp; 📂 # # <br>
  # # # # # # # # # # # # # # # # # #
</h3>

Die Memory-Datenbank kann unter anderem folgende Arten von Einträgen enthalten:

- Betriebssysteme und Distributionen
- Linux-, macOS-, Windows-, DOS- und FreeDOS-Programme
- Paketmanager, Pakete und Paketversionen
- Android-Apps und Package Names
- Geräte, Mainboards, Receiver, Smartphones, Tablets, Konsolen und Embedded-Systeme
- Fehlermeldungen, Fehlercodes und Log-Muster
- journalctl-, dmesg-, systemd-, kernel-, ADB-, SSH-, Git-, Pacman- und Netzwerkfehler
- Service Manuals, Datenblätter, Handbücher, Recovery-Guides und Installationshinweise
- bekannte Ursachen, Diagnosepfade, Workarounds und bestätigte Fixes
- Quellenregister, Indexdateien, Agenten-Direktiven und Update-Prozesse

---

<h3 align="left">
  # # # # # # # # # # # # # # # # # # # # # # # <br>
  # # &nbsp;🤝 Wie du mitmachen kannst: 🤝&nbsp; # # <br>
  # # # # # # # # # # # # # # # # # # # # # # #
</h3>

Du kannst dieses Repository forken und für deine eigene technische Wissensbasis anpassen.

Wenn du Inhalte beitragen möchtest, achte bitte besonders auf:

- klare Pfade,
- saubere Dateinamen,
- nachvollziehbare Quellen,
- getrennte bestätigte und unbestätigte Lösungen,
- keine unnötigen Duplikate,
- keine privaten Zugangsdaten,
- keine personenbezogenen Logs,
- keine gefährlichen Schritte ohne Warnhinweis.

Gute Beiträge verbessern nicht nur einzelne Dateien, sondern auch die Struktur, Indizes, Querverweise und Update-Regeln der gesamten `/MEMORY/`.

---

<h3 align="left">
  # # # # # # # # # # # # # # # # <br>
  # # 🪪 &nbsp; Lizenzhinweis &nbsp; 🪪 # # <br>
  # # # # # # # # # # # # # # # #
</h3>

Falls eine [`LICENSE`](./LICENSE)-Datei vorhanden ist, gilt diese. Falls keine Lizenzdatei vorhanden ist, bedeutet die öffentliche Sichtbarkeit des Repositories nicht automatisch, dass Inhalte frei weiterverwendet werden dürfen.

Forks, Zitate, Quellenverweise und eigene Ableitungen sollten immer sauber und respektvoll mit den ursprünglichen Inhalten umgehen.


<p align="left">
  <strong>Dr Debug's Mean /MEMORY/ Machine</strong><br>
  Debuggen. Reparieren. Erinnern. Verbessern.
</p>
