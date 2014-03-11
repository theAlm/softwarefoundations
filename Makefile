LATEX 	  = latex -synctex=1
PDFLATEX  = pdflatex
XELATEX   = xelatex
DVIPS	  = dvips -e0
DVIPDFM   = dvipdfmx -q -V 5
PPOWER4   = ppower4
MPOST     = mpost
CP        = cp -a
PREVIEW   = open
MAKEINDEX = makeindex
BIBTEX    = bibtex 

all:
	$(XELATEX) mbasic.tex

idx:
	$(MAKEINDEX) -s own_index.ist -g mbasic

bib:
	$(BIBTEX) mbasic

