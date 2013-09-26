<?xml version="1.0" encoding="UTF-8"?>

<message direction="decode" type="xml"> 
  <field type="string" codec="binary2Str('GBK')" name="function" desc="功能号" xpath="/ILINK/REQUEST/FUNCTION"/>  
  <choose condition="${function}"> 
    <when case="&quot;1&quot;"> 
      <field type="string" codec="binary2Str('GBK')" name="crp_id" desc="核算单位号" xpath="/ILINK/REQUEST/CRP_ID"/>
      <field type="string" codec="binary2Str('GBK')" name="third_cusno" desc="银行核心客户号" xpath="/ILINK/REQUEST/THIRDCUS_NO"/>
      <field type="string" codec="binary2Str('GBK')" name="crp_nam" desc="核算单位名称" xpath="/ILINK/REQUEST/CRP_NAM"/>
      <field type="string" codec="binary2Str('GBK')" name="third_add" desc="地址" xpath="/ILINK/REQUEST/THIRD_ADD"/>
      <field type="string" codec="binary2Str('GBK')" name="third_post" desc="邮编" xpath="/ILINK/REQUEST/THIRD_POST"/>
      <field type="string" codec="binary2Str('GBK')" name="third_con" desc="联系人" xpath="/ILINK/REQUEST/THIRD_CON"/>
      <field type="string" codec="binary2Str('GBK')" name="third_tel" desc="联系电话" xpath="/ILINK/REQUEST/THIRD_TEL"/>
      <field type="string" codec="binary2Str('GBK')" name="contract_no" desc="签约合同号" xpath="/ILINK/REQUEST/CONTRACT_NO"/>
      <field type="string" codec="binary2Str('GBK')" name="work_date" desc="签约日期" xpath="/ILINK/REQUEST/WORK_DATE"/>
      <field type="string" codec="binary2Str('GBK')" name="bus_mode" desc="业务方式" xpath="/ILINK/REQUEST/BUS_MODE"/>
      <field type="string" codec="binary2Str('GBK')" name="bat_type" desc="批量方式" xpath="/ILINK/REQUEST/BAT_TYPE"/>
      <field type="string" codec="binary2Str('GBK')" name="oprinn_acc1" desc="商户的内部户1联机交易用" xpath="/ILINK/REQUEST/OPRINN_ACC1"/>
      <field type="string" codec="binary2Str('GBK')" name="cracc_no1" desc="商户银行帐户1联机交易用" xpath="/ILINK/REQUEST/CRACC_NO1"/>
      <field type="string" codec="binary2Str('GBK')" name="cracc_name1" desc="账号名称1" xpath="/ILINK/REQUEST/CRACC_NAME1"/>
      <field type="string" codec="binary2Str('GBK')" name="opr_teller1" desc="开户柜员1" xpath="/ILINK/REQUEST/OPR_TELLER1"/>
      <field type="string" codec="binary2Str('GBK')" name="oprinn_acc2" desc="商户的内部户2代收业务" xpath="/ILINK/REQUEST/OPRINN_ACC2"/>
      <field type="string" codec="binary2Str('GBK')" name="cracc_no2" desc="商户银行帐户2代收业务" xpath="/ILINK/REQUEST/CRACC_NO2"/>
      <field type="string" codec="binary2Str('GBK')" name="cracc_name2" desc="账号名称2" xpath="/ILINK/REQUEST/CRACC_NAME2"/>
      <field type="string" codec="binary2Str('GBK')" name="opr_teller2" desc="开户柜员2" xpath="/ILINK/REQUEST/OPR_TELLER2"/>
      <field type="string" codec="binary2Str('GBK')" name="oprinn_acc3" desc="商户的内部户3代付业务" xpath="/ILINK/REQUEST/OPRINN_ACC3"/>
      <field type="string" codec="binary2Str('GBK')" name="cracc_no3" desc="商户银行帐户3代付业务" xpath="/ILINK/REQUEST/CRACC_NO3"/>
      <field type="string" codec="binary2Str('GBK')" name="cracc_name3" desc="账号名称3" xpath="/ILINK/REQUEST/CRACC_NAME3"/>
      <field type="string" codec="binary2Str('GBK')" name="opr_teller3" desc="开户柜员3" xpath="/ILINK/REQUEST/OPR_TELLER3"/>
      <field type="string" codec="binary2Str('GBK')" name="snote1" desc="备用1" xpath="/ILINK/REQUEST/SNOTE1"/>
      <field type="string" codec="binary2Str('GBK')" name="snote2" desc="备注2" xpath="/ILINK/REQUEST/SNOTE2"/>
      <field type="string" codec="binary2Str('GBK')" name="snote3" desc="备注3" xpath="/ILINK/REQUEST/SNOTE3"/>
      <field type="string" codec="binary2Str('GBK')" name="snote4" desc="备注4" xpath="/ILINK/REQUEST/SNOTE4"/>
      <field type="string" codec="binary2Str('GBK')" name="sub_biztype" desc="子业务类型" xpath="/ILINK/REQUEST/SUB_BIZTYPE"/>
      <field type="string" codec="binary2Str('GBK')" name="contract_no2" desc="合同额外约束字段" xpath="/ILINK/REQUEST/CONTRACT_NO2"/>
      <field type="string" codec="binary2Str('GBK')" name="contract_name" desc="合同名称" xpath="/ILINK/REQUEST/CONTRACT_NAME"/>
      <field type="string" codec="binary2Str('GBK')" name="user_id" desc="客户号" xpath="/ILINK/REQUEST/USER_ID"/>
      <field type="string" codec="binary2Str('GBK')" xpath="/ILINK/REQUEST/STATUS" name="status" desc="协议状态"/>
      <field type="string" codec="binary2Str('GBK')" xpath="/ILINK/REQUEST/U_BRNO" name="u_brno" desc="最近修改机构"/>
      <field type="string" codec="binary2Str('GBK')" xpath="/ILINK/REQUEST/U_TELLERNO" name="u_tellerno" desc="最近修改柜员"/>
      <field type="string" codec="binary2Str('GBK')" xpath="/ILINK/REQUEST/U_WORKDATE" name="u_workdate" desc="最近修改日期"/>
    </when>  
    <when case="&quot;3&quot;"> 
      <field type="string" codec="binary2Str('GBK')" name="status" desc="协议状态" xpath="/ILINK/REQUEST/STATUS"/>  
      <field type="string" codec="binary2Str('GBK')" name="u_brno" desc="最近修改机构" xpath="/ILINK/REQUEST/U_BRNO"/>  
      <field type="string" codec="binary2Str('GBK')" name="u_tellerno" desc="最近修改柜员" xpath="/ILINK/REQUEST/U_TELLERNO"/>  
      <field type="string" codec="binary2Str('GBK')" name="u_workdate" desc="最近修改日期" xpath="/ILINK/REQUEST/U_WORKDATE"/>  
      <field type="string" codec="binary2Str('GBK')" name="sub_status" xpath="/ILINK/REQUEST/SUB_STATUS" desc="副表协议状态"/>
      <field type="string" codec="binary2Str('GBK')" name="crp_id" desc="核算单位号" xpath="/ILINK/REQUEST/CRP_ID"/>
    </when>  
    <when case="&quot;2&quot;"> 
      <field type="string" codec="binary2Str('GBK')" name="u_brno" desc="最近修改机构" xpath="/ILINK/REQUEST/U_BRNO"/>  
      <field type="string" codec="binary2Str('GBK')" name="u_tellerno" desc="最近修改柜员" xpath="/ILINK/REQUEST/U_TELLERNO"/>  
      <field type="string" codec="binary2Str('GBK')" name="u_workdate" desc="最近修改日期" xpath="/ILINK/REQUEST/U_WORKDATE"/>  
      <field type="string" codec="binary2Str('GBK')" name="third_cusno" desc="银行核心客户号" xpath="/ILINK/REQUEST/THIRDCUS_NO"/>
      <field type="string" codec="binary2Str('GBK')" name="crp_nam" desc="核算单位名称" xpath="/ILINK/REQUEST/CRP_NAM"/>
      <field type="string" codec="binary2Str('GBK')" name="third_add" desc="地址" xpath="/ILINK/REQUEST/THIRD_ADD"/>
      <field type="string" codec="binary2Str('GBK')" name="third_post" desc="邮编" xpath="/ILINK/REQUEST/THIRD_POST"/>
      <field type="string" codec="binary2Str('GBK')" name="third_con" desc="联系人" xpath="/ILINK/REQUEST/THIRD_CON"/>
      <field type="string" codec="binary2Str('GBK')" name="third_tel" desc="联系电话" xpath="/ILINK/REQUEST/THIRD_TEL"/>
      <field type="string" codec="binary2Str('GBK')" name="contract_no" desc="签约合同号" xpath="/ILINK/REQUEST/CONTRACT_NO"/>
      <field type="string" codec="binary2Str('GBK')" name="work_date" desc="签约日期" xpath="/ILINK/REQUEST/WORK_DATE"/>
      <field type="string" codec="binary2Str('GBK')" name="bus_mode" desc="业务方式" xpath="/ILINK/REQUEST/BUS_MODE"/>
      <field type="string" codec="binary2Str('GBK')" name="bat_type" desc="批量方式" xpath="/ILINK/REQUEST/BAT_TYPE"/>
      <field type="string" codec="binary2Str('GBK')" name="oprinn_acc1" desc="商户的内部户1联机交易用" xpath="/ILINK/REQUEST/OPRINN_ACC1"/>
      <field type="string" codec="binary2Str('GBK')" name="cracc_no1" desc="商户银行帐户1联机交易用" xpath="/ILINK/REQUEST/CRACC_NO1"/>
      <field type="string" codec="binary2Str('GBK')" name="cracc_name1" desc="账号名称1" xpath="/ILINK/REQUEST/CRACC_NAME1"/>
      <field type="string" codec="binary2Str('GBK')" name="opr_teller1" desc="开户柜员1" xpath="/ILINK/REQUEST/OPR_TELLER1"/>
      <field type="string" codec="binary2Str('GBK')" name="oprinn_acc2" desc="商户的内部户2代收业务" xpath="/ILINK/REQUEST/OPRINN_ACC2"/>
      <field type="string" codec="binary2Str('GBK')" name="cracc_no2" desc="商户银行帐户2代收业务" xpath="/ILINK/REQUEST/CRACC_NO2"/>
      <field type="string" codec="binary2Str('GBK')" name="cracc_name2" desc="账号名称2" xpath="/ILINK/REQUEST/CRACC_NAME2"/>
      <field type="string" codec="binary2Str('GBK')" name="opr_teller2" desc="开户柜员2" xpath="/ILINK/REQUEST/OPR_TELLER2"/>
      <field type="string" codec="binary2Str('GBK')" name="oprinn_acc3" desc="商户的内部户3代付业务" xpath="/ILINK/REQUEST/OPRINN_ACC3"/>
      <field type="string" codec="binary2Str('GBK')" name="cracc_no3" desc="商户银行帐户3代付业务" xpath="/ILINK/REQUEST/CRACC_NO3"/>
      <field type="string" codec="binary2Str('GBK')" name="cracc_name3" desc="账号名称3" xpath="/ILINK/REQUEST/CRACC_NAME3"/>
      <field type="string" codec="binary2Str('GBK')" name="opr_teller3" desc="开户柜员3" xpath="/ILINK/REQUEST/OPR_TELLER3"/>
      <field type="string" codec="binary2Str('GBK')" name="snote1" desc="备用1" xpath="/ILINK/REQUEST/SNOTE1"/>
      <field type="string" codec="binary2Str('GBK')" name="snote2" desc="备注2" xpath="/ILINK/REQUEST/SNOTE2"/>
      <field type="string" codec="binary2Str('GBK')" name="snote3" desc="备注3" xpath="/ILINK/REQUEST/SNOTE3"/>
      <field type="string" codec="binary2Str('GBK')" name="snote4" desc="备注4" xpath="/ILINK/REQUEST/SNOTE4"/>
      <field type="string" codec="binary2Str('GBK')" xpath="/ILINK/REQUEST/STATUS" name="status" desc="协议状态"/>
      <field type="string" codec="binary2Str('GBK')" name="crp_id" desc="核算单位号" xpath="/ILINK/REQUEST/CRP_ID"/>
      <field type="string" codec="binary2Str('GBK')" name="sub_status" xpath="/ILINK/REQUEST/SUB_STATUS" desc="副表协议状态"/>
    </when>  
    <when case="&quot;0&quot;"> 
      <field type="string" codec="binary2Str('GBK')" name="crp_id" desc="核算单位号" xpath="/ILINK/REQUEST/CRP_ID"/> 
    </when> 
  </choose> 
</message>
