{model} = require 'fission'
sync = require './sync'

module.exports = model
  props:
    id: 'integer'
    text: 'string'
    done: 'boolean'
  url: '/v1/todos'
  sync: sync
