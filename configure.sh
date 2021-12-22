#!/bin/bash

set -e

make clean

echo "configure.sh: Verifying you have correct dependencies ... "
sh ./Scripts/check_dependencies.sh > /dev/null || echo "Some dependencies were not found. Try running ./Scripts/check_dependencies.sh"

echo "configure.sh: Creating Build directories ... "
mkdir ./Build
mkdir ./Build/Build
pushd ./Build
cp -r ../Assets .
cp -r ../Scripts .
cp -r ../Sources .
cp -r ../Templates .
cp -r ../Tools .
mkdir ./Sources/PatternHouse
mkdir ./Sources/PatternHouse/c
mkdir ./Sources/PatternHouse/cpp
mkdir ./Sources/PatternHouse/csharp
mkdir ./Sources/PatternHouse/java
mkdir ./Sources/PatternHouse/python

echo "configure.sh: Compiling Fire ... "
sh ./Scripts/build_fire.sh

echo "configure.sh: Getting Pattern source code ... "
sh ./Scripts/prepare_environment.sh

echo "configure.sh: Writing Makefiles ... "
cp ./Sources/Makefiles/Build/Makefile .

popd

echo
echo -----------------------------------------------------------------------
echo Configure Successful!
echo Build Directory: ./Build
echo
echo "Run \"cd Build && make all\" to build targets"
echo -----------------------------------------------------------------------