BIB := ../bibliography/main.bib

PAPER_FILES := $(find . -name "*.tex")

export TEXINPUTS = .::$TEXMF/tex/::../styles::../styles/latex-pl-syntax

.PHONY: clean cleanall all PACMAnon PACMCameraReady

all: conference conference_anon tech_report

conference: conference.pdf

conference_anon: conference_anon.pdf

tech_report: tech_report.pdf

%.pdf: %.tex $(PAPER_FILES) $(BIB)
	latexmk -pdf -bibtex -synctex=1 $<


ALLCLEANABLES := $(shell find . \( -name '*.aux'\
                             -o -name '\#*\#'\
			     -o -name '*.log'\
			     -o -name '*.bbl'\
                             -o -name '*.out'\
                             -o -name '*~'\
                             -o -name '*.pdf'\
                             -o -name '*.dvi'\
                             -o -name '*.synctex.gz'\
                             -o -name '*.blg'\
                             -o -name 'paper-outline.tex'\
                             -o -name '*.toc'\
                             -o -name '*.lot'\
			     -o -name '*.fls'\
			     -o -name '*.rip'\
			     -o -name '*.fdb_latexmk'\
			     -o -name '*.xcp'\
			     -o -name '*.xoj'\
                             -o -name '*.lof' \) -type f)

CLEANABLES := $(shell find . \( -name '*.aux'\
			     -o -name '\#*\#'\
			     -o -name '*.log'\
			     -o -name '*.bbl'\
                             -o -name '*.out'\
                             -o -name '*~'\
                             -o -name '*.synctex.gz'\
                             -o -name '*.blg'\
                             -o -name 'paper-outline.tex'\
                             -o -name '*.toc'\
                             -o -name '*.lot'\
			     -o -name '*.fls'\
			     -o -name '*.rip'\
			     -o -name '*.fdb_latexmk'\
			     -o -name '*.xcp'\
                             -o -name '*.lof' \) -type f)

clean: 
	@for f in $(CLEANABLES); do \
		echo "REMOVING $$f";\
		rm $$f;\
	done

cleanall: 
	@for f in $(ALLCLEANABLES); do \
		echo "REMOVING $$f";\
		rm $$f;\
	done
