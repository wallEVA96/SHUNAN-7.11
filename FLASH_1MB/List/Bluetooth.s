///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     26/Nov/2014  20:35:15 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\¥¥◊˜ “\∑…Àºø®∂˚÷«ƒ‹–°≥µ\À≥∞µ»˝∫≈\¥˙¬Î\MK60FX512VLQ15 /
//                    \ShunAn_Panel\Bluetooth.c                               /
//    Command line =  D:\¥¥◊˜ “\∑…Àºø®∂˚÷«ƒ‹–°≥µ\À≥∞µ»˝∫≈\¥˙¬Î\MK60FX512VLQ15 /
//                    \ShunAn_Panel\Bluetooth.c -D IAR -D TWR_K60F120M -lCN   /
//                    D:\¥¥◊˜ “\∑…Àºø®∂˚÷«ƒ‹–°≥µ\À≥∞µ»˝∫≈\¥˙¬Î\MK60FX512VLQ15 /
//                    \FLASH_1MB\List\ -lB D:\¥¥◊˜ “\∑…Àºø®∂˚÷«ƒ‹–°≥µ\À≥∞µ»˝∫ /
//                    ≈\¥˙¬Î\MK60FX512VLQ15\FLASH_1MB\List\ -o                /
//                    D:\¥¥◊˜ “\∑…Àºø®∂˚÷«ƒ‹–°≥µ\À≥∞µ»˝∫≈\¥˙¬Î\MK60FX512VLQ15 /
//                    \FLASH_1MB\Obj\ --no_cse --no_unroll --no_inline        /
//                    --no_code_motion --no_tbaa --no_clustering              /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=None --dlib_config             /
//                    "C:\Program Files (x86)\IAR Systems\Embedded Workbench  /
//                    6.5\arm\INC\c\DLib_Config_Normal.h" -I                  /
//                    D:\¥¥◊˜ “\∑…Àºø®∂˚÷«ƒ‹–°≥µ\À≥∞µ»˝∫≈\¥˙¬Î\MK60FX512VLQ15 /
//                    \ -I D:\¥¥◊˜ “\∑…Àºø®∂˚÷«ƒ‹–°≥µ\À≥∞µ»˝∫≈\¥˙¬Î\MK60FX512 /
//                    VLQ15\Library\ -I D:\¥¥◊˜ “\∑…Àºø®∂˚÷«ƒ‹–°≥µ\À≥∞µ»˝∫≈\¥ /
//                    ˙¬Î\MK60FX512VLQ15\Library\BlessedAlien\ -I             /
//                    D:\¥¥◊˜ “\∑…Àºø®∂˚÷«ƒ‹–°≥µ\À≥∞µ»˝∫≈\¥˙¬Î\MK60FX512VLQ15 /
//                    \ShunAn_Panel\ -Ol --use_c++_inline                     /
//    List file    =  D:\¥¥◊˜ “\∑…Àºø®∂˚÷«ƒ‹–°≥µ\À≥∞µ»˝∫≈\¥˙¬Î\MK60FX512VLQ15 /
//                    \FLASH_1MB\List\Bluetooth.s                             /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN bus_clk_khz

        PUBLIC __v_Uart_Init_
        PUBLIC __v_uart_getOnce
        PUBLIC __v_uart_getchar
        PUBLIC v_Uart_TxInt16
        PUBLIC v_Uart_TxInt16_LowHigh
        PUBLIC v_Uart_TxInt32
        PUBLIC v_Uart_TxOne

// D:\¥¥◊˜ “\∑…Àºø®∂˚÷«ƒ‹–°≥µ\À≥∞µ»˝∫≈\¥˙¬Î\MK60FX512VLQ15\ShunAn_Panel\Bluetooth.c
//    1 /**
//    2 /. -----------------------//k60µ◊≤„ø‚//-------------------------
//    3 
//    4 /. ≤‚ ‘”≤º˛∆ΩÃ®£∫K60
//    5  . ∞Ê»®À˘”–£∫÷Ï∏æ˛ 
//    6  . ÷∆◊˜’ﬂ£∫÷Ï∏æ˛
//    7  . Œƒº˛√˚£∫alienUART.c
//    8  . ”√Õæ£∫
//    9  . ◊Ó∫Û–ﬁ∏ƒ»’∆⁄: 20140117
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
//   22 //BlueTooth_Buffer g_RecBuffer;
//   23 //void*(*v_BlueTooth2Data)(BlueTooth_Buffer *);
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
//   31     // ≥£≤Œ¡ø
//   32     uint32 tempReg  = 0;
        MOVS     R1,#+0
