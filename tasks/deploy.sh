#!/bin/bash

set -ex

# ENV Variables, Note: NOW_TOKEN in travisCI
# NOW config
TEAM='mcs-lite'
PROJECT='mcs-lite-app-demo'
ALIAS='mcs-lite-app.now.sh'

export PATH="./node_modules/.bin:$PATH"

# 0. Use team
now switch $TEAM --token "$NOW_TOKEN"

# 1. Wair for deployment ready
URL=$(now --public --token "$NOW_TOKEN")
await-url "$URL"
now ls --token "$NOW_TOKEN"

# 2. Alias
now alias set "$URL" "$ALIAS" --token "$NOW_TOKEN"

# 3. Purge old services
now remove --yes --safe --token "$NOW_TOKEN" $PROJECT

# 4. Scale to 1
now scale "$ALIAS" 1 --token "$NOW_TOKEN"

# 5. Log results
now ls --token "$NOW_TOKEN"
now alias ls --token "$NOW_TOKEN"
