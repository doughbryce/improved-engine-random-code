const yargs = require("yargs");
const geocode = require("./geocode/geocode.js");
const location = require("./geocode/elevation.js");
const weather = require("./geocode/weather.js");

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

geocode.geocodeAddress(argv.a, (errorMessage, results) => {
  if (errorMessage) {
    console.log(errorMessage);
  } else {
    // Printing the address
    console.log("The address is: " + results.address);
    // Assigning the lat and lng properties to variables
    const latitude = results.latitude;
    const longitude = results.longitude;
    // Getting the elevation data
  location.elevationLocation(latitude, longitude, (errorMessage, results) => {
      if (errorMessage) {
        // Loging the error
        console.log(errorMessage);
      } else {
        // Loging the elevation
        console.log("The elevation is: " + results.elevation + " meters");
      }
    });
    // Getting the weather data
  weather.weatherFunction(latitude, longitude, (errorMessage, results) => {
      if (errorMessage) {
        // Loging the error
        console.log(errorMessage);
      } else {
        // Loging the weather
        console.log("The current temperature is: " + results.temp + " degrees, but it feels like: " + results.feelsLike + " degrees");
      }
    });
    // -----------------
  }
});
