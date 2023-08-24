#!/bin/bash

if [ $# -lt 3 ]; then
    echo "Usage: $0 file_source.txt file_destination.txt output_result.txt"
    exit 1
fi

differences=$(diff $1 $2)

while IFS= read -r line; do
    if [ "${line:0:1}" == '<' ] || [ "${line:0:1}" == '>' ]; then
        echo "${line:2}" >> $3
    fi
done <<< "$differences"
