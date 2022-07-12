const express = require('express');
const hbs = require('hbs');
const path = require('path');

const app = express();

app.set('view engine', 'hbs');
hbs.registerPartials(__dirname + '/views/partials')
hbs.registerHelper('getCurrentYear', () => {
  return new Date().getFullYear();
})
hbs.registerHelper('yell', (word) => {
  return word.toUpperCase() + "!!!";
})

app.get('/', (req, res) => {
  res.render('index.hbs', {
    school: 'Paly',
    pageTitle: 'Home'
  })
})

app.get('/about', (req, res) => {
  res.render('about.hbs', {
    school: 'Gunn',
    pageTitle: 'About'
  })
})

app.get(/.*ing/, (req, res) => {
  res.send({
    originalUrl: req.originalUrl,
    school: req.query.school,
    class: req.query.class
  })
})

app.listen(3000, () => {
  console.log("Server is up on port 3000");
});
