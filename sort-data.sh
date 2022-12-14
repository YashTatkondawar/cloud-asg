#!/bin/bash

USAGE="Usage: ./sort-data.sh <input_file> <output_file>"

echo $USAGE

FILE=$1

echo "Sorting the data of $FILE..."

# Removes the existing sorted data file
rm -rf sorted_data.txt

# Sorts the data file based on the first column
sort -s -n -k1,1 "$FILE" -o "$FILE"


