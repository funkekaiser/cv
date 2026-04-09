# Makefile for building the CV with latexmk.
# Override the engine with: make ENGINE=xelatex
ENGINE ?= pdf

LATEXMK      := latexmk
LATEXMKFLAGS := -$(ENGINE) -interaction=nonstopmode -halt-on-error

.PHONY: all clean distclean watch

all: cv.pdf

cv.pdf: cv.tex
	$(LATEXMK) $(LATEXMKFLAGS) cv.tex

watch: cv.tex
	$(LATEXMK) -pvc $(LATEXMKFLAGS) cv.tex

clean:
	$(LATEXMK) -c

distclean:
	$(LATEXMK) -C
	rm -f cv.pdf
