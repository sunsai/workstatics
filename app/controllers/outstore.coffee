express = require('express')
router = express.Router()
mongoose = require('mongoose')

module.exports = (app)->
  app.use('/outstore', router)

router.get('/', (req, res, next)->
  res.render('outstore', {
    title: 'sai'
    data: 'dd'
  })
)
