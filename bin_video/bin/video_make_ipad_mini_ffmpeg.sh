#!/bin/bash

# Converts video for playing on iPad mini

if [ $# -lt 2 ]; then
    echo "Usage: $0 <infile> <outfile>"
    exit -1
fi

IN="$1"
OUT="$2"

if [ "${OUT##*.}" != "mp4" ]; then
    echo "Output file extension must be \".mp4\", not \"${OUT##*.}\""
    exit -1
fi

# не работает
#ffmpeg -i "${IN}" -acodec aac -ab 160000 -s 1024x768 -vcodec libx264 -vpre ipod640 -b 1200k -threads 0 -strict -2 -f mp4 "${OUT}"
# работает
#ffmpeg -i "${IN}" -acodec aac -ab 160000 -s 1024x768 -vcodec libx264 -profile:v main -level 3.1 -preset veryslow -crf 23 -x264-params ref=4 -movflags +faststart -threads 0 -strict -2 "${OUT}"
# не работает
#ffmpeg -i "${IN}" -acodec aac -ab 160000 -s 1024x768 -vcodec libx264 -profile:v main -level 3.1 -crf 23 -x264-params ref=4 -movflags +faststart -threads 0 -strict -2 -map 0:m:language:eng "${OUT}"
# не тестировал
ffmpeg -i "${IN}" -c:v libx265 -crf 26 -preset fast -c:a aac -b:a 128k -tag:v hvc1 "${OUT}"
