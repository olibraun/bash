#!/bin/bash

# Funktion, die in die Logdatei $LOG schreibt
logger(){
  DATETIME=$(date +%Y%m%d-%H:%M:%S)
  echo "MyScript <$$> $DATETIME: $1" >> $LOG
}

# Funktion, die die Logdatei archiviert
archiver(){
  # Checken ob Logs-Ordner existiert
  if [ -d ./Logs ]; then
    logger "Logs-Unterordner existiert, archiviere Log-Datei."
  else
    logger "Logs-Ordner existiert nicht, lege an und verschiebe."
    mkdir Logs
  fi
  # Checken ob Log-Datei mit diesem Namen bereits archiviert wurde
  if [ -f ./Logs/$LOG ]; then
    # benenne Log-Datei um
    DATETIME=$(date +%Y%m%d-%H:%M:%S)
    logger "*********************************************************"
    logger "Eine Log-Datei mit diesem Namen wurde bereits archiviert."
    logger "Benne Log-Datei um in script_$DATETIME.log"
    logger "*********************************************************"
    NEWLOG="script_$DATETIME.log"
    mv $LOG $NEWLOG
    mv $NEWLOG ./Logs
  else
    mv $LOG ./Logs
  fi
}

# Lege Log-Datei "script_" + aktuelles Datum an
DATE=$(date +%Y%m%d)
LOG="./script_$DATE.log";
touch $LOG

# Test für das Log
logger "Start"
sleep 1
logger "Teste Logger"
sleep 1
logger "Teste Logger nochmal"
sleep 1
logger "End"

archiver