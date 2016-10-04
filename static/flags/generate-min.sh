#!/bin/sh

# Resize Flags and give them a 2px transparent border and add 70 transparent pixels to the left

# echo 'Generating Flags ...'
mogrify -resize x46 -quality 100 -path flags/small/ flags/*.png
mogrify -background none -gravity west -extent 120x50 -quality 100 -path flags/extended/ flags/small/*.png
echo 'Flags generated'