//   33     uint32 BdRtBits = 0;
        MOVS     R2,#+0
//   34     uint32 BRFAdjst = 0;
        MOVS     R3,#+0
//   35     // …Ë÷√ ±÷”
//   36     SIM_SCGC4 |= SIM_SCGC4_UART3_MASK;
        LDR.N    R4,??DataTable3  ;; 0x40048034
        LDR      R4,[R4, #+0]
        ORRS     R4,R4,#0x2000
        LDR.N    R5,??DataTable3  ;; 0x40048034
        STR      R4,[R5, #+0]
//   37     SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK|SIM_SCGC5_PORTE_MASK|SIM_SCGC5_PORTB_MASK ;// πƒ‹PORTE ±÷”
        LDR.N    R4,??DataTable3_1  ;; 0x40048038
        LDR      R4,[R4, #+0]
        ORRS     R4,R4,#0x2C00
        LDR.N    R5,??DataTable3_1  ;; 0x40048038
        STR      R4,[R5, #+0]
//   38     // …Ë÷√“˝Ω≈≤Œ ˝
//   39     PORTC_PCR16 |= 0x00000300u;//“˝Ω≈∏¥”√—°‘ÒUART3_RX
        LDR.N    R4,??DataTable3_2  ;; 0x4004b040
        LDR      R4,[R4, #+0]
        ORRS     R4,R4,#0x300
        LDR.N    R5,??DataTable3_2  ;; 0x4004b040
        STR      R4,[R5, #+0]
//   40     PORTC_PCR17 |= 0x00000300u;//“˝Ω≈∏¥”√—°‘ÒUART3_RX
        LDR.N    R4,??DataTable3_3  ;; 0x4004b044
        LDR      R4,[R4, #+0]
        ORRS     R4,R4,#0x300
        LDR.N    R5,??DataTable3_3  ;; 0x4004b044
        STR      R4,[R5, #+0]
//   41     PORTE_PCR4 |= 0x00000000u;//“˝Ω≈∏¥”√—°‘ÒUART3_RX
        LDR.N    R4,??DataTable3_4  ;; 0x4004d010
        LDR.N    R5,??DataTable3_4  ;; 0x4004d010
        LDR      R5,[R5, #+0]
        STR      R5,[R4, #+0]
//   42     PORTE_PCR5 |= 0x00000000u;//“˝Ω≈∏¥”√—°‘ÒUART3_RX
        LDR.N    R4,??DataTable3_5  ;; 0x4004d014
        LDR.N    R5,??DataTable3_5  ;; 0x4004d014
        LDR      R5,[R5, #+0]
        STR      R5,[R4, #+0]
//   43     PORTB_PCR10 |= 0x00000000u;//“˝Ω≈∏¥”√—°‘ÒUART3_RX
        LDR.N    R4,??DataTable3_6  ;; 0x4004a028
        LDR.N    R5,??DataTable3_6  ;; 0x4004a028
        LDR      R5,[R5, #+0]
        STR      R5,[R4, #+0]
//   44     PORTB_PCR11 |= 0x00000000u;//“˝Ω≈∏¥”√—°‘ÒUART3_RX
        LDR.N    R4,??DataTable3_7  ;; 0x4004a02c
        LDR.N    R5,??DataTable3_7  ;; 0x4004a02c
        LDR      R5,[R5, #+0]
        STR      R5,[R4, #+0]
//   45     // πÿ±’Ω” ’º∞∑¢ÀÕ∆˜£¨µ»¥˝¥•∑¢ ±≤®Ãÿ¬ …˙≥…
//   46     (UART3_BASE_PTR)->C2 &= ~( UART_C2_TE_MASK | UART_C2_RE_MASK );
        LDR.N    R4,??DataTable3_8  ;; 0x4006d003
        LDRB     R4,[R4, #+0]
        ANDS     R4,R4,#0xF3
        LDR.N    R5,??DataTable3_8  ;; 0x4006d003
        STRB     R4,[R5, #+0]
//   47     // C1…Ë÷√ƒ¨»œ
//   48     (UART3_BASE_PTR)->C1  = 0;
        LDR.N    R4,??DataTable3_9  ;; 0x4006d002
        MOVS     R5,#+0
        STRB     R5,[R4, #+0]
//   49     // …Ë÷√≤®Ãÿ¬ 
//   50     BdRtBits = (uint16)((bus_clk_khz * 1000)/(BaudRate << 4));
        LDR.N    R4,??DataTable3_10
        LDR      R4,[R4, #+0]
        MOV      R5,#+1000
        MULS     R4,R5,R4
        LSLS     R5,R0,#+4
        UDIV     R4,R4,R5
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        MOVS     R2,R4
//   51     tempReg = UART_BDH_REG(UART3_BASE_PTR) & ~(UART_BDH_SBR(0x1F));
        LDR.N    R4,??DataTable3_11  ;; 0x4006d000
        LDRB     R4,[R4, #+0]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSRS     R4,R4,#+5
        LSLS     R4,R4,#+5
        MOVS     R1,R4
//   52     (UART3_BASE_PTR)->BDH = tempReg |  UART_BDH_SBR(((BdRtBits & 0x1F00) >> 8));
        LSRS     R4,R2,#+8
        ANDS     R4,R4,#0x1F
        ORRS     R1,R4,R1
        LDR.N    R4,??DataTable3_11  ;; 0x4006d000
        STRB     R1,[R4, #+0]
//   53     (UART3_BASE_PTR)->BDL = (uint8)(BdRtBits & UART_BDL_SBR_MASK);
        LDR.N    R1,??DataTable3_12  ;; 0x4006d001
        STRB     R2,[R1, #+0]
//   54     BRFAdjst = ((((bus_clk_khz*1000)<<5)/(BaudRate <<4)) - (BdRtBits <<5));
        LDR.N    R1,??DataTable3_10
        LDR      R1,[R1, #+0]
        MOV      R4,#+1000
        MULS     R1,R4,R1
        LSLS     R1,R1,#+5
        LSLS     R0,R0,#+4
        UDIV     R0,R1,R0
        SUBS     R0,R0,R2, LSL #+5
        MOVS     R3,R0
//   55     tempReg = UART_C4_REG(UART3_BASE_PTR) & ~(UART_C4_BRFA(0x1F));
        LDR.N    R0,??DataTable3_13  ;; 0x4006d00a
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R1,R0,#+5
        LSLS     R1,R1,#+5
//   56     (UART3_BASE_PTR)->C4 = tempReg |  UART_C4_BRFA(BRFAdjst);
        ANDS     R0,R3,#0x1F
        ORRS     R0,R0,R1
        LDR.N    R1,??DataTable3_13  ;; 0x4006d00a
        STRB     R0,[R1, #+0]
//   57     // …Ë÷√Ω” ’FIFO
//   58    // (UART3_BASE_PTR)->RWFIFO = 0;
//   59   //  (UART3_BASE_PTR)->PFIFO = UART_PFIFO_RXFE_MASK | UART_PFIFO_RXFIFOSIZE(4); //
//   60   //  (UART3_BASE_PTR)->RWFIFO = 1;
//   61   //  (UART3_BASE_PTR)->CFIFO = UART_CFIFO_RXUFE_MASK; //
//   62     // ¥•∑¢Ω” ’∆˜º∞∑¢ÀÕ∆˜ πƒ‹£¨¥•∑¢…˙≥…≤®Ãÿ¬ 
//   63     UART_C2_REG(UART3_BASE_PTR) |= (UART_C2_TE_MASK | UART_C2_RE_MASK );
        LDR.N    R0,??DataTable3_8  ;; 0x4006d003
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0xC
        LDR.N    R1,??DataTable3_8  ;; 0x4006d003
        STRB     R0,[R1, #+0]
//   64     //
//   65     (UART3_BASE_PTR)->C5 = 0x00u;
        LDR.N    R0,??DataTable3_14  ;; 0x4006d00b
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
//   71 void v_Uart_TxOne(unsigned char sendInfor)
//   72 {
//   73     // µ»¥˝∑¢ÀÕª∫≥Â«¯ø’ Transmit Data Register Empty Flag == 1  ±ÕÀ≥ˆ—≠ª∑
//   74     while(!( (UART3_BASE_PTR->S1) & UART_S1_TDRE_MASK));
v_Uart_TxOne:
??v_Uart_TxOne_0:
        LDR.N    R1,??DataTable3_15  ;; 0x4006d004
        LDRB     R1,[R1, #+0]
        LSLS     R1,R1,#+24
        BPL.N    ??v_Uart_TxOne_0
//   75     
//   76     // µ±TDREŒ™1 ±£¨÷¥––∑¢ÀÕ ˝æ›÷∏¡Ó°£
//   77     // ∑¢ÀÕ ˝æ›
//   78     (UART3_BASE_PTR)->D = (uint8)sendInfor;
        LDR.N    R1,??DataTable3_16  ;; 0x4006d007
        STRB     R0,[R1, #+0]
//   79 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   80 void v_Uart_TxInt16(unsigned short int sendUint)
//   81 {
v_Uart_TxInt16:
        PUSH     {R4,LR}
        MOVS     R4,R0
//   82     // œ»∏ﬂ∫ÛµÕ
//   83     v_Uart_TxOne((uint8)((sendUint>>8)&(0x00FFu)));
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LSRS     R0,R4,#+8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       v_Uart_TxOne
//   84     v_Uart_TxOne((uint8)((sendUint)&(0x00FFu)));
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       v_Uart_TxOne
//   85 }
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   86 void v_Uart_TxInt16_LowHigh(unsigned short int sendUint)
//   87 {
v_Uart_TxInt16_LowHigh:
        PUSH     {R4,LR}
        MOVS     R4,R0
//   88     // œ»µÕ∫Û∏ﬂ
//   89     v_Uart_TxOne((uint8)((sendUint)&(0x00FFu)));
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       v_Uart_TxOne
//   90     v_Uart_TxOne((uint8)((sendUint>>8)&(0x00FFu)));
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LSRS     R0,R4,#+8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       v_Uart_TxOne
//   91     
//   92 }
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   93 void v_Uart_TxInt32(unsigned long int sendUint)
//   94 {
v_Uart_TxInt32:
        PUSH     {R4,LR}
        MOVS     R4,R0
//   95     v_Uart_TxInt16((uint16)((sendUint>>16)&(0x0000FFFFu)));
        LSRS     R0,R4,#+16
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       v_Uart_TxInt16
//   96     //vDelayMuchMs(100);
//   97     v_Uart_TxInt16((uint16)((sendUint)&(0x0000FFFFu)));
        MOVS     R0,R4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       v_Uart_TxInt16
//   98 }
        POP      {R4,PC}          ;; return
//   99 
//  100 /*
//  101  * »˝÷÷Ω” ’∏Ò Ω
//  102  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  103 void __v_uart_getchar (char *ch)
//  104 {
//  105     while (!(UART_S1_REG(UART3_BASE_PTR) & UART_S1_RDRF_MASK));       //µ»¥˝Ω” ’¬˙¡À
__v_uart_getchar:
??__v_uart_getchar_0:
        LDR.N    R1,??DataTable3_15  ;; 0x4006d004
        LDRB     R1,[R1, #+0]
        LSLS     R1,R1,#+26
        BPL.N    ??__v_uart_getchar_0
//  106     *ch =  UART_D_REG(UART3_BASE_PTR);
        LDR.N    R1,??DataTable3_16  ;; 0x4006d007
        LDRB     R1,[R1, #+0]
        STRB     R1,[R0, #+0]
//  107 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  108 uint8 __v_uart_getOnce (char *ch)
//  109 {
//  110     uint32 timer_Delay = 1000000; // ”≤º˛—”≥Ÿ
__v_uart_getOnce:
        LDR.N    R1,??DataTable3_17  ;; 0xf4240
//  111     while(timer_Delay--)
??__v_uart_getOnce_0:
        MOVS     R2,R1
        SUBS     R1,R2,#+1
        CMP      R2,#+0
        BEQ.N    ??__v_uart_getOnce_1
//  112     {
//  113         if (UART_S1_REG(UART3_BASE_PTR) & UART_S1_RDRF_MASK)
        LDR.N    R2,??DataTable3_15  ;; 0x4006d004
        LDRB     R2,[R2, #+0]
        LSLS     R2,R2,#+26
        BPL.N    ??__v_uart_getOnce_0
//  114         {
//  115             *ch =  UART_D_REG(UART3_BASE_PTR);return 0;
        LDR.N    R1,??DataTable3_16  ;; 0x4006d007
        LDRB     R1,[R1, #+0]
        STRB     R1,[R0, #+0]
        MOVS     R0,#+0
        B.N      ??__v_uart_getOnce_2
//  116         }
//  117     }
//  118     return 1;
??__v_uart_getOnce_1:
        MOVS     R0,#+1
??__v_uart_getOnce_2:
        BX       LR               ;; return
//  119 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     0x40048034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     0x4004b040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     0x4004b044

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DC32     0x4004d010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_5:
        DC32     0x4004d014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_6:
        DC32     0x4004a028

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_7:
        DC32     0x4004a02c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_8:
        DC32     0x4006d003

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_9:
        DC32     0x4006d002

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_10:
        DC32     bus_clk_khz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_11:
        DC32     0x4006d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_12:
        DC32     0x4006d001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_13:
        DC32     0x4006d00a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_14:
        DC32     0x4006d00b

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_15:
        DC32     0x4006d004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_16:
        DC32     0x4006d007

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_17:
        DC32     0xf4240

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  120 
//  121 /*
//  122 uint8 u8_uart_getAll ( BlueTooth_Buffer * _RecBuffer )
//  123 {
//  124     char ch = 0;
//  125     uint8 isGetData = 0;
//  126     while( !__v_uart_getOnce(&ch) )
//  127     {
//  128         _RecBuffer->Buffer[g_RecBuffer.BufferSize] = ch;
//  129         if( 0xFF == ch ){_RecBuffer->MaySign_Buffer[_RecBuffer->MaySign_BufferSize] = g_RecBuffer.BufferSize;_RecBuffer->MaySign_BufferSize++;} // º«¬ºπÿº¸–≈œ¢
//  130         if( _RecBuffer->BufferSize < DE_MAX_bufferSize ){_RecBuffer->BufferSize++;}
//  131         else{_RecBuffer->flags_single.flags_OverRun = 1;return 1;} // œﬁ∑˘
//  132         if(_RecBuffer->BufferSize > (DE_MAX_bufferSize>>1)){_RecBuffer->flags_single.flags_Half = 1;}
//  133                                                        else{_RecBuffer->flags_single.flags_Half = 0;} // ∞Îæ≈ Æº«¬º
//  134         isGetData = 1;
//  135     }
//  136     if( 0 == _RecBuffer->BufferSize ){_RecBuffer->flags_single.flags_Full = 1;}
//  137                                      else{_RecBuffer->flags_single.flags_Full = 0;} // ø’º«¬º
//  138     if(1 == isGetData){return 0;}
//  139                   else{return 1;}
//  140 }
//  141 */
//  142 
//  143 /******************************************************************************/
//  144 //s_Data_GyroAccel Data_UART_rec;
//  145 /******************************************************************************/
//  146 /* 
//  147  * ∆ ºŒª∂®“Â£∫1*16 2
//  148  * Ω” ’–≠“È“ª£∫Õ”¬›“«º”ÀŸ∂»º∆ / 6*16 = 12*8 = 12Bytes => 16Bytes 
//  149  */
//  150 /*
//  151 void v_Tooth_GyroAccel (BlueTooth_Buffer * Rec) // 16Bytes 
//  152 {
//  153     /
//  154       ∑¢ÀÕ–≠“È£∫0xFFEA + xÕ”¬›“«(2) + yÕ”¬›“«(2) + zÕ”¬›“«(2) + xº”ÀŸ∂»(2) + yº”ÀŸ∂»(2) + zº”ÀŸ∂»(2)
//  155      /
//  156     uint32 max_RecNum = Rec->BufferSize; // ◊Ó¥Û ˝÷µ
//  157     uint32 max_FF_RecNum = Rec->MaySign_BufferSize; // FF¥Ê‘⁄ ˝¡ø
//  158     // À——∞£∫
//  159     for(uint8 loop = 0;loop < max_FF_RecNum;loop++)
//  160     {
//  161         if(Rec->MaySign_Buffer[loop] < (max_RecNum - 1)) // 0xFFΩˆŒ™ø…ƒ‹£¨œ¬“ªŒª≤≈ «÷ÿµ„
//  162         { // «ÈøˆŒ™’Ê
//  163             if(0xEA == Rec->Buffer[(Rec->MaySign_Buffer[loop]+1)]) // »∑»œ «∑Òø…ƒ‹
//  164             {
//  165                 uint8 vaild_bit = 0;
//  166                 uint32 next = Rec->MaySign_Buffer[loop] + 16;
//  167                 if( next < (max_RecNum - 1)) //Ω¯––ºÏ≤‚
//  168                 {
//  169                     vaild_bit = 1;
//  170                     if(( 0xFF == Rec->Buffer[next] ) && ( 0xEA == Rec->Buffer[next+1] ))
//  171                     {
//  172                         vaild_bit = 0;
//  173                     }
//  174                 }
//  175                 if(0 == vaild_bit)
//  176                 {
//  177                     // µ√≥ˆ◊Ó÷’ ˝æ›
//  178                     register uint16 num = Data_UART_rec.Rec_num;
//  179                     Data_UART_rec.Gyro_x[num] = ((Rec->Buffer[ Rec->MaySign_Buffer[loop] +  2 ])<<8)
//  180                                                 |((Rec->Buffer[ Rec->MaySign_Buffer[loop] + 3 ]));
//  181                     Data_UART_rec.Gyro_y[num] = ((Rec->Buffer[ Rec->MaySign_Buffer[loop] +  4 ])<<8)
//  182                                                 |((Rec->Buffer[ Rec->MaySign_Buffer[loop] + 5 ]));
//  183                     Data_UART_rec.Gyro_z[num] = ((Rec->Buffer[ Rec->MaySign_Buffer[loop] +  6 ])<<8)
//  184                                                 |((Rec->Buffer[ Rec->MaySign_Buffer[loop] + 7 ]));
//  185                     Data_UART_rec.Accel_x[num] =((Rec->Buffer[ Rec->MaySign_Buffer[loop] +  8 ])<<8)
//  186                                                 |((Rec->Buffer[ Rec->MaySign_Buffer[loop] + 9 ]));
//  187                     Data_UART_rec.Accel_y[num] =((Rec->Buffer[ Rec->MaySign_Buffer[loop] +  10 ])<<8)
//  188                                                 |((Rec->Buffer[ Rec->MaySign_Buffer[loop] + 11 ]));
//  189                     Data_UART_rec.Accel_z[num] =((Rec->Buffer[ Rec->MaySign_Buffer[loop] +  12 ])<<8)
//  190                                                 |((Rec->Buffer[ Rec->MaySign_Buffer[loop] + 13 ]));
//  191                     Data_UART_rec.Rec_num ++;
//  192                     // «Âø’‘≠ º ˝æ›
//  193                     Rec->BufferSize = 0;
//  194                     Rec->MaySign_BufferSize = 0;
//  195                 }
//  196             }
//  197         }
//  198     }
//  199 }
//  200 */
// 
// 424 bytes in section .text
// 
// 424 bytes of CODE memory
//
//Errors: none
//Warnings: none
