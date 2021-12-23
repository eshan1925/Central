#!/bin/bash

set -e

mkdir ./Public
mkdir ./Public/assets
cp -r ./Assets/* ./Public/assets/

cp -r ./Sources/WebMain/* ./Public/

mkdir ./Public/portal
