const keystone = require('keystone')

const User = keystone.list('User')

exports = module.exports = function (done) {
  new User.model({ // eslint-disable-line new-cap
    name: { first: 'admin', last: 'user' },
    email: 'admin',
    password: 'admin',
    canAccessKeystone: true
  }).save(done)
}
