#!/bin/bash

set -e

mkdir ./Sources/Portal/static
mkdir ./Sources/Portal/static/assets
mkdir ./Sources/Portal/static/assets/patterns
cp -r ./Build/fireBuild/* ./Sources/Portal/docs/
cp -r ./Assets/patterns/* ./Sources/Portal/static/assets/patterns