const jwt = require('../utils/jwt');
const { User } = require('../models');

const emailValid = async (user) => {
  const { email } = user;
  const findEmail = await User.findOne({ where: { email } });
  if (findEmail) {
    const error = new Error();
    error.code = 409;
    error.message = 'User already registered';
    throw error;
  }
};

const getAll = async () => {
  const users = await User.findAll();
  return users;
}

const create = async (user) => {
  const { displayName } = user;
  await emailValid(user);
  await User.create(user);

  const token = jwt.sign({ displayName });

  return token;
};

module.exports = {
  create,
  getAll,
};
