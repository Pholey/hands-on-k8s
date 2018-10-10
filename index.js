// index.js

const http = require('http');

//create a server object:
http.createServer(function (req, res) {
  //write a response to the client
  res.write('<h1>Hello world!</h1>');

  //end the response
	res.end();
}).listen(5010); //the server object listens on port 5010