const rescue = require('express-rescue');
const router = require('express').Router();
const {
  validateCategorie,
} = require('./middlewares/validations');
const categoriesService = require('../services/categorie');

router.post('/',
  validateCategorie,
  rescue(async (req, res) => {
    const categorie = req.body;
    const newCategorie = await categoriesService.create(categorie);
    res.status(201).json(newCategorie);
  }));

module.exports = router;
