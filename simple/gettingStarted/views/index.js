var fission = require('../app');

var DOM = fission.React.DOM;

module.exports = function() {
  return fission.view({
    render: function() {
      return DOM.div({
        className: 'main'
      },
        DOM.h1({},'Welcome'));
    }
  });
};
