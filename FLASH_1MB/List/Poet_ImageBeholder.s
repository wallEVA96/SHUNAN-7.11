///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     20/Jul/2015  17:10:47 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\Ë³°µÈýºÅ-»ªÄÏÈ /
//                    ü×îºóÆßÌì-7.11\ShunAn_Panel\Poet_ImageBeholder.c        /
//    Command line =  D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\Ë³°µÈýºÅ-»ªÄÏÈ /
//                    ü×îºóÆßÌì-7.11\ShunAn_Panel\Poet_ImageBeholder.c -D     /
//                    IAR -D TWR_K60F120M -lCN D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³° /
//                    µÈýºÅ\´úÂë\Ë³°µÈýºÅ-»ªÄÏÈü×îºóÆßÌì-7.11\FLASH_1MB\List\ /
//                     -lB D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\Ë³°µÈýºÅ- /
//                    »ªÄÏÈü×îºóÆßÌì-7.11\FLASH_1MB\List\ -o                  /
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
//                    ü×îºóÆßÌì-7.11\FLASH_1MB\List\Poet_ImageBeholder.s      /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN disable_irq
        EXTERN enable_irq
        EXTERN m_Control
        EXTERN m_ImageAbstract
        EXTERN m_ModeMachine
        EXTERN m_need_tx
        EXTERN m_system
        EXTERN set_irq_priority
        EXTERN set_vector_handler
        EXTERN v_BuzzerBeepSet
        EXTERN v_ImageCut
        EXTERN v_ImageOptimalization
        EXTERN v_Uart_GetPicture_InRunning
        EXTERN v_leftMotor_pwmOut
        EXTERN v_rightMotor_pwmOut
        EXTERN v_speed_set2pwm
        EXTERN v_steer_set2pwm
        EXTERN v_system_clocked

        PUBLIC Image_Timer
        PUBLIC b_Beholder_Init
        PUBLIC b_Beholder_InteruptInit
        PUBLIC b_Beholder_SetGain_35
        PUBLIC m_ImageBeholder_Data
        PUBLIC m_self_Beholder
        PUBLIC u8_SCCB_Data_RxByte
        PUBLIC u8_SCCB_Data_TxByte
        PUBLIC u8_SCCB_ReadReg_u16
        PUBLIC u8_SCCB_ReadReg_u8
        PUBLIC u8_SCCB_Start
        PUBLIC u8_SCCB_Stop
        PUBLIC u8_SCCB_WaitACK
        PUBLIC u8_SCCB_WriteReg_u16
        PUBLIC u8_SCCB_WriteReg_u8
        PUBLIC v_Beholder_Interupt_FuncPtr
        PUBLIC v_SCCB_ACK
        PUBLIC v_SCCB_Delay_Time
        PUBLIC v_SCCB_Init
        PUBLIC v_SCCB_NoAck
        PUBLIC v_setShutterTime
        PUBLIC view_BeholderDataArray

