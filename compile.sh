#!/bin/bash
TARGET="Pranjal_Pareek_CV"

pdflatex -interaction=nonstopmode $TARGET.tex
biber $TARGET
pdflatex -interaction=nonstopmode $TARGET.tex
pdflatex -interaction=nonstopmode $TARGET.tex
