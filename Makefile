LATEX = pdflatex
PREFIX = gnu_linux
#
CHAPTER = I
#
.PHONY:	all clean
all:	presentation dual notes handouts
#
presentation:	$(PREFIX)_$(CHAPTER)_presentation.tex
	$(LATEX) $<
dual:	$(PREFIX)_$(CHAPTER)_dual.tex
	$(LATEX) $<
notes:	$(PREFIX)_$(CHAPTER)_notes.tex
	$(LATEX) $<
handouts:	$(PREFIX)_$(CHAPTER)_handouts.tex
	$(LATEX) $<
clean:
	@rm -f $(PREFIX)_$(CHAPTER)_*.aux $(PREFIX)_$(CHAPTER)_*.toc $(PREFIX)_$(CHAPTER)_*.log $(PREFIX)_$(CHAPTER)_*.nav
