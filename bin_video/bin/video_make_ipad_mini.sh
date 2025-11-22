#!/bin/bash

set -x
# Converts video for playing on iPad mini

if [ $# -lt 2 ]; then
    echo "Usage: $0 <infile> <outfile>"
    exit -1
fi

IN="$1"
OUT="$2"

if [ "${OUT##*.}" != "mp4" ]; then
    echo "Output file extension must be \".mp4\""
    exit -1
fi

# scale=1280:-3 for iPad
# scale=1024:-3 for iPad Mini

mencoder -of lavf -lavfopts format=mp4 -vf scale=1024:-3 -ovc x264 -x264encopts crf=28:vbv_maxrate=1500:nocabac:global_header:frameref=3:threads=auto:bframes=0:subq=6:mixed-refs=0:weightb=0:8x8dct=1:me=umh:partitions=all:qp_step=4:qcomp=0.7:trellis=1:direct_pred=auto -oac faac -faacopts br=160:mpeg=4:object=2:raw -channels 2 -srate 48000 "${IN}" -o "${OUT}"
