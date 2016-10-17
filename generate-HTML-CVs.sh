#!/bin/sh
BASEDIR=$(dirname $0)
echo 'INFO: converting english markdown to html'
pandoc -s -t html5 --self-contained -c $BASEDIR/static/css/cv-html.css -B $BASEDIR/static/html/languages-en.html -o $BASEDIR/cv-en.html $BASEDIR/en/cv.md
echo 'INFO: converting spanish markdown to html'
pandoc -s -t html5 --self-contained -c $BASEDIR/static/css/cv-html.css -B $BASEDIR/static/html/languages-es.html -o $BASEDIR/cv-es.html $BASEDIR/es/cv.md
echo 'INFO: converting french markdown to html'
pandoc -s -t html5 --self-contained -c $BASEDIR/static/css/cv-html.css -B $BASEDIR/static/html/languages-fr.html -o $BASEDIR/cv-fr.html $BASEDIR/fr/cv.md
