#!/bin/bash

if [ "$#" -lt 2 ]; then
    echo "Error: Incorrect number of arguments"
    echo "Usage: writer.sh <writefile> <writestr>"
    exit 1
fi

WRITE_FILE="$1"
shift
WRITE_STR="$@"

mkdir -p $(dirname $WRITE_FILE)
echo $WRITE_STR > $WRITE_FILE
