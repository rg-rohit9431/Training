#!/bin/bash
read -p "Enter a number between 1 and 10: " number
if [[ $number -ge 1 && $number -le 10 ]]; then
    echo "Valid number: $number"
else
    echo "Invalid number. Please enter a number between 1 and 10."
fi
