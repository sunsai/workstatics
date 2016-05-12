mongoose = require('mongoose')
BaseDeptSchema = new mongoose.Schema({
  DeptID: String
  DeptName: String
  ParentID: String
  Leader: String
  Property: String
  Memo: String
  memNum: Number
})

mongoose.model('basedept', BaseDeptSchema);

