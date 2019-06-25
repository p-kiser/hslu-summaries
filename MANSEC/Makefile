PARAMS=-N --pdf-engine=xelatex -V documentclass=scrartcl -V papersize=a4 -V lang=de -V urlcolor=blue --toc
FONTS=-V mainfont="IBM Plex Serif" -V sansfont="IBM Plex Sans" -V monofont="Fira Code"
DATE=-V date="`date +'%d.%m.%Y'`"

src = $(wildcard *.md)
pdfs = $(patsubst %.md,%.pdf,$(src))

all: $(pdfs)

%.pdf: %.md
	pandoc -s $(PARAMS) $(FONTS) $(DATE) $< -o $@