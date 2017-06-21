#!/bin/bash

lyx --export latex master.lyx
pdflatex main.tex
bibtex main
pdflatex main.tex
evince main.pdf
