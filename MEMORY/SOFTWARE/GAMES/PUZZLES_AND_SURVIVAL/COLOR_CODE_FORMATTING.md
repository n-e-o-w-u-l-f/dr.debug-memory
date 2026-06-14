# # # # # # # # # # # # # # # # # # # # # # # # #
# PUZZLES & SURVIVAL COLOR CODE FORMATTING #
# # # # # # # # # # # # # # # # # # # # # # # # #

Version: 0.0.1
Zielpfad: /MEMORY/SOFTWARE/GAMES/PUZZLES_AND_SURVIVAL/COLOR_CODE_FORMATTING.md
Repository: https://github.com/n-e-o-w-u-l-f/dr.debug-memory
Status: RESEARCH_REQUIRED
Erstellt: 2026-06-14
Geltungsbereich: Puzzles & Survival / Puzzle and Survival Farbcode-, RGB-, RGBA-, Chat- und Textformatierung.

# # # # # # # # # # # # # # # # #
# Kurzfassung #
# # # # # # # # # # # # # # # # #

Dieses Dokument sammelt Puzzles-&-Survival-Farbcodewissen fuer DrDebug-GPT. Der aktuelle Stand ist bewusst vorsichtig: Es liegen Nutzerbeispiele vor, aber keine belastbaren oeffentlichen Quellen oder Ingame-Verifikation in diesem Dokument.

Alle Regeln bleiben RESEARCH_REQUIRED oder OBSERVED, bis sie durch Tests, Screenshots, offizielle Quellen oder reproduzierbare Nutzerbestaetigung verifiziert wurden.

# # # # # # # # # # # # # # # # #
# Status-Legende #
# # # # # # # # # # # # # # # # #

- VERIFIED: Durch Quelle oder reproduzierbaren Ingame-Test bestaetigt.
- OBSERVED: In Nutzerbeispielen oder Chatverlauf beobachtet.
- PARTIAL: Teilweise bestaetigt, aber Kontext/Limit/Sonderfaelle unklar.
- CONFLICTING: Quellen oder Tests widersprechen sich.
- INVALID: Vom Spiel oder Nutzerfeedback als ungueltig gemeldet.
- RESEARCH_REQUIRED: Noch nicht belastbar geprueft.

# # # # # # # # # # # # # # # # #
# Beobachtete Syntaxkandidaten #
# # # # # # # # # # # # # # # # #

| Muster | Status | Notiz |
|---|---:|---|
| `[#C9]` | OBSERVED | Moeglicher Wrapper/Praefix aus Nutzerbeispielen. Bedeutung ungeklaert. |
| `[ff40ffff]` | OBSERVED | Moeglicher Hex-/RGBA-Farbmarker. Reihenfolge und Alpha-Bedeutung ungeklaert. |
| `[ff80ffff]` | OBSERVED | Moeglicher Hex-/RGBA-Farbmarker. |
| `[c080ffff]` | OBSERVED | Moeglicher Hex-/RGBA-Farbmarker. |
| `[80ffffff]` | OBSERVED | Moeglicher Hex-/RGBA-Farbmarker. |
| `[ff40[#C9]ffff]` | OBSERVED/INVALID_RISK | Verschachteltes Muster aus Nutzerbeispielen; hohes Risiko fuer ungueltige Syntax. |

# # # # # # # # # # # # # # # # #
# Beobachtete Limitziele #
# # # # # # # # # # # # # # # # #

| Limit | Status | Kontext |
|---:|---:|---|
| 150 Zeichen | OBSERVED | Nutzer bat um Totenkopf-/ASCII-Art-Varianten unter 150 Zeichen. |
| 220 Zeichen | OBSERVED | Nutzer bat wiederholt um Puzzles-&-Survival-kompatible Varianten unter 220 Zeichen. |
| 230 Zeichen | OBSERVED | Nutzer bat um Varianten, bei denen 230 nicht ueberschritten wird. |
| 252 Zeichen | OBSERVED | Nutzer nannte 252 als moegliches Zeichenlimit. |

Wichtig: Noch unklar ist, ob das Spiel Farbtags zum Limit zaehlt oder intern ausblendet. Bis zur Verifikation muss jeder Generator beide Werte ausgeben: sichtbare Zeichen und Gesamtzeichen inklusive Tags.

# # # # # # # # # # # # # # # # #
# Generator-Leitlinie #
# # # # # # # # # # # # # # # # #

Ein sicherer Generator soll:

1. den Zielkontext abfragen oder aus Nutzerwunsch ableiten,
2. ein Limit setzen,
3. nur bekannte sichere Zeichen verwenden,
4. keine verschachtelten Tags verwenden, solange diese nicht verifiziert sind,
5. sichtbare Zeichen und Gesamtzeichen separat zaehlen,
6. bei Limitueberschreitung automatisch weniger Farben oder kuerzere Textsegmente verwenden,
7. am Ende eine Gueltigkeitsbewertung ausgeben.

# # # # # # # # # # # # # # # # #
# Beispiel-Schema fuer neue Eintraege #
# # # # # # # # # # # # # # # # #

```markdown
## Regel: <Name>

Status: RESEARCH_REQUIRED
Quelle: <Nutzerbeispiel / Screenshot / URL / Test>
Datum: YYYY-MM-DD
Spielkontext: <Chat / Allianz / Name / Profil / Beschreibung / unbekannt>

### Minimalbeispiel
`...`

### Gegenbeispiel
`...`

### Zeichenzaehlung
- sichtbar: N
- inklusive Tags: N

### Ergebnis
<funktioniert / ungueltige Zeichen / Limitfehler / unbekannt>

### Notiz
<kurze technische Einordnung>
```

# # # # # # # # # # # # # # # # #
# Offene Tests #
# # # # # # # # # # # # # # # # #

- Test 1: Funktioniert ein einzelner Marker wie `[ff40ffff]Text`?
- Test 2: Muss `[#C9]` vor jedem Farbcode stehen oder nur einmal am Anfang?
- Test 3: Sind 8-stellige Hexwerte RGBA, ARGB oder ein proprietaeres Format?
- Test 4: Zaehlen Tags gegen das Ingame-Zeichenlimit?
- Test 5: Welche Sonderzeichen sind erlaubt: ASCII, Blockzeichen, Unicode-Linien, Emojis?
- Test 6: Sind mehrzeilige Texte erlaubt oder wird nur eine Zeile akzeptiert?
- Test 7: Welche Kontexte haben unterschiedliche Limits?

# # # # # # # # # # # # # # # # #
# Verknuepfte Agenten-Anweisung #
# # # # # # # # # # # # # # # # #

Siehe:

`/MEMORY/AGENTS/PUZZLES_AND_SURVIVAL_COLOR_CODE_AGENT.md`
