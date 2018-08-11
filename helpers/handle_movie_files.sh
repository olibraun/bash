#!/bin/bash

# 1) Suche nach Dateien, die auf ").mkv" enden - dies sind korrekt benamte Filmdateien
# 2) Erzeuge Ordner, der so wie die Datei heißt, ohne die Endung .mkv
# 3) Verschiebe Dateien in korrespondierende Ordner

find *\).mkv | while IFS= read -r f; do
  f_ohne="${f%.mkv}"
  echo "$f_ohne"
  mkdir "$f_ohne"
  mv "$f" "$f_ohne"
done