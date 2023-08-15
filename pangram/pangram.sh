#!/usr/bin/env bash

INPUT_SENTENCE="$1"
ALPHABET="abcdefghijklmnopqrstuvwxyz"

IS_PANGRAM=true

for LETTER in $(echo "$ALPHABET" | grep -o .); do
    [[ ! "${INPUT_SENTENCE,,}" == *"${LETTER,,}"* ]] && IS_PANGRAM=false #{$var,,} converts var to lowercase
done

[ "$IS_PANGRAM" = true ] && echo true || echo false