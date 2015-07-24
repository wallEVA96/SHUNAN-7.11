///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     26/Nov/2014  20:35:34 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\MK60FX512VLQ15 /
//                    \ShunAn_Panel\TFT.c                                     /
//    Command line =  D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\MK60FX512VLQ15 /
//                    \ShunAn_Panel\TFT.c -D IAR -D TWR_K60F120M -lCN         /
//                    D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\MK60FX512VLQ15 /
//                    \FLASH_1MB\List\ -lB D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýº /
//                    Å\´úÂë\MK60FX512VLQ15\FLASH_1MB\List\ -o                /
//                    D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\MK60FX512VLQ15 /
//                    \FLASH_1MB\Obj\ --no_cse --no_unroll --no_inline        /
//                    --no_code_motion --no_tbaa --no_clustering              /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=None --dlib_config             /
//                    "C:\Program Files (x86)\IAR Systems\Embedded Workbench  /
//                    6.5\arm\INC\c\DLib_Config_Normal.h" -I                  /
//                    D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\MK60FX512VLQ15 /
//                    \ -I D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\MK60FX512 /
//                    VLQ15\Library\ -I D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´ /
//                    úÂë\MK60FX512VLQ15\Library\BlessedAlien\ -I             /
//                    D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\MK60FX512VLQ15 /
//                    \ShunAn_Panel\ -Ol --use_c++_inline                     /
//    List file    =  D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\MK60FX512VLQ15 /
//                    \FLASH_1MB\List\TFT.s                                   /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN vDelayMs

        PUBLIC LCD_Clear
        PUBLIC LCD_Init
        PUBLIC LCD_PinInit
        PUBLIC LCD_Reversal
        PUBLIC LCD_SetArrow
        PUBLIC LCD_SetCursor
        PUBLIC LCD_SetLine
        PUBLIC LCD_SetPath
        PUBLIC LCD_SetPoint
        PUBLIC LCD_SetSquare
        PUBLIC LCD_readReg
        PUBLIC LCD_writeData
        PUBLIC LCD_writeIndex
        PUBLIC LCD_writeReg

