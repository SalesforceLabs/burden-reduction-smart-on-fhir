var express = require('express');
var app = express();
app.get('/', function (req, res) {
  res.send('Salesfoce SMART on FHIR APP!');
});
app.listen(3000, function () {
  console.log('SF-FHIR-APP listening on port 3000!');
});