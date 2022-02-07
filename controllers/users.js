const rescue = require('express-rescue');
const router = require('express').Router();
const {
  validateName,
  validateEmail,
  validatePassword,
} = require('./middlewares/validations');
const userService = require('../services/user');

router.get('/',
  rescue(async (_req, res) => {
    const users = await userService.getAll();
    res.status(200).json(users);
  })
)

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
