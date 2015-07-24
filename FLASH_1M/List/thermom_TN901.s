///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     16/Aug/2014  22:15:44 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\pc\Desktop\继续做的事情\四旋翼飞行器 -         /
//                    TM4123G\代码\遥控器\ShunAn2\thermom_TN901.c             /
//    Command line =  "C:\Users\pc\Desktop\继续做的事情\四旋翼飞行器 -        /
//                    TM4123G\代码\遥控器\ShunAn2\thermom_TN901.c" -D IAR -D  /
//                    ShunAn2 -lCN "C:\Users\pc\Desktop\继续做的事情\四旋翼飞 /
//                    行器 - TM4123G\代码\遥控器\FLASH_1M\List\" -lB          /
//                    "C:\Users\pc\Desktop\继续做的事情\四旋翼飞行器 -        /
//                    TM4123G\代码\遥控器\FLASH_1M\List\" -o                  /
//                    "C:\Users\pc\Desktop\继续做的事情\四旋翼飞行器 -        /
//                    TM4123G\代码\遥控器\FLASH_1M\Obj\" --no_cse             /
//                    --no_unroll --no_inline --no_code_motion --no_tbaa      /
//                    --no_clustering --no_scheduling --debug                 /
//                    --endian=little --cpu=Cortex-M4 -e --fpu=None           /
//                    --dlib_config "C:\Program Files (x86)\IAR               /
//                    Systems\Embedded Workbench                              /
//                    6.5\arm\INC\c\DLib_Config_Normal.h" -I                  /
//                    "C:\Users\pc\Desktop\继续做的事情\四旋翼飞行器 -        /
//                    TM4123G\代码\遥控器\ShunAn2\" -I                        /
//                    "C:\Users\pc\Desktop\继续做的事情\四旋翼飞行器 -        /
//                    TM4123G\代码\遥控器\Library\" -I                        /
//                    "C:\Users\pc\Desktop\继续做的事情\四旋翼飞行器 -        /
//                    TM4123G\代码\遥控器\Library\BlessedAlien\" -Ol          /
//                    --use_c++_inline                                        /
//    List file    =  C:\Users\pc\Desktop\继续做的事情\四旋翼飞行器 -         /
//                    TM4123G\代码\遥控器\FLASH_1M\List\thermom_TN901.s       /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN CCD1get
        EXTERN F6x8
        EXTERN OLED2_P6x8Str
        EXTERN OLED2_Set_Pos
        EXTERN OLED2_ShowNumber
        EXTERN OLED2_WrDat
        EXTERN OLED_PutPagePixel
        EXTERN RoundToInt32
        EXTERN RoundToInt64
        EXTERN SPIx
        EXTERN __aeabi_cfcmple
        EXTERN __aeabi_d2f
        EXTERN __aeabi_d2iz
        EXTERN __aeabi_dadd
        EXTERN __aeabi_ddiv
        EXTERN __aeabi_dmul
        EXTERN __aeabi_f2d
        EXTERN __aeabi_i2d
        EXTERN __aeabi_i2f
        EXTERN __aeabi_memclr4
        EXTERN __aeabi_memcpy
        EXTERN __aeabi_memcpy4
        EXTERN __aeabi_ui2d
        EXTERN __aeabi_ui2f

        PUBLIC __u16_SPI_RX_
        PUBLIC g_barCode_feature
        PUBLIC g_thermom_and_bar_data
        PUBLIC g_thermom_and_bar_data_Tempera
        PUBLIC see2_uint8
        PUBLIC see3___thermom_and_bar
        PUBLIC see4
        PUBLIC see5
        PUBLIC see6
        PUBLIC see7
        PUBLIC see_uint8
        PUBLIC sg_ccdVar_AutoAdjust
        PUBLIC sg_getFeture_BarCode
        PUBLIC sg_getvar_BarCode
        PUBLIC sg_getvar_Thetmom
        PUBLIC sg_init_thermom_and_bar
        PUBLIC u8_getVar
        PUBLIC v_Init_Thetmom
        PUBLIC v_show_barCodeNum
        PUBLIC v_show_barNum
        PUBLIC v_show_barSide
        PUBLIC v_show_temperature

// C:\Users\pc\Desktop\继续做的事情\四旋翼飞行器 - TM4123G\代码\遥控器\ShunAn2\thermom_TN901.c
//    1 #include "thermom_TN901.h"
//    2 #include "MK60F15.h"
//    3 #include "ShunAn_lib.h"
//    4 #include "start_ShunAn.h"
//    5 #include "BlessedAlien.h"
//    6 #include "GR_CCDx11_12.h"
//    7 #include "GR_OLEDx11_12.h"
//    8 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    9 __thermom_and_bar g_thermom_and_bar_data;
g_thermom_and_bar_data:
        DS8 216

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   10 __CCD_get_barCode g_barCode_feature;
g_barCode_feature:
        DS8 136
//   11 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   12 __thermom_and_bar g_thermom_and_bar_data_Tempera;
g_thermom_and_bar_data_Tempera:
        DS8 216
//   13 /* -- SPI 接收程序 -- */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   14 uint16 __u16_SPI_RX_ ( uint8 spiN )
//   15 {
//   16     uint16 RXdata = 0;
__u16_SPI_RX_:
        MOVS     R1,#+0
