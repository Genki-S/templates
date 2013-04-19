#!/bin/sh

if [[ $# -eq 0 ]]; then
	echo "Usage: $0 PROBLEM_NAME"
	exit 1
fi

PROBLEM_DIR=`pwd`/$1

cp -R $HOME/templates/programming_contest/icpc/work_dir $PROBLEM_DIR

# Link Makefile
ln -s $HOME/templates/programming_contest/icpc/Makefile $PROBLEM_DIR/Makefile
