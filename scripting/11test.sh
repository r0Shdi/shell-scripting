#!/bin/bash

a=0
b=9

x=""
y="caring"

if test "$x" = "$y"
then
    echo "True"
else
    echo "False"
fi



if test "$a" -le "$b"
then
    echo "True"
else
    echo "False"
fi




if test -z "$x" 
then
    echo "empty"
else
    echo "not empty"
fi


if test -s a.txt
then
    
    echo $(cat a.txt)
    echo "file not empty"
else
    echo "file empty"
fi





if test -d xy
then
    echo "it is a directory"
else
    echo "it is not a directory"
fi

