#!/bin/bash

set -e

# Project config
ALIAS=mcs-lite-app.now.sh
TEAM=mcs-lite

alias now="node_modules/.bin/now"
alias now-purge="node_modules/.bin/now-purge"
alias await-url="node_modules/.bin/await-url"

# 0. Use team
now switch $TEAM --token "$NOW_TOKEN"

# 1. Wair for deployment ready
URL=$(now --public --token "$NOW_TOKEN")
await-url "$URL"
now ls mcs-lite-app-demo --token "$NOW_TOKEN"

# 2. Alias and purge
now alias set "$URL" "$ALIAS" --token "$NOW_TOKEN"
now-purge -t "$NOW_TOKEN" --team $TEAM

# 3. Scale to 1
now scale $ALIAS 1 --token "$NOW_TOKEN"
