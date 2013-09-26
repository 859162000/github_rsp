<?xml version="1.0" encoding="UTF-8"?>

<message direction="decode" type="xml"> 
  <strategy type="xml" charset="GBK" prologue="true">
    <field type="string" codec="binary2Str('GBK')" name="count" xpath="/head/count"/>
    <repeat name="loop" times="#{count}" index="i">
      <field type="string" codec="binary2Str('GBK')" name="name" xpath="/head/name[i]"/>
    </repeat>
  </strategy>
</message>
