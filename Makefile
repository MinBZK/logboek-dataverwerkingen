RESPEC_VERSION := latest
RESPEC_IMAGE := registry.gitlab.com/commonground/nlx/fsc-base-image/respec:$(RESPEC_VERSION)

CWD := $(shell pwd)


.PHONY:
snapshot:
	mkdir -p build
	docker run --rm --volume ${CWD}:/app ${RESPEC_IMAGE} --disable-sandbox --localhost --src index.html --out build/index.html

.PHONY:
serve:
	@python3 -m http.server --bind 127.0.0.1 9000

.PHONY:
serve-snapshot:
	@python3 -m http.server --bind 127.0.0.1 --directory build 9001
