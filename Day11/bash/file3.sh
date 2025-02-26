#!/bin/bash

# Ask for the user's age
read -p "Enter your age: " age

# Ask if the user is Indian
read -p "Are you Indian? (yes/no): " is_indian

# Conditional statements based on user input
if [[ $age -ge 18 ]]; then
    if [[ $is_indian == "yes" ]]; then
        echo "You are an adult and you are Indian."
    else
        echo "You are an adult but you are not Indian."
    fi
else
    if [[ $is_indian == "yes" ]]; then
        echo "You are a minor and you are Indian."
    else
        echo "You are a minor and you are not Indian."
    fi
fi
