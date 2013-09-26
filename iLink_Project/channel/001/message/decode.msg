<?xml version="1.0" encoding="UTF-8"?>

<message direction="decode" type="var"> 
  <strategy type="var"> 
    <field type="int" codec="binary2IntStr" name="msg_length" desc="报文总长度" length="2"/>  
    <field type="string" codec="binary2Str('GBK')" desc="规范版本号" length="2" name="app_num"/>  
    <field type="string" codec="binary2Str('GBK')" length="8" desc="随即校验码" name="random_check_num"/>  
    <field type="string" codec="binary2Str('GBK')" name="message_type" desc="报文类型" length="4"/>  
    <field type="composite" codec="" desc="8583内容" length="-1"> 
      <strategy type="iso8583"> 
        <field type="string" codec="binary2Str('GBK')" desc="主账号" name="account_no" pattern="N..19(LLVAR)" tag="2"/>  
        <field type="string" codec="binary2Str('GBK')" desc="交易处理码" tag="3" pattern="N6" name="trans_code"/>  
        <choose condition="${trans_code}!=null"> 
          <when case="true"> 
            <set name="p_channel_trans_code" expr="${message_type}+&quot;_&quot;+${trans_code}"/> 
          </when> 
        </choose>  
        <field type="string" codec="binary2Str('GBK')" pattern="N12" desc="交易金额" tag="4" name="amount"/>  
        <field type="string" codec="binary2Str('GBK')" name="trans_dtime" desc="传输时间/日期" pattern="N10" tag="7"/>  
        <field type="string" codec="binary2Str('GBK')" name="term_seqno" tag="11" pattern="N6" desc="终端流水号"/>  
        <field type="string" codec="binary2Str('GBK')" name="term_loc_time" desc="终端时间" tag="12" pattern="N6"/>  
        <field type="string" codec="binary2Str('GBK')" name="term_loc_date" desc="终端日期" tag="13" pattern="N4"/>  
        <field type="string" codec="binary2Str('GBK')" desc="卡有效期" name="expiration_date" pattern="N4" tag="14"/>  
        <field type="string" codec="binary2Str('GBK')" name="settle_date" desc="清算日期" pattern="N4" tag="15"/>  
        <field type="string" codec="binary2Str('GBK')" desc="商户类型" tag="18" name="merch_type" pattern="N4"/>  
        <field tag="22" desc="服务点进入方式" name="service_entry" type="string" codec="binary2Str('GBK')" pattern="N3"/>  
        <field tag="23" desc="卡序列号" name="card_serial" type="string" codec="binary2Str('GBK')" pattern="N3"/>  
        <field tag="25" desc="服务点条件代码" codec="binary2Str('GBK')" pattern="N2" name="service_cond" type="string"/>  
        <field type="string" codec="binary2Str('GBK')" tag="26" pattern="N2" name="capture_code" desc="服务点PIN获取码"/>  
        <field type="string" codec="binary2Str('GBK')" tag="28" pattern="XN8" desc="手续费" name="fee"/>  
        <field type="string" codec="binary2Str('GBK')" name="acquiring_code" desc="受卡方标识码" pattern="N..11(LLVAR)" tag="32"/>  
        <field type="string" codec="binary2Str('GBK')" desc="发送机构标识码" name="sender_code" tag="33" pattern="N..11(LLVAR)"/>  
        <field tag="35" desc="第二磁道数据" name="track2" type="string" codec="binary2Str('GBK')" pattern="Z..37(LLVAR)"/>  
        <field tag="36" desc="第三磁道数据" name="track3" type="string" codec="binary2Str('GBK')" pattern="Z...104(LLLVAR)"/>  
        <field type="string" codec="binary2Str('GBK')" pattern="AN12" tag="37" desc="检索参考号" name="retrieve_no"/>  
        <field tag="39" desc="响应码" name="p_front_resp_code" type="string" codec="binary2Str('GBK')" pattern="AN2"/>  
        <field tag="41" desc="终端标识码" name="p_term_id" type="string" codec="binary2Str('GBK')" pattern="ANS8"/>  
        <field type="string" codec="binary2Str('GBK')" tag="42" desc="受理机构标识码" name="shop_id" pattern="ANS15"/>  
        <field type="string" codec="binary2Str('GBK')" tag="43" pattern="ANS40" desc="受卡方名称地址" name="card_acceptor_location"/>  
        <choose condition="${p_channel_trans_code}==&quot;0100_700000&quot;"> 
          <when case="true"> 
            <field type="binary" codec="binary" tag="48" name="add_data" pattern="ANSB...512(LLLVAR)" desc="附加数据"/> 
          </when>  
          <otherwise> 
            <field type="string" codec="binary2Str('ISO-8859-1')" tag="48" name="add_data" pattern="ANSB...512(LLLVAR)" desc="附加数据"/> 
          </otherwise> 
        </choose>  
        <field tag="49" desc="交易货币代码" name="currency_code" type="string" codec="binary2Str('GBK')" pattern="AN3"/>  
        <field tag="52" desc="PIN密文块" name="pin" type="binary" codec="binary" pattern="B64"/>  
        <field tag="53" desc="安全控制域" name="sec_con_data" type="composite" codec="" pattern="N16"> 
          <strategy type="var"> 
            <field type="string" codec="binary2Str('GBK')" name="data_type" desc="密钥类型/PIN格式" pattern="N1" length="1"/>  
            <field type="string" codec="binary2Str('GBK')" name="encrypt_method_used" length="1" desc="加密算法标识"/>  
            <field type="string" codec="binary2Str('GBK')" name="reserved" desc="预留" length="14"/> 
          </strategy> 
        </field>  
        <field type="string" codec="binary2Str('GBK')" name="add_amounts" desc="附加金额" tag="54" pattern="AN..80(LLVAR)"/>  
        <field type="string" codec="binary2Str('ISO-8859-1')" name="ic_data" desc="ic卡数据信息" tag="55" pattern="ANSB..255(LLLVAR)"/>  
        <field type="string" codec="binary2Str('GBK')" tag="58" pattern="ANS...100(LLLVAR)" desc="IC卡交易保留数据" name="ic_reserved_data"/>  
        <field type="string" codec="binary2Str('GBK')" desc="明细查询数据" pattern="ANS...600(LLLVAR)" tag="59" name="details_inquiry_data"/>  
        <field type="string" codec="binary2Str('GBK')" tag="60" pattern="ANS...100(LLLVAR)" name="add_service_data" desc="附加服务点数据"/>  
        <field type="string" codec="binary2Str('GBK')" tag="66" name="settle_code" desc="清算代码" pattern="N1"/>  
        <field type="string" codec="binary2Str('GBK')" name="network_info_code" desc="网络管理信息码" tag="70" pattern="N3"/>  
        <choose condition="${network_info_code}!=null"> 
          <when case="true"> 
            <set name="p_channel_trans_code" expr="${message_type}+&quot;_&quot;+${network_info_code}"/> 
          </when> 
        </choose>  
        <field type="composite" codec="" tag="90" desc="原数据元" name="org_data" pattern="N42"> 
          <strategy type="var"> 
            <field type="string" codec="binary2Str('GBK')" name="org_mac_data" desc="原信息MAC校验部分" length="20"/>  
            <field type="string" codec="binary2Str('GBK')" name="org_other_data" desc="其它原信息" length="22"/> 
          </strategy> 
        </field>  
        <field type="string" codec="binary2Str('GBK')" tag="95" pattern="ANS42" name="replace_amount" desc="替换金额"/>  
        <field type="string" codec="binary2Str('GBK')" pattern="N..11(LLVAR)" tag="100" desc="接收机构标识码" name="recv_inst_code"/>  
        <field type="string" codec="binary2Str('GBK')" pattern="ANS..28(LLVAR)" tag="102" desc="账户标识1" name="account_no1"/>  
        <field type="string" codec="binary2Str('GBK')" pattern="ANS..28(LLVAR)" tag="103" desc="账户标识2" name="account_no2"/>  
        <field type="composite" codec="" desc="受理方保留" tag="122" pattern="ANS...100(LLLVAR)" name="acq_ins_resv"> 
          <strategy type="var"> 
            <field type="string" codec="binary2Str('GBK')" name="org_code" desc="存放银行网点号" length="6"/>  
            <field type="string" codec="binary2Str('GBK')" name="teller_code" desc="操作员号" length="6"/> 
          </strategy> 
        </field>  
        <field type="binary" codec="binary2Str('GBK')/hexStr2Binary" desc="报文鉴别码" name="p_mac" pattern="B64" tag="128"/> 
      </strategy> 
    </field> 
  </strategy> 
</message>
