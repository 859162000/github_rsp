<?xml version="1.0" encoding="UTF-8"?>

<message direction="decode" type="xml"> 
  <field type="string" codec="binary2Str('GBK')" name="unserno" desc="客户编号" xpath="/ILINK/REQUEST/USERNO"/>  
  <field type="string" codec="binary2Str('GBK')" name="husnit" desc="核算单位" xpath="/ILINK/REQUEST/HSUNIT"/>  
  <field type="string" codec="binary2Str('GBK')" name="caerare" desc="电费年月" xpath="/ILINK/REQUEST/CARFARE"/>  
  <field type="string" codec="binary2Str('GBK')" name="actpay" xpath="/ILINK/REQUEST/ACT_PAY" desc="缴费金额"/>
  <field type="string" codec="binary2Str('GBK')" name="accno" xpath="/ILINK/REQUEST/ACCNO" desc="付款人账号"/>
  <field type="string" codec="binary2Str('GBK')" xpath="/ILINK/REQUEST/PWD" name="pwd" desc="付款人账号密码"/>
  <field type="string" codec="binary2Str('GBK')" xpath="/ILINK/REQUEST/ACC_TYPE" name="acctype" desc="账户类型"/>
  <field type="string" codec="binary2Str('GBK')" xpath="/ILINK/REQUEST/IDTYPE" name="idtype" desc="证件类型"/>
  <field type="string" codec="binary2Str('GBK')" xpath="/ILINK/REQUEST/ID" name="id" desc="证件号"/>
</message>
