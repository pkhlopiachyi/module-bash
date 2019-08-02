#!/bin/bash

if [[ $# != 1 ]];
then
    echo "Too many(few) arguments"
    exit 1
fi

if ! [ -f $1 ];
then
    echo "Error.."
    exit 1
fi

result=""

result+=$(grep -o 0 "$1" | wc -l)
result+=" zeroes, "
result+=$(grep -o 1 "$1" | wc -l)
result+=" ones, "
result+=$(grep -o 2 "$1" | wc -l)
result+=" twoes, "
result+=$(grep -o 3 "$1" | wc -l)
result+=" threes, "
result+=$(grep -o 4 "$1" | wc -l)
result+=" fours, "
result+=$(grep -o 5 "$1" | wc -l)
result+=" fives, "
result+=$(grep -o 6 "$1" | wc -l)
result+=" sixs, "
result+=$(grep -o 7 "$1" | wc -l)
result+=" sevens, "
result+=$(grep -o 8 "$1" | wc -l)
result+=" eights, "
result+=$(grep -o 9 "$1" | wc -l)
result+=" nines"

echo "$result"
