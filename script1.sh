#!/usr/bin/env bash
set -e
set -u
#set -o pipeline

if [ $# -ne 1 ]; then
   echo "Ús: $0 <ruta_arxiu>"
   exit 1
fi

RUTA="$1"

if [ -e "$RUTA" ]; then
   echo "L'arxiu '$RUTA' existeix"
else
   echo "L'arxiu '$RUTA' no existeix."
fi
