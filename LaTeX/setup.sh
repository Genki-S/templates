#!/bin/sh

TEMPLATES_DIR=$HOME/templates

TEXMF=$HOME/texmf
if [ -e $TEXMF ]; then
	echo "$TEXMF exists. abort."
	exit 1
fi
ln -s $TEMPLATES_DIR/LaTeX/texmf $TEXMF
