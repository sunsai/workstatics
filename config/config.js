var path = require('path'),
    rootPath = path.normalize(__dirname + '/..'),
    env = process.env.NODE_ENV || 'development';

var config = {
  development: {
    root: rootPath,
    app: {
      name: 'workstatics'
    },
    port: process.env.PORT || 3000,
    db: 'mongodb://192.168.13.1/workstatics'
  },

  test: {
    root: rootPath,
    app: {
      name: 'workstatics'
    },
    port: process.env.PORT || 3000,
    db: 'mongodb://192.168.13.1/workstatics-test'
  },

  production: {
    root: rootPath,
    app: {
      name: 'workstatics'
    },
    port: process.env.PORT || 3000,
    db: 'mongodb://192.168.13.1/workstatics-p'
  }
};

module.exports = config[env];
