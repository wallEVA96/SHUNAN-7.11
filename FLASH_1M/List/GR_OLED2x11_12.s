///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     24/Jun/2014  03:43:01 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\´´×÷ÎÝ\ÐÂ¿ªÕÅ\Ë³°µ2ºÅ_²»ËÀÄñ /
//                    _6_23\6_23\ShunAn2\GR_OLED2x11_12.c                     /
//    Command line =  D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\´´×÷ÎÝ\ÐÂ¿ªÕÅ\Ë³°µ2ºÅ_²»ËÀÄñ /
//                    _6_23\6_23\ShunAn2\GR_OLED2x11_12.c -D IAR -D ShunAn2   /
//                    -lCN D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\´´×÷ÎÝ\ÐÂ¿ªÕÅ\Ë³°µ2ºÅ_² /
//                    »ËÀÄñ_6_23\6_23\FLASH_1M\List\ -lB                      /
//                    D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\´´×÷ÎÝ\ÐÂ¿ªÕÅ\Ë³°µ2ºÅ_²»ËÀÄñ /
//                    _6_23\6_23\FLASH_1M\List\ -o                            /
//                    D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\´´×÷ÎÝ\ÐÂ¿ªÕÅ\Ë³°µ2ºÅ_²»ËÀÄñ /
//                    _6_23\6_23\FLASH_1M\Obj\ --no_cse --no_unroll           /
//                    --no_inline --no_code_motion --no_tbaa --no_clustering  /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=None --dlib_config             /
//                    "C:\Program Files (x86)\IAR Systems\Embedded Workbench  /
//                    6.5\arm\INC\c\DLib_Config_Normal.h" -I                  /
//                    D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\´´×÷ÎÝ\ÐÂ¿ªÕÅ\Ë³°µ2ºÅ_²»ËÀÄñ /
//                    _6_23\6_23\ShunAn2\ -I D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\´´×÷Î /
//                    Ý\ÐÂ¿ªÕÅ\Ë³°µ2ºÅ_²»ËÀÄñ_6_23\6_23\Library\ -I           /
//                    D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\´´×÷ÎÝ\ÐÂ¿ªÕÅ\Ë³°µ2ºÅ_²»ËÀÄñ /
//                    _6_23\6_23\Library\BlessedAlien\ -Ol --use_c++_inline   /
//    List file    =  D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\´´×÷ÎÝ\ÐÂ¿ªÕÅ\Ë³°µ2ºÅ_²»ËÀÄñ /
//                    _6_23\6_23\FLASH_1M\List\GR_OLED2x11_12.s               /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN F14x16
        EXTERN F14x16_Idx
        EXTERN F6x8
        EXTERN F8X16
        EXTERN dwt_delay_ms

        PUBLIC Draw_BMP
        PUBLIC LCD_CLS
        PUBLIC LCD_Fill
        PUBLIC LCD_Init
        PUBLIC LCD_P14x16Str
        PUBLIC LCD_P6x8Str
        PUBLIC LCD_P8x16Str
        PUBLIC LCD_Print
        PUBLIC LCD_PutPagePixel
        PUBLIC LCD_PutPixel
        PUBLIC LCD_Rectangle
        PUBLIC LCD_Set_Pos
        PUBLIC LCD_WrCmd
        PUBLIC LCD_WrDat
        PUBLIC OLED

// D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\´´×÷ÎÝ\ÐÂ¿ªÕÅ\Ë³°µ2ºÅ_²»ËÀÄñ_6_23\6_23\ShunAn2\GR_OLED2x11_12.c
//    1 #include "GR_OLEDx11_12.h"
//    2 #include "BlessedAlien.h"
//    3 
//    4 
//    5 #define XLevelL		0x00
//    6 #define XLevelH		0x10
//    7 #define XLevel		((XLevelH&0x0F)*16+XLevelL)
//    8 #define Max_Column	128
//    9 #define Max_Row		  64
//   10 #define	Brightness	0xCF 
//   11 
//   12 
//   13 #define X_WIDTH 128
//   14 #define Y_WIDTH 64
//   15 //======================================

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   16 OledInformation OLED = {0};
OLED:
        DS8 8
//   17 
//   18 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   19 void LCD_WrDat(uint8 data)
//   20 {
//   21   uint8 i=8;
LCD_WrDat:
        MOVS     R1,#+8
