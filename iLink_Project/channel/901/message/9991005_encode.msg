<?xml version="1.0" encoding="UTF-8"?>

<message direction="encode" type="xml"> 
  <strategy type="xml" charset="GBK" prologue="true">
    <field type="string" codec="str2Binary('GBK')" name="status" desc="状态" xpath="/ILINK/HEAD/STATUS"/>
    <field type="string" codec="str2Binary('GBK')" name="code" xpath="/ILINK/HEAD/CODE" desc="返回码"/>
    <field type="string" codec="str2Binary('GBK')" xpath="/ILINK/HEAD/DESC" name="desc" desc="返回描述"/>
  </strategy>
</message>
