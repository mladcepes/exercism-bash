#!/bin/bash

strand1="$1"
strand2="$2"

if [ $# -ne 2 ]; then
    echo "Usage: $0 <string1> <string2>"
    exit 1
fi

# Check if the strands are of equal length
if [ ${#strand1} -ne ${#strand2} ]; then
    echo "Error: strands must be of equal length"
    exit 1
fi

# Calculate the Hamming Distance
hamming_distance=0

for (( i = 0; i < ${#strand1}; i++ )); do
    if [ "${strand1:i:1}" != "${strand2:i:1}" ]; then
        (( hamming_distance++ ))
    fi
done

echo "$hamming_distance"