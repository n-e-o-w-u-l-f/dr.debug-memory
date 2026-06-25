# Dr.Debug-Web Stammbaum: CDNJS Usage Design

## Base

The current web repository is already a Jekyll/GitHub Pages style renderer and `index.html` includes a tree node from `site.data.stammbaum`. Keep that model.

## Progressive enhancement layers

### Layer 0: No JavaScript
- Render all top-level branch labels as semantic HTML.
- Use `<details>/<summary>` or server-rendered nested lists where possible.
- Asset links remain normal links.

### Layer 1: Vanilla JS
- Toggle `[+]` and `[-]` buttons.
- Store expanded state and theme in `localStorage`.
- Maintain `aria-expanded`, keyboard navigation and focus.
- Highlight active branch.
- Implement NFO fade-in/fade-out with escaped text.

### Layer 2: Lazy viewers
- Load PDF.js only when a PDF asset is opened.
- Load highlight.js only when code asset is opened.
- Keep NFO rendering internal, escaped and text-only.

### Layer 3: Optional effects
- Animate.css for selected fade/emphasis classes only if custom CSS is insufficient.
- PixiJS for decorative particle branches only after user enables effects and `prefers-reduced-motion` allows it.

## Rejected for base

- jQuery: not needed for modern DOM.
- Vue: not needed while Jekyll/Liquid and small JS are enough.
- jsTree: would force jQuery and reduce custom control.
- Treant.js: old diagram model, weak no-JS fallback.
- JavaFX: wrong runtime for static browser/Jekyll.
