<?xml version="1.0" encoding="UTF-8"?>

<message direction="encode" type="xml"> 
  <strategy type="xml" charset="GBK" prologue="true">
    <field type="string" codec="str2Binary('GBK')" name="p_front_resp_code" desc="返回码" xpath="/ILINK/HEAD/RESP_CODE"/>
  </strategy>
</message>
