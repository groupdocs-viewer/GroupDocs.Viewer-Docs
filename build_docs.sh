#!/bin/bash

PRODUCT="viewer"
DESTINATION="common/content/$PRODUCT"

git submodule update --init --recursive
git submodule foreach git pull origin master

# Creating the destination directory if it doesn't exist
mkdir -p "$DESTINATION"

# Copying directories and their contents recursively
cp -r java "$DESTINATION"
cp -r net "$DESTINATION"
cp -r python-net "$DESTINATION"

cp -r nodejs-java "$DESTINATION"

# Copying files and directories, overwriting without asking
cp -r -u _index.md "$DESTINATION"

cd common
hugo server --config config-geekdoc.toml,ignore-total-config.toml,show-feedback-config.toml
