#!/bin/bash

# Получает на вход имя файла с подписью.
# Выводит данные сертификата из подписи.
# Магия с sed и urlq нужна для раскодировки bask-slash последовательностей, но можно и без нее.

SN="$1"

openssl pkcs7 -in "$SN" -inform der -print_certs -noout -text | sed -r 's/\\\x/%/g' | urlq -d
