#!/bin/bash


read -p "Enter the File Name: " filename
read -p "Enter the File Content: " content
read -p "How Many files do you want to create: " num


for ((i=0; i<num; i++))
do 
if [ ! -d "dir" ]
then
mkdir dir
fi
touch ./dir/$filename$i.txt
echo $content > dir/$filename$i.txt
done

