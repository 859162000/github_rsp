<?xml version="1.0" encoding="UTF-8"?>

<message direction="decode" type="xml"> 
  <field type="string" codec="binary2Str('GBK')" name="flag_calsize" desc="总记录数" xpath="/ILINK/REQUEST/FLAG_CALSIZE"/>  
  <field type="string" codec="binary2Str('GBK')" name="perpage_size" desc="每页记录数" xpath="/ILINK/REQUEST/PERPAGE_SIZE"/>  
  <field type="string" codec="binary2Str('GBK')" name="start_date" desc="开始日期" xpath="/ILINK/REQUEST/START_DATE"/>  
  <field type="string" codec="binary2Str('GBK')" xpath="/ILINK/REQUEST/END_DATE" name="end_date" desc="结束日期"/>  
  <field type="string" codec="binary2Str('GBK')" name="req_biz_seqno" desc="平台业务流水号" xpath="/ILINK/REQUEST/REQ_BIZ_SEQNO"/>  
  <field type="string" codec="binary2Str('GBK')" name="pagekey_work_date" xpath="/ILINK/REQUEST/PAGEKEY_WORK_DATE" desc="分页字符串_日期"/>  
  <field type="string" codec="binary2Str('GBK')" name="pagekey_biz_seqno" desc="分页字符串_流水号" xpath="/ILINK/REQUEST/PAGEKEY_BIZ_SEQNO"/> 
</message>
