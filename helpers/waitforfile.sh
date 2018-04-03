#!/bin/bash

# Script that waits for the file passed in as an argument.
# If no file name is provided, the script will not execute.

FILENAME=$1

if [ $# -eq 0 ]; then
  echo "No arguments provided, exiting."
else
  echo "Start waiting for file $FILENAME."

  while (! [ -f ./$FILENAME ] ); do
    sleep 1
  done
  
  echo "File $FILENAME found."
fi