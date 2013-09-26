<?xml version="1.0" encoding="UTF-8"?>

<message direction="encode" type="xml"> 
  <strategy type="xml" charset="GBK" prologue="true"> 
    <field type="string" codec="str2Binary('GBK')" name="amount" desc="金额" xpath="/ILINK/REQUEST/AMOUNT"/>  
    <field type="string" codec="str2Binary('GBK')" name="currency" desc="交易货币" xpath="/ILINK/REQUEST/CURRENCY"/>  
    <field type="string" codec="str2Binary('GBK')" name="zoneno" desc="地区号" xpath="/ILINK/REQUEST/ZONENO"/>  
    <field type="string" codec="str2Binary('GBK')" name="bank_sysdate" desc="账务系统受理日期" xpath="/ILINK/REQUEST/BANK_SYSDATE"/>
    <field type="string" codec="str2Binary('GBK')" name="bank_sysstatus" desc="账户受理状态" xpath="/ILINK/REQUEST/BANK_SYSSTATUS"/>
    <field type="string" codec="str2Binary('GBK')" name="revtranf" desc="正反交易标识" xpath="/ILINK/REQUEST/REVTRANF"/>
    <field type="string" codec="str2Binary('GBK')" name="payer_accbank" desc="付款人开户行" xpath="/ILINK/REQUEST/PAYER_ACCBANK"/>
    <field type="string" codec="str2Binary('GBK')" name="payer_acc" desc="付款人账号 " xpath="/ILINK/REQUEST/PAYER_ACC"/>
    <field type="string" codec="str2Binary('GBK')" name="payer_name" desc="付款人名称" xpath="/ILINK/REQUEST/PAYER_NAME"/>
    <field type="string" codec="str2Binary('GBK')" name="payee_accbank" desc="收款人开户行" xpath="/ILINK/REQUEST/PAYEE_ACCBANK"/>
    <field type="string" codec="str2Binary('GBK')" name="payee_acc" desc="收款人账号" xpath="/ILINK/REQUEST/PAYEE_ACC"/>
    <field type="string" codec="str2Binary('GBK')" name="payee_name" desc="收款人名称" xpath="/ILINK/REQUEST/PAYEE_NAME"/>
    <field type="string" codec="str2Binary('GBK')" name="fee_amount" desc="手续费金额" xpath="/ILINK/REQUEST/FEE_AMOUNT"/>
    <field type="string" codec="str2Binary('GBK')" name="third_id" desc="第三方标识" xpath="/ILINK/REQUEST/THIRD_ID"/>
    <field type="string" codec="str2Binary('GBK')" name="third_sysdate" desc="第三方受理日期" xpath="/ILINK/REQUEST/THIRD_SYSDATE"/>
    <field type="string" codec="str2Binary('GBK')" name="third_sysseq" desc="第三方受理序号" xpath="/ILINK/REQUEST/THIRD_SYSSEQ"/>
    <field type="string" codec="str2Binary('GBK')" name="third_sysstatus" desc="第三方处理状态" xpath="/ILINK/REQUEST/THIRD_SYSSTATUS"/>
    <field type="string" codec="str2Binary('GBK')" name="third_sysmsg" desc="第三方处理信息" xpath="/ILINK/REQUEST/THIRD_SYSMSG"/>
    <field type="string" codec="str2Binary('GBK')" name="bank_sysseq" desc="账务系统受理序号" xpath="/ILINK/REQUEST/BANK_SYSSEQ"/>
    <field type="string" codec="str2Binary('GBK')" name="bank_syserrcode" desc="账务系统处理码" xpath="/ILINK/REQUEST/BANK_SYSERRCODE"/>
    <field type="string" codec="str2Binary('GBK')" name="bank_syserrmsg" desc="账务系统处理信息" xpath="/ILINK/REQUEST/BANK_SYSERRMSG"/>
    <field type="string" codec="str2Binary('GBK')" name="trade_status" desc="交易最终处理状态" xpath="/ILINK/REQUEST/TRADE_STATUS"/>
    <field type="string" codec="str2Binary('GBK')" name="trade_busistep" desc="平台业务步骤序号" xpath="/ILINK/REQUEST/TRADE_BUSISTEP"/>
    <field type="string" codec="str2Binary('GBK')" name="trans_flag" desc="现转标志" xpath="/ILINK/REQUEST/TRANS_FLAG"/>
    <field type="string" codec="str2Binary('GBK')" name="cb_flg" desc="卡折标志" xpath="/ILINK/REQUEST/CB_FLG"/>
  </strategy> 
</message>
