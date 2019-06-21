PARAMS=-N --pdf-engine=xelatex -V documentclass=scrartcl -V papersize=a4 -V lang=de -V urlcolor=blue --toc
FONTS=-V mainfont="IBM Plex Serif" -V sansfont="IBM Plex Sans" -V monofont="Fira Code"
DATE=-V date="`date +'%d.%m.%Y'`"

ZF_BW.pdf: zf_bw.md
	pandoc -s $(PARAMS) $(FONTS) $(DATE) zf_bw.md -o ZF_BW.pdf
