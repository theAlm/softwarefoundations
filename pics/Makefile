# Specify all source-files
SRC = graphex1.mp graphex2.mp graphex3.mp moebius.mp random.mp kclique.mp \
      kclique2.mp kclique3.mp CG1.fig CG2.fig niko.fig tree.fig tree2.fig \
      BrueckenProb.fig BrueckenProb2.asy wald.fig lehre.qr

# Manually created eps-files
EPS = 

# Implicit rule for converting qr-codes into eps-pictures
%.eps : %.qr
	qrencode -s 8 -o $(basename $<).png < $<
	convert $(basename $<).png $(basename $<).eps 

# Implicit rule for converting gnuplot-graphics into eps-pictures
%.eps : %.plt
	gnuplot $<

# Implicit rule for converting asymptote-graphics into eps-pictures
%.eps : %.asy
	asy $< 

# Implicit rule for converting fig-graphics into eps-pictures
%.eps : %.fig
	fig2dev -L eps $< $@

#Implicit rule for compressing generated eps-pictures
%.eps.Z : %.eps
	compress < $< > $@

# Implicit rule for converting fig-graphics into pdf-pictures
%.pdf : %.fig
	fig2dev -L pdf $< $@

# Implicit rule for converting metapost-graphics into eps-pictures
%.eps : %.mp
	mpost -mem=metafun $< $@
	mv $(basename $<).1 $(basename $<).eps

# Implicit rule for converting metapost-graphics into eps-pictures
%.pdf : %.mp
	mptopdf --latex --rawmp --metafun $< 
	mv $(basename $<)-1.pdf $(basename $<).pdf

# Implicit rule for converting eps-graphics into pdf-pictures
%.pdf : %.eps
	ps2pdf  $<  $@

# The generated eps-pictures a intermediate files. Don't delete them
.PRECIOUS : %.eps

# Do the job
all: ps pdf mp asy plt qr compress
	@echo DONE

# Substitute SRC -> *.eps.Z and *.mp -> *.eps.Z , hence all source-files 
# are converted to .eps and .eps.Z
ps: $(SRC:%.fig=%.eps.Z) 
plt: $(SRC:%.plt=%.eps.Z)
asy: $(SRC:%.asy=%.eps.Z)
mp: $(SRC:%.mp=%.eps.Z)
qr: $(SRC:%.qr=%.eps.Z)

# Substitute SRC -> *.pdf and *.mp -> *.eps.Z, hence all source-files 
# are converted to .pdf
pdf: $(SRC:%.fig=%.pdf)
mp:  $(SRC:%.mp=%.pdf)
plt: $(SRC:%.plt=%.pdf)
asy: $(SRC:%.asy=%.pdf)
qr:  $(SRC:%.qr=%.pdf)

# Handle manually created eps-files
compress: $(EPS:%.eps=%.eps.Z)

