#!/bin/bash

# Получает на вход имена файлов (возможно, с путем), и заменяет в них расширение на его же в нижнем регистре
# Например: ./fix_ext.sh aa/bb/c.b.JpG заменит имя файла на aa/bb/c.b.jpg

if [ $# -lt 1 ]; then
    echo "Usage: $0 filename ..."
    exit 1
fi

while [ $# -gt 0 ]; do
    FILE=$1
    EXT=${FILE##*.}

    if [[ $EXT == $FILE ]]; then
        # У файла нет расширения
        continue
    fi

    typeset -l EXT_LO=$EXT

    if [[ $EXT_LO == $EXT ]]; then
        # Расширение файла уже в нижнем регистре
        continue
    fi

    mv -i "$FILE" "${FILE%$EXT}$EXT_LO"
    shift
done
