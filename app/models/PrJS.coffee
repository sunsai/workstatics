mongoose = require('mongoose')
Schema = mongoose.Schema;
PrJSSchema = new Schema({
  WZID: String
  GYSID: String
  Price: Number
})

mongoose.model('PrJS', PrJSSchema);

