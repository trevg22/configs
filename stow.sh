#!/usr/bin/env bash 

# Loop through all directories in the current folder
for dir in */; do
    # Use Stow to symlink the directory into ~/.config
    stow -t ~/.config "${dir%/}"
done

