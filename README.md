# Programming-Languages Paper Template

This is a template repo for writing papers in programming languages. 
It contains the directory structure, Makefile, and bibliography that I use when writing papers.
Ideally, this makes the process of getting started with writing a paper easier, and makes it easier to keep everything organized. 

## Organization
The directory structure of this template is as follows:
- Root
  + Makefile
  + README.md
  + .gitignore
  + .latexmkrc
  + paper
     - conference.tex
	 - conference_anon.tex
	 - tech_report.tex
	 - main.tex
	 - includes.tex
	 - macros.tex
	 - sections.tex
	 - intro.tex
	 - conclusion.tex
	 - appendices.tex
	 - Makefile
  + pdfs
  + bibliography
     - main.bib
	 - all_cites.tex
	 - .gitignore
   + latex-pl-syntax
     - example.tex
	 - LICENSE
	 - metavars.sty
	 - metavarsx.sty
	 - pl-syntax.sty
	 - README.md

## Latex Tips and Tricks
- Use one sentence per line
- Use latexmk whenever you can!

## Bibliography Management
Please keep additions/changes to the bibliography file in separate commits. 
The bibliography file is set up as a [git subtree](https://www.atlassian.com/git/tutorials/git-subtree).
The remote is [git@github.com:akhirsch/bibliography](https://www.github.com/akhirsch/bibliography).
Please push any changes or additions there using git subtree!
If that doesn't work, you can use git cherry-pick, but that's a more complicated procedure.
You can also simply modify the bibliography repo itself.

## PL Syntax Package
The directory `latex-pl-syntax` contains a LaTeX package for writing PL Syntax descriptions.
It is set up as a  [git subtree](https://www.atlassian.com/git/tutorials/git-subtree) with remote [git@github.com:cacay/latex-pl-syntax](https://www.github.com/cacay/latex-pl-syntax).
Please push any changes or additions using git subtree!
