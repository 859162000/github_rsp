<?xml version="1.0" encoding="UTF-8"?>

<message direction="encode" type="iso8583"> 
  <field tag="55" desc="IC卡交易数据" name="" type="composite" codec="binary" pattern="ANSB..255(LLLVAR)"> 
    <strategy type="iso8583.tag"> 
      <field type="binary" codec="binary" desc="应用密文" tag="9F26" name="ic_app_crypt"/>  
      <field type="binary" codec="binary" desc="密文信息数据" tag="9F27" name="ic_crypt_data"/>  
      <field type="binary" codec="binary" desc="发卡行应用数据" tag="9F10" name="ic_issuer_appdata"/>  
      <field type="binary" codec="binary" desc="不可预知数" tag="9F37" name="ic_unpred_num"/>  
      <field type="binary" codec="binary" desc="应用交易计数器" tag="9F36" name="ic_app_trans_count"/>  
      <field type="binary" codec="binary" desc="终端验证结果" tag="95" name="ic_term_verify_result"/>  
      <field type="string" codec="str2Binary('GBK')/asciiBinary2BcdBinary" desc="交易日期" tag="9A" name="ic_trans_data"/>  
      <field type="string" codec="str2Binary('GBK')/asciiBinary2BcdBinary" desc="交易类型" tag="9C" name="ic_trans_type"/>  
      <field type="string" codec="str2Binary('GBK')/asciiBinary2BcdBinary" desc="授权金额" tag="9F02" name="ic_auth_amount"/>  
      <field type="string" codec="str2Binary('GBK')/asciiBinary2BcdBinary" desc="交易货币代码" tag="5F2A" name="ic_trans_currency"/>  
      <field type="binary" codec="binary" desc="应用交互特征" tag="82" name="ic_app_profile"/>  
      <field type="string" codec="str2Binary('GBK')/asciiBinary2BcdBinary" desc="终端国家代码" tag="9F1A" name="ic_term_country"/>  
      <field type="string" codec="str2Binary('GBK')/asciiBinary2BcdBinary" desc="其他金额" tag="9F03" name="ic_other_amount"/>  
      <field type="binary" codec="binary" desc="终端性能" tag="9F33" name="ic_term_capability"/>  
      <field type="binary" codec="binary" desc="持卡人验证方法结果" tag="9F34" name="ic_cardholder_verify_result"/>  
      <field type="string" codec="str2Binary('GBK')/asciiBinary2BcdBinary" desc="终端类型" tag="9F35" name="ic_term_type"/>  
      <field type="string" codec="str2Binary('GBK')" desc="接口设备序列号" tag="9F1E" name="ic_inter_serial"/>  
      <field type="binary" codec="binary" desc="专用文件名" tag="84" name="ic_dedicated_filename"/>  
      <field type="binary" codec="binary" desc="应用版本号" tag="9F09" name="ic_app_version"/>  
      <field type="string" codec="str2Binary('GBK')/asciiBinary2BcdBinary" desc="交易序列计数器" tag="9F41" name="ic_transseq_counter"/>  
      <field type="binary" codec="binary" desc="发卡行认证数据" tag="91" name="ic_issuer_auth_data"/>  
      <field type="binary" codec="binary" desc="发卡行脚本1" tag="71" name="ic_issuer_script1"/>  
      <field type="binary" codec="binary" desc="发卡行脚本2" tag="72" name="ic_issuer_script2"/>  
      <field type="binary" codec="binary" desc="发卡行脚本结果" tag="DF31" name="ic_issuer_script_result"/>  
      <field type="string" codec="str2Binary('GBK')" desc="电子现金发卡行授权" tag="9F74" name="ic_eci_auth_code"/>  
      <field type="binary" codec="binary" desc="卡产品标识信息" tag="9F63" name="ic_card_product_identify"/> 
    </strategy>
  </field> 
</message>
