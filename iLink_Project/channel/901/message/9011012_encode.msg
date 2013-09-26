<?xml version="1.0" encoding="UTF-8"?>

<message direction="encode" type="xml"> 
  <strategy type="xml" charset="GBK" prologue="true"> 
    <field type="string" codec="str2Binary('GBK')" name="p_front_resp_code" desc="返回码" xpath="/ILINK/RESPONSE/RESP_CODE"/>  
    <field type="string" codec="str2Binary('GBK')" name="account" desc="客户名称" xpath="/ILINK/RESPONSE/ACCOUNT"/>  
    <field type="string" codec="str2Binary('GBK')" name="address" desc="用电地址" xpath="/ILINK/RESPONSE/ADDRESS"/>  
    <field type="string" codec="str2Binary('GBK')" name="arrmoney" desc="应缴金额" xpath="/ILINK/RESPONSE/ARRMONEY"/>  
    <field type="string" codec="str2Binary('GBK')" name="username" desc="客户名称" xpath="/ILINK/RESPONSE/USERNAME"/> 
  </strategy> 
</message>
