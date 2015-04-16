PDFS := $(patsubst %.md, %.html, $(wildcard *.md))

build: $(PDFS)

%.pdf: %.md
	pandoc $< -H header.tex -o $@
