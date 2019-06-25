PARAMS=-N --pdf-engine=xelatex -V documentclass=scrartcl -V papersize=a4 -V lang=de -V urlcolor=blue --toc
FONTS=-V mainfont="IBM Plex Serif" -V sansfont="IBM Plex Sans" -V monofont="Fira Code"
DATE=-V date="`date +'%d.%m.%Y'`"

src = $(wildcard *.md)

ZF_PMRE.pdf: $(src)
	pandoc -s $(PARAMS) $(FONTS) $(DATE) $(src) -o ZF_PMRE.pdf