// D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\MK60FX512VLQ15\ShunAn_Panel\TFT.c
//    1 /***
//    2 /. -----------------------//Íâ²¿Æ÷¼þÇý¶¯//-------------------------
//    3 
//    4 /. ²âÊÔÓ²¼þÆ½Ì¨£ºMK60FX512VLQ15
//    5  . ¹¤×÷ÆµÂÊ£º
//    6  . °æÈ¨ËùÓÐ£ºÖì¸ð¾þ ÖÐÄÏ´óÑ§
//    7  . ÖÆ×÷Õß£ºÖì¸ð¾þ ÖÐÄÏ´óÑ§
//    8  . Çý¶¯Æ÷¼þ£ºSSD1289£¬Æ÷¼þÀ´Ô´£ºÎ¢Ñ©µç×Ó
//    9  . ×îºóÐÞ¸ÄÈÕÆÚ: 20140403
//   10  
//   11 ***/
//   12 #include "arm_cm4.h"
//   13 #include "MK60F15.h"
//   14 #include "ShunAn_Lib.h"
//   15 #include "start_ShunAn.h"
//   16 #include "TFT.h"
//   17 
//   18 /* ¼Ä´æÆ÷ÃèÊö by Öì¸ð¾þ 20140403 */
//   19 #define Delay50ns()       {asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");\ 
//   20                            asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");\ 
//   21                            asm("nop");asm("nop");asm("nop");}
//   22 // #define IR(Index)       The index instruction specifies the RAM control indexes (R00h to RFFh).
//   23 /* ¶ÁÐ¾Æ¬ */
//   24 #define R00_DeviceCodeRead      0x0000u
//   25 /* Õñµ´Æ÷ */
//   26 #define R00_OSC                 0x0000u
//   27 /* ÆÁÄ»¿ØÖÆ */
//   28 #define R01_DriverOutC          0x0001u
//   29 #define R02_LCDdriveAC          0x0002u
//   30 /* ±È½Ï */
//   31 #define R05_CmpReg              0x0005u
//   32 #define R06_CmpReg              0x0006u
//   33 /*  */
//   34 #define R07_DisplayC            0x0007u
//   35 #define R0B_FrameCycle          0x000Bu
//   36 #define R0F_GateScanPos         0x000Fu
//   37 /* Ä£Ê½Ñ¡Ôñ */
//   38 #define R10_SleepMode           0x0010u
//   39 #define R11_EntryMode           0x0011u         //
//   40 /* ½Ó¿Ú¿ØÖÆ */
//   41 #define R15_GenInterfaceC       0x0015u         // Ò»°ã½Ó¿Ú¿ØÖÆ // 00dx£¬ÉèÖÃÐÅºÅ¼«ÐÔ
//   42 #define R16_LinePorch           0x0016u         //
//   43 #define R17_VerPorch            0x0017u         // 
//   44 /* Power ¿ØÖÆ */
//   45 #define R03_PowerC_1            0x0003u
//   46 #define R0C_PowerC_2            0x000Cu
//   47 #define R0D_PowerC_3            0x000Du
//   48 #define R0E_PowerC_4            0x000Eu
//   49 #define R1E_PowerC_5            0x001Eu
//   50 /* GRAM ²Ù×÷ */
//   51 #define DRAWPOINT               0x0022u
//   52 #define R22_WdataToGRAM         0x0022u         // SSD1289 selects the grayscale level according to the GDDRAM data.
//   53 #define R22_RdataFrGRAM         0x0022u         // RW = W then write ; RW = R then read ;
//   54 #define R23_RAMwDataMask        0x0023u
//   55 #define R24_RAMwDataMask        0x0024u
//   56 /* Gamma ¿ØÖÆ */
//   57 // function for the 262,144-color display.
//   58 #define R30_GammaC_0            0x0030u
//   59 #define R31_GammaC_1            0x0031u
//   60 #define R32_GammaC_2            0x0032u
//   61 #define R33_GammaC_3            0x0033u
//   62 #define R34_GammaC_4            0x0034u
//   63 #define R35_GammaC_5            0x0035u
//   64 #define R36_GammaC_6            0x0036u
//   65 #define R37_GammaC_7            0x0037u
//   66 #define R3A_GammaC_8            0x003Au
//   67 #define R3B_GammaC_9            0x003Bu
//   68 //
//   69 /* ´°¿ÚÏÔÊ¾ */
//   70 #define R41_VerScrC_1           0x0041u
//   71 #define R42_VerScrC_2           0x0042u
//   72 #define R44_LineRAMpos          0x0044u
//   73 #define R45_VerticalRAMpos      0x0045u
//   74 #define R46_VerticalRAMpos      0x0046u
//   75 #define R48_1stWindow           0x0048u
//   76 #define R49_1stWindowEnd        0x0049u
//   77 #define R4A_2ndWindow           0x004Au
//   78 #define R4B_2ndWindowEnd        0x004Bu
//   79 #define R4E_XAD                 0x004Eu         // Make initial settings for the GDDRAM X address in the AC
//   80 #define R4F_YAD                 0x004Fu
//   81 /*  */
//   82 #define R25_FrameFreC           0x0025u         // ¿ò¼ÜÆµÂÊ¿ØÖÆ
//   83 #define R28_VcomOTP_1           0x0028u         // When OTP is access, these registers must be set accordantly.
//   84 #define R29_VcomOTP_2           0x0029u 
//   85 /* ¼Ä´æÆ÷ÃèÊö½áÊø */
//   86 
//   87 //#define DC              PTE24_OUT
//   88 //#define RS              PTE24_OUT
//   89 #define DC(x)           __Pin_Set_(PTE_BASE_PTR->PDOR,24,x)
//   90 //#define CS              PTE25_OUT
//   91 #define CS(x)           __Pin_Set_(PTE_BASE_PTR->PDOR,25,x)
//   92 //#define RD              PTE26_OUT
//   93 #define RD(x)           __Pin_Set_(PTE_BASE_PTR->PDOR,26,x)
//   94 //#define WR              PTE27_OUT
//   95 #define WR(x)           __Pin_Set_(PTE_BASE_PTR->PDOR,27,x)
//   96 //#define RESET           PTE28_OUT
//   97 #define RESET(x)        __Pin_Set_(PTE_BASE_PTR->PDOR,28,x)
//   98 
//   99 //#define X_MAX   320
//  100 //#define Y_MAX   240
//  101 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  102 void LCD_PinInit(uint8 RW)
//  103 {
//  104     // Êä³ö¶Ë³õÊ¼»¯
//  105     PORTD_BASE_PTR->PCR[0] = PORT_PCR_MUX(1);
LCD_PinInit:
        LDR.W    R1,??DataTable5  ;; 0x4004c000
        MOV      R2,#+256
        STR      R2,[R1, #+0]
//  106     PORTD_BASE_PTR->PCR[1] = PORT_PCR_MUX(1);
        LDR.W    R1,??DataTable5_1  ;; 0x4004c004
        MOV      R2,#+256
        STR      R2,[R1, #+0]
//  107     PORTD_BASE_PTR->PCR[2] = PORT_PCR_MUX(1);
        LDR.W    R1,??DataTable5_2  ;; 0x4004c008
        MOV      R2,#+256
        STR      R2,[R1, #+0]
//  108     PORTD_BASE_PTR->PCR[3] = PORT_PCR_MUX(1);
        LDR.W    R1,??DataTable5_3  ;; 0x4004c00c
        MOV      R2,#+256
        STR      R2,[R1, #+0]
//  109     PORTD_BASE_PTR->PCR[4] = PORT_PCR_MUX(1);
        LDR.W    R1,??DataTable5_4  ;; 0x4004c010
        MOV      R2,#+256
        STR      R2,[R1, #+0]
//  110     PORTD_BASE_PTR->PCR[5] = PORT_PCR_MUX(1);
        LDR.W    R1,??DataTable5_5  ;; 0x4004c014
        MOV      R2,#+256
        STR      R2,[R1, #+0]
//  111     PORTD_BASE_PTR->PCR[6] = PORT_PCR_MUX(1);
        LDR.W    R1,??DataTable5_6  ;; 0x4004c018
        MOV      R2,#+256
        STR      R2,[R1, #+0]
//  112     PORTD_BASE_PTR->PCR[7] = PORT_PCR_MUX(1);
        LDR.W    R1,??DataTable5_7  ;; 0x4004c01c
        MOV      R2,#+256
        STR      R2,[R1, #+0]
//  113     PORTD_BASE_PTR->PCR[8] = PORT_PCR_MUX(1);
        LDR.W    R1,??DataTable5_8  ;; 0x4004c020
        MOV      R2,#+256
        STR      R2,[R1, #+0]
//  114     PORTD_BASE_PTR->PCR[9] = PORT_PCR_MUX(1);
        LDR.W    R1,??DataTable5_9  ;; 0x4004c024
        MOV      R2,#+256
        STR      R2,[R1, #+0]
//  115     PORTD_BASE_PTR->PCR[10] = PORT_PCR_MUX(1);
        LDR.W    R1,??DataTable5_10  ;; 0x4004c028
        MOV      R2,#+256
        STR      R2,[R1, #+0]
//  116     PORTD_BASE_PTR->PCR[11] = PORT_PCR_MUX(1);
        LDR.W    R1,??DataTable5_11  ;; 0x4004c02c
        MOV      R2,#+256
        STR      R2,[R1, #+0]
//  117     PORTD_BASE_PTR->PCR[12] = PORT_PCR_MUX(1);
        LDR.W    R1,??DataTable5_12  ;; 0x4004c030
        MOV      R2,#+256
        STR      R2,[R1, #+0]
//  118     PORTD_BASE_PTR->PCR[13] = PORT_PCR_MUX(1);
        LDR.W    R1,??DataTable5_13  ;; 0x4004c034
        MOV      R2,#+256
        STR      R2,[R1, #+0]
//  119     PORTD_BASE_PTR->PCR[14] = PORT_PCR_MUX(1);
        LDR.W    R1,??DataTable5_14  ;; 0x4004c038
        MOV      R2,#+256
        STR      R2,[R1, #+0]
//  120     PORTD_BASE_PTR->PCR[15] = PORT_PCR_MUX(1);
        LDR.W    R1,??DataTable5_15  ;; 0x4004c03c
        MOV      R2,#+256
        STR      R2,[R1, #+0]
//  121     if(0 == RW)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??LCD_PinInit_0
//  122     {
//  123         PTD_BASE_PTR->PDDR |=  0x0000FFFFu; // ºóÊ®ÁùÎ»ÖÃÎªÊä³ö
        LDR.W    R0,??DataTable5_16  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        ORR      R0,R0,#0xFF00
        ORRS     R0,R0,#0xFF
        LDR.W    R1,??DataTable5_16  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
        B.N      ??LCD_PinInit_1
//  124     }
//  125     else // Pin_READ == RW
//  126     {
//  127         PTD_BASE_PTR->PDDR &= ~0x0000FFFFu; // ºóÊ®ÁùÎ»ÖÃÎªÊäÈë
??LCD_PinInit_0:
        LDR.W    R0,??DataTable5_16  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+16
        LDR.W    R1,??DataTable5_16  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  128     }
//  129     // Ð¾Æ¬¿ØÖÆ¶Ë³õÊ¼»¯
//  130     PORTE_BASE_PTR->PCR[24] = PORT_PCR_MUX(1); // DC/RS
??LCD_PinInit_1:
        LDR.W    R0,??DataTable5_17  ;; 0x4004d060
        MOV      R1,#+256
        STR      R1,[R0, #+0]
//  131     PORTE_BASE_PTR->PCR[25] = PORT_PCR_MUX(1); // CS
        LDR.W    R0,??DataTable5_18  ;; 0x4004d064
        MOV      R1,#+256
        STR      R1,[R0, #+0]
//  132     PORTE_BASE_PTR->PCR[26] = PORT_PCR_MUX(1); // RD
        LDR.N    R0,??DataTable5_19  ;; 0x4004d068
        MOV      R1,#+256
        STR      R1,[R0, #+0]
//  133     PORTE_BASE_PTR->PCR[27] = PORT_PCR_MUX(1); // WR
        LDR.N    R0,??DataTable5_20  ;; 0x4004d06c
        MOV      R1,#+256
        STR      R1,[R0, #+0]
//  134     PORTE_BASE_PTR->PCR[28] = PORT_PCR_MUX(1); // RESET
        LDR.N    R0,??DataTable5_21  ;; 0x4004d070
        MOV      R1,#+256
        STR      R1,[R0, #+0]
//  135     PTE_BASE_PTR->PDDR |= 0x1F000000u; //
        LDR.N    R0,??DataTable5_22  ;; 0x400ff114
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1F000000
        LDR.N    R1,??DataTable5_22  ;; 0x400ff114
        STR      R0,[R1, #+0]
//  136 }
        BX       LR               ;; return
//  137     

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  138 void LCD_writeIndex(uint16 Index_Input)
//  139 {
LCD_writeIndex:
        SUB      SP,SP,#+4
//  140     DC(0);CS(0);
        LDR.N    R1,??DataTable5_23  ;; 0x400ff100
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x1000000
        LDR.N    R2,??DataTable5_23  ;; 0x400ff100
        STR      R1,[R2, #+0]
        LDR.N    R1,??DataTable5_23  ;; 0x400ff100
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x2000000
        LDR.N    R2,??DataTable5_23  ;; 0x400ff100
        STR      R1,[R2, #+0]
//  141     vint32 Index = PTD_BASE_PTR->PDOR;
        LDR.N    R1,??DataTable5_24  ;; 0x400ff0c0
        LDR      R1,[R1, #+0]
        STR      R1,[SP, #+0]
//  142     Index &= ~0x0000FFFFu;
        LDR      R1,[SP, #+0]
        BFC      R1,#+0,#+16
        STR      R1,[SP, #+0]
//  143     Index |=  Index_Input;
        LDR      R1,[SP, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        ORRS     R0,R0,R1
        STR      R0,[SP, #+0]
//  144     PTD_BASE_PTR->PDOR = Index;
        LDR.N    R0,??DataTable5_24  ;; 0x400ff0c0
        LDR      R1,[SP, #+0]
        STR      R1,[R0, #+0]
//  145     WR(0);WR(1);CS(1);
        LDR.N    R0,??DataTable5_23  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x8000000
        LDR.N    R1,??DataTable5_23  ;; 0x400ff100
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable5_23  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8000000
        LDR.N    R1,??DataTable5_23  ;; 0x400ff100
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable5_23  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000000
        LDR.N    R1,??DataTable5_23  ;; 0x400ff100
        STR      R0,[R1, #+0]
//  146 }
        ADD      SP,SP,#+4
        BX       LR               ;; return
//  147 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  148 void LCD_writeData(uint16 Data_Input)
//  149 {
LCD_writeData:
        SUB      SP,SP,#+4
//  150     DC(1);CS(0);
        LDR.N    R1,??DataTable5_23  ;; 0x400ff100
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x1000000
        LDR.N    R2,??DataTable5_23  ;; 0x400ff100
        STR      R1,[R2, #+0]
        LDR.N    R1,??DataTable5_23  ;; 0x400ff100
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x2000000
        LDR.N    R2,??DataTable5_23  ;; 0x400ff100
        STR      R1,[R2, #+0]
//  151     vint32 Data = PTD_BASE_PTR->PDOR;
        LDR.N    R1,??DataTable5_24  ;; 0x400ff0c0
        LDR      R1,[R1, #+0]
        STR      R1,[SP, #+0]
//  152     Data &= ~0x0000FFFFu;
        LDR      R1,[SP, #+0]
        BFC      R1,#+0,#+16
        STR      R1,[SP, #+0]
//  153     Data |=  Data_Input;
        LDR      R1,[SP, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        ORRS     R0,R0,R1
        STR      R0,[SP, #+0]
//  154     PTD_BASE_PTR->PDOR = Data;
        LDR.N    R0,??DataTable5_24  ;; 0x400ff0c0
        LDR      R1,[SP, #+0]
        STR      R1,[R0, #+0]
//  155     WR(0);WR(1);CS(1);
        LDR.N    R0,??DataTable5_23  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x8000000
        LDR.N    R1,??DataTable5_23  ;; 0x400ff100
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable5_23  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8000000
        LDR.N    R1,??DataTable5_23  ;; 0x400ff100
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable5_23  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000000
        LDR.N    R1,??DataTable5_23  ;; 0x400ff100
        STR      R0,[R1, #+0]
//  156 }
        ADD      SP,SP,#+4
        BX       LR               ;; return
//  157 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  158 void LCD_writeReg(uint16 Index,uint16 Data)
//  159 {
LCD_writeReg:
        PUSH     {R4,LR}
        MOVS     R4,R1
//  160     CS(0);
        LDR.N    R1,??DataTable5_23  ;; 0x400ff100
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x2000000
        LDR.N    R2,??DataTable5_23  ;; 0x400ff100
        STR      R1,[R2, #+0]
//  161     LCD_writeIndex(Index);
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_writeIndex
//  162     LCD_writeData(Data);
        MOVS     R0,R4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_writeData
//  163     CS(1);
        LDR.N    R0,??DataTable5_23  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000000
        LDR.N    R1,??DataTable5_23  ;; 0x400ff100
        STR      R0,[R1, #+0]
//  164 }
        POP      {R4,PC}          ;; return
//  165 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  166 unsigned short int LCD_readReg(uint16 Index_In)
//  167 {
LCD_readReg:
        PUSH     {R7,LR}
//  168     // ¶ÁÈ¡µÄÊý¾ÝÈ·ÊµÖ»ÓÐstatus colorsInPixels // By 0822
//  169     // reading the display data from GDDRAM or reading the status from the status register
//  170     PTD_BASE_PTR->PDDR |=  0x0000FFFFu; // ºóÊ®ÁùÎ»ÖÃÎªÊä³ö
        LDR.N    R1,??DataTable5_16  ;; 0x400ff0d4
        LDR      R1,[R1, #+0]
        ORR      R1,R1,#0xFF00
        ORRS     R1,R1,#0xFF
        LDR.N    R2,??DataTable5_16  ;; 0x400ff0d4
        STR      R1,[R2, #+0]
//  171     LCD_writeIndex(Index_In);  //Ð´ÈëÒª¶ÁµÄ¼Ä´æÆ÷ºÅ
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_writeIndex
//  172 
//  173     CS(1);DC(1);CS(0);WR(1);RD(0);
        LDR.N    R0,??DataTable5_23  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000000
        LDR.N    R1,??DataTable5_23  ;; 0x400ff100
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable5_23  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000000
        LDR.N    R1,??DataTable5_23  ;; 0x400ff100
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable5_23  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x2000000
        LDR.N    R1,??DataTable5_23  ;; 0x400ff100
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable5_23  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8000000
        LDR.N    R1,??DataTable5_23  ;; 0x400ff100
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable5_23  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x4000000
        LDR.N    R1,??DataTable5_23  ;; 0x400ff100
        STR      R0,[R1, #+0]
//  174     vint32 Index = PTD_BASE_PTR->PDOR;
        LDR.N    R0,??DataTable5_24  ;; 0x400ff0c0
        LDR      R0,[R0, #+0]
        STR      R0,[SP, #+0]
//  175     Index &= ~0x0000FFFFu;
        LDR      R0,[SP, #+0]
        BFC      R0,#+0,#+16
        STR      R0,[SP, #+0]
//  176     Index |=  0xFFFFu;
        LDR      R0,[SP, #+0]
        ORR      R0,R0,#0xFF00
        ORRS     R0,R0,#0xFF
        STR      R0,[SP, #+0]
//  177     PTD_BASE_PTR->PDOR = Index;
        LDR.N    R0,??DataTable5_24  ;; 0x400ff0c0
        LDR      R1,[SP, #+0]
        STR      R1,[R0, #+0]
//  178     PTD_BASE_PTR->PDDR &= ~0x0000FFFFu; // ºóÊ®ÁùÎ»ÖÃÎªÊäÈë
        LDR.N    R0,??DataTable5_16  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+16
        LDR.N    R1,??DataTable5_16  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  179     RD(1);
        LDR.N    R0,??DataTable5_23  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4000000
        LDR.N    R1,??DataTable5_23  ;; 0x400ff100
        STR      R0,[R1, #+0]
//  180     Index = PTD_BASE_PTR->PDIR & 0x0000FFFFu;
        LDR.N    R0,??DataTable5_25  ;; 0x400ff0d0
        LDR      R0,[R0, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        STR      R0,[SP, #+0]
//  181     CS(1);
        LDR.N    R0,??DataTable5_23  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000000
        LDR.N    R1,??DataTable5_23  ;; 0x400ff100
        STR      R0,[R1, #+0]
//  182     return Index;
        LDR      R0,[SP, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R1,PC}          ;; return
//  183 }
//  184 
//  185 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  186 uint8 LCD_Init() // ·ÅÖÃÔÚPITÆô¶¯Ç°
//  187 {
LCD_Init:
        PUSH     {R3-R5,LR}
//  188     SIM_SCGC5 |= (SIM_SCGC5_PORTD_MASK | SIM_SCGC5_PORTE_MASK);
        LDR.N    R0,??DataTable5_26  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x3000
        LDR.N    R1,??DataTable5_26  ;; 0x40048038
        STR      R0,[R1, #+0]
//  189     uint16 CodeDevice = 0;
        MOVS     R4,#+0
//  190     uint16 timer = 0;
        MOVS     R5,#+0
//  191     LCD_PinInit(0);
        MOVS     R0,#+0
        BL       LCD_PinInit
//  192     RESET(0);
        LDR.N    R0,??DataTable5_23  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x10000000
        LDR.N    R1,??DataTable5_23  ;; 0x400ff100
        STR      R0,[R1, #+0]
//  193     vDelayMs(100);
        MOVS     R0,#+100
        BL       vDelayMs
//  194     RESET(1);
        LDR.N    R0,??DataTable5_23  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000000
        LDR.N    R1,??DataTable5_23  ;; 0x400ff100
        STR      R0,[R1, #+0]
//  195     vDelayMs(100);
        MOVS     R0,#+100
        BL       vDelayMs
//  196     do
//  197     {
//  198         timer++;
??LCD_Init_0:
        ADDS     R5,R5,#+1
//  199         LCD_PinInit(0);
        MOVS     R0,#+0
        BL       LCD_PinInit
//  200         RESET(0);
        LDR.N    R0,??DataTable5_23  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x10000000
        LDR.N    R1,??DataTable5_23  ;; 0x400ff100
        STR      R0,[R1, #+0]
//  201         vDelayMs(100);
        MOVS     R0,#+100
        BL       vDelayMs
//  202         RESET(1);
        LDR.N    R0,??DataTable5_23  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000000
        LDR.N    R1,??DataTable5_23  ;; 0x400ff100
        STR      R0,[R1, #+0]
//  203         vDelayMs(100);
        MOVS     R0,#+100
        BL       vDelayMs
//  204         CodeDevice = LCD_readReg(0x0000);
        MOVS     R0,#+0
        BL       LCD_readReg
        MOVS     R4,R0
//  205         vDelayMs(50);
        MOVS     R0,#+50
        BL       vDelayMs
//  206         if(timer > 3){return 0xFA;}
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+4
        BLT.N    ??LCD_Init_1
        MOVS     R0,#+250
        B.N      ??LCD_Init_2
//  207     }
//  208     while( 0x8989 != CodeDevice );
??LCD_Init_1:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        MOVW     R0,#+35209
        CMP      R4,R0
        BNE.N    ??LCD_Init_0
//  209     
//  210     LCD_PinInit(0);
        MOVS     R0,#+0
        BL       LCD_PinInit
//  211     // ´ò¿ª¾§Õñ
//  212     LCD_writeReg(R00_OSC,0x0001);
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       LCD_writeReg
//  213     //
//  214     LCD_writeReg(R10_SleepMode,0x0000);         // ÍË³öÐÝÃß
        MOVS     R1,#+0
        MOVS     R0,#+16
        BL       LCD_writeReg
//  215     vDelayMs(50);
        MOVS     R0,#+50
        BL       vDelayMs
//  216     
//  217     LCD_writeReg(R01_DriverOutC,0x693F);        // ºáÆÁ // TB=0 RL=1 SM=0
        MOVW     R1,#+26943
        MOVS     R0,#+1
        BL       LCD_writeReg
//  218     // LCD_Reversal(0x693F,1,1); // ÇÐ»»ÎªÊúÆÁ
//  219     
//  220     LCD_writeReg(R07_DisplayC,0x0033);          //
        MOVS     R1,#+51
        MOVS     R0,#+7
        BL       LCD_writeReg
//  221     LCD_writeReg(R11_EntryMode,0x6030);         // ×óÊÖ×ø±êÏµ
        MOVW     R1,#+24624
        MOVS     R0,#+17
        BL       LCD_writeReg
//  222     // LCD_writeReg(R11_EntryMode,0x6030);
//  223     
//  224     LCD_writeReg(R02_LCDdriveAC,0x0600);
        MOV      R1,#+1536
        MOVS     R0,#+2
        BL       LCD_writeReg
//  225     
//  226     // Power supply setting
//  227     LCD_writeReg(R03_PowerC_1,0xA8A4);          // 0xA8A4
        MOVW     R1,#+43172
        MOVS     R0,#+3
        BL       LCD_writeReg
//  228     LCD_writeReg(R0C_PowerC_2,0x0000);    
        MOVS     R1,#+0
        MOVS     R0,#+12
        BL       LCD_writeReg
//  229     LCD_writeReg(R0D_PowerC_3,0x080C);   
        MOVW     R1,#+2060
        MOVS     R0,#+13
        BL       LCD_writeReg
//  230     LCD_writeReg(R0E_PowerC_4,0x2B00);    
        MOV      R1,#+11008
        MOVS     R0,#+14
        BL       LCD_writeReg
//  231     LCD_writeReg(R1E_PowerC_5,0x00B0);
        MOVS     R1,#+176
        MOVS     R0,#+30
        BL       LCD_writeReg
//  232 
//  233     // ¿ª´°ÉèÖÃ
//  234     ///LCD_writeReg(0x0044,0xEF00); //Ë®Æ½RAMµÄÆðÊ¼-½áÊøµØÖ·Î»ÖÃ (00~EF)
//  235     ///LCD_writeReg(0x0045,0x0000);  //´¹Ö±RAMµÄÆðÊ¼µØÖ· 00
//  236     ///LCD_writeReg(0x0046,0x013F); //´¹Ö±RAMµÄ½áÊøµØÖ· 13F
//  237     
//  238     // Gama¿ØÖÆ
//  239     LCD_writeReg(0x0030,0x0101);  
        MOVW     R1,#+257
        MOVS     R0,#+48
        BL       LCD_writeReg
//  240     LCD_writeReg(0x0031,0x0101);  
        MOVW     R1,#+257
        MOVS     R0,#+49
        BL       LCD_writeReg
//  241     LCD_writeReg(0x0032,0x0101);  
        MOVW     R1,#+257
        MOVS     R0,#+50
        BL       LCD_writeReg
//  242     LCD_writeReg(0x0033,0x0101);  
        MOVW     R1,#+257
        MOVS     R0,#+51
        BL       LCD_writeReg
//  243     LCD_writeReg(0x0034,0x0101);  
        MOVW     R1,#+257
        MOVS     R0,#+52
        BL       LCD_writeReg
//  244     LCD_writeReg(0x0035,0x0101);  
        MOVW     R1,#+257
        MOVS     R0,#+53
        BL       LCD_writeReg
//  245     LCD_writeReg(0x0036,0x0101);  
        MOVW     R1,#+257
        MOVS     R0,#+54
        BL       LCD_writeReg
//  246     LCD_writeReg(0x0037,0x0101);  
        MOVW     R1,#+257
        MOVS     R0,#+55
        BL       LCD_writeReg
//  247     LCD_writeReg(0x003A,0x0101);  
        MOVW     R1,#+257
        MOVS     R0,#+58
        BL       LCD_writeReg
//  248     LCD_writeReg(0x003B,0x0101);
        MOVW     R1,#+257
        MOVS     R0,#+59
        BL       LCD_writeReg
//  249 
//  250     return 0;
        MOVS     R0,#+0
??LCD_Init_2:
        POP      {R1,R4,R5,PC}    ;; return
//  251 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     0x4004c000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DC32     0x4004c004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_2:
        DC32     0x4004c008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_3:
        DC32     0x4004c00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_4:
        DC32     0x4004c010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_5:
        DC32     0x4004c014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_6:
        DC32     0x4004c018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_7:
        DC32     0x4004c01c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_8:
        DC32     0x4004c020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_9:
        DC32     0x4004c024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_10:
        DC32     0x4004c028

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_11:
        DC32     0x4004c02c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_12:
        DC32     0x4004c030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_13:
        DC32     0x4004c034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_14:
        DC32     0x4004c038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_15:
        DC32     0x4004c03c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_16:
        DC32     0x400ff0d4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_17:
        DC32     0x4004d060

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_18:
        DC32     0x4004d064

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_19:
        DC32     0x4004d068

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_20:
        DC32     0x4004d06c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_21:
        DC32     0x4004d070

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_22:
        DC32     0x400ff114

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_23:
        DC32     0x400ff100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_24:
        DC32     0x400ff0c0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_25:
        DC32     0x400ff0d0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_26:
        DC32     0x40048038
//  252 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  253 void LCD_SetCursor( uint16 X, uint16 Y ) // ÉèÖÃÆðÊ¼µã
//  254 {
LCD_SetCursor:
        PUSH     {R4,LR}
        MOVS     R4,R1
//  255     // ºáÆÁ
//  256     LCD_writeReg(0x004f, X); 
        MOVS     R1,R0
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+79
        BL       LCD_writeReg
//  257     LCD_writeReg(0x004e, Y);
        MOVS     R1,R4
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+78
        BL       LCD_writeReg
//  258     
//  259 }
        POP      {R4,PC}          ;; return
//  260 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  261 void LCD_Reversal( uint16 Reg_DriverOutPut , uint8 isUpDownRev , uint8 isLeftRev ) // ÉÏÏÂ·´×ª(³¤µÄ¶¨ÒåÎªÉÏÏÂ) // ×óÓÒ·´×ª
//  262 {
LCD_Reversal:
        PUSH     {R7,LR}
//  263     {// SSD1289 //
//  264         if(1 == isUpDownRev) // ¸Ä±äTB
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+1
        BNE.N    ??LCD_Reversal_0
//  265         {__Pin_Set_(Reg_DriverOutPut,9,1);}
        ORRS     R0,R0,#0x200
        B.N      ??LCD_Reversal_1
//  266         else{__Pin_Set_(Reg_DriverOutPut,9,0);}
??LCD_Reversal_0:
        MOVW     R1,#+65023
        ANDS     R0,R1,R0
//  267         if(1 == isLeftRev) // ¸Ä±äRL
??LCD_Reversal_1:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+1
        BNE.N    ??LCD_Reversal_2
//  268         {__Pin_Set_(Reg_DriverOutPut,14,1);}
        ORRS     R0,R0,#0x4000
        B.N      ??LCD_Reversal_3
//  269         else{__Pin_Set_(Reg_DriverOutPut,14,0);}
??LCD_Reversal_2:
        MOVW     R1,#+49151
        ANDS     R0,R1,R0
//  270         LCD_writeReg(R01_DriverOutC,Reg_DriverOutPut);
??LCD_Reversal_3:
        MOVS     R1,R0
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+1
        BL       LCD_writeReg
//  271     }
//  272 }
        POP      {R0,PC}          ;; return
//  273 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  274 void LCD_SetPath( uint8 Path ) // ÉèÖÃ·½Ïò // ÉÏÏÂx ×óÓÒy
//  275 {
LCD_SetPath:
        PUSH     {R7,LR}
//  276     switch( Path )
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??LCD_SetPath_0
        CMP      R0,#+2
        BEQ.N    ??LCD_SetPath_1
        BCC.N    ??LCD_SetPath_2
        CMP      R0,#+4
        BEQ.N    ??LCD_SetPath_3
        BCC.N    ??LCD_SetPath_4
        CMP      R0,#+6
        BEQ.N    ??LCD_SetPath_5
        BCC.N    ??LCD_SetPath_6
        CMP      R0,#+7
        BEQ.N    ??LCD_SetPath_7
        B.N      ??LCD_SetPath_8
//  277     {
//  278         case 0:LCD_writeReg(R11_EntryMode,0x6010); // ÓÒÉÏ
??LCD_SetPath_0:
        MOVW     R1,#+24592
        MOVS     R0,#+17
        BL       LCD_writeReg
//  279         break;
        B.N      ??LCD_SetPath_8
//  280         case 1:LCD_writeReg(R11_EntryMode,0x6030); // ÓÒÏÂ
??LCD_SetPath_2:
        MOVW     R1,#+24624
        MOVS     R0,#+17
        BL       LCD_writeReg
//  281         break;
        B.N      ??LCD_SetPath_8
//  282         case 2:LCD_writeReg(R11_EntryMode,0x6000); // ×óÉÏ
??LCD_SetPath_1:
        MOV      R1,#+24576
        MOVS     R0,#+17
        BL       LCD_writeReg
//  283         break;
        B.N      ??LCD_SetPath_8
//  284         case 3:LCD_writeReg(R11_EntryMode,0x6020); // ×óÏÂ
??LCD_SetPath_4:
        MOVW     R1,#+24608
        MOVS     R0,#+17
        BL       LCD_writeReg
//  285         break;
        B.N      ??LCD_SetPath_8
//  286         case 4:LCD_writeReg(R11_EntryMode,0x6038); // ÏÂÓÒ
??LCD_SetPath_3:
        MOVW     R1,#+24632
        MOVS     R0,#+17
        BL       LCD_writeReg
//  287         break;
        B.N      ??LCD_SetPath_8
//  288         case 5:LCD_writeReg(R11_EntryMode,0x6028); // ÏÂ×ó
??LCD_SetPath_6:
        MOVW     R1,#+24616
        MOVS     R0,#+17
        BL       LCD_writeReg
//  289         break;
        B.N      ??LCD_SetPath_8
//  290         case 6:LCD_writeReg(R11_EntryMode,0x6018); // ÉÏÓÒ
??LCD_SetPath_5:
        MOVW     R1,#+24600
        MOVS     R0,#+17
        BL       LCD_writeReg
//  291         break;
        B.N      ??LCD_SetPath_8
//  292         case 7:LCD_writeReg(R11_EntryMode,0x6008); // ÉÏ×ó
??LCD_SetPath_7:
        MOVW     R1,#+24584
        MOVS     R0,#+17
        BL       LCD_writeReg
//  293         break;
//  294     }
//  295 }
??LCD_SetPath_8:
        POP      {R0,PC}          ;; return
//  296 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  297 void LCD_SetPoint(uint16 Xpos,uint16 Ypos,uint16 Color)
//  298 {
LCD_SetPoint:
        PUSH     {R4,LR}
        MOVS     R4,R2
//  299     LCD_SetCursor(Xpos,Ypos);
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_SetCursor
//  300     LCD_writeReg(DRAWPOINT,Color);
        MOVS     R1,R4
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+34
        BL       LCD_writeReg
//  301 }
        POP      {R4,PC}          ;; return
//  302 
//  303 // ´¹Ö±»òË®Æ½»­Ïß

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  304 void LCD_SetLine(uint16 Xgaia,uint16 Ygaia,uint16 Length,uint16 Color)
//  305 {
LCD_SetLine:
        PUSH     {R3-R5,LR}
        MOVS     R4,R2
        MOVS     R5,R3
//  306     LCD_SetCursor(Xgaia,Ygaia);
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_SetCursor
        B.N      ??LCD_SetLine_0
//  307     while(Length > 0)
//  308     {
//  309         LCD_writeReg( DRAWPOINT , Color );
??LCD_SetLine_1:
        MOVS     R1,R5
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+34
        BL       LCD_writeReg
//  310         Length --;
        SUBS     R4,R4,#+1
//  311     }
??LCD_SetLine_0:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+0
        BNE.N    ??LCD_SetLine_1
//  312 }
        POP      {R0,R4,R5,PC}    ;; return
//  313 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  314 void LCD_SetSquare(uint16 Xgaia,uint16 Ygaia,uint16 Width,uint16 Length,uint16 Color)
//  315 {
LCD_SetSquare:
        PUSH     {R3-R7,LR}
        MOVS     R5,R2
        MOVS     R6,R3
//  316     uint16 tempForLoop = 0;
        MOVS     R7,#+0
//  317     LCD_SetCursor(Xgaia,Ygaia); // ÉèÖÃ»ù±¾µã
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_SetCursor
//  318     LCD_SetPath(4); // ÏÂÓÒ // ÑØ×ÅxÐÐ×ß xÎª¿í
        MOVS     R0,#+4
        BL       LCD_SetPath
//  319     tempForLoop = Width;
        MOVS     R7,R5
        LDR      R4,[SP, #+24]
        B.N      ??LCD_SetSquare_0
//  320     while(tempForLoop--){LCD_writeReg(DRAWPOINT,Color);}
??LCD_SetSquare_1:
        MOVS     R1,R4
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+34
        BL       LCD_writeReg
??LCD_SetSquare_0:
        MOVS     R0,R7
        SUBS     R7,R0,#+1
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+0
        BNE.N    ??LCD_SetSquare_1
//  321     LCD_SetPath(1); // ÓÒÏÂ // ÑØ×ÅyÐÐ×ß yÎª³¤
        MOVS     R0,#+1
        BL       LCD_SetPath
//  322     tempForLoop = Length;
        MOVS     R7,R6
        B.N      ??LCD_SetSquare_2
//  323     while(tempForLoop--){LCD_writeReg(DRAWPOINT,Color);}
??LCD_SetSquare_3:
        MOVS     R1,R4
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+34
        BL       LCD_writeReg
??LCD_SetSquare_2:
        MOVS     R0,R7
        SUBS     R7,R0,#+1
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+0
        BNE.N    ??LCD_SetSquare_3
//  324     LCD_SetPath(7); // ÉÏ×ó // ÑØ×ÅxÐÐ×ß xÎª¿í
        MOVS     R0,#+7
        BL       LCD_SetPath
//  325     tempForLoop = Width;
        MOVS     R7,R5
        B.N      ??LCD_SetSquare_4
//  326     while(tempForLoop--){LCD_writeReg(DRAWPOINT,Color);}
??LCD_SetSquare_5:
        MOVS     R1,R4
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+34
        BL       LCD_writeReg
??LCD_SetSquare_4:
        MOVS     R0,R7
        SUBS     R7,R0,#+1
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+0
        BNE.N    ??LCD_SetSquare_5
//  327     LCD_SetPath(2); // ×óÉÏ // ÑØ×ÅyÐÐ×ß yÎª³¤
        MOVS     R0,#+2
        BL       LCD_SetPath
//  328     tempForLoop = Length;
        MOVS     R7,R6
        B.N      ??LCD_SetSquare_6
//  329     while(tempForLoop--){LCD_writeReg(DRAWPOINT,Color);}
??LCD_SetSquare_7:
        MOVS     R1,R4
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+34
        BL       LCD_writeReg
??LCD_SetSquare_6:
        MOVS     R0,R7
        SUBS     R7,R0,#+1
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+0
        BNE.N    ??LCD_SetSquare_7
//  330 }
        POP      {R0,R4-R7,PC}    ;; return
//  331 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  332 void LCD_SetArrow(uint16 Xgaia,uint16 Ygaia,uint8 anglePos,uint16 Color)
//  333 {
LCD_SetArrow:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R3
//  334     switch( anglePos ) // ËÄ¸ö½Ç¶È·½Ïò
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BEQ.N    ??LCD_SetArrow_0
        CMP      R2,#+2
        BEQ.N    ??LCD_SetArrow_1
        BCC.N    ??LCD_SetArrow_2
        CMP      R2,#+3
        BEQ.N    ??LCD_SetArrow_3
        B.N      ??LCD_SetArrow_4
//  335     {
//  336         case 0:LCD_SetPoint(Xgaia-1,Ygaia-1,Color);
??LCD_SetArrow_0:
        MOVS     R2,R6
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        SUBS     R1,R5,#+1
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        SUBS     R0,R4,#+1
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_SetPoint
//  337                LCD_SetPoint(Xgaia-2,Ygaia-2,Color);
        MOVS     R2,R6
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        SUBS     R1,R5,#+2
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        SUBS     R0,R4,#+2
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_SetPoint
//  338                LCD_SetPoint(Xgaia-3,Ygaia-3,Color);
        MOVS     R2,R6
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        SUBS     R1,R5,#+3
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        SUBS     R0,R4,#+3
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_SetPoint
//  339                LCD_SetPoint(Xgaia-4,Ygaia-4,Color);
        MOVS     R2,R6
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        SUBS     R1,R5,#+4
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        SUBS     R0,R4,#+4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_SetPoint
//  340               // LCD_SetPoint(Xgaia-5,Ygaia-5,Color);
//  341         break;
        B.N      ??LCD_SetArrow_4
//  342         case 1:LCD_SetPoint(Xgaia-1,Ygaia+1,Color);
??LCD_SetArrow_2:
        MOVS     R2,R6
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        ADDS     R1,R5,#+1
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        SUBS     R0,R4,#+1
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_SetPoint
//  343                LCD_SetPoint(Xgaia-2,Ygaia+2,Color);
        MOVS     R2,R6
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        ADDS     R1,R5,#+2
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        SUBS     R0,R4,#+2
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_SetPoint
//  344                LCD_SetPoint(Xgaia-3,Ygaia+3,Color);
        MOVS     R2,R6
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        ADDS     R1,R5,#+3
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        SUBS     R0,R4,#+3
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_SetPoint
//  345                LCD_SetPoint(Xgaia-4,Ygaia+4,Color);
        MOVS     R2,R6
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        ADDS     R1,R5,#+4
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        SUBS     R0,R4,#+4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_SetPoint
//  346               // LCD_SetPoint(Xgaia-5,Ygaia+5,Color);
//  347         break;
        B.N      ??LCD_SetArrow_4
//  348         case 2:LCD_SetPoint(Xgaia+1,Ygaia-1,Color);
??LCD_SetArrow_1:
        MOVS     R2,R6
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        SUBS     R1,R5,#+1
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        ADDS     R0,R4,#+1
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_SetPoint
//  349                LCD_SetPoint(Xgaia+2,Ygaia-2,Color);
        MOVS     R2,R6
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        SUBS     R1,R5,#+2
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        ADDS     R0,R4,#+2
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_SetPoint
//  350                LCD_SetPoint(Xgaia+3,Ygaia-3,Color);
        MOVS     R2,R6
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        SUBS     R1,R5,#+3
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        ADDS     R0,R4,#+3
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_SetPoint
//  351                LCD_SetPoint(Xgaia+4,Ygaia-4,Color);
        MOVS     R2,R6
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        SUBS     R1,R5,#+4
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        ADDS     R0,R4,#+4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_SetPoint
//  352               // LCD_SetPoint(Xgaia+5,Ygaia-5,Color);
//  353         break;
        B.N      ??LCD_SetArrow_4
//  354         case 3:LCD_SetPoint(Xgaia+1,Ygaia+1,Color);
??LCD_SetArrow_3:
        MOVS     R2,R6
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        ADDS     R1,R5,#+1
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        ADDS     R0,R4,#+1
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_SetPoint
//  355                LCD_SetPoint(Xgaia+2,Ygaia+2,Color);
        MOVS     R2,R6
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        ADDS     R1,R5,#+2
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        ADDS     R0,R4,#+2
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_SetPoint
//  356                LCD_SetPoint(Xgaia+3,Ygaia+3,Color);
        MOVS     R2,R6
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        ADDS     R1,R5,#+3
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        ADDS     R0,R4,#+3
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_SetPoint
//  357                LCD_SetPoint(Xgaia+4,Ygaia+4,Color);
        MOVS     R2,R6
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        ADDS     R1,R5,#+4
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        ADDS     R0,R4,#+4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_SetPoint
//  358               // LCD_SetPoint(Xgaia+5,Ygaia+5,Color);
//  359         break;
//  360     }
//  361 }
??LCD_SetArrow_4:
        POP      {R4-R6,PC}       ;; return
//  362 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  363 void LCD_Clear(uint16 Color)
//  364 {
LCD_Clear:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//  365     uint32 index=0;
        MOVS     R5,#+0
//  366     LCD_SetCursor(0,0);
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       LCD_SetCursor
//  367     LCD_writeIndex(DRAWPOINT);
        MOVS     R0,#+34
        BL       LCD_writeIndex
//  368     for( index = 0; index < 76800; index++ )
        MOVS     R0,#+0
        MOVS     R5,R0
        B.N      ??LCD_Clear_0
//  369     {
//  370         LCD_writeData(Color);
??LCD_Clear_1:
        MOVS     R0,R4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_writeData
//  371     }
        ADDS     R5,R5,#+1
??LCD_Clear_0:
        CMP      R5,#+76800
        BCC.N    ??LCD_Clear_1
//  372 }
        POP      {R0,R4,R5,PC}    ;; return

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
// 1 860 bytes in section .text
// 
// 1 860 bytes of CODE memory
//
//Errors: none
//Warnings: none
