#!/usr/bin/env bash

npm pkg set -w pkg1 version=1.0.1
npm pkg set -w pkg2 version=1.0.1
npm pkg set -w pkg1 dependencies.pkg3="^1.0.1"
npm pkg set -w pkg2 dependencies.pkg3="^1.0.1"
npm pkg set -w pkg3 version=1.0.1

# works
npm install --package-lock-only --install-links=false --loglevel=silly

git checkout package-lock.json

# fails
npm install --package-lock-only --install-links=true --loglevel=silly
