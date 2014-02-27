#!/bin/sh
mainfile=article
# for mac (add texlive path otherwise.)
PATH=/usr/texbin:/usr/local/bin:$PATH
ENGINE=xelatex
BIBTEX=bibtex

$ENGINE -synctex=1 -file-line-error -interaction=nonstopmode --shell-escape  $mainfile
$BIBTEX $mainfile
$ENGINE -synctex=1 -file-line-error -interaction=nonstopmode --shell-escape  $mainfile
$ENGINE -synctex=1 -file-line-error -interaction=nonstopmode --shell-escape  $mainfile
