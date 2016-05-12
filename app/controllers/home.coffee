express = require('express')
router = express.Router()
mongoose = require('mongoose')

async = require('async')

BaseDept = mongoose.model('basedept')
PrJS = mongoose.model('PrJS')

models = [BaseDept, PrJS]

module.exports = (app)->
  app.use('/', router)

modelnames = models.map((m)->
  return m.modelName.toLowerCase()
)

router.get('/', (req, res, next)->
  async.mapLimit(models, models.length, (m, callback)->
    name = m.modelName
    m.find().limit(10).find((err, docs)->
      if err then callback(name + ' is err !!!') else callback(null, {name, docs})
    )
  ,
    (err, result)->
      if err
        return next(er)
      data = {}
      modelnames.forEach((name)->
        result.forEach((r)->
          if r.name is name
            data[name] = ({
              name: name
              docs: r.docs
            })
        )
      )
#      res.send(
#        data: data
#      )
      res.render('index',{
        title:'shccmg work'
        data:data
      })
  )
)
