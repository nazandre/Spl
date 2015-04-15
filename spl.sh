#!/bin/sh

splProg="$1"
name="${splProg##*/}"
name="${name%.*}"
cProg="$name.c"
prog="$name"

python splc.py "$splProg" > "$cProg"
if [ $? -eq 0 ]; then
    echo "$cProg generated!"
    gcc "$cProg" -lm -o "$prog"
    if [ $? -eq 0 ]; then
	echo "$prog generated!"
    fi
fi
