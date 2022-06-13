all: clean SamHigginbotham_Thesis.pdf

thesis.aux: thesis.tex 
	pdflatex -file-line-error -halt-on-error thesis

thesis.bbl: thesis.aux thesis.bib
	bibtex thesis

SamHigginbotham_Thesis.pdf: thesis.aux thesis.bbl
	pdflatex -file-line-error -halt-on-error thesis
	pdflatex -file-line-error -halt-on-error thesis
	mv thesis.pdf SamHigginbotham_Thesis.pdf

clean:
	$(RM) SamHigginbotham_Thesis.pdf *.ps *.dvi *.log *.toc *.aux *.lot *.lof *.bbl *.blg *.out

distclean: clean
	$(RM) *~
