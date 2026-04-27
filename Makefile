TARGET = Pranjal_Pareek_CV

all: $(TARGET).pdf

$(TARGET).pdf: $(TARGET).tex citations.bib
	pdflatex -interaction=nonstopmode $(TARGET).tex
	biber $(TARGET) || true
	pdflatex -interaction=nonstopmode $(TARGET).tex
	pdflatex -interaction=nonstopmode $(TARGET).tex

clean:
	rm -f *.aux *.log *.out *.bbl *.bcf *.blg *.run.xml *.toc $(TARGET).pdf

.PHONY: all clean
