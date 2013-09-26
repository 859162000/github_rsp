<?xml version="1.0" encoding="UTF-8"?>

<message direction="decode" type="xml"> 
  <field type="string" codec="binary2Str('GBK')" name="amount" desc="金额" xpath="/ILINK/REQUEST/AMOUNT"/>  
  <field type="string" codec="binary2Str('GBK')" name="currency" desc="交易货币" xpath="/ILINK/REQUEST/CURRENCY"/>  
  <field type="string" codec="binary2Str('GBK')" name="zoneno" desc="地区号" xpath="/ILINK/REQUEST/ZONENO"/>  
  <field type="string" codec="binary2Str('GBK')" name="sub_biztype" desc="子业务类型" xpath="/ILINK/REQUEST/SUB_BIZTYPE"/>  
  <field type="string" codec="binary2Str('GBK')" name="trans_code" desc="平台交易代码" xpath="/ILINK/REQUEST/TRANS_CODE"/>  
  <field type="string" codec="binary2Str('GBK')" name="channel_code" desc="发起渠道代码" xpath="/ILINK/REQUEST/CHANNEL_CODE"/>  
  <field type="string" codec="binary2Str('GBK')" name="channel_date" desc="发起渠道日期" xpath="/ILINK/REQUEST/CHANNEL_DATE"/>  
  <field type="string" codec="binary2Str('GBK')" name="channel_seq" desc="发起渠道流水号" xpath="/ILINK/REQUEST/CHANNEL_SEQ"/>  
  <field type="string" codec="binary2Str('GBK')" name="work_time" desc="交易时间" xpath="/ILINK/REQUEST/WORK_TIME"/>  
  <field type="string" codec="binary2Str('GBK')" name="chktellerno" desc="复核柜员" xpath="/ILINK/REQUEST/CHECKTELLERNO"/>
  <field type="string" codec="binary2Str('GBK')" name="authtellerno" desc="授权柜员" xpath="/ILINK/REQUEST/AUTHTELLERNO"/>
  <field type="string" codec="binary2Str('GBK')" desc="正反交易标志" name="revtranf" xpath="/ILINK/REQUEST/REVTRANF"/>
  <field type="string" codec="binary2Str('GBK')" name="payer_accbank" desc="付款人开户行" xpath="/ILINK/REQUEST/PAYER_ACCBANK"/>
  <field type="string" codec="binary2Str('GBK')" name="payer_acc" desc="付款人账号" xpath="/ILINK/REQUEST/PAYER_ACC"/>
  <field type="string" codec="binary2Str('GBK')" name="payer_name" desc="付款人名称" xpath="/ILINK/REQUEST/PAYER_NAME"/>
  <field type="string" codec="binary2Str('GBK')" name="payee_accbank" desc="收款人开户行" xpath="/ILINK/REQUEST/PAYEE_ACCBANK"/>
  <field type="string" codec="binary2Str('GBK')" name="payee_acc" desc="收款账号" xpath="/ILINK/REQUEST/PAYEE_ACC"/>
  <field type="string" codec="binary2Str('GBK')" name="payee_name" desc="收款人名称" xpath="/ILINK/REQUEST/PAYEE_NAME"/>
  <field type="string" codec="binary2Str('GBK')" name="fee_amount" desc="手续费金额" xpath="/ILINK/REQUEST/FEE_AMOUNT"/>
  <field type="string" codec="binary2Str('GBK')" name="trans_flag" desc="现转标志" xpath="/ILINK/REQUEST/TRANS_FLAG"/>
  <field type="string" codec="binary2Str('GBK')" name="cb_flg" desc="卡折标志" xpath="/ILINK/REQUEST/CB_FLG"/>
  <field type="string" codec="binary2Str('GBK')" name="vouch_type" desc="凭证种类" xpath="/ILINK/REQUEST/VOUCH_TYPE"/>
  <field type="string" codec="binary2Str('GBK')" name="vouch_no" desc="凭证号码" xpath="/ILINK/REQUEST/VOUCH_NO"/>
  <field type="string" codec="binary2Str('GBK')" name="tcus_id" desc="客户标识" xpath="/ILINK/REQUEST/TCUS_ID"/>
  <field type="string" codec="binary2Str('GBK')" name="tcus_name" desc="客户姓名" xpath="/ILINK/REQUEST/TCUS_NAME"/>
</message>
