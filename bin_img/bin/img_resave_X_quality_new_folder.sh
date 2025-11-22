#!/bin/bash

shopt -s extglob

QUALITY=${1:-85}

FOLDER="resaved$QUALITY"
[[ -d "$FOLDER" ]] && echo "folder $FOLDER already exist, aborting" && exit 1
mkdir "$FOLDER"

CMD="echo {} && magick {} -quality $QUALITY '$FOLDER'/{} && touch '$FOLDER'/{} -r {}"
#echo *.jp?(e)g | tr ' ' '\n' | nice parallel "$CMD"
find . -maxdepth 1 -type f -regextype egrep -iregex '.*.(jpe?g|heic)$' | nice parallel "$CMD"
