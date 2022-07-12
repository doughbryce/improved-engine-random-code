const express = require('express');
const hbs = require('hbs');
const path = require('path');

const app = express();
app.set('view engine', 'hbs');
hbs.registerPartials(path.join(__dirname, 'views/partials'))

app.get('/', (req, res) => {
  res.render('index.hbs', {
    school: 'Paly',
    year: new Date().getFullYear(),
    pageTitle: 'Home'
  })
})

app.get('/about', (req, res) => {
  res.render('about.hbs', {
    school: 'Paly',
    year: new Date().getFullYear(),
    pageTitle: 'About'
  })
})

app.listen(3000, () => {
  console.log("Listening on port 3000");
})
