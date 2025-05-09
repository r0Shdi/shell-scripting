#!/bin/bash

read -p "Enter Your Grade: " grade

case $grade in 
     A) 
        echo "You mark is 90% or above"
     ;;
     B)
        echo "Your mark is between 80% 89%"
     ;;
     C)
        echo "Your mark is between 70% 79%"
     ;;
     *)
        echo "Your mark is below 70%"
        ;;
esac   
  

