#!/bin/sh
BASEDIR=$(dirname $0)
echo 'INFO: converting english markdown to html'
pandoc -t html5 -c $BASEDIR/static/css/cv-pdf.css -o $BASEDIR/tmp-en.html $BASEDIR/en/cv.md
echo 'INFO: converting html to pdf'
wkhtmltopdf --image-dpi 200 -B 0 -L 0 -R 0 -T 2.5 $BASEDIR/tmp-en.html $BASEDIR/cv-pouget-en.pdf
echo 'INFO: converting spanish markdown to html'
pandoc -t html5 -c $BASEDIR/static/css/cv-pdf.css -o $BASEDIR/tmp-es.html $BASEDIR/es/cv.md
echo 'INFO: converting html to pdf'
wkhtmltopdf --image-dpi 200 -B 0 -L 0 -R 0 -T 2.5 $BASEDIR/tmp-es.html $BASEDIR/cv-pouget-es.pdf
echo 'INFO: converting french markdown to html'
pandoc -t html5 -c $BASEDIR/static/css/cv-pdf.css -o $BASEDIR/tmp-fr.html $BASEDIR/fr/cv.md
echo 'INFO: converting html to pdf'
wkhtmltopdf --image-dpi 200 -B 0 -L 0 -R 0 -T 2.5 $BASEDIR/tmp-fr.html $BASEDIR/cv-pouget-fr.pdf
echo 'Deleting temporary html files'
rm $BASEDIR/tmp-*.html
