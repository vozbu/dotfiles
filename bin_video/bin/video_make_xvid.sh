#!/bin/bash

# Конвертирует фильм в xvid

if [ $# -lt 2 ]; then
    echo "Usage: $0 <infile> <outfile>"
    exit -1
fi

IN="$1"
OUT="$2"
OUTP="${OUT%.*}_pass1.avi"

echo "Pass 1"
mencoder "$IN" -o "$OUT" -ovc xvid -xvidencopts pass=1:chroma_opt:vhq=4:bvhq=1:quant_type=mpeg:threads=4 -oac copy

echo "Pass 2"
mencoder "$IN" -o "$OUT" -ovc xvid -xvidencopts pass=2:bitrate=4000:chroma_opt:vhq=4:bvhq=1:quant_type=mpeg:threads=4 -oac copy
