#!/usr/bin/env bash
set -e
set -u
set -o pipefail

if [ $# -ne 1 ]; then
 echo "Ús: $0 <ruta_fitxer>"
 exit 1
fi
fitxer="$1"

if [ ! -e "$fitxer" ]; then
 echo "El fitxer '$fitxer' no existeix."
 exit 1
fi

if [ -r "$fitxer" ]; then
 echo "Té permís de lectura"
else
 echo "No té permís de lectura"
fi
if [ -w "$fitxer" ]; then
 echo "Té permís d'escriptura"
else
 echo "No té permís d'escriptura"
fi
if [ -x "$fitxer" ]; then
 echo "Té permís d'execució"
else
 echo "No té permís d'execució"
fi
