#!/bin/zsh
export PRODUCT=viewer

git submodule update --init --recursive
git submodule foreach git pull origin master

# Use rsync --delete to mirror the source into common/content — unlike cp -r,
# --delete removes destination files that no longer exist in the source, so
# moved/renamed pages don't leave stale copies that cause Hugo REF_NOT_FOUND
# errors or 404s on _output_files downloads.
for sub in java net nodejs-java python-net; do
    mkdir -p "common/content/$PRODUCT/$sub"
    rsync -a --delete "$sub/" "common/content/$PRODUCT/$sub/"
done
cp _index.md "common/content/$PRODUCT/"
cd common
hugo server
