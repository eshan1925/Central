#!/bin/bash

set -e

# Make Installation Check
echo "  Checking for make ... "
make --version
if [ $? -eq 0 ]; then
    echo "  Found"
else
    echo "  Not Found"
fi

# Java Installation Check
echo "  Checking for Java ... "
java -version
if [ $? -eq 0 ]; then
    echo "  Found"
else
    echo "  Not Found"
fi

# Maven Installation Check
echo "  Checking for Maven ... "
mvn --version
if [ $? -eq 0 ]; then
    echo "  Found"
else
    echo "  Not Found"
fi

# NodeJS Installation Check
echo "  Checking for NodeJS ... "
node --version
if [ $? -eq 0 ]; then
    echo "  Found"
else
    echo "  Not Found"
fi

# Yarn Installation Check
echo "  Checking for Yarn ... "
yarn --version
if [ $? -eq 0 ]; then
    echo "  Found"
else
    echo "  Not Found"
fi