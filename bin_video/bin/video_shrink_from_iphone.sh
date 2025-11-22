#!/bin/bash

# Converts video for playing on iPad mini

if [ $# -lt 2 ]; then
    echo "Usage: $0 <infile> <outfile>"
    exit -1
fi

IN="$1"
OUT="$2"

if [ "${IN##*.}" != "mov" ]; then
    echo "Input file extension must be \".mov\""
    exit -1
fi

if [ "${OUT##*.}" != "mp4" ]; then
    echo "Output file extension must be \".mp4\""
    exit -1
fi

ffmpeg -i "${IN}" -r 24 -s 1280x720 -acodec copy -vcodec libx264 -b:v 1600k -f mp4 "${OUT}"
