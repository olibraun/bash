#!/bin/bash

### rename Syntax für Regex dder Gestalt 's/SUCHSTRING/ERSETZUNGSSTRING/MODIFIKATOR'
## Selektoren
# \w Jeder Buchstabe, jede Zahl, Unterstrich
# \d Jede Zahl
# \s Jedes Leerzeichen
# .  Ein beliebiges Zeichen
# [abc] Jedes in der eckigen Klammer eingeschlossene Zeichen
# [^abc] Alle Zeichen, die nicht in der eckigen Klammer sind
# ^  Anfang des Dateinamens
# $  Ende des Dateinamens
# \  Maskiert das folgende Zeichen

## Quantifizierer
# *  0 bis unendlich
# +  1 bis unendlich
# ?  0 oder einmal
# {m,}  mindestens m mal
# {,n}  höchstens n mal
# {m,n}  mindetens m-mal und maximal n-mal.

## Modfizierer
# g  Alle Vorkommen des Suchstrings ersetzen (global)
# i Groß- und Kleinschreibung nicht beachten (case-insensitive)

## Sonstiges
# ()  Gruppierung einer Zeichenkette zur späteren Verwendung
# |   oder-Operator
# \1, \2  erste, zweite usw. Gruppierung im Suchstring
# $1, $2  erste, zweite usw. Gruppierung im Ersetzungsstring

### Beispiele

# Umbenennen aufgeteilter Filme iun [Filmename].partX.avi
rename 's/(\w*)\s{1}(\d{1})(\w*)/$1.part$2$3/g' *.avi

