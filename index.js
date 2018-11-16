require('dotenv').config()
const keystone = require('keystone')

keystone.init({
  'name': process.env.KEYSTONE_APP_NAME,
  'port': process.env.KEYSTONE_PORT,
  'static': [],
  'auto update': true,
  'mongo': process.env.MONGO_DB,
  'auth': true,
  'user model': 'User',
  'cookie secret': process.env.KEYSTONE_SECRET_TOKEN
})

keystone.import('./dist/models')

keystone.start()
