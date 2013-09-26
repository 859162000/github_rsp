<?xml version="1.0" encoding="UTF-8"?>

<message direction="encode"> 
  <strategy type="var"> 
    <field type="composite" codec="binary2Str('GBK')/removeRightPad(' ')/removeLeftPad(' ')/str2Binary('GBK')" length="-1" desc="左右去空格"> 
      <strategy type="var"> 
        <field type="composite" codec="binary2Str('GBK')/removeLeftPad(' ')/removeRightPad(' ')/replaceRegex('[^A-Za-z0-9 \,\.]', '')/toUpperCase/addRightDelim(' ')/str2Binary('GBK')" length="-1" desc="字符处理"> 
          <strategy type="iso8583.constructed"> 
            <field type="string" codec="str2Binary('GBK')" name="backend_message_type" pattern="N4" desc="消息类型"/> 
          </strategy> 
        </field>  
        <field type="composite" codec="binary2Str('GBK')/removeLeftPad(' ')/removeRightPad(' ')/replaceRegex('[^A-Za-z0-9 \,\.]', '')/toUpperCase/addRightDelim(' ')/str2Binary('GBK')" length="-1" desc="字符处理"> 
          <strategy type="iso8583.constructed"> 
            <field tag="2" desc="主账号" name="account_no" type="string" codec="str2Binary('GBK')" pattern="N..19(LLVAR)"/> 
          </strategy> 
        </field>  
        <field type="composite" codec="binary2Str('GBK')/removeLeftPad(' ')/removeRightPad(' ')/replaceRegex('[^A-Za-z0-9 \,\.]', '')/toUpperCase/addRightDelim(' ')/str2Binary('GBK')" length="-1" desc="字符处理"> 
          <strategy type="iso8583.constructed"> 
            <field type="string" codec="str2Binary('GBK')" name="backend_trans_code" desc="终端交易识别码" pattern="N6"/> 
          </strategy> 
        </field>  
        <field type="composite" codec="binary2Str('GBK')/removeLeftPad(' ')/removeRightPad(' ')/replaceRegex('[^A-Za-z0-9 \,\.]', '')/toUpperCase/addRightDelim(' ')/str2Binary('GBK')" length="-1" desc="字符处理"> 
          <strategy type="iso8583.constructed"> 
            <field tag="4" desc="交易金额" name="amount" type="string" codec="str2Binary('GBK')" pattern="N12"/> 
          </strategy> 
        </field>  
        <field type="composite" codec="binary2Str('GBK')/removeLeftPad(' ')/removeRightPad(' ')/replaceRegex('[^A-Za-z0-9 \,\.]', '')/toUpperCase/addRightDelim(' ')/str2Binary('GBK')" length="-1" desc="字符处理"> 
          <strategy type="iso8583.constructed"> 
            <field tag="12" desc="交易传输时间" name="trans_dtime" type="string" codec="str2Binary('GBK')" pattern="N10"/> 
          </strategy> 
        </field>  
        <field type="composite" codec="binary2Str('GBK')/removeLeftPad(' ')/removeRightPad(' ')/replaceRegex('[^A-Za-z0-9 \,\.]', '')/toUpperCase/addRightDelim(' ')/str2Binary('GBK')" length="-1" desc="字符处理"> 
          <strategy type="iso8583.constructed"> 
            <field tag="11" desc="终端流水号" name="term_seqno" type="string" codec="str2Binary('GBK')" pattern="N6"/> 
          </strategy> 
        </field>  
        <field type="composite" codec="binary2Str('GBK')/removeLeftPad(' ')/removeRightPad(' ')/replaceRegex('[^A-Za-z0-9 \,\.]', '')/toUpperCase/addRightDelim(' ')/str2Binary('GBK')" length="-1" desc="字符处理"> 
          <strategy type="iso8583.constructed"> 
            <field tag="39" desc="商户类型" name="merch_type" type="string" codec="str2Binary('GBK')" pattern="N4"/> 
          </strategy> 
        </field>  
        <field type="composite" codec="binary2Str('GBK')/removeLeftPad(' ')/removeRightPad(' ')/replaceRegex('[^A-Za-z0-9 \,\.]', '')/toUpperCase/addRightDelim(' ')/str2Binary('GBK')" length="-1" desc="字符处理"> 
          <strategy type="iso8583.constructed"> 
            <field tag="39" desc="服务点条件代码" name="service_cond" type="string" codec="str2Binary('GBK')" pattern="N2"/> 
          </strategy> 
        </field>  
        <field type="composite" codec="binary2Str('GBK')/removeLeftPad(' ')/removeRightPad(' ')/replaceRegex('[^A-Za-z0-9 \,\.]', '')/toUpperCase/addRightDelim(' ')/str2Binary('GBK')" length="-1" desc="字符处理"> 
          <strategy type="iso8583.constructed"> 
            <field tag="39" desc="手续费" name="fee" type="string" codec="str2Binary('GBK')" pattern="XN8"/> 
          </strategy> 
        </field>  
        <field type="composite" codec="binary2Str('GBK')/removeLeftPad(' ')/removeRightPad(' ')/replaceRegex('[^A-Za-z0-9 \,\.]', '')/toUpperCase/addRightDelim(' ')/str2Binary('GBK')" length="-1" desc="字符处理"> 
          <strategy type="iso8583.constructed"> 
            <field tag="39" desc="受卡方标识码" name="acquiring_code" type="string" codec="str2Binary('GBK')" pattern="N..11(LLVAR)"/> 
          </strategy> 
        </field>  
        <field type="composite" codec="binary2Str('GBK')/removeLeftPad(' ')/removeRightPad(' ')/replaceRegex('[^A-Za-z0-9 \,\.]', '')/toUpperCase/addRightDelim(' ')/str2Binary('GBK')" length="-1" desc="字符处理"> 
          <strategy type="iso8583.constructed"> 
            <field tag="39" desc="受卡方标识码" name="sending_code" type="string" codec="str2Binary('GBK')" pattern="N..11(LLVAR)"/> 
          </strategy> 
        </field>  
        <field type="composite" codec="binary2Str('GBK')/removeLeftPad(' ')/removeRightPad(' ')/replaceRegex('[^A-Za-z0-9 \,\.]', '')/toUpperCase/addRightDelim(' ')/str2Binary('GBK')" length="-1" desc="字符处理"> 
          <strategy type="iso8583.constructed"> 
            <field tag="39" desc="授权标识应答码" name="auth_code" type="string" codec="str2Binary('GBK')" pattern="AN6"/> 
          </strategy> 
        </field>  
        <field type="composite" codec="binary2Str('GBK')/removeLeftPad(' ')/removeRightPad(' ')/replaceRegex('[^A-Za-z0-9 \,\.]', '')/toUpperCase/addRightDelim(' ')/str2Binary('GBK')" length="-1" desc="字符处理"> 
          <strategy type="iso8583.constructed"> 
            <field tag="39" desc="后端应答码" name="p_backend_resp_code" type="string" codec="str2Binary('GBK')" pattern="N2"/> 
          </strategy> 
        </field>  
        <field type="composite" codec="binary2Str('GBK')/removeLeftPad(' ')/removeRightPad(' ')/replaceRegex('[^A-Za-z0-9 \,\.]', '')/toUpperCase/addRightDelim(' ')/str2Binary('GBK')" length="-1" desc="字符处理"> 
          <strategy type="iso8583.constructed"> 
            <field tag="12" desc="终端编号" name="p_term_id" type="string" codec="str2Binary('GBK')" pattern="N8"/> 
          </strategy> 
        </field>  
        <field type="composite" codec="binary2Str('GBK')/removeLeftPad(' ')/removeRightPad(' ')/replaceRegex('[^A-Za-z0-9 \,\.]', '')/toUpperCase/addRightDelim(' ')/str2Binary('GBK')" length="-1" desc="字符处理"> 
          <strategy type="iso8583.constructed"> 
            <field tag="12" desc="受理机构标识码" name="shop_id" type="string" codec="str2Binary('GBK')" pattern="ANS15"/> 
          </strategy> 
        </field>  
        <field type="composite" codec="binary2Str('GBK')/removeLeftPad(' ')/removeRightPad(' ')/replaceRegex('[^A-Za-z0-9 \,\.]', '')/toUpperCase/addRightDelim(' ')/str2Binary('GBK')" length="-1" desc="字符处理"> 
          <strategy type="iso8583.constructed"> 
            <field tag="12" desc="安全控制信息码" name="security_data" type="string" codec="str2Binary('GBK')" pattern="N16"/> 
          </strategy> 
        </field>  
        <field type="composite" codec="binary2Str('GBK')/removeLeftPad(' ')/removeRightPad(' ')/replaceRegex('[^A-Za-z0-9 \,\.]', '')/toUpperCase/addRightDelim(' ')/str2Binary('GBK')" length="-1" desc="字符处理"> 
          <strategy type="iso8583.constructed"> 
            <field tag="12" desc="清算代码" name="settle_code" type="string" codec="str2Binary('GBK')" pattern="N1"/> 
          </strategy> 
        </field>  
        <field type="composite" codec="binary2Str('GBK')/removeLeftPad(' ')/removeRightPad(' ')/replaceRegex('[^A-Za-z0-9 \,\.]', '')/toUpperCase/addRightDelim(' ')/str2Binary('GBK')" length="-1" desc="字符处理"> 
          <strategy type="iso8583.constructed"> 
            <field tag="12" desc="贷记服务费金额" name="djfw_amount" type="string" codec="str2Binary('GBK')" pattern="N12"/> 
          </strategy> 
        </field>  
        <field type="composite" codec="binary2Str('GBK')/removeLeftPad(' ')/removeRightPad(' ')/replaceRegex('[^A-Za-z0-9 \,\.]', '')/toUpperCase/addRightDelim(' ')/str2Binary('GBK')" length="-1" desc="字符处理"> 
          <strategy type="iso8583.constructed"> 
            <field tag="12" desc="借记服务费金额" name="jjfw_amount" type="string" codec="str2Binary('GBK')" pattern="N12"/> 
          </strategy> 
        </field>  
        <field type="composite" codec="binary2Str('GBK')/removeLeftPad(' ')/removeRightPad(' ')/replaceRegex('[^A-Za-z0-9 \,\.]', '')/toUpperCase/addRightDelim(' ')/str2Binary('GBK')" length="-1" desc="字符处理"> 
          <strategy type="iso8583.constructed"> 
            <field tag="12" desc="贷记交易金额" name="djjy_amount" type="string" codec="str2Binary('GBK')" pattern="N16"/> 
          </strategy> 
        </field>  
        <field type="composite" codec="binary2Str('GBK')/removeLeftPad(' ')/removeRightPad(' ')/replaceRegex('[^A-Za-z0-9 \,\.]', '')/toUpperCase/addRightDelim(' ')/str2Binary('GBK')" length="-1" desc="字符处理"> 
          <strategy type="iso8583.constructed"> 
            <field tag="12" desc="冲正贷记金额" name="czdj_amount" type="string" codec="str2Binary('GBK')" pattern="N16"/> 
          </strategy> 
        </field>  
        <field type="composite" codec="binary2Str('GBK')/removeLeftPad(' ')/removeRightPad(' ')/replaceRegex('[^A-Za-z0-9 \,\.]', '')/toUpperCase/addRightDelim(' ')/str2Binary('GBK')" length="-1" desc="字符处理"> 
          <strategy type="iso8583.constructed"> 
            <field tag="12" desc="借记交易金额" name="jjjy_amount" type="string" codec="str2Binary('GBK')" pattern="N16"/> 
          </strategy> 
        </field>  
        <field type="composite" codec="binary2Str('GBK')/removeLeftPad(' ')/removeRightPad(' ')/replaceRegex('[^A-Za-z0-9 \,\.]', '')/toUpperCase/addRightDelim(' ')/str2Binary('GBK')" length="-1" desc="字符处理"> 
          <strategy type="iso8583.constructed"> 
            <field tag="12" desc="冲正借记金额" name="czjj_amount" type="string" codec="str2Binary('GBK')" pattern="N16"/> 
          </strategy> 
        </field>  
        <field type="composite" codec="binary2Str('GBK')/removeLeftPad(' ')/removeRightPad(' ')/replaceRegex('[^A-Za-z0-9 \,\.]', '')/toUpperCase/addRightDelim(' ')/str2Binary('GBK')" length="-1" desc="字符处理"> 
          <strategy type="iso8583.constructed"> 
            <field tag="12" desc="净清算额" name="jqs_amount" type="string" codec="str2Binary('GBK')" pattern="XN16"/> 
          </strategy> 
        </field>  
        <field type="composite" codec="binary2Str('GBK')/removeLeftPad(' ')/removeRightPad(' ')/replaceRegex('[^A-Za-z0-9 \,\.]', '')/toUpperCase/addRightDelim(' ')/str2Binary('GBK')" length="-1" desc="字符处理"> 
          <strategy type="iso8583.constructed"> 
            <field tag="12" desc="原始信息MAC域" name="org_data.org_mac_data" type="string" codec="str2Binary('GBK')" pattern="N20"/> 
          </strategy> 
        </field>  
        <field type="composite" codec="binary2Str('GBK')/removeLeftPad(' ')/removeRightPad(' ')/replaceRegex('[^A-Za-z0-9 \,\.]', '')/toUpperCase/addRightDelim(' ')/str2Binary('GBK')" length="-1" desc="字符处理"> 
          <strategy type="iso8583.constructed"> 
            <field tag="102" desc="附加账号" name="account_no1" type="string" codec="str2Binary('GBK')" pattern="N..19(LLVAR)"/> 
          </strategy> 
        </field>  
        <field type="composite" codec="binary2Str('GBK')/removeLeftPad(' ')/removeRightPad(' ')/replaceRegex('[^A-Za-z0-9 \,\.]', '')/toUpperCase/addRightDelim(' ')/str2Binary('GBK')" length="-1" desc="字符处理  "> 
          <strategy type="iso8583.constructed"> 
            <field tag="103" desc="转入账号" name="account_no2" type="string" codec="str2Binary('GBK')" pattern="N..19(LLVAR)"/> 
          </strategy> 
        </field> 
      </strategy> 
    </field> 
  </strategy> 
</message>
