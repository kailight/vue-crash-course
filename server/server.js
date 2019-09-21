var express = require('express');
var app = express();
var path = require('path');
var public = path.resolve('webpack/dist');

// viewed at http://localhost:8080
app.get('/', function(req, res) {
  res.sendFile(path.join(public, 'index.html'));
});

app.use('/assets', express.static(path.join(public,'assets')));

app.listen(process.env.PORT || 4004)

console.info('Server is running at port :'+process.env.PORT)
