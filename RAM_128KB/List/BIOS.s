///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     28/Aug/2014  16:32:52 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\创作室\飞思卡尔智能小车\调试板\遥控器\ShunAn_Panel\B /
//                    IOS.c                                                   /
//    Command line =  D:\创作室\飞思卡尔智能小车\调试板\遥控器\ShunAn_Panel\B /
//                    IOS.c -D IAR -D TWR_K60F120M -lCN                       /
//                    D:\创作室\飞思卡尔智能小车\调试板\遥控器\RAM_128KB\List /
//                    \ -lB D:\创作室\飞思卡尔智能小车\调试板\遥控器\RAM_128K /
//                    B\List\ -o D:\创作室\飞思卡尔智能小车\调试板\遥控器\RAM /
//                    _128KB\Obj\ --no_cse --no_unroll --no_inline            /
//                    --no_code_motion --no_tbaa --no_clustering              /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=None --dlib_config             /
//                    "C:\Program Files (x86)\IAR Systems\Embedded Workbench  /
//                    6.5\arm\INC\c\DLib_Config_Normal.h" -I                  /
//                    D:\创作室\飞思卡尔智能小车\调试板\遥控器\ -I            /
//                    D:\创作室\飞思卡尔智能小车\调试板\遥控器\Library\ -I    /
//                    D:\创作室\飞思卡尔智能小车\调试板\遥控器\Library\Blesse /
//                    dAlien\ -I D:\创作室\飞思卡尔智能小车\调试板\遥控器\Shu /
//                    nAn_Panel\ -Ol --use_c++_inline                         /
//    List file    =  D:\创作室\飞思卡尔智能小车\调试板\遥控器\RAM_128KB\List /
//                    \BIOS.s                                                 /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN C6x8
        EXTERN LCD_SetCursor
        EXTERN LCD_SetPath
        EXTERN LCD_writeReg
        EXTERN __aeabi_cdcmple
        EXTERN __aeabi_cdrcmple
        EXTERN __aeabi_d2f
        EXTERN __aeabi_d2iz
        EXTERN __aeabi_dsub
        EXTERN __aeabi_f2iz
        EXTERN __aeabi_fmul
        EXTERN __aeabi_i2d
        EXTERN __aeabi_memcpy4

        PUBLIC v_BIOS_6x8Num
        PUBLIC v_BIOS_6x8str_Ascii
        PUBLIC v_Init_BIOS
        PUBLIC v_error_axis
        PUBLIC v_error_number

// D:\创作室\飞思卡尔智能小车\调试板\遥控器\ShunAn_Panel\BIOS.c
//    1 #include "arm_cm4.h"
//    2 #include "MK60F15.h"
//    3 #include "ShunAn_Lib.h"
//    4 #include "start_ShunAn.h"
//    5 #include "BlessedAlien.h"
//    6 #include "TFT.h"
//    7 #include "BIOS.h"
//    8 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    9 void v_Init_BIOS (void) // 初始化BIOS输出以右下为正统
//   10 {
//   11     
//   12 }
v_Init_BIOS:
        BX       LR               ;; return
//   13 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   14 void v_BIOS_6x8str_Ascii (uint16 X,uint16 Y,uint16 color,uint16 Backcolor,uint8 ch[])
//   15 {
v_BIOS_6x8str_Ascii:
        PUSH     {R3-R11,LR}
        MOV      R11,R0
        MOVS     R4,R1
        MOVS     R5,R2
        MOVS     R6,R3
//   16     uint8 char_Num = 0; // 显示个数数量
        MOVS     R7,#+0
//   17     LCD_SetPath(4); // 先下后右
        MOVS     R0,#+4
        BL       LCD_SetPath
