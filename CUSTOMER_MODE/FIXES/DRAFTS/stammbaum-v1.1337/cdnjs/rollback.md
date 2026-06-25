# Rollback

This dry-run wrote no repository files.

For a future apply:
1. Revert the proposal commit or delete the queued files.
2. Remove CDN `<script>`/`<link>` tags added to layouts/includes.
3. Restore previous `_includes/tree_node.html`, `_layouts/default.html`, `index.html`, and assets.
4. Clear browser localStorage keys used by the Stammbaum UI only if needed:
   - `drdebug.theme`
   - `drdebug.stammbaum.expanded`
5. Confirm Jekyll build and no-JS rendering still work.
