#!/bin/bash

checkfile() {
    # Check if the file exists and is a regular file
    if [ -f "$1" ]; then
        echo "File '$1' exists and is a regular file."
    else
        echo "File '$1' does not exist or is not a regular file."
    fi
}


checkfile "addnumberfunction.sh"
