const express = require('express');
const bodyParser = require('body-parser');

const User = require('./controllers/user');

const app = express();
app.use(bodyParser.json());

// não remova esse endpoint, e para o avaliador funcionar
app.get('/', (_request, response) => {
  response.send();
});

app.use('/user', User);

module.exports = app;
