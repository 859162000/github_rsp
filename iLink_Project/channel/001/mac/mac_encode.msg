<?xml version="1.0" encoding="UTF-8"?>

<message direction="encode"> 
  <strategy type="var"> 
    <field type="composite" codec="binary2Str('GBK')/removeRightPad(' ')/removeLeftPad(' ')/str2Binary('GBK')" desc="左右去空格" length="-1"> 
      <strategy type="var"> 
        <field type="composite" codec="binary2Str('GBK')/removeLeftPad(' ')/removeRightPad(' ')/replaceRegex('[^A-Za-z0-9 \,\.]', '')/toUpperCase/addRightDelim(' ')/str2Binary('GBK')" length="-1" desc="消息类型"> 
          <strategy type="iso8583.constructed"> 
            <field type="string" codec="str2Binary('GBK')" name="message_type" pattern="N4" desc="消息类型"/> 
          </strategy> 
        </field>  
        <field type="composite" codec="binary2Str('GBK')/removeLeftPad(' ')/removeRightPad(' ')/replaceRegex('[^A-Za-z0-9 \,\.]', '')/toUpperCase/addRightDelim(' ')/str2Binary('GBK')" length="-1" desc="主账号"> 
          <strategy type="iso8583.constructed"> 
            <field tag="2" desc="主账号" name="account_no" type="string" codec="str2Binary('GBK')" pattern="N..19(LLVAR)"/> 
          </strategy> 
        </field>  
        <field type="composite" codec="binary2Str('GBK')/removeLeftPad(' ')/removeRightPad(' ')/replaceRegex('[^A-Za-z0-9 \,\.]', '')/toUpperCase/addRightDelim(' ')/str2Binary('GBK')" length="-1" desc="交易金额"> 
          <strategy type="iso8583.constructed"> 
            <field tag="4" desc="交易金额" name="amount" type="string" codec="str2Binary('GBK')" pattern="N12"/> 
          </strategy> 
        </field>  
        <field type="composite" codec="binary2Str('GBK')/removeLeftPad(' ')/removeRightPad(' ')/replaceRegex('[^A-Za-z0-9 \,\.]', '')/toUpperCase/addRightDelim(' ')/str2Binary('GBK')" length="-1" desc="交易发生时间"> 
          <strategy type="iso8583.constructed"> 
            <field tag="12" desc="交易发生时间" name="trans_dtime" type="string" codec="str2Binary('GBK')" pattern="N10"/> 
          </strategy> 
        </field>  
        <field type="composite" codec="binary2Str('GBK')/removeLeftPad(' ')/removeRightPad(' ')/replaceRegex('[^A-Za-z0-9 \,\.]', '')/toUpperCase/addRightDelim(' ')/str2Binary('GBK')" length="-1" desc="终端流水号"> 
          <strategy type="iso8583.constructed"> 
            <field tag="11" desc="终端流水号" name="term_seqno" type="string" codec="str2Binary('GBK')" pattern="N6"/> 
          </strategy> 
        </field>  
        <field type="composite" codec="binary2Str('GBK')/removeLeftPad(' ')/removeRightPad(' ')/replaceRegex('[^A-Za-z0-9 \,\.]', '')/toUpperCase/addRightDelim(' ')/str2Binary('GBK')" length="-1" desc="前置响应码"> 
          <strategy type="iso8583.constructed"> 
            <field tag="39" desc="前置响应码" name="p_front_resp_code" type="string" codec="str2Binary('GBK')" pattern="N2"/> 
          </strategy> 
        </field>  
        <field type="composite" codec="binary2Str('GBK')/removeLeftPad(' ')/removeRightPad(' ')/replaceRegex('[^A-Za-z0-9 \,\.]', '')/toUpperCase/addRightDelim(' ')/str2Binary('GBK')" length="-1" desc="终端编号"> 
          <strategy type="iso8583.constructed"> 
            <field tag="12" desc="终端编号" name="p_term_id" type="string" codec="str2Binary('GBK')" pattern="N8"/> 
          </strategy> 
        </field>  
        <field type="composite" codec="binary2Str('GBK')/removeLeftPad(' ')/removeRightPad(' ')/replaceRegex('[^A-Za-z0-9 \,\.]', '')/toUpperCase/addRightDelim(' ')/str2Binary('GBK')" length="-1" desc="原始信息域"> 
          <strategy type="iso8583.constructed"> 
            <field tag="12" desc="原始信息MAC域" name="org_data.org_mac_data" type="string" codec="str2Binary('GBK')" pattern="N20"/> 
          </strategy> 
        </field>  
        <field type="composite" codec="binary2Str('GBK')/removeLeftPad(' ')/removeRightPad(' ')/replaceRegex('[^A-Za-z0-9 \,\.]', '')/toUpperCase/addRightDelim(' ')/str2Binary('GBK')" length="-1" desc="附加账号"> 
          <strategy type="iso8583.constructed"> 
            <field tag="102" desc="附加账号" name="account_no1" type="string" codec="str2Binary('GBK')" pattern="N..19(LLVAR)"/> 
          </strategy> 
        </field>  
        <field type="composite" codec="binary2Str('GBK')/removeLeftPad(' ')/removeRightPad(' ')/replaceRegex('[^A-Za-z0-9 \,\.]', '')/toUpperCase/addRightDelim(' ')/str2Binary('GBK')" length="-1" desc="转入账号"> 
          <strategy type="iso8583.constructed"> 
            <field tag="103" desc="转入账号" name="account_no2" type="string" codec="str2Binary('GBK')" pattern="N..19(LLVAR)"/> 
          </strategy> 
        </field> 
      </strategy> 
    </field> 
  </strategy> 
</message>
