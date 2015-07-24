///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     16/Aug/2014  22:11:18 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\pc\Desktop\继续做的事情\四旋翼飞行器 -         /
//                    TM4123G\代码\遥控器\Library\MK60F15.c                   /
//    Command line =  "C:\Users\pc\Desktop\继续做的事情\四旋翼飞行器 -        /
//                    TM4123G\代码\遥控器\Library\MK60F15.c" -D IAR -D        /
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
//                    TM4123G\代码\遥控器\FLASH_1M\List\MK60F15.s             /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        PUBLIC GPIOx
        PUBLIC PORTx
        PUBLIC SPIx

// C:\Users\pc\Desktop\继续做的事情\四旋翼飞行器 - TM4123G\代码\遥控器\Library\MK60F15.c
//    1 #include "MK60F15.h"
//    2 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//    3 volatile struct SPI_MemMap * SPIx[3] = SPI_BASE_PTRS; //
SPIx:
        DATA
        DC32 4002C000H, 4002D000H, 400AC000H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//    4 volatile struct GPIO_MemMap * GPIOx[6] = GPIO_BASE_PTRS;
GPIOx:
        DATA
        DC32 400FF000H, 400FF040H, 400FF080H, 400FF0C0H, 400FF100H, 400FF140H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//    5 volatile struct PORT_MemMap * PORTx[6] = PORT_BASE_PTRS;
PORTx:
        DATA
        DC32 40049000H, 4004A000H, 4004B000H, 4004C000H, 4004D000H, 4004E000H

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
// 60 bytes in section .data
// 
// 60 bytes of DATA memory
//
//Errors: none
//Warnings: none
