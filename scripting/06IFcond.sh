#!/bin/bash


read -p "Enter your age to see if you are eligible to vote: " age

if [ $age -gt 18 ]
then 
   echo "you are eligible to vote"

elif [ $age -eq 18 ]
then 
     echo "apply for a voter id card so that you get to vote"
else 
        echo "you are not eligible to vote"
fi     