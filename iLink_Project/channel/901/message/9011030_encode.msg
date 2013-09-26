<?xml version="1.0" encoding="UTF-8"?>

<message direction="encode" type="xml"> 
  <strategy type="xml" charset="GBK" prologue="true"> 
    <field type="string" codec="str2Binary('GBK')" name="amount" desc="金额" xpath="/ILINK/RESPONSE/AMOUNT"/>  
    <field type="string" codec="str2Binary('GBK')" name="currency" desc="交易货币" xpath="/ILINK/RESPONSE/CURRENCY"/>  
    <field type="string" codec="str2Binary('GBK')" name="zoneno" desc="地区号" xpath="/ILINK/RESPONSE/ZONENO"/>  
    <field type="string" codec="str2Binary('GBK')" name="bank_sysdate" desc="账务系统受理日期" xpath="/ILINK/RESPONSE/BANK_SYSDATE"/>
    <field type="string" codec="str2Binary('GBK')" name="bank_sysstatus" desc="账户受理状态" xpath="/ILINK/RESPONSE/BANK_SYSSTATUS"/>
    <field type="string" codec="str2Binary('GBK')" name="revtranf" desc="正反交易标识" xpath="/ILINK/RESPONSE/REVTRANF"/>
    <field type="string" codec="str2Binary('GBK')" name="payer_accbank" desc="付款人开户行" xpath="/ILINK/RESPONSE/PAYER_ACCBANK"/>
    <field type="string" codec="str2Binary('GBK')" name="payer_acc" desc="付款人账号 " xpath="/ILINK/RESPONSE/PAYER_ACC"/>
    <field type="string" codec="str2Binary('GBK')" name="payer_name" desc="付款人名称" xpath="/ILINK/RESPONSE/PAYER_NAME"/>
    <field type="string" codec="str2Binary('GBK')" name="payee_accbank" desc="收款人开户行" xpath="/ILINK/RESPONSE/PAYEE_ACCBANK"/>
    <field type="string" codec="str2Binary('GBK')" name="payee_acc" desc="收款人账号" xpath="/ILINK/RESPONSE/PAYEE_ACC"/>
    <field type="string" codec="str2Binary('GBK')" name="payee_name" desc="收款人名称" xpath="/ILINK/RESPONSE/PAYEE_NAME"/>
    <field type="string" codec="str2Binary('GBK')" name="fee_amount" desc="手续费金额" xpath="/ILINK/RESPONSE/FEE_AMOUNT"/>
    <field type="string" codec="str2Binary('GBK')" name="third_id" desc="第三方标识" xpath="/ILINK/RESPONSE/THIRD_ID"/>
    <field type="string" codec="str2Binary('GBK')" name="third_sysdate" desc="第三方受理日期" xpath="/ILINK/RESPONSE/THIRD_SYSDATE"/>
    <field type="string" codec="str2Binary('GBK')" name="third_sysseq" desc="第三方受理序号" xpath="/ILINK/RESPONSE/THIRD_SYSSEQ"/>
    <field type="string" codec="str2Binary('GBK')" name="third_sysstatus" desc="第三方处理状态" xpath="/ILINK/RESPONSE/THIRD_SYSSTATUS"/>
    <field type="string" codec="str2Binary('GBK')" name="third_sysmsg" desc="第三方处理信息" xpath="/ILINK/RESPONSE/THIRD_SYSMSG"/>
    <field type="string" codec="str2Binary('GBK')" name="bank_sysseq" desc="账务系统受理序号" xpath="/ILINK/RESPONSE/BANK_SYSSEQ"/>
    <field type="string" codec="str2Binary('GBK')" name="bank_syserrcode" desc="账务系统处理码" xpath="/ILINK/RESPONSE/BANK_SYSERRCODE"/>
    <field type="string" codec="str2Binary('GBK')" name="bank_syserrmsg" desc="账务系统处理信息" xpath="/ILINK/RESPONSE/BANK_SYSERRMSG"/>
    <field type="string" codec="str2Binary('GBK')" name="trade_status" desc="交易最终处理状态" xpath="/ILINK/RESPONSE/TRADE_STATUS"/>
    <field type="string" codec="str2Binary('GBK')" name="trade_busistep" desc="平台业务步骤序号" xpath="/ILINK/RESPONSE/TRADE_BUSISTEP"/>
    <field type="string" codec="str2Binary('GBK')" name="trans_flag" desc="现转标志" xpath="/ILINK/RESPONSE/TRANS_FLAG"/>
    <field type="string" codec="str2Binary('GBK')" name="cb_flg" desc="卡折标志" xpath="/ILINK/RESPONSE/CB_FLG"/>
  </strategy> 
</message>
