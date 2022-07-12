// Require necessary dependencies
const express = require('express');
const hbs = require('hbs');
const path = require('path');
const axios = require('axios');
// Set up the app
const app = express();
// Make public visible
app.use(express.static(path.join(__dirname, 'public')))
// Helpers and Partials
hbs.registerPartials(__dirname + '/views/partials')
// Set routes
  // Home
app.get('/', (req, res) => {

  const geocodeURL = `https://maps.googleapis.com/maps/api/geocode/json?address=94301&key=AIzaSyBMkFGph8H9jngQBsq2-knwot2tRKp1724`;
  axios.get(geocodeURL).then((response) => {
      const lat = response.data.results[0].geometry.location.lat;
      const lng = response.data.results[0].geometry.location.lng;
      const darkskyURL = `https://api.darksky.net/forecast/a8cd7fb6e581bffef4e80657a875b1ab/${lat},${lng}`
      return axios.get(darkskyURL)
    })
    .then((response) => {
      temp = response.data.currently.temperature;
      res.render('index.hbs', {
        cityName: 'Home',
        temperature: temp,
        year: new Date().getFullYear()
      });
    })
    .catch((error) => {
      res.status(404).send();
    })
})
  // New York
app.get('/newYorkCity', (req, res) => {

  const geocodeURL = `https://maps.googleapis.com/maps/api/geocode/json?address=10024&key=AIzaSyBMkFGph8H9jngQBsq2-knwot2tRKp1724`;
  axios.get(geocodeURL).then((response) => {
      const lat = response.data.results[0].geometry.location.lat;
      const lng = response.data.results[0].geometry.location.lng;
      const darkskyURL = `https://api.darksky.net/forecast/a8cd7fb6e581bffef4e80657a875b1ab/${lat},${lng}`
      return axios.get(darkskyURL)
    })
    .then((response) => {
      temp = response.data.currently.temperature;
      res.render('newYorkCity.hbs', {
        cityName: 'New York City',
        temperature: temp,
        year: new Date().getFullYear()
      })
    })
    .catch((error) => {
      res.status(404).send();
    })
})
  // Park city
app.get('/parkCity', (req, res) => {
  const geocodeURL = `https://maps.googleapis.com/maps/api/geocode/json?address=84098&key=AIzaSyBMkFGph8H9jngQBsq2-knwot2tRKp1724`;
  axios.get(geocodeURL).then((response) => {
      const lat = response.data.results[0].geometry.location.lat;
      const lng = response.data.results[0].geometry.location.lng;
      const darkskyURL = `https://api.darksky.net/forecast/a8cd7fb6e581bffef4e80657a875b1ab/${lat},${lng}`
      return axios.get(darkskyURL)
    })
    .then((response) => {
      temp = response.data.currently.temperature;
      res.render('parkCity.hbs', {
        cityName: 'Park City',
        temperature: temp,
        year: new Date().getFullYear()
      })
    })
    .catch((error) => {
      res.status(404).send();
    })
});
  // Venice
app.get('/venice', (req, res) => {
  const geocodeURL = `https://maps.googleapis.com/maps/api/geocode/json?address=90291&key=AIzaSyBMkFGph8H9jngQBsq2-knwot2tRKp1724`;
  axios.get(geocodeURL).then((response) => {
      const lat = response.data.results[0].geometry.location.lat;
      const lng = response.data.results[0].geometry.location.lng;
      const darkskyURL = `https://api.darksky.net/forecast/a8cd7fb6e581bffef4e80657a875b1ab/${lat},${lng}`
      return axios.get(darkskyURL)
    })
    .then((response) => {
      temp = response.data.currently.temperature;
      res.render('venice.hbs', {
        cityName: 'Venice',
        temperature: temp,
        year: new Date().getFullYear()
      })
    })
    .catch((error) => {
      res.status(404).send();
    })
});
// START SERVER ON PORT 3000
app.listen(3000, () => {
  console.log("Server is up on port 3000");
});
