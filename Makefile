all:
	mkdir ./Public
	mkdir ./Public/assets
	cp -rv ./Sources/WebMain/* ./Public/
	cp -rv ./Assets/* ./Public/assets

clean:
	rm -rf Public