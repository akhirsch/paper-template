.PHONY: all paper clean clean_paper cleanall cleanall_paper

all: paper

paper: 
	make -C paper

clean: clean_paper
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

clean_paper:
	make clean -C paper

cleanall: cleanall_paper
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

cleanall_paper:
	make cleanall -C paper