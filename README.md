<p align="center">
  <img src="./dr_debug_banner.png" alt="Dr Debug's Mean /MEMORY/ Machine" width="100%">
</p>

---

# # # # # # # # # # # # # # # #
# Dr. Debug's Werkstatt #
# # # # # # # # # # # # # # # #

Hast du auch ein defektes Gerät? Möchtest du ein Gerät reparieren lassen? Oder einfach über Technik philosophieren, planen, debuggen und neue Ideen sortieren?

Dann komm in:

<p align="center">
  <a href="https://chatgpt.com/g/g-6a277f8eea4081919dc68e814902b055-dr-debug"><strong>Dr. Debug's Werkstatt</strong></a>
</p>

Dort geht es um Reparatur, Diagnose, technische Planung, Fehlersuche, Geräteanalyse, kreative Werkstattideen und den Aufbau einer langfristig nützlichen technischen Memory-Basis.

---

# # # # # # # # # # # # #
# Dr. Debug /MEMORY/ #
# # # # # # # # # # # # #

**Dr. Debug /MEMORY/** ist eine strukturierte, quellenbasierte Wissensdatenbank für technische Fehlerbilder, Geräte, Fehlermeldungen, Reparaturwege, Diagnosen, Workarounds und bestätigte Lösungen.

Dieses Repository ist nicht als gewöhnliche Dokumentationsseite gedacht. Es ist eine **agentenlesbare Memory-Basis** für Dr. Debug: ein wachsendes Nachschlagewerk, das ChatGPT-Agenten dabei helfen soll, technische Probleme schneller, sauberer und nachvollziehbarer einzugrenzen.

Menschen dürfen diese Datenbank lesen. Der praktische Nutzen für Menschen besteht vor allem darin, das Repository zu **forken**, die **Agenten-Anweisungen zu lesen**, passende Direktiven zu kopieren oder eigene Dr.-Debug-Memory-Strukturen daraus abzuleiten.

---

# # # # # # # # # # # # # # #
# Was dieses Repository ist #
# # # # # # # # # # # # # # #

Dieses Repository sammelt und ordnet technische Erinnerungen in einer dauerhaft wartbaren Struktur.

Ziel ist eine Datenbasis, die einem Agenten hilft, unter anderem folgende Fragen besser zu beantworten:

- Welche Fehlermeldung gehört zu welchem System, Programm, Paket, Gerät oder Dienst?
- Welche Ursachen sind bekannt, wahrscheinlich oder historisch dokumentiert?
- Welche Reparaturwege wurden gefunden, geprüft oder von Usern bestätigt?
- Welche Geräte, Betriebssysteme, Programme, Pakete, Logs und Handbücher gehören zusammen?
- Welche Quellen, Indizes und Querverweise müssen erhalten bleiben, damit Wissen nicht verloren geht?

Die Datenbank soll langfristig dabei helfen, aus einem einfachen Gespräch heraus auch komplexe Reparatur-, Diagnose- und Planungsfragen nachvollziehbar zu strukturieren.

---

# # # # # # # # # # # # # # # # # # #
# Was dieses Repository nicht ist #
# # # # # # # # # # # # # # # # # # #

Dieses Repository ist **keine offizielle Reparaturanleitung**, **kein Ersatz für Fachpersonal** und **keine Garantie**, dass ein Gerät gefahrlos repariert werden kann.

Die Inhalte können technische Hinweise, historische Fehlerbilder, Querverweise, Agenten-Direktiven und Erfahrungswerte enthalten. Vor jeder realen Reparatur müssen Risiken, Stromversorgung, Garantie, Datenschutz, Sicherheit und Herstellerhinweise geprüft werden.

Besonders bei Netzteilen, Akkus, Hochspannung, Fahrzeugen, medizinischen Geräten, sicherheitskritischen Systemen oder Geräten mit Brand-/Explosionsgefahr gilt: nicht blind ausführen, sondern zuerst prüfen, absichern und im Zweifel Fachpersonal einbeziehen.

---

# # # # # # # # # # # #
# Datenbank-Stand #
# # # # # # # # # # # #

Meine Datenbank beinhaltet aktuell:

| Bereich | Anzahl |
|---|---:|
| Error Codes | `$n` |
| Geräte | `$n` |
| Lösungen | `$n` |
| Davon von Usern bestätigt | `$n` |

> Die Werte sind Platzhalter für spätere automatische Zählung, zum Beispiel per Script, CI-Job oder Agentenlauf. Bestätigte Lösungen sollten nur gezählt werden, wenn sie im jeweiligen Memory-Eintrag nachvollziehbar als bestätigt markiert sind.

---

# # # # # # # # # # # # # #
# Für wen ist das gedacht? #
# # # # # # # # # # # # # #

## Für Menschen

Menschen können dieses Repository nutzen, um:

- die Struktur zu verstehen,
- Agenten-Anweisungen zu lesen oder zu kopieren,
- das Repository zu forken,
- eigene technische Memory-Datenbanken aufzubauen,
- Quellen, Korrekturen oder bessere Strukturvorschläge beizutragen.

Der Inhalt ist bewusst nicht wie ein normales Handbuch geschrieben. Viele Dateien sind für Agenten, Indexierung, Deduplizierung, Quellenpflege und strukturierte Wiederverwendung optimiert.

## Für ChatGPT-Agenten

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

# # # # # # # # # # # #
# Grundprinzipien #
# # # # # # # # # # # #

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

# # # # # # # # # # # # #
# Typische Inhalte #
# # # # # # # # # # # # #

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

# # # # # # # # # # # # # # # #
# Wie du mitmachen kannst #
# # # # # # # # # # # # # # # #

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

# # # # # # # # # #
# Lizenzhinweis #
# # # # # # # # # #

Falls eine [`LICENSE`](./LICENSE)-Datei vorhanden ist, gilt diese. Falls keine Lizenzdatei vorhanden ist, bedeutet die öffentliche Sichtbarkeit des Repositories nicht automatisch, dass Inhalte frei weiterverwendet werden dürfen.

Forks, Zitate, Quellenverweise und eigene Ableitungen sollten immer sauber und respektvoll mit den ursprünglichen Inhalten umgehen.

---

<p align="center">
  <strong>Dr Debug's Mean /MEMORY/ Machine</strong><br>
  Debuggen. Reparieren. Erinnern. Verbessern.
</p>
