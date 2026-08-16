# Changelog

All notable changes to the Varbase AI Editor Assistant recipe are documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [2.0.0-rc2] - 2026-08-16
### Fixed
- Add the core Text Editor module to the recipe `install` list. Without it the recipe failed validation on the `editor.editor.${ckeditor_machine_name}` config action, because the editor extension was neither installed nor installed by this recipe or its dependencies. See [#3617233](https://www.drupal.org/i/3617233).

### Changed
- Update the version badge to `2.0.0-rc2` in `README.md`.

## [2.0.0-rc1] - 2026-08-15
### Changed
- Release the recipe with the Varbase 11.0.0-rc1 suite. No functional changes since 2.0.0-beta1.
- Update the version badge to `2.0.0-rc1` in `README.md`.

## [2.0.0-beta1] - 2026-07-10
### Changed
- Update Drupal Core from ~11.3.0 to ~11.4.0 in the Varbase AI Editor Assistant recipe.
- Update the version badge to `2.0.0-beta1` in `README.md`.
- Run CI on tag pushes and add the README pipeline and release badges.

## [2.0.0-alpha2] - 2026-06-21
### Changed
- Maintenance and dependency updates for the Varbase AI Editor Assistant recipe.

## [2.0.0-alpha1]
### Added
- Initial 2.0.x release of the Varbase AI Editor Assistant recipe.

[Unreleased]: https://git.drupalcode.org/project/varbase_ai_editor_assistant/-/compare/2.0.0-rc2...2.0.x
[2.0.0-rc2]: https://git.drupalcode.org/project/varbase_ai_editor_assistant/-/compare/2.0.0-rc1...2.0.0-rc2
[2.0.0-rc1]: https://git.drupalcode.org/project/varbase_ai_editor_assistant/-/compare/2.0.0-beta1...2.0.0-rc1
[2.0.0-beta1]: https://git.drupalcode.org/project/varbase_ai_editor_assistant/-/compare/2.0.0-alpha2...2.0.0-beta1
[2.0.0-alpha2]: https://git.drupalcode.org/project/varbase_ai_editor_assistant/-/compare/2.0.0-alpha1...2.0.0-alpha2
[2.0.0-alpha1]: https://git.drupalcode.org/project/varbase_ai_editor_assistant/-/tags/2.0.0-alpha1
