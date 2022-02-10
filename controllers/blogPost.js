const rescue = require('express-rescue');
const router = require('express').Router();
const {
  validatePost,
} = require('./middlewares/validations');
const blogPostService = require('../services/blogPosts');

router.get('/',
  rescue(async (req, res) => {
    const auth = req.headers.authorization;
    const allPosts = await blogPostService.getAll(auth);
    res.status(200).json(allPosts);
  }));

router.post('/',
  validatePost,
  rescue(async (req, res) => {
    const { title, content, categoryIds } = req.body;
    const auth = req.headers.authorization;
    const newPost = await blogPostService.create(title, content, categoryIds, auth);
    res.status(201).json(newPost);
  }));

module.exports = router;
