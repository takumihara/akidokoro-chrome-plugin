#!/bin/bash

# Ensure the images directory exists
mkdir -p ../images

# Generate different sizes of the logo using ffmpeg
ffmpeg -i ../images/logo.png -vf scale=16:16 ../images/icon-16.png
ffmpeg -i ../images/logo.png -vf scale=32:32 ../images/icon-32.png
ffmpeg -i ../images/logo.png -vf scale=48:48 ../images/icon-48.png
ffmpeg -i ../images/logo.png -vf scale=128:128 ../images/icon-128.png

echo "Images generated successfully."
