<?xml version="1.0" encoding="UTF-8"?>

<message direction="encode" type="xml"> 
  <strategy type="xml" charset="GBK" prologue="true">
    <field type="string" codec="str2Binary('GBK')" name="sname" desc="学生姓名" xpath="/ILINK/HEAD/SNAME"/>
    <field type="string" codec="str2Binary('GBK')" name="sage" desc="学生年龄" xpath="/ILINK/HEAD/SAGE"/>
  </strategy>
</message>
