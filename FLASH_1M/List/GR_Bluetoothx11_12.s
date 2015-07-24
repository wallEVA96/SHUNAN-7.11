///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     16/Aug/2014  22:11:10 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\pc\Desktop\继续做的事情\四旋翼飞行器 -         /
//                    TM4123G\代码\遥控器\ShunAn2\GR_Bluetoothx11_12.c        /
//    Command line =  "C:\Users\pc\Desktop\继续做的事情\四旋翼飞行器 -        /
//                    TM4123G\代码\遥控器\ShunAn2\GR_Bluetoothx11_12.c" -D    /
//                    IAR -D ShunAn2 -lCN "C:\Users\pc\Desktop\继续做的事情\� /
//                    男矸尚衅� - TM4123G\代码\遥控器\FLASH_1M\List\" -lB   /
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
//                    TM4123G\代码\遥控器\FLASH_1M\List\GR_Bluetoothx11_12.s  /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN bus_clk_khz
        EXTERN enable_irq
        EXTERN g_Control

        PUBLIC BLagreeT
        PUBLIC GR_ReceiveStop
        PUBLIC __v_Uart_Init_
        PUBLIC __v_Uart_TxInt16_
        PUBLIC __v_Uart_TxInt32_
        PUBLIC __v_Uart_TxOne_
        PUBLIC __v_uart_getchar
        PUBLIC __v_uart_rx_irq_en
        PUBLIC u8_tx2air

// C:\Users\pc\Desktop\继续做的事情\四旋翼飞行器 - TM4123G\代码\遥控器\ShunAn2\GR_Bluetoothx11_12.c
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
//   11 #include "GR_Bluetoothx11_12.h"
//   12 #include "GR_ControlPads.h"
//   13 /*************************************************************************
//   14 //函数名：__v_Uart_Init_
//   15 //制作：朱葛峻
//   16 //用途：开启所启用引脚时钟，开启UART功能引脚，设置波特率参数。
//   17         暂时只支持 PTC16 与 PTC17，以后扩展。
//   18 
//   19 //波特率简介：所谓波特率表示每秒种传输离散信号事件的个数，或每秒信号电平的变化次数，单位为band（波特）。
//   20 
//   21           初始化默认配置        --TXD--      --RXD--
//   22           UART4,                 PTC17        PTC16
//   23 
//   24 //目前参数：BaudRate
//   25 //使用波特率：9600
//   26 *************************************************************************/
//   27 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   28 void __v_Uart_Init_(uint32 BaudRate)
//   29 {   
__v_Uart_Init_:
        PUSH     {R4,R5}
//   30     // 常参量
//   31     uint32 tempReg  = 0;
        MOVS     R1,#+0
//   32     uint32 BdRtBits = 0;
        MOVS     R2,#+0
//   33     uint32 BRFAdjst = 0;
        MOVS     R3,#+0