//   17     while( !(SPI_SR_REG(SPIx[spiN]) & SPI_SR_RFDF_MASK) );
??__u16_SPI_RX__0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable8
        LDR      R1,[R1, R0, LSL #+2]
        LDR      R1,[R1, #+44]
        LSLS     R1,R1,#+14
        BPL.N    ??__u16_SPI_RX__0
//   18     RXdata = ( uint16 ) SPI_POPR_REG( SPIx[spiN] );
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable8
        LDR      R1,[R1, R0, LSL #+2]
        LDR      R1,[R1, #+56]
//   19     SPI_SR_REG( SPIx[spiN] ) |= SPI_SR_RFDF_MASK;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable8
        LDR      R2,[R2, R0, LSL #+2]
        LDR      R2,[R2, #+44]
        ORRS     R2,R2,#0x20000
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R3,??DataTable8
        LDR      R0,[R3, R0, LSL #+2]
        STR      R2,[R0, #+44]
//   20     return RXdata;
        MOVS     R0,R1
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BX       LR               ;; return
//   21 }
//   22 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   23 void v_Init_Thetmom()
//   24 {
//   25     // 引脚初始化
//   26     uint32 delay = 0;
v_Init_Thetmom:
        MOVS     R0,#+0
//   27     SIM_SCGC5 |= SIM_SCGC5_PORTE_MASK;//使能PORTE时钟 
        LDR.W    R1,??DataTable8_1  ;; 0x40048038
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x2000
        LDR.W    R2,??DataTable8_1  ;; 0x40048038
        STR      R1,[R2, #+0]
//   28     PORTE_PCR1 |= 0x00000100u;//引脚复用选择普通IO(输入信号) 
        LDR.W    R1,??DataTable8_2  ;; 0x4004d004
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x100
        LDR.W    R2,??DataTable8_2  ;; 0x4004d004
        STR      R1,[R2, #+0]
//   29     PORTE_PCR2 |= 0x00000100u;//引脚复用选择普通IO(CLK信号)
        LDR.W    R1,??DataTable8_3  ;; 0x4004d008
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x100
        LDR.W    R2,??DataTable8_3  ;; 0x4004d008
        STR      R1,[R2, #+0]
//   30     GPIOE_PDDR &=~ (1<<2);//输入CLK
        LDR.W    R1,??DataTable8_4  ;; 0x400ff114
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x4
        LDR.W    R2,??DataTable8_4  ;; 0x400ff114
        STR      R1,[R2, #+0]
//   31     GPIOE_PDDR &=~ (1<<1);//输入信号
        LDR.W    R1,??DataTable8_4  ;; 0x400ff114
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x2
        LDR.W    R2,??DataTable8_4  ;; 0x400ff114
        STR      R1,[R2, #+0]
//   32     PORTE_PCR0 |= 0x00000100u;//引脚复用选择普通IO(动作脚)
        LDR.W    R1,??DataTable8_5  ;; 0x4004d000
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x100
        LDR.W    R2,??DataTable8_5  ;; 0x4004d000
        STR      R1,[R2, #+0]
//   33     GPIOE_PDDR |=  (1<<0);//动作
        LDR.W    R1,??DataTable8_4  ;; 0x400ff114
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x1
        LDR.W    R2,??DataTable8_4  ;; 0x400ff114
        STR      R1,[R2, #+0]
//   34     
//   35     GPIOE_PDOR |=  (1<<0);//关闭动作脚
        LDR.W    R1,??DataTable8_6  ;; 0x400ff100
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x1
        LDR.W    R2,??DataTable8_6  ;; 0x400ff100
        STR      R1,[R2, #+0]
//   36     for(delay=0;delay<80000;delay++);
        MOVS     R1,#+0
        MOVS     R0,R1
        B.N      ??v_Init_Thetmom_0
??v_Init_Thetmom_1:
        ADDS     R0,R0,#+1
??v_Init_Thetmom_0:
        LDR.W    R1,??DataTable8_7  ;; 0x13880
        CMP      R0,R1
        BCC.N    ??v_Init_Thetmom_1
//   37     for(delay=0;delay<80000;delay++);
        MOVS     R0,#+0
        B.N      ??v_Init_Thetmom_2
??v_Init_Thetmom_3:
        ADDS     R0,R0,#+1
??v_Init_Thetmom_2:
        LDR.W    R1,??DataTable8_7  ;; 0x13880
        CMP      R0,R1
        BCC.N    ??v_Init_Thetmom_3
//   38 }
        BX       LR               ;; return
//   39 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   40 __thermom_and_bar sg_init_thermom_and_bar ( __thermom_and_bar Gaia )  // 初始化
//   41 {
sg_init_thermom_and_bar:
        PUSH     {R1-R3}
        PUSH     {LR}
//   42     Gaia.status = 0;
        MOVS     R1,#+0
        STRB     R1,[SP, #+4]
//   43     Gaia.value.barCode = 0;
        MOVS     R1,#+0
        STRH     R1,[SP, #+16]
//   44     Gaia.value.isTarget = 0;
        MOVS     R1,#+0
        STRB     R1,[SP, #+8]
//   45     Gaia.value.temperature = 0;
        MOVS     R1,#+0
        STR      R1,[SP, #+12]
//   46     for( uint8 loop = 0;loop < 64;loop++ )
        MOVS     R1,#+0
        B.N      ??sg_init_thermom_and_bar_0
//   47     {
//   48         Gaia.bar.allSide[loop].fall = 0;
??sg_init_thermom_and_bar_1:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R2,#+3
        ADD      R3,SP,#+4
        MLA      R2,R2,R1,R3
        MOVS     R3,#+0
        STRB     R3,[R2, #+16]
//   49         Gaia.bar.allSide[loop].rise = 0;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R2,#+3
        ADD      R3,SP,#+4
        MLA      R2,R2,R1,R3
        MOVS     R3,#+0
        STRB     R3,[R2, #+17]
//   50         Gaia.bar.allSide[loop].width = 0;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R2,#+3
        ADD      R3,SP,#+4
        MLA      R2,R2,R1,R3
        MOVS     R3,#+0
        STRB     R3,[R2, #+18]
//   51     }
        ADDS     R1,R1,#+1
??sg_init_thermom_and_bar_0:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+64
        BLT.N    ??sg_init_thermom_and_bar_1
//   52     Gaia.bar.bar_width = 0;
        MOVS     R1,#+0
        STRB     R1,[SP, #+214]
//   53     Gaia.bar.one_width = 0;
        MOVS     R1,#+0
        STR      R1,[SP, #+216]
//   54     Gaia.bar.fall_side_count = 0;
        MOVS     R1,#+0
        STRB     R1,[SP, #+212]
//   55     Gaia.bar.rise_side_count = 0;
        MOVS     R1,#+0
        STRB     R1,[SP, #+213]
//   56     return Gaia;
        ADD      R1,SP,#+4
        MOVS     R2,#+216
        BL       __aeabi_memcpy4
        LDR      PC,[SP], #+16    ;; return
//   57 }
//   58 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   59 uint8 u8_getVar()
//   60 {
//   61     uint8 Var = 0;
u8_getVar:
        MOVS     R0,#+0
//   62     uint8 Var_Get = 0;
        MOVS     R1,#+0
//   63     uint8 oneByte = 8;
        MOVS     R2,#+8
//   64     while( 0 != oneByte )
??u8_getVar_0:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BEQ.N    ??u8_getVar_1
//   65     {
//   66         if(0 == ((GPIOE_PDIR >> 2) & 0x01)) // 低电平时期
        LDR.W    R1,??DataTable8_8  ;; 0x400ff110
        LDR      R1,[R1, #+0]
        UBFX     R1,R1,#+2,#+1
        CMP      R1,#+0
        BNE.N    ??u8_getVar_0
//   67         {
//   68             oneByte --;
        SUBS     R2,R2,#+1
//   69             Var_Get = (GPIOE_PDIR >> 1) & 0x01; // 信号 输入 E1
        LDR.W    R1,??DataTable8_8  ;; 0x400ff110
        LDR      R1,[R1, #+0]
        UBFX     R1,R1,#+1,#+1
//   70             Var |= Var_Get << oneByte;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R1,R1,R2
        ORRS     R0,R1,R0
//   71             while(0 == ((GPIOE_PDIR >> 2) & 0x01));
??u8_getVar_2:
        LDR.W    R1,??DataTable8_8  ;; 0x400ff110
        LDR      R1,[R1, #+0]
        UBFX     R1,R1,#+2,#+1
        CMP      R1,#+0
        BNE.N    ??u8_getVar_0
        B.N      ??u8_getVar_2
//   72         }
//   73     }
//   74     return Var;
??u8_getVar_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
//   75 }
//   76 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   77 __thermom_and_bar sg_getvar_Thetmom( __thermom_and_bar Gaia )
//   78 {
sg_getvar_Thetmom:
        PUSH     {R1-R3}
        PUSH     {R2-R5,LR}
        MOVS     R4,R0
//   79     uint8 Thetmom_Data[5] = {0,0,0,0,0};// 红外模块数据缓存数组
        ADD      R0,SP,#+0
        MOVS     R1,#+0
        MOVS     R2,#+0
        STM      R0!,{R1,R2}
        SUBS     R0,R0,#+8
//   80     float Temperature = 0; 
        MOVS     R5,#+0
//   81     // A:ActionKey (When Pull Low, the device will measure Tbb continuousely.)
//   82     GPIOE_PDOR |= (1<<0);//动作
        LDR.W    R0,??DataTable8_6  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.W    R1,??DataTable8_6  ;; 0x400ff100
        STR      R0,[R1, #+0]
//   83     GPIOE_PDOR &=~ (1<<0);//动作
        LDR.W    R0,??DataTable8_6  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.W    R1,??DataTable8_6  ;; 0x400ff100
        STR      R0,[R1, #+0]
//   84     Thetmom_Data[0] = u8_getVar();
        BL       u8_getVar
        STRB     R0,[SP, #+0]
//   85     Thetmom_Data[1] = u8_getVar();
        BL       u8_getVar
        STRB     R0,[SP, #+1]
//   86     Thetmom_Data[2] = u8_getVar();
        BL       u8_getVar
        STRB     R0,[SP, #+2]
//   87     Thetmom_Data[3] = u8_getVar();
        BL       u8_getVar
        STRB     R0,[SP, #+3]
//   88     Thetmom_Data[4] = u8_getVar();
        BL       u8_getVar
        STRB     R0,[SP, #+4]
//   89     GPIOE_PDOR |= (1<<0);
        LDR.W    R0,??DataTable8_6  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.W    R1,??DataTable8_6  ;; 0x400ff100
        STR      R0,[R1, #+0]
//   90     uint8 check = 0x00FF&(Thetmom_Data[0]+Thetmom_Data[1]+Thetmom_Data[2]);
        LDRB     R0,[SP, #+0]
        LDRB     R1,[SP, #+1]
        ADDS     R0,R1,R0
        LDRB     R1,[SP, #+2]
        ADDS     R0,R1,R0
//   91     if((check!=Thetmom_Data[3])||(0x0D != Thetmom_Data[4]))
        LDRB     R1,[SP, #+3]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,R1
        BNE.N    ??sg_getvar_Thetmom_0
        LDRB     R0,[SP, #+4]
        CMP      R0,#+13
        BEQ.N    ??sg_getvar_Thetmom_1
//   92     {
//   93         Gaia.status = 0xFFu;    // 严重错误 // 返回程序重新执行
??sg_getvar_Thetmom_0:
        MOVS     R0,#+255
        STRB     R0,[SP, #+20]
        B.N      ??sg_getvar_Thetmom_2
//   94     }
//   95     else
//   96     {
//   97         if(0x4C == Thetmom_Data[0])
??sg_getvar_Thetmom_1:
        LDRB     R0,[SP, #+0]
        CMP      R0,#+76
        BNE.N    ??sg_getvar_Thetmom_3
//   98         {
//   99             Gaia.value.isTarget = 1;// 目标
        MOVS     R0,#+1
        STRB     R0,[SP, #+24]
//  100         }
//  101         Temperature = ((Thetmom_Data[1] << 8)|Thetmom_Data[2])/16 - 273.15;
??sg_getvar_Thetmom_3:
        LDRB     R0,[SP, #+1]
        LDRB     R1,[SP, #+2]
        ORRS     R0,R1,R0, LSL #+8
        MOVS     R1,#+16
        SDIV     R0,R0,R1
        BL       __aeabi_i2d
        MOVS     R2,#+1717986918
        LDR.W    R3,??DataTable8_9  ;; 0xc0711266
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        MOVS     R5,R0
//  102         if( Temperature < 220.0 )
        MOVS     R0,R5
        LDR.W    R1,??DataTable8_10  ;; 0x435c0000
        BL       __aeabi_cfcmple
        BCS.N    ??sg_getvar_Thetmom_4
//  103         {
//  104             Gaia.value.temperature = Temperature;
        STR      R5,[SP, #+28]
//  105         }
//  106         Gaia.status = 0x01u;
??sg_getvar_Thetmom_4:
        MOVS     R0,#+1
        STRB     R0,[SP, #+20]
//  107     }
//  108     return Gaia;
??sg_getvar_Thetmom_2:
        MOVS     R0,R4
        ADD      R1,SP,#+20
        MOVS     R2,#+216
        BL       __aeabi_memcpy4
        POP      {R1,R2,R4,R5}
        LDR      PC,[SP], #+16    ;; return
//  109 }
//  110 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  111 void v_show_temperature( __thermom_and_bar Gaia )
//  112 {
v_show_temperature:
        PUSH     {R0-R3}
        PUSH     {R7,LR}
//  113     OLED2_P6x8Str(0,2,"temperature:");
        LDR.W    R2,??DataTable8_11
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       OLED2_P6x8Str
//  114     OLED2_ShowNumber(78,2,Gaia.value.temperature);
        LDR      R2,[SP, #+16]
        MOVS     R1,#+2
        MOVS     R0,#+78
        BL       OLED2_ShowNumber
//  115 }
        POP      {R0}
        LDR      PC,[SP], #+20    ;; return
//  116 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  117 void v_show_barSide( __thermom_and_bar Gaia )
//  118 {
v_show_barSide:
        PUSH     {R0-R3}
        PUSH     {R4,LR}
//  119     for(uint8 loop=0;loop<Gaia.bar.fall_side_count;loop++)
        MOVS     R4,#+0
        B.N      ??v_show_barSide_0
//  120     {
//  121         OLED_PutPagePixel(Gaia.bar.allSide[loop].fall,0,0xFFu);
??v_show_barSide_1:
        MOVS     R2,#+255
        MOVS     R1,#+0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,#+3
        ADD      R3,SP,#+8
        MLA      R0,R0,R4,R3
        LDRB     R0,[R0, #+16]
        BL       OLED_PutPagePixel
//  122         OLED_PutPagePixel(Gaia.bar.allSide[loop].rise,16,0xFFu);
        MOVS     R2,#+255
        MOVS     R1,#+16
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,#+3
        ADD      R3,SP,#+8
        MLA      R0,R0,R4,R3
        LDRB     R0,[R0, #+17]
        BL       OLED_PutPagePixel
//  123         OLED_PutPagePixel(Gaia.bar.allSide[loop].fall,8,0xFFu);
        MOVS     R2,#+255
        MOVS     R1,#+8
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,#+3
        ADD      R3,SP,#+8
        MLA      R0,R0,R4,R3
        LDRB     R0,[R0, #+16]
        BL       OLED_PutPagePixel
//  124         OLED_PutPagePixel(Gaia.bar.allSide[loop].rise,24,0xFFu);
        MOVS     R2,#+255
        MOVS     R1,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,#+3
        ADD      R3,SP,#+8
        MLA      R0,R0,R4,R3
        LDRB     R0,[R0, #+17]
        BL       OLED_PutPagePixel
//  125     }
        ADDS     R4,R4,#+1
??v_show_barSide_0:
        LDRB     R0,[SP, #+216]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,R0
        BCC.N    ??v_show_barSide_1
//  126 }
        POP      {R4}
        LDR      PC,[SP], #+20    ;; return
//  127 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  128 void v_show_barNum( __thermom_and_bar Gaia )
//  129 {
v_show_barNum:
        PUSH     {R0-R3}
        PUSH     {R7,LR}
//  130     OLED2_P6x8Str(0,1,"BarWidth:");
        LDR.W    R2,??DataTable8_12
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       OLED2_P6x8Str
//  131     OLED2_ShowNumber(54,1,Gaia.bar.bar_width);
        LDRB     R0,[SP, #+218]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+1
        MOVS     R0,#+54
        BL       OLED2_ShowNumber
//  132     OLED2_P6x8Str(0,2,"BarNumber:");
        LDR.W    R2,??DataTable8_13
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       OLED2_P6x8Str
//  133     OLED2_ShowNumber(60,2,Gaia.bar.fall_side_count);
        LDRB     R0,[SP, #+216]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+2
        MOVS     R0,#+60
        BL       OLED2_ShowNumber
//  134     OLED2_P6x8Str(0,3,"BarWidthOne:");
        LDR.W    R2,??DataTable8_14
        MOVS     R1,#+3
        MOVS     R0,#+0
        BL       OLED2_P6x8Str
//  135     OLED2_ShowNumber(72,3,Gaia.bar.one_width);
        LDR      R2,[SP, #+220]
        MOVS     R1,#+3
        MOVS     R0,#+72
        BL       OLED2_ShowNumber
//  136 }
        POP      {R0}
        LDR      PC,[SP], #+20    ;; return
//  137 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  138 void v_show_barCodeNum(uint8 barCode[])
//  139 {
v_show_barCodeNum:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
//  140     for(uint8 loop=0;loop<20;loop++)
        MOVS     R5,#+0
        B.N      ??v_show_barCodeNum_0
//  141     {
//  142         char show = barCode[loop]+16;
//  143         OLED2_Set_Pos(6*loop,4);
//  144   	for(uint8 inter=0;inter<6;inter++)
//  145         {
//  146             if( 2+16  == show )
??v_show_barCodeNum_1:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+18
        BNE.N    ??v_show_barCodeNum_2
//  147             {
//  148                 show = 0 + 16;
        MOVS     R6,#+16
//  149             }
//  150             OLED2_WrDat(F6x8[show][inter]);
??v_show_barCodeNum_2:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R0,#+6
        LDR.W    R1,??DataTable8_15
        MLA      R0,R0,R6,R1
        LDRB     R0,[R7, R0]
        BL       OLED2_WrDat
//  151         }
        ADDS     R7,R7,#+1
??v_show_barCodeNum_3:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+6
        BLT.N    ??v_show_barCodeNum_1
        ADDS     R5,R5,#+1
??v_show_barCodeNum_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+20
        BGE.N    ??v_show_barCodeNum_4
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDRB     R0,[R5, R4]
        ADDS     R6,R0,#+16
        MOVS     R1,#+4
        MOVS     R0,#+6
        SMULBB   R0,R5,R0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED2_Set_Pos
        MOVS     R7,#+0
        B.N      ??v_show_barCodeNum_3
//  152     }
//  153     for(uint8 loop=4;loop<12;loop++)
??v_show_barCodeNum_4:
        MOVS     R5,#+4
        B.N      ??v_show_barCodeNum_5
//  154     {
//  155         char show = barCode[loop]+16;
//  156         OLED2_Set_Pos(6*(loop-4),5);
//  157   	for(uint8 inter=0;inter<6;inter++)
//  158         {
//  159             if( 2+16  == show )
??v_show_barCodeNum_6:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+18
        BNE.N    ??v_show_barCodeNum_7
//  160             {
//  161                 show = 0 + 16;
        MOVS     R6,#+16
//  162             }
//  163             OLED2_WrDat(F6x8[show][inter]);
??v_show_barCodeNum_7:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R0,#+6
        LDR.W    R1,??DataTable8_15
        MLA      R0,R0,R6,R1
        LDRB     R0,[R7, R0]
        BL       OLED2_WrDat
//  164         }
        ADDS     R7,R7,#+1
??v_show_barCodeNum_8:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+6
        BLT.N    ??v_show_barCodeNum_6
        ADDS     R5,R5,#+1
??v_show_barCodeNum_5:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+12
        BGE.N    ??v_show_barCodeNum_9
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDRB     R0,[R5, R4]
        ADDS     R6,R0,#+16
        MOVS     R1,#+5
        SUBS     R0,R5,#+4
        MOVS     R2,#+6
        SMULBB   R0,R0,R2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED2_Set_Pos
        MOVS     R7,#+0
        B.N      ??v_show_barCodeNum_8
//  165     }
//  166     uint8 number = 0;
??v_show_barCodeNum_9:
        MOVS     R5,#+0
//  167     for(uint8 loop = 4;loop<12;loop++)// 编码格式：黑色为1
        MOVS     R0,#+4
        B.N      ??v_show_barCodeNum_10
//  168     {
//  169         uint8 num_cut = 0;
//  170         if(1 == barCode[loop])
//  171         {
//  172             num_cut = 1;
//  173         }
//  174         else if(2 == barCode[loop])
??v_show_barCodeNum_11:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDRB     R2,[R0, R4]
        CMP      R2,#+2
        BNE.N    ??v_show_barCodeNum_12
//  175         {
//  176             num_cut = 0;
        MOVS     R1,#+0
//  177         }
//  178         number |= num_cut << (11 - loop);
??v_show_barCodeNum_12:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        RSBS     R2,R0,#+11
        LSLS     R1,R1,R2
        ORRS     R5,R1,R5
        ADDS     R0,R0,#+1
??v_show_barCodeNum_10:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+12
        BGE.N    ??v_show_barCodeNum_13
        MOVS     R1,#+0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDRB     R2,[R0, R4]
        CMP      R2,#+1
        BNE.N    ??v_show_barCodeNum_11
        MOVS     R1,#+1
        B.N      ??v_show_barCodeNum_12
//  179     }
//  180     OLED2_P6x8Str(0,6,"BarCode:");
??v_show_barCodeNum_13:
        LDR.W    R2,??DataTable8_16
        MOVS     R1,#+6
        MOVS     R0,#+0
        BL       OLED2_P6x8Str
//  181     OLED2_ShowNumber(48,6,number);
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R0,R5
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+6
        MOVS     R0,#+48
        BL       OLED2_ShowNumber
//  182 }
        POP      {R0,R4-R7,PC}    ;; return
//  183 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  184 __CCD_get_barCode sg_ccdVar_AutoAdjust( __CCD_get_barCode Gaia )
//  185 {
sg_ccdVar_AutoAdjust:
        PUSH     {R1-R3}
        PUSH     {R3,R4,LR}
        MOVS     R4,R0
//  186     CCD1get(Gaia.img);
        ADD      R0,SP,#+12
        BL       CCD1get
//  187     Gaia.max = 0;Gaia.min = 255;
        MOVS     R0,#+0
        STRB     R0,[SP, #+140]
        MOVS     R0,#+255
        STRB     R0,[SP, #+141]
//  188     for(uint8 loop=0;loop<128;loop++)
        MOVS     R0,#+0
        B.N      ??sg_ccdVar_AutoAdjust_0
//  189     {
//  190         Gaia.aver = Gaia.aver + Gaia.img[loop];
??sg_ccdVar_AutoAdjust_1:
        LDRH     R1,[SP, #+142]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R2,SP,#+12
        LDRB     R2,[R0, R2]
        UXTAB    R1,R1,R2
        STRH     R1,[SP, #+142]
//  191         if(Gaia.img[loop]>Gaia.max){Gaia.max = Gaia.img[loop];}
        LDRB     R1,[SP, #+140]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R2,SP,#+12
        LDRB     R2,[R0, R2]
        CMP      R1,R2
        BCS.N    ??sg_ccdVar_AutoAdjust_2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R1,SP,#+12
        LDRB     R1,[R0, R1]
        STRB     R1,[SP, #+140]
//  192         if(Gaia.img[loop]<Gaia.min){Gaia.min = Gaia.img[loop];}
??sg_ccdVar_AutoAdjust_2:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R1,SP,#+12
        LDRB     R1,[R0, R1]
        LDRB     R2,[SP, #+141]
        CMP      R1,R2
        BCS.N    ??sg_ccdVar_AutoAdjust_3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R1,SP,#+12
        LDRB     R1,[R0, R1]
        STRB     R1,[SP, #+141]
//  193     }
??sg_ccdVar_AutoAdjust_3:
        ADDS     R0,R0,#+1
??sg_ccdVar_AutoAdjust_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+128
        BLT.N    ??sg_ccdVar_AutoAdjust_1
//  194     Gaia.aver = Gaia.aver/128;
        LDRH     R0,[SP, #+142]
        MOVS     R1,#+128
        SDIV     R0,R0,R1
        STRH     R0,[SP, #+142]
//  195     // 曝光策略重构
//  196     if( Gaia.aver > Gaia.threshold + 5 )
        LDRB     R0,[SP, #+144]
        ADDS     R0,R0,#+5
        LDRH     R1,[SP, #+142]
        CMP      R0,R1
        BGE.N    ??sg_ccdVar_AutoAdjust_4
//  197     {
//  198         if(Gaia.aver > Gaia.threshold + 20)
        LDRB     R0,[SP, #+144]
        ADDS     R0,R0,#+20
        LDRH     R1,[SP, #+142]
        CMP      R0,R1
        BGE.N    ??sg_ccdVar_AutoAdjust_5
//  199         {
//  200             if( (Gaia.exposureTime - (Gaia.aver - Gaia.threshold)) > 0 )
        LDRH     R0,[SP, #+146]
        LDRH     R1,[SP, #+142]
        SUBS     R0,R0,R1
        LDRB     R1,[SP, #+144]
        UXTAB    R0,R0,R1
        CMP      R0,#+1
        BLT.N    ??sg_ccdVar_AutoAdjust_6
//  201             {
//  202                 Gaia.exposureTime -= (Gaia.aver - Gaia.threshold);
        LDRH     R0,[SP, #+146]
        LDRH     R1,[SP, #+142]
        SUBS     R0,R0,R1
        LDRB     R1,[SP, #+144]
        UXTAB    R0,R0,R1
        STRH     R0,[SP, #+146]
        B.N      ??sg_ccdVar_AutoAdjust_4
//  203             }
//  204             else
//  205             {
//  206                 Gaia.exposureTime = 1;
??sg_ccdVar_AutoAdjust_6:
        MOVS     R0,#+1
        STRH     R0,[SP, #+146]
        B.N      ??sg_ccdVar_AutoAdjust_4
//  207             }
//  208         }
//  209         else{Gaia.exposureTime--;}
??sg_ccdVar_AutoAdjust_5:
        LDRH     R0,[SP, #+146]
        SUBS     R0,R0,#+1
        STRH     R0,[SP, #+146]
//  210     }
//  211     if( Gaia.aver < Gaia.threshold - 5 )
??sg_ccdVar_AutoAdjust_4:
        LDRH     R0,[SP, #+142]
        LDRB     R1,[SP, #+144]
        SUBS     R1,R1,#+5
        CMP      R0,R1
        BGE.N    ??sg_ccdVar_AutoAdjust_7
//  212     {
//  213         if(Gaia.aver < Gaia.threshold - 20){Gaia.exposureTime += (Gaia.threshold - Gaia.aver);}
        LDRH     R0,[SP, #+142]
        LDRB     R1,[SP, #+144]
        SUBS     R1,R1,#+20
        CMP      R0,R1
        BGE.N    ??sg_ccdVar_AutoAdjust_8
        LDRH     R0,[SP, #+146]
        LDRB     R1,[SP, #+144]
        UXTAB    R0,R0,R1
        LDRH     R1,[SP, #+142]
        SUBS     R0,R0,R1
        STRH     R0,[SP, #+146]
        B.N      ??sg_ccdVar_AutoAdjust_7
//  214         else{Gaia.exposureTime++;}
??sg_ccdVar_AutoAdjust_8:
        LDRH     R0,[SP, #+146]
        ADDS     R0,R0,#+1
        STRH     R0,[SP, #+146]
//  215     }
//  216     if(Gaia.exposureTime<1){Gaia.exposureTime = 1;}
??sg_ccdVar_AutoAdjust_7:
        LDRH     R0,[SP, #+146]
        CMP      R0,#+0
        BNE.N    ??sg_ccdVar_AutoAdjust_9
        MOVS     R0,#+1
        STRH     R0,[SP, #+146]
//  217     return Gaia;
??sg_ccdVar_AutoAdjust_9:
        MOVS     R0,R4
        ADD      R1,SP,#+12
        MOVS     R2,#+136
        BL       __aeabi_memcpy
        POP      {R1,R4}
        LDR      PC,[SP], #+16    ;; return
//  218 }
//  219 
//  220 #define DE_IllegalArea          8
//  221 #define DE_ScanWidth            2//2
//  222 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  223 __CCD_get_barCode sg_getFeture_BarCode( __CCD_get_barCode Gaia )
//  224 {
sg_getFeture_BarCode:
        PUSH     {R1-R3}
        PUSH     {R3,R4,LR}
        MOVS     R4,R0
//  225     CCD1get(Gaia.img);
        ADD      R0,SP,#+12
        BL       CCD1get
//  226     Gaia.max = 0;Gaia.min = 255;
        MOVS     R0,#+0
        STRB     R0,[SP, #+140]
        MOVS     R0,#+255
        STRB     R0,[SP, #+141]
//  227     for(uint8 loop=0+DE_IllegalArea;loop<128-DE_IllegalArea;loop++)
        MOVS     R0,#+8
        B.N      ??sg_getFeture_BarCode_0
//  228     {
//  229         Gaia.aver = Gaia.aver + Gaia.img[loop];
??sg_getFeture_BarCode_1:
        LDRH     R1,[SP, #+142]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R2,SP,#+12
        LDRB     R2,[R0, R2]
        UXTAB    R1,R1,R2
        STRH     R1,[SP, #+142]
//  230         if(Gaia.img[loop]>Gaia.max){Gaia.max = Gaia.img[loop];}
        LDRB     R1,[SP, #+140]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R2,SP,#+12
        LDRB     R2,[R0, R2]
        CMP      R1,R2
        BCS.N    ??sg_getFeture_BarCode_2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R1,SP,#+12
        LDRB     R1,[R0, R1]
        STRB     R1,[SP, #+140]
//  231         if(Gaia.img[loop]<Gaia.min){Gaia.min = Gaia.img[loop];}
??sg_getFeture_BarCode_2:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R1,SP,#+12
        LDRB     R1,[R0, R1]
        LDRB     R2,[SP, #+141]
        CMP      R1,R2
        BCS.N    ??sg_getFeture_BarCode_3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R1,SP,#+12
        LDRB     R1,[R0, R1]
        STRB     R1,[SP, #+141]
//  232     }
??sg_getFeture_BarCode_3:
        ADDS     R0,R0,#+1
??sg_getFeture_BarCode_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+120
        BLT.N    ??sg_getFeture_BarCode_1
//  233     Gaia.aver = Gaia.aver/(128 - 2*DE_IllegalArea);
        LDRH     R0,[SP, #+142]
        MOVS     R1,#+112
        SDIV     R0,R0,R1
        STRH     R0,[SP, #+142]
//  234     Gaia.threshold = (uint8)(((float)(Gaia.max - Gaia.min))*0.3);
        LDRB     R0,[SP, #+140]
        LDRB     R1,[SP, #+141]
        SUBS     R0,R0,R1
        BL       __aeabi_i2f
        BL       __aeabi_f2d
        MOVS     R2,#+858993459
        LDR.W    R3,??DataTable8_17  ;; 0x3fd33333
        BL       __aeabi_dmul
        BL       __aeabi_d2iz
        STRB     R0,[SP, #+144]
//  235     return Gaia;
        MOVS     R0,R4
        ADD      R1,SP,#+12
        MOVS     R2,#+136
        BL       __aeabi_memcpy
        POP      {R1,R4}
        LDR      PC,[SP], #+16    ;; return
//  236 }
//  237 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  238 uint8 see_uint8[128];
see_uint8:
        DS8 128

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  239 uint8 see2_uint8[128];
see2_uint8:
        DS8 128

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  240 float see4;
see4:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  241 uint8 see5[20];
see5:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  242 __Image2color see6[64];
see6:
        DS8 128

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  243 uint8 see7;
see7:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  244 __thermom_and_bar see3___thermom_and_bar;
see3___thermom_and_bar:
        DS8 216
//  245 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  246 __thermom_and_bar sg_getvar_BarCode ( __CCD_get_barCode bar_pretreat ) // 归纳条形码
//  247 {
sg_getvar_BarCode:
        PUSH     {R1-R3}
        PUSH     {R4-R7,LR}
        SUB      SP,SP,#+640
        MOVS     R4,R0
//  248     // 跳变提取
//  249     __thermom_and_bar Gaia ={0};
        ADD      R0,SP,#+292
        MOVS     R1,#+216
        BL       __aeabi_memclr4
//  250     uint8 num = 0;
        MOVS     R5,#+0
//  251     uint8 side_fall_all = 0;
        MOVS     R6,#+0
//  252     uint8 side_rise_all = 0;
        MOVS     R7,#+0
//  253     for(uint8 loop=0+DE_IllegalArea,num = 0;loop<128-DE_IllegalArea-DE_ScanWidth;loop++)// 下降沿检测
        MOVS     R0,#+8
        MOVS     R1,#+0
        B.N      ??sg_getvar_BarCode_0
//  254     {
//  255         if(bar_pretreat.img[loop]>bar_pretreat.img[loop+DE_ScanWidth]  
//  256            && bar_pretreat.img[loop]-bar_pretreat.img[loop+DE_ScanWidth]>=bar_pretreat.threshold )
??sg_getvar_BarCode_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R2,SP,#+660
        ADDS     R2,R0,R2
        LDRB     R2,[R2, #+2]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R3,SP,#+660
        LDRB     R3,[R0, R3]
        CMP      R2,R3
        BCS.N    ??sg_getvar_BarCode_2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R2,SP,#+660
        LDRB     R2,[R0, R2]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R3,SP,#+660
        ADDS     R3,R0,R3
        LDRB     R3,[R3, #+2]
        SUBS     R2,R2,R3
        LDRB     R3,[SP, #+792]
        CMP      R2,R3
        BLT.N    ??sg_getvar_BarCode_2
//  257         {
//  258             Gaia.bar.allSide[num].fall = loop;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R2,#+3
        ADD      R3,SP,#+292
        MLA      R2,R2,R1,R3
        STRB     R0,[R2, #+16]
//  259             side_fall_all++;
        ADDS     R6,R6,#+1
//  260             num ++;
        ADDS     R1,R1,#+1
//  261         }
//  262     }
??sg_getvar_BarCode_2:
        ADDS     R0,R0,#+1
??sg_getvar_BarCode_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+118
        BLT.N    ??sg_getvar_BarCode_1
//  263     for(uint8 loop=0+DE_IllegalArea+DE_ScanWidth,num = 0;loop<128-DE_IllegalArea;loop++)// 上升沿检测
        MOVS     R0,#+10
        MOVS     R1,#+0
        B.N      ??sg_getvar_BarCode_3
//  264     {
//  265         if(bar_pretreat.img[loop]>bar_pretreat.img[loop-DE_ScanWidth] 
//  266            && bar_pretreat.img[loop]-bar_pretreat.img[loop-DE_ScanWidth]>=bar_pretreat.threshold )
??sg_getvar_BarCode_4:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R2,SP,#+660
        ADDS     R2,R0,R2
        LDRB     R2,[R2, #-2]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R3,SP,#+660
        LDRB     R3,[R0, R3]
        CMP      R2,R3
        BCS.N    ??sg_getvar_BarCode_5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R2,SP,#+660
        LDRB     R2,[R0, R2]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R3,SP,#+660
        ADDS     R3,R0,R3
        LDRB     R3,[R3, #-2]
        SUBS     R2,R2,R3
        LDRB     R3,[SP, #+792]
        CMP      R2,R3
        BLT.N    ??sg_getvar_BarCode_5
//  267         {
//  268             Gaia.bar.allSide[num].rise = loop;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R2,#+3
        ADD      R3,SP,#+292
        MLA      R2,R2,R1,R3
        STRB     R0,[R2, #+17]
//  269             side_rise_all++;
        ADDS     R7,R7,#+1
//  270             num ++;
        ADDS     R1,R1,#+1
//  271         }
//  272     }
??sg_getvar_BarCode_5:
        ADDS     R0,R0,#+1
??sg_getvar_BarCode_3:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+120
        BLT.N    ??sg_getvar_BarCode_4
//  273     Gaia.bar.fall_side_count = side_fall_all;
        STRB     R6,[SP, #+500]
//  274     Gaia.bar.rise_side_count = side_rise_all;
        STRB     R7,[SP, #+501]
//  275     // 跳变综合
//  276     uint8 side_all_save_temp[128]={0};// 边沿坐标记录
        ADD      R0,SP,#+164
        MOVS     R1,#+128
        BL       __aeabi_memclr4
//  277     uint8 side_write_temp[128]={0};// 边沿上升下降记录 上升沿记录为1，下降沿记录为2
        ADD      R0,SP,#+36
        MOVS     R1,#+128
        BL       __aeabi_memclr4
//  278     uint8 last_temp = side_fall_all + side_rise_all;// 边沿整体统计
        ADDS     R0,R7,R6
//  279     for(uint8 loop=0;loop<side_fall_all;loop++)// 统计下降沿
        MOVS     R1,#+0
        B.N      ??sg_getvar_BarCode_6
//  280     {
//  281         side_all_save_temp[loop] = Gaia.bar.allSide[loop].fall;
??sg_getvar_BarCode_7:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R2,#+3
        ADD      R3,SP,#+292
        MLA      R2,R2,R1,R3
        LDRB     R2,[R2, #+16]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADD      R3,SP,#+164
        STRB     R2,[R1, R3]
//  282         side_write_temp[loop] = 2;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADD      R2,SP,#+36
        MOVS     R3,#+2
        STRB     R3,[R1, R2]
//  283     }
        ADDS     R1,R1,#+1
??sg_getvar_BarCode_6:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R1,R6
        BCC.N    ??sg_getvar_BarCode_7
//  284     for(uint8 loop=0;loop<side_rise_all;loop++)// 统计上升沿
        MOVS     R1,#+0
        B.N      ??sg_getvar_BarCode_8
//  285     {
//  286         side_all_save_temp[side_fall_all+loop] = Gaia.bar.allSide[loop].rise;
??sg_getvar_BarCode_9:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTAB    R2,R1,R6
        ADD      R3,SP,#+164
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R12,#+3
        ADD      LR,SP,#+292
        MLA      R12,R12,R1,LR
        LDRB     R12,[R12, #+17]
        STRB     R12,[R2, R3]
//  287         side_write_temp[side_fall_all+loop] = 1;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTAB    R2,R1,R6
        ADD      R3,SP,#+36
        MOVS     R12,#+1
        STRB     R12,[R2, R3]
//  288     }
        ADDS     R1,R1,#+1
??sg_getvar_BarCode_8:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R1,R7
        BCC.N    ??sg_getvar_BarCode_9
//  289     // 跳变排序
//  290     for(uint8 loop=0;loop < last_temp;loop++) // 
        MOVS     R1,#+0
        B.N      ??sg_getvar_BarCode_10
//  291     {
//  292         // 基本排序
//  293         for(uint8 num_loop=loop;num_loop < last_temp;num_loop++)
//  294         {
//  295             uint8 temp = 0;
??sg_getvar_BarCode_11:
        MOVS     R3,#+0
//  296             uint8 temp_re = 0;
        MOVS     R6,#+0
//  297             if(side_all_save_temp[loop] > side_all_save_temp[num_loop])
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R7,SP,#+164
        LDRB     R7,[R2, R7]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADD      R12,SP,#+164
        LDRB     R12,[R1, R12]
        CMP      R7,R12
        BCS.N    ??sg_getvar_BarCode_12
//  298             {
//  299                 // 交换数值大小
//  300                 temp = side_all_save_temp[loop];
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADD      R3,SP,#+164
        LDRB     R3,[R1, R3]
//  301                 side_all_save_temp[loop] = side_all_save_temp[num_loop];
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADD      R6,SP,#+164
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R7,SP,#+164
        LDRB     R7,[R2, R7]
        STRB     R7,[R1, R6]
//  302                 side_all_save_temp[num_loop] = temp;
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R6,SP,#+164
        STRB     R3,[R2, R6]
//  303                 // 交换边沿信息
//  304                 temp_re = side_write_temp[loop];
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADD      R3,SP,#+36
        LDRB     R6,[R1, R3]
//  305                 side_write_temp[loop] = side_write_temp[num_loop];
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADD      R3,SP,#+36
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R7,SP,#+36
        LDRB     R7,[R2, R7]
        STRB     R7,[R1, R3]
//  306                 side_write_temp[num_loop] = temp_re;
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R3,SP,#+36
        STRB     R6,[R2, R3]
//  307                 
//  308             }
//  309         }
??sg_getvar_BarCode_12:
        ADDS     R2,R2,#+1
??sg_getvar_BarCode_13:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R2,R0
        BCC.N    ??sg_getvar_BarCode_11
        ADDS     R1,R1,#+1
??sg_getvar_BarCode_10:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R1,R0
        BCS.N    ??sg_getvar_BarCode_14
        MOVS     R2,R1
        B.N      ??sg_getvar_BarCode_13
//  310     }
//  311     // 同等情况调整先后
//  312     for(uint8 loop=1;loop < last_temp;loop++) // 
??sg_getvar_BarCode_14:
        MOVS     R1,#+1
        B.N      ??sg_getvar_BarCode_15
//  313     {
//  314         if(side_all_save_temp[loop] == side_all_save_temp[loop - 1])
??sg_getvar_BarCode_16:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADD      R2,SP,#+164
        LDRB     R2,[R1, R2]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADD      R3,SP,#+164
        ADDS     R3,R1,R3
        LDRB     R3,[R3, #-1]
        CMP      R2,R3
        BNE.N    ??sg_getvar_BarCode_17
//  315         {
//  316             uint8 temp = 0;
        MOVS     R2,#+0
//  317             uint8 temp_re = 0;
        MOVS     R3,#+0
//  318             //if((1 == side_write_temp[loop])&&(2 == side_write_temp[loop-1]))// 正常情况
//  319             if(side_write_temp[loop]<side_write_temp[loop-1])
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADD      R6,SP,#+36
        LDRB     R6,[R1, R6]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADD      R7,SP,#+36
        ADDS     R7,R1,R7
        LDRB     R7,[R7, #-1]
        CMP      R6,R7
        BCS.N    ??sg_getvar_BarCode_17
//  320             {
//  321                 // 交换数值大小
//  322                 temp = side_all_save_temp[loop];
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADD      R2,SP,#+164
        LDRB     R2,[R1, R2]
//  323                 side_all_save_temp[loop] = side_all_save_temp[loop-1];
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADD      R3,SP,#+164
        ADDS     R3,R1,R3
        LDRB     R3,[R3, #-1]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADD      R6,SP,#+164
        STRB     R3,[R1, R6]
//  324                 side_all_save_temp[loop-1] = temp;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADD      R3,SP,#+164
        ADDS     R3,R1,R3
        STRB     R2,[R3, #-1]
//  325                 // 交换边沿信息
//  326                 temp_re = side_write_temp[loop];
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADD      R2,SP,#+36
        LDRB     R3,[R1, R2]
//  327                 side_write_temp[loop] = side_write_temp[loop-1];
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADD      R2,SP,#+36
        ADDS     R2,R1,R2
        LDRB     R2,[R2, #-1]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADD      R6,SP,#+36
        STRB     R2,[R1, R6]
//  328                 side_write_temp[loop-1] = temp_re;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADD      R2,SP,#+36
        ADDS     R2,R1,R2
        STRB     R3,[R2, #-1]
//  329             }
//  330         }
//  331     }
??sg_getvar_BarCode_17:
        ADDS     R1,R1,#+1
??sg_getvar_BarCode_15:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R1,R0
        BCC.N    ??sg_getvar_BarCode_16
//  332     // 条形码为黑，所以正常格式应该是白->黑->白
//  333     // 也就是说总是先出现下降沿，然后上升沿
//  334     // 不管怎样，每个单元内总是先白后黑再白，下降沿 -> 上升沿，且下降沿大于上升沿
//  335     //（故删去无效跳变合并，在统计凹槽的时候即可完成无效跳变合并 By 2014.8.1）
//  336     // 所以说下降沿总是寻找最左，而上升沿总是选取最右，每次选取到下降沿，进入下一模式
//  337     // 数据处理
//  338     // num = 0;
//  339     for(uint8 loop = 0;loop < 64;loop++) // 数据掩模
        MOVS     R1,#+0
        B.N      ??sg_getvar_BarCode_18
//  340     {
//  341         Gaia.bar.allSide[loop].fall = 0xFFu;
??sg_getvar_BarCode_19:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R2,#+3
        ADD      R3,SP,#+292
        MLA      R2,R2,R1,R3
        MOVS     R3,#+255
        STRB     R3,[R2, #+16]
//  342         Gaia.bar.allSide[loop].rise = 0xFFu;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R2,#+3
        ADD      R3,SP,#+292
        MLA      R2,R2,R1,R3
        MOVS     R3,#+255
        STRB     R3,[R2, #+17]
//  343     }
        ADDS     R1,R1,#+1
??sg_getvar_BarCode_18:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+64
        BLT.N    ??sg_getvar_BarCode_19
//  344     // 数据归纳第一步：提取出第一个下降沿
//  345     uint8 find_side_fall = 0;
        MOVS     R1,#+0
//  346     for(uint8 loop = 0;(loop < last_temp)&&(0!=find_side_fall);loop++)
        MOVS     R2,#+0
        B.N      ??sg_getvar_BarCode_20
//  347     {
//  348         if( 2 == side_write_temp[loop] )// 寻找下降沿
??sg_getvar_BarCode_21:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R3,SP,#+36
        LDRB     R3,[R2, R3]
        CMP      R3,#+2
        BNE.N    ??sg_getvar_BarCode_22
//  349         {
//  350             find_side_fall = loop;
        MOVS     R1,R2
//  351             num = 0;
        MOVS     R5,#+0
//  352         }
//  353     }
??sg_getvar_BarCode_22:
        ADDS     R2,R2,#+1
??sg_getvar_BarCode_20:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R2,R0
        BCS.N    ??sg_getvar_BarCode_23
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BNE.N    ??sg_getvar_BarCode_21
//  354     // 数学归纳后续步骤
//  355     for(uint8 loop = find_side_fall;loop < last_temp;loop++)
??sg_getvar_BarCode_23:
        B.N      ??sg_getvar_BarCode_24
//  356     {
//  357         if( 1 == side_write_temp[loop] ) // 上升沿
??sg_getvar_BarCode_25:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADD      R2,SP,#+36
        LDRB     R2,[R1, R2]
        CMP      R2,#+1
        BNE.N    ??sg_getvar_BarCode_26
//  358         {
//  359             Gaia.bar.allSide[num].rise = side_all_save_temp[loop]; // 记录上升沿
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R2,#+3
        ADD      R3,SP,#+292
        MLA      R2,R2,R5,R3
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADD      R3,SP,#+164
        LDRB     R3,[R1, R3]
        STRB     R3,[R2, #+17]
//  360         }
//  361         if( 2 == side_write_temp[loop] ) // 下降沿 // 上升沿总是出现在下降沿后面
??sg_getvar_BarCode_26:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADD      R2,SP,#+36
        LDRB     R2,[R1, R2]
        CMP      R2,#+2
        BNE.N    ??sg_getvar_BarCode_27
//  362         {
//  363             if( 0xFFu != Gaia.bar.allSide[num].rise ) // 上升沿有效性检测
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R2,#+3
        ADD      R3,SP,#+292
        MLA      R2,R2,R5,R3
        LDRB     R2,[R2, #+17]
        CMP      R2,#+255
        BEQ.N    ??sg_getvar_BarCode_28
//  364             {
//  365                 num ++;
        ADDS     R5,R5,#+1
//  366             }
//  367             if( 0xFFu == Gaia.bar.allSide[num].fall ) // 下降沿出现与否判定
??sg_getvar_BarCode_28:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R2,#+3
        ADD      R3,SP,#+292
        MLA      R2,R2,R5,R3
        LDRB     R2,[R2, #+16]
        CMP      R2,#+255
        BNE.N    ??sg_getvar_BarCode_27
//  368             {
//  369                 Gaia.bar.allSide[num].fall = side_all_save_temp[loop];
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R2,#+3
        ADD      R3,SP,#+292
        MLA      R2,R2,R5,R3
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADD      R3,SP,#+164
        LDRB     R3,[R1, R3]
        STRB     R3,[R2, #+16]
//  370             }
//  371         }
//  372         
//  373     }
??sg_getvar_BarCode_27:
        ADDS     R1,R1,#+1
??sg_getvar_BarCode_24:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R1,R0
        BCC.N    ??sg_getvar_BarCode_25
//  374     num++;// 补充
        ADDS     R5,R5,#+1
//  375     Gaia.bar.fall_side_count = num;
        STRB     R5,[SP, #+500]
//  376     Gaia.bar.rise_side_count = num;
        STRB     R5,[SP, #+501]
//  377     if( Gaia.bar.fall_side_count < 5 )
        LDRB     R0,[SP, #+500]
        CMP      R0,#+5
        BGE.N    ??sg_getvar_BarCode_29
//  378     {
//  379         return Gaia;
        MOVS     R0,R4
        ADD      R1,SP,#+292
        MOVS     R2,#+216
        BL       __aeabi_memcpy4
        B.N      ??sg_getvar_BarCode_30
//  380     }
//  381     /**************************************************************************/
//  382     /**************************************************************************/
//  383     /**************************************************************************/
//  384     /*********************************条形码识别********************************/
//  385     /**************************************************************************/
//  386     /**************************************************************************/
//  387     /**************************************************************************/
//  388     // 跳变 -> 二值化
//  389     // 跳变沿颜色断定：// 上升沿 => 白色区域；下降沿 => 黑色区域
//  390     // 上升沿：黑入白；下降沿：白入黑
//  391     uint8 color[20] = {0};// 颜色分布 // 白 = 2，黑 = 1，未定 = 3，无效区 = 4
??sg_getvar_BarCode_29:
        ADD      R0,SP,#+16
        MOVS     R1,#+20
        BL       __aeabi_memclr4
//  392     uint8 all_pixel[128] = {0};// 整体颜色分布
        ADD      R0,SP,#+508
        MOVS     R1,#+128
        BL       __aeabi_memclr4
//  393     // 数据处理
//  394     // 最末边界
//  395     Gaia.bar.bar_width = Gaia.bar.allSide[Gaia.bar.rise_side_count - 1].rise - Gaia.bar.allSide[0].fall + 1;// 整体宽度
        LDRB     R0,[SP, #+501]
        MOVS     R1,#+3
        ADD      R2,SP,#+292
        MLA      R0,R1,R0,R2
        LDRB     R0,[R0, #+14]
        LDRB     R1,[SP, #+308]
        SUBS     R0,R0,R1
        ADDS     R0,R0,#+1
        STRB     R0,[SP, #+502]
//  396     Gaia.bar.one_width = Gaia.bar.bar_width/20.0;
        LDRB     R0,[SP, #+502]
        BL       __aeabi_ui2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable8_18  ;; 0x40340000
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        STR      R0,[SP, #+504]
//  397     uint8 bar_width_half = RoundToInt32(Gaia.bar.one_width/2.0);
        LDR      R0,[SP, #+504]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        MOVS     R3,#+1073741824
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        BL       RoundToInt32
//  398     // 颜色初始：Gaia.bar.allSide[0].fall
//  399     // 颜色结束：Gaia.bar.allSide[Gaia.bar.rise_side_count - 1].rise
//  400     // 颜色判定：边界以下降沿开始，以上升沿结束为颜色未定区域，即凹槽区。
//  401     //          边界以上升沿开始，以下降沿结束为颜色已定区，即白色。白色区域边界可能仍为颜色未定区
//  402     // 无效区断定
//  403     for(uint8 loop = 0;loop<128;loop++)
        MOVS     R1,#+0
        B.N      ??sg_getvar_BarCode_31
//  404     {
//  405         all_pixel[loop] = 4; // 无效区规定
??sg_getvar_BarCode_32:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADD      R2,SP,#+508
        MOVS     R3,#+4
        STRB     R3,[R1, R2]
//  406     }
        ADDS     R1,R1,#+1
??sg_getvar_BarCode_31:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+128
        BLT.N    ??sg_getvar_BarCode_32
//  407     // 凹槽区粗略规定 => 凹槽区完善规定
//  408     // 上升沿 => 白色区域；下降沿 => 黑色区域    
//  409     for(uint8 loop = 0;loop<Gaia.bar.fall_side_count;loop++)// 断定上升沿及其之前的区域，下降沿及其之后的区域 
        MOVS     R1,#+0
        B.N      ??sg_getvar_BarCode_33
//  410     {
//  411         for(uint8 inter = 0;inter<=bar_width_half;inter++)
//  412         {
//  413             // 断定下降沿 // 半区域综合 => 下降沿及其之后
//  414             sint16 black_cut = Gaia.bar.allSide[loop].fall + inter;// 黑色区域断定
//  415             if(black_cut < Gaia.bar.allSide[loop].rise) // 黑色区域断定
//  416             {
//  417                 all_pixel[black_cut] = 1;// 黑色区域断定
//  418             }
//  419         }
//  420         for(uint8 inter = 0;inter<=bar_width_half+1;inter++)
//  421         {
//  422             // 断定上升沿 // 半区域综合 => 上升沿及其之前
//  423             sint16 white_cut = Gaia.bar.allSide[loop].rise - inter;// 白色区域断定
??sg_getvar_BarCode_34:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R3,#+3
        ADD      R5,SP,#+292
        MLA      R3,R3,R1,R5
        LDRB     R3,[R3, #+17]
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        SUBS     R3,R3,R2
//  424             if(white_cut >= Gaia.bar.allSide[loop].fall)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R5,#+3
        ADD      R6,SP,#+292
        MLA      R5,R5,R1,R6
        LDRB     R5,[R5, #+16]
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        CMP      R3,R5
        BLT.N    ??sg_getvar_BarCode_35
//  425             {
//  426                 all_pixel[white_cut] = 2;// 白色区域断定
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        ADD      R5,SP,#+508
        MOVS     R6,#+2
        STRB     R6,[R3, R5]
//  427             }
//  428         }
??sg_getvar_BarCode_35:
        ADDS     R2,R2,#+1
??sg_getvar_BarCode_36:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R3,R0,#+1
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R3,R2
        BGE.N    ??sg_getvar_BarCode_34
        ADDS     R1,R1,#+1
??sg_getvar_BarCode_33:
        LDRB     R2,[SP, #+500]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,R2
        BCS.N    ??sg_getvar_BarCode_37
        MOVS     R2,#+0
        B.N      ??sg_getvar_BarCode_38
??sg_getvar_BarCode_39:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R3,#+3
        ADD      R5,SP,#+292
        MLA      R3,R3,R1,R5
        LDRB     R3,[R3, #+16]
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        UXTAB    R3,R2,R3
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R5,#+3
        ADD      R6,SP,#+292
        MLA      R5,R5,R1,R6
        LDRB     R5,[R5, #+17]
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        CMP      R3,R5
        BGE.N    ??sg_getvar_BarCode_40
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        ADD      R5,SP,#+508
        MOVS     R6,#+1
        STRB     R6,[R3, R5]
??sg_getvar_BarCode_40:
        ADDS     R2,R2,#+1
??sg_getvar_BarCode_38:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R0,R2
        BCS.N    ??sg_getvar_BarCode_39
        MOVS     R2,#+0
        B.N      ??sg_getvar_BarCode_36
//  429     }
//  430     // 整体区域断定
//  431     // 黑色区域断定
//  432     for(uint8 loop = 0;loop<Gaia.bar.fall_side_count;loop++)// 遍历全部凹槽区
??sg_getvar_BarCode_37:
        MOVS     R0,#+0
        B.N      ??sg_getvar_BarCode_41
//  433     {
//  434         for(uint8 inter = Gaia.bar.allSide[loop].fall;inter<Gaia.bar.allSide[loop].rise;inter++)// 全黑区断定
//  435         {
//  436             if(4 == all_pixel[inter])
??sg_getvar_BarCode_42:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADD      R2,SP,#+508
        LDRB     R2,[R1, R2]
        CMP      R2,#+4
        BNE.N    ??sg_getvar_BarCode_43
//  437             {
//  438                 all_pixel[inter] = 1;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADD      R2,SP,#+508
        MOVS     R3,#+1
        STRB     R3,[R1, R2]
//  439             }
//  440         }
??sg_getvar_BarCode_43:
        ADDS     R1,R1,#+1
??sg_getvar_BarCode_44:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R2,#+3
        ADD      R3,SP,#+292
        MLA      R2,R2,R0,R3
        LDRB     R2,[R2, #+17]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,R2
        BCC.N    ??sg_getvar_BarCode_42
        ADDS     R0,R0,#+1
??sg_getvar_BarCode_41:
        LDRB     R1,[SP, #+500]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,R1
        BCS.N    ??sg_getvar_BarCode_45
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R1,#+3
        ADD      R2,SP,#+292
        MLA      R1,R1,R0,R2
        LDRB     R1,[R1, #+16]
        B.N      ??sg_getvar_BarCode_44
//  441     }
//  442     // 白色区域断定
//  443     for(uint8 loop = Gaia.bar.allSide[0].fall;loop<=Gaia.bar.allSide[Gaia.bar.rise_side_count - 1].rise;loop++)
??sg_getvar_BarCode_45:
        LDRB     R0,[SP, #+308]
        B.N      ??sg_getvar_BarCode_46
//  444     {
//  445         if( 4 == all_pixel[loop] )
??sg_getvar_BarCode_47:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R1,SP,#+508
        LDRB     R1,[R0, R1]
        CMP      R1,#+4
        BNE.N    ??sg_getvar_BarCode_48
//  446         {
//  447             all_pixel[loop] = 2;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R1,SP,#+508
        MOVS     R2,#+2
        STRB     R2,[R0, R1]
//  448         }
//  449     }
??sg_getvar_BarCode_48:
        ADDS     R0,R0,#+1
??sg_getvar_BarCode_46:
        LDRB     R1,[SP, #+501]
        MOVS     R2,#+3
        ADD      R3,SP,#+292
        MLA      R1,R2,R1,R3
        LDRB     R1,[R1, #+14]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R1,R0
        BCS.N    ??sg_getvar_BarCode_47
//  450     // 整体断定，颜色归纳！uint8 color[20] = {0};// 颜色分布 // 白 = 2，黑 = 1，未定 = 3，无效区 = 4
//  451     // 综合成数码，不能根据整体除法，这样容易引入大量噪点。
//  452     // 由于提取已经连续，故可以根据每个数码占据的情况，来断定。
//  453     // 已获得数据为经过数据辨别后的all_pixel
//  454     uint8 cut_left = 0;
        MOVS     R0,#+0
//  455     uint8 cut_right = 0;
        MOVS     R1,#+0
//  456     for(uint8 loop=0;loop<128;loop++)
        MOVS     R2,#+0
        B.N      ??sg_getvar_BarCode_49
??sg_getvar_BarCode_50:
        ADDS     R2,R2,#+1
??sg_getvar_BarCode_49:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+128
        BGE.N    ??sg_getvar_BarCode_51
//  457     {
//  458         if(4 != all_pixel[loop])
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R3,SP,#+508
        LDRB     R3,[R2, R3]
        CMP      R3,#+4
        BEQ.N    ??sg_getvar_BarCode_50
//  459 	{
//  460             cut_left = loop;// 最左侧 
        MOVS     R0,R2
//  461             break;
//  462 	}
//  463     }
//  464     for(uint8 loop=cut_left;loop<128;loop++)
??sg_getvar_BarCode_51:
        MOVS     R2,R0
        B.N      ??sg_getvar_BarCode_52
??sg_getvar_BarCode_53:
        ADDS     R2,R2,#+1
??sg_getvar_BarCode_52:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+128
        BGE.N    ??sg_getvar_BarCode_54
//  465     {
//  466 	if(4 == all_pixel[loop])
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R3,SP,#+508
        LDRB     R3,[R2, R3]
        CMP      R3,#+4
        BNE.N    ??sg_getvar_BarCode_53
//  467 	{
//  468             cut_right = loop;// 最右侧 
        MOVS     R1,R2
//  469             break;
//  470 	}
//  471     }
//  472     __Image2color all_pxiel2color[64];
//  473     for(uint8 loop = 0;loop < 64;loop++)
??sg_getvar_BarCode_54:
        MOVS     R2,#+0
        B.N      ??sg_getvar_BarCode_55
//  474     {
//  475         all_pxiel2color[loop].color = 0xFFu;
??sg_getvar_BarCode_56:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R3,SP,#+36
        ADDS     R3,R3,R2, LSL #+1
        MOVS     R5,#+255
        STRB     R5,[R3, #+1]
//  476         all_pxiel2color[loop].width = 0xFFu;
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R3,SP,#+36
        MOVS     R5,#+255
        STRB     R5,[R3, R2, LSL #+1]
//  477     }
        ADDS     R2,R2,#+1
??sg_getvar_BarCode_55:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+64
        BLT.N    ??sg_getvar_BarCode_56
//  478     uint8 all_pxiel2color_width = 0;// all_pxiel2color数组长度
        MOVS     R5,#+0
//  479     //uint8 bar_true_width = 0;bar_true_width = cut_right - cut_left + 1;// 条形码整体真实宽度
//  480     uint8 last_change = cut_left;
//  481     for(uint8 inter = 0,loop = cut_left;loop <= cut_right;loop++)
        MOVS     R2,#+0
        MOVS     R3,R0
        B.N      ??sg_getvar_BarCode_57
//  482     {
//  483         if(all_pixel[last_change] !=  all_pixel[loop])
??sg_getvar_BarCode_58:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R5,SP,#+508
        LDRB     R5,[R0, R5]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ADD      R6,SP,#+508
        LDRB     R6,[R3, R6]
        CMP      R5,R6
        BEQ.N    ??sg_getvar_BarCode_59
//  484         {
//  485             all_pxiel2color[inter].width = loop - last_change;
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R5,SP,#+36
        SUBS     R6,R3,R0
        STRB     R6,[R5, R2, LSL #+1]
//  486             all_pxiel2color[inter].color = all_pixel[last_change];
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R5,SP,#+36
        ADDS     R5,R5,R2, LSL #+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R6,SP,#+508
        LDRB     R0,[R0, R6]
        STRB     R0,[R5, #+1]
//  487             inter ++;
        ADDS     R2,R2,#+1
//  488             last_change = loop;
        MOVS     R0,R3
//  489         }
//  490         all_pxiel2color_width = inter;// 数组长度
??sg_getvar_BarCode_59:
        MOVS     R5,R2
//  491     }
        ADDS     R3,R3,#+1
??sg_getvar_BarCode_57:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R1,R3
        BCS.N    ??sg_getvar_BarCode_58
//  492     // 数据调整，整数规划
//  493     // 每个数都接近最整数据，故可以将所有数据更换为最近数据
//  494     // 整数最小因子播种
//  495     uint8 min_boot[] = {0,1,2,3,4,5,6,7,8,9,10,11,12};// 最小算子
        ADD      R0,SP,#+0
        LDR.N    R1,??DataTable8_19
        MOVS     R2,#+16
        BL       __aeabi_memcpy4
//  496     for(uint8 loop = 0;loop<=8;loop++)
        MOVS     R6,#+0
        B.N      ??sg_getvar_BarCode_60
//  497     {
//  498         min_boot[loop] = loop * RoundToInt64(Gaia.bar.one_width); // 整数因子赋值
??sg_getvar_BarCode_61:
        LDR      R0,[SP, #+504]
        BL       __aeabi_f2d
        BL       RoundToInt64
        MUL      R0,R0,R6
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R6, R1]
//  499     }
        ADDS     R6,R6,#+1
??sg_getvar_BarCode_60:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+9
        BLT.N    ??sg_getvar_BarCode_61
//  500     
//  501     for(uint8 loop = 0;loop<all_pxiel2color_width;loop++)
        MOVS     R0,#+0
        B.N      ??sg_getvar_BarCode_62
//  502     {
//  503         sint8 e_min = 127; // 最小值搜寻
//  504         uint8 fix_best = 0;
//  505         for(uint8 inter = 0;inter<=12;inter++)
//  506         {
//  507             sint8 e = all_pxiel2color[loop].width - min_boot[inter];
//  508             if( __ABS(e) < e_min )
//  509             {
//  510                 e_min = __ABS(e);
//  511                 fix_best = inter;
//  512             }
//  513         }
//  514         if(127 != e_min)
??sg_getvar_BarCode_63:
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        CMP      R1,#+127
        BEQ.N    ??sg_getvar_BarCode_64
//  515         {
//  516             all_pxiel2color[loop].width = min_boot[fix_best];
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R1,SP,#+36
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R3,SP,#+0
        LDRB     R2,[R2, R3]
        STRB     R2,[R1, R0, LSL #+1]
//  517         }
??sg_getvar_BarCode_64:
        ADDS     R0,R0,#+1
??sg_getvar_BarCode_62:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R0,R5
        BCS.N    ??sg_getvar_BarCode_65
        MOVS     R1,#+127
        MOVS     R2,#+0
        MOVS     R3,#+0
        B.N      ??sg_getvar_BarCode_66
??sg_getvar_BarCode_67:
        MOVS     R1,R6
??sg_getvar_BarCode_68:
        MOVS     R2,R3
??sg_getvar_BarCode_69:
        ADDS     R3,R3,#+1
??sg_getvar_BarCode_66:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+13
        BGE.N    ??sg_getvar_BarCode_63
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R6,SP,#+36
        LDRSB    R6,[R6, R0, LSL #+1]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ADD      R7,SP,#+0
        LDRSB    R7,[R3, R7]
        SUBS     R6,R6,R7
        SXTB     R6,R6            ;; SignExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BPL.N    ??sg_getvar_BarCode_70
        SXTB     R6,R6            ;; SignExt  R6,R6,#+24,#+24
        RSBS     R7,R6,#+0
        B.N      ??sg_getvar_BarCode_71
??sg_getvar_BarCode_70:
        SXTB     R6,R6            ;; SignExt  R6,R6,#+24,#+24
        MOVS     R7,R6
??sg_getvar_BarCode_71:
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        CMP      R7,R1
        BGE.N    ??sg_getvar_BarCode_69
        SXTB     R6,R6            ;; SignExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BPL.N    ??sg_getvar_BarCode_67
        SXTB     R6,R6            ;; SignExt  R6,R6,#+24,#+24
        RSBS     R1,R6,#+0
        B.N      ??sg_getvar_BarCode_68
//  518     }
//  519     uint8 width_all = 0;
??sg_getvar_BarCode_65:
        MOVS     R0,#+0
//  520     for(uint8 loop = 0;loop<all_pxiel2color_width;loop++)
        MOVS     R1,#+0
        B.N      ??sg_getvar_BarCode_72
//  521     {
//  522         width_all = width_all + all_pxiel2color[loop].width;
??sg_getvar_BarCode_73:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADD      R2,SP,#+36
        LDRB     R2,[R2, R1, LSL #+1]
        ADDS     R0,R2,R0
//  523     }
        ADDS     R1,R1,#+1
??sg_getvar_BarCode_72:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R1,R5
        BCC.N    ??sg_getvar_BarCode_73
//  524     Gaia.bar.bar_width = width_all;
        STRB     R0,[SP, #+502]
//  525     // 条形码归纳
//  526     if(Gaia.bar.bar_width==20*RoundToInt64(Gaia.bar.one_width))
        LDRB     R6,[SP, #+502]
        LDR      R0,[SP, #+504]
        BL       __aeabi_f2d
        BL       RoundToInt64
        MOVS     R1,#+20
        MULS     R0,R1,R0
        CMP      R6,R0
        BNE.N    ??sg_getvar_BarCode_74
//  527     // 宽度匹配
//  528     {
//  529         // 进入识别
//  530         uint8 colorA_lastSet = 0;// 最后设置颜色数组下标
        MOVS     R6,#+0
//  531         for(uint8 loop=0;loop<all_pxiel2color_width;loop++)
        MOVS     R7,#+0
        B.N      ??sg_getvar_BarCode_75
//  532         {
//  533             uint8 array_set = all_pxiel2color[loop].width/RoundToInt64(Gaia.bar.one_width);// 设定数组
//  534             uint8 inter = 0;
//  535             for(inter = colorA_lastSet;inter < colorA_lastSet +array_set;inter++)  
//  536             {
//  537                 color[inter] = all_pxiel2color[loop].color;// 颜色设定
??sg_getvar_BarCode_76:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        ADD      R2,SP,#+36
        ADDS     R2,R2,R7, LSL #+1
        LDRB     R2,[R2, #+1]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R3,SP,#+16
        STRB     R2,[R0, R3]
//  538             }
        ADDS     R0,R0,#+1
??sg_getvar_BarCode_77:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTAB    R2,R1,R6
        CMP      R0,R2
        BLT.N    ??sg_getvar_BarCode_76
//  539             colorA_lastSet = inter;
        MOVS     R6,R0
        ADDS     R7,R7,#+1
??sg_getvar_BarCode_75:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R7,R5
        BCS.N    ??sg_getvar_BarCode_74
        LDR      R0,[SP, #+504]
        BL       __aeabi_f2d
        BL       RoundToInt64
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        ADD      R1,SP,#+36
        LDRB     R1,[R1, R7, LSL #+1]
        SDIV     R1,R1,R0
        MOVS     R0,#+0
        MOVS     R0,R6
        B.N      ??sg_getvar_BarCode_77
//  540         }
//  541     }
//  542     for(uint8 loop = 0;loop<20;loop++)
??sg_getvar_BarCode_74:
        MOVS     R0,#+0
        B.N      ??sg_getvar_BarCode_78
//  543     {
//  544         see5[loop] = color[loop];
??sg_getvar_BarCode_79:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable8_20
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R2,SP,#+16
        LDRB     R2,[R0, R2]
        STRB     R2,[R0, R1]
//  545     }
        ADDS     R0,R0,#+1
??sg_getvar_BarCode_78:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+20
        BLT.N    ??sg_getvar_BarCode_79
//  546       
//  547       
//  548     /*
//  549     if(all_pxiel2color_width <= 20)// 防出界
//  550     {
//  551         uint8 colored_area = 0;
//  552         for(uint8 loop=0;loop<all_pxiel2color_width;loop++)
//  553         {
//  554             uint8 width = all_pxiel2color[loop].width/RoundToInt64(Gaia.bar.one_width);
//  555             for(uint8 inter = colored_area;inter<colored_area+width;colored_area = inter)
//  556             {
//  557                 if(inter<20)// 防出界
//  558                 {
//  559                     color[inter] = all_pxiel2color[loop].color;
//  560                 }
//  561                 colored_area = inter;
//  562                 inter++;
//  563             }
//  564         }
//  565     }
//  566     */
//  567     
//  568     
//  569     // 上升沿完善
//  570     /*
//  571     for(uint8 loop = 0;loop < Gaia.bar.fall_side_count;loop++)// 
//  572     {
//  573         Gaia.bar.allSide[loop].rise -= DE_ScanWidth;
//  574     }  
//  575     // 条形码宽度归纳
//  576     for(uint8 loop = 0;loop < Gaia.bar.fall_side_count;loop++)// 条形码宽度总结
//  577     {
//  578         Gaia.bar.allSide[loop].width = Gaia.bar.allSide[loop].rise - Gaia.bar.allSide[loop].fall;
//  579     }
//  580     */
//  581     // 条形码识别
//  582     //uint8 bar_width_all = 0;
//  583     //uint8 bar_element_num = 0;
//  584     //bar_width_all = Gaia.bar.allSide[Gaia.bar.rise_side_count - 1].rise - Gaia.bar.allSide[0].fall + DE_ScanWidth;// 记录总宽度
//  585     // 条形码数量特征记录（8 + 3 + 5 + 4 = 20）
//  586     //bar_element_num = bar_width_all/Gaia.bar.allSide[0].width;// 条形码数量记录
//  587     //see4 = RoundToInt32(((float)bar_width_all)/((float)((Gaia.bar.allSide[0].rise-Gaia.bar.allSide[0].fall+2*DE_ScanWidth)/2)));
//  588     //Gaia.value.barCode = bar_element_num;
//  589     //see4 = bar_element_num;
//  590     // 搜寻众数
//  591     // if(Gaia.bar.allSide[0].width)// 根据第一个条形码宽度决定特征项
//  592     //
//  593     
//  594     see7 = all_pxiel2color_width;
        LDR.N    R0,??DataTable8_21
        STRB     R5,[R0, #+0]
//  595     for(uint8 loop = 0;loop<64;loop++)
        MOVS     R0,#+0
        B.N      ??sg_getvar_BarCode_80
//  596     {
//  597         see6[loop] = all_pxiel2color[loop];
??sg_getvar_BarCode_81:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable8_22
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R2,SP,#+36
        LDRH     R2,[R2, R0, LSL #+1]
        STRH     R2,[R1, R0, LSL #+1]
//  598     }
        ADDS     R0,R0,#+1
??sg_getvar_BarCode_80:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+64
        BLT.N    ??sg_getvar_BarCode_81
//  599     for(uint8 loop = 0;loop<128;loop++)
        MOVS     R0,#+0
        B.N      ??sg_getvar_BarCode_82
//  600     {
//  601         see_uint8[loop] = all_pixel[loop];
??sg_getvar_BarCode_83:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable8_23
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R2,SP,#+508
        LDRB     R2,[R0, R2]
        STRB     R2,[R0, R1]
//  602         see2_uint8[loop] = side_all_save_temp[loop];
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable8_24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R2,SP,#+164
        LDRB     R2,[R0, R2]
        STRB     R2,[R0, R1]
//  603     }
        ADDS     R0,R0,#+1
??sg_getvar_BarCode_82:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+128
        BLT.N    ??sg_getvar_BarCode_83
//  604     for(uint8 loop = 0;loop<20;loop++)
        MOVS     R0,#+0
        B.N      ??sg_getvar_BarCode_84
//  605     {
//  606         see5[loop] = color[loop];
??sg_getvar_BarCode_85:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable8_20
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R2,SP,#+16
        LDRB     R2,[R0, R2]
        STRB     R2,[R0, R1]
//  607     }
        ADDS     R0,R0,#+1
??sg_getvar_BarCode_84:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+20
        BLT.N    ??sg_getvar_BarCode_85
//  608     see3___thermom_and_bar = Gaia;
        LDR.N    R0,??DataTable8_25
        ADD      R1,SP,#+292
        MOVS     R2,#+216
        BL       __aeabi_memcpy4
//  609     
//  610     return Gaia;
        MOVS     R0,R4
        ADD      R1,SP,#+292
        MOVS     R2,#+216
        BL       __aeabi_memcpy4
??sg_getvar_BarCode_30:
        ADD      SP,SP,#+640
        POP      {R4-R7}
        LDR      PC,[SP], #+16    ;; return
//  611 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8:
        DC32     SPIx

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_1:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_2:
        DC32     0x4004d004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_3:
        DC32     0x4004d008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_4:
        DC32     0x400ff114

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_5:
        DC32     0x4004d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_6:
        DC32     0x400ff100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_7:
        DC32     0x13880

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_8:
        DC32     0x400ff110

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_9:
        DC32     0xc0711266

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_10:
        DC32     0x435c0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_11:
        DC32     `?<Constant "temperature:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_12:
        DC32     `?<Constant "BarWidth:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_13:
        DC32     `?<Constant "BarNumber:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_14:
        DC32     `?<Constant "BarWidthOne:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_15:
        DC32     F6x8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_16:
        DC32     `?<Constant "BarCode:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_17:
        DC32     0x3fd33333

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_18:
        DC32     0x40340000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_19:
        DC32     `?<Constant {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, `

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_20:
        DC32     see5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_21:
        DC32     see7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_22:
        DC32     see6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_23:
        DC32     see_uint8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_24:
        DC32     see2_uint8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_25:
        DC32     see3___thermom_and_bar

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "temperature:">`:
        DATA
        DC8 "temperature:"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "BarWidth:">`:
        DATA
        DC8 "BarWidth:"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "BarNumber:">`:
        DATA
        DC8 "BarNumber:"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "BarWidthOne:">`:
        DATA
        DC8 "BarWidthOne:"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "BarCode:">`:
        DATA
        DC8 "BarCode:"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, `:
        DATA
        DC8 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 0, 0, 0

        END
//  612 #undef DE_IllegalArea
// 
// 1 193 bytes in section .bss
//   712 bytes in section .rodata
// 3 340 bytes in section .text
// 
// 3 340 bytes of CODE  memory
//   712 bytes of CONST memory
// 1 193 bytes of DATA  memory
//
//Errors: none
//Warnings: none
