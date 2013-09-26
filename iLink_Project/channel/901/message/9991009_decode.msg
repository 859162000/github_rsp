<?xml version="1.0" encoding="UTF-8"?>

<message direction="decode" type="xml"> 
  <strategy type="xml" charset="GBK" prologue="true"> 
    <field type="string" codec="binary2Str('GBK')" name="count" xpath="/ILINK/REQUEST/COUNT"/>  
    <repeat name="loop" times="2" index="i"> 
      <field type="string" codec="binary2Str('GBK')" name="name" xpath="/ILINK/REQUEST/MSG[${i}]/NAME"/> 
    </repeat> 
  </strategy> 
</message>
