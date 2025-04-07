#!/bin/bash
# password comparison using bcrypt
read -p "Enter the password: " password
echo $password > password.txt

bcrypt password.txt


read -p "Enter the password again: " rpassword

decrypted=$(bcrypt -o password.txt.bfe)
rm password.txt.bfe

if [ "$decrypted" == "$rpassword" ]; then
    echo "Password is correct"
else
    echo "Password is incorrect"
fi




