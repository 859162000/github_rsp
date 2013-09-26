<?xml version="1.0" encoding="UTF-8"?>

<message direction="decode" type="xml"> 
  <strategy type="xml" charset="GBK" prologue="true">
    <field type="string" codec="binary2Str('GBK')" name="syscheckdate" desc="对账日期" xpath="/ILINK/REQUEST/SYSCHECKDATE"/>
  </strategy>
</message>
