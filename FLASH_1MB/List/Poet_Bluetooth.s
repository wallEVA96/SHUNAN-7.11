///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     20/Jul/2015  17:10:46 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\Ë³°µÈýºÅ-»ªÄÏÈ /
//                    ü×îºóÆßÌì-7.11\ShunAn_Panel\Poet_Bluetooth.c            /
//    Command line =  D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\Ë³°µÈýºÅ-»ªÄÏÈ /
//                    ü×îºóÆßÌì-7.11\ShunAn_Panel\Poet_Bluetooth.c -D IAR -D  /
//                    TWR_K60F120M -lCN D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´ /
//                    úÂë\Ë³°µÈýºÅ-»ªÄÏÈü×îºóÆßÌì-7.11\FLASH_1MB\List\ -lB    /
//                    D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\Ë³°µÈýºÅ-»ªÄÏÈ /
//                    ü×îºóÆßÌì-7.11\FLASH_1MB\List\ -o                       /
//                    D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\Ë³°µÈýºÅ-»ªÄÏÈ /
//                    ü×îºóÆßÌì-7.11\FLASH_1MB\Obj\ --no_cse --no_unroll      /
//                    --no_inline --no_code_motion --no_tbaa --no_clustering  /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=VFPv4_sp --dlib_config         /
//                    "C:\Program Files (x86)\IAR Systems\Embedded Workbench  /
//                    6.5\arm\INC\c\DLib_Config_Normal.h" -I                  /
//                    D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\Ë³°µÈýºÅ-»ªÄÏÈ /
//                    ü×îºóÆßÌì-7.11\ -I D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\ /
//                    ´úÂë\Ë³°µÈýºÅ-»ªÄÏÈü×îºóÆßÌì-7.11\Library\ -I           /
//                    D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\Ë³°µÈýºÅ-»ªÄÏÈ /
//                    ü×îºóÆßÌì-7.11\Library\BlessedAlien\ -I                 /
//                    D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\Ë³°µÈýºÅ-»ªÄÏÈ /
//                    ü×îºóÆßÌì-7.11\ShunAn_Panel\ -Ol --use_c++_inline       /
//    List file    =  D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\Ë³°µÈýºÅ-»ªÄÏÈ /
//                    ü×îºóÆßÌì-7.11\FLASH_1MB\List\Poet_Bluetooth.s          /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_f2d
        EXTERN bus_clk_khz
        EXTERN enable_irq
        EXTERN m_Control
        EXTERN m_ImageAbstract
        EXTERN m_ImageTesting
        EXTERN sprintf

        PUBLIC __v_uart_rx_irq_en
        PUBLIC b_TxImageInformation
        PUBLIC b_uart_getchar
        PUBLIC m_need_tx
        PUBLIC v_UartInit
        PUBLIC v_UartSaveImage_sint16
        PUBLIC v_UartTxImageSix2PC
        PUBLIC v_UartTxInformationAboutPara
        PUBLIC v_UartTxNeedtx
        PUBLIC v_UartTxOne
        PUBLIC v_UartTxSInt16
        PUBLIC v_UartTxStr
        PUBLIC v_Uart_GetPicture_InRunning
        PUBLIC v_Uart_SendPictures

// D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\Ë³°µÈýºÅ-»ªÄÏÈü×îºóÆßÌì-7.11\ShunAn_Panel\Poet_Bluetooth.c
//    1 /**
//    2 /. -----------------------//k60µ×²ã¿â//-------------------------
//    3 
//    4 /. ²âÊÔÓ²¼þÆ½Ì¨£ºK60
//    5  . °æÈ¨ËùÓÐ£ºÖì¸ð¾þ 
//    6  . ÖÆ×÷Õß£ºÖì¸ð¾þ
//    7  . ÎÄ¼þÃû£ºalienUART.c
//    8  . ÓÃÍ¾£º
//    9  . ×îºóÐÞ¸ÄÈÕÆÚ: 20140117
//   10 */
//   11 #include "MK60F15.h"
//   12 #include "ShunAn_Lib.h"
//   13 #include "start_ShunAn.h"
//   14 #include "BlessedAlien.h"
//   15 
//   16 #include "Pendulum_EndlessFormsMostBeautiful.h"
//   17 
//   18 #include "Poet_ImageBeholder.h"
//   19 #include "Poet_Bluetooth.h"
//   20 #include <stdio.h>
//   21 #define Bluetooth_BasePtr             UART3_BASE_PTR
//   22 //============================================================================//
//   23 //E5
//   24 //E4
//   25 //GND
//   26 //VCC

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   27 s_need_tx m_need_tx;
m_need_tx:
        DS8 28504

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   28 void v_UartInit(uint32 BaudRate)
//   29 {   
v_UartInit:
        PUSH     {R4,R5}
//   30     // ³£²ÎÁ¿
//   31     uint32 tempReg  = 0;
        MOVS     R1,#+0
//   32     uint32 BdRtBits = 0;
        MOVS     R2,#+0
//   33     uint32 BRFAdjst = 0;
        MOVS     R3,#+0
