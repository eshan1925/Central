all:
	mkdir ./Public
	cp -v ./Sources/WebMain/* ./Public/

clean:
	rm -rf Public