#!/bin/sh

git clone https://github.com/PatternHouse/Fire.git
cd Fire
mvn package
cd ..
mkdir -v firebuild
mkdir -v firebuild/firerepo
mkdir -v firebuild/firesource
mkdir -v firebuild/firesource/c
mkdir -v firebuild/firesource/cpp
mkdir -v firebuild/firesource/cs
mkdir -v firebuild/firesource/java
mkdir -v firebuild/firesource/py
mkdir -v firebuild/basegen


cp -vr Fire/target/Fire-1.0.jar firebuild/
git clone https://github.com/PatternHouse/guidelines.git
cp -rv guidelines/patterns/* firebuild/firerepo/
git clone https://github.com/PatternHouse/C-PatternHouse.git
git clone https://github.com/PatternHouse/CPlusPlus-PatternHouse.git
git clone https://github.com/PatternHouse/CSharp-PatternHouse.git
git clone https://github.com/PatternHouse/Java-PatternHouse.git
git clone https://github.com/PatternHouse/Python-PatternHouse.git

cd C-PatternHouse
mv -v "Alphabetic Patterns"/ alphabetic/ 
mv -v "Numeric Patterns"/ numeric/ 
mv -v "Pyramid Patterns"/ pyramid/
mv -v "Series Patterns"/ series/ 
mv -v "Spiral Patterns"/ spiral/ 
mv -v "String Patterns"/ string/
mv -v "Symbol Patterns"/ symbol/ 
mv -v "Wave Patterns"/ wave/
cd ..
cp -vr C-PatternHouse/* firebuild/firesource/c

cd CPlusPlus-PatternHouse
mv -v "Alphabetic Patterns"/ alphabetic/ 
mv -v "Numeric Patterns"/ numeric/ 
mv -v "Pyramid Patterns"/ pyramid/
mv -v "Series Patterns"/ series/ 
mv -v "Spiral Patterns"/ spiral/ 
mv -v "String Patterns"/ string/
mv -v "Symbol Patterns"/ symbol/ 
mv -v "Wave Patterns"/ wave/
cd ..
cp -vr CPlusPlus-PatternHouse/* firebuild/firesource/cpp

cd CSharp-PatternHouse
mv -v "Alphabetic Patterns"/ alphabetic/ 
mv -v "Numeric Patterns"/ numeric/ 
mv -v "Pyramid Patterns"/ pyramid/
mv -v "Series Patterns"/ series/ 
mv -v "Spiral Patterns"/ spiral/ 
mv -v "String Patterns"/ string/
mv -v "Symbol Patterns"/ symbol/ 
mv -v "Wave Patterns"/ wave/
cd ..
cp -vr CSharp-PatternHouse/* firebuild/firesource/cs

cd Java-PatternHouse
mv -v "Alphabetic Patterns"/ alphabetic/ 
mv -v "Numeric Patterns"/ numeric/ 
mv -v "Pyramid Patterns"/ pyramid/
mv -v "Series Patterns"/ series/ 
mv -v "Spiral Patterns"/ spiral/ 
mv -v "String Patterns"/ string/
mv -v "Symbol Patterns"/ symbol/ 
mv -v "Wave Patterns"/ wave/
cd ..
cp -vr Java-PatternHouse/* firebuild/firesource/java

cd Python-PatternHouse
mv -v "Alphabetic Patterns"/ alphabetic/ 
mv -v "Numeric Patterns"/ numeric/ 
mv -v "Pyramid Patterns"/ pyramid/
mv -v "Series Patterns"/ series/ 
mv -v "Spiral Patterns"/ spiral/ 
mv -v "String Patterns"/ string/
mv -v "Symbol Patterns"/ symbol/ 
mv -v "Wave Patterns"/ wave/
cd ..
cp -vr Python-PatternHouse/* firebuild/firesource/py

git clone https://github.com/PatternHouse/fire-templates.git
cp -vr fire-templates/*.firetemplate firebuild/

cd firebuild
java -jar Fire-1.0.jar >> basegen/build.log
