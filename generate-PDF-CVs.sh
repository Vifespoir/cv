#!/bin/sh
echo 'INFO: converting english markdown to html'
pandoc -t html5 -c static/css/cv-pdf.css -o tmp-en.html en/cv.md
echo 'INFO: converting html to pdf'
wkhtmltox/bin/wkhtmltopdf --image-dpi 200 -B 0 -L 0 -R 0 -T 2.5 tmp-en.html cv-pouget-en.pdf
echo 'INFO: converting spanish markdown to html'
pandoc -t html5 -c static/css/cv-pdf.css -o tmp-es.html es/cv.md
echo 'INFO: converting html to pdf'
wkhtmltox/bin/wkhtmltopdf --image-dpi 200 -B 0 -L 0 -R 0 -T 2.5 tmp-es.html cv-pouget-es.pdf
echo 'INFO: converting french markdown to html'
pandoc -t html5 -c static/css/cv-pdf.css -o tmp-fr.html fr/cv.md
echo 'INFO: converting html to pdf'
wkhtmltox/bin/wkhtmltopdf --image-dpi 200 -B 0 -L 0 -R 0 -T 2.5 tmp-fr.html cv-pouget-fr.pdf
echo 'Deleting temporary html files'
rm tmp-en.html
rm tmp-es.html
rm tmp-fr.html
