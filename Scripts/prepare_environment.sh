#!/bin/sh

set -e

git clone "https://github.com/PatternHouse/C-PatternHouse.git"
mv ./C-PatternHouse/* ./Sources/PatternHouse/c/

git clone https://github.com/PatternHouse/CPlusPlus-PatternHouse.git
mv ./CPlusPlus-PatternHouse/* ./Sources/PatternHouse/cpp/

git clone https://github.com/PatternHouse/CSharp-PatternHouse.git
mv ./CSharp-PatternHouse/* ./Sources/PatternHouse/csharp/

git clone https://github.com/PatternHouse/Java-PatternHouse.git
mv ./Java-PatternHouse/* ./Sources/PatternHouse/java/

git clone https://github.com/PatternHouse/Python-PatternHouse.git
mv ./Python-PatternHouse/* ./Sources/PatternHouse/python/

rm -rf ./C-PatternHouse
rm -rf ./CPlusPlus-PatternHouse
rm -rf ./CSharp-PatternHouse
rm -rf ./Java-PatternHouse
rm -rf ./Python-PatternHouse

cd ./Sources/PatternHouse/c
mv -v "Alphabetic Patterns"/ alphabetic/
mv -v "Numeric Patterns"/ numeric/
mv -v "Pyramid Patterns"/ pyramid/
mv -v "Series Patterns"/ series/
mv -v "Spiral Patterns"/ spiral/
mv -v "String Patterns"/ string/
mv -v "Symbol Patterns"/ symbol/
mv -v "Wave Patterns"/ wave/
cd ../../..

cd ./Sources/PatternHouse/cpp
mv -v "Alphabetic Patterns"/ alphabetic/
mv -v "Numeric Patterns"/ numeric/
mv -v "Pyramid Patterns"/ pyramid/
mv -v "Series Patterns"/ series/
mv -v "Spiral Patterns"/ spiral/
mv -v "String Patterns"/ string/
mv -v "Symbol Patterns"/ symbol/
mv -v "Wave Patterns"/ wave/
cd ../../..

cd ./Sources/PatternHouse/csharp
mv -v "Alphabetic Patterns"/ alphabetic/
mv -v "Numeric Patterns"/ numeric/
mv -v "Pyramid Patterns"/ pyramid/
mv -v "Series Patterns"/ series/
mv -v "Spiral Patterns"/ spiral/
mv -v "String Patterns"/ string/
mv -v "Symbol Patterns"/ symbol/
mv -v "Wave Patterns"/ wave/
cd ../../..

cd ./Sources/PatternHouse/java
mv -v "Alphabetic Patterns"/ alphabetic/
mv -v "Numeric Patterns"/ numeric/
mv -v "Pyramid Patterns"/ pyramid/
mv -v "Series Patterns"/ series/
mv -v "Spiral Patterns"/ spiral/
mv -v "String Patterns"/ string/
mv -v "Symbol Patterns"/ symbol/
mv -v "Wave Patterns"/ wave/
cd ../../..

cd ./Sources/PatternHouse/python
mv -v "Alphabetic Patterns"/ alphabetic/
mv -v "Numeric Patterns"/ numeric/
mv -v "Pyramid Patterns"/ pyramid/
mv -v "Series Patterns"/ series/
mv -v "Spiral Patterns"/ spiral/
mv -v "String Patterns"/ string/
mv -v "Symbol Patterns"/ symbol/
mv -v "Wave Patterns"/ wave/
cd ../../..