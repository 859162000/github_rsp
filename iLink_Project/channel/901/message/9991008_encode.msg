<?xml version="1.0" encoding="UTF-8"?>

<message direction="encode" type="xml"> 
  <strategy type="xml" charset="GBK" prologue="true"> 
    <include messageref="&quot;head_encode&quot;"/>
    <field type="string" codec="str2Binary('GBK')" name="record_count" xpath="/ILINK/RESPONSE/RECORD_COUNT" desc="总记录数"/>  
    <field type="string" codec="str2Binary('GBK')" name="page_count" desc="总页数" xpath="/ILINK/RESPONSE/PAGE_COUNT"/>  
    <field type="string" codec="str2Binary('GBK')" name="has_nextpage" desc="是否有下一页" xpath="/ILINK/RESPONSE/HAS_NEXTPAGE"/>  
    <repeat index="i" name="records"> 
      <field type="string" codec="str2Binary('GBK')" name="rownum" xpath="/ILINK/RESPONSE/RECORD[${i}]/ROWNUM" desc="行号"/>  
      <field type="string" codec="str2Binary('GBK')" name="payer_acc" desc="付款人账号" xpath="/ILINK/RESPONSE/RECORD[${i}]/PAYER_ACC"/>  
      <field type="string" codec="str2Binary('GBK')" name="work_date" desc="平台受理日期" xpath="/ILINK/RESPONSE/RECORD[${i}]/WORK_DATE"/>  
      <field type="string" codec="str2Binary('GBK')" name="work_time" desc="交易时间" xpath="/ILINK/RESPONSE/RECORD[${i}]/WORK_TIME"/>  
      <field type="string" codec="str2Binary('GBK')" name="p_biz_seqno" desc="平台业务流水号" xpath="/ILINK/RESPONSE/RECORD[${i}]/BIZ_SEQNO"/>  
      <field type="string" codec="str2Binary('GBK')" name="amount" desc="金额" xpath="/ILINK/RESPONSE/RECORD[${i}]/AMOUNT"/>  
      <field type="string" codec="str2Binary('GBK')" name="trans_code" desc="交易码" xpath="/ILINK/RESPONSE/RECORD[${i}]/TRANS_CODE"/> 
    </repeat> 
  </strategy> 
</message>
