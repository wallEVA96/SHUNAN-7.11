///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     05/Oct/2014  21:16:20 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\创作室\飞思卡尔智能小车\智能固件\MK60FX512VLQ15\Shun /
//                    An_Panel\main.c                                         /
//    Command line =  D:\创作室\飞思卡尔智能小车\智能固件\MK60FX512VLQ15\Shun /
//                    An_Panel\main.c -D IAR -D TWR_K60F120M -lCN             /
//                    D:\创作室\飞思卡尔智能小车\智能固件\MK60FX512VLQ15\RAM_ /
//                    128KB\List\ -lB D:\创作室\飞思卡尔智能小车\智能固件\MK6 /
//                    0FX512VLQ15\RAM_128KB\List\ -o                          /
//                    D:\创作室\飞思卡尔智能小车\智能固件\MK60FX512VLQ15\RAM_ /
//                    128KB\Obj\ --no_cse --no_unroll --no_inline             /
//                    --no_code_motion --no_tbaa --no_clustering              /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=None --dlib_config             /
//                    "C:\Program Files (x86)\IAR Systems\Embedded Workbench  /
//                    6.5\arm\INC\c\DLib_Config_Normal.h" -I                  /
//                    D:\创作室\飞思卡尔智能小车\智能固件\MK60FX512VLQ15\ -I  /
//                    D:\创作室\飞思卡尔智能小车\智能固件\MK60FX512VLQ15\Libr /
//                    ary\ -I D:\创作室\飞思卡尔智能小车\智能固件\MK60FX512VL /
//                    Q15\Library\BlessedAlien\ -I                            /
//                    D:\创作室\飞思卡尔智能小车\智能固件\MK60FX512VLQ15\Shun /
//                    An_Panel\ -Ol --use_c++_inline                          /
//    List file    =  D:\创作室\飞思卡尔智能小车\智能固件\MK60FX512VLQ15\RAM_ /
//                    128KB\List\main.s                                       /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN g_Buttons
        EXTERN g_SysTem

        PUBLIC PIT0_IRQHandler
        PUBLIC char_show
        PUBLIC main
        PUBLIC port_num

// D:\创作室\飞思卡尔智能小车\智能固件\MK60FX512VLQ15\ShunAn_Panel\main.c
//    1 /*
//    2 *文件名：              main.c
//    3 *说明：                顺暗遥控板main文件
//    4 *所用芯片型号：        MK60FX512VQL15
//    5 *创建时间：            2014/8/27
//    6 *作者：                中南大学朱葛峻
//    7 */
//    8 #include "60FX_RegAll.h"
//    9 
//   10 #include "arm_cm4.h"
//   11 #include "start_ShunAn.h"
//   12 #include "ExInterface.h"
//   13 #include "TFT.h"
//   14 #include "BIOS.h"
//   15 #include "GUI.h"
//   16 #include "ControlPads.h"
//   17 #include "Bluetooth.h"
//   18 
//   19 //_s_GUI_Cmd b;
//   20 void PIT0_IRQHandler(); // 声明中断向量函数
//   21 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   22 uint8 char_show;
char_show:
        DS8 1
//   23 //char char_allArray[100];

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   24 uint8 port_num = 0;
port_num:
        DS8 1
//   25 
//   26 
//   27 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   28 void main()
//   29 {
//   30     EnableInterrupts;//使能总中断
main:
        CPSIE i
//   31     /*
//   32     __v_Uart_Init_(115200); // 初始化串口 UART3 - 蓝牙接口
//   33     v_Init_ExInterface(); // 初始化全部外部接口
//   34     pit_init_ms(PIT0,20);//设定PIT中断周期
//   35     set_vector_handler(PIT0_VECTORn,PIT0_IRQHandler);//设定PIT中断向量地址
//   36     g_SysTem.Hardware_error |= LCD_Init(); // 初始化TFT
//   37     LCD_Clear(Black);
//   38     v_OriginalSin();
//   39     g_RecBuffer.BufferSize = 0;
//   40     g_RecBuffer.MaySign_BufferSize = 0;
//   41     enable_irq(PIT0_IRQn);//使能PIT中断
//   42     while(1)
//   43     {
//   44         msg_operation(&g_Message);
//   45     }
//   46     */
//   47 
//   48     // u8_getPortNum("PB31",&port_num);
//   49 }
        BX       LR               ;; return
//   50 
//   51 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   52 void PIT0_IRQHandler() // 20ms中断
//   53 {
//   54     PIT_Flag_Clear(PIT0); // 清中断
PIT0_IRQHandler:
        LDR.N    R0,??DataTable0  ;; 0x4003710c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable0  ;; 0x4003710c
        STR      R0,[R1, #+0]
//   55     g_SysTem.TotalTime = g_SysTem.TotalTime + 1;
        LDR.N    R0,??DataTable0_1
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable0_1
        STR      R0,[R1, #+0]
//   56     //if (!(UART_S1_REG(UART3_BASE_PTR) & UART_S1_RDRF_MASK))
//   57     //{char_show = 1;}
//   58     
//   59     
//   60            
//   61     g_Buttons.BottonTotaltime = g_SysTem.TotalTime;
        LDR.N    R0,??DataTable0_2
        LDR.N    R1,??DataTable0_1
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
//   62 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0:
        DC32     0x4003710c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_1:
        DC32     g_SysTem

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_2:
        DC32     g_Buttons

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
//  2 bytes in section .bss
// 48 bytes in section .text
// 
// 48 bytes of CODE memory
//  2 bytes of DATA memory
//
//Errors: none
//Warnings: none
