///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     05/Oct/2014  21:18:06 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\创作室\飞思卡尔智能小车\智能固件\MK60FX512VLQ15\Shun /
//                    An_Panel\60FX_RegAll.c                                  /
//    Command line =  D:\创作室\飞思卡尔智能小车\智能固件\MK60FX512VLQ15\Shun /
//                    An_Panel\60FX_RegAll.c -D IAR -D TWR_K60F120M -lCN      /
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
//                    128KB\List\60FX_RegAll.s                                /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        PUBLIC SAcreate
        PUBLIC u8_getPortNum
        PUBLIC v_simport_Init

// D:\创作室\飞思卡尔智能小车\智能固件\MK60FX512VLQ15\ShunAn_Panel\60FX_RegAll.c
//    1 #include "60FX_RegAll.h"
//    2 #include "MK60F15.h" // 需要重构
//    3 //#define uint8           (unsigned char)
//    4 // 需求如下
//    5 /******************************************************************************/
//    6 /******************************************************************************/
//    7 /******************************************************************************/
//    8 /* 整体定义
//    9 -> 以每个引脚为对象 -> 类
//   10 ******************************************
//   11 // 含有引脚的对象 PORT
//   12 struct 引脚 and PIT
//   13 引脚名
//   14 开启功能 GPIO / FTM / ADC / IIC / UART / SPI
//   15         
//   16 ******************************************
//   17 // 错误信息对象
//   18 GetLastError();
//   19 ******************************************
//   20 */
//   21 /******************************************************************************/
//   22 /*
//   23 函数原型
//   24 Init -> Wait -> -> Destroy
//   25 */
//   26 /******************************************************************************/
//   27 // SA
//   28 // _n _f _v _xa
//   29 /******************************************************************************/
//   30 /* Ver 1.0
//   31 已完成：
//   32 ********************************************************************
//   33 更新内容：实现任意口的GPIO功能 实现任意口的FTM功能
//   34             实现不给定实际功能、按照set get自行更改
//   35 ********************************************************************
//   36 中断函数的定义
//   37 PORT Create 引脚 ; 开启功能 ;
//   38 Get     GPIO            读取数值
//   39         FTM             脉冲捕捉 / 正交脉冲捕捉
//   40         ADC             获取AD数值
//   41 Set     GPIO            置高置低 
//   42         FTM             EPWM脉宽
//   43         ADC             无
//   44 */
//   45 
//   46 /******************************************************************************/
//   47 /******************************************************************************/
//   48 /******************************************************************************/
//   49 // 基础底层声明更改
//   50 /******************************************************************************/
//   51 #define uint8           unsigned char
//   52 #define uint16          unsigned int
//   53 /******************************************************************************/
//   54 /******************************************************************************/
//   55 // 基本函数声明如下：
//   56 unsigned char u8_getPortNum(char * InPutStr ,unsigned int *);
//   57 /******************************************************************************/
//   58 /******************************************************************************/
//   59 // SAcreate
//   60 /*
//   61 **
//   62 **
//   63 **/
//   64 #define RE_ERROR                {return 1;}

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   65 BOOL SAcreate(CHAR_PTR port_name ,CHAR_PTR func_name)
//   66 {
SAcreate:
        PUSH     {R7,LR}
