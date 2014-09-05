var  fission = require('../app');

module.exports = fission.model({
  idAttribute: '_id',
  url: '/v1/todos',
  props: {
    _id: 'string',
    text: 'string',
    done: 'boolean'
  },
});
