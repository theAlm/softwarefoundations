# Specify all source-files
SRC = graphex1.mp graphex2.mp moebius.mp random.mp kclique.mp kclique2.mp

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
	mpost $< $@
	mv $(basename $<).1 $(basename $<).eps

# Implicit rule for converting metapost-graphics into pdf-pictures
%.pdf : %.mp
	mpost $< $@
	ps2pdf < $< > $@

# Implicit rule for converting eps-graphics into pdf-pictures
%.pdf : %.eps
	ps2pdf  $<  $@

# The generated eps-pictures a intermediate files. Don't delete them
.PRECIOUS : %.eps

# Do the job
all: ps pdf mp compress
	@echo DONE

# Substitute *.fig -> *.eps.Z and *.mp -> *.eps.Z , hence all source-files 
# are converted to .eps and .eps.Z
ps: $(SRC:%.fig=%.eps.Z) 

# Substitute *.mp -> *.eps.Z , hence all source-files are converted to .eps 
# and .eps.Z
mp: $(SRC:%.mp=%.eps.Z) 

# Substitute *.fig -> *.pdf and *.mp -> *.eps.Z, hence all source-files 
# are converted to .pdf
pdf: $(SRC:%.fig=%.pdf)

# Handle manually created eps-files
compress: $(EPS:%.eps=%.eps.Z) $(EPS:%.eps=%.pdf)

# Delete all generated files
clean:
	rm -rf $(SRC:%.fig=%.eps) $(SRC:%.fig=%.eps.Z) $(SRC:%.fig=%.pdf) $(EPS:%.eps=%.eps.Z) $(EPS:%.eps=%.pdf)
