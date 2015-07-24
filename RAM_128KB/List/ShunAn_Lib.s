///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     27/Aug/2014  16:25:29 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\创作室\飞思卡尔智能小车\调试板\遥控器\Library\Blesse /
//                    dAlien\ShunAn_Lib.c                                     /
//    Command line =  D:\创作室\飞思卡尔智能小车\调试板\遥控器\Library\Blesse /
//                    dAlien\ShunAn_Lib.c -D IAR -D TWR_K60F120M -lCN         /
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
//                    \ShunAn_Lib.s                                           /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_dadd
        EXTERN __aeabi_fadd

        PUBLIC RoundToInt32
        PUBLIC RoundToInt64
        PUBLIC vDelayMs

// D:\创作室\飞思卡尔智能小车\调试板\遥控器\Library\BlessedAlien\ShunAn_Lib.c
//    1 // 单精度转换为整形
//    2 #include "arm_cm4.h"

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    3 signed long int RoundToInt32 (float dval)
//    4 {
RoundToInt32:
        PUSH     {R4,LR}
//    5     signed long int val = 0;
        MOVS     R4,#+0
//    6     static float magic = 12582912.0;
//    7     dval += magic;
        LDR.N    R1,??DataTable1
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
//    8     val = *(signed long int*)&dval;
        MOVS     R4,R0
//    9     return val;
        MOVS     R0,R4
        POP      {R4,PC}          ;; return
//   10 }

        SECTION `.data`:DATA:REORDER:NOROOT(2)
??magic:
        DATA
        DC32 4B400000H
//   11 // 双精度转换为整形

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   12 signed long int RoundToInt64 (double dval)
//   13 {
RoundToInt64:
        PUSH     {R0,R1,R3-R5,LR}
//   14     signed long int val = 0;
        MOVS     R4,#+0
//   15     static double magic = 6755399441055744.0;
//   16     dval += magic;
        LDRD     R2,R3,[SP, #+0]
        LDR.N    R5,??DataTable1_1
        LDRD     R0,R1,[R5, #+0]
        BL       __aeabi_dadd
        STRD     R0,R1,[SP, #+0]
//   17     val = *(signed long int*)&dval;
        LDR      R0,[SP, #+0]
        MOVS     R4,R0
//   18     return val;
        MOVS     R0,R4
        POP      {R1-R5,PC}       ;; return
//   19 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     ??magic

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     ??magic_1

        SECTION `.data`:DATA:REORDER:NOROOT(3)
??magic_1:
        DATA
        DC32 0H, 43380000H
//   20 // 延迟函数

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   21 void vDelayMs( unsigned int MuchMs )
//   22 {
//   23   	unsigned int pool_Much = 0;  
vDelayMs:
        MOVS     R1,#+0
//   24 	unsigned int pool_ms = 0;
        MOVS     R2,#+0
//   25 	for(pool_Much=0;pool_Much<MuchMs;pool_Much++)
        MOVS     R3,#+0
        MOVS     R1,R3
        B.N      ??vDelayMs_0
//   26 	{
//   27           for(pool_ms=0;pool_ms<19100;pool_ms++);//约为1ms延迟
??vDelayMs_1:
        ADDS     R2,R2,#+1
??vDelayMs_2:
        MOVW     R3,#+19100
        CMP      R2,R3
        BCC.N    ??vDelayMs_1
        ADDS     R1,R1,#+1
??vDelayMs_0:
        CMP      R1,R0
        BCS.N    ??vDelayMs_3
        MOVS     R2,#+0
        B.N      ??vDelayMs_2
//   28 	}
//   29 }
??vDelayMs_3:
        BX       LR               ;; return

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
// 12 bytes in section .data
// 88 bytes in section .text
// 
// 88 bytes of CODE memory
// 12 bytes of DATA memory
//
//Errors: none
//Warnings: none
