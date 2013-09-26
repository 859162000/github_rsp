<?xml version="1.0" encoding="UTF-8"?>

<message direction="decode"> 
  <strategy type="var"> 
    <field type="int" codec="binary2Str('GBK')/removeLeftPad('0')" name="backend_msg_length" desc="报文总长度" length="4"/>  
    <field type="binary" codec="binary" name="backend_head_length" desc="报文头长度" length="1" pattern="B8"/>  
    <field type="binary" codec="binary" desc="头标识和版本号" name="backend_msg_version" length="1" pattern="B8"/>  
    <field type="string" codec="binary2Str('GBK')/removeLeftPad('0')" length="4" name="backend_msg_length" desc="报文总长度" pattern="N4"/>  
    <field type="string" codec="binary2Str('GBK')" name="backend_destination_id" desc="目标id" length="11" pattern="ANS11"/>  
    <field type="string" codec="binary2Str('GBK')" name="backend_source_id" desc="源id" length="11" pattern="ANS11"/>  
    <field type="binary" codec="binary" name="backend_reversed_use" desc="保留使用" pattern="B24" length="3"/>  
    <field type="binary" codec="binary" name="backend_batch_no" desc="批次号" pattern="B8" length="1"/>  
    <field type="string" codec="binary2Str('GBK')" desc="交易信息" name="backend_transaction_info" pattern="ANS8" length="8"/>  
    <field type="binary" codec="binary" name="backend_user_info" desc="用户信息" pattern="B8" length="1"/>  
    <field type="string" codec="binary2Str('GBK')" name="backend_reject_code" desc="拒绝码" pattern="N5" length="5"/>  
    <field type="string" codec="binary2Str('GBK')" name="backend_message_type" length="4" desc="消息类型"/>  
    <field type="composite" codec="" desc="8583内容" length="-1"> 
      <strategy type="iso8583"> 
        <field tag="2" desc="主账号" name="account_no" type="string" codec="binary2Str('GBK')" pattern="N..19(LLVAR)"/>  
        <field tag="3" desc="终端交易识别码" name="backend_trans_code" type="string" codec="binary2Str('GBK')" pattern="N6"/>  
        <field tag="4" desc="交易金额" name="amount" type="string" codec="binary2Str('GBK')" pattern="N12"/>  
        <field tag="7" desc="交易时间" name="trans_dtime" type="string" codec="binary2Str('GBK')" pattern="N10"/>  
        <field tag="11" desc="终端流水号" name="term_seqno" type="string" codec="binary2Str('GBK')" pattern="N6"/>  
        <field tag="12" desc="终端本地时间" name="term_loc_time" type="string" codec="binary2Str('GBK')" pattern="N6"/>  
        <field tag="13" desc="终端本地日期" name="term_loc_date" type="string" codec="binary2Str('GBK')" pattern="N4"/>  
        <field tag="14" desc="卡有效期" name="expiration_date" type="string" codec="binary2Str('GBK')" pattern="N4"/>  
        <field tag="15" desc="清算日期" name="settle_date" type="string" codec="binary2Str('GBK')" pattern="N4"/>  
        <field tag="18" desc="商户类型" name="merch_type" type="string" codec="binary2Str('GBK')" pattern="N4"/>  
        <field tag="22" desc="服务点进入方式" name="service_entry" type="string" codec="binary2Str('GBK')" pattern="N3"/>  
        <field tag="25" desc="服务点条件代码" name="service_cond" type="string" codec="binary2Str('GBK')" pattern="N2"/>  
        <field tag="26" desc="PIN获取码" name="capture_code" type="string" codec="binary2Str('GBK')" pattern="N2"/>  
        <field tag="28" desc="交易手续费" name="fee" type="string" codec="binary2Str('GBK')" pattern="XN8"/>  
        <field type="string" codec="binary2Str('GBK')" name="acquiring_code" desc="受卡方标识码" pattern="N..11(LLVAR)" tag="32"/>  
        <field type="string" codec="binary2Str('GBK')" desc="发送机构标识码" name="sender_code" tag="33" pattern="N..11(LLVAR)"/>  
        <field tag="35" desc="第二磁道数据" name="track2" type="string" codec="binary2Str('GBK')" pattern="Z..37(LLVAR)"/>  
        <field tag="36" desc="第三磁道数据" name="track3" type="string" codec="binary2Str('GBK')" pattern="Z..104(LLLVAR)"/>  
        <field tag="37" desc="前置流水号" name="ilink_seqno" type="string" codec="binary2Str('GBK')/removeRightPad(' ')" pattern="AN12"/>  
        <field type="string" codec="binary2Str('GBK')" name="auth_code" desc="授权标识应答码" tag="38" pattern="AN6"/>  
        <field tag="39" desc="响应码" name="p_backend_resp_code" type="string" codec="binary2Str('GBK')" pattern="AN2"/>  
        <field tag="41" desc="终端标识码" name="p_term_id" type="string" codec="binary2Str('GBK')" pattern="ANS8"/>  
        <field tag="42" desc="受卡方代码" name="shop_id" type="string" codec="binary2Str('GBK')" pattern="ANS15"/>  
        <field type="string" codec="binary2Str('GBK')" name="add_resp_data" desc="附加响应数据" tag="44" pattern="ANS..25(LLVAR)"/>  
        <choose condition="${p_trans_code}==&quot;0011008&quot;"> 
          <when case="true"> 
            <field type="binary" codec="binary" tag="48" name="add_data" pattern="ANSB...512(LLLVAR)" desc="附加数据"/> 
          </when>  
          <otherwise> 
            <field type="string" codec="binary2Str('ISO-8859-1')" tag="48" name="add_data" pattern="ANSB...512(LLLVAR)" desc="附加数据"/> 
          </otherwise> 
        </choose>  
        <field tag="49" desc="交易货币代码" name="currency_code" type="string" codec="binary2Str('GBK')" pattern="AN3"/>  
        <field type="binary" codec="binary" name="pin_exchange" desc="PIN密文块" pattern="B128" tag="52"/>  
        <field tag="53" desc="安全控制域" name="sec_con_data" type="composite" codec="" pattern="N16"> 
          <strategy type="var"> 
            <field type="string" codec="binary2Str('GBK')" name="data_type" desc="密钥类型/PIN格式" pattern="N1" length="1"/>  
            <field type="string" codec="binary2Str('GBK')" name="encrypt_method_used" length="1" desc="加密算法标识"/>  
            <field type="string" codec="binary2Str('GBK')" name="reserved" desc="预留" length="14"/> 
          </strategy> 
        </field>  
        <field type="composite" codec="" name="add_amounts" desc="附加余额" tag="54" pattern="AN...040(LLLVAR)"> 
          <strategy type="iso8583.constructed"> 
            <field type="string" codec="binary2Str('GBK')" name="add_account_type" desc="账户类型" pattern="N2"/>  
            <field type="string" codec="binary2Str('GBK')" name="add_amount_type" desc="数量类型" pattern="N2"/>  
            <field type="string" codec="binary2Str('GBK')" name="add_currency_code" desc="货币代码" pattern="an3"/>  
            <field type="string" codec="binary2Str('GBK')" name="add_amount_sign" pattern="AN1" desc="余额符号"/>  
            <field type="string" codec="binary2Str('GBK')" name="add_balance" desc="余额" pattern="N12"/>  
            <field type="string" codec="binary2Str('GBK')" name="available_account_type" desc="可用余额账户类型" pattern="N2"/>  
            <field type="string" codec="binary2Str('GBK')" name="available_amount_type" desc="可用余额数量类型" pattern="N2"/>  
            <field type="string" codec="binary2Str('GBK')" name="available_currency_code" desc="可用余额货币代码" pattern="an3"/>  
            <field type="string" codec="binary2Str('GBK')" name="available_amount_sign" pattern="AN1" desc="可用余额符号"/>  
            <field type="string" codec="binary2Str('GBK')" name="available_balance" desc="可用余额" pattern="N12"/> 
          </strategy> 
        </field>  
        <field type="string" codec="binary2Str('ISO-8859-1')" name="ic_data" desc="ic卡数据信息" tag="55" pattern="ANSB..255(LLLVAR)"/>  
        <field type="string" codec="binary2Str('GBK')" tag="60" pattern="ANS...100(LLLVAR)" name="add_service_data" desc="附加服务点数据"/>  
        <field tag="61" desc="客户信息" name="ch_auth_info" type="string" codec="binary2Str('GBK')" pattern="ANS...200(LLLVAR)"/>  
        <field tag="70" desc="网络管理信息代码" name="backend_network_info_code" type="string" codec="binary2Str('GBK')" pattern="N3"/>  
        <field type="composite" codec="" tag="90" desc="原数据元" name="org_data" pattern="N42"> 
          <strategy type="var"> 
            <field type="string" codec="binary2Str('GBK')" name="org_mac_data" desc="原信息MAC校验部分" length="20"/>  
            <field type="string" codec="binary2Str('GBK')" name="org_other_data" desc="其它原信息" length="22"/> 
          </strategy> 
        </field>  
        <field type="string" codec="binary2Str('GBK')" name="recv_inst_code" tag="100" pattern="N..11(LLVAR)" desc="接收机构标识码"/>  
        <field tag="102" desc="转出账号" name="account_no1" type="string" codec="binary2Str('GBK')" pattern="ANS..28(LLVAR)"/>  
        <field tag="103" desc="转入账号" name="account_no2" type="string" codec="binary2Str('GBK')" pattern="ANS..28(LLVAR)"/>  
        <field type="string" codec="binary2Str('GBK')" tag="121" pattern="ANS...100(LLLVAR)" name="cups_reserved" desc="CUPS保留"/>  
        <field type="composite" codec="" desc="受理方保留" tag="122" pattern="ANS...100(LLLVAR)" name="acq_ins_resv"> 
          <strategy type="var"> 
            <field type="string" codec="binary2Str('GBK')" name="org_code" desc="存放银行网点号" length="6"/>  
            <field type="string" codec="binary2Str('GBK')" name="teller_code" desc="操作员号" length="6"/> 
          </strategy> 
        </field>  
        <field type="string" codec="binary2Str('GBK')" pattern="ANS..100(LLLVAR)" tag="123" desc="户名" name="sender_reserved"/>  
        <field tag="128" desc="报文鉴别码" name="p_mac" type="binary" codec="binary" pattern="B64"/> 
      </strategy> 
    </field> 
  </strategy> 
</message>
