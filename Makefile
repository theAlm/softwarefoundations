LATEX 	 = latex
PDFLATEX = pdflatex
DVIPS	 = dvips -e0
DVIPDFM  = dvipdfm
PPOWER4  = ppower4
MPOST    = mpost
CP       = cp -a
PREVIEW  = open

all:
	$(LATEX) mbasic_pdf.tex
	$(DVIPDFM) -o mbasic.pdf mbasic_pdf.dvi
ps:
	$(LATEX) mbasic_ps.tex
	$(DVIPS) -o mbasic.ps mbasic_ps.dvi



