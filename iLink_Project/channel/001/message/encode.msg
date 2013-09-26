<?xml version="1.0" encoding="UTF-8"?>

<message direction="encode" type="var"> 
  <strategy type="var"> 
    <field type="int" codec="intStr2Binary(2)" name="msg_length" desc="报文总长度" length="2"/>  
    <field type="string" codec="str2Binary('GBK')" name="app_num" desc="规范版本号" length="2"/>  
    <field type="string" codec="str2Binary('GBK')" name="random_check_num" desc="随即校验码" length="8"/>  
    <field type="string" codec="str2Binary('GBK')" name="message_type" desc="报文类型" length="4"/>  
    <field type="composite" codec="" desc="8583内容" length="${msg_length}-16"> 
      <strategy type="iso8583"> 
        <field type="string" codec="str2Binary('GBK')" name="account_no" desc="主账号" tag="2" pattern="N..19(LLVAR)"/>  
        <field type="string" codec="str2Binary('GBK')" desc="交易处理码" pattern="N6" tag="3" name="trans_code"/>  
        <field type="string" codec="str2Binary('GBK')" desc="交易金额" pattern="N12" tag="4" name="amount"/>  
        <field type="string" codec="str2Binary('GBK')" name="trans_dtime" desc="传输时间/日期" tag="7" pattern="N10"/>  
        <field type="string" codec="str2Binary('GBK')" desc="终端流水号" name="term_seqno" tag="11" pattern="N6"/>  
        <field type="string" codec="str2Binary('GBK')" name="term_loc_time" desc="终端时间" tag="12" pattern="N6"/>  
        <field type="string" codec="str2Binary('GBK')" name="term_loc_date" desc="终端日期" tag="13" pattern="N4"/>  
        <field type="string" codec="str2Binary('GBK')" name="expiration_date" pattern="N4" tag="14" desc="卡有效期"/>  
        <field type="string" codec="str2Binary('GBK')" name="settle_date" desc="清算日期" pattern="N4" tag="15"/>  
        <field type="string" codec="str2Binary('GBK')" name="merch_type" desc="商户类型" tag="18" pattern="N4"/>  
        <field type="string" codec="str2Binary('GBK')" name="service_entry" desc="服务点进入方式" tag="22" pattern="N3"/>  
        <field tag="23" desc="卡序列号" name="card_serial" type="string" codec="str2Binary('GBK')" pattern="N3"/>  
        <field tag="25" desc="服务点条件代码" codec="str2Binary('GBK')" pattern="N2" name="service_cond" type="string"/>  
        <field type="string" codec="str2Binary('GBK')" tag="26" pattern="N2" name="capture_code" desc="服务点PIN获取码"/>  
        <field type="string" codec="str2Binary('GBK')" name="fee" desc="手续费" tag="28" pattern="XN8"/>  
        <field type="string" codec="str2Binary('GBK')" name="acquiring_code" desc="受卡方标识码" tag="32" pattern="N..11(LLVAR)"/>  
        <field type="string" codec="str2Binary('GBK')" desc="发送机构标识码" name="sender_code" tag="33" pattern="N..11(LLVAR)"/>  
        <field type="string" codec="str2Binary('GBK')" pattern="N12" tag="37" desc="检索参考号" name="p_biz_seqno"/>  
        <field type="string" codec="str2Binary('GBK')" name="auth_code" desc="授权标识应答码" tag="38" pattern="AN6"/>  
        <field type="string" codec="str2Binary('GBK')" name="p_front_resp_code" desc="应答码" tag="39" pattern="AN2"/>  
        <field tag="41" desc="终端标识码" name="p_term_id" type="string" codec="str2Binary('GBK')" pattern="ANS8"/>  
        <field type="string" codec="str2Binary('GBK')" tag="42" desc="受理机构标识码" name="shop_id" pattern="ANS15"/>  
        <field type="string" codec="str2Binary('GBK')" name="add_resp_data" desc="附加响应数据" tag="44" pattern="ANS..25(LLVAR)"/>  
        <choose condition="${p_channel_trans_code}==&quot;0100_700000&quot;"> 
          <when case="true"> 
            <field type="binary" codec="binary" tag="48" name="add_data" pattern="ANSB...512(LLLVAR)" desc="附加数据"/> 
          </when>  
          <otherwise> 
            <field type="string" codec="str2Binary('ISO-8859-1')" tag="48" name="add_data" pattern="ANSB...512(LLLVAR)" desc="附加数据"/> 
          </otherwise> 
        </choose>  
        <field tag="49" desc="交易货币代码" name="currency_code" type="string" codec="str2Binary('GBK')" pattern="AN3"/>  
        <field tag="53" desc="安全控制域" name="sec_con_data" type="composite" codec="" pattern="N16"> 
          <strategy type="var"> 
            <field type="string" codec="str2Binary('GBK')" name="data_type" desc="密钥类型/PIN格式" pattern="N1" length="1"/>  
            <field type="string" codec="str2Binary('GBK')" name="encrypt_method_used" length="1" desc="加密算法标识"/>  
            <field type="string" codec="str2Binary('GBK')" name="reserved" desc="预留" length="14"/> 
          </strategy> 
        </field>  
        <field type="composite" codec="" name="add_amounts" desc="余额" tag="54" pattern="AN...080(LLLVAR)"> 
          <strategy type="iso8583.constructed"> 
            <field type="string" codec="str2Binary('GBK')" name="add_account_type" desc="账户类型" pattern="N2"/>  
            <field type="string" codec="str2Binary('GBK')" name="add_amount_type" desc="数量类型" pattern="N2"/>  
            <field type="string" codec="str2Binary('GBK')" name="add_currency_code" desc="货币代码" pattern="an3"/>  
            <field type="string" codec="str2Binary('GBK')" name="add_amount_sign" pattern="AN1" desc="余额符号"/>  
            <field type="string" codec="str2Binary('GBK')" name="add_balance" desc="余额" pattern="N12"/>  
            <field type="string" codec="str2Binary('GBK')" name="available_account_type" desc="可用余额账户类型" pattern="N2"/>  
            <field type="string" codec="str2Binary('GBK')" name="available_amount_type" desc="可用余额数量类型" pattern="N2"/>  
            <field type="string" codec="str2Binary('GBK')" name="available_currency_code" desc="可用余额货币代码" pattern="an3"/>  
            <field type="string" codec="str2Binary('GBK')" name="available_amount_sign" pattern="AN1" desc="可用余额符号"/>  
            <field type="string" codec="str2Binary('GBK')" name="available_balance" desc="可用余额" pattern="N12"/> 
          </strategy> 
        </field>  
        <field type="string" codec="str2Binary('ISO-8859-1')" name="ic_data" desc="ic卡数据信息" tag="55" pattern="ANS...255(LLLVAR)"/>  
        <field type="string" codec="str2Binary('GBK')" pattern="ANS...100(LLLVAR)" tag="58" desc="IC卡交易保留数据" name="ic_reserved_data"/>  
        <field type="string" codec="str2Binary('GBK')" desc="明细查询数据" pattern="ANS...600(LLLVAR)" tag="59" name="details_inquiry_data"/>  
        <field type="string" codec="str2Binary('GBK')" name="add_service_data" desc="附加服务点数据" tag="60" pattern="ANS...100(LLLVAR)"/>  
        <field type="string" codec="str2Binary('GBK')" name="settle_code" desc="清算代码" pattern="N1" tag="66"/>  
        <field type="string" codec="str2Binary('GBK')" name="network_info_code" desc="网络管理信息码" tag="70" pattern="N3"/>  
        <field type="composite" codec="" tag="90" desc="原数据元" name="org_data" pattern="N42"> 
          <strategy type="var"> 
            <field type="string" codec="str2Binary('GBK')" name="org_mac_data" desc="原信息MAC校验部分" length="20"/>  
            <field type="string" codec="str2Binary('GBK')" name="org_other_data" desc="其它原信息" length="22"/> 
          </strategy> 
        </field>  
        <field type="string" codec="str2Binary('GBK')" tag="95" pattern="ANS42" name="replace_amount" desc="替换金额"/>  
        <field type="string" codec="str2Binary('GBK')" pattern="N..11(LLVAR)" tag="100" desc="接收机构标识码" name="recv_inst_code"/>  
        <field type="string" codec="str2Binary('GBK')" pattern="ANS..28(LLVAR)" tag="102" desc="账户标识1" name="account_no1"/>  
        <field type="string" codec="str2Binary('GBK')" pattern="ANS..28(LLVAR)" tag="103" desc="账户标识2" name="account_no2"/>  
        <field type="string" codec="str2Binary('GBK')" tag="121" pattern="ANS...100(LLLVAR)" name="cups_reserved" desc="CUPS保留"/>  
        <field type="composite" codec="" desc="受理方保留" tag="122" pattern="ANS...100(LLLVAR)" name="acq_ins_resv"> 
          <strategy type="var"> 
            <field type="string" codec="str2Binary('GBK')" name="org_code" desc="存放银行网点号" length="6"/>  
            <field type="string" codec="str2Binary('GBK')" name="teller_code" desc="操作员号" length="6"/> 
          </strategy> 
        </field>  
        <field type="string" codec="str2Binary('GBK')" tag="123" pattern="ANS...100(LLLVAR)" name="sender_reserved" desc="发卡方保留"/>  
        <field type="binary" codec="binary2HexStr/str2Binary('GBK')" desc="报文鉴别码" name="p_mac" pattern="B64" tag="128"/> 
      </strategy> 
    </field> 
  </strategy> 
</message>
