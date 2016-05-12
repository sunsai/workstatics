mongoose = require('mongoose')
Planchema = new mongoose.Schema({
  RowId: String
  PlanID: String
  UpPlanID: String
  NextPalnID: String
  OrderID: String
  OutStoreID: String
  FPCode: String
  PrOrder: String
  CGPrg: String
  LBID: String
  WZID: String
  WZName: String
  Unit: String
  UnitName: String
  XQNum: Number
  XCNum: Number
  Price: Number
  Money: Number
  ModifyDate: String
  ItemType: String
  ArrDate: String
  PrDept: String
  OState: String
  CheckState: String
  IsJC: String
  Account: String
  CWCode: String
  CWName: String
  cCusCode: String
  cCusName: String
  Memo: String
  PrStatus: String
  Person: String
  IsUp: String
})

mongoose.model('zsap_mm06_re', Planchema);

