<?xml version="1.0" encoding="UTF-8"?>

<message direction="decode" type="xml"> 
  <strategy type="xml" charset="GBK" prologue="true"> 
    <field type="string" codec="binary2Str('GBK')" name="accnotype" desc="账户类型" xpath="/ILINK/REQUEST/ACCNOTYPE"/>  
    <field type="string" codec="binary2Str('GBK')" name="accno" desc="账号" xpath="/ILINK/REQUEST/ACCNO"/>  
    <field type="string" codec="binary2Str('GBK')" name="pwd" desc="密码" xpath="/ILINK/REQUEST/PASSWD"/>
  </strategy> 
</message>
