<?xml version="1.0" encoding="UTF-8"?>

<message type="iso8583.eatmp" direction="decode"> 
  <field tag="24" desc="终端状态数据" name="term_status_data" type="composite" codec="" pattern="ANSB80"> 
    <strategy type="iso8583.constructed"> 
      <field name="cdm" pattern="ANSB1" desc="出钞模块状态" type="string" codec="binary2Str('GBK')"/>  
      <field name="dep" pattern="ANSB1" desc="存款模块状态" type="string" codec="binary2Str('GBK')"/>  
      <field name="ic" pattern="ANSB1" desc="IC卡读卡器状态" type="string" codec="binary2Str('GBK')"/>  
      <field name="mag" pattern="ANSB1" desc="磁条卡读卡器状态" type="string" codec="binary2Str('GBK')"/>  
      <field name="door" pattern="ANSB1" desc="保险门" type="string" codec="binary2Str('GBK')"/>  
      <field name="keyboard" pattern="ANSB1" desc="用户键盘" type="string" codec="binary2Str('GBK')"/>  
      <field name="disp" pattern="ANSB1" desc="显示器" type="string" codec="binary2Str('GBK')"/>  
      <field name="sec" pattern="ANSB1" desc="加密模块" type="string" codec="binary2Str('GBK')"/>  
      <field name="se" pattern="ANSB1" desc="主控板" type="string" codec="binary2Str('GBK')"/>  
      <field name="prb" pattern="ANSB1" desc="票据打印机" type="string" codec="binary2Str('GBK')"/>  
      <field name="voice" pattern="ANSB1" desc="语音模块" type="string" codec="binary2Str('GBK')"/>  
      <field name="prp" pattern="ANSB1" desc="存折打印机状态" type="string" codec="binary2Str('GBK')"/>  
      <field name="pre" pattern="ANSB1" desc="信封打印机状态" type="string" codec="binary2Str('GBK')"/>  
      <field name="video" pattern="ANSB1" desc="录像机状态" type="string" codec="binary2Str('GBK')"/>  
      <field name="cam1" pattern="ANSB1" desc="第1摄像头状态" type="string" codec="binary2Str('GBK')"/>  
      <field name="cam2" pattern="ANSB1" desc="第2摄像头状态" type="string" codec="binary2Str('GBK')"/>  
      <field name="cam3" pattern="ANSB1" desc="第3摄像头状态" type="string" codec="binary2Str('GBK')"/>  
      <field name="prj" pattern="ANSB1" desc="流水打印机状态" type="string" codec="binary2Str('GBK')"/>  
      <field name="prr" pattern="ANSB1" desc="凭条打印机1状态" type="string" codec="binary2Str('GBK')"/>  
      <field name="videodisk" pattern="ANSB1" desc="录像硬盘状态" type="string" codec="binary2Str('GBK')"/>  
      <field name="cass1_status" pattern="ANSB1" desc="钞箱1状态" type="string" codec="binary2Str('GBK')"/>  
      <field name="cass2_status" pattern="ANSB1" desc="钞箱2状态" type="string" codec="binary2Str('GBK')"/>  
      <field name="cass3_status" pattern="ANSB1" desc="钞箱3状态" type="string" codec="binary2Str('GBK')"/>  
      <field name="cass4_status" pattern="ANSB1" desc="钞箱4状态" type="string" codec="binary2Str('GBK')"/>  
      <field name="cass5_status" pattern="ANSB1" desc="钞箱5状态" type="string" codec="binary2Str('GBK')"/>  
      <field name="cass6_status" pattern="ANSB1" desc="钞箱6状态" type="string" codec="binary2Str('GBK')"/>  
      <field name="casssave" pattern="ANSB1" desc="存款钞箱状态" type="string" codec="binary2Str('GBK')"/>  
      <field name="cassrecy" pattern="ANSB1" desc="废钞箱状态" type="string" codec="binary2Str('GBK')"/>  
      <field name="cass1_number" pattern="ANSB4" desc="钞箱1张数" type="string" codec="binary2Str('GBK')"/>  
      <field name="cass2_number" pattern="ANSB4" desc="钞箱2张数" type="string" codec="binary2Str('GBK')"/>  
      <field name="cass3_number" pattern="ANSB4" desc="钞箱3张数" type="string" codec="binary2Str('GBK')"/>  
      <field name="cass4_number" pattern="ANSB4" desc="钞箱4张数" type="string" codec="binary2Str('GBK')"/>  
      <field name="cass5_number" pattern="ANSB4" desc="钞箱5张数" type="string" codec="binary2Str('GBK')"/>  
      <field name="cass6_number" pattern="ANSB4" desc="钞箱6张数" type="string" codec="binary2Str('GBK')"/>  
      <field name="cassrecy_number" pattern="ANSB4" desc="废钞箱张数" type="string" codec="binary2Str('GBK')"/>  
      <field name="cass1_face" pattern="ANSB2" desc="钞箱1面值/币种" type="string" codec="binary2Str('GBK')"/>  
      <field name="cass2_face" pattern="ANSB2" desc="钞箱2面值/币种" type="string" codec="binary2Str('GBK')"/>  
      <field name="cass3_face" pattern="ANSB2" desc="钞箱3面值/币种" type="string" codec="binary2Str('GBK')"/>  
      <field name="cass4_face" pattern="ANSB2" desc="钞箱4面值/币种" type="string" codec="binary2Str('GBK')"/>  
      <field name="cass5_face" pattern="ANSB2" desc="钞箱5面值/币种" type="string" codec="binary2Str('GBK')"/>  
      <field name="cass6_face" pattern="ANSB2" desc="钞箱6面值/币种" type="string" codec="binary2Str('GBK')"/>  
      <field name="status" pattern="ANSB1" desc="机器状态" type="string" codec="binary2Str('GBK')"/>  
      <field name="aexnum" pattern="ANSB2" desc="吞卡数" type="string" codec="binary2Str('GBK')"/>  
      <field name="version" pattern="ANSB4" desc="自助设备软件版本号" type="string" codec="binary2Str('GBK')"/>  
      <field name="reserve" pattern="ANSB5" desc="预留" type="string" codec="binary2Str('GBK')"/> 
    </strategy> 
  </field> 
</message>
