#!/bin/bash

# Input from user
OUTPUT_FILE_NAME=$1
NUM_RECORDS=$2

# Variable initialization
SRANDOM=$$
RECORD_COUNT=0

setup() {
  # Remove old file before creating a new one
  rm -rf "$OUTPUT_FILE_NAME"
  touch "$OUTPUT_FILE_NAME"
}

generate_data() {
  echo "Generating $NUM_RECORDS records of data in $OUTPUT_FILE_NAME"
  while [ $RECORD_COUNT -ne "$NUM_RECORDS" ]; do
    RANDOM_STR=$(pwgen -s 100 1)
    echo "$SRANDOM" "$SRANDOM" "$RANDOM_STR" >>"$OUTPUT_FILE_NAME"
    RECORD_COUNT=$(($RECORD_COUNT + 1))
  done
}

setup
generate_data
