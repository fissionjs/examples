module.exports = (method, model, options) ->
  if method is 'create'
    model.id = Math.floor(Math.random() * (100 - 1)) + 1
