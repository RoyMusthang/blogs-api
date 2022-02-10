const rescue = require('express-rescue');
const router = require('express').Router();
const {
  validatePost,
} = require('./middlewares/validations');
const blogPostService = require('../services/blogPosts');

router.post('/',
  validatePost,
  rescue(async (req, res) => {
    const { title, content, categoryIds } = req.body;
    const auth = req.headers.authorization;
    const newPost = await blogPostService.create(title, content, categoryIds, auth);
    res.status(201).json(newPost);
  }));

module.exports = router;
