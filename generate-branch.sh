#!/bin/bash

VERSION="1.0.0"

# Handle command line arguments
if [ "$1" = "--version" ]; then
    echo "gitgen version $VERSION"
    exit 0
fi

# Check if git is available
if ! command -v git >/dev/null 2>&1; then
    echo "Error: git is not installed or not in PATH"
    exit 1
fi

# Get the git user name
username=$(git config user.name | tr '[:upper:]' '[:lower:]' | tr ' ' '-')

if [ -z "$username" ]; then
    echo "Error: Git username is not configured. Please run: git config --global user.name 'Your Name'"
    exit 1
fi

# Generate a random hash (8 characters)
hash=$(date +%s | sha256sum | head -c 8)

# Combine username and hash
branch_name="${username}-${hash}"

# Create and checkout the new branch
git checkout -b "$branch_name"

echo "Created and switched to branch: $branch_name" 