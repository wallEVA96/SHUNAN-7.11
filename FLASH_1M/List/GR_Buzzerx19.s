///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     16/Aug/2014  22:11:11 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\pc\Desktop\继续做的事情\四旋翼飞行器 -         /
//                    TM4123G\代码\遥控器\ShunAn2\GR_Buzzerx19.c              /
//    Command line =  "C:\Users\pc\Desktop\继续做的事情\四旋翼飞行器 -        /
//                    TM4123G\代码\遥控器\ShunAn2\GR_Buzzerx19.c" -D IAR -D   /
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
//                    TM4123G\代码\遥控器\FLASH_1M\List\GR_Buzzerx19.s        /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        PUBLIC GR_Buzzer
        PUBLIC GR_BuzzerInit

// C:\Users\pc\Desktop\继续做的事情\四旋翼飞行器 - TM4123G\代码\遥控器\ShunAn2\GR_Buzzerx19.c
//    1 #include "MK60F15.h"
//    2 #include "GR_Buzzerx19.h"
//    3 
//    4 //蜂鸣器初始化

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    5 void GR_BuzzerInit()
//    6 {
//    7   SIM_SCGC3 |= SIM_SCGC3_FTM3_MASK;//使能FTM3时钟
GR_BuzzerInit:
        LDR.N    R0,??DataTable1  ;; 0x40048030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000000
        LDR.N    R1,??DataTable1  ;; 0x40048030
        STR      R0,[R1, #+0]
//    8   SIM_SCGC5 |= 0x00002000u;//使能PORTE时钟 
        LDR.N    R0,??DataTable1_1  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000
        LDR.N    R1,??DataTable1_1  ;; 0x40048038
        STR      R0,[R1, #+0]
//    9   PORTE_PCR10 = 0x00000600u;//引脚复用选择ALT6(FTM)
        LDR.N    R0,??DataTable1_2  ;; 0x4004d028
        MOV      R1,#+1536
        STR      R1,[R0, #+0]
//   10   
//   11   FTM3_C5SC &= ~FTM_CnSC_ELSA_MASK;                  // MSnB:MSnA = 1x       边沿对齐PWM
        LDR.N    R0,??DataTable1_3  ;; 0x400b9034
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x4
        LDR.N    R1,??DataTable1_3  ;; 0x400b9034
        STR      R0,[R1, #+0]
//   12   FTM3_C5SC = FTM_CnSC_MSB_MASK | FTM_CnSC_ELSB_MASK;// ELSnB:ELSnA = 10     先高后低
        LDR.N    R0,??DataTable1_3  ;; 0x400b9034
        MOVS     R1,#+40
        STR      R1,[R0, #+0]
//   13                                                      // ELSnB:ELSnA = 11     先低后高
//   14   FTM3_CNTIN = 0;//脉冲宽度：(CnV - CNTIN)
        LDR.N    R0,??DataTable1_4  ;; 0x400b904c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   15   FTM3_C5V = 3750;//脉冲宽度：(CnV - CNTIN)
        LDR.N    R0,??DataTable1_5  ;; 0x400b9038
        MOVW     R1,#+3750
        STR      R1,[R0, #+0]
//   16   FTM3_CNT = 0;//计数器。只有低16位可用（写任何值到此寄存器，都会加载 CNTIN 的值）
        LDR.N    R0,??DataTable1_6  ;; 0x400b9004
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   17   //3750为满占空比
//   18 }
        BX       LR               ;; return
//   19 
//   20 //蜂鸣器PWM输出

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   21 void GR_Buzzer(unsigned char direction)
//   22 {
//   23   if(direction == 1) 
GR_Buzzer:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??GR_Buzzer_0
//   24   {
//   25     FTM3_C5V = 0;
        LDR.N    R0,??DataTable1_5  ;; 0x400b9038
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        B.N      ??GR_Buzzer_1
//   26   }
//   27   else
//   28   {
//   29     FTM3_C5V = 3750;
??GR_Buzzer_0:
        LDR.N    R0,??DataTable1_5  ;; 0x400b9038
        MOVW     R1,#+3750
        STR      R1,[R0, #+0]
//   30   }
//   31 }
??GR_Buzzer_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     0x40048030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     0x4004d028

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     0x400b9034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DC32     0x400b904c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_5:
        DC32     0x400b9038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_6:
        DC32     0x400b9004

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 
// 124 bytes in section .text
// 
// 124 bytes of CODE memory
//
//Errors: none
//Warnings: none
