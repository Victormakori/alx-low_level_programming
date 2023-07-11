#!/bin/bash

# Get a list of all .c files in the current directory
files=$(find . -type f -name "*.c")

# Iterate over each file
for file in $files; do
    # Extract the filename without extension
    filename=$(basename "$file" .c)
    
    # Compile the file and generate an output file with the same name
    gcc -Wall -pedantic -Werror -Wextra -std=gnu89 "$file" -o "$filename"
done
