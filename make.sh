#!/bin/bash

lyx --export latex master.lyx
lyx --export latex intro.lyx
bibtex main
pdflatex main.tex
pdflatex main.tex
evince main.pdf
