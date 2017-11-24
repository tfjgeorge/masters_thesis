#!/bin/bash

lyx --export latex master.lyx
lyx --export latex intro.lyx
lyx --export latex appendix.lyx
bibtex main
pdflatex main.tex

# diff
latexdiff --exclude-textcmd="section,subsection" master_submitted.tex master.tex > master_diff.tex
bibtex main_diff
pdflatex main_diff.tex 

# display
evince main_diff.pdf
