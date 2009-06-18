LATEX 	  = latex -synctex=1
PDFLATEX  = pdflatex
DVIPS	  = dvips -e0
DVIPDFM   = dvipdfmx
PPOWER4   = ppower4
MPOST     = mpost
CP        = cp -a
PREVIEW   = open
MAKEINDEX = makeindex
BIBTEX    = bibtex 

all:
	$(LATEX) mbasic.tex
	$(DVIPDFM) -o mbasic.pdf mbasic.dvi

idx:
	$(MAKEINDEX) -s own_index.ist -g mbasic

bib:
	$(BIBTEX) mbasic

