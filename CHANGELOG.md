# Changelog

All notable changes to the Varbase AI Editor Assistant recipe are documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [2.0.2] - 2026-10-29
### Added
- A Claude Code agent and skill for applying and verifying the recipe ([#3633924](https://www.drupal.org/i/3633924)).

### Changed
- Disable Drupal CMS telemetry in CI ([#3633850](https://www.drupal.org/i/3633850)).
- Update the version badge to `2.0.2` in `README.md`.

## [2.0.1] - 2026-10-27
### Added
- Automated functional acceptance tests for the editor assistant, its access and accessibility, run in CI on a fresh Varbase 11 site ([#3633126](https://www.drupal.org/i/3633126)).

### Changed
- Move the documentation to docs.varbase.vardot.com ([#3633019](https://www.drupal.org/i/3633019)).
- Install the Varbase Starter dev line in CI, which carries the search view fix for Drupal CMS Search 2.2.7.
- Update the version badge to `2.0.1` in `README.md`.

## [2.0.0] - 2026-09-06
### Changed
- First stable release of the Varbase AI Editor Assistant recipe on the 2.0.x line, shipped with the Varbase 11.0.0 suite. No functional changes since 2.0.0-rc2.
- Set the recipe version to 2.0.0 and update the version badge in `README.md`.

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

[Unreleased]: https://git.drupalcode.org/project/varbase_ai_editor_assistant/-/compare/2.0.2...2.0.x
[2.0.2]: https://git.drupalcode.org/project/varbase_ai_editor_assistant/-/compare/2.0.1...2.0.2
[2.0.1]: https://git.drupalcode.org/project/varbase_ai_editor_assistant/-/compare/2.0.0...2.0.1
[2.0.0]: https://git.drupalcode.org/project/varbase_ai_editor_assistant/-/compare/2.0.0-rc2...2.0.0
[2.0.0-rc2]: https://git.drupalcode.org/project/varbase_ai_editor_assistant/-/compare/2.0.0-rc1...2.0.0-rc2
[2.0.0-rc1]: https://git.drupalcode.org/project/varbase_ai_editor_assistant/-/compare/2.0.0-beta1...2.0.0-rc1
[2.0.0-beta1]: https://git.drupalcode.org/project/varbase_ai_editor_assistant/-/compare/2.0.0-alpha2...2.0.0-beta1
[2.0.0-alpha2]: https://git.drupalcode.org/project/varbase_ai_editor_assistant/-/compare/2.0.0-alpha1...2.0.0-alpha2
[2.0.0-alpha1]: https://git.drupalcode.org/project/varbase_ai_editor_assistant/-/tags/2.0.0-alpha1
