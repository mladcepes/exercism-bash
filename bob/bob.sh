#!/usr/bin/env bash
input="$1"

# Remove leading and trailing whitespace
input_trimmed="$(echo -e "${input}" | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//')"

# Check for different response conditions
if [[ $input_trimmed =~ [[:upper:]] ]] && [[ ! $input_trimmed =~ [[:lower:]] ]] && [[ ${input_trimmed: -1} == "?" ]]; then
    echo "Calm down, I know what I'm doing!"
elif [[ ${input_trimmed: -1} == "?" ]]; then
    echo "Sure."
elif [[ $input_trimmed =~ [[:upper:]] ]] && [[ ! $input_trimmed =~ [[:lower:]] ]]; then
    echo "Whoa, chill out!"
elif [[ -z $input_trimmed ]] || [[ ! $input_trimmed =~ [0-9a-zA-Z] ]]; then
    echo "Fine. Be that way!"
else
    echo "Whatever."
fi