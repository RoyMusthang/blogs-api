const rescue = require('express-rescue');
const router = require('express').Router();

router.post('/',
  rescue(async (req, res) => {
    const token = req.headers.authorization;
    res.status(201).json(token)
  }));

module.exports = router;
