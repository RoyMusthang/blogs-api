const { Categories } = require('../models');
const jwt = require('../utils/jwt');

const checkingToken = async (token) => {
  if (!token) {
    const error = new Error();
    error.code = 401;
    error.message = 'Token not found';
    throw error;
  }
  jwt.verify(token);
};

const getAll = async (auth) => {
  await checkingToken(auth);
  const categories = await Categories.findAll();
  return categories;
};

const create = async (name, auth) => {
  await checkingToken(auth);
  const categories = await Categories.create({ name });
  return categories.dataValues;
};

module.exports = {
  create,
  getAll,
};