//   34     
//   35     // ÉèÖÃÊ±ÖÓ
//   36     SIM_SCGC4 |= SIM_SCGC4_UART3_MASK;
        LDR.W    R4,??DataTable8  ;; 0x40048034
        LDR      R4,[R4, #+0]
        ORRS     R4,R4,#0x2000
        LDR.W    R5,??DataTable8  ;; 0x40048034
        STR      R4,[R5, #+0]
//   37     SIM_SCGC5 |= SIM_SCGC5_PORTE_MASK ;
        LDR.W    R4,??DataTable8_1  ;; 0x40048038
        LDR      R4,[R4, #+0]
        ORRS     R4,R4,#0x2000
        LDR.W    R5,??DataTable8_1  ;; 0x40048038
        STR      R4,[R5, #+0]
//   38     // ÉèÖÃÒý½Å²ÎÊý
//   39     PORTE_PCR4 = PORT_PCR_MUX(3);//Òý½Å¸´ÓÃÑ¡ÔñUART4_TX
        LDR.W    R4,??DataTable8_2  ;; 0x4004d010
        MOV      R5,#+768
        STR      R5,[R4, #+0]
//   40     PORTE_PCR5 = PORT_PCR_MUX(3);//Òý½Å¸´ÓÃÑ¡ÔñUART4_RX
        LDR.W    R4,??DataTable8_3  ;; 0x4004d014
        MOV      R5,#+768
        STR      R5,[R4, #+0]
//   41     
//   42     // ¹Ø±Õ½ÓÊÕ¼°·¢ËÍÆ÷£¬µÈ´ý´¥·¢Ê±²¨ÌØÂÊÉú³É
//   43     (Bluetooth_BasePtr)->C2 &= ~( UART_C2_TE_MASK | UART_C2_RE_MASK );
        LDR.W    R4,??DataTable8_4  ;; 0x4006d003
        LDRB     R4,[R4, #+0]
        ANDS     R4,R4,#0xF3
        LDR.W    R5,??DataTable8_4  ;; 0x4006d003
        STRB     R4,[R5, #+0]
//   44     
//   45     // C1ÉèÖÃÄ¬ÈÏ
//   46     (Bluetooth_BasePtr)->C1  = 0;
        LDR.W    R4,??DataTable8_5  ;; 0x4006d002
        MOVS     R5,#+0
        STRB     R5,[R4, #+0]
//   47     
//   48     // ÉèÖÃ²¨ÌØÂÊ
//   49     // ÉèÖÃ Band Rate Bits
//   50     BdRtBits = (uint16)((bus_clk_khz * 1000)/(BaudRate << 4));
        LDR.W    R4,??DataTable8_6
        LDR      R4,[R4, #+0]
        MOV      R5,#+1000
        MULS     R4,R5,R4
        LSLS     R5,R0,#+4
        UDIV     R4,R4,R5
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        MOVS     R2,R4
//   51     tempReg = UART_BDH_REG(Bluetooth_BasePtr) & ~(UART_BDH_SBR(0x1F));
        LDR.W    R4,??DataTable8_7  ;; 0x4006d000
        LDRB     R4,[R4, #+0]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSRS     R4,R4,#+5
        LSLS     R4,R4,#+5
        MOVS     R1,R4
//   52     (Bluetooth_BasePtr)->BDH = tempReg |  UART_BDH_SBR(((BdRtBits & 0x1F00) >> 8));
        LSRS     R4,R2,#+8
        ANDS     R4,R4,#0x1F
        ORRS     R1,R4,R1
        LDR.W    R4,??DataTable8_7  ;; 0x4006d000
        STRB     R1,[R4, #+0]
//   53     (Bluetooth_BasePtr)->BDL = (uint8)(BdRtBits & UART_BDL_SBR_MASK);
        LDR.W    R1,??DataTable8_8  ;; 0x4006d001
        STRB     R2,[R1, #+0]
//   54     
//   55     // ÉèÖÃ Band Rate Find Adjust
//   56     BRFAdjst = ((((bus_clk_khz*1000)<<5)/(BaudRate <<4)) - (BdRtBits <<5));
        LDR.W    R1,??DataTable8_6
        LDR      R1,[R1, #+0]
        MOV      R4,#+1000
        MULS     R1,R4,R1
        LSLS     R1,R1,#+5
        LSLS     R0,R0,#+4
        UDIV     R0,R1,R0
        SUBS     R0,R0,R2, LSL #+5
        MOVS     R3,R0
//   57     tempReg = UART_C4_REG(Bluetooth_BasePtr) & ~(UART_C4_BRFA(0x1F));
        LDR.W    R0,??DataTable8_9  ;; 0x4006d00a
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R1,R0,#+5
        LSLS     R1,R1,#+5
//   58     (Bluetooth_BasePtr)->C4 = tempReg |  UART_C4_BRFA(BRFAdjst);
        ANDS     R0,R3,#0x1F
        ORRS     R0,R0,R1
        LDR.W    R1,??DataTable8_9  ;; 0x4006d00a
        STRB     R0,[R1, #+0]
//   59     // ²¨ÌØÂÊÉèÖÃÍê±Ï
//   60     
//   61     // ´¥·¢½ÓÊÕÆ÷¼°·¢ËÍÆ÷Ê¹ÄÜ£¬´¥·¢Éú³É²¨ÌØÂÊ
//   62     UART_C2_REG(Bluetooth_BasePtr) |= (UART_C2_TE_MASK | UART_C2_RE_MASK );
        LDR.W    R0,??DataTable8_4  ;; 0x4006d003
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0xC
        LDR.W    R1,??DataTable8_4  ;; 0x4006d003
        STRB     R0,[R1, #+0]
//   63     //
//   64     (Bluetooth_BasePtr)->C5 = 0x00u;
        LDR.W    R0,??DataTable8_10  ;; 0x4006d00b
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//   65     return;
        POP      {R4,R5}
        BX       LR               ;; return
//   66 }
//   67 
//   68 /*************************************************************************
//   69 //º¯ÊýÃû£º__v_Uart_TxOne_
//   70 //ÖÆ×÷£ºÖì¸ð¾þ
//   71 //ÓÃÍ¾£º·¢ËÍÒ»¸ö×Ö·û
//   72 //Ä¿Ç°²ÎÊý£ºBaudRate
//   73 //¿ÉÀ©Õ¹²ÎÊý£ºÒý½ÅÅäÖÃÐÅÏ¢
//   74 //Ê¹ÓÃ²¨ÌØÂÊ£º9600
//   75 //
//   76 *************************************************************************/
//   77 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   78 void v_UartTxOne(unsigned char sendInfor)
//   79 {
//   80     // µÈ´ý·¢ËÍ»º³åÇø¿Õ Transmit Data Register Empty Flag == 1 Ê±ÍË³öÑ­»·
//   81     while(!( (Bluetooth_BasePtr->S1) & UART_S1_TDRE_MASK));
v_UartTxOne:
??v_UartTxOne_0:
        LDR.W    R1,??DataTable8_11  ;; 0x4006d004
        LDRB     R1,[R1, #+0]
        LSLS     R1,R1,#+24
        BPL.N    ??v_UartTxOne_0
//   82     
//   83     // µ±TDREÎª1Ê±£¬Ö´ÐÐ·¢ËÍÊý¾ÝÖ¸Áî¡£
//   84     // ·¢ËÍÊý¾Ý
//   85     (Bluetooth_BasePtr)->D = (uint8)sendInfor;
        LDR.W    R1,??DataTable8_12  ;; 0x4006d007
        STRB     R0,[R1, #+0]
//   86 }
        BX       LR               ;; return
//   87 
//   88 /*************************************************************************
//   89 //º¯ÊýÃû£º__v_Uart_TxOne_
//   90 //ÖÆ×÷£ºÖì¸ð¾þ
//   91 //ÓÃÍ¾£º·¢ËÍÒ»¸ö×Ö·û
//   92 //Ä¿Ç°²ÎÊý£ºBaudRate
//   93 //¿ÉÀ©Õ¹²ÎÊý£ºÒý½ÅÅäÖÃÐÅÏ¢
//   94 //Ê¹ÓÃ²¨ÌØÂÊ£º9600
//   95 //
//   96 *************************************************************************/
//   97 /*
//   98 void __v_Uart_TxInt16_(unsigned short int sendUint)
//   99 {
//  100     __v_Uart_TxOne_((uint8)((sendUint>>8)&(0x00FFu)));
//  101     //vDelayMuchMs(100);
//  102     __v_Uart_TxOne_((uint8)((sendUint)&(0x00FFu)));
//  103 }
//  104 
//  105 void __v_Uart_TxInt32_(unsigned long int sendUint)
//  106 {
//  107     __v_Uart_TxInt16_((uint16)((sendUint>>16)&(0x0000FFFFu)));
//  108     //vDelayMuchMs(100);
//  109     __v_Uart_TxInt16_((uint16)((sendUint)&(0x0000FFFFu)));
//  110 }
//  111 */
//  112 /*!
//  113  *  @brief      ¿ª´®¿Ú½ÓÊÕÖÐ¶Ï
//  114  *  @param      UARTn_e       Ä£¿éºÅ£¨UART0~UART5£©
//  115  *  @since      v5.0
//  116  *  Sample usage:       uart_rx_irq_en(UART4);         //¿ª´®¿Ú3½ÓÊÕÖÐ¶Ï
//  117  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  118 void __v_uart_rx_irq_en()
//  119 {
__v_uart_rx_irq_en:
        PUSH     {R7,LR}
//  120     UART_C2_REG(Bluetooth_BasePtr) |= UART_C2_RIE_MASK;                          //Ê¹ÄÜUART½ÓÊÕÖÐ¶Ï
        LDR.W    R0,??DataTable8_4  ;; 0x4006d003
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x20
        LDR.W    R1,??DataTable8_4  ;; 0x4006d003
        STRB     R0,[R1, #+0]
//  121     enable_irq((3 << 1) + 45);                  //Ê¹ÄÜIRQÖÐ¶Ï
        MOVS     R0,#+51
        BL       enable_irq
//  122 }
        POP      {R0,PC}          ;; return
//  123 
//  124 /*!
//  125  *  @brief      µÈ´ý½ÓÊÜ1¸ö×Ö½Ú
//  126  *  @param      UARTn_e       Ä£¿éºÅ£¨UART0~UART5£©
//  127  *  @param      ch          ½ÓÊÕµØÖ·
//  128  *  @since      v5.0
//  129  *  @note       Èç¹ûÐèÒª²éÑ¯½ÓÊÕ×´Ì¬£¬¿ÉÓÃ uart_query £¬
//  130                 Èç¹ûÐèÒª²éÑ¯½ÓÊÕÊý¾Ý£¬¿ÉÓÃ uart_querychar
//  131  *  Sample usage:       char ch = uart_getchar (UART4);   //µÈ´ý½ÓÊÜ1¸ö×Ö½Ú£¬±£´æµ½ chÀï
//  132  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  133 uint8 b_uart_getchar (char *ch)
//  134 {
//  135     //µÈ´ý½ÓÊÕµ½Êý¾Ý£¨Ê¹ÄÜÁËFIFOºó£¬ÒÔÏÂÁ½ÖÖ·½·¨¶¼¿ÉÐÐ£¬¶¼ÊÇÒ»ÑùµÄÒâË¼£©
//  136     //while( !UART_RCFIFO_REG(UARTN[uratn]) );                                //µÈ´ý½ÓÊÕµ½Êý¾ÝÊýÁ¿·Ç0
//  137     //while( (UART_SFIFO_REG(UARTN[uratn]) & UART_SFIFO_RXEMPT_MASK)) ;     //µÈ´ý½ÓÊÕ»º³åÇø/FIFO ·Ç¿ÕµÄ
//  138 
//  139     //ÈçÏÂ·½·¨ÊÇ·ÉË¼¿¨¶û¹Ù·½Àý³ÌÌá¹©µÄ·½·¨
//  140     uint32 time = 0;
b_uart_getchar:
        MOVS     R1,#+0
//  141     while (!(UART_S1_REG(Bluetooth_BasePtr) & UART_S1_RDRF_MASK))       //µÈ´ý½ÓÊÕÂúÁË
??b_uart_getchar_0:
        LDR.W    R2,??DataTable8_11  ;; 0x4006d004
        LDRB     R2,[R2, #+0]
        LSLS     R2,R2,#+26
        BMI.N    ??b_uart_getchar_1
//  142     {
//  143         ++time;
        ADDS     R1,R1,#+1
//  144         if(time >= 100000)
        LDR.W    R2,??DataTable8_13  ;; 0x186a0
        CMP      R1,R2
        BCC.N    ??b_uart_getchar_0
//  145         {
//  146             return 0;//·µ»Ø¼Ù
        MOVS     R0,#+0
        B.N      ??b_uart_getchar_2
//  147         }
//  148     }
//  149     // »ñÈ¡½ÓÊÕµ½µÄ8Î»Êý¾Ý
//  150     *ch =  UART_D_REG(Bluetooth_BasePtr);
??b_uart_getchar_1:
        LDR.W    R1,??DataTable8_12  ;; 0x4006d007
        LDRB     R1,[R1, #+0]
        STRB     R1,[R0, #+0]
//  151     return 1;
        MOVS     R0,#+1
??b_uart_getchar_2:
        BX       LR               ;; return
//  152     // »ñÈ¡ 9Î»Êý¾Ý£¬Ó¦¸ÃÊÇ£¨ÐèÒªÐÞ¸Äº¯ÊýµÄ·µ»ØÀàÐÍ£©£º
//  153     // *ch =   ((( UARTx_C3_REG(UARTN[uratn]) & UART_C3_R8_MASK ) >> UART_C3_R8_SHIFT ) << 8)   |   UART_D_REG(UARTN[uratn]);  //·µ»Ø9bit
//  154 
//  155 }
//  156 
//  157 /*
//  158 void BLagreeT(uint8  DirPWM    , uint8  D_DirPWM,
//  159               
//  160               uint8  Central   , uint8 centralChangeRate,       // Í¨ÓÃÏÔÊ¾
//  161               
//  162               uint8  isAdvance , uint16 Motor_PWM,
//  163               
//  164               uint16  GiveSpeed , uint16  D_GiveSpeed,
//  165               uint16  NowSpeed  )
//  166 {
//  167     // ´«Êä¿ªÊ¼
//  168     __v_Uart_TxInt16_(0xFEFEu);        // ÆðÊ¼
//  169     
//  170     __v_Uart_TxOne_(DirPWM);
//  171     __v_Uart_TxOne_(D_DirPWM);
//  172     
//  173     __v_Uart_TxOne_(Central);
//  174     __v_Uart_TxOne_(centralChangeRate);
//  175     
//  176     __v_Uart_TxOne_(isAdvance);         // 1 Ç°½ø£¬2 ºóÍË£¬3 Í£Ö¹
//  177     
//  178     
//  179     __v_Uart_TxInt16_(NowSpeed);
//  180     __v_Uart_TxInt16_(GiveSpeed);
//  181     __v_Uart_TxInt16_(D_GiveSpeed);
//  182     
//  183     __v_Uart_TxInt16_(Motor_PWM);
//  184     
//  185     //__v_Uart_TxInt16_(0xFDFDu);        // Í£Ö¹
//  186 }
//  187 
//  188 */
//  189 /*************************************************************************
//  190 //º¯ÊýÃû£ºunsigned char GR_ReceiveStop()
//  191 //ÓÃÍ¾£º½ÓÊÕÍ£³µ±êÖ¾£¬·ÇÁã¼´ÎªÍ£³µ
//  192 //Ä¿Ç°²ÎÊý£ºBaudRate
//  193 //¿ÉÀ©Õ¹²ÎÊý£ºÒý½ÅÅäÖÃÐÅÏ¢
//  194 //
//  195 *************************************************************************/
//  196 /*
//  197 unsigned char GR_ReceiveStop()
//  198 {
//  199   uint8 RecChar = 0;
//  200   if(UART_S1_REG(UART4_BASE_PTR) & UART_S1_RDRF_MASK)   //½ÓÊÕÊý¾Ý¼Ä´æÆ÷Âú
//  201   {
//  202     __v_uart_getchar(&RecChar);
//  203     if(0xFFu == RecChar)
//  204     {
//  205       return 1;
//  206     }
//  207     return 0;
//  208   }
//  209   else
//  210   {
//  211     return 0;
//  212   }
//  213 }
//  214 */
//  215 /*************************************************************************
//  216 //º¯ÊýÃû£ºunsigned char b_()
//  217 //ÓÃÍ¾£º½ÓÊÕÍ£³µ±êÖ¾£¬·ÇÁã¼´ÎªÍ£³µ
//  218 //Ä¿Ç°²ÎÊý£ºBaudRate
//  219 //¿ÉÀ©Õ¹²ÎÊý£ºÒý½ÅÅäÖÃÐÅÏ¢
//  220 //
//  221 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  222 uint8 b_TxImageInformation(uint8 CMOS_Pixel_org[][Beholder_PixNum_MAX])
//  223 {
b_TxImageInformation:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
//  224     v_UartTxOne(0xFF);v_UartTxOne(0xFE);
        MOVS     R0,#+255
        BL       v_UartTxOne
        MOVS     R0,#+254
        BL       v_UartTxOne
//  225     v_UartTxOne('I');
        MOVS     R0,#+73
        BL       v_UartTxOne
//  226     v_UartTxOne('M');
        MOVS     R0,#+77
        BL       v_UartTxOne
//  227     v_UartTxOne('A');
        MOVS     R0,#+65
        BL       v_UartTxOne
//  228     v_UartTxOne('G');
        MOVS     R0,#+71
        BL       v_UartTxOne
//  229     v_UartTxOne('E');
        MOVS     R0,#+69
        BL       v_UartTxOne
//  230     
//  231     
//  232     for(uint8 loop_LineNum = 0;loop_LineNum < Beholder_LineY_MAX;loop_LineNum++)
        MOVS     R5,#+0
        B.N      ??b_TxImageInformation_0
//  233     {
//  234         for(uint8 loop_PixNum = 0;loop_PixNum < Beholder_PixNum_MAX;loop_PixNum++)
//  235         {
//  236             uint8 rec_temp = CMOS_Pixel_org[loop_LineNum][loop_PixNum];
??b_TxImageInformation_1:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R0,#+185
        MLA      R0,R0,R5,R4
        LDRB     R0,[R6, R0]
//  237             v_UartTxOne(rec_temp);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       v_UartTxOne
//  238         }
        ADDS     R6,R6,#+1
??b_TxImageInformation_2:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+185
        BLT.N    ??b_TxImageInformation_1
        ADDS     R5,R5,#+1
??b_TxImageInformation_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+60
        BGE.N    ??b_TxImageInformation_3
        MOVS     R6,#+0
        B.N      ??b_TxImageInformation_2
//  239     }
//  240     
//  241     return 'T';
??b_TxImageInformation_3:
        MOVS     R0,#+84
        POP      {R4-R6,PC}       ;; return
//  242 }
//  243 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  244 void v_UartTxSInt16(unsigned short int * sendUint)
//  245 {
v_UartTxSInt16:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  246     v_UartTxOne((*sendUint)&0x00FF);
        LDRH     R0,[R4, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       v_UartTxOne
//  247     v_UartTxOne(((*sendUint)>>8)&0x00FF);
        LDRH     R0,[R4, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       v_UartTxOne
//  248 }
        POP      {R4,PC}          ;; return
//  249 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  250 void v_UartTxStr(char TxArray[],uint32 TxLength)//·¢ËÍ×Ö·û´®
//  251 {
v_UartTxStr:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  252     for(uint32 CheckLoop = 0;CheckLoop < TxLength;CheckLoop++)
        MOVS     R6,#+0
        B.N      ??v_UartTxStr_0
??v_UartTxStr_1:
        ADDS     R6,R6,#+1
??v_UartTxStr_0:
        CMP      R6,R5
        BCS.N    ??v_UartTxStr_2
//  253     {
//  254         v_UartTxOne(TxArray[CheckLoop]);
        LDRB     R0,[R6, R4]
        BL       v_UartTxOne
//  255         if('\0' == TxArray[CheckLoop])
        LDRB     R0,[R6, R4]
        CMP      R0,#+0
        BNE.N    ??v_UartTxStr_1
//  256         {
//  257             break;
//  258         }
//  259     }
//  260 }
??v_UartTxStr_2:
        POP      {R4-R6,PC}       ;; return
//  261 
//  262 
//  263 
//  264 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  265 void v_UartTxNeedtx()
//  266 {
v_UartTxNeedtx:
        PUSH     {R7,LR}
//  267     v_Uart_SendPictures();
        BL       v_Uart_SendPictures
//  268     //v_Uart_GetPicture_InRunning(1);
//  269     //v_UartTxInformationAboutPara();//·¢ËÍ²Î¿¼ÐÅÏ¢
//  270    /*
//  271     char Tx[21];
//  272     uint16 loop;
//  273     const uint16 TXCOUNTER = 1500 / 2;
//  274     
//  275     sprintf(Tx,"LeftMotorPWM=[");
//  276     v_UartTxStr(Tx,21);
//  277     for(loop = 0;loop < TXCOUNTER;loop++)
//  278     {
//  279         sprintf(Tx,"%d ",m_need_tx.LeftMotorPWM[loop]);
//  280         v_UartTxStr(Tx,21);
//  281     }
//  282     sprintf(Tx,"];RightMotorPWM=[");
//  283     v_UartTxStr(Tx,21);
//  284     for(loop = 0;loop < TXCOUNTER;loop++)
//  285     {
//  286         sprintf(Tx,"%d ",m_need_tx.RightMotorPWM[loop]);
//  287         v_UartTxStr(Tx,21);
//  288     }
//  289     sprintf(Tx,"];LeftMotorSpd=[");
//  290     v_UartTxStr(Tx,21);
//  291     for(loop = 0;loop < TXCOUNTER;loop++)
//  292     {
//  293         sprintf(Tx,"%d ",m_need_tx.LeftMotorSpeed[loop]);
//  294         v_UartTxStr(Tx,21);
//  295     }
//  296     sprintf(Tx,"];RightMotorSpd=[");
//  297     v_UartTxStr(Tx,21);
//  298     for(loop = 0;loop < TXCOUNTER;loop++)
//  299     {
//  300         sprintf(Tx,"%d ",m_need_tx.RightMotorSpeed[loop]);
//  301         v_UartTxStr(Tx,21);
//  302     }
//  303     sprintf(Tx,"];Servo=[");
//  304     v_UartTxStr(Tx,21);
//  305     for(loop = 0;loop < TXCOUNTER;loop++)
//  306     {
//  307         sprintf(Tx,"%d ",m_need_tx.ServoGraduated[loop]);
//  308         v_UartTxStr(Tx,21);
//  309     }
//  310     sprintf(Tx,"];ServoVar=[");
//  311     v_UartTxStr(Tx,21);
//  312     for(loop = 0;loop < TXCOUNTER;loop++)
//  313     {
//  314         sprintf(Tx,"%d ",m_need_tx.ServoVar[loop]);
//  315         v_UartTxStr(Tx,21);
//  316     }
//  317     
//  318     //sprintf(Tx,"];Buzzer=[");
//  319     //v_UartTxStr(Tx,21);
//  320     //for(loop = 0;loop < TXCOUNTER;loop++)
//  321     //{
//  322     //    sprintf(Tx,"%d ",m_need_tx.Buzzer[loop]);
//  323     //    v_UartTxStr(Tx,21);
//  324     //}
//  325 
//  326     sprintf(Tx,"];MidLine=[");
//  327     v_UartTxStr(Tx,21);
//  328     for(loop = 0;loop < TXCOUNTER;loop++)
//  329     {
//  330         sprintf(Tx,"%d ",m_need_tx.MidLine[loop]);
//  331         v_UartTxStr(Tx,21);
//  332     }
//  333     sprintf(Tx,"];LGivSpeed=[");
//  334     v_UartTxStr(Tx,21);
//  335     for(loop = 0;loop < TXCOUNTER;loop++)
//  336     {
//  337         sprintf(Tx,"%d ",m_need_tx.LeftMotorGiV[loop]);
//  338         v_UartTxStr(Tx,21);
//  339     }
//  340     sprintf(Tx,"];RGivSpeed=[");
//  341     v_UartTxStr(Tx,21);
//  342     for(loop = 0;loop < TXCOUNTER;loop++)
//  343     {
//  344         sprintf(Tx,"%d ",m_need_tx.RightMotorGiV[loop]);
//  345         v_UartTxStr(Tx,21);
//  346     }
//  347     sprintf(Tx,"];t = 1:1:750;");v_UartTxStr(Tx,21);
//  348         
//  349     sprintf(Tx,"RightMotorPWM=");v_UartTxStr(Tx,21);
//  350     sprintf(Tx,"RightMotorPWM./100;");v_UartTxStr(Tx,21);
//  351     
//  352     sprintf(Tx,"LeftMotorPWM=");v_UartTxStr(Tx,21);
//  353     sprintf(Tx,"LeftMotorPWM./100;");v_UartTxStr(Tx,21);
//  354     
//  355     
//  356     sprintf(Tx,"plot(t,");v_UartTxStr(Tx,21);
//  357     sprintf(Tx,"RightMotorPWM,'rx-',");v_UartTxStr(Tx,21);
//  358     sprintf(Tx,"t,LeftMotorPWM,'bx-'");v_UartTxStr(Tx,21);
//  359     sprintf(Tx,",t,LGivSpeed,'b*-'");v_UartTxStr(Tx,21);
//  360     sprintf(Tx,",t,RGivSpeed,'r*-'");v_UartTxStr(Tx,21);
//  361     sprintf(Tx,",t,LeftMotorSpd,'b'");v_UartTxStr(Tx,21);
//  362     sprintf(Tx,",t,RightMotorSpd,'r'");v_UartTxStr(Tx,21);
//  363     sprintf(Tx,",t,Servo,'b+'");v_UartTxStr(Tx,21);
//  364     sprintf(Tx,",t,ServoVar,'r+'");v_UartTxStr(Tx,21);
//  365     sprintf(Tx,",t,MidLine,'g'");v_UartTxStr(Tx,21);
//  366     //sprintf(Tx,",t,Buzzer,'k*'");v_UartTxStr(Tx,21);
//  367     sprintf(Tx,");grid on;");v_UartTxStr(Tx,21);
//  368     sprintf(Tx,"legend(");v_UartTxStr(Tx,21);    
//  369     sprintf(Tx,"'RightMotorPWM'");v_UartTxStr(Tx,21);  
//  370     sprintf(Tx,",");v_UartTxStr(Tx,21);
//  371     sprintf(Tx,"'LeftMotorPWM'");v_UartTxStr(Tx,21);  
//  372     sprintf(Tx,",");v_UartTxStr(Tx,21);
//  373     
//  374     sprintf(Tx,"'LeftMotorGiV'");v_UartTxStr(Tx,21);  
//  375     sprintf(Tx,",");v_UartTxStr(Tx,21);
//  376     sprintf(Tx,"'RightMotorGiV'");v_UartTxStr(Tx,21);  
//  377     sprintf(Tx,",");v_UartTxStr(Tx,21);
//  378     
//  379     sprintf(Tx,"'LeftMotorSpd'");v_UartTxStr(Tx,21);  
//  380     sprintf(Tx,",");v_UartTxStr(Tx,21);
//  381     sprintf(Tx,"'RightMotorSpd'");v_UartTxStr(Tx,21);  
//  382     sprintf(Tx,",");v_UartTxStr(Tx,21);
//  383     sprintf(Tx,"'Angel'");v_UartTxStr(Tx,21);
//  384     sprintf(Tx,",");v_UartTxStr(Tx,21);
//  385     sprintf(Tx,"'ServoDeg'");v_UartTxStr(Tx,21);  
//  386     sprintf(Tx,",");v_UartTxStr(Tx,21);
//  387     sprintf(Tx,"'MidLine'");v_UartTxStr(Tx,21);
//  388     //sprintf(Tx,",");v_UartTxStr(Tx,21);
//  389     //sprintf(Tx,"'BuzzerPoint'");v_UartTxStr(Tx,21);
//  390     sprintf(Tx,");");v_UartTxStr(Tx,21);
//  391     
//  392     sprintf(Tx,"figure(2);");v_UartTxStr(Tx,21);
//  393     sprintf(Tx,"LeftI=[");v_UartTxStr(Tx,21);
//  394     for(loop = 0;loop < 750;loop++)
//  395     {
//  396         sprintf(Tx,"%d ",m_need_tx.Information_Unnamed_Mark001[loop]);
//  397         v_UartTxStr(Tx,21);
//  398     }
//  399     sprintf(Tx,"];RightI=[");v_UartTxStr(Tx,21);
//  400     for(loop = 750;loop < 1500;loop++)
//  401     {
//  402         sprintf(Tx,"%d ",m_need_tx.Information_Unnamed_Mark001[loop]);
//  403         v_UartTxStr(Tx,21);
//  404     }
//  405     sprintf(Tx,"];plot(");v_UartTxStr(Tx,21);
//  406     sprintf(Tx,"t,LeftI,'b*-',");v_UartTxStr(Tx,21);
//  407     sprintf(Tx,"t,RightI,'r*-');");v_UartTxStr(Tx,21);
//  408     
//  409     sprintf(Tx,"legend(");v_UartTxStr(Tx,21);    
//  410     sprintf(Tx,"'LeftMotorI'");v_UartTxStr(Tx,21);  
//  411     sprintf(Tx,",");v_UartTxStr(Tx,21);
//  412     sprintf(Tx,"'RightMotorI'");v_UartTxStr(Tx,21);  
//  413     sprintf(Tx,");");v_UartTxStr(Tx,21);
//  414     
//  415     sprintf(Tx,"FromShunAn");v_UartTxStr(Tx,21);
//  416     */
//  417 }
        POP      {R0,PC}          ;; return
//  418 
//  419 /*                    m_need_tx.LeftMotorPWM[m_need_tx.counter] = m_Control.e_LeftSpeed;
//  420                     m_need_tx.LeftMotorSpeed[m_need_tx.counter] = m_Control.LeftMotorSpeed;
//  421                     m_need_tx.RightMotorPWM[m_need_tx.counter] = m_Control.LeftMotorPWM;
//  422                     m_need_tx.RightMotorSpeed[m_need_tx.counter] = m_Control.RightMotorSpeed;//m_Control.RightMotorSpeed;
//  423                     m_need_tx.ServoVar[m_need_tx.counter] = m_Control.ServoDeg;
//  424                     m_need_tx.ServoGraduated[m_need_tx.counter] = m_Control.LeftRightRatio;*/
//  425 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  426 void v_UartTxInformationAboutPara()
//  427 {
v_UartTxInformationAboutPara:
        PUSH     {LR}
        SUB      SP,SP,#+124
//  428     char Tx[100];//»ñÈ¡TxÐÅºÅ
//  429     sprintf(Tx,"'This Time is ShunAn Showing,Para:");v_UartTxStr(Tx,100);//
        LDR.W    R1,??DataTable8_14
        ADD      R0,SP,#+24
        BL       sprintf
        MOVS     R1,#+100
        ADD      R0,SP,#+24
        BL       v_UartTxStr
//  430     
//  431     sprintf(Tx,"v=%d,P=%g,I=%g,D=%g,",m_Control.GiveSpeed
//  432                                      ,m_Control.Motor_ControlPara_P_Number
//  433                                      ,m_Control.Motor_ControlPara_I_Number
//  434                                      ,m_Control.Motor_ControlPara_D_Number);//ËÙ¶È²Î¿¼
        LDR.W    R0,??DataTable8_15
        LDR      R0,[R0, #+156]
        BL       __aeabi_f2d
        STRD     R0,R1,[SP, #+16]
        LDR.W    R0,??DataTable8_15
        LDR      R0,[R0, #+152]
        BL       __aeabi_f2d
        STRD     R0,R1,[SP, #+8]
        LDR.W    R0,??DataTable8_15
        LDR      R0,[R0, #+148]
        BL       __aeabi_f2d
        STRD     R0,R1,[SP, #+0]
        LDR.W    R0,??DataTable8_15
        LDRH     R2,[R0, #+108]
        LDR.W    R1,??DataTable8_16
        ADD      R0,SP,#+24
        BL       sprintf
//  435                                      v_UartTxStr(Tx,100);
        MOVS     R1,#+100
        ADD      R0,SP,#+24
        BL       v_UartTxStr
//  436     sprintf(Tx,"P_Curve=%g,StopY=%d,Servo_Diff=%g",m_Control.P_Curve
//  437                                                   ,m_Control.servo_imageYstopLine
//  438                                                   ,m_Control.ServoDiff);//¶æ»ú×ª½Ç²Î¿¼
        LDR.W    R0,??DataTable8_15
        LDR      R0,[R0, #+36]
        BL       __aeabi_f2d
        STRD     R0,R1,[SP, #+8]
        LDR.W    R0,??DataTable8_15
        LDRB     R0,[R0, #+132]
        STR      R0,[SP, #+0]
        LDR.W    R0,??DataTable8_15
        LDR      R0,[R0, #+136]
        BL       __aeabi_f2d
        MOVS     R2,R0
        MOVS     R3,R1
        LDR.W    R1,??DataTable8_17
        ADD      R0,SP,#+24
        BL       sprintf
//  439                                                   v_UartTxStr(Tx,100);
        MOVS     R1,#+100
        ADD      R0,SP,#+24
        BL       v_UartTxStr
//  440     sprintf(Tx,"';");v_UartTxStr(Tx,100);//
        ADR.N    R1,??DataTable6  ;; 0x27, 0x3B, 0x00, 0x00
        ADD      R0,SP,#+24
        BL       sprintf
        MOVS     R1,#+100
        ADD      R0,SP,#+24
        BL       v_UartTxStr
//  441 }
        ADD      SP,SP,#+124
        POP      {PC}             ;; return
//  442 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  443 void v_UartSaveImage_sint16(void * Save)//´æ´¢
//  444 {
//  445     sint16 * Save_sint16 = Save;
//  446     for(uint8 loop = 0;loop < 60;loop ++)
v_UartSaveImage_sint16:
        MOVS     R1,#+0
        B.N      ??v_UartSaveImage_sint16_0
//  447     {
//  448         *Save_sint16       = (m_ImageAbstract.Left[loop]);
??v_UartSaveImage_sint16_1:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R2,??DataTable8_18
        ADDS     R2,R1,R2
        LDRB     R2,[R2, #+44]
        STRH     R2,[R0, #+0]
//  449         *(Save_sint16 + 60) = (m_ImageAbstract.Right[loop]);
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R2,??DataTable8_18
        ADDS     R2,R1,R2
        LDRB     R2,[R2, #+104]
        STRH     R2,[R0, #+120]
//  450         *(Save_sint16 + 120) = (m_ImageAbstract.Central[loop]);
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R2,??DataTable8_18
        ADDS     R2,R1,R2
        LDRB     R2,[R2, #+164]
        STRH     R2,[R0, #+240]
//  451         *(Save_sint16 + 180) = (m_ImageTesting.hazardvaildLine[loop]);
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R2,??DataTable8_19
        ADDS     R2,R1,R2
        LDRB     R2,[R2, #+69]
        STRH     R2,[R0, #+360]
//  452         Save_sint16 = Save_sint16 + 1;//µÝÔö
        ADDS     R0,R0,#+2
//  453     }
        ADDS     R1,R1,#+1
??v_UartSaveImage_sint16_0:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+60
        BLT.N    ??v_UartSaveImage_sint16_1
//  454     *(Save_sint16 + 180) = (m_ImageAbstract.Start_Y_Position);
        LDR.W    R1,??DataTable8_18
        LDRB     R1,[R1, #+464]
        STRH     R1,[R0, #+360]
//  455     *(Save_sint16 + 181) = (m_ImageAbstract.Last_Y_Position);
        LDR.W    R1,??DataTable8_18
        LDRB     R1,[R1, #+465]
        STRH     R1,[R0, #+362]
//  456     *(Save_sint16 + 182) = (m_Control.ServoDeg);
        LDR.W    R1,??DataTable8_15
        LDRH     R1,[R1, #+32]
        STRH     R1,[R0, #+364]
//  457     *(Save_sint16 + 183) = (m_ImageTesting.Back2Angel_LineCounter);
        LDR.W    R1,??DataTable8_19
        LDRB     R1,[R1, #+134]
        STRH     R1,[R0, #+366]
//  458     
//  459 }
        BX       LR               ;; return
//  460 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  461 void v_UartTxImageSix2PC(void * Tx)
//  462 {
v_UartTxImageSix2PC:
        PUSH     {R4,R5,LR}
        SUB      SP,SP,#+28
        MOVS     R4,R0
//  463     sint16 * Save = Tx;
//  464     char TxChar[21];
//  465     sprintf(TxChar,"Left=[");v_UartTxStr(TxChar,21);
        LDR.W    R1,??DataTable8_20
        ADD      R0,SP,#+0
        BL       sprintf
        MOVS     R1,#+21
        ADD      R0,SP,#+0
        BL       v_UartTxStr
//  466     for(uint8 loop = 0;loop < 60;loop ++)
        MOVS     R5,#+0
        B.N      ??v_UartTxImageSix2PC_0
//  467     {
//  468         Save = Save + 1;//ÒÆ¶¯
??v_UartTxImageSix2PC_1:
        ADDS     R4,R4,#+2
//  469         sprintf(TxChar,"%d ",*Save);v_UartTxStr(TxChar,21);
        LDRSH    R2,[R4, #+0]
        ADR.N    R1,??DataTable6_1  ;; "%d "
        ADD      R0,SP,#+0
        BL       sprintf
        MOVS     R1,#+21
        ADD      R0,SP,#+0
        BL       v_UartTxStr
//  470     }
        ADDS     R5,R5,#+1
??v_UartTxImageSix2PC_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+60
        BLT.N    ??v_UartTxImageSix2PC_1
//  471     sprintf(TxChar,"];Right=[");v_UartTxStr(TxChar,21);
        LDR.W    R1,??DataTable8_21
        ADD      R0,SP,#+0
        BL       sprintf
        MOVS     R1,#+21
        ADD      R0,SP,#+0
        BL       v_UartTxStr
//  472     for(uint8 loop = 0;loop < 60;loop ++)
        MOVS     R5,#+0
        B.N      ??v_UartTxImageSix2PC_2
//  473     {
//  474         Save = Save + 1;//ÒÆ¶¯
??v_UartTxImageSix2PC_3:
        ADDS     R4,R4,#+2
//  475         sprintf(TxChar,"%d ",*Save);v_UartTxStr(TxChar,21);
        LDRSH    R2,[R4, #+0]
        ADR.N    R1,??DataTable6_1  ;; "%d "
        ADD      R0,SP,#+0
        BL       sprintf
        MOVS     R1,#+21
        ADD      R0,SP,#+0
        BL       v_UartTxStr
//  476     }
        ADDS     R5,R5,#+1
??v_UartTxImageSix2PC_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+60
        BLT.N    ??v_UartTxImageSix2PC_3
//  477     sprintf(TxChar,"];Mid=[");v_UartTxStr(TxChar,21);
        LDR.W    R1,??DataTable8_22
        ADD      R0,SP,#+0
        BL       sprintf
        MOVS     R1,#+21
        ADD      R0,SP,#+0
        BL       v_UartTxStr
//  478     for(uint8 loop = 0;loop < 60;loop ++)
        MOVS     R5,#+0
        B.N      ??v_UartTxImageSix2PC_4
//  479     {
//  480         Save = Save + 1;//ÒÆ¶¯
??v_UartTxImageSix2PC_5:
        ADDS     R4,R4,#+2
//  481         sprintf(TxChar,"%d ",*Save);v_UartTxStr(TxChar,21);
        LDRSH    R2,[R4, #+0]
        ADR.N    R1,??DataTable6_1  ;; "%d "
        ADD      R0,SP,#+0
        BL       sprintf
        MOVS     R1,#+21
        ADD      R0,SP,#+0
        BL       v_UartTxStr
//  482     }
        ADDS     R5,R5,#+1
??v_UartTxImageSix2PC_4:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+60
        BLT.N    ??v_UartTxImageSix2PC_5
//  483     sprintf(TxChar,"];");v_UartTxStr(TxChar,21);
        ADR.N    R1,??DataTable7  ;; 0x5D, 0x3B, 0x00, 0x00
        ADD      R0,SP,#+0
        BL       sprintf
        MOVS     R1,#+21
        ADD      R0,SP,#+0
        BL       v_UartTxStr
//  484     
//  485     sprintf(TxChar,"RightRight=[");v_UartTxStr(TxChar,21);
        LDR.W    R1,??DataTable8_23
        ADD      R0,SP,#+0
        BL       sprintf
        MOVS     R1,#+21
        ADD      R0,SP,#+0
        BL       v_UartTxStr
//  486     for(uint8 loop = 0;loop < 60;loop ++)
        MOVS     R5,#+0
        B.N      ??v_UartTxImageSix2PC_6
//  487     {
//  488         Save = Save + 1;//ÒÆ¶¯
??v_UartTxImageSix2PC_7:
        ADDS     R4,R4,#+2
//  489         sprintf(TxChar,"%d ",*Save);v_UartTxStr(TxChar,21);
        LDRSH    R2,[R4, #+0]
        ADR.N    R1,??DataTable6_1  ;; "%d "
        ADD      R0,SP,#+0
        BL       sprintf
        MOVS     R1,#+21
        ADD      R0,SP,#+0
        BL       v_UartTxStr
//  490     }
        ADDS     R5,R5,#+1
??v_UartTxImageSix2PC_6:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+60
        BLT.N    ??v_UartTxImageSix2PC_7
//  491     sprintf(TxChar,"];");v_UartTxStr(TxChar,21);
        ADR.N    R1,??DataTable7  ;; 0x5D, 0x3B, 0x00, 0x00
        ADD      R0,SP,#+0
        BL       sprintf
        MOVS     R1,#+21
        ADD      R0,SP,#+0
        BL       v_UartTxStr
//  492     
//  493     
//  494     sprintf(TxChar,"Beg=%d;",*Save);v_UartTxStr(TxChar,21);//ÒÆ¶¯
        LDRSH    R2,[R4, #+0]
        LDR.W    R1,??DataTable8_24
        ADD      R0,SP,#+0
        BL       sprintf
        MOVS     R1,#+21
        ADD      R0,SP,#+0
        BL       v_UartTxStr
//  495     Save = Save + 1;
        ADDS     R4,R4,#+2
//  496     sprintf(TxChar,"Shut=%d;",*Save);v_UartTxStr(TxChar,21);//ÒÆ¶¯
        LDRSH    R2,[R4, #+0]
        LDR.W    R1,??DataTable8_25
        ADD      R0,SP,#+0
        BL       sprintf
        MOVS     R1,#+21
        ADD      R0,SP,#+0
        BL       v_UartTxStr
//  497     
//  498     Save = Save + 1;
        ADDS     R4,R4,#+2
//  499     sprintf(TxChar,"LonY=%d;",*Save);v_UartTxStr(TxChar,21);//ÒÆ¶¯
        LDRSH    R2,[R4, #+0]
        LDR.W    R1,??DataTable8_26
        ADD      R0,SP,#+0
        BL       sprintf
        MOVS     R1,#+21
        ADD      R0,SP,#+0
        BL       v_UartTxStr
//  500     Save = Save + 1;
        ADDS     R4,R4,#+2
//  501     sprintf(TxChar,"LonX=%d;",*Save);v_UartTxStr(TxChar,21);//ÒÆ¶¯
        LDRSH    R2,[R4, #+0]
        LDR.W    R1,??DataTable8_27
        ADD      R0,SP,#+0
        BL       sprintf
        MOVS     R1,#+21
        ADD      R0,SP,#+0
        BL       v_UartTxStr
//  502     Save = Save + 1;
        ADDS     R4,R4,#+2
//  503     
//  504     sprintf(TxChar,"ShowImageInformation");v_UartTxStr(TxChar,21);//ÒÆ¶¯
        LDR.W    R1,??DataTable8_28
        ADD      R0,SP,#+0
        BL       sprintf
        MOVS     R1,#+21
        ADD      R0,SP,#+0
        BL       v_UartTxStr
//  505     sprintf(TxChar,"_ShunAnGolden");v_UartTxStr(TxChar,21);//ÒÆ¶¯
        LDR.N    R1,??DataTable8_29
        ADD      R0,SP,#+0
        BL       sprintf
        MOVS     R1,#+21
        ADD      R0,SP,#+0
        BL       v_UartTxStr
//  506     sprintf(TxChar,"(Left,Right,Mid,");v_UartTxStr(TxChar,21);//ÒÆ¶¯
        LDR.N    R1,??DataTable8_30
        ADD      R0,SP,#+0
        BL       sprintf
        MOVS     R1,#+21
        ADD      R0,SP,#+0
        BL       v_UartTxStr
//  507     sprintf(TxChar,"RightRight,");v_UartTxStr(TxChar,21);//ÒÆ¶¯
        LDR.N    R1,??DataTable8_31
        ADD      R0,SP,#+0
        BL       sprintf
        MOVS     R1,#+21
        ADD      R0,SP,#+0
        BL       v_UartTxStr
//  508     sprintf(TxChar,"LonY,LonX,");v_UartTxStr(TxChar,21);//ÒÆ¶¯
        LDR.N    R1,??DataTable8_32
        ADD      R0,SP,#+0
        BL       sprintf
        MOVS     R1,#+21
        ADD      R0,SP,#+0
        BL       v_UartTxStr
//  509     sprintf(TxChar,"Shut,Beg);");v_UartTxStr(TxChar,21);//ÒÆ¶¯
        LDR.N    R1,??DataTable8_33
        ADD      R0,SP,#+0
        BL       sprintf
        MOVS     R1,#+21
        ADD      R0,SP,#+0
        BL       v_UartTxStr
//  510     //sprintf(TxChar,"FromShunAn");v_UartTxStr(TxChar,21);//ÒÆ¶¯
//  511 }
        ADD      SP,SP,#+28
        POP      {R4,R5,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC8      0x27, 0x3B, 0x00, 0x00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC8      "%d "
//  512 
//  513 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  514 void v_Uart_GetPicture_InRunning(uint8 mode,uint8 time)
//  515 {
v_Uart_GetPicture_InRunning:
        PUSH     {R7,LR}
//  516     static uint8 pic_counter = 0;
//  517     if(0 == mode){pic_counter = 0;return;}
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??v_Uart_GetPicture_InRunning_0
        LDR.N    R0,??DataTable8_34
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        B.N      ??v_Uart_GetPicture_InRunning_1
//  518     static uint8 counter = 0;
//  519     if(time != (++counter))
??v_Uart_GetPicture_InRunning_0:
        LDR.N    R2,??DataTable8_35
        LDRB     R2,[R2, #+0]
        ADDS     R2,R2,#+1
        LDR.N    R3,??DataTable8_35
        STRB     R2,[R3, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R1,R2
        BNE.W    ??v_Uart_GetPicture_InRunning_1
//  520     {
//  521         return;
//  522     }
//  523     counter = 0;
??v_Uart_GetPicture_InRunning_2:
        LDR.N    R1,??DataTable8_35
        MOVS     R2,#+0
        STRB     R2,[R1, #+0]
//  524     if(1 == mode)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.W    ??v_Uart_GetPicture_InRunning_3
//  525     {
//  526         if(pic_counter < 5)//0 1 2 3 4
        LDR.N    R0,??DataTable8_34
        LDRB     R0,[R0, #+0]
        CMP      R0,#+5
        BGE.N    ??v_Uart_GetPicture_InRunning_4
//  527         {
//  528             v_UartSaveImage_sint16(m_need_tx.Information_Unnamed_Mark001 + 300*pic_counter);//m_need_tx.Information_Unnamed_Mark001
        LDR.N    R0,??DataTable8_34
        LDRB     R0,[R0, #+0]
        MOV      R1,#+600
        LDR.N    R2,??DataTable8_36
        MLA      R0,R1,R0,R2
        ADD      R0,R0,#+25344
        ADDS     R0,R0,#+156
        BL       v_UartSaveImage_sint16
        B.N      ??v_Uart_GetPicture_InRunning_5
//  529         }
//  530         else
//  531         {
//  532             if(pic_counter < 10)//5 6 7 8 9
??v_Uart_GetPicture_InRunning_4:
        LDR.N    R0,??DataTable8_34
        LDRB     R0,[R0, #+0]
        CMP      R0,#+10
        BGE.N    ??v_Uart_GetPicture_InRunning_6
//  533             {
//  534                 v_UartSaveImage_sint16(m_need_tx.ServoVar + 300*(pic_counter-5));
        LDR.N    R0,??DataTable8_34
        LDRB     R0,[R0, #+0]
        MOV      R1,#+600
        LDR.N    R2,??DataTable8_36
        MLA      R0,R1,R0,R2
        ADD      R0,R0,#+17920
        ADDS     R0,R0,#+80
        BL       v_UartSaveImage_sint16
        B.N      ??v_Uart_GetPicture_InRunning_5
//  535             }
//  536             else
//  537             {
//  538                 if(pic_counter < 15)//10 11 12 13 14
??v_Uart_GetPicture_InRunning_6:
        LDR.N    R0,??DataTable8_34
        LDRB     R0,[R0, #+0]
        CMP      R0,#+15
        BGE.N    ??v_Uart_GetPicture_InRunning_7
//  539                 {
//  540                     v_UartSaveImage_sint16(m_need_tx.RightMotorGiV + 300*(pic_counter-10));
        LDR.N    R0,??DataTable8_34
        LDRB     R0,[R0, #+0]
        MOV      R1,#+600
        LDR.N    R2,??DataTable8_36
        MLA      R0,R1,R0,R2
        ADD      R0,R0,#+8960
        ADDS     R0,R0,#+40
        BL       v_UartSaveImage_sint16
        B.N      ??v_Uart_GetPicture_InRunning_5
//  541                 }
//  542                 else
//  543                 {
//  544                     if(pic_counter < 20)//15 16 17 18 19
??v_Uart_GetPicture_InRunning_7:
        LDR.N    R0,??DataTable8_34
        LDRB     R0,[R0, #+0]
        CMP      R0,#+20
        BGE.N    ??v_Uart_GetPicture_InRunning_8
//  545                     {
//  546                         v_UartSaveImage_sint16(m_need_tx.LeftMotorGiV + 300*(pic_counter-15));
        LDR.N    R0,??DataTable8_34
        LDRB     R0,[R0, #+0]
        MOV      R1,#+600
        LDR.N    R2,??DataTable8_36
        MLA      R0,R1,R0,R2
        ADDW     R0,R0,#+3000
        BL       v_UartSaveImage_sint16
        B.N      ??v_Uart_GetPicture_InRunning_5
//  547                     }
//  548                     else
//  549                     {
//  550                         if(pic_counter < 25)//20 21 22 23 24
??v_Uart_GetPicture_InRunning_8:
        LDR.N    R0,??DataTable8_34
        LDRB     R0,[R0, #+0]
        CMP      R0,#+25
        BGE.N    ??v_Uart_GetPicture_InRunning_9
//  551                         {
//  552                             v_UartSaveImage_sint16(m_need_tx.RightMotorPWM + 300*(pic_counter-20));
        LDR.N    R0,??DataTable8_34
        LDRB     R0,[R0, #+0]
        MOV      R1,#+600
        LDR.N    R2,??DataTable8_36
        MLA      R0,R1,R0,R2
        SUBW     R0,R0,#+3000
        BL       v_UartSaveImage_sint16
        B.N      ??v_Uart_GetPicture_InRunning_5
//  553                         }
//  554                         else
//  555                         {
//  556                             if(pic_counter < 30)//25 26 27 28 29
??v_Uart_GetPicture_InRunning_9:
        LDR.N    R0,??DataTable8_34
        LDRB     R0,[R0, #+0]
        CMP      R0,#+30
        BGE.N    ??v_Uart_GetPicture_InRunning_10
//  557                             {
//  558                                 v_UartSaveImage_sint16(m_need_tx.LeftMotorPWM + 300*(pic_counter-25));
        LDR.N    R0,??DataTable8_37  ;; 0xffffdcd8
        LDR.N    R1,??DataTable8_34
        LDRB     R1,[R1, #+0]
        MOV      R2,#+600
        LDR.N    R3,??DataTable8_36
        MLA      R1,R2,R1,R3
        ADDS     R0,R0,R1
        BL       v_UartSaveImage_sint16
        B.N      ??v_Uart_GetPicture_InRunning_5
//  559                             }
//  560                             else
//  561                             {
//  562                                 if(pic_counter < 35)//25 26 27 28 29
??v_Uart_GetPicture_InRunning_10:
        LDR.N    R0,??DataTable8_34
        LDRB     R0,[R0, #+0]
        CMP      R0,#+35
        BGE.N    ??v_Uart_GetPicture_InRunning_11
//  563                                 {
//  564                                     v_UartSaveImage_sint16(m_need_tx.RightMotorSpeed + 300*(pic_counter-30));
        LDR.N    R0,??DataTable8_38  ;; 0xffffc568
        LDR.N    R1,??DataTable8_34
        LDRB     R1,[R1, #+0]
        MOV      R2,#+600
        LDR.N    R3,??DataTable8_36
        MLA      R1,R2,R1,R3
        ADDS     R0,R0,R1
        BL       v_UartSaveImage_sint16
        B.N      ??v_Uart_GetPicture_InRunning_5
//  565                                 }
//  566                                 else
//  567                                 {
//  568                                     if(pic_counter < 40)//25 26 27 28 29
??v_Uart_GetPicture_InRunning_11:
        LDR.N    R0,??DataTable8_34
        LDRB     R0,[R0, #+0]
        CMP      R0,#+40
        BGE.N    ??v_Uart_GetPicture_InRunning_5
//  569                                     {
//  570                                         v_UartSaveImage_sint16(m_need_tx.LeftMotorSpeed + 300*(pic_counter-35));
        LDR.N    R0,??DataTable8_39  ;; 0xffffadf8
        LDR.N    R1,??DataTable8_34
        LDRB     R1,[R1, #+0]
        MOV      R2,#+600
        LDR.N    R3,??DataTable8_36
        MLA      R1,R2,R1,R3
        ADDS     R0,R0,R1
        BL       v_UartSaveImage_sint16
//  571                                     }
//  572                                 }
//  573                             }
//  574                         }
//  575                     }
//  576                 }
//  577             }
//  578         }
//  579         pic_counter++;
??v_Uart_GetPicture_InRunning_5:
        LDR.N    R0,??DataTable8_34
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable8_34
        STRB     R0,[R1, #+0]
//  580     }
//  581 }
??v_Uart_GetPicture_InRunning_3:
??v_Uart_GetPicture_InRunning_1:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DC8      0x5D, 0x3B, 0x00, 0x00

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
??pic_counter:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
??counter:
        DS8 1
//  582 
//  583 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  584 void v_Uart_SendPictures()
//  585 {
v_Uart_SendPictures:
        PUSH     {R4,LR}
        SUB      SP,SP,#+24
//  586     char TxChar[21];
//  587     for(sint8 pic_counter = 39;pic_counter >= 0;pic_counter--)
        MOVS     R4,#+39
        B.N      ??v_Uart_SendPictures_0
//  588     {
//  589         sprintf(TxChar,"figure(%d);",pic_counter+1);v_UartTxStr(TxChar,21);//ÒÆ¶¯
//  590         if(pic_counter < 5)//0 1 2 3 4
//  591         {
//  592             v_UartTxImageSix2PC(m_need_tx.Information_Unnamed_Mark001 + 300*pic_counter);//m_need_tx.Information_Unnamed_Mark001
//  593         }
//  594         else
//  595         {
//  596             if(pic_counter < 10)//5 6 7 8 9
//  597             {
//  598                 v_UartTxImageSix2PC(m_need_tx.ServoVar + 300*(pic_counter-5));
//  599             }
//  600             else
//  601             {
//  602                 if(pic_counter < 15)//10 11 12 13 14
//  603                 {
//  604                     v_UartTxImageSix2PC(m_need_tx.RightMotorGiV + 300*(pic_counter-10));
//  605                 }
//  606                 else
//  607                 {
//  608                     if(pic_counter < 20)//15 16 17 18 19
//  609                     {
//  610                         v_UartTxImageSix2PC(m_need_tx.LeftMotorGiV + 300*(pic_counter-15));
//  611                     }
//  612                     else
//  613                     {
//  614                         if(pic_counter < 25)//20 21 22 23 24
//  615                         {
//  616                             v_UartTxImageSix2PC(m_need_tx.RightMotorPWM + 300*(pic_counter-20));
//  617                         }
//  618                         else
//  619                         {
//  620                             if(pic_counter < 30)//25 26 27 28 29
//  621                             {
//  622                                 v_UartTxImageSix2PC(m_need_tx.LeftMotorPWM + 300*(pic_counter-25));
//  623                             }
//  624                             else
//  625                             {
//  626                                 if(pic_counter < 35)//25 26 27 28 29
//  627                                 {
//  628                                     v_UartTxImageSix2PC(m_need_tx.RightMotorSpeed + 300*(pic_counter-30));
//  629                                 }
//  630                                 else
//  631                                 {
//  632                                     if(pic_counter < 40)//25 26 27 28 29
??v_Uart_SendPictures_1:
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+40
        BGE.N    ??v_Uart_SendPictures_2
//  633                                     {
//  634                                         v_UartTxImageSix2PC(m_need_tx.LeftMotorSpeed + 300*(pic_counter-35));
        LDR.N    R0,??DataTable8_39  ;; 0xffffadf8
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        MOV      R1,#+600
        LDR.N    R2,??DataTable8_36
        SMLABB   R1,R4,R1,R2
        ADDS     R0,R0,R1
        BL       v_UartTxImageSix2PC
//  635                                     }
//  636                                 }
??v_Uart_SendPictures_2:
        SUBS     R4,R4,#+1
??v_Uart_SendPictures_0:
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BMI.N    ??v_Uart_SendPictures_3
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        ADDS     R2,R4,#+1
        LDR.N    R1,??DataTable8_40
        ADD      R0,SP,#+0
        BL       sprintf
        MOVS     R1,#+21
        ADD      R0,SP,#+0
        BL       v_UartTxStr
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+5
        BGE.N    ??v_Uart_SendPictures_4
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        MOV      R0,#+600
        LDR.N    R1,??DataTable8_36
        SMLABB   R0,R4,R0,R1
        ADD      R0,R0,#+25344
        ADDS     R0,R0,#+156
        BL       v_UartTxImageSix2PC
        B.N      ??v_Uart_SendPictures_2
??v_Uart_SendPictures_4:
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+10
        BGE.N    ??v_Uart_SendPictures_5
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        MOV      R0,#+600
        LDR.N    R1,??DataTable8_36
        SMLABB   R0,R4,R0,R1
        ADD      R0,R0,#+17920
        ADDS     R0,R0,#+80
        BL       v_UartTxImageSix2PC
        B.N      ??v_Uart_SendPictures_2
??v_Uart_SendPictures_5:
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+15
        BGE.N    ??v_Uart_SendPictures_6
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        MOV      R0,#+600
        LDR.N    R1,??DataTable8_36
        SMLABB   R0,R4,R0,R1
        ADD      R0,R0,#+8960
        ADDS     R0,R0,#+40
        BL       v_UartTxImageSix2PC
        B.N      ??v_Uart_SendPictures_2
??v_Uart_SendPictures_6:
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+20
        BGE.N    ??v_Uart_SendPictures_7
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        MOV      R0,#+600
        LDR.N    R1,??DataTable8_36
        SMLABB   R0,R4,R0,R1
        ADDW     R0,R0,#+3000
        BL       v_UartTxImageSix2PC
        B.N      ??v_Uart_SendPictures_2
??v_Uart_SendPictures_7:
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+25
        BGE.N    ??v_Uart_SendPictures_8
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        MOV      R0,#+600
        LDR.N    R1,??DataTable8_36
        SMLABB   R0,R4,R0,R1
        SUBW     R0,R0,#+3000
        BL       v_UartTxImageSix2PC
        B.N      ??v_Uart_SendPictures_2
??v_Uart_SendPictures_8:
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+30
        BGE.N    ??v_Uart_SendPictures_9
        LDR.N    R0,??DataTable8_37  ;; 0xffffdcd8
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        MOV      R1,#+600
        LDR.N    R2,??DataTable8_36
        SMLABB   R1,R4,R1,R2
        ADDS     R0,R0,R1
        BL       v_UartTxImageSix2PC
        B.N      ??v_Uart_SendPictures_2
??v_Uart_SendPictures_9:
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+35
        BGE.N    ??v_Uart_SendPictures_1
        LDR.N    R0,??DataTable8_38  ;; 0xffffc568
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        MOV      R1,#+600
        LDR.N    R2,??DataTable8_36
        SMLABB   R1,R4,R1,R2
        ADDS     R0,R0,R1
        BL       v_UartTxImageSix2PC
        B.N      ??v_Uart_SendPictures_2
//  637                             }
//  638                         }
//  639                     }
//  640                 }
//  641             }
//  642         }
//  643     }
//  644     sprintf(TxChar,"FromShunAn");v_UartTxStr(TxChar,21);//ÒÆ¶¯
??v_Uart_SendPictures_3:
        LDR.N    R1,??DataTable8_41
        ADD      R0,SP,#+0
        BL       sprintf
        MOVS     R1,#+21
        ADD      R0,SP,#+0
        BL       v_UartTxStr
//  645 }
        ADD      SP,SP,#+24
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8:
        DC32     0x40048034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_1:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_2:
        DC32     0x4004d010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_3:
        DC32     0x4004d014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_4:
        DC32     0x4006d003

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_5:
        DC32     0x4006d002

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_6:
        DC32     bus_clk_khz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_7:
        DC32     0x4006d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_8:
        DC32     0x4006d001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_9:
        DC32     0x4006d00a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_10:
        DC32     0x4006d00b

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_11:
        DC32     0x4006d004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_12:
        DC32     0x4006d007

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_13:
        DC32     0x186a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_14:
        DC32     `?<Constant "\\'This Time is ShunAn ...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_15:
        DC32     m_Control

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_16:
        DC32     `?<Constant "v=%d,P=%g,I=%g,D=%g,">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_17:
        DC32     `?<Constant "P_Curve=%g,StopY=%d,S...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_18:
        DC32     m_ImageAbstract

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_19:
        DC32     m_ImageTesting

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_20:
        DC32     `?<Constant "Left=[">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_21:
        DC32     `?<Constant "];Right=[">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_22:
        DC32     `?<Constant "];Mid=[">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_23:
        DC32     `?<Constant "RightRight=[">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_24:
        DC32     `?<Constant "Beg=%d;">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_25:
        DC32     `?<Constant "Shut=%d;">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_26:
        DC32     `?<Constant "LonY=%d;">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_27:
        DC32     `?<Constant "LonX=%d;">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_28:
        DC32     `?<Constant "ShowImageInformation">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_29:
        DC32     `?<Constant "_ShunAnGolden">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_30:
        DC32     `?<Constant "(Left,Right,Mid,">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_31:
        DC32     `?<Constant "RightRight,">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_32:
        DC32     `?<Constant "LonY,LonX,">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_33:
        DC32     `?<Constant "Shut,Beg);">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_34:
        DC32     ??pic_counter

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_35:
        DC32     ??counter

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_36:
        DC32     m_need_tx

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_37:
        DC32     0xffffdcd8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_38:
        DC32     0xffffc568

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_39:
        DC32     0xffffadf8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_40:
        DC32     `?<Constant "figure(%d);">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_41:
        DC32     `?<Constant "FromShunAn">`

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\'This Time is ShunAn ...">`:
        DATA
        DC8 "'This Time is ShunAn Showing,Para:"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "v=%d,P=%g,I=%g,D=%g,">`:
        DATA
        DC8 "v=%d,P=%g,I=%g,D=%g,"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "P_Curve=%g,StopY=%d,S...">`:
        DATA
        DC8 "P_Curve=%g,StopY=%d,Servo_Diff=%g"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "';"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Left=[">`:
        DATA
        DC8 "Left=["
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "%d "

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "];Right=[">`:
        DATA
        DC8 "];Right=["
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "];Mid=[">`:
        DATA
        DC8 "];Mid=["

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "];"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "RightRight=[">`:
        DATA
        DC8 "RightRight=["
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Beg=%d;">`:
        DATA
        DC8 "Beg=%d;"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Shut=%d;">`:
        DATA
        DC8 "Shut=%d;"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "LonY=%d;">`:
        DATA
        DC8 "LonY=%d;"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "LonX=%d;">`:
        DATA
        DC8 "LonX=%d;"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "ShowImageInformation">`:
        DATA
        DC8 "ShowImageInformation"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "_ShunAnGolden">`:
        DATA
        DC8 "_ShunAnGolden"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "(Left,Right,Mid,">`:
        DATA
        DC8 "(Left,Right,Mid,"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "RightRight,">`:
        DATA
        DC8 "RightRight,"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "LonY,LonX,">`:
        DATA
        DC8 "LonY,LonX,"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Shut,Beg);">`:
        DATA
        DC8 "Shut,Beg);"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "figure(%d);">`:
        DATA
        DC8 "figure(%d);"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "FromShunAn">`:
        DATA
        DC8 "FromShunAn"
        DC8 0

        END
// 
// 28 506 bytes in section .bss
//    316 bytes in section .rodata
//  1 984 bytes in section .text
// 
//  1 984 bytes of CODE  memory
//    316 bytes of CONST memory
// 28 506 bytes of DATA  memory
//
//Errors: none
//Warnings: none
