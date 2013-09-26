<?xml version="1.0" encoding="UTF-8"?>

<message direction="decode" type="xml"> 
  <strategy type="xml" charset="GBK" prologue="true"> 
    <field type="string" codec="binary2Str('GBK')" name="startdate" desc="交易日期" xpath="/ILINK/REQUEST/STARTDATE"/>  
    <field type="string" codec="binary2Str('GBK')" name="biz_seqno" desc="交易流水号" xpath="/ILINK/REQUEST/BIZ_SEQNO"/>  
    <field type="string" codec="binary2Str('GBK')" name="enddate" desc="交易日期" xpath="/ILINK/REQUEST/ENDDATE"/> 
  </strategy> 
</message>