//   34     
//   35     // 设置时钟
//   36     SIM_SCGC4 |= SIM_SCGC4_UART3_MASK;
        LDR.N    R4,??DataTable5  ;; 0x40048034
        LDR      R4,[R4, #+0]
        ORRS     R4,R4,#0x2000
        LDR.N    R5,??DataTable5  ;; 0x40048034
        STR      R4,[R5, #+0]
//   37     SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK ;//使能PORTE时钟
        LDR.N    R4,??DataTable5_1  ;; 0x40048038
        LDR      R4,[R4, #+0]
        ORRS     R4,R4,#0x800
        LDR.N    R5,??DataTable5_1  ;; 0x40048038
        STR      R4,[R5, #+0]
//   38     //SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK ;//
//   39     // 设置引脚参数
//   40     //PORT_PCR_REG(PORTX[PTC],14) = PORT_PCR_MUX(0);
//   41     //PORT_PCR_REG(PORTX[PTC],15) = PORT_PCR_MUX(0);
//   42     //PORT_PCR_REG(PORTX[PTE],23) = PORT_PCR_MUX(3);
//   43     //PORT_PCR_REG(PORTX[PTE],24) = PORT_PCR_MUX(3);
//   44     
//   45     //PORTC_PCR14 |= 0x00000000u;//引脚复用选择UART4_TX
//   46     //PORTC_PCR15 |= 0x00000000u;//引脚复用选择UART4_TX
//   47     PORTC_PCR16 |= 0x00000300u;//引脚复用选择UART4_RX
        LDR.N    R4,??DataTable5_2  ;; 0x4004b040
        LDR      R4,[R4, #+0]
        ORRS     R4,R4,#0x300
        LDR.N    R5,??DataTable5_2  ;; 0x4004b040
        STR      R4,[R5, #+0]
//   48     PORTC_PCR17 |= 0x00000300u;//引脚复用选择UART4_RX
        LDR.N    R4,??DataTable5_3  ;; 0x4004b044
        LDR      R4,[R4, #+0]
        ORRS     R4,R4,#0x300
        LDR.N    R5,??DataTable5_3  ;; 0x4004b044
        STR      R4,[R5, #+0]
//   49     
//   50     // 关闭接收及发送器，等待触发时波特率生成
//   51     (UART3_BASE_PTR)->C2 &= ~( UART_C2_TE_MASK | UART_C2_RE_MASK );
        LDR.N    R4,??DataTable5_4  ;; 0x4006d003
        LDRB     R4,[R4, #+0]
        ANDS     R4,R4,#0xF3
        LDR.N    R5,??DataTable5_4  ;; 0x4006d003
        STRB     R4,[R5, #+0]
//   52     
//   53     // C1设置默认
//   54     (UART3_BASE_PTR)->C1  = 0;
        LDR.N    R4,??DataTable5_5  ;; 0x4006d002
        MOVS     R5,#+0
        STRB     R5,[R4, #+0]
//   55     
//   56     // 设置波特率
//   57     // 设置 Band Rate Bits
//   58     BdRtBits = (uint16)((bus_clk_khz * 1000)/(BaudRate << 4));
        LDR.N    R4,??DataTable5_6
        LDR      R4,[R4, #+0]
        MOV      R5,#+1000
        MULS     R4,R5,R4
        LSLS     R5,R0,#+4
        UDIV     R4,R4,R5
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        MOVS     R2,R4
//   59     tempReg = UART_BDH_REG(UART3_BASE_PTR) & ~(UART_BDH_SBR(0x1F));
        LDR.N    R4,??DataTable5_7  ;; 0x4006d000
        LDRB     R4,[R4, #+0]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSRS     R4,R4,#+5
        LSLS     R4,R4,#+5
        MOVS     R1,R4
//   60     (UART3_BASE_PTR)->BDH = tempReg |  UART_BDH_SBR(((BdRtBits & 0x1F00) >> 8));
        LSRS     R4,R2,#+8
        ANDS     R4,R4,#0x1F
        ORRS     R1,R4,R1
        LDR.N    R4,??DataTable5_7  ;; 0x4006d000
        STRB     R1,[R4, #+0]
//   61     (UART3_BASE_PTR)->BDL = (uint8)(BdRtBits & UART_BDL_SBR_MASK);
        LDR.N    R1,??DataTable5_8  ;; 0x4006d001
        STRB     R2,[R1, #+0]
//   62     
//   63     // 设置 Band Rate Find Adjust
//   64     BRFAdjst = ((((bus_clk_khz*1000)<<5)/(BaudRate <<4)) - (BdRtBits <<5));
        LDR.N    R1,??DataTable5_6
        LDR      R1,[R1, #+0]
        MOV      R4,#+1000
        MULS     R1,R4,R1
        LSLS     R1,R1,#+5
        LSLS     R0,R0,#+4
        UDIV     R0,R1,R0
        SUBS     R0,R0,R2, LSL #+5
        MOVS     R3,R0
//   65     tempReg = UART_C4_REG(UART3_BASE_PTR) & ~(UART_C4_BRFA(0x1F));
        LDR.N    R0,??DataTable5_9  ;; 0x4006d00a
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R1,R0,#+5
        LSLS     R1,R1,#+5
//   66     (UART3_BASE_PTR)->C4 = tempReg |  UART_C4_BRFA(BRFAdjst);
        ANDS     R0,R3,#0x1F
        ORRS     R0,R0,R1
        LDR.N    R1,??DataTable5_9  ;; 0x4006d00a
        STRB     R0,[R1, #+0]
//   67     // 波特率设置完毕
//   68     
//   69     // 触发接收器及发送器使能，触发生成波特率
//   70     UART_C2_REG(UART3_BASE_PTR) |= (UART_C2_TE_MASK | UART_C2_RE_MASK );
        LDR.N    R0,??DataTable5_4  ;; 0x4006d003
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0xC
        LDR.N    R1,??DataTable5_4  ;; 0x4006d003
        STRB     R0,[R1, #+0]
//   71     //
//   72     (UART3_BASE_PTR)->C5 = 0x00u;
        LDR.N    R0,??DataTable5_10  ;; 0x4006d00b
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//   73     return;
        POP      {R4,R5}
        BX       LR               ;; return
//   74 }
//   75 
//   76 /*************************************************************************
//   77 //函数名：__v_Uart_TxOne_
//   78 //制作：朱葛峻
//   79 //用途：发送一个字符
//   80 //目前参数：BaudRate
//   81 //可扩展参数：引脚配置信息
//   82 //使用波特率：9600
//   83 //
//   84 *************************************************************************/
//   85 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   86 void __v_Uart_TxOne_(unsigned char sendInfor)
//   87 {
//   88     // 等待发送缓冲区空 Transmit Data Register Empty Flag == 1 时退出循环
//   89     while(!( (UART3_BASE_PTR->S1) & UART_S1_TDRE_MASK));
__v_Uart_TxOne_:
??__v_Uart_TxOne__0:
        LDR.N    R1,??DataTable5_11  ;; 0x4006d004
        LDRB     R1,[R1, #+0]
        LSLS     R1,R1,#+24
        BPL.N    ??__v_Uart_TxOne__0
//   90     
//   91     // 当TDRE为1时，执行发送数据指令。
//   92     // 发送数据
//   93     (UART3_BASE_PTR)->D = (uint8)sendInfor;
        LDR.N    R1,??DataTable5_12  ;; 0x4006d007
        STRB     R0,[R1, #+0]
//   94 }
        BX       LR               ;; return
//   95 
//   96 /*************************************************************************
//   97 //函数名：__v_Uart_TxOne_
//   98 //制作：朱葛峻
//   99 //用途：发送一个字符
//  100 //目前参数：BaudRate
//  101 //可扩展参数：引脚配置信息
//  102 //使用波特率：9600
//  103 //
//  104 *************************************************************************/
//  105 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  106 void __v_Uart_TxInt16_(unsigned short int sendUint)
//  107 {
__v_Uart_TxInt16_:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  108     // 先搞后低
//  109     __v_Uart_TxOne_((uint8)((sendUint>>8)&(0x00FFu)));
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LSRS     R0,R4,#+8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       __v_Uart_TxOne_
//  110     // vDelayMuchMs(100);
//  111     __v_Uart_TxOne_((uint8)((sendUint)&(0x00FFu)));
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       __v_Uart_TxOne_
//  112 }
        POP      {R4,PC}          ;; return
//  113 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  114 void __v_Uart_TxInt32_(unsigned long int sendUint)
//  115 {
__v_Uart_TxInt32_:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  116     __v_Uart_TxInt16_((uint16)((sendUint>>16)&(0x0000FFFFu)));
        LSRS     R0,R4,#+16
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       __v_Uart_TxInt16_
//  117     //vDelayMuchMs(100);
//  118     __v_Uart_TxInt16_((uint16)((sendUint)&(0x0000FFFFu)));
        MOVS     R0,R4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       __v_Uart_TxInt16_
//  119 }
        POP      {R4,PC}          ;; return
//  120 
//  121 /*!
//  122  *  @brief      开串口接收中断
//  123  *  @param      UARTn_e       模块号（UART0~UART5）
//  124  *  @since      v5.0
//  125  *  Sample usage:       uart_rx_irq_en(UART4);         //开串口3接收中断
//  126  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  127 void __v_uart_rx_irq_en()
//  128 {
__v_uart_rx_irq_en:
        PUSH     {R7,LR}
//  129     UART_C2_REG(UART3_BASE_PTR) |= UART_C2_RIE_MASK;                          //使能UART接收中断
        LDR.N    R0,??DataTable5_4  ;; 0x4006d003
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x20
        LDR.N    R1,??DataTable5_4  ;; 0x4006d003
        STRB     R0,[R1, #+0]
//  130     enable_irq((3 << 1) + 45);                  //使能IRQ中断
        MOVS     R0,#+51
        BL       enable_irq
//  131 }
        POP      {R0,PC}          ;; return
//  132 
//  133 /*!
//  134  *  @brief      等待接受1个字节
//  135  *  @param      UARTn_e       模块号（UART0~UART5）
//  136  *  @param      ch          接收地址
//  137  *  @since      v5.0
//  138  *  @note       如果需要查询接收状态，可用 uart_query ，
//  139                 如果需要查询接收数据，可用 uart_querychar
//  140  *  Sample usage:       char ch = uart_getchar (UART4);   //等待接受1个字节，保存到 ch里
//  141  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  142 void __v_uart_getchar (char *ch)
//  143 {
//  144     //等待接收到数据（使能了FIFO后，以下两种方法都可行，都是一样的意思）
//  145     //while( !UART_RCFIFO_REG(UARTN[uratn]) );                                //等待接收到数据数量非0
//  146     //while( (UART_SFIFO_REG(UARTN[uratn]) & UART_SFIFO_RXEMPT_MASK)) ;     //等待接收缓冲区/FIFO 非空的
//  147 
//  148     //如下方法是飞思卡尔官方例程提供的方法
//  149     while (!(UART_S1_REG(UART3_BASE_PTR) & UART_S1_RDRF_MASK));       //等待接收满了
__v_uart_getchar:
??__v_uart_getchar_0:
        LDR.N    R1,??DataTable5_11  ;; 0x4006d004
        LDRB     R1,[R1, #+0]
        LSLS     R1,R1,#+26
        BPL.N    ??__v_uart_getchar_0
//  150 
//  151     // 获取接收到的8位数据
//  152     *ch =  UART_D_REG(UART3_BASE_PTR);
        LDR.N    R1,??DataTable5_12  ;; 0x4006d007
        LDRB     R1,[R1, #+0]
        STRB     R1,[R0, #+0]
//  153 
//  154     // 获取 9位数据，应该是（需要修改函数的返回类型）：
//  155     // *ch =   ((( UARTx_C3_REG(UARTN[uratn]) & UART_C3_R8_MASK ) >> UART_C3_R8_SHIFT ) << 8)   |   UART_D_REG(UARTN[uratn]);  //返回9bit
//  156 
//  157 }
        BX       LR               ;; return
//  158 
//  159 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  160 void BLagreeT(uint8  DirPWM    , uint8  D_DirPWM,
//  161               
//  162               uint8  Central   , uint8 centralChangeRate,       // 通用显示
//  163               
//  164               uint8  isAdvance , uint16 Motor_PWM,
//  165               
//  166               uint16  GiveSpeed , uint16  D_GiveSpeed,
//  167               uint16  NowSpeed  )
//  168 {
BLagreeT:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
//  169     // 传输开始
//  170     __v_Uart_TxInt16_(0xFEFEu);        // 起始
        MOVW     R0,#+65278
        BL       __v_Uart_TxInt16_
//  171     
//  172     __v_Uart_TxOne_(DirPWM);
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       __v_Uart_TxOne_
//  173     __v_Uart_TxOne_(D_DirPWM);
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       __v_Uart_TxOne_
//  174     
//  175     __v_Uart_TxOne_(Central);
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       __v_Uart_TxOne_
//  176     __v_Uart_TxOne_(centralChangeRate);
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       __v_Uart_TxOne_
//  177     
//  178     __v_Uart_TxOne_(isAdvance);         // 1 前进，2 后退，3 停止
        LDR      R0,[SP, #+24]
        BL       __v_Uart_TxOne_
//  179     
//  180     
//  181     __v_Uart_TxInt16_(NowSpeed);
        LDR      R0,[SP, #+40]
        BL       __v_Uart_TxInt16_
//  182     __v_Uart_TxInt16_(GiveSpeed);
        LDR      R0,[SP, #+32]
        BL       __v_Uart_TxInt16_
//  183     __v_Uart_TxInt16_(D_GiveSpeed);
        LDR      R0,[SP, #+36]
        BL       __v_Uart_TxInt16_
//  184     
//  185     __v_Uart_TxInt16_(Motor_PWM);
        LDR      R0,[SP, #+28]
        BL       __v_Uart_TxInt16_
//  186     
//  187     //__v_Uart_TxInt16_(0xFDFDu);        // 停止
//  188 }
        POP      {R0,R4-R7,PC}    ;; return
//  189 
//  190 
//  191 /*************************************************************************
//  192 //函数名：unsigned char GR_ReceiveStop()
//  193 //用途：接收停车标志，非零即为停车
//  194 //目前参数：BaudRate
//  195 //可扩展参数：引脚配置信息
//  196 //
//  197 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  198 unsigned char GR_ReceiveStop()
//  199 {
GR_ReceiveStop:
        PUSH     {R7,LR}
//  200   uint8 RecChar = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//  201   if(UART_S1_REG(UART3_BASE_PTR) & UART_S1_RDRF_MASK)   //接收数据寄存器满
        LDR.N    R0,??DataTable5_11  ;; 0x4006d004
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??GR_ReceiveStop_0
//  202   {
//  203     __v_uart_getchar((char*)&RecChar);
        ADD      R0,SP,#+0
        BL       __v_uart_getchar
//  204     if(0xFFu == RecChar)
        LDRB     R0,[SP, #+0]
        CMP      R0,#+255
        BNE.N    ??GR_ReceiveStop_1
//  205     {
//  206       return 1;
        MOVS     R0,#+1
        B.N      ??GR_ReceiveStop_2
//  207     }
//  208     return 0;
??GR_ReceiveStop_1:
        MOVS     R0,#+0
        B.N      ??GR_ReceiveStop_2
//  209   }
//  210   else
//  211   {
//  212     return 0;
??GR_ReceiveStop_0:
        MOVS     R0,#+0
??GR_ReceiveStop_2:
        POP      {R1,PC}          ;; return
//  213   }
//  214 }
//  215 
//  216 /*************************************************************************
//  217 //函数名：
//  218 //用途：接收停车标志，非零即为停车
//  219 //目前参数：BaudRate
//  220 //可扩展参数：引脚配置信息
//  221 //
//  222 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  223 uint8 u8_tx2air()
//  224 {
u8_tx2air:
        PUSH     {R7,LR}
//  225     if(1 == g_Control.SendWhich.Start){__v_Uart_TxOne_(10);}
        LDR.N    R0,??DataTable5_13
        LDRB     R0,[R0, #+4]
        CMP      R0,#+1
        BNE.N    ??u8_tx2air_0
        MOVS     R0,#+10
        BL       __v_Uart_TxOne_
//  226     if(1 == g_Control.SendWhich.Up){__v_Uart_TxOne_(20);}
??u8_tx2air_0:
        LDR.N    R0,??DataTable5_13
        LDRB     R0,[R0, #+5]
        CMP      R0,#+1
        BNE.N    ??u8_tx2air_1
        MOVS     R0,#+20
        BL       __v_Uart_TxOne_
//  227     if(1 == g_Control.SendWhich.Down){__v_Uart_TxOne_(30);}
??u8_tx2air_1:
        LDR.N    R0,??DataTable5_13
        LDRB     R0,[R0, #+6]
        CMP      R0,#+1
        BNE.N    ??u8_tx2air_2
        MOVS     R0,#+30
        BL       __v_Uart_TxOne_
//  228     if(1 == g_Control.SendWhich.Max){__v_Uart_TxOne_(40);}
??u8_tx2air_2:
        LDR.N    R0,??DataTable5_13
        LDRB     R0,[R0, #+7]
        CMP      R0,#+1
        BNE.N    ??u8_tx2air_3
        MOVS     R0,#+40
        BL       __v_Uart_TxOne_
//  229     
//  230     // 标志位清空
//  231     g_Control.SendWhich.Start = 0;
??u8_tx2air_3:
        LDR.N    R0,??DataTable5_13
        MOVS     R1,#+0
        STRB     R1,[R0, #+4]
//  232     g_Control.SendWhich.Down  = 0;
        LDR.N    R0,??DataTable5_13
        MOVS     R1,#+0
        STRB     R1,[R0, #+6]
//  233     g_Control.SendWhich.Up    = 0;
        LDR.N    R0,??DataTable5_13
        MOVS     R1,#+0
        STRB     R1,[R0, #+5]
//  234     g_Control.SendWhich.Max   = 0;
        LDR.N    R0,??DataTable5_13
        MOVS     R1,#+0
        STRB     R1,[R0, #+7]
//  235 }
        POP      {R1,PC}          ;; return

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
        DC32     0x4006d003

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_5:
        DC32     0x4006d002

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_6:
        DC32     bus_clk_khz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_7:
        DC32     0x4006d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_8:
        DC32     0x4006d001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_9:
        DC32     0x4006d00a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_10:
        DC32     0x4006d00b

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_11:
        DC32     0x4006d004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_12:
        DC32     0x4006d007

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_13:
        DC32     g_Control

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
// 550 bytes in section .text
// 
// 550 bytes of CODE memory
//
//Errors: none
//Warnings: 1
