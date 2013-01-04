#!/bin/sh

TEMPLATES_DIR=$HOME/templates

TEXMF=$HOME/texmf
if [ -e $TEXMF ]; then
	echo "$TEXMF exists"
else
	ln -s $TEMPLATES_DIR/LaTeX/texmf $TEXMF
fi

for f in $TEMPLATES_DIR/LaTeX/bin/*
do
	src=$f
	dst=${f##*/}
	dst=$HOME/bin/${dst%%.*}
	if [ ! -e $dst ]; then
		ln -s $src $dst
	fi
done
