'use strict';
// python -m markdown -x markdown.extensions.extra en/cv.md
// simple express server
var express = require('express');
var request = require('request');
var fs = require('fs');
var app = express();
var router = express.Router();
var markdown = require( "showdown" ),
    converter = new markdown.Converter();

var mdsource = fs.readFileSync(__dirname + '/en/cv.md', 'utf8');
// console.log("MD SOURCE:\n");
// console.log(mdsource);

converter.setOption('completeHTMLDocument', 'True');
converter.setOption('tables', 'True');
converter.setFlavor('original');

var htmlfrommd = converter.makeHtml(mdsource);
// console.log(htmlfrommd);
fs.writeFile(__dirname + '/cv-en.html', htmlfrommd);

app.use('/static', express.static('static/css/'));
app.get('/', function(req, res) {
  var options = {
	  root: __dirname,
  }
  res.sendFile('cv-en.html', options);
});

// app.post('/contact', [function(req, res, next) {
//   next();
// }, function(req, res) {
//   res.send(req);
// }]);
// app.use('/contact.html', function(req, res) {
//   // var url = 'http://localhost:5051'+ req.url;
//   var url = 'http://localhost:5051'+ '/contact';
//   console.log("Repost url: ", url);
//   var r = null;
//   if(req.method === 'POST') {
//      r = request.post({uri: url, json: req.body});
//   } else {
//      r = request(url);
//   }
//   req.pipe(r).pipe(res);
// });

app.listen(5050);
