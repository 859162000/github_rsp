<?xml version="1.0" encoding="UTF-8"?>

<message direction="encode" type="xml"> 
  <strategy type="xml" charset="GBK" prologue="true"> 
    <field type="string" codec="str2Binary('GBK')" name="resp_status" desc="交易状态" xpath="/ILINK/HEAD/RESP_STATUS"/>  
    <field type="string" codec="str2Binary('GBK')" name="p_front_resp_code" desc="返回码" xpath="/ILINK/HEAD/RESP_CODE"/>  
    <field type="string" codec="str2Binary('GBK')" name="resp_desc" desc="返回信息" xpath="/ILINK/HEAD/RESP_DESC"/>  
    <field type="string" codec="str2Binary('GBK')" name="function" desc="操作类型" xpath="/ILINK/HEAD/FUNCTION"/>  
    <choose condition="${function}"> 
      <when case="&quot;0&quot;"> 
        <field type="string" codec="str2Binary('GBK')" name="third_cusno" desc="银行核心客户号" xpath="/ILINK/RESPONSE/THIRDCUS_NO"/>  
        <field type="string" codec="str2Binary('GBK')" name="crp_nam" desc="核算单位名称" xpath="/ILINK/RESPONSE/CRP_NAM"/>  
        <field type="string" codec="str2Binary('GBK')" name="third_add" desc="地址" xpath="/ILINK/RESPONSE/THIRD_ADD"/>  
        <field type="string" codec="str2Binary('GBK')" name="third_post" desc="邮编" xpath="/ILINK/RESPONSE/THIRD_POST"/>  
        <field type="string" codec="str2Binary('GBK')" name="third_con" desc="联系人" xpath="/ILINK/RESPONSE/THIRD_CON"/>  
        <field type="string" codec="str2Binary('GBK')" name="third_tel" desc="联系电话" xpath="/ILINK/RESPONSE/THIRD_TEL"/>  
        <field type="string" codec="str2Binary('GBK')" name="contract_no" desc="签约合同号" xpath="/ILINK/RESPONSE/CONTRACT_NO"/>  
        <field type="string" codec="str2Binary('GBK')" name="work_date" desc="签约日期" xpath="/ILINK/RESPONSE/WORK_DATE"/>  
        <field type="string" codec="str2Binary('GBK')" name="bus_mode" desc="业务方式" xpath="/ILINK/RESPONSE/BUS_MODE"/>  
        <field type="string" codec="str2Binary('GBK')" name="bat_type" desc="批量方式" xpath="/ILINK/RESPONSE/BAT_TYPE"/>  
        <field type="string" codec="str2Binary('GBK')" name="oprinn_acc1" desc="商户的内部户1联机交易用" xpath="/ILINK/RESPONSE/OPRINN_ACC1"/>  
        <field type="string" codec="str2Binary('GBK')" name="cracc_no1" desc="商户银行帐户1联机交易用" xpath="/ILINK/RESPONSE/CRACC_NO1"/>  
        <field type="string" codec="str2Binary('GBK')" name="cracc_name1" desc="账号名称1" xpath="/ILINK/RESPONSE/CRACC_NAME1"/>  
        <field type="string" codec="str2Binary('GBK')" name="opr_teller1" desc="开户柜员1" xpath="/ILINK/RESPONSE/OPR_TELLER1"/>  
        <field type="string" codec="str2Binary('GBK')" name="oprinn_acc2" desc="商户的内部户2代收业务" xpath="/ILINK/RESPONSE/OPRINN_ACC2"/>  
        <field type="string" codec="str2Binary('GBK')" name="cracc_no2" desc="商户银行帐户2代收业务" xpath="/ILINK/RESPONSE/CRACC_NO2"/>  
        <field type="string" codec="str2Binary('GBK')" name="cracc_name2" desc="账号名称2" xpath="/ILINK/RESPONSE/CRACC_NAME2"/>  
        <field type="string" codec="str2Binary('GBK')" name="opr_teller2" desc="开户柜员2" xpath="/ILINK/RESPONSE/OPR_TELLER2"/>  
        <field type="string" codec="str2Binary('GBK')" name="oprinn_acc3" desc="商户的内部户3代付业务" xpath="/ILINK/RESPONSE/OPRINN_ACC3"/>  
        <field type="string" codec="str2Binary('GBK')" name="cracc_no3" desc="商户银行帐户3代付业务" xpath="/ILINK/RESPONSE/CRACC_NO3"/>  
        <field type="string" codec="str2Binary('GBK')" name="cracc_name3" desc="账号名称3" xpath="/ILINK/RESPONSE/CRACC_NAME3"/>  
        <field type="string" codec="str2Binary('GBK')" name="opr_teller3" desc="开户柜员3" xpath="/ILINK/RESPONSE/OPR_TELLER3"/>  
        <field type="string" codec="str2Binary('GBK')" name="snote1" desc="备用1" xpath="/ILINK/RESPONSE/SNOTE1"/>  
        <field type="string" codec="str2Binary('GBK')" name="snote2" desc="备注2" xpath="/ILINK/RESPONSE/SNOTE2"/>  
        <field type="string" codec="str2Binary('GBK')" name="snote3" desc="备注3" xpath="/ILINK/RESPONSE/SNOTE3"/>  
        <field type="string" codec="str2Binary('GBK')" name="snote4" desc="备注4" xpath="/ILINK/RESPONSE/SNOTE4"/>  
        <field type="string" codec="str2Binary('GBK')" name="sub_status" xpath="/ILINK/RESPONSE/SUB_STATUS" desc="副表协议状态"/> 
      </when>  
      <when case="&quot;3&quot;"/>  
      <when case="&quot;2&quot;"/>  
      <when case="&quot;1&quot;"/> 
    </choose> 
  </strategy> 
</message>
