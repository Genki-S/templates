#!/bin/sh

mmd2tex report.mmd && sed -i 's/\[htbp\]/[H]/' report.tex &&  latexmk -pdfdvi report.tex && latexmk -c