//   18     for(uint8 Line_show = 0;Line_show < 8;Line_show++) // 行显示 - 8
        MOVS     R8,#+0
        LDR      R9,[SP, #+40]
        B.N      ??v_BIOS_6x8str_Ascii_0
//   19     {
//   20         LCD_SetCursor(X,Y+Line_show); // 行显示控制
//   21         while('\0' != ch[char_Num]) // 检测是否到最后
//   22         {
//   23             for(uint8 loop = 0;loop < 6;loop++) // 列控制 - 6
//   24             {
//   25                 uint8 c = ch[char_Num] - 32;
//   26                 if(0 != (C6x8[c][loop]&(1<<(7-Line_show)))) // 若为真则为空，若为假则为实在
//   27                 {
//   28                     LCD_DrawPoint(color);
//   29                 }
//   30                 else
//   31                 {
//   32                     LCD_DrawPoint(Backcolor);
//   33                 }
//   34             }
//   35             char_Num ++; // 字符移动
//   36         }
//   37         char_Num = 0; // 回复最早字符
??v_BIOS_6x8str_Ascii_1:
        MOVS     R7,#+0
        ADDS     R8,R8,#+1
??v_BIOS_6x8str_Ascii_0:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+8
        BGE.N    ??v_BIOS_6x8str_Ascii_2
        UXTAB    R1,R4,R8
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOV      R0,R11
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_SetCursor
        B.N      ??v_BIOS_6x8str_Ascii_3
??v_BIOS_6x8str_Ascii_4:
        ADDS     R7,R7,#+1
??v_BIOS_6x8str_Ascii_3:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDRB     R0,[R7, R9]
        CMP      R0,#+0
        BEQ.N    ??v_BIOS_6x8str_Ascii_1
        MOVS     R10,#+0
        B.N      ??v_BIOS_6x8str_Ascii_5
??v_BIOS_6x8str_Ascii_6:
        MOVS     R1,R6
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+34
        BL       LCD_writeReg
??v_BIOS_6x8str_Ascii_7:
        ADDS     R10,R10,#+1
??v_BIOS_6x8str_Ascii_5:
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        CMP      R10,#+6
        BGE.N    ??v_BIOS_6x8str_Ascii_4
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDRB     R0,[R7, R9]
        SUBS     R0,R0,#+32
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R1,#+6
        LDR.W    R2,??DataTable3
        MLA      R0,R1,R0,R2
        LDRB     R0,[R10, R0]
        MOVS     R1,#+1
        RSBS     R2,R8,#+7
        LSLS     R1,R1,R2
        TST      R0,R1
        BEQ.N    ??v_BIOS_6x8str_Ascii_6
        MOVS     R1,R5
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+34
        BL       LCD_writeReg
        B.N      ??v_BIOS_6x8str_Ascii_7
//   38     }
//   39 }
??v_BIOS_6x8str_Ascii_2:
        POP      {R0,R4-R11,PC}   ;; return
//   40 
//   41 
//   42 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   43 void v_BIOS_6x8Num (uint16 X,uint16 Y,uint16 color,uint16 Backcolor,double num)
//   44 {
v_BIOS_6x8Num:
        PUSH     {R4-R11,LR}
        SUB      SP,SP,#+36
        MOV      R11,R0
        MOV      R10,R1
        MOVS     R7,R2
        MOVS     R6,R3
//   45     uint8 ch[] = "-0000000000.000000"; // 10+6+2 = 18 * 6 = 108
        ADD      R0,SP,#+16
        LDR.W    R1,??DataTable3_1
        MOVS     R2,#+19
        BL       __aeabi_memcpy4
//   46     uint8 ch_show[] = "xxxxxxxxxx"; // 字符显示
        ADD      R0,SP,#+4
        LDR.W    R1,??DataTable3_2
        MOVS     R2,#+11
        BL       __aeabi_memcpy4
//   47     uint8 Gaia_Div = 0;
        MOVS     R8,#+0
        LDRD     R4,R5,[SP, #+72]
//   48     //             1000000000
//   49     // sint32
//   50     // float
//   51     // double
//   52     // 一次显示十个字符 -0.
//   53     // 分割指数部分与小数部分
//   54     sint32 num_Integer = (sint32)(num);
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_d2iz
        MOV      R9,R0
//   55     if(num >= 0.0){ch[0] = '+';}
        MOVS     R0,R4
        MOVS     R1,R5
        MOVS     R2,#+0
        MOVS     R3,#+0
        BL       __aeabi_cdrcmple
        BHI.N    ??v_BIOS_6x8Num_0
        MOVS     R0,#+43
        STRB     R0,[SP, #+16]
        B.N      ??v_BIOS_6x8Num_1
//   56     else{ch[0] = '-';}
??v_BIOS_6x8Num_0:
        MOVS     R0,#+45
        STRB     R0,[SP, #+16]
//   57     num_Integer = __ABS(num_Integer);
??v_BIOS_6x8Num_1:
        CMP      R9,#+0
        BPL.N    ??v_BIOS_6x8Num_2
        RSBS     R9,R9,#+0
        B.N      ??v_BIOS_6x8Num_3
//   58     // 指数部分
//   59     if(num_Integer >= 1000000000){Gaia_Div = 9;}else
??v_BIOS_6x8Num_2:
??v_BIOS_6x8Num_3:
        LDR.W    R0,??DataTable3_3  ;; 0x3b9aca00
        CMP      R9,R0
        BLT.N    ??v_BIOS_6x8Num_4
        MOVS     R8,#+9
        B.N      ??v_BIOS_6x8Num_5
//   60     if(num_Integer >=  100000000){Gaia_Div = 8;}else
??v_BIOS_6x8Num_4:
        LDR.W    R0,??DataTable3_4  ;; 0x5f5e100
        CMP      R9,R0
        BLT.N    ??v_BIOS_6x8Num_6
        MOVS     R8,#+8
        B.N      ??v_BIOS_6x8Num_5
//   61     if(num_Integer >=   10000000){Gaia_Div = 7;}else
??v_BIOS_6x8Num_6:
        LDR.W    R0,??DataTable3_5  ;; 0x989680
        CMP      R9,R0
        BLT.N    ??v_BIOS_6x8Num_7
        MOVS     R8,#+7
        B.N      ??v_BIOS_6x8Num_5
//   62     if(num_Integer >=    1000000){Gaia_Div = 6;}else
??v_BIOS_6x8Num_7:
        LDR.W    R0,??DataTable3_6  ;; 0xf4240
        CMP      R9,R0
        BLT.N    ??v_BIOS_6x8Num_8
        MOVS     R8,#+6
        B.N      ??v_BIOS_6x8Num_5
//   63     if(num_Integer >=     100000){Gaia_Div = 5;}else
??v_BIOS_6x8Num_8:
        LDR.W    R0,??DataTable3_7  ;; 0x186a0
        CMP      R9,R0
        BLT.N    ??v_BIOS_6x8Num_9
        MOVS     R8,#+5
        B.N      ??v_BIOS_6x8Num_5
//   64     if(num_Integer >=      10000){Gaia_Div = 4;}else
??v_BIOS_6x8Num_9:
        MOVW     R0,#+10000
        CMP      R9,R0
        BLT.N    ??v_BIOS_6x8Num_10
        MOVS     R8,#+4
        B.N      ??v_BIOS_6x8Num_5
//   65     if(num_Integer >=       1000){Gaia_Div = 3;}else
??v_BIOS_6x8Num_10:
        CMP      R9,#+1000
        BLT.N    ??v_BIOS_6x8Num_11
        MOVS     R8,#+3
        B.N      ??v_BIOS_6x8Num_5
//   66     if(num_Integer >=        100){Gaia_Div = 2;}else
??v_BIOS_6x8Num_11:
        CMP      R9,#+100
        BLT.N    ??v_BIOS_6x8Num_12
        MOVS     R8,#+2
        B.N      ??v_BIOS_6x8Num_5
//   67     if(num_Integer >=         10){Gaia_Div = 1;}else // num_Integer >= 0
??v_BIOS_6x8Num_12:
        CMP      R9,#+10
        BLT.N    ??v_BIOS_6x8Num_13
        MOVS     R8,#+1
        B.N      ??v_BIOS_6x8Num_5
//   68                                  {Gaia_Div = 0;}
??v_BIOS_6x8Num_13:
        MOVS     R8,#+0
//   69     switch(Gaia_Div)
??v_BIOS_6x8Num_5:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BEQ.W    ??v_BIOS_6x8Num_14
        CMP      R8,#+2
        BEQ.N    ??v_BIOS_6x8Num_15
        BCC.N    ??v_BIOS_6x8Num_16
        CMP      R8,#+4
        BEQ.N    ??v_BIOS_6x8Num_17
        BCC.N    ??v_BIOS_6x8Num_18
        CMP      R8,#+6
        BEQ.N    ??v_BIOS_6x8Num_19
        BCC.N    ??v_BIOS_6x8Num_20
        CMP      R8,#+8
        BEQ.N    ??v_BIOS_6x8Num_21
        BCC.N    ??v_BIOS_6x8Num_22
        CMP      R8,#+9
        BNE.N    ??v_BIOS_6x8Num_23
//   70     {
//   71         case 9:ch[1] = num_Integer/1000000000 + '0';
??v_BIOS_6x8Num_24:
        LDR.W    R0,??DataTable3_3  ;; 0x3b9aca00
        SDIV     R0,R9,R0
        ADDS     R0,R0,#+48
        STRB     R0,[SP, #+17]
//   72          num_Integer = num_Integer%1000000000;
        LDR.W    R0,??DataTable3_3  ;; 0x3b9aca00
        SDIV     R1,R9,R0
        MLS      R9,R0,R1,R9
//   73        // break;
//   74         case 8:ch[2] = num_Integer/100000000 + '0';
??v_BIOS_6x8Num_21:
        LDR.W    R0,??DataTable3_4  ;; 0x5f5e100
        SDIV     R0,R9,R0
        ADDS     R0,R0,#+48
        STRB     R0,[SP, #+18]
//   75          num_Integer = num_Integer%100000000;
        LDR.W    R0,??DataTable3_4  ;; 0x5f5e100
        SDIV     R1,R9,R0
        MLS      R9,R0,R1,R9
//   76        // break;
//   77         case 7:ch[3] = num_Integer/10000000 + '0';
??v_BIOS_6x8Num_22:
        LDR.W    R0,??DataTable3_5  ;; 0x989680
        SDIV     R0,R9,R0
        ADDS     R0,R0,#+48
        STRB     R0,[SP, #+19]
//   78          num_Integer = num_Integer%10000000;
        LDR.W    R0,??DataTable3_5  ;; 0x989680
        SDIV     R1,R9,R0
        MLS      R9,R0,R1,R9
//   79        // break;
//   80         case 6:ch[4] = num_Integer/1000000 + '0';
??v_BIOS_6x8Num_19:
        LDR.W    R0,??DataTable3_6  ;; 0xf4240
        SDIV     R0,R9,R0
        ADDS     R0,R0,#+48
        STRB     R0,[SP, #+20]
//   81          num_Integer = num_Integer%1000000;
        LDR.N    R0,??DataTable3_6  ;; 0xf4240
        SDIV     R1,R9,R0
        MLS      R9,R0,R1,R9
//   82        // break;
//   83         case 5:ch[5] = num_Integer/100000 + '0';
??v_BIOS_6x8Num_20:
        LDR.N    R0,??DataTable3_7  ;; 0x186a0
        SDIV     R0,R9,R0
        ADDS     R0,R0,#+48
        STRB     R0,[SP, #+21]
//   84          num_Integer = num_Integer%100000;
        LDR.N    R0,??DataTable3_7  ;; 0x186a0
        SDIV     R1,R9,R0
        MLS      R9,R0,R1,R9
//   85        // break;
//   86         case 4:ch[6] = num_Integer/10000 + '0';
??v_BIOS_6x8Num_17:
        MOVW     R0,#+10000
        SDIV     R0,R9,R0
        ADDS     R0,R0,#+48
        STRB     R0,[SP, #+22]
//   87          num_Integer = num_Integer%10000;
        MOVW     R0,#+10000
        SDIV     R1,R9,R0
        MLS      R9,R0,R1,R9
//   88        // break;
//   89         case 3:ch[7] = num_Integer/1000 + '0';
??v_BIOS_6x8Num_18:
        MOV      R0,#+1000
        SDIV     R0,R9,R0
        ADDS     R0,R0,#+48
        STRB     R0,[SP, #+23]
//   90          num_Integer = num_Integer%1000;
        MOV      R0,#+1000
        SDIV     R1,R9,R0
        MLS      R9,R0,R1,R9
//   91        // break;
//   92         case 2:ch[8] = num_Integer/100 + '0';
??v_BIOS_6x8Num_15:
        MOVS     R0,#+100
        SDIV     R0,R9,R0
        ADDS     R0,R0,#+48
        STRB     R0,[SP, #+24]
//   93          num_Integer = num_Integer%100;
        MOVS     R0,#+100
        SDIV     R1,R9,R0
        MLS      R9,R0,R1,R9
//   94        // break;
//   95         case 1:ch[9] = num_Integer/10 + '0';
??v_BIOS_6x8Num_16:
        MOVS     R0,#+10
        SDIV     R0,R9,R0
        ADDS     R0,R0,#+48
        STRB     R0,[SP, #+25]
//   96          num_Integer = num_Integer%10;
        MOVS     R0,#+10
        SDIV     R1,R9,R0
        MLS      R9,R0,R1,R9
//   97        // break;
//   98         case 0:ch[10] = num_Integer + '0';
??v_BIOS_6x8Num_14:
        ADDS     R0,R9,#+48
        STRB     R0,[SP, #+26]
//   99         break;
//  100     }
//  101     num_Integer = __ABS((sint32)(num));
??v_BIOS_6x8Num_23:
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_d2iz
        CMP      R0,#+0
        BPL.N    ??v_BIOS_6x8Num_25
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_d2iz
        RSBS     R9,R0,#+0
        B.N      ??v_BIOS_6x8Num_26
??v_BIOS_6x8Num_25:
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_d2iz
        MOV      R9,R0
//  102     float num_Decimal = __ABS(num) - num_Integer;
??v_BIOS_6x8Num_26:
        MOVS     R0,R4
        MOVS     R1,R5
        MOVS     R2,#+0
        MOVS     R3,#+0
        BL       __aeabi_cdcmple
        BCS.N    ??v_BIOS_6x8Num_27
        EORS     R5,R5,#0x80000000
        B.N      ??v_BIOS_6x8Num_28
??v_BIOS_6x8Num_27:
??v_BIOS_6x8Num_28:
        MOV      R0,R9
        BL       __aeabi_i2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_dsub
        BL       __aeabi_d2f
//  103     // 小数部分处理
//  104     num_Integer = (sint32)(num_Decimal * 1000000);
        LDR.N    R1,??DataTable3_8  ;; 0x49742400
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        MOV      R9,R0
//  105     if(num_Integer >=     100000){Gaia_Div = 5;}else
        LDR.N    R0,??DataTable3_7  ;; 0x186a0
        CMP      R9,R0
        BLT.N    ??v_BIOS_6x8Num_29
        MOVS     R8,#+5
        B.N      ??v_BIOS_6x8Num_30
//  106     if(num_Integer >=      10000){Gaia_Div = 4;}else
??v_BIOS_6x8Num_29:
        MOVW     R0,#+10000
        CMP      R9,R0
        BLT.N    ??v_BIOS_6x8Num_31
        MOVS     R8,#+4
        B.N      ??v_BIOS_6x8Num_30
//  107     if(num_Integer >=       1000){Gaia_Div = 3;}else
??v_BIOS_6x8Num_31:
        CMP      R9,#+1000
        BLT.N    ??v_BIOS_6x8Num_32
        MOVS     R8,#+3
        B.N      ??v_BIOS_6x8Num_30
//  108     if(num_Integer >=        100){Gaia_Div = 2;}else
??v_BIOS_6x8Num_32:
        CMP      R9,#+100
        BLT.N    ??v_BIOS_6x8Num_33
        MOVS     R8,#+2
        B.N      ??v_BIOS_6x8Num_30
//  109     if(num_Integer >=         10){Gaia_Div = 1;}else // num_Integer >= 0
??v_BIOS_6x8Num_33:
        CMP      R9,#+10
        BLT.N    ??v_BIOS_6x8Num_34
        MOVS     R8,#+1
        B.N      ??v_BIOS_6x8Num_30
//  110                                  {Gaia_Div = 0;}
??v_BIOS_6x8Num_34:
        MOVS     R8,#+0
//  111     switch(Gaia_Div)
??v_BIOS_6x8Num_30:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BEQ.N    ??v_BIOS_6x8Num_35
        CMP      R8,#+2
        BEQ.N    ??v_BIOS_6x8Num_36
        BCC.N    ??v_BIOS_6x8Num_37
        CMP      R8,#+4
        BEQ.N    ??v_BIOS_6x8Num_38
        BCC.N    ??v_BIOS_6x8Num_39
        CMP      R8,#+5
        BNE.N    ??v_BIOS_6x8Num_40
//  112     {
//  113         case 5:ch[12] = num_Integer/100000 + '0';
??v_BIOS_6x8Num_41:
        LDR.N    R0,??DataTable3_7  ;; 0x186a0
        SDIV     R0,R9,R0
        ADDS     R0,R0,#+48
        STRB     R0,[SP, #+28]
//  114          num_Integer = num_Integer%100000;
        LDR.N    R0,??DataTable3_7  ;; 0x186a0
        SDIV     R1,R9,R0
        MLS      R9,R0,R1,R9
//  115        // break;
//  116         case 4:ch[13] = num_Integer/10000 + '0';
??v_BIOS_6x8Num_38:
        MOVW     R0,#+10000
        SDIV     R0,R9,R0
        ADDS     R0,R0,#+48
        STRB     R0,[SP, #+29]
//  117          num_Integer = num_Integer%10000;
        MOVW     R0,#+10000
        SDIV     R1,R9,R0
        MLS      R9,R0,R1,R9
//  118        // break;
//  119         case 3:ch[14] = num_Integer/1000 + '0';
??v_BIOS_6x8Num_39:
        MOV      R0,#+1000
        SDIV     R0,R9,R0
        ADDS     R0,R0,#+48
        STRB     R0,[SP, #+30]
//  120          num_Integer = num_Integer%1000;
        MOV      R0,#+1000
        SDIV     R1,R9,R0
        MLS      R9,R0,R1,R9
//  121        // break;
//  122         case 2:ch[15] = num_Integer/100 + '0';
??v_BIOS_6x8Num_36:
        MOVS     R0,#+100
        SDIV     R0,R9,R0
        ADDS     R0,R0,#+48
        STRB     R0,[SP, #+31]
//  123          num_Integer = num_Integer%100;
        MOVS     R0,#+100
        SDIV     R1,R9,R0
        MLS      R9,R0,R1,R9
//  124        // break;
//  125         case 1:ch[16] = num_Integer/10 + '0';
??v_BIOS_6x8Num_37:
        MOVS     R0,#+10
        SDIV     R0,R9,R0
        ADDS     R0,R0,#+48
        STRB     R0,[SP, #+32]
//  126          num_Integer = num_Integer%10;
        MOVS     R0,#+10
        SDIV     R1,R9,R0
        MLS      R9,R0,R1,R9
//  127        // break;
//  128         case 0:ch[17] = num_Integer + '0';
??v_BIOS_6x8Num_35:
        ADDS     R0,R9,#+48
        STRB     R0,[SP, #+33]
//  129         break;
//  130     }
//  131     // 简化模型如下
//  132     uint8 show_new = 0;
??v_BIOS_6x8Num_40:
        MOVS     R0,#+0
//  133     if('-' == ch[0]){ch_show[0] = '-';show_new = 1;}
        LDRB     R1,[SP, #+16]
        CMP      R1,#+45
        BNE.N    ??v_BIOS_6x8Num_42
        MOVS     R0,#+45
        STRB     R0,[SP, #+4]
        MOVS     R0,#+1
//  134     uint8 cut_zero = 0xFF;
??v_BIOS_6x8Num_42:
        MOVS     R1,#+255
//  135     for(uint8 loop= 1;loop <= 10;loop++) // 遍历数组
        MOVS     R2,#+1
        B.N      ??v_BIOS_6x8Num_43
??v_BIOS_6x8Num_44:
        ADDS     R2,R2,#+1
??v_BIOS_6x8Num_43:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+11
        BGE.N    ??v_BIOS_6x8Num_45
//  136     {
//  137         if('0' != ch[loop])
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R3,SP,#+16
        LDRB     R3,[R2, R3]
        CMP      R3,#+48
        BEQ.N    ??v_BIOS_6x8Num_44
//  138         {
//  139             cut_zero = loop;
        MOVS     R1,R2
//  140             break;
//  141         }
//  142     }
//  143     switch( cut_zero ) // 
??v_BIOS_6x8Num_45:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R2,R1
        CMP      R2,#+0
        BEQ.N    ??v_BIOS_6x8Num_46
        SUBS     R2,R2,#+1
        BEQ.N    ??v_BIOS_6x8Num_47
        SUBS     R2,R2,#+1
        BEQ.N    ??v_BIOS_6x8Num_48
        SUBS     R2,R2,#+1
        CMP      R2,#+7
        BLS.N    ??v_BIOS_6x8Num_47
        SUBS     R2,R2,#+252
        BEQ.N    ??v_BIOS_6x8Num_49
        B.N      ??v_BIOS_6x8Num_50
//  144     {
//  145         case 0:v_error_number();break;
??v_BIOS_6x8Num_46:
        BL       v_error_number
        B.N      ??v_BIOS_6x8Num_50
//  146         case 2:ch[11] = '\0';// 特殊情况：有小数点
??v_BIOS_6x8Num_48:
        MOVS     R2,#+0
        STRB     R2,[SP, #+27]
//  147         case 1:
//  148         case 3:// 可以显示小数点后一位
//  149         case 4:
//  150         case 5:
//  151         case 6:
//  152         case 7:
//  153         case 8: // 至此可以显示全部小数
//  154         case 9: // 至此显示将不会完全
//  155         case 10:
//  156             for(uint8 loop = cut_zero;(loop < cut_zero+10)||(loop <= 17);loop++)
??v_BIOS_6x8Num_47:
        MOVS     R2,R1
        B.N      ??v_BIOS_6x8Num_51
//  157             {
//  158                 ch_show[show_new] = ch[loop];
??v_BIOS_6x8Num_52:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R3,SP,#+4
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R4,SP,#+16
        LDRB     R4,[R2, R4]
        STRB     R4,[R0, R3]
//  159                 show_new++;
        ADDS     R0,R0,#+1
//  160             }
        ADDS     R2,R2,#+1
??v_BIOS_6x8Num_51:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R3,R1,#+10
        CMP      R2,R3
        BLT.N    ??v_BIOS_6x8Num_52
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+18
        BLT.N    ??v_BIOS_6x8Num_52
//  161         break;
        B.N      ??v_BIOS_6x8Num_50
//  162         case 0xFF: // 无整数部分
//  163             ch_show[0 + show_new] = '0';
??v_BIOS_6x8Num_49:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R1,SP,#+4
        MOVS     R2,#+48
        STRB     R2,[R0, R1]
//  164             ch_show[1 + show_new] = '.';
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R1,SP,#+4
        ADDS     R1,R0,R1
        MOVS     R2,#+46
        STRB     R2,[R1, #+1]
//  165             // 数字显示
//  166             ch_show[2 + show_new] = ch[12];
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R1,SP,#+4
        ADDS     R1,R0,R1
        LDRB     R2,[SP, #+28]
        STRB     R2,[R1, #+2]
//  167             ch_show[3 + show_new] = ch[13];
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R1,SP,#+4
        ADDS     R1,R0,R1
        LDRB     R2,[SP, #+29]
        STRB     R2,[R1, #+3]
//  168             ch_show[4 + show_new] = ch[14];
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R1,SP,#+4
        ADDS     R1,R0,R1
        LDRB     R2,[SP, #+30]
        STRB     R2,[R1, #+4]
//  169             ch_show[5 + show_new] = ch[15];
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R1,SP,#+4
        ADDS     R1,R0,R1
        LDRB     R2,[SP, #+31]
        STRB     R2,[R1, #+5]
//  170             ch_show[6 + show_new] = ch[16];
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R1,SP,#+4
        ADDS     R1,R0,R1
        LDRB     R2,[SP, #+32]
        STRB     R2,[R1, #+6]
//  171             ch_show[7 + show_new] = ch[17];
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R1,SP,#+4
        ADDS     R0,R0,R1
        LDRB     R1,[SP, #+33]
        STRB     R1,[R0, #+7]
//  172         break;
//  173     }
//  174     for(uint8 loop = 0;loop<=10;loop++)
??v_BIOS_6x8Num_50:
        MOVS     R0,#+0
        B.N      ??v_BIOS_6x8Num_53
//  175     {
//  176         if('x' == ch_show[loop]) // 替换无效字符
??v_BIOS_6x8Num_54:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R1,SP,#+4
        LDRB     R1,[R0, R1]
        CMP      R1,#+120
        BNE.N    ??v_BIOS_6x8Num_55
//  177         {ch_show[loop] = '\0';}
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R1,SP,#+4
        MOVS     R2,#+0
        STRB     R2,[R0, R1]
//  178     }
??v_BIOS_6x8Num_55:
        ADDS     R0,R0,#+1
??v_BIOS_6x8Num_53:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+11
        BLT.N    ??v_BIOS_6x8Num_54
//  179     for(uint8 loop = 0;loop<=10;loop++)
        MOVS     R0,#+0
        B.N      ??v_BIOS_6x8Num_56
//  180     {
//  181         if('.' == ch_show[loop])
//  182         {
//  183             for(uint8 inter = 9;inter >= loop;inter--)
//  184             {
//  185                 if('.' == ch_show[inter]){ch_show[loop] = '\0';break;}
//  186                 if('0' != ch_show[inter])
??v_BIOS_6x8Num_57:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADD      R2,SP,#+4
        LDRB     R2,[R1, R2]
        CMP      R2,#+48
        BEQ.N    ??v_BIOS_6x8Num_58
//  187                 {
//  188                     ch_show[inter+1] = '\0';
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADD      R2,SP,#+4
        ADDS     R2,R1,R2
        MOVS     R3,#+0
        STRB     R3,[R2, #+1]
//  189                     if('\0' != ch_show[inter])
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADD      R2,SP,#+4
        LDRB     R2,[R1, R2]
        CMP      R2,#+0
        BEQ.N    ??v_BIOS_6x8Num_58
//  190                     {break;}
//  191                 }
??v_BIOS_6x8Num_59:
        ADDS     R0,R0,#+1
??v_BIOS_6x8Num_56:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+11
        BGE.N    ??v_BIOS_6x8Num_60
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R1,SP,#+4
        LDRB     R1,[R0, R1]
        CMP      R1,#+46
        BNE.N    ??v_BIOS_6x8Num_59
        MOVS     R1,#+9
        B.N      ??v_BIOS_6x8Num_61
??v_BIOS_6x8Num_58:
        SUBS     R1,R1,#+1
??v_BIOS_6x8Num_61:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R1,R0
        BCC.N    ??v_BIOS_6x8Num_59
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADD      R2,SP,#+4
        LDRB     R2,[R1, R2]
        CMP      R2,#+46
        BNE.N    ??v_BIOS_6x8Num_57
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R1,SP,#+4
        MOVS     R2,#+0
        STRB     R2,[R0, R1]
        B.N      ??v_BIOS_6x8Num_59
//  192             }
//  193         }
//  194     }
//  195     v_BIOS_6x8str_Ascii(X,Y,color,Backcolor,ch_show);
??v_BIOS_6x8Num_60:
        ADD      R0,SP,#+4
        STR      R0,[SP, #+0]
        MOVS     R3,R6
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        MOVS     R2,R7
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOV      R1,R10
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOV      R0,R11
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       v_BIOS_6x8str_Ascii
//  196 }
        ADD      SP,SP,#+36
        POP      {R4-R11,PC}      ;; return
//  197 
//  198 
//  199 /******************************************************************************/
//  200 // 警报

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  201 void* (v_error_axis)(void)
//  202 {
v_error_axis:
        PUSH     {R7,LR}
//  203     v_BIOS_6x8str_Ascii(0,232,Black,Blue,"error : axis set");
        LDR.N    R0,??DataTable3_9
        STR      R0,[SP, #+0]
        MOVS     R3,#+31
        MOVS     R2,#+0
        MOVS     R1,#+232
        MOVS     R0,#+0
        BL       v_BIOS_6x8str_Ascii
//  204     return 0;
        MOVS     R0,#+0
        POP      {R1,PC}          ;; return
//  205 }
//  206 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  207 void* (v_error_number)(void)
//  208 {
v_error_number:
        PUSH     {R7,LR}
//  209     v_BIOS_6x8str_Ascii(0,232,Black,Blue,"error : Big Number");
        LDR.N    R0,??DataTable3_10
        STR      R0,[SP, #+0]
        MOVS     R3,#+31
        MOVS     R2,#+0
        MOVS     R1,#+232
        MOVS     R0,#+0
        BL       v_BIOS_6x8str_Ascii
//  210     return 0;
        MOVS     R0,#+0
        POP      {R1,PC}          ;; return
//  211 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     C6x8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     `?<Constant "-0000000000.000000">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     `?<Constant "xxxxxxxxxx">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     0x3b9aca00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DC32     0x5f5e100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_5:
        DC32     0x989680

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_6:
        DC32     0xf4240

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_7:
        DC32     0x186a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_8:
        DC32     0x49742400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_9:
        DC32     `?<Constant "error : axis set">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_10:
        DC32     `?<Constant "error : Big Number">`

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "-0000000000.000000">`:
        DATA
        DC8 "-0000000000.000000"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "xxxxxxxxxx">`:
        DATA
        DC8 "xxxxxxxxxx"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "error : axis set">`:
        DATA
        DC8 "error : axis set"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "error : Big Number">`:
        DATA
        DC8 "error : Big Number"
        DC8 0

        END
// 
//    72 bytes in section .rodata
// 1 422 bytes in section .text
// 
// 1 422 bytes of CODE  memory
//    72 bytes of CONST memory
//
//Errors: none
//Warnings: none
