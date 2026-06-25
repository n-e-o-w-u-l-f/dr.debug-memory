# Validation Plan

1. Re-fetch CDNJS stats and library pages/API during apply.
2. Record exact library versions and SRI hashes for every CDN asset.
3. Run redaction check: no tokens, cookies, private logs, emails, serials, restricted binaries.
4. Run Jekyll build or GitHub Pages validation.
5. Validate no generated data shrink, especially `_data/stammbaum.json`.
6. Browser checks:
   - no-JS readable tree
   - keyboard toggle
   - aria-expanded updates
   - light/dark localStorage persistence
   - color swatches visible without color-only meaning
   - NFO first click fade-in, second click fade-out
   - PDF viewer lazy-load and worker path
   - code viewer escapes text before highlighting
   - reduced-motion disables nonessential animation
7. License review for every selected external library.
8. Security review for CDN pinning, SRI and CSP compatibility.
