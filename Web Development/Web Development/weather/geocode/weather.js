const request = require("request");

const weatherFunction = (latitude, longitude, callback) => {

  const key = "a8cd7fb6e581bffef4e80657a875b1ab";

  request({
    url: `https://api.darksky.net/forecast/${key}/${latitude}, ${longitude}`,
    json: true
  }, (error, response, body) => {
    if (body.code === 400) {
      callback("Place does not exist", undefined)
    } else if (body.code === undefined) {
      callback(undefined, {
        temp: body.currently.temperature,
        feelsLike: body.currently.apparentTemperature
      });
    }
    // console.log(body.currently.summary);
    // console.log(JSON.stringify(body, undefined, 2));
  });
}

module.exports = {
  weatherFunction
}