//   67     uint16 get_portpin_handle = 0;
        MOVS     R1,#+0
        STR      R1,[SP, #+0]
//   68     if(0 == u8_getPortNum(port_name,&get_portpin_handle))RE_ERROR;
        ADD      R1,SP,#+0
        BL       u8_getPortNum
        CMP      R0,#+0
        BNE.N    ??SAcreate_0
        MOVS     R0,#+1
        B.N      ??SAcreate_1
//   69     return 0;
??SAcreate_0:
        MOVS     R0,#+0
??SAcreate_1:
        POP      {R1,PC}          ;; return
//   70 }
//   71 
//   72 
//   73 /******************************************************************************/
//   74 // u8_getPortNum
//   75 /*
//   76 **
//   77 **
//   78 **/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   79 BOOL u8_getPortNum(CHAR_PTR InPutStr ,uint16 * NumRe)
//   80 {
u8_getPortNum:
        PUSH     {R4}
//   81     // 检测标志位
//   82     if('P' != InPutStr[0])
        LDRB     R2,[R0, #+0]
        CMP      R2,#+80
        BEQ.N    ??u8_getPortNum_0
//   83     {
//   84         return 1; // !0 错误 // 错误信息：输入非法参数
        MOVS     R0,#+1
        B.N      ??u8_getPortNum_1
//   85     }
//   86     uint8 str_Length = sizeof(InPutStr)/sizeof(InPutStr[0]);
??u8_getPortNum_0:
        MOVS     R2,#+4
//   87     if((3 == str_Length)||(4 == str_Length))
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+3
        BEQ.N    ??u8_getPortNum_2
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+4
        BNE.N    ??u8_getPortNum_3
//   88     {
//   89         // 以下公式基于ANSI
//   90         uint8 pin_num = 0;
??u8_getPortNum_2:
        MOVS     R3,#+0
//   91         if(3 == str_Length)
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+3
        BNE.N    ??u8_getPortNum_4
//   92         {
//   93             pin_num = (InPutStr[2] - '0');
        LDRB     R3,[R0, #+2]
        SUBS     R3,R3,#+48
//   94         }
//   95         if(4 == str_Length)
??u8_getPortNum_4:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+4
        BNE.N    ??u8_getPortNum_5
//   96         {
//   97             pin_num = (InPutStr[2] - '0')*10 + (InPutStr[3] - '0');
        LDRB     R2,[R0, #+2]
        MOVS     R3,#+10
        LDRB     R4,[R0, #+3]
        MLA      R2,R3,R2,R4
        SUBS     R3,R2,#+16
//   98         }
//   99         if(pin_num >= 32)
??u8_getPortNum_5:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+32
        BLT.N    ??u8_getPortNum_6
//  100         {
//  101             return 1; // !0 错误 // 错误信息：输入非法参数
        MOVS     R0,#+1
        B.N      ??u8_getPortNum_1
//  102         }
//  103         (*NumRe) = (InPutStr[1] - 'A')*(32) + pin_num;
??u8_getPortNum_6:
        LDRB     R0,[R0, #+1]
        SUBS     R0,R0,#+65
        LSLS     R0,R0,#+5
        UXTAB    R0,R0,R3
        STR      R0,[R1, #+0]
//  104         return 0;
        MOVS     R0,#+0
        B.N      ??u8_getPortNum_1
//  105     }
//  106     else
//  107     {
//  108         return 1; // !0 错误 // 错误信息：输入参数不完全
??u8_getPortNum_3:
        MOVS     R0,#+1
??u8_getPortNum_1:
        POP      {R4}
        BX       LR               ;; return
//  109     }
//  110 }
//  111 
//  112 /******************************************************************************/
//  113 // v_simport_Init
//  114 /*
//  115 **
//  116 **
//  117 **/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  118 void v_simport_Init(uint16 InNum)
//  119 {
//  120     // 初始化SIM
//  121     switch(InNum / 32)
v_simport_Init:
        LSRS     R0,R0,#+5
        CMP      R0,#+0
        BEQ.N    ??v_simport_Init_0
        CMP      R0,#+2
        BEQ.N    ??v_simport_Init_1
        BCC.N    ??v_simport_Init_2
        CMP      R0,#+4
        BEQ.N    ??v_simport_Init_3
        BCC.N    ??v_simport_Init_4
        B.N      ??v_simport_Init_5
//  122     {
//  123     case 0: SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
??v_simport_Init_0:
        LDR.N    R0,??DataTable0  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x200
        LDR.N    R1,??DataTable0  ;; 0x40048038
        STR      R0,[R1, #+0]
//  124     break;
        B.N      ??v_simport_Init_5
//  125     case 1: SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
??v_simport_Init_2:
        LDR.N    R0,??DataTable0  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x400
        LDR.N    R1,??DataTable0  ;; 0x40048038
        STR      R0,[R1, #+0]
//  126     break;
        B.N      ??v_simport_Init_5
//  127     case 2: SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK;
??v_simport_Init_1:
        LDR.N    R0,??DataTable0  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x800
        LDR.N    R1,??DataTable0  ;; 0x40048038
        STR      R0,[R1, #+0]
//  128     break;
        B.N      ??v_simport_Init_5
//  129     case 3: SIM_SCGC5 |= SIM_SCGC5_PORTD_MASK;
??v_simport_Init_4:
        LDR.N    R0,??DataTable0  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000
        LDR.N    R1,??DataTable0  ;; 0x40048038
        STR      R0,[R1, #+0]
//  130     break;
        B.N      ??v_simport_Init_5
//  131     case 4: SIM_SCGC5 |= SIM_SCGC5_PORTE_MASK;
??v_simport_Init_3:
        LDR.N    R0,??DataTable0  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000
        LDR.N    R1,??DataTable0  ;; 0x40048038
        STR      R0,[R1, #+0]
//  132     break;
//  133     }
//  134 }
??v_simport_Init_5:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0:
        DC32     0x40048038

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
// 208 bytes in section .text
// 
// 208 bytes of CODE memory
//
//Errors: none
//Warnings: none
