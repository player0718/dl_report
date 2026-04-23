# Build the report with latexmk. Requires a TeX Live install with
# pdflatex, bibtex, and the packages declared in main.tex preamble.

MAIN := main

.PHONY: all watch clean distclean

all: $(MAIN).pdf

$(MAIN).pdf: $(MAIN).tex references.bib $(wildcard sections/*.tex) $(wildcard tables/*.tex)
	latexmk -pdf -interaction=nonstopmode -halt-on-error $(MAIN).tex

watch:
	latexmk -pdf -pvc -interaction=nonstopmode $(MAIN).tex

clean:
	latexmk -c $(MAIN).tex
	rm -f $(MAIN).bbl $(MAIN).run.xml $(MAIN).synctex.gz

distclean:
	latexmk -C $(MAIN).tex
	rm -f $(MAIN).bbl $(MAIN).run.xml $(MAIN).synctex.gz $(MAIN).pdf
