const rescue = require('express-rescue');
const router = require('express').Router();
const {
  validateName,
  validateEmail,
  validatePassword,
} = require('./middlewares/validations');
const userService = require('../services/user');

router.get('/',
  rescue(async (req, res) => {
    const { authorization } = req.headers;
    const users = await userService.getAll(authorization);
    res.status(200).json(users);
  }));

router.get('/:id',
  rescue(async (req, res) => {
    const { id } = req.params;
    const { authorization } = req.headers;
    const users = await userService.getById(authorization, id);
    if (users.message) {
      return res.status(users.code).json(users.message)
    }
    res.status(200).json(users);
  }));

router.post('/',
  validateName,
  validateEmail,
  validatePassword,
  rescue(async (req, res) => {
    const user = req.body;
    const newUser = await userService.create(user);
    res.status(201).json({ token: newUser });
  }));

module.exports = router;
