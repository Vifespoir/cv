# CV Generator

Uses the following libraries:
* [Pandoc](http://pandoc.org/) to convert from Markdown to HTML,
* [wkhtmltopdf](http://wkhtmltopdf.org/) to convert from HTML to PDF,
* [Imagemagick](http://www.imagemagick.org) to bulk edit images

## Static

Contains all the static element of the CV. The most important being the CSS stylesheet.

This stylesheet has been designed to render a minimalistic CV. It uses tricks such as transparency in order to ensure that grayscale printing will not make paragraphs pop out too much to the reader's eyes.

There is an issue with wkhtmltopdf that changes slightly the way the CV is rendered. In order to correct it PDF generation uses a different css.

## Language folders: en, es, fr

Each contains a Markdown file named cv.md to generate the cv.

This could be slightly improved with the use of a markdown extension that would allow custom styling...

## Bash script

generate-CVs.sh is a bash script to create all PDF from language folders.
