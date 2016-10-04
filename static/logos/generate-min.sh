#!/bin/sh

# Resize Logos and give them a them a 200px witdth filling with transparent pixels

# echo 'Generating logos ...'
mogrify -resize x50 -quality 100 -path logos/small/ logos/*.png
mogrify -background none -gravity center -extent 200x50 -quality 100 -path logos/extended/ logos/small/*.png
echo 'Logos generated'
