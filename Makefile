mainweb:
	mkdir ./Public
	mkdir ./Public/assets
	cp -rv ./Sources/WebMain/* ./Public/
	cp -rv ./Assets/* ./Public/assets

tools:
	mkdir ./Build
	sh ./Scripts/compile_fire.sh

all: tools mainweb

clean:
	rm -rf ./Public
	rm -rf ./Build