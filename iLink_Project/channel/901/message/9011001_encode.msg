<?xml version="1.0" encoding="UTF-8"?>

<message direction="encode" type="xml"> 
  <strategy type="xml" charset="GBK" prologue="true"> 
    <field type="string" codec="str2Binary('GBK')" name="status" desc="状态" xpath="/ILINK/HEAD/STATUS"/>  
    <field type="string" codec="str2Binary('GBK')" name="code" desc="返回码" xpath="/ILINK/HEAD/CODE"/>  
    <field type="string" codec="str2Binary('GBK')" name="desc" desc="返回描述" xpath="/ILINK/HEAD/DESC"/>  
    <field type="string" codec="str2Binary('GBK')" name="custno" desc="客户号" xpath="/ILINK/RESPONSE/CUSTNO"/>  
    <field type="string" codec="str2Binary('GBK')" name="accname" desc="账户名" xpath="/ILINK/RESPONSE/ACCNAME"/>  
    <field type="string" codec="str2Binary('GBK')" name="openbrch" desc="开户网点" xpath="/ILINK/RESPONSE/OPENBRCH"/>  
    <field type="string" codec="str2Binary('GBK')" name="bankysh" desc="存折印刷号" xpath="/ILINK/RESPONSE/BANKYSH"/>  
    <field type="string" codec="str2Binary('GBK')" name="p_front_resp_code" desc="返回码" xpath="/ILINK/HEAD/RESP_CODE"/>
  </strategy> 
</message>
