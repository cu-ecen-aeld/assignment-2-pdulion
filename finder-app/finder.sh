#!/bin/bash

if [ "$#" -lt 2 ]; then
    echo "Error: Missing arguments"
    echo "Usage: finder.sh <filesdir> <searchstr>"
    exit 1
fi

FILES_DIR="$1"
shift
SEARCH_STR="$@"

if [ ! -d "$FILES_DIR" ]; then
    echo "Error: Directory $FILES_DIR does not represent a directory on the filesystem"
    exit 1
fi

FILE_COUNT=$(find "$FILES_DIR" -type f | wc -l)
LINE_COUNT=$(find "$FILES_DIR" -type f | xargs grep "$SEARCH_STR" | wc -l)

echo "The number of files are $FILE_COUNT and the number of matching lines are $LINE_COUNT"
