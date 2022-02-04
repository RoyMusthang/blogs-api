module.exports = (err, req, res, next) => {
  if (!err.code) return next(err);

  return res.status(err.code).json({ message: err.message });
}; 
