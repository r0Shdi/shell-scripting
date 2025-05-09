#!/bin/bash

for ((i = 0; i <= 3; i++)); do
    read -p "Enter your choice (1 to create user, anything else to exit): " choice

    if [ "$choice" -eq 1 ]; then
        read -p "Enter the UserName: " username
        read -s -p "Enter the password: " password
        echo

        # Check if user already exists
        if id "$username" &>/dev/null; then
            echo "User $username already exists."
            continue
        fi

        # Generate a unique ID above 500 (macOS system users use 0–500)
        uid=$(dscl . -list /Users UniqueID | awk '{print $2}' | sort -n | tail -1)
        uid=$((uid + 1))

        # Create user
        sudo dscl . -create /Users/$username
        sudo dscl . -create /Users/$username UserShell /bin/bash
        sudo dscl . -create /Users/$username RealName "$username"
        sudo dscl . -create /Users/$username UniqueID "$uid"
        sudo dscl . -create /Users/$username PrimaryGroupID 20
        sudo dscl . -create /Users/$username NFSHomeDirectory /Users/$username
        sudo dscl . -passwd /Users/$username "$password"
        sudo createhomedir -c -u $username > /dev/null

        echo "User $username created successfully on macOS."
    else
        break
    fi
done
