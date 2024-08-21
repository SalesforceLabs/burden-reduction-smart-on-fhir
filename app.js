var express = require('express');
var path = require('path');
var app = express();

const port = process.env.PORT || 3000;

const router = require('./router');
const cards = require('./data/cards');
const systemActions = require('./data/systemActions');

app.use('/route', router);

app.set('view engine','ejs');
app.use('/static',express.static(path.join(__dirname, 'public')));
app.use('/assets',express.static(path.join(__dirname, 'public/assets')));



//home route
app.get('/', function (req, res) {
  res.render('home', {title:"Login System"});
});

/* to use crdResponse view, use it like this
app.get('/', function (req, res) {
  res.render('crdResponse', {title:"CRD Response", cards: cards, systemActions: systemActions});
});*/

app.listen(port, function () {
  console.log('SF-FHIR-APP listening on port 3000!');
});