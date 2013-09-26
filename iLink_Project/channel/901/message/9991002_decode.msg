<?xml version="1.0" encoding="UTF-8"?>

<message direction="decode" type="xml"> 
  <field type="string" codec="binary2Str('GBK')" name="pduno" desc="合同(协议)号" xpath="/ILINK/REQUEST/PDUNO"/>  
  <field type="string" codec="binary2Str('GBK')/yuan2Fen" name="amount" desc="交易金额" xpath="/ILINK/REQUEST/AMOUNT"/> 
</message>
