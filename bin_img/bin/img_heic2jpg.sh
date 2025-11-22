#!/bin/bash

EXT=heic
for i in *.$EXT; do
    JPG=${i%$EXT}jpg
    if [ -e  "${JPG}" ]; then
        echo "File ${JPG} already exists, abort"
        exit 1
    fi
    heif-convert "$i" "${JPG}" && touch "${JPG}" -r "$i"
done
