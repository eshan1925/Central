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

portal:
	mkdir ./Build/FireBuild
	mkdir ./Build/FireBuild/firesource
	mkdir ./Build/FireBuild/firerepo
	cp -vr ./Templates/FireTemplates/*.firetemplate ./Build/FireBuild/
	cp -vr ./Sources/PatternHouse/* ./Build/FireBuild/firesource
	cp -vr ./Build/Fire/Fire-1.0.jar ./Build/FireBuild/
	cp -rv ./Assets/patterns/* ./Build/FireBuild/firerepo/
	sh ./Scripts/run_fire.sh
	mkdir ./Public/portal
	cp -vr ./Build/FireBuild/basegen/* ./Public/portal/
	cp -vr ./Build/FireBuild/portal.build.log ./Public/portal/

all: clean prepenv mainweb tools portal

clean-build:
	rm -rf ./Public
	rm -rf ./Build

clean:
	rm -rf ./Public
	rm -rf ./Build
	rm -rf ./Sources/PatternHouse