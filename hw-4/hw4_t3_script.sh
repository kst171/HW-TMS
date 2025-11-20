#!/bin/bash

script_name="$0"
file_name="$1"
new_ext="$2"

# Argument count check
if [ $# -ne 2 ]; then
    echo "Input format: $0 file_name new_extension"
    exit 1
fi

# File existence check
if [ ! -f "$file_name" ]; then
    echo "Error: file '$file_name' not found."
    exit 1
fi

# Extention check
if [[ "$file_name" != *.* ]]; then
    echo "Warning: '$file_name' does not have an extension!"
    read -p "Add new extension .$new_ext? (y/n): " answer
    if [[ "$answer" != "y" && "$answer" != "Y" ]]; then
        echo "Extension not added!"
        exit 0
    fi

# Add new extinsion
new_name="${file_name}.${new_ext}"
    mv "$file_name" "$new_name"
    echo "New extension added: $filename → $new_name"
    exit 1
fi

# Name extraction without extension
    base="${file_name%.*}"

# New name
    new_name="${base}.${new_ext}"

# Rename
    mv "$file_name" "$new_name"
    echo "Successfully: $file_name → $new_name"

