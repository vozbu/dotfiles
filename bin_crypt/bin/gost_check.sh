#!/bin/bash

# Получает на вход имя проверяемого файла.
# Предполагает, что если к имени дописать ".sig" - там будет файл с подписью.

if [ $# -lt 1 ]; then
    echo "Usage: `basename $0` <filename>"
    exit 1
fi

FN="$1"
# Пробуем к имени файла добавить .sig
SN1="$FN.sig"
# Пробуем к имени файла без расширения добавить .sig
FN_WO_EXT="${FN%.*}"
SN2="$FN_WO_EXT.sig"

if (stat "$SN1" > /dev/null 2>&1); then
    SN="$SN1"
elif (stat "$SN2" > /dev/null 2>&1); then
    SN="$SN2"
else
    echo "Can't stat neither '$SN1' nor '$SN2'" > /dev/stderr
    exit 1
fi

# Думали, что файл с подписью заенкожен в base64, но нет.
# TMP=`mktemp`
# base64 -d "$SN" > "$TMP"

openssl smime -verify -in "$SN" -inform DER -content "$FN" -noverify -out /dev/null
