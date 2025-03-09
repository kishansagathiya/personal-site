#!/bin/sh

# If a command fails then the deploy stops
set -e

printf "\033[0;32mDeploying updates to GitHub...\033[0m\n"

# Remove existing public directory
rm -rf public

# Build the project
hugo

# Initialize and configure public directory
cd public
git init
git add .

# Commit changes
msg="rebuilding site $(date)"
if [ -n "$*" ]; then
	msg="$*"
fi
git commit -m "$msg"

# Add the remote repository
git remote add origin git@github.com:kishansagathiya/kishansagathiya.github.io.git

# Force push to the gh-pages branch
git push -f origin master:gh-pages