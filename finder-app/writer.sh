#!/bin/sh
if [ "$#" -lt 2 ]; then
    echo "usage: writer.sh <writefile> <writestr>"
    exit 1
fi

WRITE_FILE=$1
WRITE_STR=$2

WRITE_FILE_DIR=$(dirname $WRITE_FILE)
mkdir -p "$WRITE_FILE_DIR"

echo "$WRITE_STR" > "$WRITE_FILE"
