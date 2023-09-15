#!/bin/bash

# Create the "js" directory if it doesn't exist
mkdir -p js

# Create a new JavaScript file
create_js_file() {
    filename="$1.js"
    touch "js/$filename"
    echo "// JavaScript code for $1" >> "js/$filename"
}

# Create JavaScript files for different purposes
create_js_file "main"
create_js_file "functions"
create_js_file "animations"

# Add any other JavaScript files as needed
