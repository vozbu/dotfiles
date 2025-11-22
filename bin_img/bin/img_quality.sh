#!/bin/bash

if [ $# -lt 1 ]; then
    echo "Usage: $0 <filename> ..."
    exit 1
fi

CMD="echo -n {} ' '; identify -verbose {} | grep -i quality"
LIST=""
for i in "$@"; do
    LIST="$LIST$i;"
done
echo "$LIST" | tr ';' '\n' | nice parallel "$CMD"
