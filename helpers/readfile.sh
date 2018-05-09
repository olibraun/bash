#!/bin/bash
# How to read the contents of a file line by line

file="testfile"

while read -r x; do
  echo ${x};
done < ${file}
