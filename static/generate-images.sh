#!/bin/sh

######################
###USE WITH CAUTION###
######################

# to be improved

mogrify -resize x50 -quality 100 -path small/ *.png
mogrify -background none -gravity center -extent 200x50 -quality 100 -path extended/ small/*.png
