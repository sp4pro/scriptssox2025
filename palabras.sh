#!/usr/bin/env bash
set -e
set -u
set -o pipefail
palabra=""
while [ "$palabra" != ":q" ]; do
 read -p "Escribe una palabra (:q para salir): " palabra
 if [ "$palabra" != ":q" ]; then
 echo "Has escrito: $palabra"
 fi
done
echo "Saliendo del programa..."
