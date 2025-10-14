#!/usr/bin/env bash

set -e
set -u
set -o pipefail

find ./ -maxdepth 1 | while read file;
do
if test -f "$file"
then
    echo "$file es un archivo"
elif test -d "file"
then
    echo "$file es un directorio"
fi
done
