#!/bin/bash

# Define the name of the zip file
ZIP_FILE="akidokoro-chrome-plugin.zip"

# Define the files and directories to include in the zip file
INCLUDE_FILES=(
  "manifest.json"
  "popup.html"
  "popup.js"
  "popup.css"
  "images/icon-16.png"
  "images/icon-32.png"
  "images/icon-48.png"
  "images/icon-128.png"
)

# Remove the existing zip file if it exists
if [ -f $ZIP_FILE ]; then
  rm $ZIP_FILE
fi

# Create the zip file
zip -r "build/${ZIP_FILE}" "${INCLUDE_FILES[@]}"
