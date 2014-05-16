.PHONY: all clean

all: dist/sourcemaps-browserify.js

clean:
	rm -rf dist
	

dist/sourcemaps-browserify.js:
	mkdir -p dist
	node_modules/.bin/browserify -d app/tobebrowserified.js > dist/sourcemaps-browserify.js

#dist/sourcemaps-closure.js:
#	mkdir -p dist
#	java -jar compiler.jar --source_map_format=V3 --js_output_file dist/sourcemaps-closure.js --create_source_map dist/sourcemaps-closure.js.map app/**.js



