#!/bin/bash

if [ $# -gt 0 ]; then
    # url encodes parameters
    echo "$@" | jq -Rr @uri
else
    # url encodes stdin
    cat | jq -Rr @uri
fi
