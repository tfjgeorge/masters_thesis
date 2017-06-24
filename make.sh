#!/bin/bash

lyx --export latex master.lyx
bibtex main
pdflatex main.tex
pdflatex main.tex
evince main.pdf
