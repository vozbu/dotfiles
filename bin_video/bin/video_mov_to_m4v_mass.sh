#!/bin/bash

# Converts each input file with ffmpeg preserving orientation

if [ $# -eq 0 ]; then
    echo "Usage: $0 <filenames>"
fi

while [ $# -gt 0 ]; do
    ext="${1##*.}"
    filename="${1%.*}"
    ~/bin/video_mov_to_m4v.sh "$1" "$filename.m4v"
    shift
done
