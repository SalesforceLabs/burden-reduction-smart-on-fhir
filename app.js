var express = require('express');
var path = require('path');
var app = express();

const port = process.env.PORT || 3000;

const router = require('./router');

app.use('/route', router);

app.set('view engine','ejs');
app.use('/static',express.static(path.join(__dirname, 'public')));
app.use('/assets',express.static(path.join(__dirname, 'public/assets')));

//home route
app.get('/', function (req, res) {
  res.render('home', {title:"Login System"});
});

app.listen(port, function () {
  console.log('SF-FHIR-APP listening on port 3000!');
});