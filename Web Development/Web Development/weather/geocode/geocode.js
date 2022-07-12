const request = require("request");

const geocodeAddress = (address, callback) => {
  const encodedAddress = encodeURIComponent(address);
  const key = "AIzaSyALzUFRNkBgcMxWedPvnZmDJFoKpIFhBD4";

  request({
    url: `https://maps.googleapis.com/maps/api/geocode/json?address=${encodedAddress}&key=${key}`,
    json: true
  }, (error, response, body) => {
    if (body.status === "ZERO_RESULTS") {
      callback("Not a valid address", undefined);
    } else if (body.status === "OK") {
      callback(undefined, {
        latitude: body.results[0].geometry.location.lat,
        longitude: body.results[0].geometry.location.lng,
        address: body.results[0].formatted_address
      });
    }
  });
}

module.exports = {
  geocodeAddress
}
