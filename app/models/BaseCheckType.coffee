mongoose = require('mongoose')
BaseCheckTypeSchema = new mongoose.Schema({
  RowId: String,
  TypeID: String,
  TypeName: String,
  state: String
})

mongoose.model('BaseCheckType', BaseCheckTypeSchema);

