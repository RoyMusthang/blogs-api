const jwt = require('../utils/jwt');
const { User } = require('../models');

const login = async (data) => {
  const { email, password } = data;
  const token = jwt.sign({ email });

  const user = await User.findOne({ where: {email} });
  if (!user || password !== user.password) {
    const error = new Error();
    error.code = 400;
    error.message = 'Invalid fields';
    throw error;
  } 
  return token;
};

module.exports = { login }; 
