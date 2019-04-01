LATEX = pdflatex
PREFIX = gnu_linux
#
# Default Chapter. Invoke as "make directive CHAPTER=X" to compile other chapters
CHAPTER = II
#
.PHONY:	all clean
all:	presentation dual notes handouts
#
presentation:	$(PREFIX)_$(CHAPTER)_presentation.tex
	$(info Compiling presentation pdf beamer.)
	$(LATEX) $<
	$(info Done.)
dual:	$(PREFIX)_$(CHAPTER)_dual.tex
	$(info Compiling dual pdf beamer.)
	$(LATEX) $<
	$(info Done.)
notes:	$(PREFIX)_$(CHAPTER)_notes.tex
	$(info Compiling notes pdf beamer.)
	$(LATEX) $<
	$(info Done.)
handouts:	$(PREFIX)_$(CHAPTER)_handouts.tex
	$(info Compiling handouts pdf beamer.)
	$(LATEX) $<
	$(info Done.)
clean:
	@rm -f $(PREFIX)_$(CHAPTER)_*.aux $(PREFIX)_$(CHAPTER)_*.toc $(PREFIX)_$(CHAPTER)_*.log $(PREFIX)_$(CHAPTER)_*.nav
