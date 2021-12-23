#!/bin/bash

# Exit script with failure
set -e

pushd ./Tools/Fire/
mvn package
popd

cp ./Tools/Fire/target/Fire-1.0.jar ./fire.jar