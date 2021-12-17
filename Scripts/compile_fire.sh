#!/bin/sh

cd ./Tools/Fire
mvn package
cd ../..
cp -v ./Tools/Fire/target/*.jar ./Build/Fire/