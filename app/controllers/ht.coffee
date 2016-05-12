express = require('express')
router = express.Router()
mongoose = require('mongoose')

module.exports = (app)->
  app.use('/ht', router)

router.get('/', (req, res, next)->
  res.render('ht', {
    title: 'sai'
    data: 'dd'
  })
)
