const yargs = require("yargs");
// const geocode = require("./geocode/geocode.js");
// const location = require("./geocode/elevation.js");
// const weather = require("./geocode/weather.js");
const axios = require("axios");

const argv = yargs
  .options({
    address: {
      demandOption: true,
      alias: "a",
      describe: "address to fetch",
      string: true,
    }
  })
  .help()
  .alias("help", "h")
  .argv;


  const encodedAddress = encodeURIComponent(argv.a);
  const key = "AIzaSyBMkFGph8H9jngQBsq2-knwot2tRKp1724";
  const geocodeURL = `https://maps.googleapis.com/maps/api/geocode/json?address=${encodedAddress}&key=${key}`;

axios.get(geocodeURL)
.then((response) => {
  if (response.data.status === "ZERO_RESULTS") {
    throw new Error("Unable to find that address");
  }
    const city = response.data.results[0].formatted_address;
    const lat = response.data.results[0].geometry.location.lat;
    const lng = response.data.results[0].geometry.location.lng;
    const key = "a8cd7fb6e581bffef4e80657a875b1ab";

    console.log("Weather information for: " + city);

    const darkskyURL = `https://api.darksky.net/forecast/${key}/${lat},${lng}`
    return axios.get(darkskyURL)
  })
  .then((response) => {
    if (response.data.error) {
      throw new Error("The given location was invalid")
    }
    const info = response.data.currently;
    const temp = response.data.currently.temperature;
    const feelsLike = response.data.currently.apparentTemperature;
    const wind = response.data.currently.windSpeed;
    const climate = response.data.currently.icon;

    console.log(`Current temperature is: ${temp}, but it feels like ${feelsLike}`);
    console.log(`Current wind speed is: ${wind} mph`);
    console.log(`The weather is: ${climate}`);

    // Gets weather icon
      const iconVar = info.icon;

      if (iconVar === 'clear-day') {
        console.log('☀️');
      } else if (iconVar === 'clear-night') {
        console.log('🌙');
      } else if (iconVar === 'rain') {
        console.log('🌧');
      } else if (iconVar === 'snow') {
        console.log('🌨');
      } else if (iconVar === 'sleet') {
        console.log('🌦');
      } else if (iconVar === 'wind') {
        console.log('💨');
      } else if (iconVar === 'fog') {
        console.log('🌫');
      } else if (iconVar === 'cloudy') {
        console.log('☁️');
      } else if (iconVar === 'partly-cloudy-day') {
        console.log('🌥');
      } else if (iconVar === 'partly-cloudy-night') {
        console.log('🌥🌙');
      } else {
        console.log('');
      }
  })
  .catch((error) => {
  console.log(error.message);
  })
