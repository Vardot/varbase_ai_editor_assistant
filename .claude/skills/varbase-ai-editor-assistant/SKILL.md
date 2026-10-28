---
name: varbase-ai-editor-assistant
description: "Apply, repair and verify Varbase AI Editor Assistant on a Varbase 11 site: the CKEditor 5 AI assistant button and its permissions (Varbase AI Editor Assistant). Install and apply commands, inputs, config, post-apply steps, browser checks, traps and versions, read from the recipe code. Use when adding, fixing or checking Varbase AI Editor Assistant."
---

# Varbase AI Editor Assistant

Read from `recipe.yml`, `composer.json`, README, CHANGELOG and `git log` at the latest tag, 28 October 2026. Re-check versions on drupal.org before relying on them. For the full Varbase AI apply order, see the Varbase AI recipes docs page.

## Recipes

| Recipe | Latest | Stability | Require |
|---|---|---|---|
| `varbase_ai_editor_assistant` | 2.0.1 | stable | `drupal/varbase_ai_editor_assistant:~2` |

Docs (the code wins where they differ):
- https://docs.varbase.vardot.com/developers/understanding-varbase/varbase-ai-recipes/varbase-ai-editor-assistant

## What it does

- Installs `editor`, `ai_ckeditor`. Adds the AI button to `editor.editor.<ckeditor_machine_name>` at toolbar slot `ckeditor_index`; grants the four Varbase roles.
- Inputs: `ckeditor_machine_name` (full_html), `ckeditor_index` (0).
- Composer: `drupal/core ~11.4.0`, `drupal_cms_ai ~2`. Applied by Varbase AI Base.

## Apply

All commands in DDEV, from the project root; recipes are applied from the docroot path `../recipes/<name>`. Take a snapshot first: `ddev snapshot --name before-varbase-ai-editor-assistant`. Add each recipe to `extra.drupal-recipe-unpack.ignore` in `composer.json` before requiring it (read the list first: `composer config --json` replaces it).

```bash
ddev composer require drupal/varbase_ai_editor_assistant:~2
ddev drush cr
ddev drush recipe ../recipes/varbase_ai_editor_assistant -y --input=varbase_ai_editor_assistant.ckeditor_machine_name=full_html
```

## After the apply

- Repeat with another `ckeditor_machine_name` for each text format that should carry the button.

## Verify

- As an editor, open a node form using that format: the AI button shows and rewrites selected text.

Test as a real editor or visitor, not user 1: a superuser bypasses permissions.

## Traps

- On Drupal CMS 2, `ai_ckeditor` crashes an AI Base apply ("cannot redeclare class"): enable it first.

## History

Since January 2025; 2.0.0 on 5 Sep 2026; 2.0.1 on 27 Oct (functional tests #3633126).
