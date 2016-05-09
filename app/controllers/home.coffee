express = require('express')
router = express.Router()
mongoose = require('mongoose')
Article = mongoose.model('Article')

module.exports = (app)->
  app.use('/', router)

router.get('/', (req, res, next)->
  at = new Article(
    title:'js'
    url:'www.js.com'
    text:'JS'
  )
  at.save((err)->
    if err
      console.log('save err')
    else
      console.log('save ok!!!')
  )
  Article.find({}, (error, docs)->
    if error
      return next(error)
    else
      console.log('11111111111111111111111')
      res.send(docs)
#    console.log(docs)
#    if error
#      return next(error)
#    res.send({
#      title: 'sai'
#      data: docs
#    })
#  )
#  res.send({
#    title: 'sai'
#    data: '222'
#  })
  )
)
