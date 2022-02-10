const express = require('express');
const bodyParser = require('body-parser');

const user = require('./controllers/users');
const login = require('./controllers/login');
const categories = require('./controllers/categories');
const blogPost = require('./controllers/blogPost');
const errors = require('./controllers/middlewares/domain-error');

const app = express();
app.use(bodyParser.json());

// não remova esse endpoint, e para o avaliador funcionar
app.get('/', (_request, response) => {
  response.send();
});

app.use('/user', user);
app.use('/login', login);
app.use('/categories', categories);
app.use('/post', blogPost);
app.use(errors);

module.exports = app;
