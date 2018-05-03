#!/usr/bin/env bash

set -e -x

echo now running the build
tsc

echo now about to prune
npm prune --production

git log -1 >> version.txt
cat version.txt

echo  'Build complete'
