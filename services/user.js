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
  const users = await User.findAll();
  return users;
};

const getById = async (auth, id) => {
  await checkingToken(auth);
  const user = await User.findByPk(id);
  if (!user) {
    const error = new Error();
    error.code = 404;
    error.message = 'User does not exist';
    throw error;
  }
  return user;
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
  getById,
};
