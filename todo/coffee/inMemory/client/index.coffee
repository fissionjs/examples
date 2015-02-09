{router} = require 'fission'
IndexView = require './pages/Index'

Router = router
  app:
    path: '/'
    view: IndexView


Router.start document.body
