#!/bin/bash

set -e

pushd ./Sources/Portal
yarn run build
popd