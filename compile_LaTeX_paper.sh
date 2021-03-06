#!/bin/bash

./clean_accents.sh

# safer to do this because if some original figures are missing we will get an error message, otherwise not if the converted version still exists locally
rm -f images_pdf/*eps-converted-to.pdf > /dev/null

/bin/rm -f *.dvi *.log *.out *.aux *.toc *.blg *.bbl *.lof *.lot *.plt *.fff *.ttt *.tit *.spl *.idx *.ilg *.ind *.tbx *JASANotes.bib *.bcf *.run.xml */*.aux > /dev/null

file="PhD_thesis_Masaru_Nagaso_2018"

pdflatex $file
bibtex $file
pdflatex $file
pdflatex $file
pdflatex $file
pdflatex $file

/bin/rm -f *.dvi *.log *.out *.aux *.toc *.blg *.bbl *.lof *.lot *.plt *.fff *.ttt *.tit *.spl *.idx *.ilg *.ind *.tbx *JASANotes.bib *.bcf *.run.xml */*.aux > /dev/null

# safer to do this because if some original figures are missing we will get an error message, otherwise not if the converted version still exists locally
rm -f images_pdf/*eps-converted-to.pdf > /dev/null

# hash is apparently a bash-ism, so be careful if you change the shebang.
if hash acroread 2>/dev/null; then
  acroread $file.pdf
else
  xdg-open $file.pdf
fi

