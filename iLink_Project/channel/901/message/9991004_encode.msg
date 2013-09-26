<?xml version="1.0" encoding="UTF-8"?>

<message direction="encode" type="xml"> 
  <strategy type="xml" charset="GBK" prologue="true"> 
    <field type="string" codec="str2Binary('GBK')" name="status" desc="状态" xpath="/ILINK/HEAD/STATUS"/>  
    <field type="string" codec="str2Binary('GBK')" name="code" desc="返回码" xpath="/ILINK/HEAD/CODE"/>  
    <field type="string" codec="str2Binary('GBK')" name="desc" desc="返回描述" xpath="/ILINK/HEAD/DESC"/>  
    <choose condition="${code}"> 
      <when case="&quot;000000&quot;"> 
        <repeat name="transinfo" index="i"> 
          <field type="string" codec="str2Binary('GBK')" name="brno" desc="机构号" xpath="/ILINK/RESPONSE/RECORD[${i}]/BRNO"/>  
          <field type="string" codec="str2Binary('GBK')" name="tellerno" desc="柜员号" xpath="/ILINK/RESPONSE/RECORD[${i}]/TELLERNO"/>  
          <field type="string" codec="str2Binary('GBK')" name="pduno" desc="协议号" xpath="/ILINK/RESPONSE/RECORD[${i}]/PDUNO"/>  
          <field type="string" codec="str2Binary('GBK')" name="account" desc="账户名称" xpath="/ILINK/RESPONSE/RECORD[${i}]/ACCOUNT"/>  
          <field type="string" codec="str2Binary('GBK')" name="accno" desc="客户账号" xpath="/ILINK/RESPONSE/RECORD[${i}]/ACCNO"/>  
          <field type="string" codec="str2Binary('GBK')" name="p_req_time" desc="交易时间" xpath="/ILINK/RESPONSE/RECORD[${i}]/P_REQ_TIME"/>  
          <field type="string" codec="str2Binary('GBK')" name="p_req_date" desc="交易日期" xpath="/ILINK/RESPONSE/RECORD[${i}]/P_REQ_DATE"/>  
          <field type="string" codec="str2Binary('GBK')" name="p_biz_seqno" desc="交易流水号" xpath="/ILINK/RESPONSE/RECORD[${i}]/P_BIZ_SEQNO"/>  
          <field type="string" codec="fen2Yuan/str2Binary('GBK')" name="amount" desc="交易金额" xpath="/ILINK/RESPONSE/RECORD[${i}]/AMOUNT"/>  
          <field type="string" codec="str2Binary('GBK')" name="status" desc="状态" xpath="/ILINK/RESPONSE/RECORD[${i}]/STATUS"/> 
        </repeat> 
      </when>  
      <otherwise/> 
    </choose> 
  </strategy> 
</message>
