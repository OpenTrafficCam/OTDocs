# Archive

Pages and templates that are no longer part of the published site.
This folder is outside `docs/` and `overrides/`, so MkDocs does not build it.

## Contents

- `docs/index.md` — former landing page (uses `overrides/index.html`)
- `docs/live.md` — OpenTrafficCam LIVE Hoyerswerda
- `docs/pricing.md` — pricing page (uses `overrides/pricing.html`)
- `docs/team.md` — team page
- `docs/blog/` — blog index, posts and authors
- `overrides/` — custom templates used only by the pages above (`index.html`, `pricing.html`, `use-cases.html`, `no-nav.html`, `home.html`)

## Restoring

1. Move the files back with `git mv` into `docs/` and `overrides/`.
   The current homepage is `docs/index.md`, so the old landing page needs a different name or the current one has to move.
2. Add the pages to `nav:` in `mkdocs.yml`.
3. For the blog, re-add the plugin to `plugins:` in `mkdocs.yml`:

   ```yaml
   - blog:
       archive: false
       post_url_format: "{slug}"
       pagination_per_page: 5
       pagination_if_single_page: true
   ```
