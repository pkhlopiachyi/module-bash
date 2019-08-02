#!/bin/bash

if [ -z $2 ];
then
    echo "0"
    exit 0
fi

if ! [[ $2 =~ [[:digit:]] ]];
then
    echo "Error.."
    exit 1
fi

line=""
mode=$1
sum=0
odd_sum=0
even_sum=0
number=0

while [ "$#" -gt "0" ]
do
    if ! [ "$number" == "0" ];
    then
        let sum+=$1
    fi
    let number+=1
    if [ "$mode" == "-o" ];
    then
        if [ $(($1 % 2)) == 1 ];
        then
            let odd_sum=$1
        fi
    fi
    if [ "$mode" == "-e" ];
    then
        if [ $(($1 % 2)) == 0 ];
        then
            let even_sum+=$1
        fi
    fi
    shift
done
let number-=1
if [ "$mode" == "-m" ];
then
    echo $[$sum/$number] | bc
elif [ "$mode" == "-o" ];
then
    echo $odd_sum | bc
elif [ "$mode" == "-e" ];
then
    echo $even_sum | bc
elif [ "$mode" == "-s" ];
then
    echo $sum | bc
else
    echo "Error.."
    exit 1
fi
