#!/bin/sh

# Resize Icons

# echo 'Generating Icons ...'
mogrify -resize x50 -quality 100 -path icons/small/ icons/*.png
mogrify -background none -gravity center -extent 50x50 -quality 100 -path icons/extended/ icons/small/*.png
echo 'Icons generated'
