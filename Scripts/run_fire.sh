#!/bin/sh

pushd ./Build/FireBuild/
java -jar Fire-1.0.jar > portal.build.log
popd