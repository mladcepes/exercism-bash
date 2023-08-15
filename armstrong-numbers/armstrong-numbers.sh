#!/usr/bin/env bash

INPUT_NUMBER="$1"
SUM=0

for ((i=0;i<${#INPUT_NUMBER};i++)); do
    DIGIT="${INPUT_NUMBER:i:1}"
    SUM=$((SUM+$((DIGIT ** ${#INPUT_NUMBER} ))))
done

[[ "$SUM" -eq "$1" ]] && echo true || echo false