all: make-snap

make-snap:
	mkdir -p tmp
	chmod 777 tmp
	cp -r snap tmp
	docker run --rm -v $(shell pwd)/tmp:/work -w /work cibuilds/snapcraft:core20 snapcraft