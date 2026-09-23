#!/usr/bin/env bash
# Sets up a Fabric server with Fabric API and PackTest for the given Minecraft version in the current directory.
# Exit code 3 means the tooling is not available for that version (yet), any other non-zero code is a real error.
set -euo pipefail

MC="$1"
UA="Moggla/Timber-Datapack CI"

# prints the download url of the newest release of a Modrinth project for $MC, or nothing if there is none
modrinth_url() {
  curl -fsSL -A "$UA" -G "https://api.modrinth.com/v2/project/$1/version" \
    --data-urlencode "game_versions=[\"$MC\"]" \
    --data-urlencode 'loaders=["fabric"]' \
    | jq -r '[.[] | select(.version_type == "release")][0].files[0].url // empty'
}

FABRIC_API=$(modrinth_url fabric-api)
PACKTEST=$(modrinth_url packtest)
LOADER=$(curl -fsSL https://meta.fabricmc.net/v2/versions/loader | jq -r '[.[] | select(.stable)][0].version')
INSTALLER=$(curl -fsSL https://meta.fabricmc.net/v2/versions/installer | jq -r '[.[] | select(.stable)][0].version')
# the meta api answers unknown versions with an error or an empty list
SERVER=$(curl -sSL "https://meta.fabricmc.net/v2/versions/loader/$MC" | jq -r 'if type == "array" and length > 0 then "yes" else empty end' 2>/dev/null || true)
# the vanilla server jar: the Fabric server only downloads it on its first start, gen-sapling-ground-tests.py needs it before that
VANILLA_META=$(curl -fsSL https://piston-meta.mojang.com/mc/game/version_manifest_v2.json | jq -r --arg v "$MC" '.versions[] | select(.id == $v) | .url')
VANILLA=""
[ -z "$VANILLA_META" ] || VANILLA=$(curl -fsSL "$VANILLA_META" | jq -r '.downloads.server.url // empty')

MISSING=""
[ -n "$SERVER" ] || MISSING="$MISSING Fabric server,"
[ -n "$VANILLA" ] || MISSING="$MISSING vanilla server,"
[ -n "$FABRIC_API" ] || MISSING="$MISSING Fabric API,"
[ -n "$PACKTEST" ] || MISSING="$MISSING PackTest,"
if [ -n "$MISSING" ]; then
  echo "Not available for Minecraft $MC yet:${MISSING%,}" >&2
  exit 3
fi

mkdir -p mods "versions/$MC"
# where the Fabric server puts it too (it replaces it with its own copy on the first start, gen-sapling-ground-tests.py reads both)
curl -fsSL -o "versions/$MC/server-$MC.jar" "$VANILLA"
curl -fsSL -o server.jar "https://meta.fabricmc.net/v2/versions/loader/$MC/$LOADER/$INSTALLER/server/jar"
curl -fsSL -o mods/fabric-api.jar "$FABRIC_API"
curl -fsSL -o mods/packtest.jar "$PACKTEST"
echo "eula=true" > eula.txt
