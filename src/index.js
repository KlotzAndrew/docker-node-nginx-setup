var express = require('express');
var os = require('os');

var app = express();
var hostname = os.hostname();

app.get('/', function(req, res) {
  res.send('<html><body>Hello from Node.js container ' + hostname + '</body></html>');
});

app.listen(3000, function () {
  console.log('Running on port 3000!');
});

