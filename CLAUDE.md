# Notes for Claude

## Pack formats and overlays
- `data/` is always written in the format of the newest supported Minecraft version (`max_format` in `pack.mcmeta`).
- Older versions get an overlay, never the other way round. The overlay folder is named after its lowest pack format (`101/` for 26.1) and listed in `pack.mcmeta` under `overlays.entries`.
- A file whose JSON differs between formats (predicates, loot tables, advancements, some commands) lives in `data/` in the new format and in the overlay in the old one.
- Adding support for a new version: bring `data/` to the new format, move the old versions of the changed files into an overlay for the older formats.
- Dropping an old version: delete its overlay folder and its entry in `pack.mcmeta`.
- Scripts and workflows that copy or scan the overlay folder by name: `.github/workflows/test.yml`, `.github/workflows/latest.yml`, `.github/workflows/publish-modrinth.yml`, `.github/scripts/gen-uninstall-check.py`.
- The `matrix` of `.github/workflows/test.yml` holds the newest supported version (for `data/`) and the oldest version of each overlay range (the functions in `data/` are shared by all versions, a command that only newer versions know breaks the oldest). A new overlay needs its own entry. A JSON error in one format breaks the whole registry of that version only.
