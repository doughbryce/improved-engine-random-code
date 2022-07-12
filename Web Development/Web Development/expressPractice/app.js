const express = require("express");
// requiring express sends a function back, which is stored in the express constant
// ---
const app = express();
// that function returns the app, which is stored in the app constant
// ---
app.use(express.static(__dirname + '/public'))
// This is a function that is a type of middleware
// ---
// It takes a function set by express that allows us to
//     post the index.html file in the public folder to the
//     web so that others can view it, just like the res.send,
//     but this is for an entire directory or file
// ---
// __dirname is the entire path up until this point (app.js)
// Concatanating '/public' makes the entire public directory available on the web server
// ---
app.get('/', (req, res) => {
// app.get sends a get request to the server, and the server builds a request
    // object and a response object. These objects store important information that
    // we can manipulate. The first argument is the route that the get request is handled on
  res.send({
// res.send is sending whatever is defined in the parameter to the server,
    // where it will be displayed. In this case, it is an object with my name and likes
    name: 'Bryce',
    likes: ['Dogs',
    'Programming',
    'Food']
  })
})


app.get('/about', (req, res) => {
  // different routes for different info
  res.send({
    school: 'Paly',
    address: '50 Embarcadero Road'
  })
})

app.get('/content', (req, res) => {
  res.send("<h1>this is some content</h1>")
  // straight up HTML can also be send
})

app.listen(3000, () => {
// app.listen activates the server on, in this case, port 3000
// this is what allows us to access these files
  console.log("Listening on port 3000");
})
