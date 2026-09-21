#!/usr/bin/env bash
# Writes the badge of the weekly check (latest.json) to the branch "badges", shields.io reads it as an endpoint badge.
#
# GitHub's own workflow badge only knows passing, failing and no status. This one can be orange when the test tools (Fabric,
# PackTest) are not there for a new Minecraft release yet, and its file changes every run, so the "last commit" badge of the
# branch turns orange and red by itself when the schedule stops (GitHub switches schedules off after 60 days without activity).
#
# Input (environment): REMOTE (url to push to), and what the workflow knows:
#   VERSION_OUTCOME  outcome of the step that looks up the latest release (success = it worked)
#   MC               the latest release
#   NEWER            true if MC is newer than the highest version of the test matrix
#   READY            true if the test tools exist for MC
#   TESTS            outcome of the tests on MC
set -euo pipefail

: "${REMOTE:?REMOTE is the url of the repository to push the branch badges to}"
MC="${MC:-}"; NEWER="${NEWER:-}"; READY="${READY:-}"; TESTS="${TESTS:-}"; VERSION_OUTCOME="${VERSION_OUTCOME:-}"

if [ "$VERSION_OUTCOME" != "success" ] || [ -z "$MC" ]; then
  MESSAGE="check did not run"; COLOR="lightgrey"
elif [ "$NEWER" != "true" ]; then
  MESSAGE="$MC is in the test matrix"; COLOR="brightgreen"
elif [ "$READY" != "true" ]; then
  MESSAGE="$MC, test tools not ready yet"; COLOR="orange"
elif [ "$TESTS" = "success" ]; then
  MESSAGE="$MC works"; COLOR="brightgreen"
else
  MESSAGE="$MC breaks"; COLOR="red"
fi
CHECKED=$(date -u +%Y-%m-%dT%H:%MZ)
echo "Badge: $MESSAGE ($COLOR)"

WORK=$(mktemp -d)
trap 'rm -rf "$WORK"' EXIT
cd "$WORK"
git init -q
git config user.name "github-actions[bot]"
git config user.email "41898282+github-actions[bot]@users.noreply.github.com"
git remote add origin "$REMOTE"
if git ls-remote --exit-code --heads origin badges > /dev/null 2>&1; then
  git fetch -q --depth 1 origin badges
  git checkout -q -B badges FETCH_HEAD
else
  git checkout -q --orphan badges
fi

# "checked" is not read by shields, it makes the file (and with it the last commit of the branch) change every run
printf '{\n  "schemaVersion": 1,\n  "label": "latest Minecraft",\n  "message": "%s",\n  "color": "%s",\n  "cacheSeconds": 3600,\n  "checked": "%s"\n}\n' \
  "$MESSAGE" "$COLOR" "$CHECKED" > latest.json
git add latest.json
# two runs in the same minute with the same result give the same file
git diff --cached --quiet || git commit -q -m "Weekly check: $MESSAGE"
git push -q origin badges
