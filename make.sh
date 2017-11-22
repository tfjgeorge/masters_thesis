#!/bin/bash

lyx --export latex master.lyx
lyx --export latex intro.lyx
lyx --export latex appendix.lyx
bibtex main
pdflatex main.tex
pdflatex main.tex

# diff
latexdiff master_submitted.tex master.tex > master_diff.tex
pdflatex main_diff.tex 

# display
evince main_diff.pdf
