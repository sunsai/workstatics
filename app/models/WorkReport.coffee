mongoose = require('mongoose')
WorkReportchema = new mongoose.Schema({
  RowId: String
  InvoiceId: String
  PersonId: String
  DeptRowId: String
  GWRowId: String
  WorkDate: String
  Remark: String
  Problem: String
  state: String
  CreateDate: String
  cPerson: String
  IsScore: String
  WorkType: String
  flag: String
  IsuPTo: String
})

mongoose.model('WorKReport', WorkReportchema);

