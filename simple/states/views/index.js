var fission = require('../app');

var DOM = fission.React.DOM;

module.exports = function() {
  return fission.view({
    init: function() {
      return {
        clicked: false
      };
    },
    clickAction: function() {

      this.setState({clicked: !this.state.clicked});
    },
    render: function() {

      var headerText = this.state.clicked ? 'You clicked!' : 'Click me';
      var header = DOM.h1({}, headerText);

      return DOM.div({
        className: 'main',
        onClick: this.clickAction
      },
        header
      );

    }
  });
};
