const rescue = require('express-rescue');
const router = require('express').Router();

const {
  validateLogin,
} = require('./middlewares/validations');
const LoginService = require('../services/login');

router.post('/',
  validateLogin,
  rescue(async (req, res) => {
    const user = req.body;
    const userLogin = await LoginService.login(user);
    res.status(200).json(userLogin);
  }));

module.exports = router;
