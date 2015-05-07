PDFS := $(patsubst %.md, %.pdf, $(filter-out README.md, $(wildcard *.md)))

build: $(PDFS)

%.pdf: %.md
	pandoc $< -H header.tex -o $@
