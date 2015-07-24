///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     27/Sep/2014  14:54:43 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\创作室\飞思卡尔智能小车\调试板\遥控器\ShunAn_Panel\B /
//                    luetooth.c                                              /
//    Command line =  D:\创作室\飞思卡尔智能小车\调试板\遥控器\ShunAn_Panel\B /
//                    luetooth.c -D IAR -D TWR_K60F120M -lCN                  /
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
//                    \Bluetooth.s                                            /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN bus_clk_khz

        PUBLIC Data_UART_rec
        PUBLIC __v_Uart_Init_
        PUBLIC __v_Uart_TxInt16_
        PUBLIC __v_Uart_TxInt32_
        PUBLIC __v_Uart_TxOne_
        PUBLIC __v_uart_getOnce
        PUBLIC __v_uart_getchar
        PUBLIC g_RecBuffer
        PUBLIC u8_uart_getAll
        PUBLIC v_BlueTooth2Data
        PUBLIC v_Tooth_GyroAccel

// D:\创作室\飞思卡尔智能小车\调试板\遥控器\ShunAn_Panel\Bluetooth.c
//    1 /**
//    2 /. -----------------------//k60底层库//-------------------------
//    3 
//    4 /. 测试硬件平台：K60
//    5  . 版权所有：朱葛峻 
//    6  . 制作者：朱葛峻
//    7  . 文件名：alienUART.c
//    8  . 用途：
//    9  . 最后修改日期: 20140117
//   10 */
//   11 #include "MK60F15.h"
//   12 #include "ShunAn_Lib.h"
//   13 #include "start_ShunAn.h"
//   14 #include "BlessedAlien.h"
//   15 
//   16 #include "Bluetooth.h"
//   17 /******************************************************************************/
//   18 /******************************************************************************/
//   19 /******************************************************************************/
//   20 /******************************************************************************/
//   21 /******************************************************************************/

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   22 BlueTooth_Buffer g_RecBuffer;
g_RecBuffer:
        DS8 2028

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   23 void*(*v_BlueTooth2Data)(BlueTooth_Buffer *);
v_BlueTooth2Data:
        DS8 4
//   24 /******************************************************************************/
//   25 /******************************************************************************/
//   26 /******************************************************************************/
//   27 /******************************************************************************/
//   28 /******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   29 void __v_Uart_Init_(uint32 BaudRate)
//   30 {   
__v_Uart_Init_:
        PUSH     {R4,R5}
//   31     // 常参量
//   32     uint32 tempReg  = 0;
        MOVS     R1,#+0
//   33     uint32 BdRtBits = 0;
        MOVS     R2,#+0
//   34     uint32 BRFAdjst = 0;
        MOVS     R3,#+0
