all:
	sh ./configure.sh
	sh ./Scripts/vercel_build.sh
	tar -cvf central-build-snapshot.tar.xz .
	cp *.tar.xz ./Build/Public/

clean:
	rm -rf *.jar
	rm -rf ./Build
	rm -rf Makefile
	cp ./Sources/Makefiles/Empty/Makefile ./Makefile
