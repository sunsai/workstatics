express = require('express')
router = express.Router()
mongoose = require('mongoose')
Plan = mongoose.model('zsap_mm06_re')

module.exports = (app)->
  app.use('/planapi', router)

router.get('/', (req, res, next)->
  Plan.aggregate([
    {$match: {CGPrg:'2770',Account: '2016-05', IsUp: '0', IsJC: ''}},
    {
      $group: {
        _id: {PrDept: "$PrDept"},
        TotalNum: {$sum: '$XCNum'},
        TotalMoney: {$sum: '$Money'}
      }
    },
    {$sort: {TotalMoney: -1}}
  ]).exec((err, docs)->
    return next(err) if err
    res.send(docs)
  )
)
router.get('/:PageSize/:CurPage', (req, res, next)->
  PageSize = parseInt(req.params.PageSize)
  CurPage = parseInt(req.params.CurPage || 0)
  CurPage = if CurPage >= 1 then CurPage - 1 else 0
  Plan.find().sort({PlanID: 'asc'}).skip(CurPage * PageSize).limit(PageSize).exec((err, docs)->
    if err
      return next(err)
    res.send(docs)
  )
)
