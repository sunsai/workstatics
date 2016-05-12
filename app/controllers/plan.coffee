express = require('express')
router = express.Router()
mongoose = require('mongoose')
Plan = mongoose.model('zsap_mm06_re')

module.exports = (app)->
  app.use('/plan', router)

router.get('/', (req, res, next)->
  res.render('plan', {
    title: 'sai'
    data: 'dd'
  })
)
