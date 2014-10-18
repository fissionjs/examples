Fission = require 'fission'
localSync = require 'fission-sync-localstorage'

fission = new Fission
  sync: localSync

module.exports = fission
