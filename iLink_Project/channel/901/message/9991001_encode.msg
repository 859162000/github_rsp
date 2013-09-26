<?xml version="1.0" encoding="UTF-8"?>

<message direction="encode" type="xml"> 
  <strategy type="xml" charset="GBK" prologue="true"> 
    <field type="string" codec="str2Binary('GBK')" name="status" desc="交易状态" xpath="/ILINK/HEAD/STATUS"/>  
    <field type="string" codec="str2Binary('GBK')" name="code" desc="返回码" xpath="/ILINK/HEAD/CODE"/>  
    <field type="string" codec="str2Binary('GBK')" name="desc" desc="返回信息" xpath="/ILINK/HEAD/DESC"/>  
    <field type="string" codec="str2Binary('GBK')" name="function" desc="操作类型" xpath="/ILINK/HEAD/FUNCTION"/>  
    <choose condition="${code}">
      <when case="&quot;000000&quot;">
        <choose condition="${function}"> 
          <when case="&quot;4&quot;"> 
            <field type="string" codec="str2Binary('GBK')" name="hsunit1" xpath="/ILINK/RESPONSE/HSUNIT" desc="核算单位"/>  
            <field type="string" codec="str2Binary('GBK')" name="numno1" xpath="/ILINK/RESPONSE/NUMNO" desc="客户编号"/>  
            <field type="string" codec="str2Binary('GBK')" name="accno1" xpath="/ILINK/RESPONSE/ACCNO" desc="客户账号"/>  
            <field type="string" codec="str2Binary('GBK')" name="account1" xpath="/ILINK/RESPONSE/ACCOUNT" desc="账户名称"/>  
            <field type="string" codec="str2Binary('GBK')" name="idtype1" xpath="/ILINK/RESPONSE/IDTYPE" desc="证件种类"/>  
            <field type="string" codec="str2Binary('GBK')" name="idcard1" xpath="/ILINK/RESPONSE/IDCARD" desc="证件号码"/>  
            <field type="string" codec="str2Binary('GBK')" name="supply1" xpath="/ILINK/RESPONSE/SUPPLY" desc="代理类别"/>  
            <field type="string" codec="str2Binary('GBK')" name="opetype1" xpath="/ILINK/RESPONSE/OPETYPE" desc="业务种类"/>  
            <field type="string" codec="str2Binary('GBK')" name="agreement1" xpath="/ILINK/RESPONSE/AGREEMENT" desc="协议类型"/>  
            <field type="string" codec="str2Binary('GBK')" name="address1" xpath="/ILINK/RESPONSE/ADDRESS" desc="用电地址"/>  
            <field type="string" codec="str2Binary('GBK')" name="numnoname1" xpath="/ILINK/RESPONSE/NUMNONAME" desc="户名"/> 
          </when>  
          <otherwise/> 
        </choose>
      </when>
    </choose>
  </strategy> 
</message>
