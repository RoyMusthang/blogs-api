const rescue = require('express-rescue');
const router = require('express').Router();
const {
  validateCategorie,
  validateName,
} = require('./middlewares/validations');
const categoriesService = require('../services/categories');

router.post('/',
  validateCategorie,
  validateName,
  rescue(async (req, res) => {
    const { name } = req.body;
    const auth = req.headers.authorization;
    const newCategorie = await categoriesService.create(name, auth);
    res.status(201).json(newCategorie);
  }));

module.exports = router;
