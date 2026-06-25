# Stammbaum/v1.1337 CDNJS Library Research Proposal

Status: PROPOSAL_ONLY  
Mode: Dry-Run / Proposal  
Retrieved at: 2026-06-25  
Canonical: false  
Validation status: NOT_TESTED  
Evidence level: E2/E3 source-reviewed proposal

## Auftrag

CDNJS und die für Dr.Debug-Web Stammbaum relevanten JavaScript/CSS-Bibliotheken wurden recherchiert und als Wissens-Entwurf strukturiert. Ohne `--apply` wurde nichts in ein GitHub-Repository geschrieben.

## Ergebnis

Empfohlene Architektur für v1.1337:

1. Jekyll bleibt die statische Basis.
2. Der Stammbaum bleibt semantisches HTML/Liquid aus `_data/stammbaum.yml` oder `_data/stammbaum.json`.
3. Vanilla JavaScript übernimmt expand/collapse, Theme-Schalter, aktive Branch-Hervorhebung und Asset-Panel.
4. PDF.js und highlight.js werden nur lazy-loaded, wenn ein PDF bzw. Code geöffnet wird.
5. Bootstrap CSS kann für Layout/Buttons weitergenutzt werden; Bootstrap JS nur bei echtem Komponentenbedarf.
6. Animate.css und PixiJS bleiben optional. PixiJS darf nicht primärer Renderer sein.
7. jQuery, Vue, jsTree, Treant werden für die Basis abgelehnt.
8. D3/Cytoscape bleiben optionale spätere Visualisierungsmodi, nicht der Basis-Stammbaum.
9. nfoview/nfoview-www wird nicht als CDNJS-Abhängigkeit übernommen; NFO-Anzeige wird intern minimal und sicher implementiert.

## Vollscan-Pfad für CDNJS

CDNJS meldete beim Abruf 6169 Libraries. Ein vollständiger Review aller Libraries soll nicht als Rohdump ins Wissen geschrieben werden. Stattdessen:

- `scripts/cdnjs_full_scan.py` oder CI-Job ruft `https://api.cdnjs.com/libraries?fields=name,description,version,license,homepage,repository,keywords,sri` ab.
- Ergebnis wird normalisiert und dedupliziert.
- Nur relevante, geprüfte Source Records werden in `SOURCE_RECORDS/_QUEUE` oder `CUSTOMER_MODE/FIXES/DRAFTS` gespeichert.
- Keine Rohdaten-Übernahme und keine Canonical-Promotion ohne Review.

## Vorgeschlagene Zielpfade bei späterem Apply

- `CUSTOMER_MODE/FIXES/DRAFTS/stammbaum-v1.1337/cdnjs_library_matrix.yml`
- `CUSTOMER_MODE/FIXES/DRAFTS/stammbaum-v1.1337/cdnjs_source_records.yml`
- `CUSTOMER_MODE/FIXES/DRAFTS/stammbaum-v1.1337/webviewer_cdnjs_usage.md`
- optional in `dr.debug-web`: `SOURCE_RECORDS/_QUEUE/cdnjs-stammbaum-v1.1337.yml`
