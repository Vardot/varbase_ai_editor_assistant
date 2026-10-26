# Varbase functional testing suite

Playwright and Cucumber through [`@vardot/varbase-e2e`](https://www.npmjs.com/package/@vardot/varbase-e2e), on a
Varbase 11 site with this recipe applied.

| Feature | Covers |
| --- | --- |
| `01-01-ai-editor-assistant-toolbar.feature` | Each editorial role gets one AI Assistant button with its five writing tools |
| `01-02-ai-editor-assistant-generate.feature` | An editor asks the AI Assistant for a draft, puts it into a blog post and saves it |
| `01-03-ai-editor-assistant-accessibility.feature` | The blog form with the AI Assistant keeps the label, link name and ARIA rules |

The editor elements are named selectors in `tests/selectors/ai-editor-assistant-selectors.json`.

## Run it

```bash
npm install
LAUNCH_URL=https://your-site.ddev.site npm test
```

The site needs the webmaster (`webmaster`) and one user per role, named after the role (`content_editor`,
`content_admin`, `seo_admin`, `site_admin`), all with the password in `LOGIN_PASS` (default `dD.123123ddd`).
`.gitlab-ci.yml` shows the whole setup.

## AI provider

CI applies Drupal CMS AI before the recipe. It sets up an amazee.ai trial as the default provider, so no key
is needed and the AI Assistant writes a real draft.

The blog form is held to pinned accessibility rules rather than the full serious gate: the admin theme's help
toggles, CKEditor's toolbar menu items and the autosave dialog fail it, which comes from the theme and the
editor, not this recipe.
