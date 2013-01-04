#!/bin/sh

mmd2tex report.mmd && latexmk -pdfdvi report.tex && latexmk -c
