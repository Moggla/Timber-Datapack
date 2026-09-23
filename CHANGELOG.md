# Changelog

Version numbers are `MAJOR.MINOR.PATCH`:

- **MAJOR**: breaking change (incompatible behavior, dropping an old MC version via `min_format`, or a broken API)
- **MINOR**: new feature, or support for a new MC version via `max_format` (even a pack.mcmeta-only bump)
- **PATCH**: bug fix

Release notes live on the [GitHub Releases page](https://github.com/Moggla/Timber-Datapack/releases), not here. New tags use lowercase `v` (e.g. `v7.3.0`); releases before this file are tagged `V0.0.1` to `V7.2.0`.

## Releasing

1. If the supported MC versions changed: bump `pack.mcmeta` (`min_format`/`max_format`), match `.github/mc-version-range.txt` to it, and update the `matrix` in `.github/workflows/test.yml`: the newest version plus the oldest version of each overlay range. A new format goes into `data/`, the old files move into an overlay (see `CLAUDE.md`). [Pack format](https://minecraft.wiki/w/Pack_format) lists which MC version has which format number.
2. Update the version string in `data/timber/dialog/help.json` and in `data/timber/function/settings/open/menu.mcfunction` (the Settings dialog body).
3. Tag the commit `vX.Y.Z` and publish it as a GitHub Release, using "Generate release notes" for the body; that triggers the Modrinth upload and attaches the datapack zip to the release automatically.
