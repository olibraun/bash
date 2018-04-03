#!/bin/bash

find -type f -name "*.avi" -exec rename -n 's/.*s(\d{2})e(\d{2}).*/House S$1E$2.avi/i' *.avi {} \;

