Fission = require 'fission'

fission = new Fission
  sync: -> console.log 'test'

module.exports = fission