//   22   //uint8 j=0;
//   23 
//   24   GPIOC_PDOR |= (1<<19);//PTC19=1 DC=1
        LDR.W    R2,??DataTable5  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x80000
        LDR.W    R3,??DataTable5  ;; 0x400ff080
        STR      R2,[R3, #+0]
//   25   //for(j=0;j<=1;j++);//ÑÓÊ±
//   26   GPIOC_PDOR &= ~(1<<16);//PTC16=0 CLK/D0=0
        LDR.W    R2,??DataTable5  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        BICS     R2,R2,#0x10000
        LDR.W    R3,??DataTable5  ;; 0x400ff080
        STR      R2,[R3, #+0]
        B.N      ??LCD_WrDat_0
//   27   //for(j=0;j<=1;j++);//ÑÓÊ±
//   28 
//   29   while(i--)
//   30   {
//   31     if(data&0x80){GPIOC_PDOR |= (1<<17);}//PTC17=1 SDA/D1=1
//   32     else{GPIOC_PDOR &= ~(1<<17);}//PTC17=0 SDA/D1=0
??LCD_WrDat_1:
        LDR.W    R2,??DataTable5  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        BICS     R2,R2,#0x20000
        LDR.W    R3,??DataTable5  ;; 0x400ff080
        STR      R2,[R3, #+0]
//   33     //for(j=0;j<=1;j++);//ÑÓÊ±
//   34     GPIOC_PDOR |= (1<<16);//PTC16=1 CLK/D0=1
??LCD_WrDat_2:
        LDR.W    R2,??DataTable5  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x10000
        LDR.W    R3,??DataTable5  ;; 0x400ff080
        STR      R2,[R3, #+0]
//   35     //for(j=0;j<=1;j++);//ÑÓÊ±            
//   36     GPIOC_PDOR &= ~(1<<16);//PTC16=0 CLK/D0=0 
        LDR.W    R2,??DataTable5  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        BICS     R2,R2,#0x10000
        LDR.W    R3,??DataTable5  ;; 0x400ff080
        STR      R2,[R3, #+0]
//   37     data<<=1;    
        LSLS     R0,R0,#+1
??LCD_WrDat_0:
        MOVS     R2,R1
        SUBS     R1,R2,#+1
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BEQ.N    ??LCD_WrDat_3
        LSLS     R2,R0,#+24
        BPL.N    ??LCD_WrDat_1
        LDR.W    R2,??DataTable5  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x20000
        LDR.W    R3,??DataTable5  ;; 0x400ff080
        STR      R2,[R3, #+0]
        B.N      ??LCD_WrDat_2
//   38   }
//   39 }
??LCD_WrDat_3:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   40 void LCD_WrCmd(uint8 cmd)
//   41 {
//   42   uint8 i=8;
LCD_WrCmd:
        MOVS     R1,#+8
//   43   //uint8 j=0;
//   44   
//   45   GPIOC_PDOR &= ~(1<<19);//PTC19=1 DC=0
        LDR.W    R2,??DataTable5  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        BICS     R2,R2,#0x80000
        LDR.W    R3,??DataTable5  ;; 0x400ff080
        STR      R2,[R3, #+0]
//   46   //for(j=0;j<=1;j++);//ÑÓÊ±
//   47   GPIOC_PDOR &= ~(1<<16);//PTC16=0 CLK/D0=0
        LDR.W    R2,??DataTable5  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        BICS     R2,R2,#0x10000
        LDR.W    R3,??DataTable5  ;; 0x400ff080
        STR      R2,[R3, #+0]
        B.N      ??LCD_WrCmd_0
//   48   //for(j=0;j<=1;j++);//ÑÓÊ±
//   49   
//   50   while(i--)
//   51   {
//   52     if(cmd&0x80){GPIOC_PDOR |= (1<<17);}//PTC17=1 SDA/D1=1
//   53     else{GPIOC_PDOR &= ~(1<<17);}//PTC17=0 SDA/D1=0
??LCD_WrCmd_1:
        LDR.W    R2,??DataTable5  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        BICS     R2,R2,#0x20000
        LDR.W    R3,??DataTable5  ;; 0x400ff080
        STR      R2,[R3, #+0]
//   54     //for(j=0;j<=1;j++);//ÑÓÊ±
//   55     GPIOC_PDOR |= (1<<16);//PTC16=1 CLK/D0=1
??LCD_WrCmd_2:
        LDR.W    R2,??DataTable5  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x10000
        LDR.W    R3,??DataTable5  ;; 0x400ff080
        STR      R2,[R3, #+0]
//   56     //for(j=0;j<=1;j++);//ÑÓÊ±
//   57     GPIOC_PDOR &= ~(1<<16);//PTC16=0 CLK/D0=0 
        LDR.W    R2,??DataTable5  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        BICS     R2,R2,#0x10000
        LDR.W    R3,??DataTable5  ;; 0x400ff080
        STR      R2,[R3, #+0]
//   58     cmd<<=1;  
        LSLS     R0,R0,#+1
??LCD_WrCmd_0:
        MOVS     R2,R1
        SUBS     R1,R2,#+1
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BEQ.N    ??LCD_WrCmd_3
        LSLS     R2,R0,#+24
        BPL.N    ??LCD_WrCmd_1
        LDR.W    R2,??DataTable5  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x20000
        LDR.W    R3,??DataTable5  ;; 0x400ff080
        STR      R2,[R3, #+0]
        B.N      ??LCD_WrCmd_2
//   59   }
//   60 
//   61 }
??LCD_WrCmd_3:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   62 void LCD_Set_Pos(uint8 x, uint8 y)
//   63 { 
LCD_Set_Pos:
        PUSH     {R4,LR}
        MOVS     R4,R0
//   64   LCD_WrCmd(0xb0+y);
        SUBS     R0,R1,#+80
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_WrCmd
//   65   LCD_WrCmd(((x&0xf0)>>4)|0x10);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSRS     R0,R4,#+4
        ORRS     R0,R0,#0x10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_WrCmd
//   66   LCD_WrCmd((x&0x0f)|0x01); 
        ANDS     R0,R4,#0xF
        ORRS     R0,R0,#0x1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_WrCmd
//   67 } 
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   68 void LCD_Fill(uint8 bmp_data)
//   69 {
LCD_Fill:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
//   70 	uint8 y,x;
//   71 	
//   72 	for(y=0;y<8;y++)
        MOVS     R5,#+0
        B.N      ??LCD_Fill_0
//   73 	{
//   74 		LCD_WrCmd(0xb0+y);
//   75 		LCD_WrCmd(0x01);
//   76 		LCD_WrCmd(0x10);
//   77 		for(x=0;x<X_WIDTH;x++)
//   78 			LCD_WrDat(bmp_data);
??LCD_Fill_1:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_WrDat
        ADDS     R6,R6,#+1
??LCD_Fill_2:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+128
        BLT.N    ??LCD_Fill_1
        ADDS     R5,R5,#+1
??LCD_Fill_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+8
        BGE.N    ??LCD_Fill_3
        SUBS     R0,R5,#+80
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_WrCmd
        MOVS     R0,#+1
        BL       LCD_WrCmd
        MOVS     R0,#+16
        BL       LCD_WrCmd
        MOVS     R6,#+0
        B.N      ??LCD_Fill_2
//   79 	}
//   80 }
??LCD_Fill_3:
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   81 void LCD_CLS(void)
//   82 {
LCD_CLS:
        PUSH     {R3-R5,LR}
//   83 	uint8 y,x;	
//   84 	for(y=0;y<8;y++)
        MOVS     R4,#+0
        B.N      ??LCD_CLS_0
//   85 	{
//   86 		LCD_WrCmd(0xb0+y);
//   87 		LCD_WrCmd(0x01);
//   88 		LCD_WrCmd(0x10); 
//   89 		for(x=0;x<X_WIDTH;x++)
//   90 			LCD_WrDat(0);
??LCD_CLS_1:
        MOVS     R0,#+0
        BL       LCD_WrDat
        ADDS     R5,R5,#+1
??LCD_CLS_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+128
        BLT.N    ??LCD_CLS_1
        ADDS     R4,R4,#+1
??LCD_CLS_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+8
        BGE.N    ??LCD_CLS_3
        SUBS     R0,R4,#+80
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_WrCmd
        MOVS     R0,#+1
        BL       LCD_WrCmd
        MOVS     R0,#+16
        BL       LCD_WrCmd
        MOVS     R5,#+0
        B.N      ??LCD_CLS_2
//   91 	}
//   92 }
??LCD_CLS_3:
        POP      {R0,R4,R5,PC}    ;; return
//   93 
//   94 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   95 void LCD_Init(void)        
//   96 {            
LCD_Init:
        PUSH     {R7,LR}
//   97   SIM_SCGC5 |= 0x00000800u;//Ê¹ÄÜPORTCÊ±ÖÓ 
        LDR.W    R0,??DataTable5_1  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x800
        LDR.W    R1,??DataTable5_1  ;; 0x40048038
        STR      R0,[R1, #+0]
//   98   PORTC_PCR19 |= 0x00000100u;//PTA24Òý½Å¸´ÓÃÑ¡ÔñÆÕÍ¨IO(//DC-A24-DC)
        LDR.W    R0,??DataTable5_2  ;; 0x4004b04c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.W    R1,??DataTable5_2  ;; 0x4004b04c
        STR      R0,[R1, #+0]
//   99   PORTC_PCR18 |= 0x00000100u;//PTA25Òý½Å¸´ÓÃÑ¡ÔñÆÕÍ¨IO(//RST-A25-RST)
        LDR.W    R0,??DataTable5_3  ;; 0x4004b048
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.W    R1,??DataTable5_3  ;; 0x4004b048
        STR      R0,[R1, #+0]
//  100   PORTC_PCR17 |= 0x00000100u;//PTA26Òý½Å¸´ÓÃÑ¡ÔñÆÕÍ¨IO(//D1-A26-SDA)
        LDR.W    R0,??DataTable5_4  ;; 0x4004b044
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.W    R1,??DataTable5_4  ;; 0x4004b044
        STR      R0,[R1, #+0]
//  101   PORTC_PCR16 |= 0x00000100u;//PTA27Òý½Å¸´ÓÃÑ¡ÔñÆÕÍ¨IO(//CLK/D0-A27-SCL)
        LDR.W    R0,??DataTable5_5  ;; 0x4004b040
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.W    R1,??DataTable5_5  ;; 0x4004b040
        STR      R0,[R1, #+0]
//  102         
//  103   GPIOC_PDDR |= (1<<19);//PTA24Òý½ÅÑ¡ÔñÊä³ö·½Ïò
        LDR.W    R0,??DataTable5_6  ;; 0x400ff094
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80000
        LDR.W    R1,??DataTable5_6  ;; 0x400ff094
        STR      R0,[R1, #+0]
//  104   GPIOC_PDDR |= (1<<18);//PTA25Òý½ÅÑ¡ÔñÊä³ö·½Ïò
        LDR.W    R0,??DataTable5_6  ;; 0x400ff094
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40000
        LDR.W    R1,??DataTable5_6  ;; 0x400ff094
        STR      R0,[R1, #+0]
//  105   GPIOC_PDDR |= (1<<17);//PTA26Òý½ÅÑ¡ÔñÊä³ö·½Ïò
        LDR.W    R0,??DataTable5_6  ;; 0x400ff094
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x20000
        LDR.W    R1,??DataTable5_6  ;; 0x400ff094
        STR      R0,[R1, #+0]
//  106   GPIOC_PDDR |= (1<<16);//PTA27Òý½ÅÑ¡ÔñÊä³ö·½Ïò
        LDR.W    R0,??DataTable5_6  ;; 0x400ff094
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000
        LDR.W    R1,??DataTable5_6  ;; 0x400ff094
        STR      R0,[R1, #+0]
//  107         
//  108   GPIOC_PDOR |= (1<<19);//PTC19=1 DC=1
        LDR.W    R0,??DataTable5  ;; 0x400ff080
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80000
        LDR.W    R1,??DataTable5  ;; 0x400ff080
        STR      R0,[R1, #+0]
//  109   GPIOC_PDOR &= ~(1<<18);//PTC18=0 RST=0
        LDR.W    R0,??DataTable5  ;; 0x400ff080
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x40000
        LDR.W    R1,??DataTable5  ;; 0x400ff080
        STR      R0,[R1, #+0]
//  110   GPIOC_PDOR |= (1<<17);//PTC17=1 SDA/D1=1
        LDR.W    R0,??DataTable5  ;; 0x400ff080
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x20000
        LDR.W    R1,??DataTable5  ;; 0x400ff080
        STR      R0,[R1, #+0]
//  111   GPIOC_PDOR |= (1<<16);//PTC16=1 CLK/D0=1
        LDR.W    R0,??DataTable5  ;; 0x400ff080
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000
        LDR.W    R1,??DataTable5  ;; 0x400ff080
        STR      R0,[R1, #+0]
//  112 
//  113   for(unsigned short int i = 0;i<1000;i++);//ÑÓÊ±
        MOVS     R0,#+0
        B.N      ??LCD_Init_0
??LCD_Init_1:
        ADDS     R0,R0,#+1
??LCD_Init_0:
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+1000
        BLT.N    ??LCD_Init_1
//  114   //DELAY_MS(50);
//  115   GPIOC_PDOR |= (1<<18);//PTC18=1 RST=1
        LDR.W    R0,??DataTable5  ;; 0x400ff080
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40000
        LDR.W    R1,??DataTable5  ;; 0x400ff080
        STR      R0,[R1, #+0]
//  116 
//  117   LCD_WrCmd(0xae);//--turn off oled panel
        MOVS     R0,#+174
        BL       LCD_WrCmd
//  118   LCD_WrCmd(0x00);//---set low column address
        MOVS     R0,#+0
        BL       LCD_WrCmd
//  119   LCD_WrCmd(0x10);//---set high column address
        MOVS     R0,#+16
        BL       LCD_WrCmd
//  120   LCD_WrCmd(0x40);//--set start line address  Set Mapping RAM Display Start Line (0x00~0x3F)
        MOVS     R0,#+64
        BL       LCD_WrCmd
//  121   LCD_WrCmd(0x81);//--set contrast control register
        MOVS     R0,#+129
        BL       LCD_WrCmd
//  122   LCD_WrCmd(0xcf); // Set SEG Output Current Brightness
        MOVS     R0,#+207
        BL       LCD_WrCmd
//  123   LCD_WrCmd(0xa1);//--Set SEG/Column Mapping     0xa0×óÓÒ·´ÖÃ 0xa1Õý³£
        MOVS     R0,#+161
        BL       LCD_WrCmd
//  124   LCD_WrCmd(0xc8);//Set COM/Row Scan Direction   0xc0ÉÏÏÂ·´ÖÃ 0xc8Õý³£
        MOVS     R0,#+200
        BL       LCD_WrCmd
//  125   LCD_WrCmd(0xa6);//--set normal display
        MOVS     R0,#+166
        BL       LCD_WrCmd
//  126   LCD_WrCmd(0xa8);//--set multiplex ratio(1 to 64)
        MOVS     R0,#+168
        BL       LCD_WrCmd
//  127   LCD_WrCmd(0x3f);//--1/64 duty
        MOVS     R0,#+63
        BL       LCD_WrCmd
//  128   LCD_WrCmd(0xd3);//-set display offset	Shift Mapping RAM Counter (0x00~0x3F)
        MOVS     R0,#+211
        BL       LCD_WrCmd
//  129   LCD_WrCmd(0x00);//-not offset
        MOVS     R0,#+0
        BL       LCD_WrCmd
//  130   LCD_WrCmd(0xd5);//--set display clock divide ratio/oscillator frequency
        MOVS     R0,#+213
        BL       LCD_WrCmd
//  131   LCD_WrCmd(0x80);//--set divide ratio, Set Clock as 100 Frames/Sec
        MOVS     R0,#+128
        BL       LCD_WrCmd
//  132   LCD_WrCmd(0xd9);//--set pre-charge period
        MOVS     R0,#+217
        BL       LCD_WrCmd
//  133   LCD_WrCmd(0xf1);//Set Pre-Charge as 15 Clocks & Discharge as 1 Clock
        MOVS     R0,#+241
        BL       LCD_WrCmd
//  134   LCD_WrCmd(0xda);//--set com pins hardware configuration
        MOVS     R0,#+218
        BL       LCD_WrCmd
//  135   LCD_WrCmd(0x12);
        MOVS     R0,#+18
        BL       LCD_WrCmd
//  136   LCD_WrCmd(0xdb);//--set vcomh
        MOVS     R0,#+219
        BL       LCD_WrCmd
//  137   LCD_WrCmd(0x40);//Set VCOM Deselect Level
        MOVS     R0,#+64
        BL       LCD_WrCmd
//  138   LCD_WrCmd(0x20);//-Set Page Addressing Mode (0x00/0x01/0x02)
        MOVS     R0,#+32
        BL       LCD_WrCmd
//  139   LCD_WrCmd(0x02);//
        MOVS     R0,#+2
        BL       LCD_WrCmd
//  140   LCD_WrCmd(0x8d);//--set Charge Pump enable/disable
        MOVS     R0,#+141
        BL       LCD_WrCmd
//  141   LCD_WrCmd(0x14);//--set(0x10) disable
        MOVS     R0,#+20
        BL       LCD_WrCmd
//  142   LCD_WrCmd(0xa4);// Disable Entire Display On (0xa4/0xa5)
        MOVS     R0,#+164
        BL       LCD_WrCmd
//  143   LCD_WrCmd(0xa6);// Disable Inverse Display On (0xa6/a7) 
        MOVS     R0,#+166
        BL       LCD_WrCmd
//  144   LCD_WrCmd(0xaf);//--turn on oled panel
        MOVS     R0,#+175
        BL       LCD_WrCmd
//  145   LCD_Fill(0x00);  //³õÊ¼ÇåÆÁ
        MOVS     R0,#+0
        BL       LCD_Fill
//  146   LCD_Set_Pos(0,0);  
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       LCD_Set_Pos
//  147 	
//  148 } 
        POP      {R0,PC}          ;; return
//  149 //==============================================================
//  150 //º¯ÊýÃû£º void LCD_PutPixel(uint8 x,uint8 y)
//  151 //¹¦ÄÜÃèÊö£º»æÖÆÒ»¸öµã£¨x,y£©
//  152 //²ÎÊý£ºÕæÊµ×ø±êÖµ(x,y),xµÄ·¶Î§0¡«127£¬yµÄ·¶Î§0¡«63
//  153 //·µ»Ø£ºÎÞ
//  154 //==============================================================

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  155 void LCD_PutPixel(uint8 x,uint8 y)
//  156 {
LCD_PutPixel:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//  157 	uint8 data1;  //data1µ±Ç°µãµÄÊý¾Ý 
//  158 	data1 = 0x01<<(y%8); 	
        MOVS     R0,#+1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R2,#+8
        SDIV     R3,R1,R2
        MLS      R3,R3,R2,R1
        LSLS     R5,R0,R3
//  159 	LCD_WrCmd(0xb0+(y>>3));//ÉèÖÃÒ³ºÅ£¬yÓÒÒÆ3Î»Ïàµ±ÓÚ³ýÒÔ8£¬¼´ÓÉÐÐºÅµÃ³öÒ³ºÅ
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSRS     R0,R1,#+3
        SUBS     R0,R0,#+80
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_WrCmd
//  160 	LCD_WrCmd(((x&0xf0)>>4)|0x10);//ÉèÖÃÁÐºÅµÄ¸ß4Î»
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSRS     R0,R4,#+4
        ORRS     R0,R0,#0x10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_WrCmd
//  161 	LCD_WrCmd(x&0x0f);//ÉèÖÃÁÐºÅµÄµÍ4Î»
        ANDS     R0,R4,#0xF
        BL       LCD_WrCmd
//  162 	LCD_WrDat(data1); 	 	
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_WrDat
//  163 }
        POP      {R0,R4,R5,PC}    ;; return
//  164 //==============================================================
//  165 //º¯ÊýÃû£º void LCD_PutPagePixel(uint8 x,uint8 y,uint8 data1)
//  166 //¹¦ÄÜÃèÊö£ºÌî³äÒ»¸öÉÈÇø£¨x,y£©
//  167 //²ÎÊý£ºÕæÊµ×ø±êÖµ(x,y),xµÄ·¶Î§0¡«127£¬yµÄ·¶Î§0¡«63
//  168 //·µ»Ø£ºÎÞ
//  169 //==============================================================

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  170 void LCD_PutPagePixel(uint8 x,uint8 y,uint8 data1)
//  171 { 
LCD_PutPagePixel:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R2
//  172 	LCD_WrCmd(0xb0+(y>>3));//ÉèÖÃÒ³ºÅ£¬yÓÒÒÆ3Î»Ïàµ±ÓÚ³ýÒÔ8£¬¼´ÓÉÐÐºÅµÃ³öÒ³ºÅ
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSRS     R0,R1,#+3
        SUBS     R0,R0,#+80
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_WrCmd
//  173 	LCD_WrCmd(((x&0xf0)>>4)|0x10);//ÉèÖÃÁÐºÅµÄ¸ß4Î»
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSRS     R0,R4,#+4
        ORRS     R0,R0,#0x10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_WrCmd
//  174 	LCD_WrCmd(x&0x0f);//ÉèÖÃÁÐºÅµÄµÍ4Î»
        ANDS     R0,R4,#0xF
        BL       LCD_WrCmd
//  175 	LCD_WrDat(data1); 	 	
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_WrDat
//  176 }
        POP      {R0,R4,R5,PC}    ;; return
//  177 //==============================================================
//  178 //º¯ÊýÃû£º void LCD_Rectangle(uint8 x1,uint8 y1,
//  179 //                   uint8 x2,uint8 y2,uint8 color,uint8 gif)
//  180 //¹¦ÄÜÃèÊö£º»æÖÆÒ»¸öÊµÐÄ¾ØÐÎ
//  181 //²ÎÊý£º×óÉÏ½Ç×ø±ê£¨x1,y1£©,ÓÒÏÂ½Ç×ø±ê£¨x2£¬y2£©
//  182 //      ÆäÖÐx1¡¢x2µÄ·¶Î§0¡«127£¬y1£¬y2µÄ·¶Î§0¡«63£¬¼´ÕæÊµ×ø±êÖµ
//  183 //·µ»Ø£ºÎÞ
//  184 //==============================================================

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  185 void LCD_Rectangle(uint8 x1,uint8 y1,uint8 x2,uint8 y2,uint8 gif)
//  186 {
LCD_Rectangle:
        PUSH     {R3-R9,LR}
        MOVS     R5,R0
        MOV      R9,R1
        MOVS     R6,R2
        MOVS     R7,R3
//  187 	uint8 n,m; 
//  188 	for(m=y1;m<=y2;m++)
        LDR      R4,[SP, #+32]
        B.N      ??LCD_Rectangle_0
//  189         {
//  190           LCD_Set_Pos(x1,m>>3);
//  191           for(n=x1;n<=x2;n++)
//  192           {
//  193 		LCD_WrDat(0x01<<(m%8)); 			
??LCD_Rectangle_1:
        MOVS     R0,#+1
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        MOVS     R1,#+8
        SDIV     R2,R9,R1
        MLS      R2,R2,R1,R9
        LSLS     R0,R0,R2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_WrDat
//  194 		if(gif == 1) 	 
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.N    ??LCD_Rectangle_2
//  195                  DELAY_MS(10); 
        MOVS     R0,#+10
        BL       dwt_delay_ms
//  196           } 
??LCD_Rectangle_2:
        ADDS     R8,R8,#+1
??LCD_Rectangle_3:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R6,R8
        BCS.N    ??LCD_Rectangle_1
        ADDS     R9,R9,#+1
??LCD_Rectangle_0:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R7,R9
        BCC.N    ??LCD_Rectangle_4
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        LSRS     R1,R9,#+3
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_Set_Pos
        MOV      R8,R5
        B.N      ??LCD_Rectangle_3
//  197         }
//  198 	
//  199 }  
??LCD_Rectangle_4:
        POP      {R0,R4-R9,PC}    ;; return
//  200 //==============================================================
//  201 //º¯ÊýÃû£ºLCD_P6x8Str(uint8 x,uint8 y,uint8 *p)
//  202 //¹¦ÄÜÃèÊö£ºÐ´ÈëÒ»×é±ê×¼ASCII×Ö·û´®
//  203 //²ÎÊý£ºÏÔÊ¾µÄÎ»ÖÃ£¨x,y£©£¬yÎªÒ³·¶Î§0¡«7£¬ÒªÏÔÊ¾µÄ×Ö·û´®
//  204 //·µ»Ø£ºÎÞ
//  205 //==============================================================  

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  206 void LCD_P6x8Str(uint8 x,uint8 y,uint8 ch[])
//  207 {
LCD_P6x8Str:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  208   uint8 c=0,i=0,j=0;      
        MOVS     R7,#+0
        MOVS     R8,#+0
        MOVS     R9,#+0
        B.N      ??LCD_P6x8Str_0
//  209   while (ch[j]!='\0')
//  210   {    
//  211     c =ch[j]-32;
//  212     if(x>126){x=0;y++;}
//  213     LCD_Set_Pos(x,y);    
//  214   	for(i=0;i<6;i++)     
//  215   	  LCD_WrDat(F6x8[c][i]);  
??LCD_P6x8Str_1:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOVS     R0,#+6
        LDR.N    R1,??DataTable5_7
        MLA      R0,R0,R7,R1
        LDRB     R0,[R8, R0]
        BL       LCD_WrDat
        ADDS     R8,R8,#+1
??LCD_P6x8Str_2:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+6
        BLT.N    ??LCD_P6x8Str_1
//  216   	x+=6;
        ADDS     R4,R4,#+6
//  217   	j++;
        ADDS     R9,R9,#+1
??LCD_P6x8Str_0:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        LDRB     R0,[R9, R6]
        CMP      R0,#+0
        BEQ.N    ??LCD_P6x8Str_3
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        LDRB     R0,[R9, R6]
        SUBS     R7,R0,#+32
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+127
        BLT.N    ??LCD_P6x8Str_4
        MOVS     R4,#+0
        ADDS     R5,R5,#+1
??LCD_P6x8Str_4:
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_Set_Pos
        MOVS     R8,#+0
        B.N      ??LCD_P6x8Str_2
//  218   }
//  219 }
??LCD_P6x8Str_3:
        POP      {R0,R4-R9,PC}    ;; return
//  220 //==============================================================
//  221 //º¯ÊýÃû£ºLCD_P8x16Str(uint8 x,uint8 y,uint8 *p)
//  222 //¹¦ÄÜÃèÊö£ºÐ´ÈëÒ»×é±ê×¼ASCII×Ö·û´®
//  223 //²ÎÊý£ºÏÔÊ¾µÄÎ»ÖÃ£¨x,y£©£¬yÎªÒ³·¶Î§0¡«7£¬ÒªÏÔÊ¾µÄ×Ö·û´®
//  224 //·µ»Ø£ºÎÞ
//  225 //==============================================================  

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  226 void LCD_P8x16Str(uint8 x,uint8 y,uint8 ch[])
//  227 {
LCD_P8x16Str:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  228   uint8 c=0,i=0,j=0;
        MOVS     R7,#+0
        MOVS     R8,#+0
        MOVS     R9,#+0
        B.N      ??LCD_P8x16Str_0
//  229         
//  230   while (ch[j]!='\0')
//  231   {    
//  232     c =ch[j]-32;
//  233     if(x>120){x=0;y++;}
//  234     LCD_Set_Pos(x,y);    
//  235   	for(i=0;i<8;i++)     
//  236   	  LCD_WrDat(F8X16[c*16+i]);
//  237   	LCD_Set_Pos(x,y+1);    
//  238   	for(i=0;i<8;i++)     
//  239   	  LCD_WrDat(F8X16[c*16+i+8]);  
??LCD_P8x16Str_1:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LSLS     R0,R7,#+4
        UXTAB    R0,R0,R8
        LDR.N    R1,??DataTable5_8
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+8]
        BL       LCD_WrDat
        ADDS     R8,R8,#+1
??LCD_P8x16Str_2:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+8
        BLT.N    ??LCD_P8x16Str_1
//  240   	x+=8;
        ADDS     R4,R4,#+8
//  241   	j++;
        ADDS     R9,R9,#+1
??LCD_P8x16Str_0:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        LDRB     R0,[R9, R6]
        CMP      R0,#+0
        BEQ.N    ??LCD_P8x16Str_3
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        LDRB     R0,[R9, R6]
        SUBS     R7,R0,#+32
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+121
        BLT.N    ??LCD_P8x16Str_4
        MOVS     R4,#+0
        ADDS     R5,R5,#+1
??LCD_P8x16Str_4:
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_Set_Pos
        MOVS     R8,#+0
        B.N      ??LCD_P8x16Str_5
??LCD_P8x16Str_6:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LSLS     R0,R7,#+4
        UXTAB    R0,R0,R8
        LDR.N    R1,??DataTable5_8
        LDRB     R0,[R0, R1]
        BL       LCD_WrDat
        ADDS     R8,R8,#+1
??LCD_P8x16Str_5:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+8
        BLT.N    ??LCD_P8x16Str_6
        ADDS     R1,R5,#+1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_Set_Pos
        MOVS     R8,#+0
        B.N      ??LCD_P8x16Str_2
//  242   }
//  243 }
??LCD_P8x16Str_3:
        POP      {R0,R4-R9,PC}    ;; return
//  244 //Êä³öºº×Ö×Ö·û´®

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  245 void LCD_P14x16Str(uint8 x,uint8 y,uint8 ch[])
//  246 {
LCD_P14x16Str:
        PUSH     {R3-R9,LR}
        MOVS     R6,R0
        MOVS     R4,R1
        MOVS     R5,R2
//  247 	uint8 wm=0,ii = 0;
        MOVS     R9,#+0
        MOVS     R7,#+0
//  248 	uint16 adder=1; 
        MOVS     R8,#+1
        B.N      ??LCD_P14x16Str_0
//  249 	
//  250 	while(ch[ii] != '\0')
//  251 	{
//  252   	wm = 0;
//  253   	adder = 1;
//  254   	while(F14x16_Idx[wm] > 127)
//  255   	{
//  256   		if(F14x16_Idx[wm] == ch[ii])
//  257   		{
//  258   			if(F14x16_Idx[wm + 1] == ch[ii + 1])
//  259   			{
//  260   				adder = wm * 14;
//  261   				break;
//  262   			}
//  263   		}
//  264   		wm += 2;			
//  265   	}
//  266   	if(x>118){x=0;y++;}
//  267   	LCD_Set_Pos(x , y); 
//  268   	if(adder != 1)// ÏÔÊ¾ºº×Ö					
//  269   	{
//  270   		LCD_Set_Pos(x , y);
//  271   		for(wm = 0;wm < 14;wm++)               
//  272   		{
//  273   			LCD_WrDat(F14x16[adder]);	
//  274   			adder += 1;
//  275   		}      
//  276   		LCD_Set_Pos(x,y + 1); 
//  277   		for(wm = 0;wm < 14;wm++)          
//  278   		{
//  279   			LCD_WrDat(F14x16[adder]);
//  280   			adder += 1;
//  281   		}   		
//  282   	}
//  283   	else			  //ÏÔÊ¾¿Õ°××Ö·û			
//  284   	{
//  285   		ii += 1;
//  286       LCD_Set_Pos(x,y);
//  287   		for(wm = 0;wm < 16;wm++)
//  288   		{
//  289   				LCD_WrDat(0);
//  290   		}
//  291   		LCD_Set_Pos(x,y + 1);
//  292   		for(wm = 0;wm < 16;wm++)
//  293   		{   		
//  294   				LCD_WrDat(0);	
??LCD_P14x16Str_1:
        MOVS     R0,#+0
        BL       LCD_WrDat
//  295   		}
        ADDS     R9,R9,#+1
??LCD_P14x16Str_2:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+16
        BLT.N    ??LCD_P14x16Str_1
//  296   	}
//  297   	x += 14;
??LCD_P14x16Str_3:
        ADDS     R6,R6,#+14
//  298   	ii += 2;
        ADDS     R7,R7,#+2
??LCD_P14x16Str_0:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDRB     R0,[R7, R5]
        CMP      R0,#+0
        BEQ.W    ??LCD_P14x16Str_4
        MOVS     R9,#+0
        MOVS     R8,#+1
        B.N      ??LCD_P14x16Str_5
??LCD_P14x16Str_6:
        ADDS     R9,R9,#+2
??LCD_P14x16Str_5:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        LDR.N    R0,??DataTable5_9
        LDRB     R0,[R9, R0]
        CMP      R0,#+128
        BLT.N    ??LCD_P14x16Str_7
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        LDR.N    R0,??DataTable5_9
        LDRB     R0,[R9, R0]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDRB     R1,[R7, R5]
        CMP      R0,R1
        BNE.N    ??LCD_P14x16Str_6
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        LDR.N    R0,??DataTable5_9
        ADDS     R0,R9,R0
        LDRB     R0,[R0, #+1]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        ADDS     R1,R7,R5
        LDRB     R1,[R1, #+1]
        CMP      R0,R1
        BNE.N    ??LCD_P14x16Str_6
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        MOVS     R0,#+14
        SMULBB   R8,R9,R0
??LCD_P14x16Str_7:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+119
        BLT.N    ??LCD_P14x16Str_8
        MOVS     R6,#+0
        ADDS     R4,R4,#+1
??LCD_P14x16Str_8:
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_Set_Pos
        UXTH     R8,R8            ;; ZeroExt  R8,R8,#+16,#+16
        CMP      R8,#+1
        BEQ.N    ??LCD_P14x16Str_9
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_Set_Pos
        MOVS     R9,#+0
        B.N      ??LCD_P14x16Str_10
??LCD_P14x16Str_11:
        UXTH     R8,R8            ;; ZeroExt  R8,R8,#+16,#+16
        LDR.N    R0,??DataTable5_10
        LDRB     R0,[R8, R0]
        BL       LCD_WrDat
        ADDS     R8,R8,#+1
        ADDS     R9,R9,#+1
??LCD_P14x16Str_10:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+14
        BLT.N    ??LCD_P14x16Str_11
        ADDS     R1,R4,#+1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_Set_Pos
        MOVS     R9,#+0
??LCD_P14x16Str_12:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+14
        BGE.N    ??LCD_P14x16Str_3
        UXTH     R8,R8            ;; ZeroExt  R8,R8,#+16,#+16
        LDR.N    R0,??DataTable5_10
        LDRB     R0,[R8, R0]
        BL       LCD_WrDat
        ADDS     R8,R8,#+1
        ADDS     R9,R9,#+1
        B.N      ??LCD_P14x16Str_12
??LCD_P14x16Str_9:
        ADDS     R7,R7,#+1
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_Set_Pos
        MOVS     R9,#+0
        B.N      ??LCD_P14x16Str_13
??LCD_P14x16Str_14:
        MOVS     R0,#+0
        BL       LCD_WrDat
        ADDS     R9,R9,#+1
??LCD_P14x16Str_13:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+16
        BLT.N    ??LCD_P14x16Str_14
        ADDS     R1,R4,#+1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_Set_Pos
        MOVS     R9,#+0
        B.N      ??LCD_P14x16Str_2
//  299 	}
//  300 }
??LCD_P14x16Str_4:
        POP      {R0,R4-R9,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     0x400ff080

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_2:
        DC32     0x4004b04c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_3:
        DC32     0x4004b048

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_4:
        DC32     0x4004b044

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_5:
        DC32     0x4004b040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_6:
        DC32     0x400ff094

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_7:
        DC32     F6x8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_8:
        DC32     F8X16

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_9:
        DC32     F14x16_Idx

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_10:
        DC32     F14x16
//  301 //Êä³öºº×ÖºÍ×Ö·û»ìºÏ×Ö·û´®

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  302 void LCD_Print(uint8 x, uint8 y, uint8 ch[])
//  303 {
LCD_Print:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  304 	uint8 ch2[3];
//  305 	uint8 ii=0;        
        MOVS     R7,#+0
        B.N      ??LCD_Print_0
//  306 	while(ch[ii] != '\0')
//  307 	{
//  308 		if(ch[ii] > 127)
//  309 		{
//  310 			ch2[0] = ch[ii];
??LCD_Print_1:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDRB     R0,[R7, R6]
        STRB     R0,[SP, #+0]
//  311 	 		ch2[1] = ch[ii + 1];
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        ADDS     R0,R7,R6
        LDRB     R0,[R0, #+1]
        STRB     R0,[SP, #+1]
//  312 			ch2[2] = '\0';			//ºº×ÖÎªÁ½¸ö×Ö½Ú
        MOVS     R0,#+0
        STRB     R0,[SP, #+2]
//  313 			LCD_P14x16Str(x , y, ch2);	//ÏÔÊ¾ºº×Ö
        ADD      R2,SP,#+0
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_P14x16Str
//  314 			x += 14;
        ADDS     R4,R4,#+14
//  315 			ii += 2;
        ADDS     R7,R7,#+2
//  316 		}
??LCD_Print_0:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDRB     R0,[R7, R6]
        CMP      R0,#+0
        BEQ.N    ??LCD_Print_2
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDRB     R0,[R7, R6]
        CMP      R0,#+128
        BGE.N    ??LCD_Print_1
//  317 		else
//  318 		{
//  319 			ch2[0] = ch[ii];	
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDRB     R0,[R7, R6]
        STRB     R0,[SP, #+0]
//  320 			ch2[1] = '\0';			//×ÖÄ¸Õ¼Ò»¸ö×Ö½Ú
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
//  321 			LCD_P8x16Str(x , y , ch2);	//ÏÔÊ¾×ÖÄ¸
        ADD      R2,SP,#+0
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_P8x16Str
//  322 			x += 8;
        ADDS     R4,R4,#+8
//  323 			ii+= 1;
        ADDS     R7,R7,#+1
        B.N      ??LCD_Print_0
//  324 		}
//  325 	}
//  326 } 
??LCD_Print_2:
        POP      {R0,R4-R7,PC}    ;; return
//  327 
//  328 //==============================================================
//  329 //º¯ÊýÃû£º void Draw_BMP(uint8 x,uint8 y)
//  330 //¹¦ÄÜÃèÊö£ºÏÔÊ¾BMPÍ¼Æ¬128¡Á64
//  331 //²ÎÊý£ºÆðÊ¼µã×ø±ê(x,y),xµÄ·¶Î§0¡«127£¬yÎªÒ³µÄ·¶Î§0¡«7
//  332 //·µ»Ø£ºÎÞ
//  333 //==============================================================

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  334 void Draw_BMP(uint8 x0,uint8 y0,uint8 x1,uint8 y1,uint8 const bmp[])
//  335 { 	
Draw_BMP:
        PUSH     {R4-R10,LR}
        MOVS     R4,R0
        MOVS     R5,R2
        MOVS     R6,R3
//  336   uint16 ii=0;
        MOVS     R7,#+0
//  337   uint8 x,y;
//  338   
//  339   if(y1%8==0) y=y1/8;      
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R0,#+8
        SDIV     R2,R6,R0
        MLS      R2,R2,R0,R6
        CMP      R2,#+0
        BNE.N    ??Draw_BMP_0
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R0,#+8
        SDIV     R10,R6,R0
        B.N      ??Draw_BMP_1
//  340   else y=y1/8+1;
??Draw_BMP_0:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R0,#+8
        SDIV     R0,R6,R0
        ADDS     R10,R0,#+1
//  341 	
//  342   for(y=y0;y<=y1;y++)
??Draw_BMP_1:
        MOV      R10,R1
        LDR      R8,[SP, #+32]
        B.N      ??Draw_BMP_2
//  343   {
//  344     LCD_Set_Pos(x0,y);				
//  345     for(x=x0;x<=x1;x++)
//  346     {  
//  347       LCD_WrDat(bmp[ii++]);	    	
??Draw_BMP_3:
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R8]
        BL       LCD_WrDat
        ADDS     R7,R7,#+1
//  348     }
        ADDS     R9,R9,#+1
??Draw_BMP_4:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R5,R9
        BCS.N    ??Draw_BMP_3
        ADDS     R10,R10,#+1
??Draw_BMP_2:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        CMP      R6,R10
        BCC.N    ??Draw_BMP_5
        MOV      R1,R10
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_Set_Pos
        MOV      R9,R4
        B.N      ??Draw_BMP_4
//  349   }
//  350 }
??Draw_BMP_5:
        POP      {R4-R10,PC}      ;; return

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
//     8 bytes in section .bss
// 1 924 bytes in section .text
// 
// 1 924 bytes of CODE memory
//     8 bytes of DATA memory
//
//Errors: none
//Warnings: 1
