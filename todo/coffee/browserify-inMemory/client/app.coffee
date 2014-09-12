Fission = require 'fission'
console.log Fission
fission = new Fission
  sync: (method, model, options) ->
    console.log method, model, options

module.exports = fission