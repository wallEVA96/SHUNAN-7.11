///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     29/Nov/2014  20:45:45 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\MK60FX512VLQ15 /
//                    \ShunAn_Panel\OLED.c                                    /
//    Command line =  D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\MK60FX512VLQ15 /
//                    \ShunAn_Panel\OLED.c -D IAR -D TWR_K60F120M -lCN        /
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
//                    \FLASH_1MB\List\OLED.s                                  /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN C6x8
        EXTERN __aeabi_cdcmple
        EXTERN __aeabi_cdrcmple
        EXTERN __aeabi_cfcmpeq
        EXTERN __aeabi_d2f
        EXTERN __aeabi_d2iz
        EXTERN __aeabi_dsub
        EXTERN __aeabi_f2iz
        EXTERN __aeabi_fdiv
        EXTERN __aeabi_fmul
        EXTERN __aeabi_i2d
        EXTERN __aeabi_memclr4
        EXTERN __aeabi_memcpy4
        EXTERN __aeabi_ui2f

        PUBLIC OLED_PutPixel
        PUBLIC OLED_Set_Pos
        PUBLIC OLED_WrCmd
        PUBLIC OLED_WrDat
        PUBLIC OLED_showCCD
        PUBLIC b_OLED_6x8Num
        PUBLIC v_OLED_6x8Str
        PUBLIC v_OLED_Fill
        PUBLIC v_OLED_Init
        PUBLIC v_OLED_showU8

// D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\MK60FX512VLQ15\ShunAn_Panel\OLED.c
//    1 #include "arm_cm4.h"
//    2 #include "MK60F15.h"
//    3 #include "ShunAn_Lib.h"
//    4 #include "start_ShunAn.h"
//    5 #include "BlessedAlien.h"
//    6 #include "OLED.h"
//    7 
//    8 #define XLevelL		0x00
//    9 #define XLevelH		0x10
//   10 #define XLevel		((XLevelH&0x0F)*16+XLevelL)
//   11 #define Max_Column	128
//   12 #define Max_Row		64
//   13 #define	Brightness	0xCF 
//   14 
//   15 #define X_WIDTH 128
//   16 #define Y_WIDTH 64
//   17 //======================================
//   18 // MK60FX512VLQ15 -- Ver 2.0
//   19 // DC -- C11
//   20 #define DC_Port                 PTC_BASE_PTR
//   21 #define DC_Pin                  11
//   22 #define DC_Init                 (DC_Port->PDDR |= (1<<DC_Pin))
//   23 #define DC_turn_1               (DC_Port->PDOR |= (1<<DC_Pin))
//   24 #define DC_turn_0               (DC_Port->PDOR &=~(1<<DC_Pin))
//   25 // RST -- C15
//   26 #define RST_Port                PTC_BASE_PTR
//   27 #define RST_Pin                 15
//   28 #define RST_Init                (RST_Port->PDDR |= (1<<RST_Pin))
//   29 #define RST_turn_1              (RST_Port->PDOR |= (1<<RST_Pin))
//   30 #define RST_turn_0              (RST_Port->PDOR &=~(1<<RST_Pin))
//   31 // SDA -- C18
//   32 #define DATA_Port               PTC_BASE_PTR
//   33 #define DATA_Pin                18
//   34 #define DATA_Init               (DATA_Port->PDDR |= (1<<DATA_Pin))
//   35 #define DATA_turn_1             (DATA_Port->PDOR |= (1<<DATA_Pin))
//   36 #define DATA_turn_0             (DATA_Port->PDOR &=~(1<<DATA_Pin))
//   37 // SCL -- D1
//   38 #define CLK_Port                PTD_BASE_PTR
//   39 #define CLK_Pin                 1
//   40 #define CLK_Init                (CLK_Port->PDDR |= (1<<CLK_Pin))
//   41 #define CLK_turn_1              (CLK_Port->PDOR |= (1<<CLK_Pin))
//   42 #define CLK_turn_0              (CLK_Port->PDOR &=~(1<<CLK_Pin))
//   43 //======================================

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   44 void OLED_WrDat(uint8 data)
//   45 {
//   46   uint8 i=8;
OLED_WrDat:
        MOVS     R1,#+8
