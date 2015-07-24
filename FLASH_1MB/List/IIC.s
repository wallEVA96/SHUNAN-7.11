///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     04/Jul/2015  06:49:10 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\Ë³°µÈýºÅ-ÆðÔ´- /
//                    µÚÒ»´ú°å\Library\IIC.c                                  /
//    Command line =  D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\Ë³°µÈýºÅ-ÆðÔ´- /
//                    µÚÒ»´ú°å\Library\IIC.c -D IAR -D TWR_K60F120M -lCN      /
//                    D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\Ë³°µÈýºÅ-ÆðÔ´- /
//                    µÚÒ»´ú°å\FLASH_1MB\List\ -lB                            /
//                    D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\Ë³°µÈýºÅ-ÆðÔ´- /
//                    µÚÒ»´ú°å\FLASH_1MB\List\ -o                             /
//                    D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\Ë³°µÈýºÅ-ÆðÔ´- /
//                    µÚÒ»´ú°å\FLASH_1MB\Obj\ --no_cse --no_unroll            /
//                    --no_inline --no_code_motion --no_tbaa --no_clustering  /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=VFPv4_sp --dlib_config         /
//                    "C:\Program Files (x86)\IAR Systems\Embedded Workbench  /
//                    6.5\arm\INC\c\DLib_Config_Normal.h" -I                  /
//                    D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\Ë³°µÈýºÅ-ÆðÔ´- /
//                    µÚÒ»´ú°å\ -I D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\Ë /
//                    ³°µÈýºÅ-ÆðÔ´-µÚÒ»´ú°å\Library\ -I                       /
//                    D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\Ë³°µÈýºÅ-ÆðÔ´- /
//                    µÚÒ»´ú°å\Library\BlessedAlien\ -I                       /
//                    D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\Ë³°µÈýºÅ-ÆðÔ´- /
//                    µÚÒ»´ú°å\ShunAn_Panel\ -Ol --use_c++_inline             /
//    List file    =  D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\Ë³°µÈýºÅ-ÆðÔ´- /
//                    µÚÒ»´ú°å\FLASH_1MB\List\IIC.s                           /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        PUBLIC u8_IIC_ReadReg
        PUBLIC u8_IIC_WriteReg
        PUBLIC v_IIC_Init
        PUBLIC v_IIC_Start_Transmission

