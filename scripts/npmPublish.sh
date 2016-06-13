#!/usr/bin/env bash

cd $(dirname $0)/..
set -e

echo "//registry.npmjs.org/:_authToken=${NPM_TOKEN}" > .npmrc
chmod 0600 .npmrc

npm run prepublish

echo "Publishing..."
npm publish build/src/rules
