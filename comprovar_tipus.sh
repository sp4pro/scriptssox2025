#!/usr/bin/env bash
set -e
set -u
set -o pipefail

RUTA="$1"

if [ -d "$RUTA" ]; then
   echo "És un directori."
elif [ -f "$RUTA" ]; then
   echo "És un fitxer."
else
   echo "No existeix o no és ni fitcher ni directori."
fi