// D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\Ë³°µÈýºÅ-ÆðÔ´-µÚÒ»´ú°å\Library\IIC.c
//    1 #include "arm_cm4.h"
//    2 #include "MK60F15.h"
//    3 #include "ShunAn_Lib.h"
//    4 #include "start_ShunAn.h"
//    5 
//    6 #include "IIC.h"
//    7 
//    8 /***********************************************************************************************************/
//    9 /***********************************************************************************************************/
//   10 /***********************************************************************************************************/
//   11 /***********************************************************************************************************/
//   12 /***********************************************************************************************************/
//   13 // K60 Ó²¼þÊµÏÖ IIC
//   14 /******************************************************************************/
//   15 // IIC_Start
//   16 #define IIC_Start(IIC_ADDR)             IIC_ADDR->C1 |= I2C_C1_TX_MASK;\ 
//   17                                         IIC_ADDR->C1 |= I2C_C1_MST_MASK
//   18 /******************************************************************************/
//   19 // IIC_Stop
//   20 #define IIC_Stop(IIC_ADDR)              IIC_ADDR->C1 &= ~I2C_C1_MST_MASK;\ 
//   21                                         IIC_ADDR->C1 &= ~I2C_C1_TX_MASK; \ 
//   22                                         while(0!=(IIC_ADDR->S & I2C_S_BUSY_MASK)){}
//   23 /******************************************************************************/
//   24 // IIC_Wait
//   25 #define IIC_Wait(IIC_ADDR)              {uint32 delay = 120000;\ 
//   26                                         while((0==(IIC_ADDR->S & I2C_S_IICIF_MASK))&&(--delay)){}\ 
//   27                                         if(0==delay){return 'F';}\ 
//   28                                         IIC_ADDR->S |= I2C_S_IICIF_MASK;}
//   29 /******************************************************************************/
//   30 // ³õÊ¼»¯ IIC ÎªÍ¨ÓÃ 400k

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   31 void v_IIC_Init()
//   32 {
//   33     // Ä£¿éÓëÒý½Å¿ªÆô
//   34     SIM_SCGC4 |= SIM_SCGC4_IIC0_MASK; // SIM_SCGC4_IIC0_MASK
v_IIC_Init:
        LDR.N    R0,??DataTable2  ;; 0x40048034
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40
        LDR.N    R1,??DataTable2  ;; 0x40048034
        STR      R0,[R1, #+0]
//   35     SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
        LDR.N    R0,??DataTable2_1  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x400
        LDR.N    R1,??DataTable2_1  ;; 0x40048038
        STR      R0,[R1, #+0]
//   36     PORTB_BASE_PTR->PCR[2] = 0x00000200u; // SCL
        LDR.N    R0,??DataTable2_2  ;; 0x4004a008
        MOV      R1,#+512
        STR      R1,[R0, #+0]
//   37     PORTB_BASE_PTR->PCR[3] = 0x00000200u; // SDA
        LDR.N    R0,??DataTable2_3  ;; 0x4004a00c
        MOV      R1,#+512
        STR      R1,[R0, #+0]
//   38     
//   39     I2C0_BASE_PTR->F = 0; // 75MHz ·ÖÆµ45
        LDR.N    R0,??DataTable2_4  ;; 0x40066001
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//   40     I2C0_BASE_PTR->C1 =  I2C_C1_IICEN_MASK; // ¿ªÆôIICÄ£Ê½ 
        LDR.N    R0,??DataTable2_5  ;; 0x40066002
        MOVS     R1,#+128
        STRB     R1,[R0, #+0]
//   41 }
        BX       LR               ;; return
//   42 
//   43 /******************************************************************************/
//   44 // Ñ¡¶¨Ä¿±ê // Mode => Write 0 / Read 1

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   45 void v_IIC_Start_Transmission(I2C_MemMapPtr IIC_Addr ,uint8 SlaveID ,uint8 Mode)
//   46 {
//   47     SlaveID = (SlaveID << 1)|Mode;
v_IIC_Start_Transmission:
        ORRS     R1,R2,R1, LSL #+1
//   48     IIC_Addr->C1 |= I2C_C1_TX_MASK;IIC_Addr->C1 |= I2C_C1_MST_MASK; // Start
        LDRB     R2,[R0, #+2]
        ORRS     R2,R2,#0x10
        STRB     R2,[R0, #+2]
        LDRB     R2,[R0, #+2]
        ORRS     R2,R2,#0x20
        STRB     R2,[R0, #+2]
//   49     IIC_Addr->D = SlaveID;
        STRB     R1,[R0, #+4]
//   50 }
        BX       LR               ;; return
//   51 
//   52 /******************************************************************************/
//   53 // Ð´¼Ä´æÆ÷ÊýÖµ

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   54 uint8 u8_IIC_WriteReg(I2C_MemMapPtr IIC_Addr ,uint8 SlaveID ,uint8 Num ,uint8 u8RegAddress)
//   55 {
u8_IIC_WriteReg:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R2
        MOVS     R6,R3
//   56     v_IIC_Start_Transmission(IIC_Addr ,SlaveID ,0);
        MOVS     R2,#+0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        BL       v_IIC_Start_Transmission
//   57     IIC_Wait(IIC_Addr);
        LDR.N    R0,??DataTable2_6  ;; 0x1d4c0
??u8_IIC_WriteReg_0:
        LDRB     R1,[R4, #+3]
        LSLS     R1,R1,#+30
        BMI.N    ??u8_IIC_WriteReg_1
        SUBS     R0,R0,#+1
        CMP      R0,#+0
        BNE.N    ??u8_IIC_WriteReg_0
??u8_IIC_WriteReg_1:
        CMP      R0,#+0
        BNE.N    ??u8_IIC_WriteReg_2
        MOVS     R0,#+70
        B.N      ??u8_IIC_WriteReg_3
??u8_IIC_WriteReg_2:
        LDRB     R0,[R4, #+3]
        ORRS     R0,R0,#0x2
        STRB     R0,[R4, #+3]
//   58     
//   59     IIC_Addr->D = u8RegAddress;
        STRB     R6,[R4, #+4]
//   60     IIC_Wait(IIC_Addr);
        LDR.N    R0,??DataTable2_6  ;; 0x1d4c0
??u8_IIC_WriteReg_4:
        LDRB     R1,[R4, #+3]
        LSLS     R1,R1,#+30
        BMI.N    ??u8_IIC_WriteReg_5
        SUBS     R0,R0,#+1
        CMP      R0,#+0
        BNE.N    ??u8_IIC_WriteReg_4
??u8_IIC_WriteReg_5:
        CMP      R0,#+0
        BNE.N    ??u8_IIC_WriteReg_6
        MOVS     R0,#+70
        B.N      ??u8_IIC_WriteReg_3
??u8_IIC_WriteReg_6:
        LDRB     R0,[R4, #+3]
        ORRS     R0,R0,#0x2
        STRB     R0,[R4, #+3]
//   61 
//   62     IIC_Addr->D = Num;
        STRB     R5,[R4, #+4]
//   63     IIC_Wait(IIC_Addr);
        LDR.N    R0,??DataTable2_6  ;; 0x1d4c0
??u8_IIC_WriteReg_7:
        LDRB     R1,[R4, #+3]
        LSLS     R1,R1,#+30
        BMI.N    ??u8_IIC_WriteReg_8
        SUBS     R0,R0,#+1
        CMP      R0,#+0
        BNE.N    ??u8_IIC_WriteReg_7
??u8_IIC_WriteReg_8:
        CMP      R0,#+0
        BNE.N    ??u8_IIC_WriteReg_9
        MOVS     R0,#+70
        B.N      ??u8_IIC_WriteReg_3
??u8_IIC_WriteReg_9:
        LDRB     R0,[R4, #+3]
        ORRS     R0,R0,#0x2
        STRB     R0,[R4, #+3]
//   64 
//   65     IIC_Stop(IIC_Addr);
        LDRB     R0,[R4, #+2]
        ANDS     R0,R0,#0xDF
        STRB     R0,[R4, #+2]
        LDRB     R0,[R4, #+2]
        ANDS     R0,R0,#0xEF
        STRB     R0,[R4, #+2]
??u8_IIC_WriteReg_10:
        LDRB     R0,[R4, #+3]
        LSLS     R0,R0,#+26
        BMI.N    ??u8_IIC_WriteReg_10
//   66     
//   67     //uint8 time = 200;while(time--){asm("nop");};
//   68     return 0;
        MOVS     R0,#+0
??u8_IIC_WriteReg_3:
        POP      {R4-R6,PC}       ;; return
//   69 }
//   70 /******************************************************************************/
//   71 // ¶ÁÈ¡¼Ä´æÆ÷ÊýÖµ

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   72 uint8 u8_IIC_ReadReg(I2C_MemMapPtr IIC_Addr ,uint8 SlaveID ,uint8 * Num ,uint8 u8RegAddress)
//   73 {
u8_IIC_ReadReg:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R6,R1
        MOVS     R5,R2
        MOVS     R7,R3
//   74     v_IIC_Start_Transmission(IIC_Addr ,SlaveID ,0);
        MOVS     R2,#+0
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        BL       v_IIC_Start_Transmission
//   75     IIC_Wait(IIC_Addr);
        LDR.N    R0,??DataTable2_6  ;; 0x1d4c0
??u8_IIC_ReadReg_0:
        LDRB     R1,[R4, #+3]
        LSLS     R1,R1,#+30
        BMI.N    ??u8_IIC_ReadReg_1
        SUBS     R0,R0,#+1
        CMP      R0,#+0
        BNE.N    ??u8_IIC_ReadReg_0
??u8_IIC_ReadReg_1:
        CMP      R0,#+0
        BNE.N    ??u8_IIC_ReadReg_2
        MOVS     R0,#+70
        B.N      ??u8_IIC_ReadReg_3
??u8_IIC_ReadReg_2:
        LDRB     R0,[R4, #+3]
        ORRS     R0,R0,#0x2
        STRB     R0,[R4, #+3]
//   76     
//   77     IIC_Addr->D = u8RegAddress;
        STRB     R7,[R4, #+4]
//   78     IIC_Wait(IIC_Addr);
        LDR.N    R0,??DataTable2_6  ;; 0x1d4c0
??u8_IIC_ReadReg_4:
        LDRB     R1,[R4, #+3]
        LSLS     R1,R1,#+30
        BMI.N    ??u8_IIC_ReadReg_5
        SUBS     R0,R0,#+1
        CMP      R0,#+0
        BNE.N    ??u8_IIC_ReadReg_4
??u8_IIC_ReadReg_5:
        CMP      R0,#+0
        BNE.N    ??u8_IIC_ReadReg_6
        MOVS     R0,#+70
        B.N      ??u8_IIC_ReadReg_3
??u8_IIC_ReadReg_6:
        LDRB     R0,[R4, #+3]
        ORRS     R0,R0,#0x2
        STRB     R0,[R4, #+3]
//   79     
//   80     IIC_Addr->C1 |= I2C_C1_RSTA_MASK; // repeated start
        LDRB     R0,[R4, #+2]
        ORRS     R0,R0,#0x4
        STRB     R0,[R4, #+2]
//   81     
//   82     SlaveID = (SlaveID << 1)|0x01;IIC_Addr->D = SlaveID;
        LSLS     R0,R6,#+1
        ORRS     R6,R0,#0x1
        STRB     R6,[R4, #+4]
//   83     IIC_Wait(IIC_Addr);
        LDR.N    R0,??DataTable2_6  ;; 0x1d4c0
??u8_IIC_ReadReg_7:
        LDRB     R1,[R4, #+3]
        LSLS     R1,R1,#+30
        BMI.N    ??u8_IIC_ReadReg_8
        SUBS     R0,R0,#+1
        CMP      R0,#+0
        BNE.N    ??u8_IIC_ReadReg_7
??u8_IIC_ReadReg_8:
        CMP      R0,#+0
        BNE.N    ??u8_IIC_ReadReg_9
        MOVS     R0,#+70
        B.N      ??u8_IIC_ReadReg_3
??u8_IIC_ReadReg_9:
        LDRB     R0,[R4, #+3]
        ORRS     R0,R0,#0x2
        STRB     R0,[R4, #+3]
//   84     
//   85     IIC_Addr->C1 &= (~I2C_C1_TX_MASK);
        LDRB     R0,[R4, #+2]
        ANDS     R0,R0,#0xEF
        STRB     R0,[R4, #+2]
//   86     IIC_Addr->C1 |= I2C_C1_TXAK_MASK;
        LDRB     R0,[R4, #+2]
        ORRS     R0,R0,#0x8
        STRB     R0,[R4, #+2]
//   87     
//   88     (*Num) = IIC_Addr->D; // Dummy read
        LDRB     R0,[R4, #+4]
        STRB     R0,[R5, #+0]
//   89     IIC_Wait(IIC_Addr);
        LDR.N    R0,??DataTable2_6  ;; 0x1d4c0
??u8_IIC_ReadReg_10:
        LDRB     R1,[R4, #+3]
        LSLS     R1,R1,#+30
        BMI.N    ??u8_IIC_ReadReg_11
        SUBS     R0,R0,#+1
        CMP      R0,#+0
        BNE.N    ??u8_IIC_ReadReg_10
??u8_IIC_ReadReg_11:
        CMP      R0,#+0
        BNE.N    ??u8_IIC_ReadReg_12
        MOVS     R0,#+70
        B.N      ??u8_IIC_ReadReg_3
??u8_IIC_ReadReg_12:
        LDRB     R0,[R4, #+3]
        ORRS     R0,R0,#0x2
        STRB     R0,[R4, #+3]
//   90     
//   91     IIC_Stop(IIC_Addr);
        LDRB     R0,[R4, #+2]
        ANDS     R0,R0,#0xDF
        STRB     R0,[R4, #+2]
        LDRB     R0,[R4, #+2]
        ANDS     R0,R0,#0xEF
        STRB     R0,[R4, #+2]
??u8_IIC_ReadReg_13:
        LDRB     R0,[R4, #+3]
        LSLS     R0,R0,#+26
        BMI.N    ??u8_IIC_ReadReg_13
//   92     
//   93     (*Num) = IIC_Addr->D;
        LDRB     R0,[R4, #+4]
        STRB     R0,[R5, #+0]
//   94     
//   95     return 'T';
        MOVS     R0,#+84
??u8_IIC_ReadReg_3:
        POP      {R1,R4-R7,PC}    ;; return
//   96 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     0x40048034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     0x4004a008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     0x4004a00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     0x40066001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DC32     0x40066002

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_6:
        DC32     0x1d4c0

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
// 454 bytes in section .text
// 
// 454 bytes of CODE memory
//
//Errors: none
//Warnings: none
