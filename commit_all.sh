#!/bin/bash

# Loop through each file and directory in the current directory
for item in *; do
    # Check if it's a file or directory
    if [ -f "$item" ] || [ -d "$item" ]; then
        # Add and commit the item
        git add "$item"
        git commit -m "Add $item"
    fi
done

# Push changes to the remote repository
git push