// D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\Ë³°µÈýºÅ-»ªÄÏÈü×îºóÆßÌì-7.11\ShunAn_Panel\Poet_ImageBeholder.c
//    1 #include "arm_cm4.h"
//    2 #include "MK60F15.h"
//    3 #include "ShunAn_Lib.h"
//    4 #include "start_ShunAn.h"
//    5 
//    6 #include "Poet_ImageBeholder.h"
//    7 #include "Poet_Revelation.h"
//    8 #include "Poet_Bluetooth.h"
//    9 #include "ThePoet_ThePendulum.h"
//   10 #include "Pendulum_EndlessFormsMostBeautiful.h"
//   11 
//   12 #include "Poet_Servo.h"
//   13 #include "Poet_Motor.h"
//   14 
//   15 #include "Poet_InputInterface.h"
//   16 
//   17 #include "Poet_Bluetooth.h"
//   18 
//   19 #include "Poet_Buzzer.h"
//   20 /***********************************************************************************************************/
//   21 /***********************************************************************************************************/
//   22 // K60 Èí¼þÊ±Ðò SCCB
//   23 /******************************************************************************/
//   24 // SCCB ReadReg
//   25 /******************************************************************************/
//   26 // SCCB Read A Byte
//   27 //      // MIDH => 0x7F
//   28 //      // MIDL => 0xA2
//   29 /******************************************************************************/
//   30 #define SCCB_TRUE               return 'T'
//   31 #define SCCB_ERROR              return 'F'
//   32 /******************************************************************************/
//   33 // ÒÔÏÂÊ¹ÓÃ Èí¼þÊµÏÖ²¨ÐÎ ÊµÏÖ
//   34 // ³õÊ¼»¯ IIC ÎªÍ¨ÓÃ 400k
//   35 // 
//   36 #define SCCB_SDA_port           PTD_BASE_PTR           
//   37 #define SCCB_SDA_pin            12
//   38 #define SCCB_SCL_port           PTD_BASE_PTR           
//   39 #define SCCB_SCL_pin            13
//   40 //
//   41 #define SCCB_SDA_IN             ((SCCB_SDA_port->PDIR >> SCCB_SDA_pin)&0x01)
//   42 #define SCCB_SDA_0              (SCCB_SDA_port->PDOR &=~(1<< SCCB_SDA_pin ))
//   43 #define SCCB_SDA_1              (SCCB_SDA_port->PDOR |= (1<< SCCB_SDA_pin ))
//   44 #define SCCB_SCL_0              (SCCB_SCL_port->PDOR &=~(1<< SCCB_SCL_pin ))
//   45 #define SCCB_SCL_1              (SCCB_SCL_port->PDOR |= (1<< SCCB_SCL_pin ))
//   46 #define SCCB_SCL_DDR_OUT        (SCCB_SCL_port->PDDR |= (1<< SCCB_SCL_pin ))
//   47 #define SCCB_SDA_DDR_OUT        (SCCB_SDA_port->PDDR |= (1<< SCCB_SDA_pin ))
//   48 #define SCCB_SDA_DDR_IN         (SCCB_SDA_port->PDDR &=~(1<< SCCB_SDA_pin ))
//   49 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   50 void v_SCCB_Init()
//   51 {
//   52     // Ä£¿éÓëÒý½Å¿ªÆô
//   53     SIM_SCGC5 |= SIM_SCGC5_PORTD_MASK;
v_SCCB_Init:
        LDR.W    R0,??DataTable9  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000
        LDR.W    R1,??DataTable9  ;; 0x40048038
        STR      R0,[R1, #+0]
//   54     PORTD_BASE_PTR->PCR[SCCB_SCL_pin] = 0x00000123u; // SCL
        LDR.W    R0,??DataTable9_1  ;; 0x4004c034
        MOVW     R1,#+291
        STR      R1,[R0, #+0]
//   55     PORTD_BASE_PTR->PCR[SCCB_SDA_pin] = 0x00000123u; // SDA
        LDR.W    R0,??DataTable9_2  ;; 0x4004c030
        MOVW     R1,#+291
        STR      R1,[R0, #+0]
//   56     SCCB_SDA_DDR_OUT;
        LDR.W    R0,??DataTable10  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000
        LDR.W    R1,??DataTable10  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//   57     SCCB_SCL_DDR_OUT;
        LDR.W    R0,??DataTable10  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000
        LDR.W    R1,??DataTable10  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//   58 }
        BX       LR               ;; return
//   59 
//   60 /******************************************************************************/
//   61 // v_SCCB_Delay // ÑÓ³Ù
//   62 //void v_SCCB_Delay()
//   63 //{
//   64 //    uint16 time = 130; // 1.3 us
//   65 //    while(time){time--;asm("nop");}
//   66 //}
//   67 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   68 void v_SCCB_Delay_Time(uint16 time)
//   69 {
v_SCCB_Delay_Time:
        B.N      ??v_SCCB_Delay_Time_0
//   70     while(time){time--;asm("nop");}
??v_SCCB_Delay_Time_1:
        SUBS     R0,R0,#+1
        nop
??v_SCCB_Delay_Time_0:
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+0
        BNE.N    ??v_SCCB_Delay_Time_1
//   71 }
        BX       LR               ;; return
//   72 
//   73 #define v_SCCB_SCL_0_Delay()                v_SCCB_Delay_Time(37)               // 4000 ns
//   74 #define v_SCCB_SCL_1_Delay()                v_SCCB_Delay_Time(37)               // 370 ns
//   75 // 370ns
//   76 /******************************************************************************/
//   77 // u8_SCCB_Start // ¿ªÊ¼

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   78 uint8 u8_SCCB_Start()
//   79 {
u8_SCCB_Start:
        PUSH     {R7,LR}
//   80     SCCB_SDA_1;SCCB_SCL_1; // È«¸ßÌ¬
        LDR.W    R0,??DataTable9_3  ;; 0x400ff0c0
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000
        LDR.W    R1,??DataTable9_3  ;; 0x400ff0c0
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable9_3  ;; 0x400ff0c0
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000
        LDR.W    R1,??DataTable9_3  ;; 0x400ff0c0
        STR      R0,[R1, #+0]
//   81     SCCB_SDA_DDR_IN;
        LDR.W    R0,??DataTable10  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x1000
        LDR.W    R1,??DataTable10  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//   82     if(!SCCB_SDA_IN) // Ã¦¼ì²â
        LDR.W    R0,??DataTable9_4  ;; 0x400ff0d0
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+12,#+1
        CMP      R0,#+0
        BNE.N    ??u8_SCCB_Start_0
//   83     {
//   84         SCCB_SDA_DDR_OUT;SCCB_ERROR;
        LDR.W    R0,??DataTable10  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000
        LDR.W    R1,??DataTable10  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
        MOVS     R0,#+70
        B.N      ??u8_SCCB_Start_1
//   85     }SCCB_SDA_DDR_OUT;
??u8_SCCB_Start_0:
        LDR.W    R0,??DataTable10  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000
        LDR.W    R1,??DataTable10  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//   86     SCCB_SDA_0;v_SCCB_SCL_1_Delay();SCCB_SCL_0; // ¿ªÊ¼Ì¬
        LDR.W    R0,??DataTable9_3  ;; 0x400ff0c0
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x1000
        LDR.W    R1,??DataTable9_3  ;; 0x400ff0c0
        STR      R0,[R1, #+0]
        MOVS     R0,#+37
        BL       v_SCCB_Delay_Time
        LDR.W    R0,??DataTable9_3  ;; 0x400ff0c0
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x2000
        LDR.W    R1,??DataTable9_3  ;; 0x400ff0c0
        STR      R0,[R1, #+0]
//   87     if(SCCB_SDA_IN) // Ã¦¼ì²â
        LDR.W    R0,??DataTable9_4  ;; 0x400ff0d0
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+12,#+1
        CMP      R0,#+0
        BEQ.N    ??u8_SCCB_Start_2
//   88     {
//   89         SCCB_SDA_DDR_OUT;SCCB_ERROR;
        LDR.W    R0,??DataTable10  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000
        LDR.W    R1,??DataTable10  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
        MOVS     R0,#+70
        B.N      ??u8_SCCB_Start_1
//   90     }SCCB_SDA_DDR_OUT;
??u8_SCCB_Start_2:
        LDR.W    R0,??DataTable10  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000
        LDR.W    R1,??DataTable10  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//   91     SCCB_TRUE;
        MOVS     R0,#+84
??u8_SCCB_Start_1:
        POP      {R1,PC}          ;; return
//   92 }
//   93 
//   94 /******************************************************************************/
//   95 // u8_SCCB_Stop // Í£Ö¹

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   96 uint8 u8_SCCB_Stop()
//   97 {
u8_SCCB_Stop:
        PUSH     {R7,LR}
//   98     SCCB_SCL_0; v_SCCB_SCL_0_Delay(); SCCB_SDA_0; v_SCCB_SCL_1_Delay(); // È«µÍÌ¬
        LDR.W    R0,??DataTable9_3  ;; 0x400ff0c0
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x2000
        LDR.W    R1,??DataTable9_3  ;; 0x400ff0c0
        STR      R0,[R1, #+0]
        MOVS     R0,#+37
        BL       v_SCCB_Delay_Time
        LDR.W    R0,??DataTable9_3  ;; 0x400ff0c0
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x1000
        LDR.W    R1,??DataTable9_3  ;; 0x400ff0c0
        STR      R0,[R1, #+0]
        MOVS     R0,#+37
        BL       v_SCCB_Delay_Time
//   99     SCCB_SCL_1; v_SCCB_SCL_1_Delay(); SCCB_SDA_1; v_SCCB_SCL_1_Delay(); // Í£Ö¹Ì¬
        LDR.W    R0,??DataTable9_3  ;; 0x400ff0c0
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000
        LDR.W    R1,??DataTable9_3  ;; 0x400ff0c0
        STR      R0,[R1, #+0]
        MOVS     R0,#+37
        BL       v_SCCB_Delay_Time
        LDR.W    R0,??DataTable9_3  ;; 0x400ff0c0
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000
        LDR.W    R1,??DataTable9_3  ;; 0x400ff0c0
        STR      R0,[R1, #+0]
        MOVS     R0,#+37
        BL       v_SCCB_Delay_Time
//  100     SCCB_TRUE;
        MOVS     R0,#+84
        POP      {R1,PC}          ;; return
//  101 }
//  102 
//  103 /******************************************************************************/
//  104 // u8_SCCB_Data_TxByte //

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  105 uint8 u8_SCCB_Data_TxByte(uint8 InData)
//  106 {
u8_SCCB_Data_TxByte:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//  107     uint8 loop = 8; // Ñ­»· 7 - 0
        MOVS     R5,#+8
        B.N      ??u8_SCCB_Data_TxByte_0
//  108     while(loop)
//  109     {
//  110         uint8 TxData = ((InData >> (loop-1))& 0x01); loop--; // Êý¾Ý¸üÐÂ
//  111         if(TxData){SCCB_SDA_1;}
//  112               else{SCCB_SDA_0;}
??u8_SCCB_Data_TxByte_1:
        LDR.W    R0,??DataTable9_3  ;; 0x400ff0c0
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x1000
        LDR.W    R1,??DataTable9_3  ;; 0x400ff0c0
        STR      R0,[R1, #+0]
//  113         v_SCCB_SCL_0_Delay();
??u8_SCCB_Data_TxByte_2:
        MOVS     R0,#+37
        BL       v_SCCB_Delay_Time
//  114         SCCB_SCL_1;v_SCCB_SCL_1_Delay();
        LDR.W    R0,??DataTable9_3  ;; 0x400ff0c0
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000
        LDR.W    R1,??DataTable9_3  ;; 0x400ff0c0
        STR      R0,[R1, #+0]
        MOVS     R0,#+37
        BL       v_SCCB_Delay_Time
//  115         SCCB_SCL_0;
        LDR.W    R0,??DataTable9_3  ;; 0x400ff0c0
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x2000
        LDR.W    R1,??DataTable9_3  ;; 0x400ff0c0
        STR      R0,[R1, #+0]
??u8_SCCB_Data_TxByte_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??u8_SCCB_Data_TxByte_3
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        SUBS     R0,R5,#+1
        ASRS     R0,R4,R0
        ANDS     R0,R0,#0x1
        SUBS     R5,R5,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??u8_SCCB_Data_TxByte_1
        LDR.W    R0,??DataTable9_3  ;; 0x400ff0c0
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000
        LDR.W    R1,??DataTable9_3  ;; 0x400ff0c0
        STR      R0,[R1, #+0]
        B.N      ??u8_SCCB_Data_TxByte_2
//  116     }
//  117     SCCB_TRUE;
??u8_SCCB_Data_TxByte_3:
        MOVS     R0,#+84
        POP      {R1,R4,R5,PC}    ;; return
//  118 }
//  119 
//  120 /******************************************************************************/
//  121 // u8_SCCB_Data_RxByte // Ê±Ðò´ýÐÞ¸Ä

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  122 uint8 u8_SCCB_Data_RxByte(uint8 * RxByte)
//  123 {
u8_SCCB_Data_RxByte:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
//  124     uint8 InData = 0; // ´ó¶ËÊý¾ÝÇé¿ö
        MOVS     R5,#+0
//  125     SCCB_SDA_DDR_IN; // ¶¨ÒåSDAÎªÊý¾ÝÊäÈë
        LDR.W    R0,??DataTable10  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x1000
        LDR.W    R1,??DataTable10  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  126     uint8 loop = 8; // Ñ­»· 7 - 0
        MOVS     R6,#+8
        B.N      ??u8_SCCB_Data_RxByte_0
//  127     while(loop--)
//  128     {
//  129         InData = (InData << 1);
//  130         SCCB_SCL_0;v_SCCB_SCL_0_Delay();
//  131         SCCB_SCL_1;v_SCCB_SCL_1_Delay();
//  132         if( SCCB_SDA_IN ){InData |= 0x01;} // ÊäÈëÊý¾Ý¸üÐÂ
??u8_SCCB_Data_RxByte_1:
        ORRS     R5,R5,#0x1
??u8_SCCB_Data_RxByte_0:
        MOVS     R0,R6
        SUBS     R6,R0,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??u8_SCCB_Data_RxByte_2
        LSLS     R5,R5,#+1
        LDR.W    R0,??DataTable9_3  ;; 0x400ff0c0
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x2000
        LDR.W    R1,??DataTable9_3  ;; 0x400ff0c0
        STR      R0,[R1, #+0]
        MOVS     R0,#+37
        BL       v_SCCB_Delay_Time
        LDR.W    R0,??DataTable9_3  ;; 0x400ff0c0
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000
        LDR.W    R1,??DataTable9_3  ;; 0x400ff0c0
        STR      R0,[R1, #+0]
        MOVS     R0,#+37
        BL       v_SCCB_Delay_Time
        LDR.W    R0,??DataTable9_4  ;; 0x400ff0d0
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+12,#+1
        CMP      R0,#+0
        BNE.N    ??u8_SCCB_Data_RxByte_1
//  133                      else{InData &=~0x01;}
        ANDS     R5,R5,#0xFE
        B.N      ??u8_SCCB_Data_RxByte_0
//  134     }
//  135     (*RxByte) = InData;
??u8_SCCB_Data_RxByte_2:
        STRB     R5,[R4, #+0]
//  136     SCCB_SDA_DDR_OUT; SCCB_SCL_0;
        LDR.W    R0,??DataTable10  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000
        LDR.W    R1,??DataTable10  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable9_3  ;; 0x400ff0c0
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x2000
        LDR.W    R1,??DataTable9_3  ;; 0x400ff0c0
        STR      R0,[R1, #+0]
//  137     SCCB_TRUE;
        MOVS     R0,#+84
        POP      {R4-R6,PC}       ;; return
//  138 }
//  139 
//  140 
//  141 /******************************************************************************/
//  142 // u8_SCCB_WaitACK // µÈ´ýÓ¦´ð

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  143 uint8 u8_SCCB_WaitACK()
//  144 {
u8_SCCB_WaitACK:
        PUSH     {R7,LR}
//  145     SCCB_SCL_0; v_SCCB_SCL_0_Delay(); SCCB_SDA_DDR_IN;
        LDR.W    R0,??DataTable9_3  ;; 0x400ff0c0
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x2000
        LDR.W    R1,??DataTable9_3  ;; 0x400ff0c0
        STR      R0,[R1, #+0]
        MOVS     R0,#+37
        BL       v_SCCB_Delay_Time
        LDR.W    R0,??DataTable10  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x1000
        LDR.W    R1,??DataTable10  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  146     SCCB_SCL_1; v_SCCB_SCL_1_Delay();
        LDR.W    R0,??DataTable9_3  ;; 0x400ff0c0
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000
        LDR.W    R1,??DataTable9_3  ;; 0x400ff0c0
        STR      R0,[R1, #+0]
        MOVS     R0,#+37
        BL       v_SCCB_Delay_Time
//  147     if(SCCB_SDA_IN) // ¼ì²âÍâ²¿
        LDR.W    R0,??DataTable9_4  ;; 0x400ff0d0
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+12,#+1
        CMP      R0,#+0
        BEQ.N    ??u8_SCCB_WaitACK_0
//  148     {
//  149         SCCB_SDA_DDR_OUT;
        LDR.W    R0,??DataTable10  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000
        LDR.W    R1,??DataTable10  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  150         SCCB_SCL_0;
        LDR.W    R0,??DataTable9_3  ;; 0x400ff0c0
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x2000
        LDR.W    R1,??DataTable9_3  ;; 0x400ff0c0
        STR      R0,[R1, #+0]
//  151         SCCB_ERROR;
        MOVS     R0,#+70
        B.N      ??u8_SCCB_WaitACK_1
//  152     }SCCB_SDA_DDR_OUT;
??u8_SCCB_WaitACK_0:
        LDR.W    R0,??DataTable10  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000
        LDR.W    R1,??DataTable10  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  153     SCCB_SCL_0;
        LDR.W    R0,??DataTable9_3  ;; 0x400ff0c0
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x2000
        LDR.W    R1,??DataTable9_3  ;; 0x400ff0c0
        STR      R0,[R1, #+0]
//  154     SCCB_TRUE;
        MOVS     R0,#+84
??u8_SCCB_WaitACK_1:
        POP      {R1,PC}          ;; return
//  155 }
//  156 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  157 void v_SCCB_ACK()
//  158 {
v_SCCB_ACK:
        PUSH     {R7,LR}
//  159     SCCB_SCL_0; v_SCCB_SCL_0_Delay();
        LDR.W    R0,??DataTable9_3  ;; 0x400ff0c0
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x2000
        LDR.W    R1,??DataTable9_3  ;; 0x400ff0c0
        STR      R0,[R1, #+0]
        MOVS     R0,#+37
        BL       v_SCCB_Delay_Time
//  160     SCCB_SDA_0;
        LDR.W    R0,??DataTable9_3  ;; 0x400ff0c0
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x1000
        LDR.W    R1,??DataTable9_3  ;; 0x400ff0c0
        STR      R0,[R1, #+0]
//  161     SCCB_SCL_1; //v_SCCB_SCL_0_Delay();
        LDR.W    R0,??DataTable9_3  ;; 0x400ff0c0
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000
        LDR.W    R1,??DataTable9_3  ;; 0x400ff0c0
        STR      R0,[R1, #+0]
//  162     SCCB_SCL_0;
        LDR.W    R0,??DataTable9_3  ;; 0x400ff0c0
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x2000
        LDR.W    R1,??DataTable9_3  ;; 0x400ff0c0
        STR      R0,[R1, #+0]
//  163 }
        POP      {R0,PC}          ;; return
//  164 
//  165 
//  166 
//  167 /******************************************************************************/
//  168 // v_SCCB_NoAck

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  169 void v_SCCB_NoAck(void)
//  170 {
v_SCCB_NoAck:
        PUSH     {R7,LR}
//  171     SCCB_SCL_0;v_SCCB_SCL_0_Delay();
        LDR.W    R0,??DataTable9_3  ;; 0x400ff0c0
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x2000
        LDR.W    R1,??DataTable9_3  ;; 0x400ff0c0
        STR      R0,[R1, #+0]
        MOVS     R0,#+37
        BL       v_SCCB_Delay_Time
//  172     SCCB_SDA_1;v_SCCB_SCL_1_Delay();
        LDR.W    R0,??DataTable9_3  ;; 0x400ff0c0
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000
        LDR.W    R1,??DataTable9_3  ;; 0x400ff0c0
        STR      R0,[R1, #+0]
        MOVS     R0,#+37
        BL       v_SCCB_Delay_Time
//  173     SCCB_SCL_1;v_SCCB_SCL_1_Delay();
        LDR.W    R0,??DataTable9_3  ;; 0x400ff0c0
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000
        LDR.W    R1,??DataTable9_3  ;; 0x400ff0c0
        STR      R0,[R1, #+0]
        MOVS     R0,#+37
        BL       v_SCCB_Delay_Time
//  174     SCCB_SCL_0;v_SCCB_SCL_0_Delay();
        LDR.W    R0,??DataTable9_3  ;; 0x400ff0c0
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x2000
        LDR.W    R1,??DataTable9_3  ;; 0x400ff0c0
        STR      R0,[R1, #+0]
        MOVS     R0,#+37
        BL       v_SCCB_Delay_Time
//  175 }
        POP      {R0,PC}          ;; return
//  176 
//  177 /******************************************************************************/
//  178 /******************************************************************************/
//  179 // Èí¼þÄ£¿é ÊµÏÖ SCCBÊ±Ðò
//  180 //============================================================================//
//  181 // ¶Á

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  182 uint8 u8_SCCB_ReadReg_u8(uint8 SlaveID ,uint8 * result ,uint8 u8RegAddress)
//  183 {
u8_SCCB_ReadReg_u8:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  184     if('F' == u8_SCCB_Start()){return 'F';}                             // Start
        BL       u8_SCCB_Start
        CMP      R0,#+70
        BNE.N    ??u8_SCCB_ReadReg_u8_0
        MOVS     R0,#+70
        B.N      ??u8_SCCB_ReadReg_u8_1
//  185     u8_SCCB_Data_TxByte((SlaveID << 1)|0);                              // Ð´Ä£Ê½ => ´Ó»úµØÖ·
??u8_SCCB_ReadReg_u8_0:
        LSLS     R0,R4,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       u8_SCCB_Data_TxByte
//  186     if('F' == u8_SCCB_WaitACK()){u8_SCCB_Stop();return 'F';}            // µÈ´ýÓ¦´ð
        BL       u8_SCCB_WaitACK
        CMP      R0,#+70
        BNE.N    ??u8_SCCB_ReadReg_u8_2
        BL       u8_SCCB_Stop
        MOVS     R0,#+70
        B.N      ??u8_SCCB_ReadReg_u8_1
//  187     u8_SCCB_Data_TxByte(u8RegAddress);                                  // Ð´Ä£Ê½ => ¼Ä´æÆ÷
??u8_SCCB_ReadReg_u8_2:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       u8_SCCB_Data_TxByte
//  188     if('F' == u8_SCCB_WaitACK()){u8_SCCB_Stop();return 'F';}            // µÈ´ýÓ¦´ð
        BL       u8_SCCB_WaitACK
        CMP      R0,#+70
        BNE.N    ??u8_SCCB_ReadReg_u8_3
        BL       u8_SCCB_Stop
        MOVS     R0,#+70
        B.N      ??u8_SCCB_ReadReg_u8_1
//  189     u8_SCCB_Stop();                                                     // ×ÜÏßÍ£Ö¹ 
??u8_SCCB_ReadReg_u8_3:
        BL       u8_SCCB_Stop
//  190     if('F' == u8_SCCB_Start()){u8_SCCB_Stop();return 'F';}              // ×ÜÏß¼ÌÐø
        BL       u8_SCCB_Start
        CMP      R0,#+70
        BNE.N    ??u8_SCCB_ReadReg_u8_4
        BL       u8_SCCB_Stop
        MOVS     R0,#+70
        B.N      ??u8_SCCB_ReadReg_u8_1
//  191     u8_SCCB_Data_TxByte((SlaveID << 1)|1);                              // ¶ÁÄ£Ê½ => ´Ó»úµØÖ·
??u8_SCCB_ReadReg_u8_4:
        LSLS     R0,R4,#+1
        ORRS     R0,R0,#0x1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       u8_SCCB_Data_TxByte
//  192     if('F' == u8_SCCB_WaitACK()){u8_SCCB_Stop();return 'F';}            // µÈ´ýÓ¦´ð
        BL       u8_SCCB_WaitACK
        CMP      R0,#+70
        BNE.N    ??u8_SCCB_ReadReg_u8_5
        BL       u8_SCCB_Stop
        MOVS     R0,#+70
        B.N      ??u8_SCCB_ReadReg_u8_1
//  193     u8_SCCB_Data_RxByte(result);v_SCCB_NoAck();                         // Êý¾Ý½ÓÊÕ
??u8_SCCB_ReadReg_u8_5:
        MOVS     R0,R5
        BL       u8_SCCB_Data_RxByte
        BL       v_SCCB_NoAck
//  194     u8_SCCB_Stop();                                                     // Í£Ö¹
        BL       u8_SCCB_Stop
//  195     SCCB_TRUE;                                                          // ·µ»ØTRUE
        MOVS     R0,#+84
??u8_SCCB_ReadReg_u8_1:
        POP      {R4-R6,PC}       ;; return
//  196 }
//  197 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  198 uint8 u8_SCCB_ReadReg_u16(uint8 SlaveID ,uint16 * result ,uint8 u8RegAddress)
//  199 {
u8_SCCB_ReadReg_u16:
        PUSH     {R4-R6,LR}
        SUB      SP,SP,#+8
        MOVS     R5,R0
        MOVS     R4,R1
        MOVS     R6,R2
//  200     uint8 temp_High_eight = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
//  201     uint8 temp_Low_eight  = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//  202     if('F' == u8_SCCB_Start()){return 'F';}                             // Start
        BL       u8_SCCB_Start
        CMP      R0,#+70
        BNE.N    ??u8_SCCB_ReadReg_u16_0
        MOVS     R0,#+70
        B.N      ??u8_SCCB_ReadReg_u16_1
//  203     u8_SCCB_Data_TxByte((SlaveID << 1)|0);                              // Ð´Ä£Ê½ => ´Ó»úµØÖ·
??u8_SCCB_ReadReg_u16_0:
        LSLS     R0,R5,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       u8_SCCB_Data_TxByte
//  204     if('F' == u8_SCCB_WaitACK()){u8_SCCB_Stop();return 'F';}            // µÈ´ýÓ¦´ð
        BL       u8_SCCB_WaitACK
        CMP      R0,#+70
        BNE.N    ??u8_SCCB_ReadReg_u16_2
        BL       u8_SCCB_Stop
        MOVS     R0,#+70
        B.N      ??u8_SCCB_ReadReg_u16_1
//  205     u8_SCCB_Data_TxByte(u8RegAddress);                                  // Ð´Ä£Ê½ => ¼Ä´æÆ÷
??u8_SCCB_ReadReg_u16_2:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       u8_SCCB_Data_TxByte
//  206     if('F' == u8_SCCB_WaitACK()){u8_SCCB_Stop();return 'F';}            // µÈ´ýÓ¦´ð
        BL       u8_SCCB_WaitACK
        CMP      R0,#+70
        BNE.N    ??u8_SCCB_ReadReg_u16_3
        BL       u8_SCCB_Stop
        MOVS     R0,#+70
        B.N      ??u8_SCCB_ReadReg_u16_1
//  207     u8_SCCB_Stop();                                                     // ×ÜÏßÍ£Ö¹ 
??u8_SCCB_ReadReg_u16_3:
        BL       u8_SCCB_Stop
//  208     if('F' == u8_SCCB_Start()){u8_SCCB_Stop();return 'F';}              // ×ÜÏß¼ÌÐø
        BL       u8_SCCB_Start
        CMP      R0,#+70
        BNE.N    ??u8_SCCB_ReadReg_u16_4
        BL       u8_SCCB_Stop
        MOVS     R0,#+70
        B.N      ??u8_SCCB_ReadReg_u16_1
//  209     u8_SCCB_Data_TxByte((SlaveID << 1)|1);                              // ¶ÁÄ£Ê½ => ´Ó»úµØÖ·
??u8_SCCB_ReadReg_u16_4:
        LSLS     R0,R5,#+1
        ORRS     R0,R0,#0x1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       u8_SCCB_Data_TxByte
//  210     if('F' == u8_SCCB_WaitACK()){u8_SCCB_Stop();return 'F';}            // µÈ´ýÓ¦´ð
        BL       u8_SCCB_WaitACK
        CMP      R0,#+70
        BNE.N    ??u8_SCCB_ReadReg_u16_5
        BL       u8_SCCB_Stop
        MOVS     R0,#+70
        B.N      ??u8_SCCB_ReadReg_u16_1
//  211     u8_SCCB_Data_RxByte( &temp_High_eight );                            // ¸ß8Î»
??u8_SCCB_ReadReg_u16_5:
        ADD      R0,SP,#+1
        BL       u8_SCCB_Data_RxByte
//  212     v_SCCB_ACK();                                                       // Ö÷»ú·¢ËÍACK
        BL       v_SCCB_ACK
//  213     u8_SCCB_Data_RxByte( &temp_Low_eight );                             // µÍ8Î»
        ADD      R0,SP,#+0
        BL       u8_SCCB_Data_RxByte
//  214     *result = temp_Low_eight | ((temp_High_eight << 8) & 0xFF00);       // Êý¾Ý´æ´¢
        LDRB     R0,[SP, #+0]
        LDRB     R1,[SP, #+1]
        ORRS     R0,R0,R1, LSL #+8
        STRH     R0,[R4, #+0]
//  215     v_SCCB_NoAck();                                                     // Êý¾Ý½ÓÊÕ
        BL       v_SCCB_NoAck
//  216     u8_SCCB_Stop();                                                     // Í£Ö¹
        BL       u8_SCCB_Stop
//  217     SCCB_TRUE;                                                          // ·µ»ØTRUE
        MOVS     R0,#+84
??u8_SCCB_ReadReg_u16_1:
        POP      {R1,R2,R4-R6,PC}  ;; return
//  218 }
//  219 
//  220 //============================================================================//
//  221 // Ð´

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  222 uint8 u8_SCCB_WriteReg_u8(uint8 SlaveID ,uint8 data ,uint8 u8RegAddress)
//  223 {
u8_SCCB_WriteReg_u8:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  224     if('F' == u8_SCCB_Start()){return 'F';}                             // Start
        BL       u8_SCCB_Start
        CMP      R0,#+70
        BNE.N    ??u8_SCCB_WriteReg_u8_0
        MOVS     R0,#+70
        B.N      ??u8_SCCB_WriteReg_u8_1
//  225     u8_SCCB_Data_TxByte((SlaveID << 1)|0);                              // Ð´Ä£Ê½ => ´Ó»úµØÖ·
??u8_SCCB_WriteReg_u8_0:
        LSLS     R0,R4,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       u8_SCCB_Data_TxByte
//  226     if('F' == u8_SCCB_WaitACK()){u8_SCCB_Stop();return 'F';}            // µÈ´ýÓ¦´ð
        BL       u8_SCCB_WaitACK
        CMP      R0,#+70
        BNE.N    ??u8_SCCB_WriteReg_u8_2
        BL       u8_SCCB_Stop
        MOVS     R0,#+70
        B.N      ??u8_SCCB_WriteReg_u8_1
//  227     u8_SCCB_Data_TxByte(u8RegAddress);                                  // Ð´Ä£Ê½ => ¼Ä´æÆ÷
??u8_SCCB_WriteReg_u8_2:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       u8_SCCB_Data_TxByte
//  228     if('F' == u8_SCCB_WaitACK()){u8_SCCB_Stop();return 'F';}            // µÈ´ýÓ¦´ð
        BL       u8_SCCB_WaitACK
        CMP      R0,#+70
        BNE.N    ??u8_SCCB_WriteReg_u8_3
        BL       u8_SCCB_Stop
        MOVS     R0,#+70
        B.N      ??u8_SCCB_WriteReg_u8_1
//  229     u8_SCCB_Data_TxByte(data);                                          // Ð´Ä£Ê½ => Êý¾Ý
??u8_SCCB_WriteReg_u8_3:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       u8_SCCB_Data_TxByte
//  230     if('F' == u8_SCCB_WaitACK()){u8_SCCB_Stop();return 'F';}            // µÈ´ýÓ¦´ð
        BL       u8_SCCB_WaitACK
        CMP      R0,#+70
        BNE.N    ??u8_SCCB_WriteReg_u8_4
        BL       u8_SCCB_Stop
        MOVS     R0,#+70
        B.N      ??u8_SCCB_WriteReg_u8_1
//  231     u8_SCCB_Stop();                                                     // Í£Ö¹
??u8_SCCB_WriteReg_u8_4:
        BL       u8_SCCB_Stop
//  232     SCCB_TRUE;                                                          // ·µ»ØTRUE
        MOVS     R0,#+84
??u8_SCCB_WriteReg_u8_1:
        POP      {R4-R6,PC}       ;; return
//  233 }
//  234 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  235 uint8 u8_SCCB_WriteReg_u16(uint8 SlaveID ,uint16 data ,uint8 u8RegAddress)
//  236 {
u8_SCCB_WriteReg_u16:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  237     if('F' == u8_SCCB_Start()){return 'F';}                             // Start
        BL       u8_SCCB_Start
        CMP      R0,#+70
        BNE.N    ??u8_SCCB_WriteReg_u16_0
        MOVS     R0,#+70
        B.N      ??u8_SCCB_WriteReg_u16_1
//  238     u8_SCCB_Data_TxByte((SlaveID << 1)|0);                              // Ð´Ä£Ê½ => ´Ó»úµØÖ·
??u8_SCCB_WriteReg_u16_0:
        LSLS     R0,R4,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       u8_SCCB_Data_TxByte
//  239     if('F' == u8_SCCB_WaitACK()){u8_SCCB_Stop();return 'F';}            // µÈ´ýÓ¦´ð
        BL       u8_SCCB_WaitACK
        CMP      R0,#+70
        BNE.N    ??u8_SCCB_WriteReg_u16_2
        BL       u8_SCCB_Stop
        MOVS     R0,#+70
        B.N      ??u8_SCCB_WriteReg_u16_1
//  240     u8_SCCB_Data_TxByte(u8RegAddress);                                  // Ð´Ä£Ê½ => ¼Ä´æÆ÷
??u8_SCCB_WriteReg_u16_2:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       u8_SCCB_Data_TxByte
//  241     if('F' == u8_SCCB_WaitACK()){u8_SCCB_Stop();return 'F';}            // µÈ´ýÓ¦´ð
        BL       u8_SCCB_WaitACK
        CMP      R0,#+70
        BNE.N    ??u8_SCCB_WriteReg_u16_3
        BL       u8_SCCB_Stop
        MOVS     R0,#+70
        B.N      ??u8_SCCB_WriteReg_u16_1
//  242     u8_SCCB_Data_TxByte( (data >> 8) & 0x00FF );                        // Ð´Ä£Ê½ => Êý¾Ý
??u8_SCCB_WriteReg_u16_3:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        LSRS     R0,R5,#+8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       u8_SCCB_Data_TxByte
//  243     if('F' == u8_SCCB_WaitACK()){u8_SCCB_Stop();return 'F';}            // µÈ´ýÓ¦´ð
        BL       u8_SCCB_WaitACK
        CMP      R0,#+70
        BNE.N    ??u8_SCCB_WriteReg_u16_4
        BL       u8_SCCB_Stop
        MOVS     R0,#+70
        B.N      ??u8_SCCB_WriteReg_u16_1
//  244     u8_SCCB_Data_TxByte( data & 0x00FF );                               // Ð´Ä£Ê½ => Êý¾Ý
??u8_SCCB_WriteReg_u16_4:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       u8_SCCB_Data_TxByte
//  245     if('F' == u8_SCCB_WaitACK()){u8_SCCB_Stop();return 'F';}            // µÈ´ýÓ¦´ð
        BL       u8_SCCB_WaitACK
        CMP      R0,#+70
        BNE.N    ??u8_SCCB_WriteReg_u16_5
        BL       u8_SCCB_Stop
        MOVS     R0,#+70
        B.N      ??u8_SCCB_WriteReg_u16_1
//  246     u8_SCCB_Stop();                                                     // Í£Ö¹
??u8_SCCB_WriteReg_u16_5:
        BL       u8_SCCB_Stop
//  247     SCCB_TRUE;                                                          // ·µ»ØTRUE
        MOVS     R0,#+84
??u8_SCCB_WriteReg_u16_1:
        POP      {R4-R6,PC}       ;; return
//  248 }
//  249 
//  250 //============================================================================//
//  251 //============================================================================//
//  252 //============================================================================//
//  253 // ÉãÏñÍ·³õÊ¼»¯
//  254 #define Beholder_Addr                   (0xB8 >> 1)
//  255 #define Beholder_ChipVer                (0xFF)
//  256 #define Beholder_Col_Start              (0x01)
//  257 
//  258 #define BeholderReg_Read_Mode_0D                        (0x0D)
//  259 #define BeholderReg_Gain_Set_35                         (0x35)
//  260 #define BeholderReg_Auto_GainExp_0xAF                   (0xAF)
//  261 // 0x80 - 0x98
//  262 #define BeholderReg_ADCref_2C                           (0x2C)
//  263 // ºÚµçÆ½Ð£×¼ 42 4C 46 47 48
//  264 
//  265 //#define Beholder_offsetC_Var            (0x48)

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  266 s_ImageInfor m_self_Beholder;//ÉãÏñÍ·ÐÅÏ¢
m_self_Beholder:
        DS8 12
//  267 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  268 uint8 b_Beholder_Init()
//  269 {
b_Beholder_Init:
        PUSH     {R4-R11,LR}
        SUB      SP,SP,#+20
//  270     m_self_Beholder.errorNum = 0;
        LDR.W    R0,??DataTable10_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+6]
//  271     m_self_Beholder.FrameNum = 0;
        LDR.W    R0,??DataTable10_2
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  272     m_self_Beholder.LineCounter = 0;
        LDR.W    R0,??DataTable10_2
        MOVS     R1,#+0
        STRH     R1,[R0, #+4]
//  273     m_self_Beholder.regRewrite = 0;
        LDR.W    R0,??DataTable10_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+7]
//  274     m_self_Beholder.regRewriteNumber = 0;
        LDR.W    R0,??DataTable10_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+8]
//  275     m_self_Beholder.regReNumber_RegName = 0;  
        LDR.W    R0,??DataTable10_2
        MOVS     R1,#+0
        STRH     R1,[R0, #+10]
//  276     
//  277     v_SCCB_Init();
        BL       v_SCCB_Init
//  278     uint16 result = 0;
        MOVS     R0,#+0
        STRH     R0,[SP, #+0]
//  279     uint8 writeEnable = 0;
        MOVS     R4,#+0
//  280 //    uint8 writeDone = 0;//Ð´Íê±Ï
//  281       
//  282     //Magic Number//=>³£Êý
//  283     const uint16 regFE_BEEF_unlocked = 0xBEEF;
        MOVW     R0,#+48879
        STRH     R0,[SP, #+12]
//  284     const uint16 reg03_480u_height = 480;
        MOV      R0,#+480
        STRH     R0,[SP, #+10]
//  285     const uint16 reg05_94u_lineShadowTime = 94;
        MOVS     R0,#+94
        STRH     R0,[SP, #+8]
//  286     const uint16 reg06_45u_fieldShadowTime = 500;
        MOV      R0,#+500
        STRH     R0,[SP, #+6]
//  287     
//  288     const uint16 reg07_188_chipCtl = 0x388;
        MOV      R0,#+904
        STRH     R0,[SP, #+4]
//  289     const uint16 reg0B_number_totalShutterWdith = 35;//30//80ÊµÑéÊÒ±ê×¼¹âÇ¿
        MOVS     R5,#+35
//  290     m_ImageAbstract.TotalShutterTime = reg0B_number_totalShutterWdith;
        LDR.W    R0,??DataTable10_3
        STRH     R5,[R0, #+36]
//  291     
//  292     
//  293     const uint16 reg0F_11_cameraSetting = 0x11;
        MOVS     R0,#+17
        STRH     R0,[SP, #+2]
//  294     const uint16 reg1C_3_dataConverting = 3;
        MOVS     R6,#+3
//  295     
//  296     const uint16 reg2C_7_ADCref = 7;
        MOVS     R7,#+7
//  297     const uint16 regAF_0_AGEC_unlocked = 0;
        MOVS     R8,#+0
//  298     const uint16 reg0D_32A_readMode = 0x32A;
        MOVW     R9,#+810
//  299     const uint16 reg0A_64_ShutterWdithCtl = 0x64;
        MOVS     R10,#+100
//  300     
//  301     const uint16 reg35_number_Gain = 32;
        MOVS     R11,#+32
//  302     
//  303     if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,Beholder_ChipVer) ){return 'F';}//È·ÈÏÐ¾Æ¬ÐÍºÅ
        MOVS     R2,#+255
        ADD      R1,SP,#+0
        MOVS     R0,#+92
        BL       u8_SCCB_ReadReg_u16
        CMP      R0,#+84
        BEQ.N    ??b_Beholder_Init_0
        MOVS     R0,#+70
        B.N      ??b_Beholder_Init_1
//  304     if(!((0x1311 == result)||(0x1313 == result))){return 'F';}//0x1311 0x1313//È·ÈÏÐÍºÅ
??b_Beholder_Init_0:
        LDRH     R0,[SP, #+0]
        MOVW     R1,#+4881
        CMP      R0,R1
        BEQ.N    ??b_Beholder_Init_2
        LDRH     R0,[SP, #+0]
        MOVW     R1,#+4883
        CMP      R0,R1
        BEQ.N    ??b_Beholder_Init_2
        MOVS     R0,#+70
        B.N      ??b_Beholder_Init_1
//  305     
//  306     do//¼Ä´æÆ÷¿ØÖÆ
//  307     {    
//  308         //====================================================================//
//  309       
//  310         if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,regFE_BEEF_unlocked,0xFE) ){return 'F';}
??b_Beholder_Init_2:
        MOVS     R2,#+254
        LDRH     R1,[SP, #+12]
        MOVS     R0,#+92
        BL       u8_SCCB_WriteReg_u16
        CMP      R0,#+84
        BEQ.N    ??b_Beholder_Init_3
        MOVS     R0,#+70
        B.N      ??b_Beholder_Init_1
//  311         if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,reg03_480u_height,0x03) ){return 'F';}
??b_Beholder_Init_3:
        MOVS     R2,#+3
        LDRH     R1,[SP, #+10]
        MOVS     R0,#+92
        BL       u8_SCCB_WriteReg_u16
        CMP      R0,#+84
        BEQ.N    ??b_Beholder_Init_4
        MOVS     R0,#+70
        B.N      ??b_Beholder_Init_1
//  312         if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,reg05_94u_lineShadowTime,0x05) ){return 'F';}
??b_Beholder_Init_4:
        MOVS     R2,#+5
        LDRH     R1,[SP, #+8]
        MOVS     R0,#+92
        BL       u8_SCCB_WriteReg_u16
        CMP      R0,#+84
        BEQ.N    ??b_Beholder_Init_5
        MOVS     R0,#+70
        B.N      ??b_Beholder_Init_1
//  313         if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,reg06_45u_fieldShadowTime,0x06) ){return 'F';}
??b_Beholder_Init_5:
        MOVS     R2,#+6
        LDRH     R1,[SP, #+6]
        MOVS     R0,#+92
        BL       u8_SCCB_WriteReg_u16
        CMP      R0,#+84
        BEQ.N    ??b_Beholder_Init_6
        MOVS     R0,#+70
        B.N      ??b_Beholder_Init_1
//  314         if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,reg07_188_chipCtl,0x07) ){return 'F';}
??b_Beholder_Init_6:
        MOVS     R2,#+7
        LDRH     R1,[SP, #+4]
        MOVS     R0,#+92
        BL       u8_SCCB_WriteReg_u16
        CMP      R0,#+84
        BEQ.N    ??b_Beholder_Init_7
        MOVS     R0,#+70
        B.N      ??b_Beholder_Init_1
//  315         if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,reg0A_64_ShutterWdithCtl,0x0A) ){return 'F';}
??b_Beholder_Init_7:
        MOVS     R2,#+10
        MOV      R1,R10
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+92
        BL       u8_SCCB_WriteReg_u16
        CMP      R0,#+84
        BEQ.N    ??b_Beholder_Init_8
        MOVS     R0,#+70
        B.N      ??b_Beholder_Init_1
//  316         if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,reg0B_number_totalShutterWdith,0x0B) ){return 'F';}
??b_Beholder_Init_8:
        MOVS     R2,#+11
        MOVS     R1,R5
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+92
        BL       u8_SCCB_WriteReg_u16
        CMP      R0,#+84
        BEQ.N    ??b_Beholder_Init_9
        MOVS     R0,#+70
        B.N      ??b_Beholder_Init_1
//  317         if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,reg0D_32A_readMode,0x0D) ){return 'F';}
??b_Beholder_Init_9:
        MOVS     R2,#+13
        MOV      R1,R9
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+92
        BL       u8_SCCB_WriteReg_u16
        CMP      R0,#+84
        BEQ.N    ??b_Beholder_Init_10
        MOVS     R0,#+70
        B.N      ??b_Beholder_Init_1
//  318         if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,reg0F_11_cameraSetting,0x0F) ){return 'F';}
??b_Beholder_Init_10:
        MOVS     R2,#+15
        LDRH     R1,[SP, #+2]
        MOVS     R0,#+92
        BL       u8_SCCB_WriteReg_u16
        CMP      R0,#+84
        BEQ.N    ??b_Beholder_Init_11
        MOVS     R0,#+70
        B.N      ??b_Beholder_Init_1
//  319         if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,reg1C_3_dataConverting,0x1C) ){return 'F';}
??b_Beholder_Init_11:
        MOVS     R2,#+28
        MOVS     R1,R6
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+92
        BL       u8_SCCB_WriteReg_u16
        CMP      R0,#+84
        BEQ.N    ??b_Beholder_Init_12
        MOVS     R0,#+70
        B.N      ??b_Beholder_Init_1
//  320         if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,reg2C_7_ADCref,0x2C) ){return 'F';}
??b_Beholder_Init_12:
        MOVS     R2,#+44
        MOVS     R1,R7
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+92
        BL       u8_SCCB_WriteReg_u16
        CMP      R0,#+84
        BEQ.N    ??b_Beholder_Init_13
        MOVS     R0,#+70
        B.N      ??b_Beholder_Init_1
//  321         if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,regAF_0_AGEC_unlocked,0xAF) ){return 'F';}
??b_Beholder_Init_13:
        MOVS     R2,#+175
        MOV      R1,R8
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+92
        BL       u8_SCCB_WriteReg_u16
        CMP      R0,#+84
        BEQ.N    ??b_Beholder_Init_14
        MOVS     R0,#+70
        B.N      ??b_Beholder_Init_1
//  322         if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,reg35_number_Gain,0x35) ){return 'F';}
??b_Beholder_Init_14:
        MOVS     R2,#+53
        MOV      R1,R11
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+92
        BL       u8_SCCB_WriteReg_u16
        CMP      R0,#+84
        BEQ.N    ??b_Beholder_Init_15
        MOVS     R0,#+70
        B.N      ??b_Beholder_Init_1
//  323       
//  324         if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,1,0x0C) ){return 'F';}
??b_Beholder_Init_15:
        MOVS     R2,#+12
        MOVS     R1,#+1
        MOVS     R0,#+92
        BL       u8_SCCB_WriteReg_u16
        CMP      R0,#+84
        BEQ.N    ??b_Beholder_Init_16
        MOVS     R0,#+70
        B.N      ??b_Beholder_Init_1
//  325         if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,0,0x0C) ){return 'F';}
??b_Beholder_Init_16:
        MOVS     R2,#+12
        MOVS     R1,#+0
        MOVS     R0,#+92
        BL       u8_SCCB_WriteReg_u16
        CMP      R0,#+84
        BEQ.N    ??b_Beholder_Init_17
        MOVS     R0,#+70
        B.N      ??b_Beholder_Init_1
//  326         /*
//  327         if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x03) ){return 'F';}
//  328         if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x05) ){return 'F';}
//  329         if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x06) ){return 'F';}
//  330         if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x07) ){return 'F';}
//  331         if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x0A) ){return 'F';} 
//  332         if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x0B) ){return 'F';} 
//  333         if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x0D) ){return 'F';} 
//  334         if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x0F) ){return 'F';} 
//  335         if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x1C) ){return 'F';} 
//  336         if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x2C) ){return 'F';} 
//  337         if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0xAF) ){return 'F';} 
//  338         if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x35) ){return 'F';} 
//  339         //====================================================================//        
//  340         if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x03) ){return 'F';} 
//  341         if(!(reg03_480u_height == result)){m_self_Beholder.regRewriteNumber = 0x03;writeEnable = 1;break;}//¸ß¶ÈÉè¶¨ÊÇ·ñÎª480
//  342         
//  343         if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x05) ){return 'F';} 
//  344         if(!(reg05_94u_lineShadowTime == result)){m_self_Beholder.regRewriteNumber = 0x05;writeEnable = 1;break;}//ÐÐÏûÒþ
//  345         
//  346         if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x06) ){return 'F';} 
//  347         if(!(reg06_45u_fieldShadowTime == result)){m_self_Beholder.regRewriteNumber = 0x06;writeEnable = 1;break;}//ÁÐÏûÒþ
//  348         
//  349         if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x07) ){return 'F';} 
//  350         if(!(reg07_188_chipCtl == result)){m_self_Beholder.regRewriteNumber = 0x07;writeEnable = 1;break;}//Ð¾Æ¬¿ØÖÆ
//  351         
//  352         if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x0A) ){return 'F';} 
//  353         if(!(reg0A_64_ShutterWdithCtl == result)){m_self_Beholder.regRewriteNumber = 0x0A;writeEnable = 1;break;}//ÆØ¹âÊ±¼ä¿ØÖÆ
//  354           
//  355         if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x0B) ){return 'F';} 
//  356         if(!(reg0B_number_totalShutterWdith == result)){m_self_Beholder.regRewriteNumber = 0x0B;writeEnable = 1;break;}//
//  357         
//  358         if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x0D) ){return 'F';} 
//  359         if(!(reg0D_32A_readMode == result)){m_self_Beholder.regRewriteNumber = 0x0D;writeEnable = 1;break;}//Êý¾ÝÉÈ³öÄ£Ê½
//  360         
//  361         if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x0F) ){return 'F';} 
//  362         if(!(reg0F_11_cameraSetting == result)){m_self_Beholder.regRewriteNumber = 0x0F;writeEnable = 1;break;}//ÏñËØÄ£Ê½
//  363         
//  364         if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x1C) ){return 'F';} 
//  365         if(!(reg1C_3_dataConverting == result)){m_self_Beholder.regRewriteNumber = 0x1C;writeEnable = 1;break;}//ADC
//  366         
//  367         if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x2C) ){return 'F';} 
//  368         if(!(reg2C_7_ADCref == result)){m_self_Beholder.regRewriteNumber = 0x2C;writeEnable = 1;break;}//ADC²Î¿¼
//  369         
//  370         if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0xAF) ){return 'F';} 
//  371         if(!(regAF_0_AGEC_unlocked == result)){m_self_Beholder.regRewriteNumber = 0xAF;writeEnable = 1;break;}//AEC/AGC Enable
//  372 
//  373         if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x35) ){return 'F';} 
//  374         if(!(reg35_number_Gain == result)){m_self_Beholder.regRewriteNumber = 0x35;writeEnable = 1;break;}//Analog Gain
//  375         */
//  376     }while(0);
//  377     if(1 == writeEnable)//u8_SCCB_WriteReg_u16//¿ØÖÆÐ´Ð¾Æ¬
??b_Beholder_Init_17:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.N    ??b_Beholder_Init_18
//  378     {
//  379         m_self_Beholder.regReNumber_RegName = result;//Ð´ÐÅÏ¢
        LDR.W    R0,??DataTable10_2
        LDRH     R1,[SP, #+0]
        STRH     R1,[R0, #+10]
//  380         m_self_Beholder.regRewrite = 1;
        LDR.W    R0,??DataTable10_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+7]
//  381         return 'F';
        MOVS     R0,#+70
        B.N      ??b_Beholder_Init_1
//  382         /*
//  383         if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x03) ){return 'F';} 
//  384         if(!(reg03_480u_height == result)){return 'F';}//¸ß¶ÈÉè¶¨ÊÇ·ñÎª480
//  385         if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x05) ){return 'F';} 
//  386         if(!(reg05_94u_lineShadowTime == result)){return 'F';}//ÐÐÏûÒþ
//  387         if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x06) ){return 'F';} 
//  388         if(!(reg06_45u_fieldShadowTime == result)){return 'F';}//ÁÐÏûÒþ
//  389         if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x07) ){return 'F';} 
//  390         if(!(reg07_188_chipCtl == result)){return 'F';}//Ð¾Æ¬¿ØÖÆ
//  391         if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x0A) ){return 'F';} 
//  392         if(!(reg0A_64_ShutterWdithCtl == result)){return 'F';}//ÆØ¹âÊ±¼ä¿ØÖÆ
//  393         if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x0B) ){return 'F';} 
//  394         if(!(reg0B_number_totalShutterWdith == result)){return 'F';}//
//  395         if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x0D) ){return 'F';} 
//  396         if(!(reg0D_32A_readMode == result)){return 'F';}//Êý¾ÝÉÈ³öÄ£Ê½
//  397         if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x0F) ){return 'F';} 
//  398         if(!(reg0F_11_cameraSetting == result)){return 'F';}//ÏñËØÄ£Ê½
//  399         if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x1C) ){return 'F';} 
//  400         if(!(reg1C_3_dataConverting == result)){return 'F';}//ADC
//  401         if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x2C) ){return 'F';} 
//  402         if(!(reg2C_7_ADCref == result)){return 'F';}//ADC²Î¿¼
//  403         if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0xAF) ){return 'F';} 
//  404         if(!(regAF_0_AGEC_unlocked == result)){return 'F';}//AEC/AGC Enable
//  405         if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x35) ){return 'F';} 
//  406         if(!(reg35_number_Gain == result)){return 'F';}//Analog Gain
//  407         */
//  408     }
//  409     
//  410     // ====================================================================== //
//  411     
//  412     //ÏûÒþÇøÉèÖÃ
//  413 //if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,100,0x05) ){return 'F';} // ÐÐÏûÒþ
//  414 //    if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,50,0x06) ){return 'F';} // ³¡ÏûÒþ
//  415     //Ð¾Æ¬¿ØÖÆ
//  416  //   if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,0x188,0x07) ){return 'F';} // Ð¾Æ¬Ä£Ê½¿ØÖÆ
//  417     // ====================================================================== //
//  418     //ÆØ¹â¿í¶È
//  419 //    if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,0x64,0x0A) ){return 'F';} // 
//  420     // ====================================================================== //
//  421     //ÕûÌåÆØ¹â¿í¶È
//  422     //Total integration time in number of rows. This value is used only when AEC is disabled
//  423  //   if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,100,0x0B) ){return 'F';} //
//  424     // ====================================================================== //
//  425     //¶Á³öÄ£Ê½
//  426   //  if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,0x32A,0x0D) ){return 'F';} // ¶Á³öÄ£Ê½
//  427     // ====================================================================== //
//  428  //   //ÑÕÉ«Ä£Ê½=>´ËÎª¹Ì¶¨ÉèÖÃ=>Ö»ÐèÒªÈ·ÈÏ¼´¿É
//  429   //  if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,0x11,0x0F) ){return 'F';}
//  430  //   if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x0F) ){return 'F';}//È·ÈÏºÚ°×Ïà»ú
//  431 //    if(0 != result){return 'F';}
//  432     // ====================================================================== //
//  433     /* ÔöÒæµ÷½Ú */
//  434 //    if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,64,0x36) ){return 'F';}
//  435 //   if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,7,0x2C) ){return 'F';} // ADC²Î¿¼µçÑ¹µã
//  436 //    sint16 num = -127;
//  437 //    if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,0,0x48) ){return 'F';} // ºÚ¼¶²ÉÑù²Î¿¼
//  438 //    if( 'F' == b_Beholder_SetGain_35(16)){return 'F';};
//  439     // ====================================================================== //
//  440     //Êý¾ÝÉÈ³ö
//  441  //   if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,3,0x1C) ){return 'F';} // ¸ß¹â¿ØÖÆ 2 - ÏßÐÔ / 3 - ¸ß¹âÑ¹Ëõ
//  442     // ====================================================================== //
//  443     //Row-wise Noise//70 72 73
//  444     
//  445     
//  446 //    if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,3,0x0C) ){return 'F';}//È·ÈÏºÚ°×Ïà»ú
//  447 //    if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,0x1E0,0xBD) ){return 'F';} // 2400 //ÆØ¹âÖÜÆÚ£¿
//  448 //    if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,2000,0x0B) ){return 'F';} // 2400 //ÆØ¹âÖÜÆÚ£¿
//  449     /*  */
//  450        
//  451 //    if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,29,0x31) ){return 'F';}
//  452 //    if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,24,0x32) ){return 'F';}
//  453 //    if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,21,0x33) ){return 'F';}
//  454 //    if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,4,0x34) ){return 'F';}
//  455     
//  456     
//  457     
//  458 //   if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,2,0x1C) ){return 'F';} // ¸ß¹â¿ØÖÆ 2 - ÏßÐÔ / 3 - ¸ß¹âÑ¹Ëõ
//  459     
//  460     
//  461     // ====================================================================== //
//  462     /* ãÐÖµ */
//  463 //    if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,0x4000,0x46) ){return 'F';}//ËÀÇøãÐÖµ
//  464 //    if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,0x8080,0x47) ){return 'F';}
//  465 
//  466     
//  467 //    if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,0x14,0x70) ){return 'F';}
//  468     /* ×ÔÊÊÓ¦ÆØ¹â */
//  469 //    if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,2400,0xBD) ){return 'F';} // ×î´óÆØ¹âÊ±¼äÏÞ·ù
//  470 //    if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,2,0xA8) ){return 'F';} // ÅäÖÃ¼«µã
//  471 //    if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,2,0xA6) ){return 'F';} // ¿ØÖÆÖÜÆÚ
//  472 //    if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,30,0xA5) ){return 'F';} // Desired Bin 1- 64
//  473     // if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,30,0xBC) ){return 'F';} // Desired Bin ¶Á
//  474     // ====================================================================== //
//  475     /* ÆØ¹âÓëÔöÒæ¿ØÖÆ */
//  476  //   if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,0,BeholderReg_Auto_GainExp_0xAF) ){return 'F';} // 0x - ¹Ø±Õ×Ô¶¯ÔöÒæ // 1 - ¿ªÆô×Ô¶¯ÆØ¹â
//  477 //    if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0xAF) ){return 'F';}//È·ÈÏºÚ°×Ïà»ú
//  478 //    if(0 != result){return 'F';}
//  479     // ====================================================================== //
//  480 //    if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,0,0xB1) )
//  481 //    {return 'F';} 
//  482     
//  483     
//  484     //if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,8,Beholder_Read_Mode) ){return 'F';} // ¶Á³öÄ£Ê½
//  485     return 'T';
??b_Beholder_Init_18:
        MOVS     R0,#+84
??b_Beholder_Init_1:
        ADD      SP,SP,#+20
        POP      {R4-R11,PC}      ;; return
//  486 }
//  487 
//  488 
//  489 //============================================================================//
//  490 // ÏñËØÖÐ¶ÏÆµÂÊ£º26.663 MHz // ¼ì²âÉÏÉýÑØ£¬Ñ¸ËÙ¶ÁÈ¡
//  491     // B8
//  492 // Line       £º28.5   kHz // ¼ì²âÉÏÉýÑØ
//  493     // B6
//  494 // ³¡ÖÐ¶Ï     £º60      Hz // ÉÏÉýÑØ¿ªÊ¼ => ÏÂ½µÑØ½áÊø
//  495     // B4
//  496 #define Pix_Port                PORTD_BASE_PTR
//  497 #define Pix_GPIO_Port           PTD_BASE_PTR
//  498 #define Pix_Pin                 15
//  499 
//  500 #define Pix_read_Port                   PORTD_BASE_PTR
//  501 #define Pix_GPIO_read_Port              PTD_BASE_PTR
//  502 #define Pix_GPIO_read_Port_input        PTD_BASE_PTR->PDIR
//  503 
//  504 #define Line_Port               PORTD_BASE_PTR
//  505 #define Line_GPIO_Port          PTD_BASE_PTR
//  506 #define Line_Pin                10
//  507 #define Line_Pin_InReg          0x400//(1<< 10)
//  508 
//  509 #define Frame_Port              PORTD_BASE_PTR
//  510 #define Frame_GPIO_Port         PTD_BASE_PTR
//  511 #define Frame_Pin               11
//  512 
//  513 //#define Frame_Pin               6
//  514 
//  515 #define DMA_MUX0_Source_PORTA                   49
//  516 #define DMA_MUX0_Source_PORTB                   50
//  517 #define DMA_MUX0_Source_PORTC                   51
//  518 #define DMA_MUX0_Source_PORTD                   52
//  519 #define DMA_MUX0_Source_PORTE                   53
//  520 #define DMA_MUX0_AlwaysEnabled_54               54
//  521 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  522 uint16 view_BeholderDataArray[Beholder_LineY_MAX][Beholder_PixNum_MAX];//ÉãÏñÍ·ÓÐÐ§Î»Êý×é
view_BeholderDataArray:
        DS8 22200
//  523 //uint8 selfjudge_SendMessage[Beholder_LineY_MAX][Beholder_PixNum_MAX];//ÅÐ¶¨Êý×é

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  524 uint8 m_ImageBeholder_Data[Beholder_LineY_MAX][Beholder_PixNum_MAX];
m_ImageBeholder_Data:
        DS8 11100
//  525 //uint8 static_n_markerDatas[Beholder_LineY_MAX][Beholder_PixNum_MAX];
//  526 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  527 uint8 b_Beholder_InteruptInit(void * Target_Ptr)
//  528 {
b_Beholder_InteruptInit:
        PUSH     {R7,LR}
//  529     // ²ÎÊýÉùÃ÷
//  530     m_self_Beholder.errorNum = 0;
        LDR.W    R0,??DataTable10_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+6]
//  531     m_self_Beholder.FrameNum = 0;
        LDR.W    R0,??DataTable10_2
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  532     // ¼Ä´æÆ÷¿ªÆô
//  533     SIM_SCGC5 |= SIM_SCGC5_PORTD_MASK;// | SIM_SCGC5_PORTE_MASK | SIM_SCGC5_PORTD_MASK;
        LDR.N    R0,??DataTable9  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000
        LDR.N    R1,??DataTable9  ;; 0x40048038
        STR      R0,[R1, #+0]
//  534     
//  535     Pix_read_Port->PCR[0] = PORT_PCR_MUX(1);
        LDR.W    R0,??DataTable10_4  ;; 0x4004c000
        MOV      R1,#+256
        STR      R1,[R0, #+0]
//  536     Pix_read_Port->PCR[1] = PORT_PCR_MUX(1);
        LDR.W    R0,??DataTable10_5  ;; 0x4004c004
        MOV      R1,#+256
        STR      R1,[R0, #+0]
//  537     Pix_read_Port->PCR[2] = PORT_PCR_MUX(1);
        LDR.W    R0,??DataTable10_6  ;; 0x4004c008
        MOV      R1,#+256
        STR      R1,[R0, #+0]
//  538     Pix_read_Port->PCR[3] = PORT_PCR_MUX(1);
        LDR.W    R0,??DataTable10_7  ;; 0x4004c00c
        MOV      R1,#+256
        STR      R1,[R0, #+0]
//  539     Pix_read_Port->PCR[4] = PORT_PCR_MUX(1);
        LDR.W    R0,??DataTable10_8  ;; 0x4004c010
        MOV      R1,#+256
        STR      R1,[R0, #+0]
//  540     Pix_read_Port->PCR[5] = PORT_PCR_MUX(1);
        LDR.W    R0,??DataTable10_9  ;; 0x4004c014
        MOV      R1,#+256
        STR      R1,[R0, #+0]
//  541     Pix_read_Port->PCR[6] = PORT_PCR_MUX(1);
        LDR.W    R0,??DataTable10_10  ;; 0x4004c018
        MOV      R1,#+256
        STR      R1,[R0, #+0]
//  542     Pix_read_Port->PCR[7] = PORT_PCR_MUX(1);
        LDR.W    R0,??DataTable10_11  ;; 0x4004c01c
        MOV      R1,#+256
        STR      R1,[R0, #+0]
//  543     
//  544     Pix_read_Port->PCR[8] = PORT_PCR_MUX(1);
        LDR.W    R0,??DataTable10_12  ;; 0x4004c020
        MOV      R1,#+256
        STR      R1,[R0, #+0]
//  545     Pix_read_Port->PCR[9] = PORT_PCR_MUX(1);
        LDR.W    R0,??DataTable10_13  ;; 0x4004c024
        MOV      R1,#+256
        STR      R1,[R0, #+0]
//  546     
//  547     
//  548     Pix_Port->PCR[Pix_Pin] = PORT_PCR_MUX(1)|PORT_PCR_IRQC(1);          // DMAÔÚÉÏÉýÑØ£¬GPIO
        LDR.W    R0,??DataTable10_14  ;; 0x4004c03c
        LDR.W    R1,??DataTable10_15  ;; 0x10100
        STR      R1,[R0, #+0]
//  549     Line_Port->PCR[Line_Pin] = PORT_PCR_MUX(1)|PORT_PCR_IRQC(9);        // ÉÏÉýÑØÖÐ¶Ï£¬GPIO
        LDR.W    R0,??DataTable10_16  ;; 0x4004c028
        LDR.W    R1,??DataTable10_17  ;; 0x90100
        STR      R1,[R0, #+0]
//  550     Frame_Port->PCR[Frame_Pin] = PORT_PCR_MUX(1)|PORT_PCR_IRQC(11);     // Ë«±ßÑØÖÐ¶Ï£¬GPIO
        LDR.W    R0,??DataTable10_18  ;; 0x4004c02c
        LDR.W    R1,??DataTable10_19  ;; 0xb0100
        STR      R1,[R0, #+0]
//  551     
//  552     Pix_GPIO_Port->PDDR &=~( 1<< Pix_Pin );
        LDR.W    R0,??DataTable10  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x8000
        LDR.W    R1,??DataTable10  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  553     
//  554     Pix_GPIO_read_Port->PDDR &=~( 1<< 0 );
        LDR.W    R0,??DataTable10  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.W    R1,??DataTable10  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  555     Pix_GPIO_read_Port->PDDR &=~( 1<< 1 );
        LDR.W    R0,??DataTable10  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x2
        LDR.W    R1,??DataTable10  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  556     Pix_GPIO_read_Port->PDDR &=~( 1<< 2 );
        LDR.W    R0,??DataTable10  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x4
        LDR.W    R1,??DataTable10  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  557     Pix_GPIO_read_Port->PDDR &=~( 1<< 3 );
        LDR.W    R0,??DataTable10  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x8
        LDR.W    R1,??DataTable10  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  558     Pix_GPIO_read_Port->PDDR &=~( 1<< 4 );
        LDR.W    R0,??DataTable10  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x10
        LDR.W    R1,??DataTable10  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  559     Pix_GPIO_read_Port->PDDR &=~( 1<< 5 );
        LDR.W    R0,??DataTable10  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x20
        LDR.W    R1,??DataTable10  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  560     Pix_GPIO_read_Port->PDDR &=~( 1<< 6 );
        LDR.W    R0,??DataTable10  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x40
        LDR.W    R1,??DataTable10  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  561     Pix_GPIO_read_Port->PDDR &=~( 1<< 7 );
        LDR.W    R0,??DataTable10  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x80
        LDR.W    R1,??DataTable10  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  562     Pix_GPIO_read_Port->PDDR &=~( 1<< 8 );
        LDR.W    R0,??DataTable10  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x100
        LDR.W    R1,??DataTable10  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  563     Pix_GPIO_read_Port->PDDR &=~( 1<< 9 );
        LDR.W    R0,??DataTable10  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x200
        LDR.W    R1,??DataTable10  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  564     
//  565     Line_GPIO_Port->PDDR &=~( 1<< Line_Pin );
        LDR.W    R0,??DataTable10  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x400
        LDR.W    R1,??DataTable10  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  566     Frame_GPIO_Port->PDDR &=~( 1<< Frame_Pin );
        LDR.W    R0,??DataTable10  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x800
        LDR.W    R1,??DataTable10  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  567     
//  568     //========================================================================//
//  569     SIM_SCGC7 |= SIM_SCGC7_DMA_MASK; // DMAÊ±ÖÓ¿ªÆô
        LDR.W    R0,??DataTable10_20  ;; 0x40048040
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.W    R1,??DataTable10_20  ;; 0x40048040
        STR      R0,[R1, #+0]
//  570     SIM_SCGC6 |= SIM_SCGC6_DMAMUX0_MASK; // DMA¿ªÆôMUX0
        LDR.W    R0,??DataTable10_21  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.W    R1,??DataTable10_21  ;; 0x4004803c
        STR      R0,[R1, #+0]
//  571     //
//  572     DMAMUX0_BASE_PTR ->CHCFG[0] = 0;
        LDR.W    R0,??DataTable10_22  ;; 0x40021000
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  573     DMAMUX0_BASE_PTR ->CHCFG[0] = DMAMUX_CHCFG_ENBL_MASK | DMAMUX_CHCFG_SOURCE(DMA_MUX0_Source_PORTD); // Ñ¡ÔñÍ¨µÀ
        LDR.W    R0,??DataTable10_22  ;; 0x40021000
        MOVS     R1,#+180
        STRB     R1,[R0, #+0]
//  574 //    DMAMUX0_BASE_PTR ->CHCFG[1] = 0;
//  575 //    DMAMUX0_BASE_PTR ->CHCFG[1] = DMAMUX_CHCFG_ENBL_MASK | DMAMUX_CHCFG_SOURCE(DMA_MUX0_Source_PORTD); // Ñ¡ÔñÍ¨µÀ
//  576 
//  577     //    DMAMUX0_BASE_PTR ->CHCFG[1] = 0;
//  578 //    DMAMUX0_BASE_PTR ->CHCFG[1] = DMAMUX_CHCFG_ENBL_MASK | DMAMUX_CHCFG_SOURCE(DMA_MUX0_Source_PORTD); // Ñ¡ÔñÍ¨µÀ
//  579 
//  580     //========================================================================//
//  581     // µØÖ·Ñ¡Ôñ
//  582     DMA_BASE_PTR->CR = DMA_CR_GRP1PRI_MASK;
        LDR.W    R0,??DataTable10_23  ;; 0x40008000
        MOV      R1,#+3072
        STR      R1,[R0, #+0]
//  583     DMA_BASE_PTR->TCD[0].CSR = DMA_CSR_BWC(0) | DMA_CSR_DREQ_MASK; // ÑÓÊ±
        LDR.W    R0,??DataTable10_24  ;; 0x4000901c
        MOVS     R1,#+8
        STRH     R1,[R0, #+0]
//  584     //
//  585     DMA_BASE_PTR ->TCD[0].SADDR = (uint32)((void*)&(Pix_GPIO_read_Port_input));//(uint32)((void*)&(Pix_GPIO_read_Port_input)); // Ñ¡ÔñÏñËØÎªÊäÈë
        LDR.W    R0,??DataTable10_25  ;; 0x40009000
        LDR.N    R1,??DataTable9_4  ;; 0x400ff0d0
        STR      R1,[R0, #+0]
//  586     //´Ë´¦ÒÑ¾­×ö¹ýÐÞ¸Ä£¬¹Ê¿ÉÒÔÅÐ¶¨£¬DMAÊ±ÐòÃ»ÓÐÎÊÌâ£¬ÎÊÌâÔÚÓÚÊäÈëÇé¿ö
//  587     DMA_BASE_PTR ->TCD[0].SOFF  = 0; // Ô´µØÖ·Æ«ÒÆÇé¿ö
        LDR.W    R0,??DataTable10_26  ;; 0x40009004
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//  588     DMA_BASE_PTR ->TCD[0].DADDR = (uint32)(uint16*)view_BeholderDataArray; // Ñ¡ÔñÊä³öÎ»ÖÃ
        LDR.W    R0,??DataTable10_27  ;; 0x40009010
        LDR.W    R1,??DataTable10_28
        STR      R1,[R0, #+0]
//  589     DMA_BASE_PTR ->TCD[0].DOFF  = 2; // Æ«ÒÆ one byte
        LDR.W    R0,??DataTable10_29  ;; 0x40009014
        MOVS     R1,#+2
        STRH     R1,[R0, #+0]
//  590     //
//  591     DMA_BASE_PTR ->TCD[0].CITER_ELINKNO = DMA_CITER_ELINKNO_CITER(Beholder_PerLine_MaxActivePix);
        LDR.W    R0,??DataTable10_30  ;; 0x40009016
        MOVS     R1,#+185
        STRH     R1,[R0, #+0]
//  592     DMA_BASE_PTR ->TCD[0].BITER_ELINKNO = DMA_BITER_ELINKNO_BITER(Beholder_PerLine_MaxActivePix);
        LDR.W    R0,??DataTable10_31  ;; 0x4000901e
        MOVS     R1,#+185
        STRH     R1,[R0, #+0]
//  593     DMA_BASE_PTR ->TCD[0].SLAST = 0; // Ô´Í·ÎÞÆ«ÒÆ
        LDR.W    R0,??DataTable10_32  ;; 0x4000900c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  594     //
//  595     //sint32 adder_temp = -Beholder_PixALL_Num;
//  596     DMA_BASE_PTR ->TCD[0].DLAST_SGA = 0; // ÏòºóÒÆ¶¯Ò»Î»
        LDR.W    R0,??DataTable10_33  ;; 0x40009018
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  597     //
//  598     DMA_BASE_PTR ->TCD[0].NBYTES_MLNO = 2; // µ¥´ÎÐ´Êý¸öÊý
        LDR.W    R0,??DataTable10_34  ;; 0x40009008
        MOVS     R1,#+2
        STR      R1,[R0, #+0]
//  599     //
//  600     DMA_BASE_PTR ->TCD[0].ATTR  = DMA_ATTR_SSIZE(1) | DMA_ATTR_DSIZE(1); // ´«ÊäÉùÃ÷
        LDR.W    R0,??DataTable10_35  ;; 0x40009006
        MOVW     R1,#+257
        STRH     R1,[R0, #+0]
//  601     //
//  602 //    DMA_BASE_PTR->CR = DMA_CR_GRP1PRI_MASK;
//  603     /*
//  604     DMA_BASE_PTR->TCD[1].CSR = DMA_CSR_BWC(0) | DMA_CSR_DREQ_MASK; // ÑÓÊ±
//  605     //
//  606     DMA_BASE_PTR ->TCD[1].SADDR = ((uint32)((void*)&(Pix_GPIO_read_Port_input)) + 1);//(uint32)((void*)&(Pix_GPIO_read_Port_input)); // Ñ¡ÔñÏñËØÎªÊäÈë
//  607     //´Ë´¦ÒÑ¾­×ö¹ýÐÞ¸Ä£¬¹Ê¿ÉÒÔÅÐ¶¨£¬DMAÊ±ÐòÃ»ÓÐÎÊÌâ£¬ÎÊÌâÔÚÓÚÊäÈëÇé¿ö
//  608     DMA_BASE_PTR ->TCD[1].SOFF  = 0; // Ô´µØÖ·Æ«ÒÆÇé¿ö
//  609     DMA_BASE_PTR ->TCD[1].DADDR = (uint32)(uint16*)selfjudge_SendMessage; // Ñ¡ÔñÊä³öÎ»ÖÃ
//  610     DMA_BASE_PTR ->TCD[1].DOFF  = 2; // Æ«ÒÆ one byte
//  611     //
//  612     DMA_BASE_PTR ->TCD[1].CITER_ELINKNO = DMA_CITER_ELINKNO_CITER(Beholder_PerLine_MaxActivePix);
//  613     DMA_BASE_PTR ->TCD[1].BITER_ELINKNO = DMA_BITER_ELINKNO_BITER(Beholder_PerLine_MaxActivePix);
//  614     DMA_BASE_PTR ->TCD[1].SLAST = 0; // Ô´Í·ÎÞÆ«ÒÆ
//  615     //
//  616     //sint32 adder_temp = -Beholder_PixALL_Num;
//  617     DMA_BASE_PTR ->TCD[1].DLAST_SGA = 0; // ÏòºóÒÆ¶¯Ò»Î»
//  618     //
//  619     DMA_BASE_PTR ->TCD[1].NBYTES_MLNO = 1; // µ¥´ÎÐ´Êý¸öÊý
//  620     //
//  621     DMA_BASE_PTR ->TCD[1].ATTR  = DMA_ATTR_SSIZE(0) | DMA_ATTR_DSIZE(0); // ´«ÊäÉùÃ÷
//  622     */
//  623     /*
//  624     DMA_BASE_PTR->TCD[1].CSR = DMA_CSR_BWC(0) | DMA_CSR_DREQ_MASK; // ÑÓÊ±
//  625     //
//  626     DMA_BASE_PTR ->TCD[1].SADDR = (uint32)((void*)&(input));//(uint32)((void*)&(Pix_GPIO_read_Port_input)); // Ñ¡ÔñÏñËØÎªÊäÈë
//  627     //´Ë´¦ÒÑ¾­×ö¹ýÐÞ¸Ä£¬¹Ê¿ÉÒÔÅÐ¶¨£¬DMAÊ±ÐòÃ»ÓÐÎÊÌâ£¬ÎÊÌâÔÚÓÚÊäÈëÇé¿ö
//  628     DMA_BASE_PTR ->TCD[1].SOFF  = 0; // Ô´µØÖ·Æ«ÒÆÇé¿ö
//  629     DMA_BASE_PTR ->TCD[1].DADDR = (uint32)(uint8*)output; // Ñ¡ÔñÊä³öÎ»ÖÃ
//  630     DMA_BASE_PTR ->TCD[1].DOFF  = 0; // Æ«ÒÆ one byte
//  631     //
//  632     DMA_BASE_PTR ->TCD[1].CITER_ELINKNO = DMA_CITER_ELINKNO_CITER(1);
//  633     DMA_BASE_PTR ->TCD[1].BITER_ELINKNO = DMA_BITER_ELINKNO_BITER(1);
//  634     DMA_BASE_PTR ->TCD[1].SLAST = 0; // Ô´Í·ÎÞÆ«ÒÆ
//  635     //
//  636     //sint32 adder_temp = -Beholder_PixALL_Num;
//  637     DMA_BASE_PTR ->TCD[1].DLAST_SGA = 0; // ÏòºóÒÆ¶¯Ò»Î»
//  638     //
//  639     DMA_BASE_PTR ->TCD[1].NBYTES_MLNO = 1; // µ¥´ÎÐ´Êý¸öÊý
//  640     //
//  641     DMA_BASE_PTR ->TCD[1].ATTR  = DMA_ATTR_SSIZE(0) | DMA_ATTR_DSIZE(0); // ´«ÊäÉùÃ÷
//  642     
//  643     DMA_BASE_PTR ->ERQ |= DMA_ERQ_ERQ1_MASK;
//  644     */
//  645 //    DMA_BASE_PTR ->ERQ &=~ DMA_ERQ_ERQ1_MASK;
//  646     DMA_BASE_PTR ->ERQ &=~ DMA_ERQ_ERQ0_MASK; // ÎÈÍ× //DMA_BASE_PTR->ERQ |= DMA_ERQ_ERQ0_MASK;
        LDR.W    R0,??DataTable10_36  ;; 0x4000800c
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.N    R1,??DataTable10_36  ;; 0x4000800c
        STR      R0,[R1, #+0]
//  647     // 
//  648     set_vector_handler(PORTD_VECTORn,v_Beholder_Interupt_FuncPtr); // Éè¶¨B¿ÚÖÐ¶Ïº¯ÊýÖ¸Õë
        ADR.W    R1,v_Beholder_Interupt_FuncPtr
        MOVS     R0,#+106
        BL       set_vector_handler
//  649     disable_irq(PORTD_IRQn);
        MOVS     R0,#+90
        BL       disable_irq
//  650     
//  651     
//  652     return 'T';
        MOVS     R0,#+84
        POP      {R1,PC}          ;; return
//  653 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_1:
        DC32     0x4004c034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_2:
        DC32     0x4004c030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_3:
        DC32     0x400ff0c0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_4:
        DC32     0x400ff0d0
//  654 //#define Line_MaxNum             120
//  655 
//  656 
//  657 /*
//  658 uint32 viewer1 = 0;
//  659 uint32 viewer2 = 0;
//  660 uint32 viewer3 = 0;
//  661 */
//  662 /* v_Beholder_Interupt_FuncPtr */
//  663 //uint8 SendMessage[Beholder_LineY_MAX][Beholder_PixNum_MAX];
//  664 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  665 uint32 Image_Timer = 0;
Image_Timer:
        DS8 4
//  666 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  667 void v_Beholder_Interupt_FuncPtr()//ÖÐ¶Ïº¯Êý²¿·Ö
//  668 {
v_Beholder_Interupt_FuncPtr:
        PUSH     {R4,LR}
//  669     static volatile uint8 FrameVaild_flag = 0;
//  670     static uint16 Line_counter = 0;
//  671     static volatile uint8 sure_open_framePositive = 0;
//  672     
//  673     /* ÐÐÖÐ¶Ï */
//  674     if( ((Line_Port->ISFR >> Line_Pin)&1) ) // ÐÐÖÐ¶Ï
        LDR.N    R0,??DataTable10_37  ;; 0x4004c0a0
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+10,#+1
        CMP      R0,#+0
        BEQ.N    ??v_Beholder_Interupt_FuncPtr_0
//  675     {
//  676        // temp_line_viewer++;
//  677         if( FrameVaild_flag )
        LDR.N    R0,??DataTable10_38
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??v_Beholder_Interupt_FuncPtr_1
//  678         {
//  679             if(Line_counter%2)
        LDR.N    R0,??DataTable10_39
        LDRH     R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R2,R0,R1
        MLS      R2,R2,R1,R0
        CMP      R2,#+0
        BEQ.N    ??v_Beholder_Interupt_FuncPtr_2
//  680             {
//  681                 DMA_BASE_PTR->ERQ |= DMA_ERQ_ERQ0_MASK;
        LDR.N    R0,??DataTable10_36  ;; 0x4000800c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable10_36  ;; 0x4000800c
        STR      R0,[R1, #+0]
//  682             }
//  683             Line_counter ++; // ÐÐÊýÕû¶¨
??v_Beholder_Interupt_FuncPtr_2:
        LDR.N    R0,??DataTable10_39
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable10_39
        STRH     R0,[R1, #+0]
//  684         }
//  685         Line_Port->ISFR |= 1 << Line_Pin; // ÇåÖÐ¶Ï
??v_Beholder_Interupt_FuncPtr_1:
        LDR.N    R0,??DataTable10_37  ;; 0x4004c0a0
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x400
        LDR.N    R1,??DataTable10_37  ;; 0x4004c0a0
        STR      R0,[R1, #+0]
//  686     } 
//  687 
//  688 //    static uint8 temp_forSave = 0;
//  689     /* ³¡ÖÐ¶Ï */
//  690     if( 1 == ((Frame_Port->ISFR >> Frame_Pin)&1) ) // ³¡ÖÐ¶Ï
??v_Beholder_Interupt_FuncPtr_0:
        LDR.N    R0,??DataTable10_37  ;; 0x4004c0a0
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+11,#+1
        CMP      R0,#+0
        BEQ.W    ??v_Beholder_Interupt_FuncPtr_3
//  691     {
//  692        // temp_frame_viewer++;
//  693         Frame_Port->ISFR |= 1 << Frame_Pin; // ÇåÖÐ¶Ï
        LDR.N    R0,??DataTable10_37  ;; 0x4004c0a0
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x800
        LDR.N    R1,??DataTable10_37  ;; 0x4004c0a0
        STR      R0,[R1, #+0]
//  694         if( 1 == (( Frame_GPIO_Port->PDIR >> Frame_Pin )&1) ) //ÉÏÉýÑØ
        LDR.N    R0,??DataTable10_40  ;; 0x400ff0d0
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+11,#+1
        CMP      R0,#+0
        BEQ.N    ??v_Beholder_Interupt_FuncPtr_4
//  695         {
//  696             //if( 1 == FrameVaild_flag ){self_Beholder.errorNum |= 0x1;}
//  697             if( 1 == sure_open_framePositive )
        LDR.N    R0,??DataTable10_41
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.W    ??v_Beholder_Interupt_FuncPtr_3
//  698             {
//  699                 FrameVaild_flag = 1; // ¿ªÆôÐÐÓÐÐ§
        LDR.N    R0,??DataTable10_38
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  700                 set_irq_priority(PIT1_IRQn,4);//ÉèÖÃÖÐ¶ÏÓÅÏÈ¼¶
        MOVS     R1,#+4
        MOVS     R0,#+69
        BL       set_irq_priority
        B.N      ??v_Beholder_Interupt_FuncPtr_3
//  701             }
//  702 //            Line_counter = 0;
//  703         }
//  704         else // ÏÂ½µÑØ
//  705         { 
//  706             DMA_BASE_PTR->ERQ &=~ DMA_ERQ_ERQ0_MASK;//¹Ø±ÕDMA
??v_Beholder_Interupt_FuncPtr_4:
        LDR.N    R0,??DataTable10_36  ;; 0x4000800c
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.N    R1,??DataTable10_36  ;; 0x4000800c
        STR      R0,[R1, #+0]
//  707             set_irq_priority(PIT1_IRQn,2);
        MOVS     R1,#+2
        MOVS     R0,#+69
        BL       set_irq_priority
//  708             enable_irq(PIT1_IRQn);
        MOVS     R0,#+69
        BL       enable_irq
//  709             m_Control.image_Be2control_time++;
        LDR.N    R0,??DataTable10_42
        LDR      R0,[R0, #+128]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable10_42
        STR      R0,[R1, #+128]
//  710             
//  711             do//²É¼¯Óë¿ØÖÆ
//  712             {
//  713                 /*----- ÒÔÏÂÎªÐÅÏ¢²É¼¯ -----*/
//  714                 m_Control.CanCheck = 0;
        LDR.N    R0,??DataTable10_42
        MOVS     R1,#+0
        STRB     R1,[R0, #+8]
//  715                 modeMachine(' ');//¸üÐÂ
        LDR.N    R0,??DataTable10_43
        MOVS     R1,#+32
        STRB     R1,[R0, #+32]
//  716                 //b_GetMotor_electric(ADC1_BASE_PTR,16,&m_Control.LeftMotorElec);//µçÑ¹ÐÅÏ¢»ñÈ¡
//  717                 //b_GetMotor_electric(ADC0_BASE_PTR,16,&m_Control.RightMotorElec);
//  718                 
//  719                 if(m_Control.starting_time > m_system.timer)
        LDR.N    R0,??DataTable10_44
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable10_42
        LDR      R1,[R1, #+28]
        CMP      R0,R1
        BCS.N    ??v_Beholder_Interupt_FuncPtr_5
//  720                 {
//  721                     if((m_Control.starting_time - 1000 == m_system.timer)
//  722                      //||(m_Control.starting_time - 2000 == m_system.timer)  
//  723                      ||(m_Control.starting_time - 3000 == m_system.timer)
//  724                      ||(m_Control.starting_time - 4000 == m_system.timer)
//  725                      //||(m_Control.starting_time - 5000 == m_system.timer)
//  726                        )
        LDR.N    R0,??DataTable10_42
        LDR      R0,[R0, #+28]
        SUBS     R0,R0,#+1000
        LDR.N    R1,??DataTable10_44
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BEQ.N    ??v_Beholder_Interupt_FuncPtr_6
        LDR.N    R0,??DataTable10_42
        LDR      R0,[R0, #+28]
        SUBW     R0,R0,#+3000
        LDR.N    R1,??DataTable10_44
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BEQ.N    ??v_Beholder_Interupt_FuncPtr_6
        LDR.N    R0,??DataTable10_42
        LDR      R0,[R0, #+28]
        SUBS     R0,R0,#+4000
        LDR.N    R1,??DataTable10_44
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BNE.N    ??v_Beholder_Interupt_FuncPtr_5
//  727                     {
//  728                         v_BuzzerBeepSet(500);
??v_Beholder_Interupt_FuncPtr_6:
        MOV      R0,#+500
        BL       v_BuzzerBeepSet
//  729                         v_speed_set2pwm(0,0,2);
        MOVS     R2,#+2
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       v_speed_set2pwm
//  730                         set_irq_priority(PIT1_IRQn,4);//ÉèÖÃÖÐ¶ÏÓÅÏÈ¼¶
        MOVS     R1,#+4
        MOVS     R0,#+69
        BL       set_irq_priority
//  731                         //disable_irq(PIT1_IRQn);
//  732                     }
//  733                 }
//  734                 
//  735                 if((m_Control.runningEnd_time > m_system.timer)&&(m_system.timer > m_Control.starting_time))//¿ÉÒÔÔËÐÐ
??v_Beholder_Interupt_FuncPtr_5:
        LDR.N    R0,??DataTable10_44
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable10_42
        LDR      R1,[R1, #+24]
        CMP      R0,R1
        BCS.N    ??v_Beholder_Interupt_FuncPtr_7
        LDR.N    R0,??DataTable10_42
        LDR      R0,[R0, #+28]
        LDR.N    R1,??DataTable10_44
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BCS.N    ??v_Beholder_Interupt_FuncPtr_7
//  736                 {
//  737                     set_irq_priority(PIT1_IRQn,2);//ÉèÖÃÖÐ¶ÏÓÅÏÈ¼¶=>ÖÜÆÚÖÐ¶Ï
        MOVS     R1,#+2
        MOVS     R0,#+69
        BL       set_irq_priority
//  738                     
//  739                     if(1 == m_Control.start_motorRunning_flag)
        LDR.N    R0,??DataTable10_42
        LDRB     R0,[R0, #+14]
        CMP      R0,#+1
        BNE.N    ??v_Beholder_Interupt_FuncPtr_8
//  740                     {
//  741                         for(uint8 loop = 0;loop < 10;loop++)
        MOVS     R4,#+0
        B.N      ??v_Beholder_Interupt_FuncPtr_9
//  742                         {
//  743                             v_leftMotor_pwmOut(loop * 50,1);
??v_Beholder_Interupt_FuncPtr_10:
        MOVS     R1,#+1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,#+50
        SMULBB   R0,R4,R0
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       v_leftMotor_pwmOut
//  744                             v_rightMotor_pwmOut(loop * 50,1);
        MOVS     R1,#+1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,#+50
        SMULBB   R0,R4,R0
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       v_rightMotor_pwmOut
//  745                         }
        ADDS     R4,R4,#+1
??v_Beholder_Interupt_FuncPtr_9:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+10
        BLT.N    ??v_Beholder_Interupt_FuncPtr_10
//  746                         m_Control.start_motorRunning_flag = 0;
        LDR.N    R0,??DataTable10_42
        MOVS     R1,#+0
        STRB     R1,[R0, #+14]
//  747                     }
//  748                     
//  749                     
//  750                     if((m_system.timer > m_Control.starting_time + 1000))
??v_Beholder_Interupt_FuncPtr_8:
        LDR.N    R0,??DataTable10_42
        LDR      R0,[R0, #+28]
        ADDS     R0,R0,#+1000
        LDR.N    R1,??DataTable10_44
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BCS.N    ??v_Beholder_Interupt_FuncPtr_11
//  751                     {
//  752                         v_Uart_GetPicture_InRunning(1,2);
        MOVS     R1,#+2
        MOVS     R0,#+1
        BL       v_Uart_GetPicture_InRunning
        B.N      ??v_Beholder_Interupt_FuncPtr_11
//  753                     }
//  754                     
//  755                     
//  756                     /*
//  757                     m_need_tx.MidLine[m_need_tx.counter] = m_Control.image_control_n;
//  758                     
//  759                     m_need_tx.LeftMotorGiV[m_need_tx.counter] = m_Control.LeftGiveSpd;
//  760                     m_need_tx.RightMotorGiV[m_need_tx.counter] = m_Control.RightGiveSpd;
//  761                     
//  762                     m_need_tx.LeftMotorPWM[m_need_tx.counter] = m_Control.LeftMotorPWM;
//  763                     m_need_tx.LeftMotorSpeed[m_need_tx.counter] = m_Control.LeftMotorSpeed;
//  764                     
//  765                     
//  766                     m_need_tx.RightMotorPWM[m_need_tx.counter] = m_Control.RightMotorPWM;
//  767                     m_need_tx.RightMotorSpeed[m_need_tx.counter] = m_Control.RightMotorSpeed;//m_Control.RightMotorSpeed;
//  768                     m_need_tx.ServoVar[m_need_tx.counter] = m_Control.ServoDeg;
//  769                     m_need_tx.ServoGraduated[m_need_tx.counter] = m_Control.LeftRightRatio;
//  770                     
//  771                     m_need_tx.Information_Unnamed_Mark001[m_need_tx.counter / 2] = m_self_Motor_Para.L_counter * m_Control.Motor_ControlPara_I_Number;
//  772                     m_need_tx.Information_Unnamed_Mark001[1500/2 + m_need_tx.counter / 2] = m_self_Motor_Para.R_counter * m_Control.Motor_ControlPara_I_Number;
//  773 
//  774                     m_need_tx.counter ++;
//  775                     
//  776                     if((1 == m_need_tx.counter)||//20msÒ»´Î£¬50Hz=>ÒÔ°ëÃë¸ø
//  777                        (51 == m_need_tx.counter)||
//  778                        (101 == m_need_tx.counter)||
//  779                        (151 == m_need_tx.counter)||
//  780                        (201 == m_need_tx.counter)||
//  781                        (251 == m_need_tx.counter)  
//  782                       )
//  783                     {
//  784                         m_Control.BuzzerPoint = 0;
//  785                         v_BuzzerBeepSet(200);//¿ªÆô·äÃùÆ÷
//  786                     }
//  787                     else
//  788                     {
//  789                         m_Control.BuzzerPoint = -5000;
//  790                     }
//  791                     */
//  792                     
//  793                 }
//  794                 else
//  795                 {
//  796                     m_Control.start_motorRunning_flag = 1;
??v_Beholder_Interupt_FuncPtr_7:
        LDR.N    R0,??DataTable10_42
        MOVS     R1,#+1
        STRB     R1,[R0, #+14]
//  797                     m_need_tx.counter = 0;
        LDR.N    R0,??DataTable10_45
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//  798                     v_leftMotor_pwmOut(0,3);
        MOVS     R1,#+3
        MOVS     R0,#+0
        BL       v_leftMotor_pwmOut
//  799                     v_rightMotor_pwmOut(0,3);
        MOVS     R1,#+3
        MOVS     R0,#+0
        BL       v_rightMotor_pwmOut
//  800                 }
//  801             }while(0);
//  802                         
//  803             
//  804             
//  805             
//  806             m_self_Beholder.LineCounter = Line_counter;//ÐÐÊý¼ÆÊý
??v_Beholder_Interupt_FuncPtr_11:
        LDR.N    R0,??DataTable10_2
        LDR.N    R1,??DataTable10_39
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+4]
//  807             Line_counter = 0; // ÖØÖÃ
        LDR.N    R0,??DataTable10_39
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//  808             
//  809             
//  810             FrameVaild_flag = 0;
        LDR.N    R0,??DataTable10_38
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  811             DMA_BASE_PTR ->TCD[0].DADDR = (uint32)(uint16*)view_BeholderDataArray; // Ñ¡ÔñÊä³öÎ»ÖÃ
        LDR.N    R0,??DataTable10_27  ;; 0x40009010
        LDR.N    R1,??DataTable10_28
        STR      R1,[R0, #+0]
//  812             DMA_BASE_PTR ->TCD[0].CITER_ELINKNO = DMA_CITER_ELINKNO_CITER(Beholder_PerLine_MaxActivePix);
        LDR.N    R0,??DataTable10_30  ;; 0x40009016
        MOVS     R1,#+185
        STRH     R1,[R0, #+0]
//  813             DMA_BASE_PTR ->TCD[0].BITER_ELINKNO = DMA_BITER_ELINKNO_BITER(Beholder_PerLine_MaxActivePix);
        LDR.N    R0,??DataTable10_31  ;; 0x4000901e
        MOVS     R1,#+185
        STRH     R1,[R0, #+0]
//  814             
//  815 
//  816             
//  817             
//  818             v_system_clocked();//ÏµÍ³Ê±ÖÓ
        BL       v_system_clocked
//  819             
//  820             for(uint8 loop = 0;loop < Beholder_LineY_MAX;loop++)
        MOVS     R0,#+0
        B.N      ??v_Beholder_Interupt_FuncPtr_12
//  821             {
//  822                 for(uint8 inter = 0;inter < 185;inter++)
//  823                 {
//  824                     uint16 n = view_BeholderDataArray[loop][inter]&0x03FFu;
??v_Beholder_Interupt_FuncPtr_13:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOV      R1,#+370
        LDR.N    R3,??DataTable10_28
        MLA      R1,R1,R0,R3
        LDRH     R1,[R1, R2, LSL #+1]
        LSLS     R1,R1,#+22       ;; ZeroExtS R1,R1,#+22,#+22
        LSRS     R1,R1,#+22
//  825                     float f_n = (float)n;
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        VMOV     S0,R1
        VCVT.F32.U32 S0,S0
//  826                     n = (uint8)(-f_n*f_n/4096.f + f_n/2.f);
        VNEG.F32 S1,S0
        VMUL.F32 S1,S1,S0
        VLDR.W   S2,??DataTable10_1  ;; 0x45800000
        VDIV.F32 S1,S1,S2
        VMOV.F32 S2,#2.0
        VDIV.F32 S0,S0,S2
        VADD.F32 S0,S1,S0
        VCVT.S32.F32 S0,S0
        VMOV     R1,S0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
//  827                     m_ImageBeholder_Data[loop][inter] = n;//¸ß¹âÑ¹Ëõ
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R3,#+185
        LDR.N    R4,??DataTable10_46
        MLA      R3,R3,R0,R4
        STRB     R1,[R2, R3]
//  828                 }
        ADDS     R2,R2,#+1
??v_Beholder_Interupt_FuncPtr_14:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+185
        BLT.N    ??v_Beholder_Interupt_FuncPtr_13
        ADDS     R0,R0,#+1
??v_Beholder_Interupt_FuncPtr_12:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+60
        BGE.N    ??v_Beholder_Interupt_FuncPtr_15
        MOVS     R2,#+0
        B.N      ??v_Beholder_Interupt_FuncPtr_14
//  829             }
//  830             
//  831             if(0 == m_system.uart_Txflag)//Î´½øÈë
??v_Beholder_Interupt_FuncPtr_15:
        LDR.N    R0,??DataTable10_44
        LDRB     R0,[R0, #+16]
        CMP      R0,#+0
        BNE.N    ??v_Beholder_Interupt_FuncPtr_16
//  832             {
//  833                 m_system.uarttx_timer ++;
        LDR.N    R0,??DataTable10_44
        LDR      R0,[R0, #+20]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable10_44
        STR      R0,[R1, #+20]
//  834                 m_system.uart_Txflag = 1;//Éè¶¨¿ØÖÆ½øÐÐ±êÖ¾Î»
        LDR.N    R0,??DataTable10_44
        MOVS     R1,#+1
        STRB     R1,[R0, #+16]
//  835             }
//  836             //================================================================//
//  837             //½øÈë¿ØÖÆ´úÂë²¿·Ö
//  838             /*----------Í¼Ïñ´¦Àí²¿·Ö----------*/
//  839             if(0 != m_Control.image_ratio[7])//x = (30*h/a)*y + 30/a
??v_Beholder_Interupt_FuncPtr_16:
        LDR.N    R0,??DataTable10_42
        VLDR     S0,[R0, #+96]
        VCMP.F32 S0,#0.0
        FMSTAT   
        BEQ.N    ??v_Beholder_Interupt_FuncPtr_17
//  840             {
//  841                 
//  842                 v_ImageCut();//½øÐÐÍ¼Ïñ´¦Àí
        BL       v_ImageCut
//  843                 m_Control.CanCheck = 1;
        LDR.N    R0,??DataTable10_42
        MOVS     R1,#+1
        STRB     R1,[R0, #+8]
//  844 
//  845                 v_ImageOptimalization();
        BL       v_ImageOptimalization
//  846                 //f_getSteerCurve();//½øÐÐÊ±¼ä²âÊÔ
//  847                 do//¶æ»úÊä³ö
//  848                 {
//  849                     v_steer_set2pwm();
        BL       v_steer_set2pwm
//  850                 }while(0);
//  851                 
//  852             }
//  853             
//  854             sure_open_framePositive = 1;
??v_Beholder_Interupt_FuncPtr_17:
        LDR.N    R0,??DataTable10_41
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  855             m_self_Beholder.FrameNum ++;
        LDR.N    R0,??DataTable10_2
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable10_2
        STR      R0,[R1, #+0]
//  856         }
//  857     }
//  858     
//  859     
//  860 }
??v_Beholder_Interupt_FuncPtr_3:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10:
        DC32     0x400ff0d4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_1:
        DC32     0x45800000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_2:
        DC32     m_self_Beholder

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_3:
        DC32     m_ImageAbstract

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_4:
        DC32     0x4004c000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_5:
        DC32     0x4004c004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_6:
        DC32     0x4004c008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_7:
        DC32     0x4004c00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_8:
        DC32     0x4004c010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_9:
        DC32     0x4004c014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_10:
        DC32     0x4004c018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_11:
        DC32     0x4004c01c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_12:
        DC32     0x4004c020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_13:
        DC32     0x4004c024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_14:
        DC32     0x4004c03c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_15:
        DC32     0x10100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_16:
        DC32     0x4004c028

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_17:
        DC32     0x90100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_18:
        DC32     0x4004c02c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_19:
        DC32     0xb0100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_20:
        DC32     0x40048040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_21:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_22:
        DC32     0x40021000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_23:
        DC32     0x40008000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_24:
        DC32     0x4000901c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_25:
        DC32     0x40009000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_26:
        DC32     0x40009004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_27:
        DC32     0x40009010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_28:
        DC32     view_BeholderDataArray

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_29:
        DC32     0x40009014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_30:
        DC32     0x40009016

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_31:
        DC32     0x4000901e

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_32:
        DC32     0x4000900c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_33:
        DC32     0x40009018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_34:
        DC32     0x40009008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_35:
        DC32     0x40009006

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_36:
        DC32     0x4000800c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_37:
        DC32     0x4004c0a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_38:
        DC32     ??FrameVaild_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_39:
        DC32     ??Line_counter

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_40:
        DC32     0x400ff0d0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_41:
        DC32     ??sure_open_framePositive

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_42:
        DC32     m_Control

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_43:
        DC32     m_ModeMachine

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_44:
        DC32     m_system

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_45:
        DC32     m_need_tx+0x6F54

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_46:
        DC32     m_ImageBeholder_Data

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
??FrameVaild_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
??Line_counter:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
??sure_open_framePositive:
        DS8 1
//  861 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  862 uint8 b_Beholder_SetGain_35(uint8 GainSet)
//  863 {
b_Beholder_SetGain_35:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
//  864     if(GainSet > 0x3Fu)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+64
        BCC.N    ??b_Beholder_SetGain_35_0
//  865     {
//  866         return 'F';
        MOVS     R0,#+70
        B.N      ??b_Beholder_SetGain_35_1
//  867     }
//  868     if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,GainSet,BeholderReg_Gain_Set_35) )
??b_Beholder_SetGain_35_0:
        MOVS     R2,#+53
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R1,R4
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+92
        BL       u8_SCCB_WriteReg_u16
        CMP      R0,#+84
        BEQ.N    ??b_Beholder_SetGain_35_2
//  869     {
//  870         return 'F';
        MOVS     R0,#+70
        B.N      ??b_Beholder_SetGain_35_1
//  871     }
//  872     uint16 read_out = 0;
??b_Beholder_SetGain_35_2:
        MOVS     R0,#+0
        STRH     R0,[SP, #+0]
//  873     if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&read_out,BeholderReg_Gain_Set_35) )
        MOVS     R2,#+53
        ADD      R1,SP,#+0
        MOVS     R0,#+92
        BL       u8_SCCB_ReadReg_u16
        CMP      R0,#+84
        BEQ.N    ??b_Beholder_SetGain_35_3
//  874     {
//  875         return 'F';
        MOVS     R0,#+70
        B.N      ??b_Beholder_SetGain_35_1
//  876     }
//  877     if(GainSet != read_out)
??b_Beholder_SetGain_35_3:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDRH     R0,[SP, #+0]
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,R0
        BEQ.N    ??b_Beholder_SetGain_35_4
//  878     {
//  879         return 'F';
        MOVS     R0,#+70
        B.N      ??b_Beholder_SetGain_35_1
//  880     }
//  881     return 'T';
??b_Beholder_SetGain_35_4:
        MOVS     R0,#+84
??b_Beholder_SetGain_35_1:
        POP      {R1,R2,R4,PC}    ;; return
//  882 }
//  883 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  884 void v_setShutterTime(uint16 shutterTime)
//  885 {
v_setShutterTime:
        PUSH     {R7,LR}
//  886     u8_SCCB_WriteReg_u16(Beholder_Addr,shutterTime,0x0B);
        MOVS     R2,#+11
        MOVS     R1,R0
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+92
        BL       u8_SCCB_WriteReg_u16
//  887 }
        POP      {R0,PC}          ;; return

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
// 33 320 bytes in section .bss
//  3 500 bytes in section .text
// 
//  3 500 bytes of CODE memory
// 33 320 bytes of DATA memory
//
//Errors: none
//Warnings: none
