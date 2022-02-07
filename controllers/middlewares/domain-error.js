module.exports = (err, _req, res, next) => {
  if (err.message === 'invalid token' || err.message === 'jwt malformed') {
    return res.status(401).json({ message: 'Expired or invalid token' });
  }
  if (!err.code) return next(err);

  return res.status(err.code).json({ message: err.message });
}; 
