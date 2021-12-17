prepenv:
	mkdir ./Sources/PatternHouse
	mkdir ./Sources/PatternHouse/c
	mkdir ./Sources/PatternHouse/cpp
	mkdir ./Sources/PatternHouse/csharp
	mkdir ./Sources/PatternHouse/java
	mkdir ./Sources/PatternHouse/python
	sh ./Scripts/prepare_build_env.sh

mainweb:
	mkdir ./Public
	mkdir ./Public/assets
	cp -r ./Sources/WebMain/* ./Public/
	cp -r ./Assets/* ./Public/assets

tools:
	mkdir ./Build

	mkdir ./Build/Fire
	sh ./Scripts/compile_fire.sh

all: prepenv tools mainweb

clean:
	rm -rf ./Public
	rm -rf ./Build
	rm -rf ./Sources/PatternHouse