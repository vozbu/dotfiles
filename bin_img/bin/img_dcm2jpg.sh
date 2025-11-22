#!/bin/bash

for i in *; do
    JPG=${i}.jpg
    if [ -e  "${JPG}" ]; then
        echo "File ${JPG} already exists, abort"
        exit 1
    fi
    dcmj2pnm "${i}" "${JPG}" +Wm && touch "${JPG}" -r "$i"
done
