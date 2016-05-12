express = require('express')
router = express.Router()
mongoose = require('mongoose')

module.exports = (app)->
  app.use('/js', router)

router.get('/', (req, res, next)->
  res.render('js', {
    title: 'sai'
    data: 'dd'
  })
)