//   47   DC_turn_1;; // DC=0//DC=1
        LDR.W    R2,??DataTable6  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x800
        LDR.W    R3,??DataTable6  ;; 0x400ff080
        STR      R2,[R3, #+0]
//   48   CLK_turn_0;;//CLK/D0=0
        LDR.W    R2,??DataTable6_1  ;; 0x400ff0c0
        LDR      R2,[R2, #+0]
        BICS     R2,R2,#0x2
        LDR.W    R3,??DataTable6_1  ;; 0x400ff0c0
        STR      R2,[R3, #+0]
        B.N      ??OLED_WrDat_0
//   49   while(i--)
//   50   {
//   51     if(data&0x80){DATA_turn_1;}//SDA/D1=1
//   52     else{DATA_turn_0;}//SDA/D1=0
??OLED_WrDat_1:
        LDR.W    R2,??DataTable6  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        BICS     R2,R2,#0x40000
        LDR.W    R3,??DataTable6  ;; 0x400ff080
        STR      R2,[R3, #+0]
//   53     CLK_turn_1;// SCL//CLK/D0=1
??OLED_WrDat_2:
        LDR.W    R2,??DataTable6_1  ;; 0x400ff0c0
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x2
        LDR.W    R3,??DataTable6_1  ;; 0x400ff0c0
        STR      R2,[R3, #+0]
//   54     CLK_turn_0;// SCL//CLK/D0=0    
        LDR.W    R2,??DataTable6_1  ;; 0x400ff0c0
        LDR      R2,[R2, #+0]
        BICS     R2,R2,#0x2
        LDR.W    R3,??DataTable6_1  ;; 0x400ff0c0
        STR      R2,[R3, #+0]
//   55     data<<=1;    
        LSLS     R0,R0,#+1
??OLED_WrDat_0:
        MOVS     R2,R1
        SUBS     R1,R2,#+1
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BEQ.N    ??OLED_WrDat_3
        LSLS     R2,R0,#+24
        BPL.N    ??OLED_WrDat_1
        LDR.W    R2,??DataTable6  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x40000
        LDR.W    R3,??DataTable6  ;; 0x400ff080
        STR      R2,[R3, #+0]
        B.N      ??OLED_WrDat_2
//   56   }
//   57 }
??OLED_WrDat_3:
        BX       LR               ;; return
//   58 
//   59 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   60 void OLED_WrCmd(uint8 cmd)
//   61 {
//   62   uint8 i=8;
OLED_WrCmd:
        MOVS     R1,#+8
//   63   DC_turn_0;
        LDR.W    R2,??DataTable6  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        BICS     R2,R2,#0x800
        LDR.W    R3,??DataTable6  ;; 0x400ff080
        STR      R2,[R3, #+0]
//   64   CLK_turn_0;
        LDR.W    R2,??DataTable6_1  ;; 0x400ff0c0
        LDR      R2,[R2, #+0]
        BICS     R2,R2,#0x2
        LDR.W    R3,??DataTable6_1  ;; 0x400ff0c0
        STR      R2,[R3, #+0]
        B.N      ??OLED_WrCmd_0
//   65   while(i--)
//   66   {
//   67     if(cmd&0x80){DATA_turn_1;}//SDA/D1=1
//   68     else{DATA_turn_0;}//SDA/D1=0
??OLED_WrCmd_1:
        LDR.W    R2,??DataTable6  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        BICS     R2,R2,#0x40000
        LDR.W    R3,??DataTable6  ;; 0x400ff080
        STR      R2,[R3, #+0]
//   69     CLK_turn_1;// SCL//CLK/D0=1
??OLED_WrCmd_2:
        LDR.W    R2,??DataTable6_1  ;; 0x400ff0c0
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x2
        LDR.W    R3,??DataTable6_1  ;; 0x400ff0c0
        STR      R2,[R3, #+0]
//   70     CLK_turn_0;// SCL//CLK/D0=0   
        LDR.W    R2,??DataTable6_1  ;; 0x400ff0c0
        LDR      R2,[R2, #+0]
        BICS     R2,R2,#0x2
        LDR.W    R3,??DataTable6_1  ;; 0x400ff0c0
        STR      R2,[R3, #+0]
//   71     cmd<<=1;  
        LSLS     R0,R0,#+1
??OLED_WrCmd_0:
        MOVS     R2,R1
        SUBS     R1,R2,#+1
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BEQ.N    ??OLED_WrCmd_3
        LSLS     R2,R0,#+24
        BPL.N    ??OLED_WrCmd_1
        LDR.W    R2,??DataTable6  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x40000
        LDR.W    R3,??DataTable6  ;; 0x400ff080
        STR      R2,[R3, #+0]
        B.N      ??OLED_WrCmd_2
//   72   }
//   73 
//   74 }
??OLED_WrCmd_3:
        BX       LR               ;; return
//   75 
//   76 //============================================================================//
//   77 // º¯ÊýÃû³Æ£ºOLED_Set_Pos
//   78 // º¯Êý¹¦ÄÜ£ºÈ·¶¨Î»ÖÃ
//   79 // º¯ÊýÊäÈë²ÎÊý·¶Î§ x : 0 - 127 ; y : 0 - 7
//   80 //============================================================================//

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   81 void OLED_Set_Pos(uint8 x, uint8 y)
//   82 { 
OLED_Set_Pos:
        PUSH     {R4,LR}
        MOVS     R4,R0
//   83     /*
//   84      ? Set the page start address of the target display location by command B0h to B7h.
//   85      ? Set the lower start column address of pointer by command 00h~0Fh.
//   86      ? Set the upper start column address of pointer by command 10h~1Fh.
//   87      */
//   88     OLED_WrCmd(0xb0+y);                         // ÉèÖÃÄ¿±êÒ³µØÖ·£¨yÖá£©
        SUBS     R0,R1,#+80
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WrCmd
//   89     OLED_WrCmd(((x&0xf0)>>4)|0x10);             // High
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSRS     R0,R4,#+4
        ORRS     R0,R0,#0x10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WrCmd
//   90     OLED_WrCmd(x&0x0f);                         // Low
        ANDS     R0,R4,#0xF
        BL       OLED_WrCmd
//   91 } 
        POP      {R4,PC}          ;; return
//   92 
//   93 /*
//   94  * ÒÔÏÂÎª¹¦ÄÜº¯Êý
//   95  *
//   96  *
//   97  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   98 void v_OLED_Fill(uint8 bmp_data)
//   99 {
v_OLED_Fill:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
//  100   uint8 y,x;	
//  101   for(y=0;y<8;y++)
        MOVS     R5,#+0
        B.N      ??v_OLED_Fill_0
//  102   {
//  103     OLED_WrCmd(0xb0+y);
//  104     OLED_WrCmd(0x01);
//  105     OLED_WrCmd(0x10);
//  106     for(x=0;x<X_WIDTH;x++)
//  107       OLED_WrDat(bmp_data);
??v_OLED_Fill_1:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WrDat
        ADDS     R6,R6,#+1
??v_OLED_Fill_2:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+128
        BLT.N    ??v_OLED_Fill_1
        ADDS     R5,R5,#+1
??v_OLED_Fill_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+8
        BGE.N    ??v_OLED_Fill_3
        SUBS     R0,R5,#+80
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WrCmd
        MOVS     R0,#+1
        BL       OLED_WrCmd
        MOVS     R0,#+16
        BL       OLED_WrCmd
        MOVS     R6,#+0
        B.N      ??v_OLED_Fill_2
//  108   }
//  109 }
??v_OLED_Fill_3:
        POP      {R4-R6,PC}       ;; return
//  110 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  111 void v_OLED_Init(void)        
//  112 {
v_OLED_Init:
        PUSH     {R7,LR}
//  113     SIM_SCGC5 |= (SIM_SCGC5_PORTD_MASK|SIM_SCGC5_PORTC_MASK);
        LDR.W    R0,??DataTable6_2  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1800
        LDR.W    R1,??DataTable6_2  ;; 0x40048038
        STR      R0,[R1, #+0]
//  114     PORTC_PCR11  |= 0x00000100u;
        LDR.W    R0,??DataTable6_3  ;; 0x4004b02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.W    R1,??DataTable6_3  ;; 0x4004b02c
        STR      R0,[R1, #+0]
//  115     PORTC_PCR15  |= 0x00000100u;
        LDR.W    R0,??DataTable6_4  ;; 0x4004b03c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.W    R1,??DataTable6_4  ;; 0x4004b03c
        STR      R0,[R1, #+0]
//  116     PORTC_PCR18  |= 0x00000100u;
        LDR.W    R0,??DataTable6_5  ;; 0x4004b048
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.W    R1,??DataTable6_5  ;; 0x4004b048
        STR      R0,[R1, #+0]
//  117     PORTD_PCR1   |= 0x00000100u;
        LDR.W    R0,??DataTable6_6  ;; 0x4004c004
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.W    R1,??DataTable6_6  ;; 0x4004c004
        STR      R0,[R1, #+0]
//  118     DC_Init;
        LDR.W    R0,??DataTable6_7  ;; 0x400ff094
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x800
        LDR.W    R1,??DataTable6_7  ;; 0x400ff094
        STR      R0,[R1, #+0]
//  119     CLK_Init;
        LDR.W    R0,??DataTable6_8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.W    R1,??DataTable6_8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  120     DATA_Init;
        LDR.W    R0,??DataTable6_7  ;; 0x400ff094
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40000
        LDR.W    R1,??DataTable6_7  ;; 0x400ff094
        STR      R0,[R1, #+0]
//  121     RST_Init;
        LDR.W    R0,??DataTable6_7  ;; 0x400ff094
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8000
        LDR.W    R1,??DataTable6_7  ;; 0x400ff094
        STR      R0,[R1, #+0]
//  122     // ÅäÖÃÐÅÏ¢
//  123     CLK_turn_1;
        LDR.W    R0,??DataTable6_1  ;; 0x400ff0c0
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.W    R1,??DataTable6_1  ;; 0x400ff0c0
        STR      R0,[R1, #+0]
//  124     DATA_turn_1;
        LDR.W    R0,??DataTable6  ;; 0x400ff080
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40000
        LDR.W    R1,??DataTable6  ;; 0x400ff080
        STR      R0,[R1, #+0]
//  125     RST_turn_0;
        LDR.W    R0,??DataTable6  ;; 0x400ff080
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x8000
        LDR.W    R1,??DataTable6  ;; 0x400ff080
        STR      R0,[R1, #+0]
//  126     DC_turn_1;
        LDR.W    R0,??DataTable6  ;; 0x400ff080
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x800
        LDR.W    R1,??DataTable6  ;; 0x400ff080
        STR      R0,[R1, #+0]
//  127     
//  128     for(unsigned short int i = 0;i<1000;i++);//ÑÓÊ±
        MOVS     R0,#+0
        B.N      ??v_OLED_Init_0
??v_OLED_Init_1:
        ADDS     R0,R0,#+1
??v_OLED_Init_0:
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+1000
        BLT.N    ??v_OLED_Init_1
//  129     //DELAY_MS(50);
//  130     RST_turn_1;  
        LDR.W    R0,??DataTable6  ;; 0x400ff080
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8000
        LDR.W    R1,??DataTable6  ;; 0x400ff080
        STR      R0,[R1, #+0]
//  131 
//  132     OLED_WrCmd(0xae);//--turn off oled panel
        MOVS     R0,#+174
        BL       OLED_WrCmd
//  133     OLED_WrCmd(0x00);//---set low column address
        MOVS     R0,#+0
        BL       OLED_WrCmd
//  134     OLED_WrCmd(0x10);//---set high column address
        MOVS     R0,#+16
        BL       OLED_WrCmd
//  135     OLED_WrCmd(0x40);//--set start line address  Set Mapping RAM Display Start Line (0x00~0x3F)
        MOVS     R0,#+64
        BL       OLED_WrCmd
//  136     OLED_WrCmd(0x81);//--set contrast control register
        MOVS     R0,#+129
        BL       OLED_WrCmd
//  137     OLED_WrCmd(0xcf); // Set SEG Output Current Brightness
        MOVS     R0,#+207
        BL       OLED_WrCmd
//  138     OLED_WrCmd(0xa1);//--Set SEG/Column Mapping     0xa0×óÓÒ·´ÖÃ 0xa1Õý³£
        MOVS     R0,#+161
        BL       OLED_WrCmd
//  139     OLED_WrCmd(0xc8);//Set COM/Row Scan Direction   0xc0ÉÏÏÂ·´ÖÃ 0xc8Õý³£
        MOVS     R0,#+200
        BL       OLED_WrCmd
//  140     OLED_WrCmd(0xa6);//--set normal display
        MOVS     R0,#+166
        BL       OLED_WrCmd
//  141     OLED_WrCmd(0xa8);//--set multiplex ratio(1 to 64)
        MOVS     R0,#+168
        BL       OLED_WrCmd
//  142     OLED_WrCmd(0x3f);//--1/64 duty
        MOVS     R0,#+63
        BL       OLED_WrCmd
//  143     OLED_WrCmd(0xd3);//-set display offset	Shift Mapping RAM Counter (0x00~0x3F)
        MOVS     R0,#+211
        BL       OLED_WrCmd
//  144     OLED_WrCmd(0x00);//-not offset
        MOVS     R0,#+0
        BL       OLED_WrCmd
//  145     OLED_WrCmd(0xd5);//--set display clock divide ratio/oscillator frequency
        MOVS     R0,#+213
        BL       OLED_WrCmd
//  146     OLED_WrCmd(0x80);//--set divide ratio, Set Clock as 100 Frames/Sec
        MOVS     R0,#+128
        BL       OLED_WrCmd
//  147     OLED_WrCmd(0xd9);//--set pre-charge period
        MOVS     R0,#+217
        BL       OLED_WrCmd
//  148     OLED_WrCmd(0xf1);//Set Pre-Charge as 15 Clocks & Discharge as 1 Clock
        MOVS     R0,#+241
        BL       OLED_WrCmd
//  149     OLED_WrCmd(0xda);//--set com pins hardware configuration
        MOVS     R0,#+218
        BL       OLED_WrCmd
//  150     OLED_WrCmd(0x12);
        MOVS     R0,#+18
        BL       OLED_WrCmd
//  151     OLED_WrCmd(0xdb);//--set vcomh
        MOVS     R0,#+219
        BL       OLED_WrCmd
//  152     OLED_WrCmd(0x40);//Set VCOM Deselect Level
        MOVS     R0,#+64
        BL       OLED_WrCmd
//  153     OLED_WrCmd(0x20);//-Set Page Addressing Mode (0x00/0x01/0x02)
        MOVS     R0,#+32
        BL       OLED_WrCmd
//  154     OLED_WrCmd(0x02);//
        MOVS     R0,#+2
        BL       OLED_WrCmd
//  155     OLED_WrCmd(0x8d);//--set Charge Pump enable/disable
        MOVS     R0,#+141
        BL       OLED_WrCmd
//  156     OLED_WrCmd(0x14);//--set(0x10) disable
        MOVS     R0,#+20
        BL       OLED_WrCmd
//  157     OLED_WrCmd(0xa4);// Disable Entire Display On (0xa4/0xa5)
        MOVS     R0,#+164
        BL       OLED_WrCmd
//  158     OLED_WrCmd(0xa6);// Disable Inverse Display On (0xa6/a7) 
        MOVS     R0,#+166
        BL       OLED_WrCmd
//  159     OLED_WrCmd(0xaf);//--turn on oled panel
        MOVS     R0,#+175
        BL       OLED_WrCmd
//  160     v_OLED_Fill(0x00);  //³õÊ¼ÇåÆÁ
        MOVS     R0,#+0
        BL       v_OLED_Fill
//  161     OLED_Set_Pos(0,0);  
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED_Set_Pos
//  162 	
//  163 } 
        POP      {R0,PC}          ;; return
//  164 
//  165 //==============================================================
//  166 //º¯ÊýÃû£ºOLED_P6x8Str(uint8 x,uint8 y,uint8 *p)
//  167 //¹¦ÄÜÃèÊö£ºÐ´ÈëÒ»×é±ê×¼ASCII×Ö·û´®
//  168 //²ÎÊý£ºÏÔÊ¾µÄÎ»ÖÃ£¨x,y£©£¬yÎªÒ³·¶Î§0¡«7£¬ÒªÏÔÊ¾µÄ×Ö·û´®
//  169 //·µ»Ø£ºÎÞ
//  170 //==============================================================  

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  171 void v_OLED_6x8Str(uint8 x,uint8 y,uint8 ch[])
//  172 {
v_OLED_6x8Str:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  173     uint8 c=0,i=0,j=0;      
        MOVS     R7,#+0
        MOVS     R8,#+0
        MOVS     R9,#+0
        B.N      ??v_OLED_6x8Str_0
//  174     while (ch[j]!='\0')
//  175     {    
//  176         c =ch[j]-32;
//  177         if(x>126){x=0;y++;} // MOD(126,6) = 0
//  178         OLED_Set_Pos(x,y);    
//  179         for(i=0;i<6;i++){OLED_WrDat(C6x8[c][i]);}
??v_OLED_6x8Str_1:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOVS     R0,#+6
        LDR.W    R1,??DataTable6_9
        MLA      R0,R0,R7,R1
        LDRB     R0,[R8, R0]
        BL       OLED_WrDat
        ADDS     R8,R8,#+1
??v_OLED_6x8Str_2:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+6
        BLT.N    ??v_OLED_6x8Str_1
//  180         x+=6;
        ADDS     R4,R4,#+6
//  181         j++;
        ADDS     R9,R9,#+1
??v_OLED_6x8Str_0:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        LDRB     R0,[R9, R6]
        CMP      R0,#+0
        BEQ.N    ??v_OLED_6x8Str_3
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        LDRB     R0,[R9, R6]
        SUBS     R7,R0,#+32
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+127
        BLT.N    ??v_OLED_6x8Str_4
        MOVS     R4,#+0
        ADDS     R5,R5,#+1
??v_OLED_6x8Str_4:
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_Set_Pos
        MOVS     R8,#+0
        B.N      ??v_OLED_6x8Str_2
//  182     }
//  183 }
??v_OLED_6x8Str_3:
        POP      {R0,R4-R9,PC}    ;; return
//  184 
//  185 //==============================================================
//  186 // º¯ÊýÃû£º void v_OLED_6x8Num(uint8 x, uint8 y,float float_num) 
//  187 // ¹¦ÄÜÃèÊö£ºÏÔÊ¾5Î»Ð¡Êý¡¢ÕûÊý
//  188 // ²ÎÊý£ºÏÔÊ¾µÄÎ»ÖÃ£¨x,y£©£¬xÎªºá×ø±ê0¡«127£¬yÎªÒ³·¶Î§0¡«7£¬ÒªÏÔÊ¾µÄÊý×Ö
//  189 // x => Ò»¿ªÊ¼µÄÎ»ÖÃ
//  190 // y => Ò»¿ªÊ¼µÄÎ»ÖÃ
//  191 // show_scale => ÏÔÊ¾µÄÊý¾Ý³¤¶È£¨Ê®½øÖÆ£©
//  192 //==============================================================
//  193 // 128 / 2 = 64 ; 64 / 6 => 10 => ×î¶à 10 bits
//  194 // 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  195 uint8 b_OLED_6x8Num (uint16 X ,uint16 Y ,uint8 show_scale ,double num)
//  196 {
b_OLED_6x8Num:
        PUSH     {R4-R10,LR}
        SUB      SP,SP,#+32
        MOV      R10,R0
        MOVS     R7,R1
        MOVS     R6,R2
//  197     uint8 ch[] = "-0000000000.000000"; // 10+6+2 = 18 * 6 = 108
        ADD      R0,SP,#+0
        LDR.W    R1,??DataTable6_10
        MOVS     R2,#+19
        BL       __aeabi_memcpy4
//  198                 //0123456789A 6
//  199     uint8 ch_show[] = "          "; // ×Ö·ûÏÔÊ¾ // 1000000000
        ADD      R0,SP,#+20
        LDR.W    R1,??DataTable6_11
        MOVS     R2,#+11
        BL       __aeabi_memcpy4
//  200                          // -0.xxxxxx
//  201     if(show_scale > 10){return 'F';}
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+11
        BLT.N    ??b_OLED_6x8Num_0
        MOVS     R0,#+70
        B.N      ??b_OLED_6x8Num_1
//  202     else if(show_scale < 10){ch_show[show_scale] = '\0';} // ÏÞÖÆÏÔÊ¾³¤¶È
??b_OLED_6x8Num_0:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+10
        BGE.N    ??b_OLED_6x8Num_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADD      R0,SP,#+20
        MOVS     R1,#+0
        STRB     R1,[R6, R0]
//  203     uint8 Gaia_Div = 0;
??b_OLED_6x8Num_2:
        MOVS     R8,#+0
        LDRD     R4,R5,[SP, #+64]
//  204     //========================================================================//
//  205     // ·Ö¸îÖ¸Êý²¿·ÖÓëÐ¡Êý²¿·Ö
//  206     sint32 num_Integer = (sint32)(num);
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_d2iz
        MOV      R9,R0
//  207     if(num >= 0.0){ch[0] = '+';}
        MOVS     R0,R4
        MOVS     R1,R5
        MOVS     R2,#+0
        MOVS     R3,#+0
        BL       __aeabi_cdrcmple
        BHI.N    ??b_OLED_6x8Num_3
        MOVS     R0,#+43
        STRB     R0,[SP, #+0]
        B.N      ??b_OLED_6x8Num_4
//  208     else{ch[0] = '-';}
??b_OLED_6x8Num_3:
        MOVS     R0,#+45
        STRB     R0,[SP, #+0]
//  209     num_Integer = __ABS(num_Integer);
??b_OLED_6x8Num_4:
        CMP      R9,#+0
        BPL.N    ??b_OLED_6x8Num_5
        RSBS     R9,R9,#+0
        B.N      ??b_OLED_6x8Num_6
//  210     // Ö¸Êý²¿·Ö
//  211     if(num_Integer >= 1000000000){Gaia_Div = 9;}else
??b_OLED_6x8Num_5:
??b_OLED_6x8Num_6:
        LDR.W    R0,??DataTable6_12  ;; 0x3b9aca00
        CMP      R9,R0
        BLT.N    ??b_OLED_6x8Num_7
        MOVS     R8,#+9
        B.N      ??b_OLED_6x8Num_8
//  212     if(num_Integer >=  100000000){Gaia_Div = 8;}else
??b_OLED_6x8Num_7:
        LDR.W    R0,??DataTable6_13  ;; 0x5f5e100
        CMP      R9,R0
        BLT.N    ??b_OLED_6x8Num_9
        MOVS     R8,#+8
        B.N      ??b_OLED_6x8Num_8
//  213     if(num_Integer >=   10000000){Gaia_Div = 7;}else
??b_OLED_6x8Num_9:
        LDR.W    R0,??DataTable6_14  ;; 0x989680
        CMP      R9,R0
        BLT.N    ??b_OLED_6x8Num_10
        MOVS     R8,#+7
        B.N      ??b_OLED_6x8Num_8
//  214     if(num_Integer >=    1000000){Gaia_Div = 6;}else
??b_OLED_6x8Num_10:
        LDR.W    R0,??DataTable6_15  ;; 0xf4240
        CMP      R9,R0
        BLT.N    ??b_OLED_6x8Num_11
        MOVS     R8,#+6
        B.N      ??b_OLED_6x8Num_8
//  215     if(num_Integer >=     100000){Gaia_Div = 5;}else
??b_OLED_6x8Num_11:
        LDR.W    R0,??DataTable6_16  ;; 0x186a0
        CMP      R9,R0
        BLT.N    ??b_OLED_6x8Num_12
        MOVS     R8,#+5
        B.N      ??b_OLED_6x8Num_8
//  216     if(num_Integer >=      10000){Gaia_Div = 4;}else
??b_OLED_6x8Num_12:
        MOVW     R0,#+10000
        CMP      R9,R0
        BLT.N    ??b_OLED_6x8Num_13
        MOVS     R8,#+4
        B.N      ??b_OLED_6x8Num_8
//  217     if(num_Integer >=       1000){Gaia_Div = 3;}else
??b_OLED_6x8Num_13:
        CMP      R9,#+1000
        BLT.N    ??b_OLED_6x8Num_14
        MOVS     R8,#+3
        B.N      ??b_OLED_6x8Num_8
//  218     if(num_Integer >=        100){Gaia_Div = 2;}else
??b_OLED_6x8Num_14:
        CMP      R9,#+100
        BLT.N    ??b_OLED_6x8Num_15
        MOVS     R8,#+2
        B.N      ??b_OLED_6x8Num_8
//  219     if(num_Integer >=         10){Gaia_Div = 1;}else // num_Integer >= 0
??b_OLED_6x8Num_15:
        CMP      R9,#+10
        BLT.N    ??b_OLED_6x8Num_16
        MOVS     R8,#+1
        B.N      ??b_OLED_6x8Num_8
//  220                                  {Gaia_Div = 0;}
??b_OLED_6x8Num_16:
        MOVS     R8,#+0
//  221     switch(Gaia_Div)
??b_OLED_6x8Num_8:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BEQ.W    ??b_OLED_6x8Num_17
        CMP      R8,#+2
        BEQ.N    ??b_OLED_6x8Num_18
        BCC.N    ??b_OLED_6x8Num_19
        CMP      R8,#+4
        BEQ.N    ??b_OLED_6x8Num_20
        BCC.N    ??b_OLED_6x8Num_21
        CMP      R8,#+6
        BEQ.N    ??b_OLED_6x8Num_22
        BCC.N    ??b_OLED_6x8Num_23
        CMP      R8,#+8
        BEQ.N    ??b_OLED_6x8Num_24
        BCC.N    ??b_OLED_6x8Num_25
        CMP      R8,#+9
        BNE.N    ??b_OLED_6x8Num_26
//  222     {
//  223         case 9:ch[1] = num_Integer/1000000000 + '0';
??b_OLED_6x8Num_27:
        LDR.W    R0,??DataTable6_12  ;; 0x3b9aca00
        SDIV     R0,R9,R0
        ADDS     R0,R0,#+48
        STRB     R0,[SP, #+1]
//  224          num_Integer = num_Integer%1000000000;
        LDR.W    R0,??DataTable6_12  ;; 0x3b9aca00
        SDIV     R1,R9,R0
        MLS      R9,R0,R1,R9
//  225        // break;
//  226         case 8:ch[2] = num_Integer/100000000 + '0';
??b_OLED_6x8Num_24:
        LDR.W    R0,??DataTable6_13  ;; 0x5f5e100
        SDIV     R0,R9,R0
        ADDS     R0,R0,#+48
        STRB     R0,[SP, #+2]
//  227          num_Integer = num_Integer%100000000;
        LDR.W    R0,??DataTable6_13  ;; 0x5f5e100
        SDIV     R1,R9,R0
        MLS      R9,R0,R1,R9
//  228        // break;
//  229         case 7:ch[3] = num_Integer/10000000 + '0';
??b_OLED_6x8Num_25:
        LDR.W    R0,??DataTable6_14  ;; 0x989680
        SDIV     R0,R9,R0
        ADDS     R0,R0,#+48
        STRB     R0,[SP, #+3]
//  230          num_Integer = num_Integer%10000000;
        LDR.W    R0,??DataTable6_14  ;; 0x989680
        SDIV     R1,R9,R0
        MLS      R9,R0,R1,R9
//  231        // break;
//  232         case 6:ch[4] = num_Integer/1000000 + '0';
??b_OLED_6x8Num_22:
        LDR.W    R0,??DataTable6_15  ;; 0xf4240
        SDIV     R0,R9,R0
        ADDS     R0,R0,#+48
        STRB     R0,[SP, #+4]
//  233          num_Integer = num_Integer%1000000;
        LDR.W    R0,??DataTable6_15  ;; 0xf4240
        SDIV     R1,R9,R0
        MLS      R9,R0,R1,R9
//  234        // break;
//  235         case 5:ch[5] = num_Integer/100000 + '0';
??b_OLED_6x8Num_23:
        LDR.W    R0,??DataTable6_16  ;; 0x186a0
        SDIV     R0,R9,R0
        ADDS     R0,R0,#+48
        STRB     R0,[SP, #+5]
//  236          num_Integer = num_Integer%100000;
        LDR.W    R0,??DataTable6_16  ;; 0x186a0
        SDIV     R1,R9,R0
        MLS      R9,R0,R1,R9
//  237        // break;
//  238         case 4:ch[6] = num_Integer/10000 + '0';
??b_OLED_6x8Num_20:
        MOVW     R0,#+10000
        SDIV     R0,R9,R0
        ADDS     R0,R0,#+48
        STRB     R0,[SP, #+6]
//  239          num_Integer = num_Integer%10000;
        MOVW     R0,#+10000
        SDIV     R1,R9,R0
        MLS      R9,R0,R1,R9
//  240        // break;
//  241         case 3:ch[7] = num_Integer/1000 + '0';
??b_OLED_6x8Num_21:
        MOV      R0,#+1000
        SDIV     R0,R9,R0
        ADDS     R0,R0,#+48
        STRB     R0,[SP, #+7]
//  242          num_Integer = num_Integer%1000;
        MOV      R0,#+1000
        SDIV     R1,R9,R0
        MLS      R9,R0,R1,R9
//  243        // break;
//  244         case 2:ch[8] = num_Integer/100 + '0';
??b_OLED_6x8Num_18:
        MOVS     R0,#+100
        SDIV     R0,R9,R0
        ADDS     R0,R0,#+48
        STRB     R0,[SP, #+8]
//  245          num_Integer = num_Integer%100;
        MOVS     R0,#+100
        SDIV     R1,R9,R0
        MLS      R9,R0,R1,R9
//  246        // break;
//  247         case 1:ch[9] = num_Integer/10 + '0';
??b_OLED_6x8Num_19:
        MOVS     R0,#+10
        SDIV     R0,R9,R0
        ADDS     R0,R0,#+48
        STRB     R0,[SP, #+9]
//  248          num_Integer = num_Integer%10;
        MOVS     R0,#+10
        SDIV     R1,R9,R0
        MLS      R9,R0,R1,R9
//  249        // break;
//  250         case 0:ch[10] = num_Integer + '0';
??b_OLED_6x8Num_17:
        ADDS     R0,R9,#+48
        STRB     R0,[SP, #+10]
//  251         break;
//  252     }
//  253     num_Integer = __ABS((sint32)(num));
??b_OLED_6x8Num_26:
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_d2iz
        CMP      R0,#+0
        BPL.N    ??b_OLED_6x8Num_28
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_d2iz
        RSBS     R9,R0,#+0
        B.N      ??b_OLED_6x8Num_29
??b_OLED_6x8Num_28:
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_d2iz
        MOV      R9,R0
//  254     float num_Decimal = __ABS(num) - num_Integer;
??b_OLED_6x8Num_29:
        MOVS     R0,R4
        MOVS     R1,R5
        MOVS     R2,#+0
        MOVS     R3,#+0
        BL       __aeabi_cdcmple
        BCS.N    ??b_OLED_6x8Num_30
        EORS     R5,R5,#0x80000000
        B.N      ??b_OLED_6x8Num_31
??b_OLED_6x8Num_30:
??b_OLED_6x8Num_31:
        MOV      R0,R9
        BL       __aeabi_i2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_dsub
        BL       __aeabi_d2f
//  255     // Ð¡Êý²¿·Ö´¦Àí
//  256     num_Integer = (sint32)(num_Decimal * 1000000);
        LDR.N    R1,??DataTable6_17  ;; 0x49742400
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        MOV      R9,R0
//  257     if(num_Integer >=     100000){Gaia_Div = 5;}else
        LDR.N    R0,??DataTable6_16  ;; 0x186a0
        CMP      R9,R0
        BLT.N    ??b_OLED_6x8Num_32
        MOVS     R8,#+5
        B.N      ??b_OLED_6x8Num_33
//  258     if(num_Integer >=      10000){Gaia_Div = 4;}else
??b_OLED_6x8Num_32:
        MOVW     R0,#+10000
        CMP      R9,R0
        BLT.N    ??b_OLED_6x8Num_34
        MOVS     R8,#+4
        B.N      ??b_OLED_6x8Num_33
//  259     if(num_Integer >=       1000){Gaia_Div = 3;}else
??b_OLED_6x8Num_34:
        CMP      R9,#+1000
        BLT.N    ??b_OLED_6x8Num_35
        MOVS     R8,#+3
        B.N      ??b_OLED_6x8Num_33
//  260     if(num_Integer >=        100){Gaia_Div = 2;}else
??b_OLED_6x8Num_35:
        CMP      R9,#+100
        BLT.N    ??b_OLED_6x8Num_36
        MOVS     R8,#+2
        B.N      ??b_OLED_6x8Num_33
//  261     if(num_Integer >=         10){Gaia_Div = 1;}else // num_Integer >= 0
??b_OLED_6x8Num_36:
        CMP      R9,#+10
        BLT.N    ??b_OLED_6x8Num_37
        MOVS     R8,#+1
        B.N      ??b_OLED_6x8Num_33
//  262                                  {Gaia_Div = 0;}
??b_OLED_6x8Num_37:
        MOVS     R8,#+0
//  263     switch(Gaia_Div)
??b_OLED_6x8Num_33:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BEQ.N    ??b_OLED_6x8Num_38
        CMP      R8,#+2
        BEQ.N    ??b_OLED_6x8Num_39
        BCC.N    ??b_OLED_6x8Num_40
        CMP      R8,#+4
        BEQ.N    ??b_OLED_6x8Num_41
        BCC.N    ??b_OLED_6x8Num_42
        CMP      R8,#+5
        BNE.N    ??b_OLED_6x8Num_43
//  264     {
//  265         case 5:ch[12] = num_Integer/100000 + '0';
??b_OLED_6x8Num_44:
        LDR.N    R0,??DataTable6_16  ;; 0x186a0
        SDIV     R0,R9,R0
        ADDS     R0,R0,#+48
        STRB     R0,[SP, #+12]
//  266          num_Integer = num_Integer%100000;
        LDR.N    R0,??DataTable6_16  ;; 0x186a0
        SDIV     R1,R9,R0
        MLS      R9,R0,R1,R9
//  267        // break;
//  268         case 4:ch[13] = num_Integer/10000 + '0';
??b_OLED_6x8Num_41:
        MOVW     R0,#+10000
        SDIV     R0,R9,R0
        ADDS     R0,R0,#+48
        STRB     R0,[SP, #+13]
//  269          num_Integer = num_Integer%10000;
        MOVW     R0,#+10000
        SDIV     R1,R9,R0
        MLS      R9,R0,R1,R9
//  270        // break;
//  271         case 3:ch[14] = num_Integer/1000 + '0';
??b_OLED_6x8Num_42:
        MOV      R0,#+1000
        SDIV     R0,R9,R0
        ADDS     R0,R0,#+48
        STRB     R0,[SP, #+14]
//  272          num_Integer = num_Integer%1000;
        MOV      R0,#+1000
        SDIV     R1,R9,R0
        MLS      R9,R0,R1,R9
//  273        // break;
//  274         case 2:ch[15] = num_Integer/100 + '0';
??b_OLED_6x8Num_39:
        MOVS     R0,#+100
        SDIV     R0,R9,R0
        ADDS     R0,R0,#+48
        STRB     R0,[SP, #+15]
//  275          num_Integer = num_Integer%100;
        MOVS     R0,#+100
        SDIV     R1,R9,R0
        MLS      R9,R0,R1,R9
//  276        // break;
//  277         case 1:ch[16] = num_Integer/10 + '0';
??b_OLED_6x8Num_40:
        MOVS     R0,#+10
        SDIV     R0,R9,R0
        ADDS     R0,R0,#+48
        STRB     R0,[SP, #+16]
//  278          num_Integer = num_Integer%10;
        MOVS     R0,#+10
        SDIV     R1,R9,R0
        MLS      R9,R0,R1,R9
//  279        // break;
//  280         case 0:ch[17] = num_Integer + '0';
??b_OLED_6x8Num_38:
        ADDS     R0,R9,#+48
        STRB     R0,[SP, #+17]
//  281         break;
//  282     }
//  283     //========================================================================//
//  284     // ÏÔÊ¾²¿·Ö
//  285     uint8 Integer_length = 0; // ÕûÊý²¿·Ö³¤¶È
??b_OLED_6x8Num_43:
        MOVS     R0,#+0
//  286     for(uint8 loop = 1;loop < 11;loop ++)
        MOVS     R1,#+1
        B.N      ??b_OLED_6x8Num_45
//  287     {
//  288         if('0' != ch[loop])
//  289         {
//  290             Integer_length = 11 - loop;
//  291             break;
//  292         }
//  293         if(10 == loop)
??b_OLED_6x8Num_46:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+10
        BNE.N    ??b_OLED_6x8Num_47
//  294         {Integer_length++;}
        ADDS     R0,R0,#+1
??b_OLED_6x8Num_47:
        ADDS     R1,R1,#+1
??b_OLED_6x8Num_45:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+11
        BGE.N    ??b_OLED_6x8Num_48
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADD      R2,SP,#+0
        LDRB     R2,[R1, R2]
        CMP      R2,#+48
        BEQ.N    ??b_OLED_6x8Num_46
        RSBS     R0,R1,#+11
//  295     }
//  296     // num_Integer ÔÝÎªÆðÊ¼Î»ÖÃ
//  297     num_Integer = 11 - Integer_length;
??b_OLED_6x8Num_48:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        RSBS     R9,R0,#+11
//  298     if('-' == ch[0]){++Integer_length;} // ÏÔÊ¾³¤¶ÈÔö¼Ó
        LDRB     R1,[SP, #+0]
        CMP      R1,#+45
        BNE.N    ??b_OLED_6x8Num_49
        ADDS     R0,R0,#+1
//  299     if(Integer_length > show_scale){return 'F';} // ÏÔÊ¾ÏÞ·ù
??b_OLED_6x8Num_49:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R6,R0
        BCS.N    ??b_OLED_6x8Num_50
        MOVS     R0,#+70
        B.N      ??b_OLED_6x8Num_1
//  300     if(show_scale - Integer_length > 1)
??b_OLED_6x8Num_50:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        SUBS     R1,R6,R0
        CMP      R1,#+2
        BLT.N    ??b_OLED_6x8Num_51
//  301     { // °üº¬Ð¡Êý²¿·Ö
//  302         uint8 loop = 12 + show_scale - Integer_length - 1 - 1;
        ADDS     R1,R6,#+12
        SUBS     R0,R1,R0
        SUBS     R1,R0,#+2
//  303         Integer_length = show_scale; // °üÀ¨Ð¡Êý²¿·Ö
        MOVS     R0,R6
        B.N      ??b_OLED_6x8Num_52
//  304         for(;loop > 11;loop --)
//  305         {
//  306             if('0' != ch[loop]){break;} // ÇåÁã²Ù×÷
//  307             Integer_length--; // ³¤¶ÈµÝ¼õ
??b_OLED_6x8Num_53:
        SUBS     R0,R0,#+1
        SUBS     R1,R1,#+1
??b_OLED_6x8Num_52:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+12
        BLT.N    ??b_OLED_6x8Num_54
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADD      R2,SP,#+0
        LDRB     R2,[R1, R2]
        CMP      R2,#+48
        BEQ.N    ??b_OLED_6x8Num_53
//  308         }
//  309         if(11 == loop)
??b_OLED_6x8Num_54:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+11
        BNE.N    ??b_OLED_6x8Num_51
//  310         {Integer_length--;} // ³¤¶È¼õÒ»
        SUBS     R0,R0,#+1
//  311     }
//  312     //========================================================================//
//  313     // ×Ö·ûÊä³ö²¿·Ö // Gaia_Div => ÔÝÓÃÎªÆðÊ¼Î»ÖÃ
//  314     Gaia_Div = 0;
??b_OLED_6x8Num_51:
        MOVS     R8,#+0
//  315     if('-' == ch[0]){ch_show[0] = '-';Gaia_Div = 1;}
        LDRB     R1,[SP, #+0]
        CMP      R1,#+45
        BNE.N    ??b_OLED_6x8Num_55
        MOVS     R1,#+45
        STRB     R1,[SP, #+20]
        MOVS     R8,#+1
//  316     for(uint8 loop = Gaia_Div;loop < Integer_length;loop ++)
??b_OLED_6x8Num_55:
        MOV      R1,R8
        B.N      ??b_OLED_6x8Num_56
//  317     {
//  318         ch_show[loop] = ch[loop + num_Integer - Gaia_Div];
??b_OLED_6x8Num_57:
        UXTAB    R2,R9,R1
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        SUBS     R2,R2,R8
        ADD      R3,SP,#+0
        LDRB     R2,[R2, R3]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADD      R3,SP,#+20
        STRB     R2,[R1, R3]
//  319     }
        ADDS     R1,R1,#+1
??b_OLED_6x8Num_56:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R1,R0
        BCC.N    ??b_OLED_6x8Num_57
//  320     v_OLED_6x8Str(X,Y,ch_show);
        ADD      R2,SP,#+20
        MOVS     R1,R7
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       v_OLED_6x8Str
//  321     return 'T';
        MOVS     R0,#+84
??b_OLED_6x8Num_1:
        ADD      SP,SP,#+32
        POP      {R4-R10,PC}      ;; return
//  322 }
//  323 
//  324 //==============================================================
//  325 //º¯ÊýÃû£º void v_OLED_showU8(uint8 x, uint8 y,float float_num) 
//  326 //¹¦ÄÜÃèÊö£ºÏÔÊ¾5Î»Ð¡Êý¡¢ÕûÊý
//  327 //²ÎÊý£ºÏÔÊ¾µÄÎ»ÖÃ£¨x,y£©£¬xÎªºá×ø±ê0¡«127£¬yÎªÒ³·¶Î§0¡«7£¬ÒªÏÔÊ¾µÄÊý×Ö
//  328 //·µ»Ø£ºÎÞ
//  329 //==============================================================

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  330 void v_OLED_showU8 ( uint8 x , uint8 y , uint8 U8num )
//  331 {
v_OLED_showU8:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  332     uint8 show_num = 0;
        MOVS     R7,#+0
//  333     for(uint8 loop = 0;loop <= 7;loop++)
        MOVS     R8,#+0
        B.N      ??v_OLED_showU8_0
//  334     {
//  335         show_num = (((U8num << loop) & 0x80) >> 7)&0x01;
//  336         show_num = show_num + 16; // ÏÔÊ¾»ù´¡»¯
//  337         OLED_Set_Pos(x + 6*loop,y); 
//  338         for(uint8 inter=0;inter<6;inter++)
//  339         {
//  340             OLED_WrDat(C6x8[show_num][inter]); 
??v_OLED_showU8_1:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOVS     R0,#+6
        LDR.N    R1,??DataTable6_9
        MLA      R0,R0,R7,R1
        LDRB     R0,[R9, R0]
        BL       OLED_WrDat
//  341         }
        ADDS     R9,R9,#+1
??v_OLED_showU8_2:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+6
        BLT.N    ??v_OLED_showU8_1
        ADDS     R8,R8,#+1
??v_OLED_showU8_0:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+8
        BGE.N    ??v_OLED_showU8_3
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSLS     R0,R6,R8
        ASRS     R0,R0,#+7
        ANDS     R7,R0,#0x1
        ADDS     R7,R7,#+16
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        MOVS     R0,#+6
        MUL      R0,R0,R8
        UXTAB    R0,R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_Set_Pos
        MOVS     R9,#+0
        B.N      ??v_OLED_showU8_2
//  342     }
//  343 }
??v_OLED_showU8_3:
        POP      {R0,R4-R9,PC}    ;; return
//  344 
//  345 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  346 void OLED_PutPixel(uint8 x,uint8 y)
//  347 {
OLED_PutPixel:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//  348 	uint8 data1;  //data1µ±Ç°µãµÄÊý¾Ý 
//  349 	data1 = 0x01<<(y%8); 	
        MOVS     R0,#+1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R2,#+8
        SDIV     R3,R1,R2
        MLS      R3,R3,R2,R1
        LSLS     R5,R0,R3
//  350 	OLED_WrCmd(0xb0+(y>>3));//ÉèÖÃÒ³ºÅ£¬yÓÒÒÆ3Î»Ïàµ±ÓÚ³ýÒÔ8£¬¼´ÓÉÐÐºÅµÃ³öÒ³ºÅ
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSRS     R0,R1,#+3
        SUBS     R0,R0,#+80
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WrCmd
//  351 	OLED_WrCmd(((x&0xf0)>>4)|0x10);//ÉèÖÃÁÐºÅµÄ¸ß4Î»
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSRS     R0,R4,#+4
        ORRS     R0,R0,#0x10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WrCmd
//  352 	OLED_WrCmd(x&0x0f);//ÉèÖÃÁÐºÅµÄµÍ4Î»
        ANDS     R0,R4,#0xF
        BL       OLED_WrCmd
//  353 	OLED_WrDat(data1); 	 	
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WrDat
//  354 }
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  355 void OLED_showCCD(uint8 CCD_Pixel_org[])
//  356 {
OLED_showCCD:
        PUSH     {R4-R8,LR}
        SUB      SP,SP,#+128
        MOVS     R4,R0
//  357   uint8 max_Pixel = 0;//Êý×éÖÐµÄ×î´óÖµ
        MOVS     R5,#+0
//  358   uint8 temp = 0;//ÁÙÊ±´æ´¢ÓÃ
        MOVS     R7,#+0
//  359   uint8 CCD_Pixel[128] = {0};
        ADD      R0,SP,#+0
        MOVS     R1,#+128
        BL       __aeabi_memclr4
//  360   uint8 i = 0 ,j = 0;
        MOVS     R6,#+0
        MOVS     R1,#+0
//  361   float temp_float = 0,temp_float2 = 0;
        MOVS     R0,#+0
        MOVS     R8,#+0
//  362   
//  363   for(i=0;i<128;i++)//½«CCDÊý¾Ý´æÈëÁÙÊ±Êý×é£¬·ÀÖ¹ÖÐ¶ÏÔì³ÉÏÔÊ¾´íÎó
        MOVS     R2,#+0
        MOVS     R6,R2
        B.N      ??OLED_showCCD_0
//  364   {
//  365     CCD_Pixel[i] = CCD_Pixel_org[i];
??OLED_showCCD_1:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDRB     R0,[R6, R4]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R6, R1]
//  366   }
        ADDS     R6,R6,#+1
??OLED_showCCD_0:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+128
        BLT.N    ??OLED_showCCD_1
//  367   for(i=0;i<128;i++)
        MOVS     R6,#+0
        B.N      ??OLED_showCCD_2
//  368   {
//  369     if(CCD_Pixel[i] > max_Pixel){max_Pixel = CCD_Pixel[i];}//Çó³ö×î´óÖµ
??OLED_showCCD_3:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADD      R0,SP,#+0
        LDRB     R0,[R6, R0]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,R0
        BCS.N    ??OLED_showCCD_4
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADD      R0,SP,#+0
        LDRB     R5,[R6, R0]
//  370   }
??OLED_showCCD_4:
        ADDS     R6,R6,#+1
??OLED_showCCD_2:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+128
        BLT.N    ??OLED_showCCD_3
//  371   //max_Pixel = 255;//×¢ÊÍ´ËÐÐ¿ÉÒÔ¶¯Ì¬ÏÔÊ¾×î´óÖµ£¬·ñÔò½«ÒÔ¾ø¶ÔÖµ·½Ê½ÏÔÊ¾Í¼ÐÎ
//  372 
//  373   temp_float2 = max_Pixel;if(temp_float2 == 0) temp_float2 = 1;//·À³ý·¨´íÎó
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R0,R5
        BL       __aeabi_ui2f
        MOV      R8,R0
        MOV      R0,R8
        MOVS     R1,#+0
        BL       __aeabi_cfcmpeq
        BNE.N    ??OLED_showCCD_5
        MOVS     R8,#+1065353216
//  374   
//  375   v_OLED_Fill(0x00);  //ÇåÆÁ
??OLED_showCCD_5:
        MOVS     R0,#+0
        BL       v_OLED_Fill
//  376 
//  377   for(i=0;i<128;i++)
        MOVS     R6,#+0
        B.N      ??OLED_showCCD_6
//  378   {
//  379     temp_float = CCD_Pixel[i];
??OLED_showCCD_7:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADD      R0,SP,#+0
        LDRB     R0,[R6, R0]
        BL       __aeabi_ui2f
//  380     temp_float = temp_float/temp_float2*63;//Çó³ö°´±ÈÀýµÄYÖµ
        MOV      R1,R8
        BL       __aeabi_fdiv
        LDR.N    R1,??DataTable6_18  ;; 0x427c0000
        BL       __aeabi_fmul
//  381     
//  382     temp = (uint8) temp_float;
        BL       __aeabi_f2iz
        MOVS     R7,R0
//  383     j = (uint8) temp;//½«YÖµ×ª»»Îª×Ö½ÚÐÍÊý
        MOVS     R1,R7
//  384     
//  385     OLED_PutPixel(i,(63-j));//Êä³öÔ­Ê¼ÏñËØµã
        RSBS     R1,R1,#+63
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_PutPixel
//  386   }
        ADDS     R6,R6,#+1
??OLED_showCCD_6:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+128
        BLT.N    ??OLED_showCCD_7
//  387   
//  388 }
        ADD      SP,SP,#+128
        POP      {R4-R8,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     0x400ff080

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC32     0x400ff0c0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_2:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_3:
        DC32     0x4004b02c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_4:
        DC32     0x4004b03c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_5:
        DC32     0x4004b048

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_6:
        DC32     0x4004c004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_7:
        DC32     0x400ff094

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_8:
        DC32     0x400ff0d4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_9:
        DC32     C6x8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_10:
        DC32     `?<Constant "-0000000000.000000">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_11:
        DC32     `?<Constant "          ">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_12:
        DC32     0x3b9aca00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_13:
        DC32     0x5f5e100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_14:
        DC32     0x989680

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_15:
        DC32     0xf4240

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_16:
        DC32     0x186a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_17:
        DC32     0x49742400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_18:
        DC32     0x427c0000

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "-0000000000.000000">`:
        DATA
        DC8 "-0000000000.000000"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "          ">`:
        DATA
        DC8 "          "
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        END
// 
//   160 bytes in section .rodata
// 2 352 bytes in section .text
// 
// 2 352 bytes of CODE  memory
//   160 bytes of CONST memory
//
//Errors: none
//Warnings: none
