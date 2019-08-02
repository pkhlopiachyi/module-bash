#!/bin/bash

map(){ #use function to all arguments
cmd=$1 #put value of first arguement in variable cmd
while test ${#} -gt 1 #create cycle and run it while number of arguments >1
do
    shift # rename parametr from n+1 in type $1
    eval $cmd "$1" #unite arguments in single rommand and after this running by the shell
done
}
