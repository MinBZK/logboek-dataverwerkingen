RESPEC_VERSION := latest
RESPEC_IMAGE := registry.gitlab.com/commonground/nlx/fsc-base-image/respec:$(RESPEC_VERSION)

PLANTUML_VERSION := latest
PLANTUML_IMAGE := registry.gitlab.com/commonground/nlx/fsc-base-image/plantuml:${PLANTUML_VERSION}

MARKDOWNLINT_VERSION := 0.13.0
MARKDOWNLINT_IMAGE := docker.io/davidanson/markdownlint-cli2:v${MARKDOWNLINT_VERSION}

BUILD_DIR := build
CWD := $(shell pwd)


.PHONY: snapshot
snapshot: diagrams
	mkdir -p ${BUILD_DIR}/$<
	cp -a $</*.svg ${BUILD_DIR}/$<
	docker run --rm --volume ${CWD}:/app ${RESPEC_IMAGE} --disable-sandbox --localhost --src index.html --out build/index.html

.PHONY: diagrams
diagrams: $(patsubst %.puml,%.svg,$(wildcard diagrams/*.puml))

diagrams/%.svg: diagrams/%.puml
	cat $< | docker run --rm  --interactive ${PLANTUML_IMAGE} -svg > $@

.PHONY: lint
lint:
	docker run --rm --volume ${CWD}:/workdir ${MARKDOWNLINT_IMAGE}

.PHONY: serve
serve:
	@python3 -m http.server --bind 127.0.0.1 9000

.PHONY: serve-snapshot
serve-snapshot:
	@python3 -m http.server --bind 127.0.0.1 --directory build 9001

.PHONY: clean
clean:
	rm -rf ${BUILD_DIR}
	rm -rf diagrams/*.svg
