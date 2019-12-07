#!/bin/sh
BASEDIR=$(dirname $0)
echo 'INFO: Files will be created at blog/'
rm $BASEDIR/blog/*.html
echo 'INFO: converting english markdown to html'
pandoc -s -t html5 --self-contained -c $BASEDIR/static/css/cv-html.css -B $BASEDIR/static/html/languages-en.html -o $BASEDIR/blog/en.html $BASEDIR/en/cv.md
echo 'INFO: converting spanish markdown to html'
pandoc -s -t html5 --self-contained -c $BASEDIR/static/css/cv-html.css -B $BASEDIR/static/html/languages-es.html -o $BASEDIR/blog/es.html $BASEDIR/es/cv.md
echo 'INFO: converting french markdown to html'
pandoc -s -t html5 --self-contained -c $BASEDIR/static/css/cv-html.css -B $BASEDIR/static/html/languages-fr.html -o $BASEDIR/blog/fr.html $BASEDIR/fr/cv.md
