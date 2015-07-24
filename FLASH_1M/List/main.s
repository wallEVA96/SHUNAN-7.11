///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     16/Aug/2014  22:11:18 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\pc\Desktop\继续做的事情\四旋翼飞行器 -         /
//                    TM4123G\代码\遥控器\ShunAn2\main.c                      /
//    Command line =  "C:\Users\pc\Desktop\继续做的事情\四旋翼飞行器 -        /
//                    TM4123G\代码\遥控器\ShunAn2\main.c" -D IAR -D ShunAn2   /
//                    -lCN "C:\Users\pc\Desktop\继续做的事情\四旋翼飞行器 -   /
//                    TM4123G\代码\遥控器\FLASH_1M\List\" -lB                 /
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
//                    TM4123G\代码\遥控器\FLASH_1M\List\main.s                /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN InitButton
        EXTERN __v_Uart_Init_
        EXTERN bus_clk_khz
        EXTERN enable_irq
        EXTERN g_Buttons
        EXTERN g_Control
        EXTERN pit_init
        EXTERN set_vector_handler
        EXTERN u8_tx2air
        EXTERN v_Button_set

        PUBLIC PIT0_IRQHandler
        PUBLIC con_counter
        PUBLIC main

// C:\Users\pc\Desktop\继续做的事情\四旋翼飞行器 - TM4123G\代码\遥控器\ShunAn2\main.c
//    1 /*
//    2 *文件名：              main.c
//    3 *说明：                顺暗2号main文件
//    4 *所用芯片型号：        MK60FX512VQL15
//    5 *创建时间：            2014/5/20
//    6 *作者：                中南大学弓箭
//    7 */
//    8 #include "GR_OLEDx11_12.h"
//    9 #include "GR_Buttonx11_12.h"
//   10 #include "GR_CCDx11_12.h"
//   11 //#include "GodRecognitionx11_12.h"
//   12 //#include "GR_Serverx11_12.h"
//   13 //#include "GR_Motorx11_12.h"
//   14 //#include "GR_LPTMRx11_12.h"
//   15 //#include "GR_Buzzerx19.h"
//   16 //#include "GR_Gyroscope.h"
//   17 //#include "GR_Infraredx11_12.h"
//   18 #include "GR_Bluetoothx11_12.h"
//   19 #include "GR_ControlPads.h"
//   20 //#include "thermom_TN901.h"
//   21 
//   22 void PIT0_IRQHandler();
//   23 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   24 void main()
//   25 {
main:
        PUSH     {R7,LR}
//   26     /* 变量初始化 */
//   27     g_Buttons.BottonTotaltime = 0;
        LDR.N    R0,??DataTable1
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   28     g_Control.TotalTime = 0;
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   29     /* 初始化完毕 */
//   30     __v_Uart_Init_(115200);
        MOVS     R0,#+115200
        BL       __v_Uart_Init_
//   31     InitButton();// 初始化按键
        BL       InitButton
//   32     
//   33     pit_init_ms(PIT0,1);//设定PIT中断周期 1ms
        LDR.N    R0,??DataTable1_2
        LDR      R1,[R0, #+0]
        MOVS     R0,#+0
        BL       pit_init
//   34     set_vector_handler(PIT0_VECTORn,PIT0_IRQHandler);//设定PIT中断向量地址
        ADR.W    R1,PIT0_IRQHandler
        MOVS     R0,#+84
        BL       set_vector_handler
//   35     enable_irq(PIT0_IRQn);//使能PIT中断// 开启周期中断进行曝光
        MOVS     R0,#+68
        BL       enable_irq
//   36 
//   37     while(1)
//   38     {
//   39         v_Button_set();
??main_0:
        BL       v_Button_set
//   40         u8_tx2air();
        BL       u8_tx2air
        B.N      ??main_0
//   41     }
//   42     
//   43 }

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   44 uint32 con_counter = 0;
con_counter:
        DS8 4

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   45 void PIT0_IRQHandler() // 1ms中断
//   46 {
//   47     PIT_Flag_Clear(PIT0); // 清中断
PIT0_IRQHandler:
        LDR.N    R0,??DataTable1_3  ;; 0x4003710c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable1_3  ;; 0x4003710c
        STR      R0,[R1, #+0]
//   48     g_Control.TotalTime = g_Control.TotalTime + 1;
        LDR.N    R0,??DataTable1_1
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable1_1
        STR      R0,[R1, #+0]
//   49     
//   50     
//   51     
//   52     g_Buttons.BottonTotaltime = g_Buttons.BottonTotaltime + 1;
        LDR.N    R0,??DataTable1
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable1
        STR      R0,[R1, #+0]
//   53 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     g_Buttons

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     g_Control

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     bus_clk_khz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     0x4003710c

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
//   4 bytes in section .bss
// 112 bytes in section .text
// 
// 112 bytes of CODE memory
//   4 bytes of DATA memory
//
//Errors: none
//Warnings: none
