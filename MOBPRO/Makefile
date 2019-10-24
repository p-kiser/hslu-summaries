PARAMS=-N --pdf-engine=xelatex -V documentclass=scrartcl -V papersize=a4 -V lang=de -V urlcolor=blue --toc
FONTS=-V mainfont="IBM Plex Serif" -V sansfont="IBM Plex Sans" -V monofont="Fira Code"
DATE=-V date="`date +'%d.%m.%Y'`"

MOBPRO_ZF.pdf: zf.md
	pandoc -s $(PARAMS) $(FONTS) $(DATE) zf.md -o MOBPRO_ZF.pdf