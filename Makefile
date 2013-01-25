LATEX 	  = latex -synctex=1
PDFLATEX  = pdflatex
DVIPS	  = dvips -e0
DVIPDFM   = dvipdfmx -q -V 5
PPOWER4   = ppower4
MPOST     = mpost
CP        = cp -a
PREVIEW   = open
MAKEINDEX = makeindex
BIBTEX    = bibtex 

all:
	$(PDFLATEX) mbasic.tex
#	$(DVIPDFM) -o mbasic.pdf mbasic.dvi

idx:
	$(MAKEINDEX) -s own_index.ist -g mbasic

bib:
	$(BIBTEX) mbasic

