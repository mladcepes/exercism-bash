#!/usr/bin/env bash

if [[ $(($1%3)) == 0 ]]; then RESULT1="Pling"; else RESULT1=""; fi
if [[ $(($1%5)) == 0 ]]; then RESULT2="Plang"; else RESULT2=""; fi
if [[ $(($1%7)) == 0 ]]; then RESULT3="Plong"; else RESULT3=""; fi

RESULT="$RESULT1$RESULT2$RESULT3"

if [[ $RESULT == "" ]]; then echo $1 && exit 0; else echo $RESULT && exit 0; fi