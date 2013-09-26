<?xml version="1.0" encoding="UTF-8"?>

<message direction="encode" type="iso8583.eatmp"> 
  <strategy type="var"> 
    <field type="int" codec="binary2IntStr" name="msg_length" desc="报文总长度" length="2"/>  
    <field type="string" codec="binary2Str('GBK')" length="2" name="tpdu_id" desc="TPDU ID"/>  
    <field type="string" codec="binary2Str('GBK')" length="4" name="target_address" desc="目的地址"/>  
    <field type="string" codec="binary2Str('GBK')" length="4" name="source_address" desc="源地址"/>  
    <field type="string" codec="binary2Str('GBK')" length="2" name="app_type" desc="应用类别定义"/>  
    <field type="string" codec="binary2Str('GBK')" length="2" name="app_super_version" desc="软件总版本号"/>  
    <field type="string" codec="binary2Str('GBK')" name="term_status" length="1" desc="终端状态"/>  
    <field type="string" codec="binary2Str('GBK')" desc="处理要求" name="request_type" length="1"/>  
    <field type="string" codec="binary2Str('GBK')" length="6" desc="软件分版本号" name="app_version"/>  
    <field type="string" codec="binary2Str('GBK')" desc="消息类型" length="4" name="message_type"/>  
    <field type="composite" codec="" desc="8583内容" length="-1"> 
      <strategy type="iso8583.eatmp"> 
        <field tag="2" desc="主账号" name="account_num" type="string" codec="binary2Str('GBK')" pattern="AN..19(LLVAR)"/>  
        <field tag="3" desc="终端交易识别码" name="_channel_trans_code" type="string" codec="binary2Str('GBK')" pattern="N6"/>  
        <field type="string" codec="binary2Str('GBK')" desc="交易金额" name="amount" tag="4" pattern="N12"/>  
        <field type="string" codec="binary2Str('GBK')" name="p_channel_trans_code" desc="测试交易码" tag="5" pattern="ANS..15(LLVAR)"/>  
        <field type="string" codec="binary2Str('GBK')" desc="终端流水号" name="term_trace_no" pattern="N6" tag="11"/>  
        <field type="string" codec="binary2Str('GBK')" desc="终端交易时间" name="term_time" pattern="N6" tag="12"/>  
        <field type="string" codec="binary2Str('GBK')" name="term_date" desc="终端交易日期" tag="13" pattern="N4"/>  
        <field type="string" codec="binary2Str('GBK')" desc="卡有效期" tag="14" name="expire_date" pattern="N4"/>  
        <field type="string" codec="binary2Str('GBK')" name="settle_date" desc="清算日期" tag="15" pattern="N4"/>  
        <field type="string" codec="binary2Str('GBK')" pattern="N3" desc="服务点输入方式码" tag="22" name="service_entry"/>  
        <field type="string" codec="binary2Str('GBK')" desc="卡序列号" tag="23" pattern="N3" name="card_sn"/>  
        <field type="string" codec="binary2Str('GBK')" desc="服务点条件码" tag="25" name="service_cond" pattern="N2"/>  
        <field type="string" codec="binary2Str('GBK')" pattern="N2" name="pin_cap" tag="26" desc="PIN获取码"/>  
        <field type="string" codec="binary2Str('GBK')" desc="受理方标识码" name="acq_inst_code" tag="32" pattern="N..11(LLVAR)"/>  
        <field type="string" codec="binary2Str('GBK')" name="track2" desc="第二磁道数据" pattern="Z..37(LLVAR)" tag="35"/>  
        <field type="string" codec="binary2Str('GBK')" desc="第三磁道数据" tag="36" name="track3" pattern="Z...104(LLLVAR)"/>  
        <field type="string" codec="binary2Str('GBK')" desc="检索参考号" tag="37" name="original_sn" pattern="AN12"/>  
        <field type="string" codec="binary2Str('GBK')" name="auth_resp" pattern="AN6" tag="38" desc="授权标识应答码"/>  
        <field type="string" codec="binary2Str('GBK')" desc="应答码" tag="39" name="p_front_resp_code" pattern="AN2"/>  
        <field type="string" codec="binary2Str('GBK')" pattern="ANS8" name="p_term_id" desc="终端号" tag="41"/>  
        <field type="string" codec="binary2Str('GBK')" desc="受卡方标识码" tag="42" name="merch_code" pattern="ANS15"/>  
        <field type="string" codec="binary2Str('GBK')" name="add_resp_data" tag="44" desc="附加响应数据" pattern="AN..25(LLVAR)"/>  
        <choose condition="${p_channel_trans_code}"> 
          <when case="&quot;0500201&quot;"> 
            <field type="composite" codec="" tag="48" pattern="N...062(LLLVAR)" desc="结算总额"> 
              <strategy type="iso8583.constructed"> 
                <field type="string" codec="binary2Str('GBK')" pattern="N12" desc="借记总金额" name="debit_amount"/>  
                <field type="string" codec="binary2Str('GBK')" desc="借记总笔数" pattern="N3" name="debit_count"/>  
                <field type="string" codec="binary2Str('GBK')" pattern="N12" desc="贷记总金额" name="credit_amount"/>  
                <field type="string" codec="binary2Str('GBK')" pattern="N3" desc="贷记总笔数" name="credit_count"/>  
                <field type="string" codec="binary2Str('GBK')" pattern="N1" desc="对账应答代码" name="balance_amount_respcode"/> 
              </strategy> 
            </field> 
          </when>  
          <when case="&quot;0320201&quot;"> 
            <field type="composite" codec="" desc="交易明细总笔数" tag="48" pattern="N...004(LLLVAR)"> 
              <strategy type="iso8583.constructed"> 
                <field type="string" codec="binary2Str('GBK')" desc="本批上送的交易总笔数" name="upload_trxn_num" pattern="N4"/> 
              </strategy> 
            </field> 
          </when>  
          <when case="&quot;0220000000&quot;"> 
            <field type="composite" codec="" desc="小费金额" tag="48" pattern="N...012(LLLVAR)"> 
              <strategy type="iso8583.constructed"> 
                <field type="string" codec="binary2Str('GBK')" desc="小费金额" name="tip_amount" pattern="N12"/> 
              </strategy> 
            </field> 
          </when> 
        </choose>  
        <field type="string" codec="binary2Str('GBK')" tag="49" desc="交易货币代码" name="currency_code" pattern="AN3"/>  
        <field type="string" codec="binary2Str('GBK')" desc="个人标识码数据" tag="52" name="pin" pattern="B64"/>  
        <field type="string" codec="binary2Str('GBK')" desc="安全控制信息" tag="53" name="security_cnrl" pattern="N16"/>  
        <field type="string" codec="binary2Str('GBK')" tag="54" desc="余额" name="bal_amount" pattern="AN...020(LLLVAR)"/>  
        <field type="composite" codec="" desc="IC卡数据域" tag="55" name="" pattern="ANSB..255(LLLVAR)"> 
          <strategy type="iso8583.constructed"> 
            <choose condition="${p_channel_trans_code}"> 
              <when case="&quot;0220200000&quot;"> 
                <field type="binary" codec="binary" desc="芯片序列号" name="chip_sn" pattern="B.32(LVAR)"/>  
                <field type="binary" codec="binary" desc="过程密钥数据" pattern="B.32(LVAR)" name="procedure_key"/>  
                <field type="string" codec="binary2Str('GBK')" desc="终端读取时间" pattern="N14" name="term_readtime"/> 
              </when>  
              <when case="&quot;0200000000&quot;"> 
                <field type="binary" codec="binary" desc="应用密文" name="encrpt_key" pattern="B64"/>  
                <field type="binary" codec="binary" desc="应用信息数据" name="message_data" pattern="B8"/>  
                <field type="binary" codec="binary" desc="发卡行应用数据" name="publisher_info" pattern="B..256(LLVAR)"/>  
                <field type="binary" codec="binary" desc="不可预知数" pattern="B32" name="unknow_byte"/>  
                <field type="binary" codec="binary" desc="应用交易计数器" name="trans_counter" pattern="B16"/>  
                <field type="binary" codec="binary" name="term_check_result" desc="终端验证结果" pattern="B40"/>  
                <field type="string" codec="binary2Str('GBK')" desc="交易日期" name="trans_date" pattern="N6"/>  
                <field type="string" codec="binary2Str('GBK')" desc="交易类型" name="trans_type" pattern="N2"/>  
                <field type="string" codec="binary2Str('GBK')" desc="交易金额" name="trans_amount" pattern="N12"/>  
                <field type="string" codec="binary2Str('GBK')" desc="交易货币代码" name="trans_currency_code" pattern="N3"/>  
                <field type="binary" codec="binary" desc="应用交互特征" pattern="B16" name="communication_feature"/>  
                <field type="string" codec="binary2Str('GBK')" desc="终端国家代码" name="national_code" pattern="N3"/>  
                <field type="string" codec="binary2Str('GBK')" desc="其它金额" name="add_amount" pattern="N12"/>  
                <field type="binary" codec="binary" desc="终端性能" pattern="B24" name="term_property"/>  
                <field type="binary" codec="binary" desc="持卡人验证结果" name="cardholder_check_result" pattern="B24"/>  
                <field type="string" codec="binary2Str('GBK')" desc="终端类型" name="term_type" pattern="N2"/>  
                <field type="string" codec="binary2Str('GBK')" desc="接口设备序列号" name="device_sn" pattern="AN8"/>  
                <field type="binary" codec="binary" desc="专用文件名称" pattern="B..128(LLVAR)" name="special_fname"/>  
                <field type="binary" codec="binary" desc="应用版本号" pattern="B16" name="ic_data_app_version"/>  
                <field type="string" codec="binary2Str('GBK')" name="trans_sn_counter" desc="交易序列计数器" pattern="n.4(LVAR)"/>  
                <field type="binary" codec="binary" desc="卡产品标识" name="card_flag" pattern="B128"/>  
                <field type="binary" codec="binary" desc="芯片序列号" name="chip_sn" pattern="B.32(LVAR)"/>  
                <field type="binary" codec="binary" desc="过程密钥数据" pattern="B.32(LVAR)" name="procedure_key"/>  
                <field type="string" codec="binary2Str('GBK')" desc="终端读取时间" pattern="N14" name="term_readtime"/> 
              </when>  
              <when case="&quot;0400000000&quot;"> 
                <field type="binary" codec="binary" name="term_check_result" desc="终端验证结果" pattern="B40"/>  
                <field type="string" codec="binary2Str('GBK')" desc="接口设备序列号" name="device_sn" pattern="AN8"/>  
                <field type="binary" codec="binary" desc="发卡行应用数据" name="publisher_info" pattern="B..256(LLVAR)"/>  
                <field type="binary" codec="binary" desc="应用交易计数器" name="trans_counter" pattern="B16"/>  
                <field type="binary" codec="binary" desc="发卡行脚本结果" name="issuer_script_ret" pattern="B..168(LLVAR)"/>  
                <field type="binary" codec="binary" desc="芯片序列号" name="chip_sn" pattern="B.32(LVAR)"/>  
                <field type="binary" codec="binary" desc="过程密钥数据" pattern="B.32(LVAR)" name="procedure_key"/>  
                <field type="string" codec="binary2Str('GBK')" desc="终端读取时间" pattern="N14" name="term_readtime"/> 
              </when>  
              <when case="&quot;0200200000&quot;"> 
                <field type="binary" codec="binary" desc="芯片序列号" name="chip_sn" pattern="B.32(LVAR)"/>  
                <field type="binary" codec="binary" desc="过程密钥数据" pattern="B.32(LVAR)" name="procedure_key"/>  
                <field type="string" codec="binary2Str('GBK')" desc="终端读取时间" pattern="N14" name="term_readtime"/> 
              </when>  
              <when case="&quot;0400200000&quot;"> 
                <field type="binary" codec="binary" desc="芯片序列号" name="chip_sn" pattern="B.32(LVAR)"/>  
                <field type="binary" codec="binary" desc="过程密钥数据" pattern="B.32(LVAR)" name="procedure_key"/>  
                <field type="string" codec="binary2Str('GBK')" desc="终端读取时间" pattern="N14" name="term_readtime"/> 
              </when> 
            </choose> 
          </strategy> 
        </field>  
        <field type="string" codec="binary2Str('GBK')" desc="PBOC电子钱包标准的交易信息" tag="58" name="pboc_electronic_data" pattern="N...017(LLLVAR)"/>  
        <field type="composite" codec="" tag="60" pattern="N...017(LLLVAR)" desc="自定义域1"> 
          <strategy type="iso8583.constructed"> 
            <field type="string" codec="binary2Str('GBK')" desc="消息类型码" name="msg_type" length="2" pattern="N2"/>  
            <field type="string" codec="binary2Str('GBK')" desc="批次号" length="6" name="batch_no" pattern="N6"/>  
            <field type="string" codec="binary2Str('GBK')" desc="网络管理信息码" length="3" name="net_manage_infocode" pattern="N3"/>  
            <choose condition="${p_channel_trans_code}"> 
              <when case="&quot;0220000000&quot;"> 
                <field type="string" codec="binary2Str('GBK')" desc="终端读取能力" pattern="N1" name="term_read_ability"/>  
                <field type="string" codec="binary2Str('GBK')" desc="基于IC卡条件代码" pattern="N1" name="ic_cond_code"/> 
              </when>  
              <when case="&quot;0200000000&quot;"> 
                <field type="string" codec="binary2Str('GBK')" name="term_read_ability" desc="终端读取能力" pattern="N1"/>  
                <field type="string" codec="binary2Str('GBK')" desc="基于PBOC借/贷记标准的IC卡条件代码" name="ic_cond_code" pattern="N1"/>  
                <field type="string" codec="binary2Str('GBK')" desc="支持部分扣款和返回余额的标志" name="part_debit_balance_flg" pattern="N1"/>  
                <field type="string" codec="binary2Str('GBK')" desc="账户类型" name="account_type" pattern="N3"/> 
              </when>  
              <when case="&quot;0220200000&quot;"> 
                <field type="string" codec="binary2Str('GBK')" name="term_read_ability" desc="终端读取能力" pattern="N1"/>  
                <field type="string" codec="binary2Str('GBK')" desc="基于PBOC借/贷记标准的IC卡条件代码" name="ic_cond_code" pattern="N1"/>  
                <field type="string" codec="binary2Str('GBK')" desc="支持部分扣款和返回余额的标志" name="part_debit_balance_flg" pattern="N1"/>  
                <field type="string" codec="binary2Str('GBK')" desc="账户类型" name="account_type" pattern="N3"/> 
              </when>  
              <when case="&quot;0400000000&quot;"> 
                <field type="string" codec="binary2Str('GBK')" name="term_read_ability" desc="终端读取能力" pattern="N1"/>  
                <field type="string" codec="binary2Str('GBK')" desc="基于PBOC借/贷记标准的IC卡条件代码" name="ic_cond_code" pattern="N1"/>  
                <field type="string" codec="binary2Str('GBK')" desc="支持部分扣款和返回余额的标志" name="part_debit_balance_flg" pattern="N1"/>  
                <field type="string" codec="binary2Str('GBK')" desc="账户类型" name="account_type" pattern="N3"/> 
              </when>  
              <when case="&quot;0200200000&quot;"> 
                <field type="string" codec="binary2Str('GBK')" name="term_read_ability" desc="终端读取能力" pattern="N1"/>  
                <field type="string" codec="binary2Str('GBK')" desc="基于PBOC借/贷记标准的IC卡条件代码" name="ic_cond_code" pattern="N1"/>  
                <field type="string" codec="binary2Str('GBK')" desc="支持部分扣款和返回余额的标志" name="part_debit_balance_flg" pattern="N1"/>  
                <field type="string" codec="binary2Str('GBK')" desc="账户类型" name="account_type" pattern="N3"/> 
              </when>  
              <when case="&quot;0400200000&quot;"> 
                <field type="string" codec="binary2Str('GBK')" name="term_read_ability" desc="终端读取能力" pattern="N1"/>  
                <field type="string" codec="binary2Str('GBK')" desc="基于PBOC借/贷记标准的IC卡条件代码" name="ic_cond_code" pattern="N1"/>  
                <field type="string" codec="binary2Str('GBK')" desc="支持部分扣款和返回余额的标志" name="part_debit_balance_flg" pattern="N1"/>  
                <field type="string" codec="binary2Str('GBK')" desc="账户类型" name="account_type" pattern="N3"/> 
              </when> 
            </choose> 
          </strategy> 
        </field>  
        <field type="composite" codec="" pattern="N...029(LLLVAR)" tag="61" name="" desc="原始信息域"> 
          <strategy type="iso8583.constructed"> 
            <choose condition="${p_channel_trans_code}"> 
              <when case="&quot;0220000000&quot;"> 
                <field type="string" codec="binary2Str('GBK')" desc="原始交易批次号" pattern="N6" name="org_batch_no"/>  
                <field type="string" codec="binary2Str('GBK')" name="org_term_trace_no" pattern="N6" desc="原始交易终端流水号"/>  
                <field type="string" codec="binary2Str('GBK')" name="org_term_date" desc="原交易日期" pattern="N4"/>  
                <field type="string" codec="binary2Str('GBK')" desc="原授权方式" pattern="N2" name="org_auth_type"/>  
                <field type="string" codec="binary2Str('GBK')" desc="原授权机构" pattern="N11" name="org_acq_inst_code"/> 
              </when>  
              <when case="&quot;0220200000&quot;"> 
                <field type="string" codec="binary2Str('GBK')" desc="原始交易批次号" pattern="N6" name="org_batch_no"/>  
                <field type="string" codec="binary2Str('GBK')" name="org_term_trace_no" pattern="N6" desc="原始交易终端流水号"/>  
                <field type="string" codec="binary2Str('GBK')" name="org_term_date" desc="原交易日期" pattern="N4"/> 
              </when>  
              <when case="&quot;0200200000&quot;"> 
                <field type="string" codec="binary2Str('GBK')" desc="原始交易批次号" pattern="N6" name="org_batch_no"/>  
                <field type="string" codec="binary2Str('GBK')" name="org_term_trace_no" pattern="N6" desc="原始交易终端流水号"/> 
              </when>  
              <when case="&quot;0400200000&quot;"> 
                <field type="string" codec="binary2Str('GBK')" desc="原始交易批次号" pattern="N6" name="org_batch_no"/>  
                <field type="string" codec="binary2Str('GBK')" name="org_term_trace_no" pattern="N6" desc="原始交易终端流水号"/> 
              </when> 
            </choose> 
          </strategy> 
        </field>  
        <choose condition="${p_channel_trans_code}"> 
          <when case="&quot;0800003&quot;"> 
            <field type="binary" codec="binary" pattern="ANB...084(LLLVAR)" tag="62" desc="终端密钥" name="term_key"/> 
          </when>  
          <when case="&quot;0820362&quot;"> 
            <field type="composite" codec="" desc="终端状态信息" name="term_status_info" pattern="ANS...160(LLLVAR)" tag="62"> 
              <strategy type="iso8583.constructed"> 
                <field type="string" codec="binary2Str('GBK')" desc="键盘状态" name="keyboard_state" pattern="N1"/>  
                <field type="string" codec="binary2Str('GBK')" desc="密码键盘状态" name="pwd_keyboard_state" pattern="N1"/>  
                <field type="string" codec="binary2Str('GBK')" name="card_reader_state" desc="读卡器状态" pattern="N1"/>  
                <field type="string" codec="binary2Str('GBK')" desc="打印机状态" pattern="N1" name="printer_state"/>  
                <field type="string" codec="binary2Str('GBK')" desc="显示器状态" pattern="N1" name="screen_state"/>  
                <field type="string" codec="binary2Str('GBK')" desc="POS终端应用类型" pattern="N2" name="term_type"/>  
                <field type="string" codec="binary2Str('GBK')" desc="超时时间" name="timeout" pattern="N2"/>  
                <field type="string" codec="binary2Str('GBK')" desc="重试次数" name="retry_count" pattern="N1"/>  
                <field type="string" codec="binary2Str('GBK')" desc="三个交易电话号码之一" name="tran_phone1" pattern="AN14"/>  
                <field type="string" codec="binary2Str('GBK')" desc="三个交易电话号码之二" name="tran_phone2" pattern="AN14"/>  
                <field type="string" codec="binary2Str('GBK')" name="tran_phone3" desc="三个交易电话号码之三" pattern="AN14"/>  
                <field type="string" codec="binary2Str('GBK')" name="manage_phone" desc="管理电话号码" pattern="AN14"/>  
                <field type="string" codec="binary2Str('GBK')" desc="是否支持小费" name="tip_flag" pattern="N1"/>  
                <field type="string" codec="binary2Str('GBK')" desc="小费百分比" name="tip_perc" pattern="N2"/>  
                <field type="string" codec="binary2Str('GBK')" desc="是否支持手工输入卡号" name="manul_input_flag" pattern="N1"/>  
                <field type="string" codec="binary2Str('GBK')" desc="是否自动签退" name="auto_signout_flag" pattern="N1"/>  
                <field type="string" codec="binary2Str('GBK')" desc="交易重发次数" name="trans_resend_count" pattern="N1"/>  
                <field type="string" codec="binary2Str('GBK')" desc="主密钥INDEX" name="masterkey_index" pattern="N1"/>  
                <field type="string" codec="binary2Str('GBK')" desc="满足自动上送的累计笔数" name="auto_send_count" pattern="N2"/>  
                <field type="composite" codec="" desc="POS拨通率" name="" pattern="N12"> 
                  <strategy type="iso8583.constructed"> 
                    <field type="string" codec="binary2Str('GBK')" desc="从上次成功统计到本次统计的时间段" name="hours" pattern="N4"/>  
                    <field type="string" codec="binary2Str('GBK')" desc="总拨号次数" name="dail_count" pattern="N5"/>  
                    <field type="string" codec="binary2Str('GBK')" desc="拨通率(百分比)" name="sucess_percentage" pattern="N3"/> 
                  </strategy> 
                </field> 
              </strategy> 
            </field> 
          </when>  
          <when case="&quot;0800380&quot;"> 
            <field type="composite" codec="" pattern="ANS...160(LLLVAR)" tag="62" desc="终端参数信息" name="conf_table_message"> 
              <strategy type="iso8583.constructed"> 
                <field type="string" codec="binary2Str('GBK')" desc="POS终端应用类型" pattern="N2" name="term_type"/>  
                <field type="string" codec="binary2Str('GBK')" desc="超时时间" name="timeout" pattern="N2"/>  
                <field type="string" codec="binary2Str('GBK')" desc="重试次数" name="retry_count" pattern="N1"/>  
                <field type="string" codec="binary2Str('GBK')" desc="三个交易电话号码之一" name="tran_phone1" pattern="AN14"/>  
                <field type="string" codec="binary2Str('GBK')" desc="三个交易电话号码之二" name="tran_phone2" pattern="AN14"/>  
                <field type="string" codec="binary2Str('GBK')" name="tran_phone3" desc="三个交易电话号码之三" pattern="AN14"/>  
                <field type="string" codec="binary2Str('GBK')" name="manage_phone" desc="管理电话号码" pattern="AN14"/>  
                <field type="string" codec="binary2Str('GBK')" desc="是否支持小费" name="tip_flag" pattern="N1"/>  
                <field type="string" codec="binary2Str('GBK')" desc="小费百分比" name="tip_perc" pattern="N2"/>  
                <field type="string" codec="binary2Str('GBK')" desc="是否支持手工输入卡号" name="manul_input_flag " pattern="N1"/>  
                <field type="string" codec="binary2Str('GBK')" desc="是否自动签退" name="auto_signout_flag" pattern="N1"/>  
                <field type="string" codec="binary2Str('GBK')" desc="商户名称" name="merch_name" pattern="AN40"/>  
                <field type="string" codec="binary2Str('GBK')" desc="交易重发次数" name="trans_resend_count" pattern="N1"/>  
                <field type="string" codec="binary2Str('GBK')" desc="主密钥INDEX" name="masterkey_index" pattern="N1"/>  
                <field type="binary" codec="binary" desc="支持的交易类型" name="support_trans_type" pattern="B32"/> 
              </strategy> 
            </field> 
          </when>  
          <when case="&quot;0800364&quot;"> 
            <field type="composite" codec="" pattern="ANS...400(LLLVAR)" tag="62" desc="TMS参数" name="TMS_message"> 
              <strategy type="iso8583.constructed"> 
                <field type="string" codec="binary2Str('GBK')" pattern="N8" name="plat_flag" desc="平台标识码"/>  
                <field type="string" codec="binary2Str('GBK')" pattern="AN2" desc="下载内容标志" name="load_content_flag"/>  
                <field type="string" codec="binary2Str('GBK')" desc="下载任务标识" name="load_task_flag" pattern="N4"/>  
                <field type="string" codec="binary2Str('GBK')" desc="限制日期" name="end_date" pattern="N8"/>  
                <field type="string" codec="binary2Str('GBK')" desc="应用版本号" pattern="N6" name="app_version"/>  
                <field type="string" codec="binary2Str('GBK')" desc="POS下载时机标志" pattern="N4" name="load_cond_flag"/>  
                <field type="string" codec="binary2Str('GBK')" desc="TMS1电话号码之1" pattern="AN20" name="TMS_phone1"/>  
                <field type="string" codec="binary2Str('GBK')" name="TMS_phone2" pattern="AN20" desc="TMS1电话号码之2"/>  
                <field type="string" codec="binary2Str('GBK')" name="TMS_url1" desc="TMS1的IP1和端口号1" pattern="ANS30"/>  
                <field type="string" codec="binary2Str('GBK')" name="TMS_url2" desc="TMS1的IP1和端口号2" pattern="ANS30"/>  
                <field type="string" codec="binary2Str('GBK')" desc="TMS的GPRS参数" name="TMS_gprs" pattern="ANS60"/>  
                <field type="string" codec="binary2Str('GBK')" name="TMS_cdma_connType" desc="TMS的CDMA接入方式" pattern="ANS60"/>  
                <choose condition="${load_content_flag}"> 
                  <when case="&quot;7001&quot;"> 
                    <field type="string" codec="binary2Str('GBK')" desc="下载任务校验码" pattern="ANS32" name="load_content_checkcode"/> 
                  </when> 
                </choose>  
                <field type="string" codec="binary2Str('GBK')" desc="自动重拨间隔时间" pattern="N4" name="reconnect_interval"/>  
                <field type="string" codec="binary2Str('GBK')" pattern="ANS30" desc="任务提示信息" name="message"/>  
                <field type="string" codec="binary2Str('GBK')" desc="TPDU" name="tpdu" pattern="N10"/>  
                <field type="string" codec="binary2Str('GBK')" desc="下载开始日期时间" name="load_start_date" pattern="N12"/>  
                <field type="string" codec="binary2Str('GBK')" name="load_end_date" desc="下载结束日期时间" pattern="N12"/> 
              </strategy> 
            </field> 
          </when>  
          <when case="&quot;0200000000&quot;"> 
            <field type="string" codec="binary2Str('GBK')" desc="行业卡专用信息" name="card_special_info" pattern="ANS...50(LLLVAR)" tag="62"/> 
          </when>  
          <when case="&quot;0400000000&quot;"> 
            <field type="string" codec="binary2Str('GBK')" desc="持卡人身份认证信息" name="cardholder_credt_info" pattern="ANS...022(LLLVAR)" tag="62"/> 
          </when>  
          <when case="&quot;0220200000&quot;"> 
            <field type="string" codec="binary2Str('GBK')" desc="原始交易终端号" name="original_term_id" pattern="ANS8" tag="62"/> 
          </when>  
          <when case="&quot;0100030000&quot;"> 
            <field type="string" codec="binary2Str('GBK')" desc="自定义域" name="reserved_field" pattern="ANS...022(LLLVAR)" tag="62"/> 
          </when> 
        </choose>  
        <choose condition="${p_channel_trans_code}"> 
          <when case="&quot;0800003&quot;"> 
            <field type="string" codec="binary2Str('GBK')" pattern="ANS...003(LLLVAR)" name="teller_no" desc="操作员代码" tag="63"/> 
          </when>  
          <when case="&quot;0500201&quot;"> 
            <field type="string" codec="binary2Str('GBK')" pattern="ANS...003(LLLVAR)" name="teller_no" desc="操作员代码" tag="63"/> 
          </when>  
          <when case="&quot;test&quot;"> 
            <field type="composite" codec="" desc="国际信用卡代码" tag="63" pattern="ANS...163(LLLVAR)" name=""> 
              <strategy type="iso8583.constructed"> 
                <field type="string" codec="binary2Str('GBK')" desc="国际信用卡公司代码" name="international_ic_corp_code" pattern="AN3" length="AN3"/> 
              </strategy> 
            </field> 
          </when>  
          <when case="&quot;123&quot;"> 
            <field type="string" codec="binary2Str('GBK')" name="international_ic_corp_code" desc="国际信用卡公司代码" pattern="AN3" tag="63"/>  
            <field type="string" codec="binary2Str('GBK')" desc="发卡方保留域" length="ANS2" name="issuingcard_retain_field" pattern="ANS…20(LLVAR)"/>  
            <field type="string" codec="binary2Str('GBK')" desc="中国银联保留域" length="ANS2" name="cu_retain_field" pattern="ANS…20(LLVAR)"/>  
            <field type="string" codec="binary2Str('GBK')" desc="受理机构保留域" length="ANS2" name="agent_retain_field" pattern="ANS…20(LLVAR)"/>  
            <field type="string" codec="binary2Str('GBK')" desc="POS终端保留域" length="ANS6" name="posterm_retain_field" pattern="ANS…60(LLVAR)"/> 
          </when>  
          <when case="&quot;0220000000&quot;"> 
            <field type="string" codec="binary2Str('GBK')" name="international_ic_corp_code" desc="国际信用卡公司代码" pattern="ANS3" tag="63"/> 
          </when>  
          <when case="&quot;0220200000&quot;"> 
            <field type="string" codec="binary2Str('GBK')" name="international_ic_corp_code" desc="国际信用卡公司代码" pattern="ANS3" tag="63"/> 
          </when> 
        </choose>  
        <field type="string" codec="binary2Str('GBK')" tag="64" desc="报文鉴别码" name="mac" pattern="B64"/> 
      </strategy> 
    </field> 
  </strategy> 
</message>
