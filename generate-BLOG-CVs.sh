#!/bin/sh
CURRENT_DATE=$(/bin/date +%Y-%m-%d)
echo 'INFO: Files will be created at blog/'
rm blog/cv-*.html
echo 'INFO: converting english markdown to html'
pandoc -s -t html5 --self-contained -c static/css/cv-html.css -B static/html/languages-en.html -o blog/cv-en-$CURRENT_DATE.html en/cv.md
echo 'INFO: converting spanish markdown to html'
pandoc -s -t html5 --self-contained -c static/css/cv-html.css -B static/html/languages-es.html -o blog/cv-es-$CURRENT_DATE.html es/cv.md
echo 'INFO: converting french markdown to html'
pandoc -s -t html5 --self-contained -c static/css/cv-html.css -B static/html/languages-fr.html -o blog/cv-fr-$CURRENT_DATE.html fr/cv.md