//   35     // 设置时钟
//   36     SIM_SCGC4 |= SIM_SCGC4_UART3_MASK;
        LDR.W    R4,??DataTable5  ;; 0x40048034
        LDR      R4,[R4, #+0]
        ORRS     R4,R4,#0x2000
        LDR.W    R5,??DataTable5  ;; 0x40048034
        STR      R4,[R5, #+0]
//   37     SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK|SIM_SCGC5_PORTE_MASK|SIM_SCGC5_PORTB_MASK ;//使能PORTE时钟
        LDR.N    R4,??DataTable5_1  ;; 0x40048038
        LDR      R4,[R4, #+0]
        ORRS     R4,R4,#0x2C00
        LDR.N    R5,??DataTable5_1  ;; 0x40048038
        STR      R4,[R5, #+0]
//   38     // 设置引脚参数
//   39     PORTC_PCR16 |= 0x00000300u;//引脚复用选择UART3_RX
        LDR.N    R4,??DataTable5_2  ;; 0x4004b040
        LDR      R4,[R4, #+0]
        ORRS     R4,R4,#0x300
        LDR.N    R5,??DataTable5_2  ;; 0x4004b040
        STR      R4,[R5, #+0]
//   40     PORTC_PCR17 |= 0x00000300u;//引脚复用选择UART3_RX
        LDR.N    R4,??DataTable5_3  ;; 0x4004b044
        LDR      R4,[R4, #+0]
        ORRS     R4,R4,#0x300
        LDR.N    R5,??DataTable5_3  ;; 0x4004b044
        STR      R4,[R5, #+0]
//   41     PORTE_PCR4 |= 0x00000000u;//引脚复用选择UART3_RX
        LDR.N    R4,??DataTable5_4  ;; 0x4004d010
        LDR.N    R5,??DataTable5_4  ;; 0x4004d010
        LDR      R5,[R5, #+0]
        STR      R5,[R4, #+0]
//   42     PORTE_PCR5 |= 0x00000000u;//引脚复用选择UART3_RX
        LDR.N    R4,??DataTable5_5  ;; 0x4004d014
        LDR.N    R5,??DataTable5_5  ;; 0x4004d014
        LDR      R5,[R5, #+0]
        STR      R5,[R4, #+0]
//   43     PORTB_PCR10 |= 0x00000000u;//引脚复用选择UART3_RX
        LDR.N    R4,??DataTable5_6  ;; 0x4004a028
        LDR.N    R5,??DataTable5_6  ;; 0x4004a028
        LDR      R5,[R5, #+0]
        STR      R5,[R4, #+0]
//   44     PORTB_PCR11 |= 0x00000000u;//引脚复用选择UART3_RX
        LDR.N    R4,??DataTable5_7  ;; 0x4004a02c
        LDR.N    R5,??DataTable5_7  ;; 0x4004a02c
        LDR      R5,[R5, #+0]
        STR      R5,[R4, #+0]
//   45     // 关闭接收及发送器，等待触发时波特率生成
//   46     (UART3_BASE_PTR)->C2 &= ~( UART_C2_TE_MASK | UART_C2_RE_MASK );
        LDR.N    R4,??DataTable5_8  ;; 0x4006d003
        LDRB     R4,[R4, #+0]
        ANDS     R4,R4,#0xF3
        LDR.N    R5,??DataTable5_8  ;; 0x4006d003
        STRB     R4,[R5, #+0]
//   47     // C1设置默认
//   48     (UART3_BASE_PTR)->C1  = 0;
        LDR.N    R4,??DataTable5_9  ;; 0x4006d002
        MOVS     R5,#+0
        STRB     R5,[R4, #+0]
//   49     // 设置波特率
//   50     BdRtBits = (uint16)((bus_clk_khz * 1000)/(BaudRate << 4));
        LDR.N    R4,??DataTable5_10
        LDR      R4,[R4, #+0]
        MOV      R5,#+1000
        MULS     R4,R5,R4
        LSLS     R5,R0,#+4
        UDIV     R4,R4,R5
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        MOVS     R2,R4
//   51     tempReg = UART_BDH_REG(UART3_BASE_PTR) & ~(UART_BDH_SBR(0x1F));
        LDR.N    R4,??DataTable5_11  ;; 0x4006d000
        LDRB     R4,[R4, #+0]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSRS     R4,R4,#+5
        LSLS     R4,R4,#+5
        MOVS     R1,R4
//   52     (UART3_BASE_PTR)->BDH = tempReg |  UART_BDH_SBR(((BdRtBits & 0x1F00) >> 8));
        LSRS     R4,R2,#+8
        ANDS     R4,R4,#0x1F
        ORRS     R1,R4,R1
        LDR.N    R4,??DataTable5_11  ;; 0x4006d000
        STRB     R1,[R4, #+0]
//   53     (UART3_BASE_PTR)->BDL = (uint8)(BdRtBits & UART_BDL_SBR_MASK);
        LDR.N    R1,??DataTable5_12  ;; 0x4006d001
        STRB     R2,[R1, #+0]
//   54     BRFAdjst = ((((bus_clk_khz*1000)<<5)/(BaudRate <<4)) - (BdRtBits <<5));
        LDR.N    R1,??DataTable5_10
        LDR      R1,[R1, #+0]
        MOV      R4,#+1000
        MULS     R1,R4,R1
        LSLS     R1,R1,#+5
        LSLS     R0,R0,#+4
        UDIV     R0,R1,R0
        SUBS     R0,R0,R2, LSL #+5
        MOVS     R3,R0
//   55     tempReg = UART_C4_REG(UART3_BASE_PTR) & ~(UART_C4_BRFA(0x1F));
        LDR.N    R0,??DataTable5_13  ;; 0x4006d00a
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R1,R0,#+5
        LSLS     R1,R1,#+5
//   56     (UART3_BASE_PTR)->C4 = tempReg |  UART_C4_BRFA(BRFAdjst);
        ANDS     R0,R3,#0x1F
        ORRS     R0,R0,R1
        LDR.N    R1,??DataTable5_13  ;; 0x4006d00a
        STRB     R0,[R1, #+0]
//   57     // 设置接收FIFO
//   58    // (UART3_BASE_PTR)->RWFIFO = 0;
//   59   //  (UART3_BASE_PTR)->PFIFO = UART_PFIFO_RXFE_MASK | UART_PFIFO_RXFIFOSIZE(4); //
//   60   //  (UART3_BASE_PTR)->RWFIFO = 1;
//   61   //  (UART3_BASE_PTR)->CFIFO = UART_CFIFO_RXUFE_MASK; //
//   62     // 触发接收器及发送器使能，触发生成波特率
//   63     UART_C2_REG(UART3_BASE_PTR) |= (UART_C2_TE_MASK | UART_C2_RE_MASK );
        LDR.N    R0,??DataTable5_8  ;; 0x4006d003
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0xC
        LDR.N    R1,??DataTable5_8  ;; 0x4006d003
        STRB     R0,[R1, #+0]
//   64     //
//   65     (UART3_BASE_PTR)->C5 = 0x00u;
        LDR.N    R0,??DataTable5_14  ;; 0x4006d00b
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//   66     return;
        POP      {R4,R5}
        BX       LR               ;; return
//   67 }
//   68 /*************************************************************************
//   69 //
//   70 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   71 void __v_Uart_TxOne_(unsigned char sendInfor)
//   72 {
//   73     // 等待发送缓冲区空 Transmit Data Register Empty Flag == 1 时退出循环
//   74     while(!( (UART3_BASE_PTR->S1) & UART_S1_TDRE_MASK));
__v_Uart_TxOne_:
??__v_Uart_TxOne__0:
        LDR.N    R1,??DataTable5_15  ;; 0x4006d004
        LDRB     R1,[R1, #+0]
        LSLS     R1,R1,#+24
        BPL.N    ??__v_Uart_TxOne__0
//   75     
//   76     // 当TDRE为1时，执行发送数据指令。
//   77     // 发送数据
//   78     (UART3_BASE_PTR)->D = (uint8)sendInfor;
        LDR.N    R1,??DataTable5_16  ;; 0x4006d007
        STRB     R0,[R1, #+0]
//   79 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   80 void __v_Uart_TxInt16_(unsigned short int sendUint)
//   81 {
__v_Uart_TxInt16_:
        PUSH     {R4,LR}
        MOVS     R4,R0
//   82     // 先搞后低
//   83     __v_Uart_TxOne_((uint8)((sendUint>>8)&(0x00FFu)));
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LSRS     R0,R4,#+8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       __v_Uart_TxOne_
//   84     // vDelayMuchMs(100);
//   85     __v_Uart_TxOne_((uint8)((sendUint)&(0x00FFu)));
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       __v_Uart_TxOne_
//   86 }
        POP      {R4,PC}          ;; return
//   87 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   88 void __v_Uart_TxInt32_(unsigned long int sendUint)
//   89 {
__v_Uart_TxInt32_:
        PUSH     {R4,LR}
        MOVS     R4,R0
//   90     __v_Uart_TxInt16_((uint16)((sendUint>>16)&(0x0000FFFFu)));
        LSRS     R0,R4,#+16
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       __v_Uart_TxInt16_
//   91     //vDelayMuchMs(100);
//   92     __v_Uart_TxInt16_((uint16)((sendUint)&(0x0000FFFFu)));
        MOVS     R0,R4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       __v_Uart_TxInt16_
//   93 }
        POP      {R4,PC}          ;; return
//   94 
//   95 /*
//   96  * 三种接收格式
//   97  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   98 void __v_uart_getchar (char *ch)
//   99 {
//  100     while (!(UART_S1_REG(UART3_BASE_PTR) & UART_S1_RDRF_MASK));       //等待接收满了
__v_uart_getchar:
??__v_uart_getchar_0:
        LDR.N    R1,??DataTable5_15  ;; 0x4006d004
        LDRB     R1,[R1, #+0]
        LSLS     R1,R1,#+26
        BPL.N    ??__v_uart_getchar_0
//  101     *ch =  UART_D_REG(UART3_BASE_PTR);
        LDR.N    R1,??DataTable5_16  ;; 0x4006d007
        LDRB     R1,[R1, #+0]
        STRB     R1,[R0, #+0]
//  102 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  103 uint8 __v_uart_getOnce (char *ch)
//  104 {
//  105     uint32 timer_Delay = 1000000; // 硬件延迟
__v_uart_getOnce:
        LDR.N    R1,??DataTable5_17  ;; 0xf4240
//  106     while(timer_Delay--)
??__v_uart_getOnce_0:
        MOVS     R2,R1
        SUBS     R1,R2,#+1
        CMP      R2,#+0
        BEQ.N    ??__v_uart_getOnce_1
//  107     {
//  108         if (UART_S1_REG(UART3_BASE_PTR) & UART_S1_RDRF_MASK)
        LDR.N    R2,??DataTable5_15  ;; 0x4006d004
        LDRB     R2,[R2, #+0]
        LSLS     R2,R2,#+26
        BPL.N    ??__v_uart_getOnce_0
//  109         {
//  110             *ch =  UART_D_REG(UART3_BASE_PTR);return 0;
        LDR.N    R1,??DataTable5_16  ;; 0x4006d007
        LDRB     R1,[R1, #+0]
        STRB     R1,[R0, #+0]
        MOVS     R0,#+0
        B.N      ??__v_uart_getOnce_2
//  111         }
//  112     }
//  113     return 1;
??__v_uart_getOnce_1:
        MOVS     R0,#+1
??__v_uart_getOnce_2:
        BX       LR               ;; return
//  114 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  115 uint8 u8_uart_getAll ( BlueTooth_Buffer * _RecBuffer )
//  116 {
u8_uart_getAll:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//  117     char ch = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//  118     uint8 isGetData = 0;
        MOVS     R5,#+0
        B.N      ??u8_uart_getAll_0
//  119     while( !__v_uart_getOnce(&ch) )
//  120     {
//  121         _RecBuffer->Buffer[g_RecBuffer.BufferSize] = ch;
//  122         if( 0xFF == ch ){_RecBuffer->MaySign_Buffer[_RecBuffer->MaySign_BufferSize] = g_RecBuffer.BufferSize;_RecBuffer->MaySign_BufferSize++;} // 记录关键信息
//  123         if( _RecBuffer->BufferSize < DE_MAX_bufferSize ){_RecBuffer->BufferSize++;}
//  124         else{_RecBuffer->flags_single.flags_OverRun = 1;return 1;} // 限幅
//  125         if(_RecBuffer->BufferSize > (DE_MAX_bufferSize>>1)){_RecBuffer->flags_single.flags_Half = 1;}
//  126                                                        else{_RecBuffer->flags_single.flags_Half = 0;} // 半九十记录
??u8_uart_getAll_1:
        LDRB     R0,[R4, #+2025]
        ANDS     R0,R0,#0xFD
        STRB     R0,[R4, #+2025]
//  127         isGetData = 1;
??u8_uart_getAll_2:
        MOVS     R5,#+1
??u8_uart_getAll_0:
        ADD      R0,SP,#+0
        BL       __v_uart_getOnce
        CMP      R0,#+0
        BNE.N    ??u8_uart_getAll_3
        LDR.N    R0,??DataTable5_18
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,R4
        LDRB     R1,[SP, #+0]
        STRB     R1,[R0, #+4]
        LDRB     R0,[SP, #+0]
        CMP      R0,#+255
        BNE.N    ??u8_uart_getAll_4
        LDRB     R0,[R4, #+2004]
        ADDS     R0,R0,R4
        LDR.N    R1,??DataTable5_18
        LDR      R1,[R1, #+0]
        STRB     R1,[R0, #+2005]
        LDRB     R0,[R4, #+2004]
        ADDS     R0,R0,#+1
        STRB     R0,[R4, #+2004]
??u8_uart_getAll_4:
        LDR      R0,[R4, #+0]
        CMP      R0,#+2000
        BCS.N    ??u8_uart_getAll_5
        LDR      R0,[R4, #+0]
        ADDS     R0,R0,#+1
        STR      R0,[R4, #+0]
        LDR      R0,[R4, #+0]
        CMP      R0,#+1000
        BLS.N    ??u8_uart_getAll_1
        LDRB     R0,[R4, #+2025]
        ORRS     R0,R0,#0x2
        STRB     R0,[R4, #+2025]
        B.N      ??u8_uart_getAll_2
??u8_uart_getAll_5:
        LDRB     R0,[R4, #+2025]
        ORRS     R0,R0,#0x1
        STRB     R0,[R4, #+2025]
        MOVS     R0,#+1
        B.N      ??u8_uart_getAll_6
//  128     }
//  129     if( 0 == _RecBuffer->BufferSize ){_RecBuffer->flags_single.flags_Full = 1;}
??u8_uart_getAll_3:
        LDR      R0,[R4, #+0]
        CMP      R0,#+0
        BNE.N    ??u8_uart_getAll_7
        LDRB     R0,[R4, #+2025]
        ORRS     R0,R0,#0x8
        STRB     R0,[R4, #+2025]
        B.N      ??u8_uart_getAll_8
//  130                                      else{_RecBuffer->flags_single.flags_Full = 0;} // 空记录
??u8_uart_getAll_7:
        LDRB     R0,[R4, #+2025]
        ANDS     R0,R0,#0xF7
        STRB     R0,[R4, #+2025]
//  131     if(1 == isGetData){return 0;}
??u8_uart_getAll_8:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BNE.N    ??u8_uart_getAll_9
        MOVS     R0,#+0
        B.N      ??u8_uart_getAll_6
//  132                   else{return 1;}
??u8_uart_getAll_9:
        MOVS     R0,#+1
??u8_uart_getAll_6:
        POP      {R1,R4,R5,PC}    ;; return
//  133 }
//  134 
//  135 /******************************************************************************/

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  136 s_Data_GyroAccel Data_UART_rec;
Data_UART_rec:
        DS8 2404
//  137 /******************************************************************************/
//  138 /* 
//  139  * 起始位定义：1*16 2
//  140  * 接收协议一：陀螺仪加速度计 / 6*16 = 12*8 = 12Bytes => 16Bytes 
//  141  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  142 void v_Tooth_GyroAccel (BlueTooth_Buffer * Rec) // 16Bytes 
//  143 {
v_Tooth_GyroAccel:
        PUSH     {R4-R6}
//  144     /*
//  145      * 发送协议：0xFFEA + x陀螺仪(2) + y陀螺仪(2) + z陀螺仪(2) + x加速度(2) + y加速度(2) + z加速度(2)
//  146      */
//  147     uint32 max_RecNum = Rec->BufferSize; // 最大数值
        LDR      R1,[R0, #+0]
//  148     uint32 max_FF_RecNum = Rec->MaySign_BufferSize; // FF存在数量
        LDRB     R2,[R0, #+2004]
//  149     // 搜寻：
//  150     for(uint8 loop = 0;loop < max_FF_RecNum;loop++)
        MOVS     R3,#+0
        B.N      ??v_Tooth_GyroAccel_0
//  151     {
//  152         if(Rec->MaySign_Buffer[loop] < (max_RecNum - 1)) // 0xFF仅为可能，下一位才是重点
??v_Tooth_GyroAccel_1:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ADDS     R4,R3,R0
        LDRB     R4,[R4, #+2005]
        SUBS     R5,R1,#+1
        CMP      R4,R5
        BCS.W    ??v_Tooth_GyroAccel_2
//  153         { // 情况为真
//  154             if(0xEA == Rec->Buffer[(Rec->MaySign_Buffer[loop]+1)]) // 确认是否可能
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ADDS     R4,R3,R0
        LDRB     R4,[R4, #+2005]
        ADDS     R4,R4,R0
        LDRB     R4,[R4, #+5]
        CMP      R4,#+234
        BNE.W    ??v_Tooth_GyroAccel_2
//  155             {
//  156                 uint8 vaild_bit = 0;
        MOVS     R4,#+0
//  157                 uint32 next = Rec->MaySign_Buffer[loop] + 16;
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ADDS     R5,R3,R0
        LDRB     R5,[R5, #+2005]
        ADDS     R5,R5,#+16
//  158                 if( next < (max_RecNum - 1)) //进行检测
        SUBS     R6,R1,#+1
        CMP      R5,R6
        BCS.N    ??v_Tooth_GyroAccel_3
//  159                 {
//  160                     vaild_bit = 1;
        MOVS     R4,#+1
//  161                     if(( 0xFF == Rec->Buffer[next] ) && ( 0xEA == Rec->Buffer[next+1] ))
        ADDS     R6,R5,R0
        LDRB     R6,[R6, #+4]
        CMP      R6,#+255
        BNE.N    ??v_Tooth_GyroAccel_3
        ADDS     R5,R5,R0
        LDRB     R5,[R5, #+5]
        CMP      R5,#+234
        BNE.N    ??v_Tooth_GyroAccel_3
//  162                     {
//  163                         vaild_bit = 0;
        MOVS     R4,#+0
//  164                     }
//  165                 }
//  166                 if(0 == vaild_bit)
??v_Tooth_GyroAccel_3:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.W    ??v_Tooth_GyroAccel_2
//  167                 {
//  168                     // 得出最终数据
//  169                     register uint16 num = Data_UART_rec.Rec_num;
        LDR.N    R4,??DataTable5_19
        LDRH     R4,[R4, #+2400]
//  170                     Data_UART_rec.Gyro_x[num] = ((Rec->Buffer[ Rec->MaySign_Buffer[loop] +  2 ])<<8)
//  171                                                 |((Rec->Buffer[ Rec->MaySign_Buffer[loop] + 3 ]));
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ADDS     R5,R3,R0
        LDRB     R5,[R5, #+2005]
        ADDS     R5,R5,R0
        LDRB     R5,[R5, #+6]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ADDS     R6,R3,R0
        LDRB     R6,[R6, #+2005]
        ADDS     R6,R6,R0
        LDRB     R6,[R6, #+7]
        ORRS     R5,R6,R5, LSL #+8
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LDR.N    R6,??DataTable5_19
        STRH     R5,[R6, R4, LSL #+1]
//  172                     Data_UART_rec.Gyro_y[num] = ((Rec->Buffer[ Rec->MaySign_Buffer[loop] +  4 ])<<8)
//  173                                                 |((Rec->Buffer[ Rec->MaySign_Buffer[loop] + 5 ]));
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ADDS     R5,R3,R0
        LDRB     R5,[R5, #+2005]
        ADDS     R5,R5,R0
        LDRB     R5,[R5, #+8]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ADDS     R6,R3,R0
        LDRB     R6,[R6, #+2005]
        ADDS     R6,R6,R0
        LDRB     R6,[R6, #+9]
        ORRS     R5,R6,R5, LSL #+8
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LDR.N    R6,??DataTable5_19
        ADDS     R6,R6,R4, LSL #+1
        STRH     R5,[R6, #+400]
//  174                     Data_UART_rec.Gyro_z[num] = ((Rec->Buffer[ Rec->MaySign_Buffer[loop] +  6 ])<<8)
//  175                                                 |((Rec->Buffer[ Rec->MaySign_Buffer[loop] + 7 ]));
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ADDS     R5,R3,R0
        LDRB     R5,[R5, #+2005]
        ADDS     R5,R5,R0
        LDRB     R5,[R5, #+10]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ADDS     R6,R3,R0
        LDRB     R6,[R6, #+2005]
        ADDS     R6,R6,R0
        LDRB     R6,[R6, #+11]
        ORRS     R5,R6,R5, LSL #+8
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LDR.N    R6,??DataTable5_19
        ADDS     R6,R6,R4, LSL #+1
        STRH     R5,[R6, #+800]
//  176                     Data_UART_rec.Accel_x[num] =((Rec->Buffer[ Rec->MaySign_Buffer[loop] +  8 ])<<8)
//  177                                                 |((Rec->Buffer[ Rec->MaySign_Buffer[loop] + 9 ]));
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ADDS     R5,R3,R0
        LDRB     R5,[R5, #+2005]
        ADDS     R5,R5,R0
        LDRB     R5,[R5, #+12]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ADDS     R6,R3,R0
        LDRB     R6,[R6, #+2005]
        ADDS     R6,R6,R0
        LDRB     R6,[R6, #+13]
        ORRS     R5,R6,R5, LSL #+8
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LDR.N    R6,??DataTable5_19
        ADDS     R6,R6,R4, LSL #+1
        STRH     R5,[R6, #+1200]
//  178                     Data_UART_rec.Accel_y[num] =((Rec->Buffer[ Rec->MaySign_Buffer[loop] +  10 ])<<8)
//  179                                                 |((Rec->Buffer[ Rec->MaySign_Buffer[loop] + 11 ]));
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ADDS     R5,R3,R0
        LDRB     R5,[R5, #+2005]
        ADDS     R5,R5,R0
        LDRB     R5,[R5, #+14]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ADDS     R6,R3,R0
        LDRB     R6,[R6, #+2005]
        ADDS     R6,R6,R0
        LDRB     R6,[R6, #+15]
        ORRS     R5,R6,R5, LSL #+8
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LDR.N    R6,??DataTable5_19
        ADDS     R6,R6,R4, LSL #+1
        STRH     R5,[R6, #+1600]
//  180                     Data_UART_rec.Accel_z[num] =((Rec->Buffer[ Rec->MaySign_Buffer[loop] +  12 ])<<8)
//  181                                                 |((Rec->Buffer[ Rec->MaySign_Buffer[loop] + 13 ]));
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ADDS     R5,R3,R0
        LDRB     R5,[R5, #+2005]
        ADDS     R5,R5,R0
        LDRB     R5,[R5, #+16]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ADDS     R6,R3,R0
        LDRB     R6,[R6, #+2005]
        ADDS     R6,R6,R0
        LDRB     R6,[R6, #+17]
        ORRS     R5,R6,R5, LSL #+8
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LDR.N    R6,??DataTable5_19
        ADDS     R4,R6,R4, LSL #+1
        STRH     R5,[R4, #+2000]
//  182                     Data_UART_rec.Rec_num ++;
        LDR.N    R4,??DataTable5_19
        LDRH     R4,[R4, #+2400]
        ADDS     R4,R4,#+1
        LDR.N    R5,??DataTable5_19
        STRH     R4,[R5, #+2400]
//  183                     // 清空原始数据
//  184                     Rec->BufferSize = 0;
        MOVS     R4,#+0
        STR      R4,[R0, #+0]
//  185                     Rec->MaySign_BufferSize = 0;
        MOVS     R4,#+0
        STRB     R4,[R0, #+2004]
//  186                 }
//  187             }
//  188         }
//  189     }
??v_Tooth_GyroAccel_2:
        ADDS     R3,R3,#+1
??v_Tooth_GyroAccel_0:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,R2
        BCC.W    ??v_Tooth_GyroAccel_1
//  190 }
        POP      {R4-R6}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     0x40048034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_2:
        DC32     0x4004b040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_3:
        DC32     0x4004b044

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_4:
        DC32     0x4004d010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_5:
        DC32     0x4004d014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_6:
        DC32     0x4004a028

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_7:
        DC32     0x4004a02c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_8:
        DC32     0x4006d003

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_9:
        DC32     0x4006d002

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_10:
        DC32     bus_clk_khz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_11:
        DC32     0x4006d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_12:
        DC32     0x4006d001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_13:
        DC32     0x4006d00a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_14:
        DC32     0x4006d00b

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_15:
        DC32     0x4006d004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_16:
        DC32     0x4006d007

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_17:
        DC32     0xf4240

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_18:
        DC32     g_RecBuffer

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_19:
        DC32     Data_UART_rec

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
// 4 436 bytes in section .bss
//   964 bytes in section .text
// 
//   964 bytes of CODE memory
// 4 436 bytes of DATA memory
//
//Errors: none
//Warnings: none
