PAPER_DIR := $(shell cd "$(CURDIR)" && pwd -W)

.PHONY: build-docker clean

build-docker:
	docker run --rm -v "$(PAPER_DIR)"://data -w //data openjournals/inara -o pdf paper.md

clean:
	rm -f paper.pdf
