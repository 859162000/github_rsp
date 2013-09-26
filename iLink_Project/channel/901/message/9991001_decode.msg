<?xml version="1.0" encoding="UTF-8"?>

<message direction="decode" type="xml"> 
  <field type="string" codec="binary2Str('GBK')" name="function" desc="功能号" xpath="/ILINK/REQUEST/FUNCTION"/>  
  <choose condition="${function}"> 
    <when case="&quot;4&quot;"> 
      <field type="string" codec="binary2Str('GBK')" name="pduno" desc="合同(协议)号" xpath="/ILINK/REQUEST/PDUNO"/> 
    </when>  
    <when case="&quot;1&quot;"> 
      <field type="string" codec="binary2Str('GBK')" name="hsunit" desc="核算单位" xpath="/ILINK/REQUEST/HSUNIT"/>  
      <field type="string" codec="binary2Str('GBK')" name="numno" desc="客户编号" xpath="/ILINK/REQUEST/NUMNO"/>  
      <field type="string" codec="binary2Str('GBK')" name="accno" desc="客户账号" xpath="/ILINK/REQUEST/ACCNO"/>  
      <field type="string" codec="binary2Str('GBK')" name="account" desc="账户名称" xpath="/ILINK/REQUEST/ACCOUNT"/>  
      <field type="string" codec="binary2Str('GBK')" name="idtype" desc="证件种类" xpath="/ILINK/REQUEST/IDTYPE"/>  
      <field type="string" codec="binary2Str('GBK')" name="idcard" desc="证件号码" xpath="/ILINK/REQUEST/IDCARD"/>  
      <field type="string" codec="binary2Str('GBK')" name="supply" desc="代理类别" xpath="/ILINK/REQUEST/SUPPLY"/>  
      <field type="string" codec="binary2Str('GBK')" name="opetype" desc="业务种类" xpath="/ILINK/REQUEST/OPETYPE"/>  
      <field type="string" codec="binary2Str('GBK')" name="agreement" desc="协议类型" xpath="/ILINK/REQUEST/AGREEMENT"/>  
      <field type="string" codec="binary2Str('GBK')" name="pduno" desc="合同(协议)号" xpath="/ILINK/REQUEST/PDUNO"/>  
      <field type="string" codec="binary2Str('GBK')" name="address" desc="用电地址" xpath="/ILINK/REQUEST/ADDRESS"/>  
      <field type="string" codec="binary2Str('GBK')" name="numnoname" desc="用户" xpath="/ILINK/REQUEST/NUMNONAME"/> 
    </when>  
    <when case="&quot;3&quot;"> 
      <field type="string" codec="binary2Str('GBK')" name="pduno" desc="合同(协议)号" xpath="/ILINK/REQUEST/PDUNO"/> 
    </when>  
    <when case="&quot;2&quot;"> 
      <field type="string" codec="binary2Str('GBK')" name="hsunit" desc="核算单位" xpath="/ILINK/REQUEST/HSUNIT"/>  
      <field type="string" codec="binary2Str('GBK')" name="numno" desc="客户编号" xpath="/ILINK/REQUEST/NUMNO"/>  
      <field type="string" codec="binary2Str('GBK')" name="accno" desc="客户账号" xpath="/ILINK/REQUEST/ACCNO"/>  
      <field type="string" codec="binary2Str('GBK')" name="account" desc="账户名称" xpath="/ILINK/REQUEST/ACCOUNT"/>  
      <field type="string" codec="binary2Str('GBK')" name="idtype" desc="证件种类" xpath="/ILINK/REQUEST/IDTYPE"/>  
      <field type="string" codec="binary2Str('GBK')" name="idcard" desc="证件号码" xpath="/ILINK/REQUEST/IDCARD"/>  
      <field type="string" codec="binary2Str('GBK')" name="supply" desc="代理类别" xpath="/ILINK/REQUEST/SUPPLY"/>  
      <field type="string" codec="binary2Str('GBK')" name="opetype" desc="业务种类" xpath="/ILINK/REQUEST/OPETYPE"/>  
      <field type="string" codec="binary2Str('GBK')" name="agreement" desc="协议类型" xpath="/ILINK/REQUEST/AGREEMENT"/>  
      <field type="string" codec="binary2Str('GBK')" name="pduno" desc="合同(协议)号" xpath="/ILINK/REQUEST/PDUNO"/>  
      <field type="string" codec="binary2Str('GBK')" name="address" desc="用电地址" xpath="/ILINK/REQUEST/ADDRESS"/>  
      <field type="string" codec="binary2Str('GBK')" name="numnoname" desc="用户" xpath="/ILINK/REQUEST/NUMNONAME"/> 
    </when> 
  </choose> 
</message>
