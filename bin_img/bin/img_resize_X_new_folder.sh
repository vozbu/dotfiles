#!/bin/bash

shopt -s extglob

SCALE=${1:-50}

FOLDER="resized$SCALE"
[[ -d "$FOLDER" ]] && echo "folder $FOLDER already exist, aborting" && exit 1
mkdir "$FOLDER"

CMD="echo {} && magick convert {} -resize $SCALE% -quality 85 '$FOLDER'/{} && touch '$FOLDER'/{} -r {}"
#echo *.jp?(e)g | tr ' ' '\n' | nice parallel "$CMD"
#find . -maxdepth 1 -type f -iregex '.*.jpe?g'
find . -maxdepth 1 -type f -regextype egrep -iregex '.*.(jpe?g|heic)$' | nice parallel "$CMD"
