const express = require('express');
const bodyParser = require('body-parser');

const User = require('./controllers/users');
const errors = require('./controllers/middlewares/domain-error');

const app = express();
app.use(bodyParser.json());

// não remova esse endpoint, e para o avaliador funcionar
app.get('/', (_request, response) => {
  response.send();
});

app.use('/user', User);
app.use(errors);

module.exports = app;
