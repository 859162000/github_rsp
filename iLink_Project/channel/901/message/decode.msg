<?xml version="1.0" encoding="UTF-8"?>

<message direction="decode" type="xml"> 
  <strategy type="xml" charset="GBK" prologue="true"> 
    <field type="string" codec="binary2Str('GBK')" name="p_channel_trans_code" desc="交易码" xpath="/ILINK/HEAD/TRANSCODE"/>  
    <field type="string" codec="binary2Str('GBK')" name="tellerno" desc="柜员号" xpath="/ILINK/HEAD/TELLERNO"/>  
    <field type="string" codec="binary2Str('GBK')" name="brno" desc="机构号" xpath="/ILINK/HEAD/BRNO"/>  
    <include messageref="${p_channel_trans_code}+&quot;_decode&quot;"/> 
  </strategy> 
</message>
