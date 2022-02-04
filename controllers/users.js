const rescue = require('express-rescue');
const router = require('express').Router();
const {
  validateName,
  validateEmail,
  validatePassword,
} = require('./middlewares/validations');
const userService = require('../services/user');

router.post('/',
  validateName,
  validateEmail,
  validatePassword,
  rescue(async (req, res) => {
    const user = req.body;
    const newUser = await userService.create(user);
    res.status(201).json(newUser);
  }));

module.exports = router;
