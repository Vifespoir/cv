#!/bin/sh
echo 'INFO: converting english markdown to html'
pandoc -s -t html5 --self-contained -c static/css/cv-html.css -B static/html/languages-en.html -o cv-en.html en/cv.md
echo 'INFO: converting spanish markdown to html'
pandoc -s -t html5 --self-contained -c static/css/cv-html.css -B static/html/languages-es.html -o cv-es.html es/cv.md
echo 'INFO: converting french markdown to html'
pandoc -s -t html5 --self-contained -c static/css/cv-html.css -B static/html/languages-fr.html -o cv-fr.html fr/cv.md
