const { BlogPosts, Categories, User } = require('../models');
const categories = require('./categories');
const jwt = require('../utils/jwt');

const checkingToken = async (token) => {
  if (!token) {
    const error = new Error();
    error.code = 401;
    error.message = 'Token not found';
    throw error;
  }
  const tokenId = jwt.verify(token);
  return tokenId;
};

const verifyCategories = async (categoryIds) => {
  const findCategories = await Categories.findAll();

  const categoriesDb = findCategories.map(({ id }) => id);

  const result = categoryIds.every((category) => categoriesDb.includes(category));
  if (!result) {
    const error = new Error();
    error.code = 400;
    error.message = '"categoryIds" not found';
    throw error;
  }
};

const create = async (title, content, categoryIds, auth) => {
  const credentialUser = await checkingToken(auth);
  const userId = credentialUser.id;
  const post = await BlogPosts.create({ title, content, userId });
  await verifyCategories(categoryIds);
  await categories.create(categoryIds[0], auth);
  return {
    id: post.id,
    userId,
    title: post.title,
    content: post.content,
  };
};

const getAll = async (auth) => {
  await checkingToken(auth);
  const allPosts = await BlogPosts.findAll({
    attributes: { exclude: ['UserId'] },
    include: [
      { model: User, as: 'user', attributes: { exclude: ['password'] } },
      { model: Categories, as: 'categories', through: { attributes: [] } },
    ],
  });

  return allPosts;
};

module.exports = {
  create,
  getAll,
};
