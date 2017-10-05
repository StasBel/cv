all: eng

LATEX=pdflatex

help:	## Show this help
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

_:	## Run compiling for default language

eng:	## Run compiling for english language
	${LATEX} cv.tex

rus:	## Run compiling for russian language
	${LATEX} cv_rus.tex

clean:	## Cleaning compiling output
	rm -rf *~ *.aux *.log *.out *.synctex.gz

.PHONY: all help eng rus clean
