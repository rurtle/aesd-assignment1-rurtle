#!/bin/bash

## Making sure the script accepts only 2 arguments
if [ $# -ne 2 ]; then
    echo "Error: Two arguments are required."
    exit 1
fi

writefile=$1
writestr=$2

## Making sure the directory exists
if [ ! -d "$(dirname "$writefile")" ]; then
    mkdir -p "$(dirname "$writefile")"
fi

## Writing the string to the file
echo "$writestr" > "$writefile"

if [ $? -ne 0 ]; then
    echo "Error: Could not create file $writefile"
    exit 1
fi