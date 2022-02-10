const jwt = require('../utils/jwt');
const { User } = require('../models');

const login = async (data) => {
  const { email, password } = data;

  const user = await User.findOne({ where: { email } });
  if (!user || password !== user.password) {
    const error = new Error();
    error.code = 400;
    error.message = 'Invalid fields';
    throw error;
  }
  const { id } = user;
  const token = jwt.sign({ email, id });
  return token;
};

module.exports = { login }; 
