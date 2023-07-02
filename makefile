FILE = lines
LIST = (lines grunbaum grunbaum_historical)

default: single

single:
	latexmk -pdf $(FILE)
all:
	latexmk -pdf $(LIST)

.PHONY: clean clean-all testing

clean:
	rm -f $(FILE).aux $(FILE).run.* $(FILE).out $(FILE).log $(FILE).bbl $(FILE).fdb_* $(FILE).bcf $(FILE).blg $(FILE).fls

clean-all:
	rm -f $(LIST).aux $(LIST).run.* $(LIST).out $(FILE).log $(LIST).bbl $(LIST).fdb_* $(LIST).bcf $(LIST).blg $(LIST).fls

testing:
find . -maxdepth 1 -name "${$(LIST)[*]}.*"
