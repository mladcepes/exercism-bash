#!/usr/bin/env bash
#This is an input field separator
IFS="- *,._"

ACRONYM=""

for word in $1; do
 ACRONYM="${ACRONYM}${word:0:1}"
done

ACRONYM=$(echo "$ACRONYM" | tr '[:lower:]' '[:upper:]')

echo $ACRONYM