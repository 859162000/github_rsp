<?xml version="1.0" encoding="UTF-8"?>

<message direction="encode" type="xml"> 
  <strategy type="xml" charset="GBK" prologue="true"> 
    <field type="string" codec="str2Binary('GBK')" name="status" desc="状态" xpath="/ILINK/HEAD/STATUS"/>  
    <field type="string" codec="str2Binary('GBK')" name="code" desc="返回码" xpath="/ILINK/HEAD/CODE"/>  
    <field type="string" codec="str2Binary('GBK')" name="desc" desc="返回描述" xpath="/ILINK/HEAD/DESC"/>  
    <choose condition="${code}">
      <when case="&quot;000000&quot;">
        <field type="string" codec="str2Binary('GBK')" xpath="/ILINK/RESPONSE/WORKTIME" name="p_req_time"/>
        <field type="string" codec="str2Binary('GBK')" xpath="/ILINK/RESPONSE/WORKDATE" name="p_req_date"/>
        <field type="string" codec="str2Binary('GBK')" xpath="/ILINK/RESPONSE/SEQNO" name="p_biz_seqno"/>
      </when>
    </choose>
  </strategy> 
</message>
