#!/bin/bash
line=""
for i in $(echo $1 | tr ";" "\n")
do
    line=$(ls -R | grep $i)
    if [[ -n $line  ]]; then
        echo $line | tr " " "\n"
    else
        echo "the searched PATH is unexisting"
    fi
done
