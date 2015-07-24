///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     28/Aug/2014  14:16:08 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\创作室\飞思卡尔智能小车\调试板\遥控器\ShunAn_Panel\m /
//                    emory.c                                                 /
//    Command line =  D:\创作室\飞思卡尔智能小车\调试板\遥控器\ShunAn_Panel\m /
//                    emory.c -D IAR -D TWR_K60F120M -lCN                     /
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
//                    \memory.s                                               /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1



        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// D:\创作室\飞思卡尔智能小车\调试板\遥控器\ShunAn_Panel\memory.c
//    1 #include "arm_cm4.h"
//    2 #include "MK60F15.h"
//    3 #include "ShunAn_Lib.h"
//    4 #include "start_ShunAn.h"
//    5 #include "BlessedAlien.h"
//    6 
//    7 #include "memory.h"
//    8 
//    9 // 需要管理的内存：GUI部分 // 必须提前预取
// 
//
// 
//
//
//Errors: none
//Warnings: none
