#!/bin/sh

TEMPLATES_DIR=$HOME/templates

TEXMF=$HOME/texmf
if [ -e $TEXMF ]; then
	echo "$TEXMF exists"
else
	ln -s $TEMPLATES_DIR/LaTeX/texmf $TEXMF
fi

if [ ! -e $HOME/bin/report-ja ]; then
	ln -s $TEMPLATES_DIR/LaTeX/bin/report-ja.sh $HOME/bin/report-ja
fi

