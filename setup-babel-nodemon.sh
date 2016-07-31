#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

npm init -f
npm install babel-cli babel-preset-es2015 --save-dev
addScriptsToPackageJson "./package.json" "babel-node" "babel-node --presets=es2015"

echo "Call your script with:"
echo "$ nodemon --exec npm run babel-node -- path/to/script.js"
