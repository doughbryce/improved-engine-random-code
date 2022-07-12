const request = require("request");

const elevationLocation = (latitude, longitude, callback) => {

  const key = "AIzaSyC-gr7JsNXMOx5qDZR4TF-1JJupN4ssrKg";

  request({
    url: `https://maps.googleapis.com/maps/api/elevation/json?locations=${latitude}, ${longitude}&key=${key}`,
    json: true
  }, (error, response, body) => {
    if (body.status === "INVALID_REQUEST") {
      callback("Latitude and longitude not read properly", undefined)
    } else if (body.status === "OK") {
      callback(undefined, {
        elevation: body.results[0].elevation
      });
    }
    // console.log(body);
  });
}

module.exports = {
  elevationLocation
}
