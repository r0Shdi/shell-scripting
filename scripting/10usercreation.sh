#!/bin/bash


for((i=0; i<=3; i++)){
    read -p "Enter your choice: " choice

    if  [ $choice -eq 1 ]
    then 
        read -p "Enter the UserName: " username
        read -p "Enter the password: " password

        sudo useradd -m -s /bin/bash $username
        echo "$username:$password" |  sudo chpasswd
        echo "User $username created successfully" 

    else 
        break
    fi        

}