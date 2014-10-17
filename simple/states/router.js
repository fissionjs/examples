// Require the fission instance:
var fission = require('./app');

// Require the views:
var IndexView = require('./views');

// Create a route for /
fission.router.route('/', {
  title: 'Welcome',  // page title
  view: IndexView, // required view
  el: 'content' // html element to inject the views in
});

// Other routes ... //


// Start the router
fission.router.start();
