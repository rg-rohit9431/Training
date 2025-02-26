#!/bin/bash

# Display the menu
echo "Select an option:"
echo "1. Start Service"
echo "2. Stop Service"
echo "3. Restart Service"
read -p "Enter your choice: " choice

# Handle the user input
case $choice in
    1)
        echo "Starting the service..."
        ;;
    2)
        echo "Stopping the service..."
        ;;
    3)
        echo "Restarting the service..."
        ;;
    *)
        echo "Invalid choice. Please select 1, 2, or 3."
        ;;
esac
