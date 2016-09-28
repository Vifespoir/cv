mogrify -resize x50 -quality 100 -path small/ *.png
mogrify -background none -gravity center -extent 200x50 -quality 100 -path extended/ small/*.png

pandoc -t html5 -c ../static/css/cv-html.css -o cv-html.html cv-final.md
pandoc -t html5 -c ../static/css/cv-pdf.css -o cv-pdf.html cv-final.md

../wkhtmltox/bin/wkhtmltopdf -B 0 -L 0 -R 0 -T 2.5 cv-pdf.html cv-final.pdf

