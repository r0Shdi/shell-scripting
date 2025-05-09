#!/bin/bash


read -p "first number: " n1
read -p "first number: " n2


echo "1. Add" $((n1+n2))
echo "2. Subtract" $((n1-n2))
echo "3. Multiply" $((n1*n2))
echo "4. Divide" $((n1/n2))
echo "5. Modulus" $((n1%n2))
echo "6. Exponentiation" $((n1**n2))


if [ $n1 -gt $n2 ] 
then
    echo "$n1 is greater than $n2"
elif [ $n1 -lt $n2 ] 
then
    echo "$n1 is less than $n2"
elif [ $n1 -eq $n2 ] 
then
    echo "$n1 is equal to $n2"
else
    echo "Invalid input"
fi




