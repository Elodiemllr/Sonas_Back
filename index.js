//entry point

// require dotenv to call our environment variables
require ('dotenv').config();

//Express, for the methode, routing, http request etc
const express = require('express');

//  Ph, our database management system
const pg = require('pg');

//app = express
const app = express();

// entry point 
const port = process.env.PORT || 5000;

//  router 
const router = require('./app/router');
app.use(router);

const cors = require('cors');

// telling express to use cors for getting the ressource from an another server 
app.use(cors());

app.use((req, res, next) => {
    console.log('Server received ', req.body);
    next();
  });

//parser JSON get the payload and transform it into a JS object who can be available with request.body
app.use(express.json());

app.listen(port, () => {console.log (`Listening on http://127.0.0.1:${port}`)});