BIB := ../bibliography/main.bib

PAPER_FILES := $(find . -name "*.tex")

export TEXINPUTS = .::$TEXMF/tex/::../styles::../latex-pl-syntax

.PHONY: clean cleanall all conference conference_anon tech_report

all: conference conference_anon tech_report

conference: conference.pdf

conference_anon: conference_anon.pdf

tech_report: tech_report.pdf

%.pdf: %.tex $(PAPER_FILES) $(BIB)
	latexmk -pdflatex=lualatex -pdf -bibtex -synctex=1 $<

clean: 
	@find . \( -name '*.aux'\
					-o -name '*~'\
					-o -name '*.synctex.gz'\
					-o -name '*.blg'\
					-o -name '*.toc'\
					-o -name '*.lot'\
					-o -name '*.fls'\
					-o -name '*.fdb_latexmk'\
					-o -name '*.xcp'\
					-o -name '*.xoj'\
					-o -name '*.lof'\
					-o -name '*.log'\
					-o -name '*.out'\
					\) -type f -not -path "./.git/*" -not -path "./src/*"\
					-exec sh -c 'echo "REMOVING {}"; rm {}' ';'

cleanall: 
	@find . \( -name '*.aux'\
					-o -name '*~'\
					-o -name '*.synctex.gz'\
					-o -name '*.blg'\
					-o -name '*.toc'\
					-o -name '*.lot'\
					-o -name '*.fls'\
					-o -name '*.fdb_latexmk'\
					-o -name '*.xcp'\
					-o -name '*.xoj'\
					-o -name '*.lof'\
					-o -name '*.log'\
					-o -name '*.out'\
					-o -name '*.pdf'\
					-o -name '*.dvi'\
					\) -type f -not -path "./.git/*" -not -path "./src/*"\
					-exec sh -c 'echo "REMOVING {}"; rm {}' ';';
	@find . \( -name 'auto'\
	 				-o -name '_minted*'\
	        \) -type d -not -path "./.git/*" -not -path "./src/*" -prune\
					-exec sh -c 'echo "REMOVING {}"; rm -r {}' ';'
