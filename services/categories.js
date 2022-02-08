const create = async (name) => {
  const { displayName } = name;
  await name.create(name);
  return token;
};

module.exports = {
  create,
}
