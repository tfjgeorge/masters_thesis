#!/bin/bash

lyx --export latex master.lyx
pdflatex main.tex
pdflatex main.tex
evince main.pdf
