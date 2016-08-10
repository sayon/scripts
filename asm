#!/bin/bash

fname=$1
if [ "$fname" == "" ]; then
fname=`ls -1 *.asm`
fi
nasm "$fname" -felf64 -o "$fname.o" && ld -o e "$fname.o" && rm -f "$fname.o"
