fission = require './app'
IndexView = require './pages/Index/Index.View'
NotFoundView = require './pages/NotFound/NotFound.View'

fission.router.route '/',
  title: 'Welcome'
  view: IndexView
  el: 'content'

fission.router.route '*',
  title: 'Not Found'
  view: NotFoundView
  el: 'content'

fission.router.start()
