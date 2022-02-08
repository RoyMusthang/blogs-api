const rescue = require('express-rescue');
const router = require('express').Router();
const {
  validateName,
} = require('./middlewares/validations');
const categoriesService = require('../services/categories');

router.get('/',
  rescue(async (req, res) => {
    const auth = req.headers.authorization;
    const categories = await categoriesService.getAll(auth);
    res.status(200).json(categories);
  }))

router.post('/',
  validateName,
  rescue(async (req, res) => {
    const { name } = req.body;
    const auth = req.headers.authorization;
    const newCategorie = await categoriesService.create(name, auth);
    res.status(201).json(newCategorie);
  }));

module.exports = router;
