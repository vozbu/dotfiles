#!/bin/bash

# Converts each input file with HandBrake.

if [ $# -eq 0 ]; then
    echo "Usage: $0 <filenames>"
fi

while [ $# -gt 0 ]; do
    ext="${1##*.}"
    filename="${1%.*}"
    ~/bin/video_handbrake_from_OP5T.sh "$1" "$filename.m4v"
    shift
done
