rm -rf firebuild/Fire-1.0.jar
cd Fire
mvn package
cd ..
cp -v Fire/target/Fire-1.0.jar firebuild/
