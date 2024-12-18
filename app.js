var express = require('express');
var path = require('path');
var app = express();

const port = process.env.PORT || 3000;

const router = require('./router');
const appInitializer = require('./utils/InitilalizeApp');

app.use('/', router);
app.set('view engine','ejs');
app.use('/static',express.static(path.join(__dirname, 'public')));
app.use('/assets',express.static(path.join(__dirname, 'public/assets')));
app.use('/utils',express.static(path.join(__dirname, 'utils')));


appInitializer.initialize().then(() => {
  app.listen(port, () => {
      console.log(`SF-FHIR-APP listening on port ${port}`);
  });
}).catch(error => {
  console.error('Failed to initialize app', error);
  process.exit(1); 
});

// app.listen(port, function () {
//   console.log('SF-FHIR-APP listening on port 3000!');
// });