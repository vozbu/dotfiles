#!/bin/bash

IN="$1"
OUT="${IN%.FIT}.kml"

gpsbabel -i garmin_fit -f "${IN}" -o kml -F ${OUT}
touch "${OUT}" -r "${IN}"
