#!/bin/bash

# Function to add two numbers
add_numbers() {
    local num1=$1
    local num2=$2
    local sum=$((num1 + num2))
    echo "The sum of $num1 and $num2 is: $sum"
}

# Example usage
read -p "Enter the first number: " number1
read -p "Enter the second number: " number2

add_numbers $number1 $number2
