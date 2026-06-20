[![Varbase](https://raw.githubusercontent.com/Vardot/varbase/11.0.x/images/varbase-logo.png)](https://www.drupal.org/project/varbase)

# Varbase AI Editor Assistant

A recipe to grant Varbase user roles the permissions needed for the AI-powered CKEditor 5 assistant, as provided by the Drupal CMS AI default recipe.

> Apply the Drupal CMS AI default recipe (`drupal/drupal_cms_ai`) before applying this recipe. The core AI editor logic and CKEditor 5 configuration are provided by that recipe; this recipe adds the AI assistant button to a chosen CKEditor 5 editor and grants the required permissions to Varbase's user roles (`site_admin`, `seo_admin`, `content_admin`, `content_editor`).


Add the recipe using composer:
```
composer require drupal/varbase_ai_editor_assistant:~2.0.0
```

Change directory to `/web` or `/docroot`

Run the Drupal recipe bash script:
```
bash core/scripts/drupal recipe ../recipes/varbase_ai_editor_assistant
```

or

Run the Drush recipe command:
```
drush recipe ../recipes/varbase_ai_editor_assistant
```
