#!/bin/bash

usage() {
    echo "Usage: $0 [mode] [<string>]"
    echo "Stdin can be used instead of [<string>]"
    echo "Modes:"
    echo " -e - encode URL"
    echo " -d - decode URL"
}

if [ $# -lt 1 ]; then
    usage
    exit 0
fi

MODE=$1
shift
case $MODE in
    "-e") JQ_MODE="@uri" ;;
    "-d") JQ_MODE="@urid" ;;
    *   ) echo "Unknown mode $MODE"; usage; exit 1 ;;
esac

if [ $# -gt 0 ]; then
    # handle parameters
    echo "$@" | jq -Rr $JQ_MODE
else
    # handle stdin
    cat | jq -Rr $JQ_MODE
fi
