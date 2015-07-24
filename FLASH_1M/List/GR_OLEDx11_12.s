///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     16/Aug/2014  22:15:42 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\pc\Desktop\继续做的事情\四旋翼飞行器 -         /
//                    TM4123G\代码\遥控器\ShunAn2\GR_OLEDx11_12.c             /
//    Command line =  "C:\Users\pc\Desktop\继续做的事情\四旋翼飞行器 -        /
//                    TM4123G\代码\遥控器\ShunAn2\GR_OLEDx11_12.c" -D IAR -D  /
//                    ShunAn2 -lCN "C:\Users\pc\Desktop\继续做的事情\四旋翼飞 /
//                    行器 - TM4123G\代码\遥控器\FLASH_1M\List\" -lB          /
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
//                    TM4123G\代码\遥控器\FLASH_1M\List\GR_OLEDx11_12.s       /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN CCD1
        EXTERN CCD2
        EXTERN Con
        EXTERN Enable
        EXTERN Encoder
        EXTERN F14x16
        EXTERN F14x16_Idx
        EXTERN F6x8
        EXTERN F8X16
        EXTERN Give
        EXTERN Gyroscope
        EXTERN Infrared
        EXTERN Menu0_SpeedCoef
        EXTERN Menu10_ExposureTime
        EXTERN Menu11_BlueTooth
        EXTERN Menu12_Battery
        EXTERN Menu1_renzi
        EXTERN Menu2_zhangai
        EXTERN Menu3_StartLine
        EXTERN Menu4_PoDao
        EXTERN Menu5_AllDark
        EXTERN Menu6_TestRun
        EXTERN Menu7_MotorEnable
        EXTERN Menu8_ServerEnable
        EXTERN Menu9_ServerTest
        EXTERN Status0
        EXTERN Status1
        EXTERN Status11
        EXTERN Status12
        EXTERN Status13
        EXTERN Status14
        EXTERN Status2
        EXTERN Status21
        EXTERN Status22
        EXTERN Status3
        EXTERN Status31
        EXTERN Status32
        EXTERN Status4
        EXTERN Status41
        EXTERN Status42
        EXTERN Status51
        EXTERN Status52
        EXTERN Status61
        EXTERN Status71
        EXTERN Status81
        EXTERN Trk
        EXTERN Unable
        EXTERN __aeabi_cfcmpeq
        EXTERN __aeabi_cfrcmple
        EXTERN __aeabi_f2iz
        EXTERN __aeabi_f2uiz
        EXTERN __aeabi_fdiv
        EXTERN __aeabi_fmul
        EXTERN __aeabi_memclr4
        EXTERN __aeabi_ui2f

        PUBLIC GR_OLEDMenuDisplay
        PUBLIC OLED
        PUBLIC OLED2_CLS
        PUBLIC OLED2_Draw_BMP
        PUBLIC OLED2_Fill
        PUBLIC OLED2_Init
        PUBLIC OLED2_P6x8Str
        PUBLIC OLED2_PutPagePixel
        PUBLIC OLED2_PutPixel
        PUBLIC OLED2_Set_Pos
        PUBLIC OLED2_ShowNumber
        PUBLIC OLED2_WrCmd
        PUBLIC OLED2_WrDat
        PUBLIC OLED2_showBarCode
        PUBLIC OLED2_showCCD
        PUBLIC OLED_CLS
        PUBLIC OLED_Draw_BMP
        PUBLIC OLED_Fill
        PUBLIC OLED_Init
        PUBLIC OLED_P14x16Str
        PUBLIC OLED_P6x8Str
        PUBLIC OLED_P8x16Str
        PUBLIC OLED_Print
        PUBLIC OLED_PutPagePixel
        PUBLIC OLED_PutPixel
        PUBLIC OLED_Set_Pos
        PUBLIC OLED_ShowNumber
        PUBLIC OLED_ShowWave
        PUBLIC OLED_WrCmd
        PUBLIC OLED_WrDat
        PUBLIC OLED_showCCD

// C:\Users\pc\Desktop\继续做的事情\四旋翼飞行器 - TM4123G\代码\遥控器\ShunAn2\GR_OLEDx11_12.c
//    1 #include "GR_OLEDx11_12.h"
//    2 #include "BlessedAlien.h"
//    3 
//    4 #define XLevelL		0x00
//    5 #define XLevelH		0x10
//    6 #define XLevel		((XLevelH&0x0F)*16+XLevelL)
//    7 #define Max_Column	128
//    8 #define Max_Row		  64
//    9 #define	Brightness	0xCF 
//   10 
//   11 
//   12 #define X_WIDTH 128
//   13 #define Y_WIDTH 64
//   14 //======================================

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   15 OledInformation OLED = {0};
OLED:
        DS8 8
//   16 
//   17 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   18 void OLED_WrDat(uint8 data)
//   19 {
//   20   uint8 i=8;
OLED_WrDat:
        MOVS     R1,#+8
//   21   //uint8 j=0;
//   22 
//   23   GPIOD_PDOR |= (1<<13);//DC=1
        LDR.W    R2,??DataTable6  ;; 0x400ff0c0
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x2000
        LDR.W    R3,??DataTable6  ;; 0x400ff0c0
        STR      R2,[R3, #+0]
//   24   //for(j=0;j<=1;j++);//延时
//   25   GPIOD_PDOR &= ~(1<<7);//CLK/D0=0
        LDR.W    R2,??DataTable6  ;; 0x400ff0c0
        LDR      R2,[R2, #+0]
        BICS     R2,R2,#0x80
        LDR.W    R3,??DataTable6  ;; 0x400ff0c0
        STR      R2,[R3, #+0]
        B.N      ??OLED_WrDat_0
//   26   //for(j=0;j<=1;j++);//延时
//   27   while(i--)
//   28   {
//   29     if(data&0x80){GPIOD_PDOR |= (1<<6);}//SDA/D1=1
//   30     else{GPIOD_PDOR &= ~(1<<6);}//SDA/D1=0
??OLED_WrDat_1:
        LDR.W    R2,??DataTable6  ;; 0x400ff0c0
        LDR      R2,[R2, #+0]
        BICS     R2,R2,#0x40
        LDR.W    R3,??DataTable6  ;; 0x400ff0c0
        STR      R2,[R3, #+0]
//   31     //for(j=0;j<=1;j++);//延时
//   32     GPIOD_PDOR |= (1<<7);//CLK/D0=1
??OLED_WrDat_2:
        LDR.W    R2,??DataTable6  ;; 0x400ff0c0
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x80
        LDR.W    R3,??DataTable6  ;; 0x400ff0c0
        STR      R2,[R3, #+0]
//   33     //for(j=0;j<=1;j++);//延时            
//   34     GPIOD_PDOR &= ~(1<<7);//CLK/D0=0  
        LDR.W    R2,??DataTable6  ;; 0x400ff0c0
        LDR      R2,[R2, #+0]
        BICS     R2,R2,#0x80
        LDR.W    R3,??DataTable6  ;; 0x400ff0c0
        STR      R2,[R3, #+0]
//   35     data<<=1;    
        LSLS     R0,R0,#+1
??OLED_WrDat_0:
        MOVS     R2,R1
        SUBS     R1,R2,#+1
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BEQ.N    ??OLED_WrDat_3
        LSLS     R2,R0,#+24
        BPL.N    ??OLED_WrDat_1
        LDR.W    R2,??DataTable6  ;; 0x400ff0c0
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x40
        LDR.W    R3,??DataTable6  ;; 0x400ff0c0
        STR      R2,[R3, #+0]
        B.N      ??OLED_WrDat_2
//   36   }
//   37 }
??OLED_WrDat_3:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   38 void OLED_WrCmd(uint8 cmd)
//   39 {
//   40   uint8 i=8;
OLED_WrCmd:
        MOVS     R1,#+8
//   41   //uint8 j=0;
//   42 	
//   43   GPIOD_PDOR &= ~(1<<13);//DC=0
        LDR.W    R2,??DataTable6  ;; 0x400ff0c0
        LDR      R2,[R2, #+0]
        BICS     R2,R2,#0x2000
        LDR.W    R3,??DataTable6  ;; 0x400ff0c0
        STR      R2,[R3, #+0]
//   44   //for(j=0;j<=1;j++);//延时
//   45   GPIOD_PDOR &= ~(1<<7);//CLK/D0=0
        LDR.W    R2,??DataTable6  ;; 0x400ff0c0
        LDR      R2,[R2, #+0]
        BICS     R2,R2,#0x80
        LDR.W    R3,??DataTable6  ;; 0x400ff0c0
        STR      R2,[R3, #+0]
        B.N      ??OLED_WrCmd_0
//   46   //for(j=0;j<=1;j++);//延时
//   47   
//   48   while(i--)
//   49   {
//   50     if(cmd&0x80){GPIOD_PDOR |= (1<<6);}//SDA/D1=1
//   51     else{GPIOD_PDOR &= ~(1<<6);}//SDA/D1=0
??OLED_WrCmd_1:
        LDR.W    R2,??DataTable6  ;; 0x400ff0c0
        LDR      R2,[R2, #+0]
        BICS     R2,R2,#0x40
        LDR.W    R3,??DataTable6  ;; 0x400ff0c0
        STR      R2,[R3, #+0]
//   52     //for(j=0;j<=1;j++);//延时
//   53     GPIOD_PDOR |= (1<<7);//CLK/D0=1
??OLED_WrCmd_2:
        LDR.W    R2,??DataTable6  ;; 0x400ff0c0
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x80
        LDR.W    R3,??DataTable6  ;; 0x400ff0c0
        STR      R2,[R3, #+0]
//   54     //for(j=0;j<=1;j++);//延时
//   55     GPIOD_PDOR &= ~(1<<7);//CLK/D0=0   
        LDR.W    R2,??DataTable6  ;; 0x400ff0c0
        LDR      R2,[R2, #+0]
        BICS     R2,R2,#0x80
        LDR.W    R3,??DataTable6  ;; 0x400ff0c0
        STR      R2,[R3, #+0]
//   56     cmd<<=1;  
        LSLS     R0,R0,#+1
??OLED_WrCmd_0:
        MOVS     R2,R1
        SUBS     R1,R2,#+1
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BEQ.N    ??OLED_WrCmd_3
        LSLS     R2,R0,#+24
        BPL.N    ??OLED_WrCmd_1
        LDR.W    R2,??DataTable6  ;; 0x400ff0c0
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x40
        LDR.W    R3,??DataTable6  ;; 0x400ff0c0
        STR      R2,[R3, #+0]
        B.N      ??OLED_WrCmd_2
//   57   }
//   58 
//   59 }
??OLED_WrCmd_3:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   60 void OLED_Set_Pos(uint8 x, uint8 y)
//   61 { 
OLED_Set_Pos:
        PUSH     {R4,LR}
        MOVS     R4,R0
//   62   OLED_WrCmd(0xb0+y);
        SUBS     R0,R1,#+80
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WrCmd
//   63   OLED_WrCmd(((x&0xf0)>>4)|0x10);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSRS     R0,R4,#+4
        ORRS     R0,R0,#0x10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WrCmd
//   64   OLED_WrCmd((x&0x0f)|0x01); 
        ANDS     R0,R4,#0xF
        ORRS     R0,R0,#0x1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WrCmd
//   65 } 
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   66 void OLED_Fill(uint8 bmp_data)
//   67 {
OLED_Fill:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
//   68   uint8 y,x;	
//   69   for(y=0;y<8;y++)
        MOVS     R5,#+0
        B.N      ??OLED_Fill_0
//   70   {
//   71     OLED_WrCmd(0xb0+y);
//   72     OLED_WrCmd(0x01);
//   73     OLED_WrCmd(0x10);
//   74     for(x=0;x<X_WIDTH;x++)
//   75       OLED_WrDat(bmp_data);
??OLED_Fill_1:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WrDat
        ADDS     R6,R6,#+1
??OLED_Fill_2:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+128
        BLT.N    ??OLED_Fill_1
        ADDS     R5,R5,#+1
??OLED_Fill_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+8
        BGE.N    ??OLED_Fill_3
        SUBS     R0,R5,#+80
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WrCmd
        MOVS     R0,#+1
        BL       OLED_WrCmd
        MOVS     R0,#+16
        BL       OLED_WrCmd
        MOVS     R6,#+0
        B.N      ??OLED_Fill_2
//   76   }
//   77 }
??OLED_Fill_3:
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   78 void OLED_CLS(void)
//   79 {
OLED_CLS:
        PUSH     {R3-R5,LR}
//   80   uint8 y,x;	
//   81   for(y=0;y<8;y++)
        MOVS     R4,#+0
        B.N      ??OLED_CLS_0
//   82   {
//   83     OLED_WrCmd(0xb0+y);
//   84     OLED_WrCmd(0x01);
//   85     OLED_WrCmd(0x10); 
//   86     for(x=0;x<X_WIDTH;x++)
//   87       OLED_WrDat(0);
??OLED_CLS_1:
        MOVS     R0,#+0
        BL       OLED_WrDat
        ADDS     R5,R5,#+1
??OLED_CLS_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+128
        BLT.N    ??OLED_CLS_1
        ADDS     R4,R4,#+1
??OLED_CLS_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+8
        BGE.N    ??OLED_CLS_3
        SUBS     R0,R4,#+80
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WrCmd
        MOVS     R0,#+1
        BL       OLED_WrCmd
        MOVS     R0,#+16
        BL       OLED_WrCmd
        MOVS     R5,#+0
        B.N      ??OLED_CLS_2
//   88   }
//   89 }
??OLED_CLS_3:
        POP      {R0,R4,R5,PC}    ;; return
//   90 
//   91 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   92 void OLED_Init(void)        
//   93 {            
OLED_Init:
        PUSH     {R7,LR}
//   94   SIM_SCGC5 |= 0x00001000u;//使能PORTD时钟 
        LDR.W    R0,??DataTable6_1  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000
        LDR.W    R1,??DataTable6_1  ;; 0x40048038
        STR      R0,[R1, #+0]
//   95   PORTD_PCR13 |= 0x00000100u;//引脚复用选择普通IO(//DC-A24-DC)
        LDR.W    R0,??DataTable6_2  ;; 0x4004c034
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.W    R1,??DataTable6_2  ;; 0x4004c034
        STR      R0,[R1, #+0]
//   96   PORTD_PCR8 |= 0x00000100u;//引脚复用选择普通IO(//RST-A25-RST)
        LDR.W    R0,??DataTable6_3  ;; 0x4004c020
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.W    R1,??DataTable6_3  ;; 0x4004c020
        STR      R0,[R1, #+0]
//   97   PORTD_PCR6 |= 0x00000100u;//引脚复用选择普通IO(//D1-A26-SDA)
        LDR.W    R0,??DataTable6_4  ;; 0x4004c018
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.W    R1,??DataTable6_4  ;; 0x4004c018
        STR      R0,[R1, #+0]
//   98   PORTD_PCR7 |= 0x00000100u;//引脚复用选择普通IO(//CLK/D0-A27-SCL)
        LDR.W    R0,??DataTable6_5  ;; 0x4004c01c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.W    R1,??DataTable6_5  ;; 0x4004c01c
        STR      R0,[R1, #+0]
//   99         
//  100   GPIOD_PDDR |= (1<<13);//引脚选择输出方向
        LDR.W    R0,??DataTable6_6  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000
        LDR.W    R1,??DataTable6_6  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  101   GPIOD_PDDR |= (1<<8);//引脚选择输出方向
        LDR.W    R0,??DataTable6_6  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.W    R1,??DataTable6_6  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  102   GPIOD_PDDR |= (1<<6);//引脚选择输出方向
        LDR.W    R0,??DataTable6_6  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40
        LDR.W    R1,??DataTable6_6  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  103   GPIOD_PDDR |= (1<<7);//引脚选择输出方向
        LDR.W    R0,??DataTable6_6  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.W    R1,??DataTable6_6  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  104         
//  105   GPIOD_PDOR |= (1<<13);//PTA24=1 DC=1
        LDR.W    R0,??DataTable6  ;; 0x400ff0c0
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000
        LDR.W    R1,??DataTable6  ;; 0x400ff0c0
        STR      R0,[R1, #+0]
//  106   GPIOD_PDOR &= ~(1<<8);//PTA25=0 RST=0
        LDR.W    R0,??DataTable6  ;; 0x400ff0c0
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x100
        LDR.W    R1,??DataTable6  ;; 0x400ff0c0
        STR      R0,[R1, #+0]
//  107   GPIOD_PDOR |= (1<<6);//PTA26=1 SDA/D1=1
        LDR.W    R0,??DataTable6  ;; 0x400ff0c0
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40
        LDR.W    R1,??DataTable6  ;; 0x400ff0c0
        STR      R0,[R1, #+0]
//  108   GPIOD_PDOR |= (1<<7);//PTA27=1 CLK/D0=1
        LDR.W    R0,??DataTable6  ;; 0x400ff0c0
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.W    R1,??DataTable6  ;; 0x400ff0c0
        STR      R0,[R1, #+0]
//  109 
//  110   for(unsigned short int i = 0;i<1000;i++);//延时
        MOVS     R0,#+0
        B.N      ??OLED_Init_0
??OLED_Init_1:
        ADDS     R0,R0,#+1
??OLED_Init_0:
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+1000
        BLT.N    ??OLED_Init_1
//  111   //DELAY_MS(50);
//  112   GPIOD_PDOR |= (1<<8);//PTA25=1 RST=1
        LDR.W    R0,??DataTable6  ;; 0x400ff0c0
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.W    R1,??DataTable6  ;; 0x400ff0c0
        STR      R0,[R1, #+0]
//  113 
//  114   OLED_WrCmd(0xae);//--turn off oled panel
        MOVS     R0,#+174
        BL       OLED_WrCmd
//  115   OLED_WrCmd(0x00);//---set low column address
        MOVS     R0,#+0
        BL       OLED_WrCmd
//  116   OLED_WrCmd(0x10);//---set high column address
        MOVS     R0,#+16
        BL       OLED_WrCmd
//  117   OLED_WrCmd(0x40);//--set start line address  Set Mapping RAM Display Start Line (0x00~0x3F)
        MOVS     R0,#+64
        BL       OLED_WrCmd
//  118   OLED_WrCmd(0x81);//--set contrast control register
        MOVS     R0,#+129
        BL       OLED_WrCmd
//  119   OLED_WrCmd(0xcf); // Set SEG Output Current Brightness
        MOVS     R0,#+207
        BL       OLED_WrCmd
//  120   OLED_WrCmd(0xa1);//--Set SEG/Column Mapping     0xa0左右反置 0xa1正常
        MOVS     R0,#+161
        BL       OLED_WrCmd
//  121   OLED_WrCmd(0xc8);//Set COM/Row Scan Direction   0xc0上下反置 0xc8正常
        MOVS     R0,#+200
        BL       OLED_WrCmd
//  122   OLED_WrCmd(0xa6);//--set normal display
        MOVS     R0,#+166
        BL       OLED_WrCmd
//  123   OLED_WrCmd(0xa8);//--set multiplex ratio(1 to 64)
        MOVS     R0,#+168
        BL       OLED_WrCmd
//  124   OLED_WrCmd(0x3f);//--1/64 duty
        MOVS     R0,#+63
        BL       OLED_WrCmd
//  125   OLED_WrCmd(0xd3);//-set display offset	Shift Mapping RAM Counter (0x00~0x3F)
        MOVS     R0,#+211
        BL       OLED_WrCmd
//  126   OLED_WrCmd(0x00);//-not offset
        MOVS     R0,#+0
        BL       OLED_WrCmd
//  127   OLED_WrCmd(0xd5);//--set display clock divide ratio/oscillator frequency
        MOVS     R0,#+213
        BL       OLED_WrCmd
//  128   OLED_WrCmd(0x80);//--set divide ratio, Set Clock as 100 Frames/Sec
        MOVS     R0,#+128
        BL       OLED_WrCmd
//  129   OLED_WrCmd(0xd9);//--set pre-charge period
        MOVS     R0,#+217
        BL       OLED_WrCmd
//  130   OLED_WrCmd(0xf1);//Set Pre-Charge as 15 Clocks & Discharge as 1 Clock
        MOVS     R0,#+241
        BL       OLED_WrCmd
//  131   OLED_WrCmd(0xda);//--set com pins hardware configuration
        MOVS     R0,#+218
        BL       OLED_WrCmd
//  132   OLED_WrCmd(0x12);
        MOVS     R0,#+18
        BL       OLED_WrCmd
//  133   OLED_WrCmd(0xdb);//--set vcomh
        MOVS     R0,#+219
        BL       OLED_WrCmd
//  134   OLED_WrCmd(0x40);//Set VCOM Deselect Level
        MOVS     R0,#+64
        BL       OLED_WrCmd
//  135   OLED_WrCmd(0x20);//-Set Page Addressing Mode (0x00/0x01/0x02)
        MOVS     R0,#+32
        BL       OLED_WrCmd
//  136   OLED_WrCmd(0x02);//
        MOVS     R0,#+2
        BL       OLED_WrCmd
//  137   OLED_WrCmd(0x8d);//--set Charge Pump enable/disable
        MOVS     R0,#+141
        BL       OLED_WrCmd
//  138   OLED_WrCmd(0x14);//--set(0x10) disable
        MOVS     R0,#+20
        BL       OLED_WrCmd
//  139   OLED_WrCmd(0xa4);// Disable Entire Display On (0xa4/0xa5)
        MOVS     R0,#+164
        BL       OLED_WrCmd
//  140   OLED_WrCmd(0xa6);// Disable Inverse Display On (0xa6/a7) 
        MOVS     R0,#+166
        BL       OLED_WrCmd
//  141   OLED_WrCmd(0xaf);//--turn on oled panel
        MOVS     R0,#+175
        BL       OLED_WrCmd
//  142   OLED_Fill(0x00);  //初始清屏
        MOVS     R0,#+0
        BL       OLED_Fill
//  143   OLED_Set_Pos(0,0);  
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED_Set_Pos
//  144 	
//  145 } 
        POP      {R0,PC}          ;; return
//  146 
//  147 
//  148 //==============================================================
//  149 //函数名： void OLED_PutPixel(uint8 x,uint8 y)
//  150 //功能描述：绘制一个点（x,y）
//  151 //参数：真实坐标值(x,y),x的范围0～127，y的范围0～63
//  152 //返回：无
//  153 //==============================================================

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  154 void OLED_PutPixel(uint8 x,uint8 y)
//  155 {
OLED_PutPixel:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//  156 	uint8 data1;  //data1当前点的数据 
//  157 	data1 = 0x01<<(y%8); 	
        MOVS     R0,#+1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R2,#+8
        SDIV     R3,R1,R2
        MLS      R3,R3,R2,R1
        LSLS     R5,R0,R3
//  158 	OLED_WrCmd(0xb0+(y>>3));//设置页号，y右移3位相当于除以8，即由行号得出页号
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSRS     R0,R1,#+3
        SUBS     R0,R0,#+80
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WrCmd
//  159 	OLED_WrCmd(((x&0xf0)>>4)|0x10);//设置列号的高4位
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSRS     R0,R4,#+4
        ORRS     R0,R0,#0x10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WrCmd
//  160 	OLED_WrCmd(x&0x0f);//设置列号的低4位
        ANDS     R0,R4,#0xF
        BL       OLED_WrCmd
//  161 	OLED_WrDat(data1); 	 	
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WrDat
//  162 }
        POP      {R0,R4,R5,PC}    ;; return
//  163 //==============================================================
//  164 //函数名： void OLED_PutPagePixel(uint8 x,uint8 y,uint8 data1)
//  165 //功能描述：填充一个扇区（x,y）
//  166 //参数：真实坐标值(x,y),x的范围0～127，y的范围0～63
//  167 //返回：无
//  168 //==============================================================

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  169 void OLED_PutPagePixel(uint8 x,uint8 y,uint8 data1)
//  170 { 
OLED_PutPagePixel:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R2
//  171 	OLED_WrCmd(0xb0+(y>>3));//设置页号，y右移3位相当于除以8，即由行号得出页号
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSRS     R0,R1,#+3
        SUBS     R0,R0,#+80
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WrCmd
//  172 	OLED_WrCmd(((x&0xf0)>>4)|0x10);//设置列号的高4位
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSRS     R0,R4,#+4
        ORRS     R0,R0,#0x10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WrCmd
//  173 	OLED_WrCmd(x&0x0f);//设置列号的低4位
        ANDS     R0,R4,#0xF
        BL       OLED_WrCmd
//  174 	OLED_WrDat(data1); 	 	
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WrDat
//  175 }
        POP      {R0,R4,R5,PC}    ;; return
//  176 //==============================================================
//  177 //函数名：OLED_P6x8Str(uint8 x,uint8 y,uint8 *p)
//  178 //功能描述：写入一组标准ASCII字符串
//  179 //参数：显示的位置（x,y），y为页范围0～7，要显示的字符串
//  180 //返回：无
//  181 //==============================================================  

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  182 void OLED_P6x8Str(uint8 x,uint8 y,uint8 ch[])
//  183 {
OLED_P6x8Str:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  184   uint8 c=0,i=0,j=0;      
        MOVS     R7,#+0
        MOVS     R8,#+0
        MOVS     R9,#+0
        B.N      ??OLED_P6x8Str_0
//  185   while (ch[j]!='\0')
//  186   {    
//  187     c =ch[j]-32;
//  188     if(x>126){x=0;y++;}
//  189     OLED_Set_Pos(x,y);    
//  190   	for(i=0;i<6;i++)     
//  191   	  OLED_WrDat(F6x8[c][i]);  
??OLED_P6x8Str_1:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOVS     R0,#+6
        LDR.W    R1,??DataTable8
        MLA      R0,R0,R7,R1
        LDRB     R0,[R8, R0]
        BL       OLED_WrDat
        ADDS     R8,R8,#+1
??OLED_P6x8Str_2:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+6
        BLT.N    ??OLED_P6x8Str_1
//  192   	x+=6;
        ADDS     R4,R4,#+6
//  193   	j++;
        ADDS     R9,R9,#+1
??OLED_P6x8Str_0:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        LDRB     R0,[R9, R6]
        CMP      R0,#+0
        BEQ.N    ??OLED_P6x8Str_3
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        LDRB     R0,[R9, R6]
        SUBS     R7,R0,#+32
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+127
        BLT.N    ??OLED_P6x8Str_4
        MOVS     R4,#+0
        ADDS     R5,R5,#+1
??OLED_P6x8Str_4:
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_Set_Pos
        MOVS     R8,#+0
        B.N      ??OLED_P6x8Str_2
//  194   }
//  195 }
??OLED_P6x8Str_3:
        POP      {R0,R4-R9,PC}    ;; return
//  196 //==============================================================
//  197 //函数名：OLED_P8x16Str(uint8 x,uint8 y,uint8 *p)
//  198 //功能描述：写入一组标准ASCII字符串
//  199 //参数：显示的位置（x,y），y为页范围0～7，要显示的字符串
//  200 //返回：无
//  201 //==============================================================  

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  202 void OLED_P8x16Str(uint8 x,uint8 y,uint8 ch[])
//  203 {
OLED_P8x16Str:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  204   uint8 c=0,i=0,j=0;
        MOVS     R7,#+0
        MOVS     R8,#+0
        MOVS     R9,#+0
        B.N      ??OLED_P8x16Str_0
//  205         
//  206   while (ch[j]!='\0')
//  207   {    
//  208     c =ch[j]-32;
//  209     if(x>120){x=0;y++;}
//  210     OLED_Set_Pos(x,y);    
//  211   	for(i=0;i<8;i++)     
//  212   	  OLED_WrDat(F8X16[c*16+i]);
//  213   	OLED_Set_Pos(x,y+1);    
//  214   	for(i=0;i<8;i++)     
//  215   	  OLED_WrDat(F8X16[c*16+i+8]);  
??OLED_P8x16Str_1:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LSLS     R0,R7,#+4
        UXTAB    R0,R0,R8
        LDR.W    R1,??DataTable9
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+8]
        BL       OLED_WrDat
        ADDS     R8,R8,#+1
??OLED_P8x16Str_2:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+8
        BLT.N    ??OLED_P8x16Str_1
//  216   	x+=8;
        ADDS     R4,R4,#+8
//  217   	j++;
        ADDS     R9,R9,#+1
??OLED_P8x16Str_0:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        LDRB     R0,[R9, R6]
        CMP      R0,#+0
        BEQ.N    ??OLED_P8x16Str_3
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        LDRB     R0,[R9, R6]
        SUBS     R7,R0,#+32
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+121
        BLT.N    ??OLED_P8x16Str_4
        MOVS     R4,#+0
        ADDS     R5,R5,#+1
??OLED_P8x16Str_4:
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_Set_Pos
        MOVS     R8,#+0
        B.N      ??OLED_P8x16Str_5
??OLED_P8x16Str_6:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LSLS     R0,R7,#+4
        UXTAB    R0,R0,R8
        LDR.W    R1,??DataTable9
        LDRB     R0,[R0, R1]
        BL       OLED_WrDat
        ADDS     R8,R8,#+1
??OLED_P8x16Str_5:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+8
        BLT.N    ??OLED_P8x16Str_6
        ADDS     R1,R5,#+1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_Set_Pos
        MOVS     R8,#+0
        B.N      ??OLED_P8x16Str_2
//  218   }
//  219 }
??OLED_P8x16Str_3:
        POP      {R0,R4-R9,PC}    ;; return
//  220 //输出汉字字符串

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  221 void OLED_P14x16Str(uint8 x,uint8 y,uint8 ch[])
//  222 {
OLED_P14x16Str:
        PUSH     {R3-R9,LR}
        MOVS     R6,R0
        MOVS     R4,R1
        MOVS     R5,R2
//  223 	uint8 wm=0,ii = 0;
        MOVS     R9,#+0
        MOVS     R7,#+0
//  224 	uint16 adder=1; 
        MOVS     R8,#+1
        B.N      ??OLED_P14x16Str_0
//  225 	
//  226 	while(ch[ii] != '\0')
//  227 	{
//  228   	wm = 0;
//  229   	adder = 1;
//  230   	while(F14x16_Idx[wm] > 127)
//  231   	{
//  232   		if(F14x16_Idx[wm] == ch[ii])
//  233   		{
//  234   			if(F14x16_Idx[wm + 1] == ch[ii + 1])
//  235   			{
//  236   				adder = wm * 14;
//  237   				break;
//  238   			}
//  239   		}
//  240   		wm += 2;			
//  241   	}
//  242   	if(x>118){x=0;y++;}
//  243   	OLED_Set_Pos(x , y); 
//  244   	if(adder != 1)// 显示汉字					
//  245   	{
//  246   		OLED_Set_Pos(x , y);
//  247   		for(wm = 0;wm < 14;wm++)               
//  248   		{
//  249   			OLED_WrDat(F14x16[adder]);	
//  250   			adder += 1;
//  251   		}      
//  252   		OLED_Set_Pos(x,y + 1); 
//  253   		for(wm = 0;wm < 14;wm++)          
//  254   		{
//  255   			OLED_WrDat(F14x16[adder]);
//  256   			adder += 1;
//  257   		}   		
//  258   	}
//  259   	else			  //显示空白字符			
//  260   	{
//  261   		ii += 1;
//  262       OLED_Set_Pos(x,y);
//  263   		for(wm = 0;wm < 16;wm++)
//  264   		{
//  265   				OLED_WrDat(0);
//  266   		}
//  267   		OLED_Set_Pos(x,y + 1);
//  268   		for(wm = 0;wm < 16;wm++)
//  269   		{   		
//  270   				OLED_WrDat(0);	
??OLED_P14x16Str_1:
        MOVS     R0,#+0
        BL       OLED_WrDat
//  271   		}
        ADDS     R9,R9,#+1
??OLED_P14x16Str_2:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+16
        BLT.N    ??OLED_P14x16Str_1
//  272   	}
//  273   	x += 14;
??OLED_P14x16Str_3:
        ADDS     R6,R6,#+14
//  274   	ii += 2;
        ADDS     R7,R7,#+2
??OLED_P14x16Str_0:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDRB     R0,[R7, R5]
        CMP      R0,#+0
        BEQ.W    ??OLED_P14x16Str_4
        MOVS     R9,#+0
        MOVS     R8,#+1
        B.N      ??OLED_P14x16Str_5
??OLED_P14x16Str_6:
        ADDS     R9,R9,#+2
??OLED_P14x16Str_5:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        LDR.W    R0,??DataTable10
        LDRB     R0,[R9, R0]
        CMP      R0,#+128
        BLT.N    ??OLED_P14x16Str_7
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        LDR.W    R0,??DataTable10
        LDRB     R0,[R9, R0]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDRB     R1,[R7, R5]
        CMP      R0,R1
        BNE.N    ??OLED_P14x16Str_6
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        LDR.W    R0,??DataTable10
        ADDS     R0,R9,R0
        LDRB     R0,[R0, #+1]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        ADDS     R1,R7,R5
        LDRB     R1,[R1, #+1]
        CMP      R0,R1
        BNE.N    ??OLED_P14x16Str_6
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        MOVS     R0,#+14
        SMULBB   R8,R9,R0
??OLED_P14x16Str_7:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+119
        BLT.N    ??OLED_P14x16Str_8
        MOVS     R6,#+0
        ADDS     R4,R4,#+1
??OLED_P14x16Str_8:
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_Set_Pos
        UXTH     R8,R8            ;; ZeroExt  R8,R8,#+16,#+16
        CMP      R8,#+1
        BEQ.N    ??OLED_P14x16Str_9
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_Set_Pos
        MOVS     R9,#+0
        B.N      ??OLED_P14x16Str_10
??OLED_P14x16Str_11:
        UXTH     R8,R8            ;; ZeroExt  R8,R8,#+16,#+16
        LDR.W    R0,??DataTable10_1
        LDRB     R0,[R8, R0]
        BL       OLED_WrDat
        ADDS     R8,R8,#+1
        ADDS     R9,R9,#+1
??OLED_P14x16Str_10:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+14
        BLT.N    ??OLED_P14x16Str_11
        ADDS     R1,R4,#+1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_Set_Pos
        MOVS     R9,#+0
??OLED_P14x16Str_12:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+14
        BGE.N    ??OLED_P14x16Str_3
        UXTH     R8,R8            ;; ZeroExt  R8,R8,#+16,#+16
        LDR.W    R0,??DataTable10_1
        LDRB     R0,[R8, R0]
        BL       OLED_WrDat
        ADDS     R8,R8,#+1
        ADDS     R9,R9,#+1
        B.N      ??OLED_P14x16Str_12
??OLED_P14x16Str_9:
        ADDS     R7,R7,#+1
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_Set_Pos
        MOVS     R9,#+0
        B.N      ??OLED_P14x16Str_13
??OLED_P14x16Str_14:
        MOVS     R0,#+0
        BL       OLED_WrDat
        ADDS     R9,R9,#+1
??OLED_P14x16Str_13:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+16
        BLT.N    ??OLED_P14x16Str_14
        ADDS     R1,R4,#+1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_Set_Pos
        MOVS     R9,#+0
        B.N      ??OLED_P14x16Str_2
//  275 	}
//  276 }
??OLED_P14x16Str_4:
        POP      {R0,R4-R9,PC}    ;; return
//  277 //输出汉字和字符混合字符串

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  278 void OLED_Print(uint8 x, uint8 y, uint8 ch[])
//  279 {
OLED_Print:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  280 	uint8 ch2[3];
//  281 	uint8 ii=0;        
        MOVS     R7,#+0
        B.N      ??OLED_Print_0
//  282 	while(ch[ii] != '\0')
//  283 	{
//  284 		if(ch[ii] > 127)
//  285 		{
//  286 			ch2[0] = ch[ii];
??OLED_Print_1:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDRB     R0,[R7, R6]
        STRB     R0,[SP, #+0]
//  287 	 		ch2[1] = ch[ii + 1];
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        ADDS     R0,R7,R6
        LDRB     R0,[R0, #+1]
        STRB     R0,[SP, #+1]
//  288 			ch2[2] = '\0';			//汉字为两个字节
        MOVS     R0,#+0
        STRB     R0,[SP, #+2]
//  289 			OLED_P14x16Str(x , y, ch2);	//显示汉字
        ADD      R2,SP,#+0
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_P14x16Str
//  290 			x += 14;
        ADDS     R4,R4,#+14
//  291 			ii += 2;
        ADDS     R7,R7,#+2
//  292 		}
??OLED_Print_0:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDRB     R0,[R7, R6]
        CMP      R0,#+0
        BEQ.N    ??OLED_Print_2
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDRB     R0,[R7, R6]
        CMP      R0,#+128
        BGE.N    ??OLED_Print_1
//  293 		else
//  294 		{
//  295 			ch2[0] = ch[ii];	
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDRB     R0,[R7, R6]
        STRB     R0,[SP, #+0]
//  296 			ch2[1] = '\0';			//字母占一个字节
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
//  297 			OLED_P8x16Str(x , y , ch2);	//显示字母
        ADD      R2,SP,#+0
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_P8x16Str
//  298 			x += 8;
        ADDS     R4,R4,#+8
//  299 			ii+= 1;
        ADDS     R7,R7,#+1
        B.N      ??OLED_Print_0
//  300 		}
//  301 	}
//  302 } 
??OLED_Print_2:
        POP      {R0,R4-R7,PC}    ;; return
//  303 
//  304 //==============================================================
//  305 //函数名： void OLED_Draw_BMP(uint8 x,uint8 y)
//  306 //功能描述：显示BMP图片128×64
//  307 //参数：起始点坐标(x,y),x的范围0～127，y为页的范围0～7
//  308 //返回：无
//  309 //==============================================================

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  310 void OLED_Draw_BMP(uint8 x0,uint8 y0,uint8 x1,uint8 y1,uint8 const bmp[])
//  311 { 	
OLED_Draw_BMP:
        PUSH     {R4-R10,LR}
        MOVS     R4,R0
        MOVS     R5,R2
        MOVS     R6,R3
//  312   uint16 ii=0;
        MOVS     R7,#+0
//  313   uint8 x,y;
//  314   
//  315   if(y1%8==0) y=y1/8;      
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R0,#+8
        SDIV     R2,R6,R0
        MLS      R2,R2,R0,R6
        CMP      R2,#+0
        BNE.N    ??OLED_Draw_BMP_0
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R0,#+8
        SDIV     R10,R6,R0
        B.N      ??OLED_Draw_BMP_1
//  316   else y=y1/8+1;
??OLED_Draw_BMP_0:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R0,#+8
        SDIV     R0,R6,R0
        ADDS     R10,R0,#+1
//  317 	
//  318   for(y=y0;y<=y1;y++)
??OLED_Draw_BMP_1:
        MOV      R10,R1
        LDR      R8,[SP, #+32]
        B.N      ??OLED_Draw_BMP_2
//  319   {
//  320     OLED_Set_Pos(x0,y);				
//  321     for(x=x0;x<=x1;x++)
//  322     {  
//  323       OLED_WrDat(bmp[ii++]);	    	
??OLED_Draw_BMP_3:
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R8]
        BL       OLED_WrDat
        ADDS     R7,R7,#+1
//  324     }
        ADDS     R9,R9,#+1
??OLED_Draw_BMP_4:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R5,R9
        BCS.N    ??OLED_Draw_BMP_3
        ADDS     R10,R10,#+1
??OLED_Draw_BMP_2:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        CMP      R6,R10
        BCC.N    ??OLED_Draw_BMP_5
        MOV      R1,R10
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_Set_Pos
        MOV      R9,R4
        B.N      ??OLED_Draw_BMP_4
//  325   }
//  326 }
??OLED_Draw_BMP_5:
        POP      {R4-R10,PC}      ;; return
//  327 
//  328 //==============================================================
//  329 //函数名： void OLED_showCCD(uint8 CCD_Pixel[],uint8 threshold,uint8 illegalArea)
//  330 //功能描述：显示CCD点
//  331 //参数：CCD采集原始点数组,CCD判断阈值，CCD边界无效区域
//  332 //返回：无
//  333 //==============================================================

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  334 void OLED_showCCD(uint8 CCD_Pixel_org[],uint8 thereshold,uint8 illegalArea)
//  335 {
OLED_showCCD:
        PUSH     {R4-R8,LR}
        SUB      SP,SP,#+128
        MOVS     R4,R0
//  336   uint8 max_Pixel = 0;//数组中的最大值
        MOVS     R5,#+0
//  337   uint8 temp = 0;//临时存储用
        MOVS     R7,#+0
//  338   uint8 CCD_Pixel[128] = {0};
        ADD      R0,SP,#+0
        MOVS     R1,#+128
        BL       __aeabi_memclr4
//  339   uint8 i = 0 ,j = 0;
        MOVS     R6,#+0
        MOVS     R1,#+0
//  340   float temp_float = 0,temp_float2 = 0;
        MOVS     R0,#+0
        MOVS     R8,#+0
//  341   
//  342   for(i=0;i<128;i++)//将CCD数据存入临时数组，防止中断造成显示错误
        MOVS     R2,#+0
        MOVS     R6,R2
        B.N      ??OLED_showCCD_0
//  343   {
//  344     CCD_Pixel[i] = CCD_Pixel_org[i];
??OLED_showCCD_1:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDRB     R0,[R6, R4]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R6, R1]
//  345   }
        ADDS     R6,R6,#+1
??OLED_showCCD_0:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+128
        BLT.N    ??OLED_showCCD_1
//  346   for(i=0;i<128;i++)
        MOVS     R6,#+0
        B.N      ??OLED_showCCD_2
//  347   {
//  348     if(CCD_Pixel[i] > max_Pixel){max_Pixel = CCD_Pixel[i];}//求出最大值
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
//  349   }
??OLED_showCCD_4:
        ADDS     R6,R6,#+1
??OLED_showCCD_2:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+128
        BLT.N    ??OLED_showCCD_3
//  350   //max_Pixel = 255;//注释此行可以动态显示最大值，否则将以绝对值方式显示图形
//  351 
//  352   temp_float2 = max_Pixel;if(temp_float2 == 0) temp_float2 = 1;//防除法错误
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R0,R5
        BL       __aeabi_ui2f
        MOV      R8,R0
        MOV      R0,R8
        MOVS     R1,#+0
        BL       __aeabi_cfcmpeq
        BNE.N    ??OLED_showCCD_5
        MOVS     R8,#+1065353216
//  353   
//  354   OLED_Fill(0x00);  //清屏
??OLED_showCCD_5:
        MOVS     R0,#+0
        BL       OLED_Fill
//  355 
//  356   for(i=0;i<128;i++)
        MOVS     R6,#+0
        B.N      ??OLED_showCCD_6
//  357   {
//  358     temp_float = CCD_Pixel[i];
??OLED_showCCD_7:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADD      R0,SP,#+0
        LDRB     R0,[R6, R0]
        BL       __aeabi_ui2f
//  359     temp_float = temp_float/temp_float2*63;//求出按比例的Y值
        MOV      R1,R8
        BL       __aeabi_fdiv
        LDR.W    R1,??DataTable11  ;; 0x427c0000
        BL       __aeabi_fmul
//  360     
//  361     temp = (uint8) temp_float;
        BL       __aeabi_f2iz
        MOVS     R7,R0
//  362     j = (uint8) temp;//将Y值转换为字节型数
        MOVS     R1,R7
//  363     
//  364     OLED_PutPixel(i,(63-j));//输出原始像素点
        RSBS     R1,R1,#+63
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_PutPixel
//  365   }
        ADDS     R6,R6,#+1
??OLED_showCCD_6:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+128
        BLT.N    ??OLED_showCCD_7
//  366   
//  367 //  OLED_PutPagePixel(illegalArea,0,0xFF);//显示无效区域边界线
//  368 //  OLED_PutPagePixel(illegalArea,8,0xFF);//显示无效区域边界线
//  369 //  OLED_PutPagePixel(127-illegalArea,0,0xFF);//显示无效区域边界线
//  370 //  OLED_PutPagePixel(127-illegalArea,8,0xFF);//显示无效区域边界线
//  371   
//  372 }
        ADD      SP,SP,#+128
        POP      {R4-R8,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     0x400ff0c0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_2:
        DC32     0x4004c034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_3:
        DC32     0x4004c020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_4:
        DC32     0x4004c018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_5:
        DC32     0x4004c01c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_6:
        DC32     0x400ff0d4
//  373 
//  374 //==============================================================
//  375 //函数名： void OLED2_showBarCode(uint8 CCD_Pixel[])
//  376 //功能描述：显示条形码形状
//  377 //==============================================================

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  378 void OLED2_showBarCode(uint8 CCD_Pixel_org[])
//  379 {
OLED2_showBarCode:
        PUSH     {R4,R5,LR}
        SUB      SP,SP,#+132
        MOVS     R4,R0
//  380     uint8 CCD_Pixel[128] = {0};
        ADD      R0,SP,#+0
        MOVS     R1,#+128
        BL       __aeabi_memclr4
//  381     uint8 i = 0;
        MOVS     R5,#+0
//  382     for(i=0;i<128;i++)//将CCD数据存入临时数组，防止中断造成显示错误
        MOVS     R0,#+0
        MOVS     R5,R0
        B.N      ??OLED2_showBarCode_0
//  383     {
//  384         CCD_Pixel[i] = CCD_Pixel_org[i];
??OLED2_showBarCode_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDRB     R0,[R5, R4]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R5, R1]
//  385     }
        ADDS     R5,R5,#+1
??OLED2_showBarCode_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+128
        BLT.N    ??OLED2_showBarCode_1
//  386     OLED2_Fill(0x00);  //清屏
        MOVS     R0,#+0
        BL       OLED2_Fill
//  387 
//  388     for(i=0;i<128;i++)
        MOVS     R5,#+0
        B.N      ??OLED2_showBarCode_2
//  389     {
//  390         switch(CCD_Pixel[i])
//  391         {
//  392         case 0:OLED2_PutPagePixel(i,32,0xFFu);
//  393         break;
//  394         case 1:OLED2_PutPagePixel(i,24,0xFFu);
//  395         break;
//  396         case 2:OLED2_PutPagePixel(i,16,0xFFu);
??OLED2_showBarCode_3:
        MOVS     R2,#+255
        MOVS     R1,#+16
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED2_PutPagePixel
//  397         break;
??OLED2_showBarCode_4:
        ADDS     R5,R5,#+1
??OLED2_showBarCode_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+128
        BGE.N    ??OLED2_showBarCode_5
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R0,SP,#+0
        LDRB     R0,[R5, R0]
        CMP      R0,#+0
        BEQ.N    ??OLED2_showBarCode_6
        CMP      R0,#+2
        BEQ.N    ??OLED2_showBarCode_3
        BCC.N    ??OLED2_showBarCode_7
        B.N      ??OLED2_showBarCode_4
??OLED2_showBarCode_6:
        MOVS     R2,#+255
        MOVS     R1,#+32
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED2_PutPagePixel
        B.N      ??OLED2_showBarCode_4
??OLED2_showBarCode_7:
        MOVS     R2,#+255
        MOVS     R1,#+24
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED2_PutPagePixel
        B.N      ??OLED2_showBarCode_4
//  398         }
//  399     }
//  400 }
??OLED2_showBarCode_5:
        ADD      SP,SP,#+132
        POP      {R4,R5,PC}       ;; return
//  401 
//  402 
//  403 //==============================================================
//  404 //函数名： void OLED_ShowNumber(uint8 x, uint8 y,float float_num) 
//  405 //功能描述：显示5位小数、整数
//  406 //参数：显示的位置（x,y），x为横坐标0～127，y为页范围0～7，要显示的数字
//  407 //返回：无
//  408 //==============================================================

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  409 void OLED_ShowNumber(uint8 x, uint8 y,float num) 
//  410 {
OLED_ShowNumber:
        PUSH     {R4-R7,LR}
        SUB      SP,SP,#+12
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  411   float float_num = num;
//  412   uint8 i = 0;
        MOVS     R2,#+0
//  413   uint8 range_flag = 0;
        MOVS     R7,#+0
//  414   unsigned long long_num=1;
        MOVS     R3,#+1
//  415   uint8 float_numchar[8] = "3.14159"; 
        ADD      R0,SP,#+0
        LDR.W    R1,??DataTable12
        LDM      R1!,{R12,LR}
        STM      R0!,{R12,LR}
        SUBS     R1,R1,#+8
        SUBS     R0,R0,#+8
//  416   if(float_num >= 10000000){range_flag = 0;} 
        MOVS     R0,R6
        LDR.W    R1,??DataTable12_1  ;; 0x4b189680
        BL       __aeabi_cfrcmple
        BHI.N    ??OLED_ShowNumber_0
        MOVS     R7,#+0
        B.N      ??OLED_ShowNumber_1
//  417   else if(float_num >= 1000000){range_flag = 1;}
??OLED_ShowNumber_0:
        MOVS     R0,R6
        LDR.W    R1,??DataTable12_2  ;; 0x49742400
        BL       __aeabi_cfrcmple
        BHI.N    ??OLED_ShowNumber_2
        MOVS     R7,#+1
        B.N      ??OLED_ShowNumber_1
//  418   else if(float_num >= 100000){range_flag = 2;}
??OLED_ShowNumber_2:
        MOVS     R0,R6
        LDR.W    R1,??DataTable12_3  ;; 0x47c35000
        BL       __aeabi_cfrcmple
        BHI.N    ??OLED_ShowNumber_3
        MOVS     R7,#+2
        B.N      ??OLED_ShowNumber_1
//  419   else if(float_num >= 10000){range_flag = 3;}
??OLED_ShowNumber_3:
        MOVS     R0,R6
        LDR.W    R1,??DataTable12_4  ;; 0x461c4000
        BL       __aeabi_cfrcmple
        BHI.N    ??OLED_ShowNumber_4
        MOVS     R7,#+3
        B.N      ??OLED_ShowNumber_1
//  420   else if(float_num >= 1000){range_flag = 4;}
??OLED_ShowNumber_4:
        MOVS     R0,R6
        LDR.W    R1,??DataTable12_5  ;; 0x447a0000
        BL       __aeabi_cfrcmple
        BHI.N    ??OLED_ShowNumber_5
        MOVS     R7,#+4
        B.N      ??OLED_ShowNumber_1
//  421   else if(float_num >= 100){range_flag = 5;}
??OLED_ShowNumber_5:
        MOVS     R0,R6
        LDR.W    R1,??DataTable12_6  ;; 0x42c80000
        BL       __aeabi_cfrcmple
        BHI.N    ??OLED_ShowNumber_6
        MOVS     R7,#+5
        B.N      ??OLED_ShowNumber_1
//  422   else if(float_num >= 10){range_flag = 6;}
??OLED_ShowNumber_6:
        MOVS     R0,R6
        LDR.W    R1,??DataTable12_7  ;; 0x41200000
        BL       __aeabi_cfrcmple
        BHI.N    ??OLED_ShowNumber_7
        MOVS     R7,#+6
        B.N      ??OLED_ShowNumber_1
//  423   else if((float_num >= 1) || (float_num == 0)){range_flag = 7;}
??OLED_ShowNumber_7:
        MOVS     R0,R6
        MOVS     R1,#+1065353216
        BL       __aeabi_cfrcmple
        BLS.N    ??OLED_ShowNumber_8
        MOVS     R0,R6
        MOVS     R1,#+0
        BL       __aeabi_cfcmpeq
        BNE.N    ??OLED_ShowNumber_9
??OLED_ShowNumber_8:
        MOVS     R7,#+7
        B.N      ??OLED_ShowNumber_1
//  424   else if(float_num >= 0.1){range_flag = 8;}
??OLED_ShowNumber_9:
        MOVS     R0,R6
        LDR.W    R1,??DataTable12_8  ;; 0x3dcccccd
        BL       __aeabi_cfrcmple
        BHI.N    ??OLED_ShowNumber_10
        MOVS     R7,#+8
        B.N      ??OLED_ShowNumber_1
//  425   else if(float_num >= 0.01){range_flag = 9;}
??OLED_ShowNumber_10:
        MOVS     R0,R6
        LDR.W    R1,??DataTable12_9  ;; 0x3c23d70b
        BL       __aeabi_cfrcmple
        BHI.N    ??OLED_ShowNumber_11
        MOVS     R7,#+9
        B.N      ??OLED_ShowNumber_1
//  426   else if(float_num >= 0.001){range_flag = 10;}
??OLED_ShowNumber_11:
        MOVS     R0,R6
        LDR.W    R1,??DataTable12_10  ;; 0x3a83126f
        BL       __aeabi_cfrcmple
        BHI.N    ??OLED_ShowNumber_12
        MOVS     R7,#+10
        B.N      ??OLED_ShowNumber_1
//  427   else if(float_num >= 0.0001){range_flag = 11;}
??OLED_ShowNumber_12:
        MOVS     R0,R6
        LDR.W    R1,??DataTable12_11  ;; 0x38d1b718
        BL       __aeabi_cfrcmple
        BHI.N    ??OLED_ShowNumber_13
        MOVS     R7,#+11
        B.N      ??OLED_ShowNumber_1
//  428   else if(float_num >= 0.00001){range_flag = 12;}
??OLED_ShowNumber_13:
        MOVS     R0,R6
        LDR.W    R1,??DataTable12_12  ;; 0x3727c5ad
        BL       __aeabi_cfrcmple
        BHI.N    ??OLED_ShowNumber_14
        MOVS     R7,#+12
        B.N      ??OLED_ShowNumber_1
//  429   else if(float_num >= 0.000001){range_flag = 13;}
??OLED_ShowNumber_14:
        MOVS     R0,R6
        LDR.W    R1,??DataTable13  ;; 0x358637be
        BL       __aeabi_cfrcmple
        BHI.N    ??OLED_ShowNumber_1
        MOVS     R7,#+13
//  430   switch (range_flag) 
??OLED_ShowNumber_1:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+2
        BEQ.N    ??OLED_ShowNumber_15
        BCC.N    ??OLED_ShowNumber_16
        CMP      R7,#+4
        BEQ.W    ??OLED_ShowNumber_17
        BCC.N    ??OLED_ShowNumber_18
        CMP      R7,#+6
        BEQ.W    ??OLED_ShowNumber_19
        BCC.W    ??OLED_ShowNumber_20
        CMP      R7,#+8
        BEQ.W    ??OLED_ShowNumber_21
        BCC.W    ??OLED_ShowNumber_22
        CMP      R7,#+10
        BEQ.W    ??OLED_ShowNumber_23
        BCC.W    ??OLED_ShowNumber_24
//  431   {
//  432     default : break;
??OLED_ShowNumber_16:
        B.N      ??OLED_ShowNumber_25
//  433     case 2 : long_num = (unsigned long)(float_num);
??OLED_ShowNumber_15:
        MOVS     R0,R6
        BL       __aeabi_f2uiz
        MOVS     R3,R0
//  434       for(i=0;i<7;i++) 
        MOVS     R2,#+0
        B.N      ??OLED_ShowNumber_26
//  435       {
//  436         switch (i)
//  437         {
//  438           default : break;
//  439           case 0 : float_numchar[i] = (long_num/100000)+'0';
//  440           long_num = long_num%100000; break;
//  441           case 1 : float_numchar[i] = (long_num/10000)+'0';
//  442           long_num = long_num%10000; break;
//  443           case 2 : float_numchar[i] = (long_num/1000)+'0';
//  444           long_num = long_num%1000; break;          
//  445           case 3 : float_numchar[i] = (long_num/100)+'0';
//  446           long_num = long_num%100; break;
//  447           case 4 : float_numchar[i] = (long_num/10)+'0'; 
//  448           long_num = long_num%10; break;     
//  449           case 5 : float_numchar[i] = (long_num)+'0'; 
//  450           long_num = long_num; break;  
//  451           case 6 : float_numchar[i] = ' '; break;   
??OLED_ShowNumber_27:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+32
        STRB     R1,[R2, R0]
??OLED_ShowNumber_28:
        ADDS     R2,R2,#+1
??OLED_ShowNumber_26:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+7
        BGE.N    ??OLED_ShowNumber_29
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BEQ.N    ??OLED_ShowNumber_30
        CMP      R2,#+2
        BEQ.N    ??OLED_ShowNumber_31
        BCC.N    ??OLED_ShowNumber_32
        CMP      R2,#+4
        BEQ.N    ??OLED_ShowNumber_33
        BCC.N    ??OLED_ShowNumber_34
        CMP      R2,#+6
        BEQ.N    ??OLED_ShowNumber_27
        BCC.N    ??OLED_ShowNumber_35
??OLED_ShowNumber_36:
        B.N      ??OLED_ShowNumber_28
??OLED_ShowNumber_30:
        LDR.W    R0,??DataTable13_1  ;; 0x186a0
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        LDR.W    R0,??DataTable13_1  ;; 0x186a0
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED_ShowNumber_28
??OLED_ShowNumber_32:
        MOVW     R0,#+10000
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        MOVW     R0,#+10000
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED_ShowNumber_28
??OLED_ShowNumber_31:
        MOV      R0,#+1000
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        MOV      R0,#+1000
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED_ShowNumber_28
??OLED_ShowNumber_34:
        MOVS     R0,#+100
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        MOVS     R0,#+100
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED_ShowNumber_28
??OLED_ShowNumber_33:
        MOVS     R0,#+10
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        MOVS     R0,#+10
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED_ShowNumber_28
??OLED_ShowNumber_35:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        ADDS     R1,R3,#+48
        STRB     R1,[R2, R0]
        B.N      ??OLED_ShowNumber_28
//  452         } 
//  453       }break;
??OLED_ShowNumber_29:
        B.N      ??OLED_ShowNumber_25
//  454     case 3 : long_num = (unsigned long)(float_num*1000);
??OLED_ShowNumber_18:
        LDR.W    R0,??DataTable12_5  ;; 0x447a0000
        MOVS     R1,R6
        BL       __aeabi_fmul
        BL       __aeabi_f2uiz
        MOVS     R3,R0
//  455       for(i=0;i<7;i++) 
        MOVS     R2,#+0
        B.N      ??OLED_ShowNumber_37
//  456       {
//  457         switch (i)
//  458         {
//  459           default : break;
//  460           case 0 : float_numchar[i] = (long_num/10000000)+'0';
//  461           long_num = long_num%10000000; break;
//  462           case 1 : float_numchar[i] = (long_num/1000000)+'0';
//  463           long_num = long_num%1000000; break;
//  464           case 2 : float_numchar[i] = (long_num/100000)+'0';
//  465           long_num = long_num%100000; break;          
//  466           case 3 : float_numchar[i] = (long_num/10000)+'0';
//  467           long_num = long_num%10000; break;
//  468           case 4 : float_numchar[i] = (long_num/1000)+'0'; 
//  469           long_num = long_num%1000; break;       
//  470           case 5 : float_numchar[i] = ' '; break;   
//  471           case 6 : float_numchar[i] = ' '; break;   
??OLED_ShowNumber_38:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+32
        STRB     R1,[R2, R0]
??OLED_ShowNumber_39:
        ADDS     R2,R2,#+1
??OLED_ShowNumber_37:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+7
        BGE.N    ??OLED_ShowNumber_40
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BEQ.N    ??OLED_ShowNumber_41
        CMP      R2,#+2
        BEQ.N    ??OLED_ShowNumber_42
        BCC.N    ??OLED_ShowNumber_43
        CMP      R2,#+4
        BEQ.N    ??OLED_ShowNumber_44
        BCC.N    ??OLED_ShowNumber_45
        CMP      R2,#+6
        BEQ.N    ??OLED_ShowNumber_38
        BCC.N    ??OLED_ShowNumber_46
??OLED_ShowNumber_47:
        B.N      ??OLED_ShowNumber_39
??OLED_ShowNumber_41:
        LDR.W    R0,??DataTable13_2  ;; 0x989680
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        LDR.W    R0,??DataTable13_2  ;; 0x989680
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED_ShowNumber_39
??OLED_ShowNumber_43:
        LDR.W    R0,??DataTable13_3  ;; 0xf4240
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        LDR.W    R0,??DataTable13_3  ;; 0xf4240
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED_ShowNumber_39
??OLED_ShowNumber_42:
        LDR.W    R0,??DataTable13_1  ;; 0x186a0
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        LDR.W    R0,??DataTable13_1  ;; 0x186a0
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED_ShowNumber_39
??OLED_ShowNumber_45:
        MOVW     R0,#+10000
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        MOVW     R0,#+10000
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED_ShowNumber_39
??OLED_ShowNumber_44:
        MOV      R0,#+1000
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        MOV      R0,#+1000
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED_ShowNumber_39
??OLED_ShowNumber_46:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+32
        STRB     R1,[R2, R0]
        B.N      ??OLED_ShowNumber_39
//  472         } 
//  473       }break;
??OLED_ShowNumber_40:
        B.N      ??OLED_ShowNumber_25
//  474     case 4 : long_num = (unsigned long)(float_num*1000);
??OLED_ShowNumber_17:
        LDR.W    R0,??DataTable12_5  ;; 0x447a0000
        MOVS     R1,R6
        BL       __aeabi_fmul
        BL       __aeabi_f2uiz
        MOVS     R3,R0
//  475       for(i=0;i<7;i++) 
        MOVS     R2,#+0
        B.N      ??OLED_ShowNumber_48
//  476       {
//  477         switch (i)
//  478         {
//  479           default : break;
//  480           case 0 : float_numchar[i] = (long_num/1000000)+'0';
//  481           long_num = long_num%1000000; break;
//  482           case 1 : float_numchar[i] = (long_num/100000)+'0';
//  483           long_num = long_num%100000; break;
//  484           case 2 : float_numchar[i] = (long_num/10000)+'0';
//  485           long_num = long_num%10000; break;          
//  486           case 3 : float_numchar[i] = (long_num/1000)+'0';
//  487           long_num = long_num%1000; break;
//  488           case 4 : float_numchar[i] = ' '; break;   
//  489           case 5 : float_numchar[i] = ' '; break;   
//  490           case 6 : float_numchar[i] = ' '; break;   
??OLED_ShowNumber_49:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+32
        STRB     R1,[R2, R0]
??OLED_ShowNumber_50:
        ADDS     R2,R2,#+1
??OLED_ShowNumber_48:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+7
        BGE.N    ??OLED_ShowNumber_51
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BEQ.N    ??OLED_ShowNumber_52
        CMP      R2,#+2
        BEQ.N    ??OLED_ShowNumber_53
        BCC.N    ??OLED_ShowNumber_54
        CMP      R2,#+4
        BEQ.N    ??OLED_ShowNumber_55
        BCC.N    ??OLED_ShowNumber_56
        CMP      R2,#+6
        BEQ.N    ??OLED_ShowNumber_49
        BCC.N    ??OLED_ShowNumber_57
??OLED_ShowNumber_58:
        B.N      ??OLED_ShowNumber_50
??OLED_ShowNumber_52:
        LDR.W    R0,??DataTable13_3  ;; 0xf4240
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        LDR.W    R0,??DataTable13_3  ;; 0xf4240
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED_ShowNumber_50
??OLED_ShowNumber_54:
        LDR.W    R0,??DataTable13_1  ;; 0x186a0
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        LDR.W    R0,??DataTable13_1  ;; 0x186a0
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED_ShowNumber_50
??OLED_ShowNumber_53:
        MOVW     R0,#+10000
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        MOVW     R0,#+10000
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED_ShowNumber_50
??OLED_ShowNumber_56:
        MOV      R0,#+1000
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        MOV      R0,#+1000
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED_ShowNumber_50
??OLED_ShowNumber_55:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+32
        STRB     R1,[R2, R0]
        B.N      ??OLED_ShowNumber_50
??OLED_ShowNumber_57:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+32
        STRB     R1,[R2, R0]
        B.N      ??OLED_ShowNumber_50
//  491         } 
//  492       }break;
??OLED_ShowNumber_51:
        B.N      ??OLED_ShowNumber_25
//  493     case 5 : long_num = (unsigned long)(float_num*1000);
??OLED_ShowNumber_20:
        LDR.W    R0,??DataTable12_5  ;; 0x447a0000
        MOVS     R1,R6
        BL       __aeabi_fmul
        BL       __aeabi_f2uiz
        MOVS     R3,R0
//  494       for(i=0;i<7;i++) 
        MOVS     R2,#+0
        B.N      ??OLED_ShowNumber_59
//  495       {
//  496         switch (i)
//  497         {
//  498           default : break;
//  499           case 0 : float_numchar[i] = (long_num/100000)+'0';
//  500           long_num = long_num%100000; break;
//  501           case 1 : float_numchar[i] = (long_num/10000)+'0';
//  502           long_num = long_num%10000; break;
//  503           case 2 : float_numchar[i] = (long_num/1000)+'0';
//  504           long_num = long_num%1000; break;
//  505           case 3 : float_numchar[i] = '.'; break;
//  506           case 4 : float_numchar[i] = (long_num/100)+'0';
//  507           long_num = long_num%100; break;           
//  508           case 5 : float_numchar[i] = (long_num/10)+'0';
//  509           long_num = long_num%10; break;  
//  510           case 6 : float_numchar[i] = (long_num)+'0';
??OLED_ShowNumber_60:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        ADDS     R1,R3,#+48
        STRB     R1,[R2, R0]
//  511           long_num = long_num; break;    
??OLED_ShowNumber_61:
        ADDS     R2,R2,#+1
??OLED_ShowNumber_59:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+7
        BGE.N    ??OLED_ShowNumber_62
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BEQ.N    ??OLED_ShowNumber_63
        CMP      R2,#+2
        BEQ.N    ??OLED_ShowNumber_64
        BCC.N    ??OLED_ShowNumber_65
        CMP      R2,#+4
        BEQ.N    ??OLED_ShowNumber_66
        BCC.N    ??OLED_ShowNumber_67
        CMP      R2,#+6
        BEQ.N    ??OLED_ShowNumber_60
        BCC.N    ??OLED_ShowNumber_68
??OLED_ShowNumber_69:
        B.N      ??OLED_ShowNumber_61
??OLED_ShowNumber_63:
        LDR.W    R0,??DataTable13_1  ;; 0x186a0
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        LDR.W    R0,??DataTable13_1  ;; 0x186a0
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED_ShowNumber_61
??OLED_ShowNumber_65:
        MOVW     R0,#+10000
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        MOVW     R0,#+10000
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED_ShowNumber_61
??OLED_ShowNumber_64:
        MOV      R0,#+1000
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        MOV      R0,#+1000
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED_ShowNumber_61
??OLED_ShowNumber_67:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+46
        STRB     R1,[R2, R0]
        B.N      ??OLED_ShowNumber_61
??OLED_ShowNumber_66:
        MOVS     R0,#+100
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        MOVS     R0,#+100
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED_ShowNumber_61
??OLED_ShowNumber_68:
        MOVS     R0,#+10
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        MOVS     R0,#+10
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED_ShowNumber_61
//  512         } 
//  513       }break;    
??OLED_ShowNumber_62:
        B.N      ??OLED_ShowNumber_25
//  514     case 6 : long_num = (unsigned long)(float_num*10000);
??OLED_ShowNumber_19:
        LDR.W    R0,??DataTable12_4  ;; 0x461c4000
        MOVS     R1,R6
        BL       __aeabi_fmul
        BL       __aeabi_f2uiz
        MOVS     R3,R0
//  515       for(i=0;i<7;i++) 
        MOVS     R2,#+0
        B.N      ??OLED_ShowNumber_70
//  516       {
//  517         switch (i)
//  518         {
//  519           default : break;
//  520           case 0 : float_numchar[i] =  (long_num/100000)+'0';
//  521           long_num = long_num%100000; break;
//  522           case 1 : float_numchar[i] =  (long_num/10000)+'0';
//  523           long_num = long_num%10000; break;
//  524           case 2 : float_numchar[i] = '.'; break;
//  525           case 3 : float_numchar[i] =  (long_num/1000)+'0';
//  526           long_num = long_num%1000; break;
//  527           case 4 : float_numchar[i] =  (long_num/100)+'0';
//  528           long_num = long_num%100; break;
//  529           case 5 : float_numchar[i] =  (long_num/10)+'0';
//  530           long_num = long_num%10; break;  
//  531           case 6 : float_numchar[i] =  (long_num)+'0';
??OLED_ShowNumber_71:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        ADDS     R1,R3,#+48
        STRB     R1,[R2, R0]
//  532           long_num = long_num; break;    
??OLED_ShowNumber_72:
        ADDS     R2,R2,#+1
??OLED_ShowNumber_70:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+7
        BGE.N    ??OLED_ShowNumber_73
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BEQ.N    ??OLED_ShowNumber_74
        CMP      R2,#+2
        BEQ.N    ??OLED_ShowNumber_75
        BCC.N    ??OLED_ShowNumber_76
        CMP      R2,#+4
        BEQ.N    ??OLED_ShowNumber_77
        BCC.N    ??OLED_ShowNumber_78
        CMP      R2,#+6
        BEQ.N    ??OLED_ShowNumber_71
        BCC.N    ??OLED_ShowNumber_79
??OLED_ShowNumber_80:
        B.N      ??OLED_ShowNumber_72
??OLED_ShowNumber_74:
        LDR.W    R0,??DataTable13_1  ;; 0x186a0
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        LDR.W    R0,??DataTable13_1  ;; 0x186a0
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED_ShowNumber_72
??OLED_ShowNumber_76:
        MOVW     R0,#+10000
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        MOVW     R0,#+10000
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED_ShowNumber_72
??OLED_ShowNumber_75:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+46
        STRB     R1,[R2, R0]
        B.N      ??OLED_ShowNumber_72
??OLED_ShowNumber_78:
        MOV      R0,#+1000
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        MOV      R0,#+1000
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED_ShowNumber_72
??OLED_ShowNumber_77:
        MOVS     R0,#+100
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        MOVS     R0,#+100
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED_ShowNumber_72
??OLED_ShowNumber_79:
        MOVS     R0,#+10
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        MOVS     R0,#+10
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED_ShowNumber_72
//  533         } 
//  534       }break;
??OLED_ShowNumber_73:
        B.N      ??OLED_ShowNumber_25
//  535     case 7 : long_num = (unsigned long)(float_num*100000);
??OLED_ShowNumber_22:
        LDR.W    R0,??DataTable12_3  ;; 0x47c35000
        MOVS     R1,R6
        BL       __aeabi_fmul
        BL       __aeabi_f2uiz
        MOVS     R3,R0
//  536       for(i=0;i<7;i++) 
        MOVS     R2,#+0
        B.N      ??OLED_ShowNumber_81
//  537       {
//  538         switch (i)
//  539         {
//  540           default : break;
//  541           case 0 : float_numchar[i] =  (long_num/100000)+'0';
//  542           long_num = long_num%100000; break;
//  543           case 1 : float_numchar[i] = '.'; break;
//  544           case 2 : float_numchar[i] =  (long_num/10000)+'0';
//  545           long_num = long_num%10000; break;          
//  546           case 3 : float_numchar[i] =  (long_num/1000)+'0';
//  547           long_num = long_num%1000; break;
//  548           case 4 : float_numchar[i] =  (long_num/100)+'0';
//  549           long_num = long_num%100; break;  
//  550           case 5 : float_numchar[i] =  (long_num/10)+'0';
//  551           long_num = long_num%10; break;    
//  552           case 6 : float_numchar[i] =  (long_num)+'0';
??OLED_ShowNumber_82:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        ADDS     R1,R3,#+48
        STRB     R1,[R2, R0]
//  553           long_num = long_num; break;   
??OLED_ShowNumber_83:
        ADDS     R2,R2,#+1
??OLED_ShowNumber_81:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+7
        BGE.N    ??OLED_ShowNumber_84
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BEQ.N    ??OLED_ShowNumber_85
        CMP      R2,#+2
        BEQ.N    ??OLED_ShowNumber_86
        BCC.N    ??OLED_ShowNumber_87
        CMP      R2,#+4
        BEQ.N    ??OLED_ShowNumber_88
        BCC.N    ??OLED_ShowNumber_89
        CMP      R2,#+6
        BEQ.N    ??OLED_ShowNumber_82
        BCC.N    ??OLED_ShowNumber_90
??OLED_ShowNumber_91:
        B.N      ??OLED_ShowNumber_83
??OLED_ShowNumber_85:
        LDR.W    R0,??DataTable13_1  ;; 0x186a0
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        LDR.W    R0,??DataTable13_1  ;; 0x186a0
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED_ShowNumber_83
??OLED_ShowNumber_87:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+46
        STRB     R1,[R2, R0]
        B.N      ??OLED_ShowNumber_83
??OLED_ShowNumber_86:
        MOVW     R0,#+10000
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        MOVW     R0,#+10000
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED_ShowNumber_83
??OLED_ShowNumber_89:
        MOV      R0,#+1000
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        MOV      R0,#+1000
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED_ShowNumber_83
??OLED_ShowNumber_88:
        MOVS     R0,#+100
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        MOVS     R0,#+100
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED_ShowNumber_83
??OLED_ShowNumber_90:
        MOVS     R0,#+10
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        MOVS     R0,#+10
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED_ShowNumber_83
//  554         } 
//  555       }break; 
??OLED_ShowNumber_84:
        B.N      ??OLED_ShowNumber_25
//  556     case 8 : long_num = (unsigned int)(float_num*1000);
??OLED_ShowNumber_21:
        LDR.W    R0,??DataTable12_5  ;; 0x447a0000
        MOVS     R1,R6
        BL       __aeabi_fmul
        BL       __aeabi_f2uiz
        MOVS     R3,R0
//  557       for(i=0;i<7;i++) 
        MOVS     R2,#+0
        B.N      ??OLED_ShowNumber_92
//  558       {
//  559         switch (i)
//  560         {
//  561           default : break;
//  562           case 0 : float_numchar[i] = '0'; break;
//  563           case 1 : float_numchar[i] = '.'; break;
//  564           case 2 : float_numchar[i] = (long_num/100)+'0';
//  565           long_num = long_num%100; break;          
//  566           case 3 : float_numchar[i] = (long_num/10)+'0';
//  567           long_num = long_num%10; break;
//  568           case 4 : float_numchar[i] = (long_num)+'0'; break;  
//  569           case 5 : float_numchar[i] = ' '; break;   
//  570           case 6 : float_numchar[i] = ' '; break;   
??OLED_ShowNumber_93:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+32
        STRB     R1,[R2, R0]
??OLED_ShowNumber_94:
        ADDS     R2,R2,#+1
??OLED_ShowNumber_92:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+7
        BGE.N    ??OLED_ShowNumber_95
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BEQ.N    ??OLED_ShowNumber_96
        CMP      R2,#+2
        BEQ.N    ??OLED_ShowNumber_97
        BCC.N    ??OLED_ShowNumber_98
        CMP      R2,#+4
        BEQ.N    ??OLED_ShowNumber_99
        BCC.N    ??OLED_ShowNumber_100
        CMP      R2,#+6
        BEQ.N    ??OLED_ShowNumber_93
        BCC.N    ??OLED_ShowNumber_101
??OLED_ShowNumber_102:
        B.N      ??OLED_ShowNumber_94
??OLED_ShowNumber_96:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+48
        STRB     R1,[R2, R0]
        B.N      ??OLED_ShowNumber_94
??OLED_ShowNumber_98:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+46
        STRB     R1,[R2, R0]
        B.N      ??OLED_ShowNumber_94
??OLED_ShowNumber_97:
        MOVS     R0,#+100
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        MOVS     R0,#+100
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED_ShowNumber_94
??OLED_ShowNumber_100:
        MOVS     R0,#+10
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        MOVS     R0,#+10
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED_ShowNumber_94
??OLED_ShowNumber_99:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        ADDS     R1,R3,#+48
        STRB     R1,[R2, R0]
        B.N      ??OLED_ShowNumber_94
??OLED_ShowNumber_101:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+32
        STRB     R1,[R2, R0]
        B.N      ??OLED_ShowNumber_94
//  571         } 
//  572       }break;
??OLED_ShowNumber_95:
        B.N      ??OLED_ShowNumber_25
//  573     case 9 : long_num = (unsigned int)(float_num*1000);
??OLED_ShowNumber_24:
        LDR.W    R0,??DataTable12_5  ;; 0x447a0000
        MOVS     R1,R6
        BL       __aeabi_fmul
        BL       __aeabi_f2uiz
        MOVS     R3,R0
//  574       for(i=0;i<7;i++) 
        MOVS     R2,#+0
        B.N      ??OLED_ShowNumber_103
//  575       {
//  576         switch (i)
//  577         {
//  578           default : break;
//  579           case 0 : float_numchar[i] = '0'; break;
//  580           case 1 : float_numchar[i] = '.'; break;
//  581           case 2 : float_numchar[i] = '0'; break;          
//  582           case 3 : float_numchar[i] = (long_num/10)+'0';
//  583           long_num = long_num%10; break;
//  584           case 4 : float_numchar[i] = (long_num)+'0'; break;     
//  585           case 5 : float_numchar[i] = ' '; break;   
//  586           case 6 : float_numchar[i] = ' '; break;   
??OLED_ShowNumber_104:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+32
        STRB     R1,[R2, R0]
??OLED_ShowNumber_105:
        ADDS     R2,R2,#+1
??OLED_ShowNumber_103:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+7
        BGE.N    ??OLED_ShowNumber_106
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BEQ.N    ??OLED_ShowNumber_107
        CMP      R2,#+2
        BEQ.N    ??OLED_ShowNumber_108
        BCC.N    ??OLED_ShowNumber_109
        CMP      R2,#+4
        BEQ.N    ??OLED_ShowNumber_110
        BCC.N    ??OLED_ShowNumber_111
        CMP      R2,#+6
        BEQ.N    ??OLED_ShowNumber_104
        BCC.N    ??OLED_ShowNumber_112
??OLED_ShowNumber_113:
        B.N      ??OLED_ShowNumber_105
??OLED_ShowNumber_107:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+48
        STRB     R1,[R2, R0]
        B.N      ??OLED_ShowNumber_105
??OLED_ShowNumber_109:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+46
        STRB     R1,[R2, R0]
        B.N      ??OLED_ShowNumber_105
??OLED_ShowNumber_108:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+48
        STRB     R1,[R2, R0]
        B.N      ??OLED_ShowNumber_105
??OLED_ShowNumber_111:
        MOVS     R0,#+10
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        MOVS     R0,#+10
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED_ShowNumber_105
??OLED_ShowNumber_110:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        ADDS     R1,R3,#+48
        STRB     R1,[R2, R0]
        B.N      ??OLED_ShowNumber_105
??OLED_ShowNumber_112:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+32
        STRB     R1,[R2, R0]
        B.N      ??OLED_ShowNumber_105
//  587         } 
//  588       }break;
??OLED_ShowNumber_106:
        B.N      ??OLED_ShowNumber_25
//  589     case 10 : long_num = (unsigned int)(float_num*1000);
??OLED_ShowNumber_23:
        LDR.W    R0,??DataTable12_5  ;; 0x447a0000
        MOVS     R1,R6
        BL       __aeabi_fmul
        BL       __aeabi_f2uiz
        MOVS     R3,R0
//  590       for(i=0;i<7;i++) 
        MOVS     R2,#+0
        B.N      ??OLED_ShowNumber_114
//  591       {
//  592         switch (i)
//  593         {
//  594           default : break;
//  595           case 0 : float_numchar[i] = '0'; break;
//  596           case 1 : float_numchar[i] = '.'; break;
//  597           case 2 : float_numchar[i] = '0'; break; 
//  598           case 3 : float_numchar[i] = '0'; break;         
//  599           case 4 : float_numchar[i] = (long_num)+'0'; break;    
//  600           case 5 : float_numchar[i] = ' '; break;   
//  601           case 6 : float_numchar[i] = ' '; break;   
??OLED_ShowNumber_115:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+32
        STRB     R1,[R2, R0]
??OLED_ShowNumber_116:
        ADDS     R2,R2,#+1
??OLED_ShowNumber_114:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+7
        BGE.N    ??OLED_ShowNumber_117
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BEQ.N    ??OLED_ShowNumber_118
        CMP      R2,#+2
        BEQ.N    ??OLED_ShowNumber_119
        BCC.N    ??OLED_ShowNumber_120
        CMP      R2,#+4
        BEQ.N    ??OLED_ShowNumber_121
        BCC.N    ??OLED_ShowNumber_122
        CMP      R2,#+6
        BEQ.N    ??OLED_ShowNumber_115
        BCC.N    ??OLED_ShowNumber_123
??OLED_ShowNumber_124:
        B.N      ??OLED_ShowNumber_116
??OLED_ShowNumber_118:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+48
        STRB     R1,[R2, R0]
        B.N      ??OLED_ShowNumber_116
??OLED_ShowNumber_120:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+46
        STRB     R1,[R2, R0]
        B.N      ??OLED_ShowNumber_116
??OLED_ShowNumber_119:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+48
        STRB     R1,[R2, R0]
        B.N      ??OLED_ShowNumber_116
??OLED_ShowNumber_122:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+48
        STRB     R1,[R2, R0]
        B.N      ??OLED_ShowNumber_116
??OLED_ShowNumber_121:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        ADDS     R1,R3,#+48
        STRB     R1,[R2, R0]
        B.N      ??OLED_ShowNumber_116
??OLED_ShowNumber_123:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+32
        STRB     R1,[R2, R0]
        B.N      ??OLED_ShowNumber_116
//  602         } 
//  603       }break;
//  604   }
//  605   float_numchar[7] = 0;
??OLED_ShowNumber_117:
??OLED_ShowNumber_25:
        MOVS     R0,#+0
        STRB     R0,[SP, #+7]
//  606   OLED_P6x8Str(x,y,float_numchar);
        ADD      R2,SP,#+0
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_P6x8Str
//  607 }
        POP      {R0-R2,R4-R7,PC}  ;; return
//  608 
//  609 //==============================================================
//  610 //函数名： void OLED_ShowWave(uint8 point) 
//  611 //功能描述：显示参数变化曲线波形
//  612 //参数：显示的位置（x,y），x为横坐标0～127，y为页范围0～7，要显示的数字
//  613 //返回：无
//  614 //==============================================================

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  615 void OLED_ShowWave(uint8 point) 
//  616 {
OLED_ShowWave:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  617   static char count = 0;//用于计数当前显示到哪个点
//  618   uint8 tempchar;
//  619   tempchar = point;
//  620   tempchar = tempchar/4;//从256满量程转换到64满量程
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,#+4
        SDIV     R4,R4,R0
//  621   
//  622   OLED_PutPagePixel(count,0,0x0);//清空当前列
        MOVS     R2,#+0
        MOVS     R1,#+0
        LDR.W    R0,??DataTable13_4
        LDRB     R0,[R0, #+0]
        BL       OLED_PutPagePixel
//  623   OLED_PutPagePixel(count,8,0x0);//清空当前列
        MOVS     R2,#+0
        MOVS     R1,#+8
        LDR.W    R0,??DataTable13_4
        LDRB     R0,[R0, #+0]
        BL       OLED_PutPagePixel
//  624   OLED_PutPagePixel(count,16,0x0);//清空当前列
        MOVS     R2,#+0
        MOVS     R1,#+16
        LDR.W    R0,??DataTable13_4
        LDRB     R0,[R0, #+0]
        BL       OLED_PutPagePixel
//  625   OLED_PutPagePixel(count,24,0x0);//清空当前列
        MOVS     R2,#+0
        MOVS     R1,#+24
        LDR.W    R0,??DataTable13_4
        LDRB     R0,[R0, #+0]
        BL       OLED_PutPagePixel
//  626   OLED_PutPagePixel(count,32,0x0);//清空当前列
        MOVS     R2,#+0
        MOVS     R1,#+32
        LDR.W    R0,??DataTable13_4
        LDRB     R0,[R0, #+0]
        BL       OLED_PutPagePixel
//  627   OLED_PutPagePixel(count,40,0x0);//清空当前列
        MOVS     R2,#+0
        MOVS     R1,#+40
        LDR.W    R0,??DataTable13_4
        LDRB     R0,[R0, #+0]
        BL       OLED_PutPagePixel
//  628   OLED_PutPagePixel(count,48,0x0);//清空当前列
        MOVS     R2,#+0
        MOVS     R1,#+48
        LDR.W    R0,??DataTable13_4
        LDRB     R0,[R0, #+0]
        BL       OLED_PutPagePixel
//  629   OLED_PutPagePixel(count,56,0x0);//清空当前列
        MOVS     R2,#+0
        MOVS     R1,#+56
        LDR.W    R0,??DataTable13_4
        LDRB     R0,[R0, #+0]
        BL       OLED_PutPagePixel
//  630   
//  631   OLED_PutPixel(count,63 - tempchar);
        RSBS     R1,R4,#+63
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable13_4
        LDRB     R0,[R0, #+0]
        BL       OLED_PutPixel
//  632   
//  633   
//  634   if(count != 127) count++;
        LDR.W    R0,??DataTable13_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+127
        BEQ.N    ??OLED_ShowWave_0
        LDR.W    R0,??DataTable13_4
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable13_4
        STRB     R0,[R1, #+0]
        B.N      ??OLED_ShowWave_1
//  635   else count = 0;
??OLED_ShowWave_0:
        LDR.W    R0,??DataTable13_4
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  636   
//  637 }
??OLED_ShowWave_1:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8:
        DC32     F6x8

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
??count:
        DS8 1
//  638 //**************************************************************************************************
//  639 //**************************************************************************************************
//  640 //**************************************************************************************************
//  641 //**************************************************************************************************
//  642 //**************************************************************************************************
//  643 //--------------------------------------------OLED2-------------------------------------------------
//  644 //**************************************************************************************************
//  645 //**************************************************************************************************
//  646 //**************************************************************************************************
//  647 //**************************************************************************************************
//  648 //**************************************************************************************************
//  649 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  650 void OLED2_WrDat(uint8 data)
//  651 {
//  652   uint8 i=8;
OLED2_WrDat:
        MOVS     R1,#+8
//  653   //uint8 j=0;
//  654 
//  655   GPIOC_PDOR |= (1<<19);//PTC19=1 DC=1
        LDR.W    R2,??DataTable13_5  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x80000
        LDR.W    R3,??DataTable13_5  ;; 0x400ff080
        STR      R2,[R3, #+0]
//  656   //for(j=0;j<=1;j++);//延时
//  657   GPIOC_PDOR &= ~(1<<16);//PTC16=0 CLK/D0=0
        LDR.W    R2,??DataTable13_5  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        BICS     R2,R2,#0x10000
        LDR.W    R3,??DataTable13_5  ;; 0x400ff080
        STR      R2,[R3, #+0]
        B.N      ??OLED2_WrDat_0
//  658   //for(j=0;j<=1;j++);//延时
//  659 
//  660   while(i--)
//  661   {
//  662     if(data&0x80){GPIOC_PDOR |= (1<<17);}//PTC17=1 SDA/D1=1
//  663     else{GPIOC_PDOR &= ~(1<<17);}//PTC17=0 SDA/D1=0
??OLED2_WrDat_1:
        LDR.W    R2,??DataTable13_5  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        BICS     R2,R2,#0x20000
        LDR.W    R3,??DataTable13_5  ;; 0x400ff080
        STR      R2,[R3, #+0]
//  664     //for(j=0;j<=1;j++);//延时
//  665     GPIOC_PDOR |= (1<<16);//PTC16=1 CLK/D0=1
??OLED2_WrDat_2:
        LDR.W    R2,??DataTable13_5  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x10000
        LDR.W    R3,??DataTable13_5  ;; 0x400ff080
        STR      R2,[R3, #+0]
//  666     //for(j=0;j<=1;j++);//延时            
//  667     GPIOC_PDOR &= ~(1<<16);//PTC16=0 CLK/D0=0 
        LDR.W    R2,??DataTable13_5  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        BICS     R2,R2,#0x10000
        LDR.W    R3,??DataTable13_5  ;; 0x400ff080
        STR      R2,[R3, #+0]
//  668     data<<=1;    
        LSLS     R0,R0,#+1
??OLED2_WrDat_0:
        MOVS     R2,R1
        SUBS     R1,R2,#+1
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BEQ.N    ??OLED2_WrDat_3
        LSLS     R2,R0,#+24
        BPL.N    ??OLED2_WrDat_1
        LDR.W    R2,??DataTable13_5  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x20000
        LDR.W    R3,??DataTable13_5  ;; 0x400ff080
        STR      R2,[R3, #+0]
        B.N      ??OLED2_WrDat_2
//  669   }
//  670 }
??OLED2_WrDat_3:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9:
        DC32     F8X16

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  671 void OLED2_WrCmd(uint8 cmd)
//  672 {
//  673   uint8 i=8;
OLED2_WrCmd:
        MOVS     R1,#+8
//  674   //uint8 j=0;
//  675   
//  676   GPIOC_PDOR &= ~(1<<19);//PTC19=1 DC=0
        LDR.W    R2,??DataTable13_5  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        BICS     R2,R2,#0x80000
        LDR.W    R3,??DataTable13_5  ;; 0x400ff080
        STR      R2,[R3, #+0]
//  677   //for(j=0;j<=1;j++);//延时
//  678   GPIOC_PDOR &= ~(1<<16);//PTC16=0 CLK/D0=0
        LDR.W    R2,??DataTable13_5  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        BICS     R2,R2,#0x10000
        LDR.W    R3,??DataTable13_5  ;; 0x400ff080
        STR      R2,[R3, #+0]
        B.N      ??OLED2_WrCmd_0
//  679   //for(j=0;j<=1;j++);//延时
//  680   
//  681   while(i--)
//  682   {
//  683     if(cmd&0x80){GPIOC_PDOR |= (1<<17);}//PTC17=1 SDA/D1=1
//  684     else{GPIOC_PDOR &= ~(1<<17);}//PTC17=0 SDA/D1=0
??OLED2_WrCmd_1:
        LDR.W    R2,??DataTable13_5  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        BICS     R2,R2,#0x20000
        LDR.W    R3,??DataTable13_5  ;; 0x400ff080
        STR      R2,[R3, #+0]
//  685     //for(j=0;j<=1;j++);//延时
//  686     GPIOC_PDOR |= (1<<16);//PTC16=1 CLK/D0=1
??OLED2_WrCmd_2:
        LDR.W    R2,??DataTable13_5  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x10000
        LDR.W    R3,??DataTable13_5  ;; 0x400ff080
        STR      R2,[R3, #+0]
//  687     //for(j=0;j<=1;j++);//延时
//  688     GPIOC_PDOR &= ~(1<<16);//PTC16=0 CLK/D0=0 
        LDR.W    R2,??DataTable13_5  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        BICS     R2,R2,#0x10000
        LDR.W    R3,??DataTable13_5  ;; 0x400ff080
        STR      R2,[R3, #+0]
//  689     cmd<<=1;  
        LSLS     R0,R0,#+1
??OLED2_WrCmd_0:
        MOVS     R2,R1
        SUBS     R1,R2,#+1
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BEQ.N    ??OLED2_WrCmd_3
        LSLS     R2,R0,#+24
        BPL.N    ??OLED2_WrCmd_1
        LDR.W    R2,??DataTable13_5  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x20000
        LDR.W    R3,??DataTable13_5  ;; 0x400ff080
        STR      R2,[R3, #+0]
        B.N      ??OLED2_WrCmd_2
//  690   }
//  691 
//  692 }
??OLED2_WrCmd_3:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10:
        DC32     F14x16_Idx

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_1:
        DC32     F14x16
//  693 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  694 void OLED2_Set_Pos(uint8 x, uint8 y)
//  695 { 
OLED2_Set_Pos:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  696   OLED2_WrCmd(0xb0+y);
        SUBS     R0,R1,#+80
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED2_WrCmd
//  697   OLED2_WrCmd(((x&0xf0)>>4)|0x10);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSRS     R0,R4,#+4
        ORRS     R0,R0,#0x10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED2_WrCmd
//  698   OLED2_WrCmd((x&0x0f)|0x01); 
        ANDS     R0,R4,#0xF
        ORRS     R0,R0,#0x1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED2_WrCmd
//  699 } 
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  700 void OLED2_Init(void)        
//  701 {            
OLED2_Init:
        PUSH     {R7,LR}
//  702   SIM_SCGC5 |= 0x00000800u;//使能PORTC时钟 
        LDR.W    R0,??DataTable14  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x800
        LDR.W    R1,??DataTable14  ;; 0x40048038
        STR      R0,[R1, #+0]
//  703   PORTC_PCR19 |= 0x00000100u;//引脚复用选择普通IO(//DC-A24-DC)
        LDR.W    R0,??DataTable14_1  ;; 0x4004b04c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.W    R1,??DataTable14_1  ;; 0x4004b04c
        STR      R0,[R1, #+0]
//  704   PORTC_PCR18 |= 0x00000100u;//引脚复用选择普通IO(//RST-A25-RST)
        LDR.W    R0,??DataTable14_2  ;; 0x4004b048
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.W    R1,??DataTable14_2  ;; 0x4004b048
        STR      R0,[R1, #+0]
//  705   PORTC_PCR17 |= 0x00000100u;//引脚复用选择普通IO(//D1-A26-SDA)
        LDR.W    R0,??DataTable14_3  ;; 0x4004b044
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.W    R1,??DataTable14_3  ;; 0x4004b044
        STR      R0,[R1, #+0]
//  706   PORTC_PCR16 |= 0x00000100u;//引脚复用选择普通IO(//CLK/D0-A27-SCL)
        LDR.W    R0,??DataTable14_4  ;; 0x4004b040
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.W    R1,??DataTable14_4  ;; 0x4004b040
        STR      R0,[R1, #+0]
//  707         
//  708   GPIOC_PDDR |= (1<<19);//引脚选择输出方向
        LDR.W    R0,??DataTable14_5  ;; 0x400ff094
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80000
        LDR.W    R1,??DataTable14_5  ;; 0x400ff094
        STR      R0,[R1, #+0]
//  709   GPIOC_PDDR |= (1<<18);//引脚选择输出方向
        LDR.W    R0,??DataTable14_5  ;; 0x400ff094
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40000
        LDR.W    R1,??DataTable14_5  ;; 0x400ff094
        STR      R0,[R1, #+0]
//  710   GPIOC_PDDR |= (1<<17);//引脚选择输出方向
        LDR.W    R0,??DataTable14_5  ;; 0x400ff094
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x20000
        LDR.W    R1,??DataTable14_5  ;; 0x400ff094
        STR      R0,[R1, #+0]
//  711   GPIOC_PDDR |= (1<<16);//引脚选择输出方向
        LDR.W    R0,??DataTable14_5  ;; 0x400ff094
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000
        LDR.W    R1,??DataTable14_5  ;; 0x400ff094
        STR      R0,[R1, #+0]
//  712         
//  713   GPIOC_PDOR |= (1<<19);//PTC19=1 DC=1
        LDR.W    R0,??DataTable13_5  ;; 0x400ff080
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80000
        LDR.W    R1,??DataTable13_5  ;; 0x400ff080
        STR      R0,[R1, #+0]
//  714   GPIOC_PDOR &= ~(1<<18);//PTC18=0 RST=0
        LDR.W    R0,??DataTable13_5  ;; 0x400ff080
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x40000
        LDR.W    R1,??DataTable13_5  ;; 0x400ff080
        STR      R0,[R1, #+0]
//  715   GPIOC_PDOR |= (1<<17);//PTC17=1 SDA/D1=1
        LDR.W    R0,??DataTable13_5  ;; 0x400ff080
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x20000
        LDR.W    R1,??DataTable13_5  ;; 0x400ff080
        STR      R0,[R1, #+0]
//  716   GPIOC_PDOR |= (1<<16);//PTC16=1 CLK/D0=1
        LDR.W    R0,??DataTable13_5  ;; 0x400ff080
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000
        LDR.W    R1,??DataTable13_5  ;; 0x400ff080
        STR      R0,[R1, #+0]
//  717 
//  718   for(unsigned short int i = 0;i<1000;i++);//延时
        MOVS     R0,#+0
        B.N      ??OLED2_Init_0
??OLED2_Init_1:
        ADDS     R0,R0,#+1
??OLED2_Init_0:
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+1000
        BLT.N    ??OLED2_Init_1
//  719   //DELAY_MS(50);
//  720   GPIOC_PDOR |= (1<<18);//PTC18=1 RST=1
        LDR.W    R0,??DataTable13_5  ;; 0x400ff080
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40000
        LDR.W    R1,??DataTable13_5  ;; 0x400ff080
        STR      R0,[R1, #+0]
//  721 
//  722   OLED2_WrCmd(0xae);//--turn off oled panel
        MOVS     R0,#+174
        BL       OLED2_WrCmd
//  723   OLED2_WrCmd(0x00);//---set low column address
        MOVS     R0,#+0
        BL       OLED2_WrCmd
//  724   OLED2_WrCmd(0x10);//---set high column address
        MOVS     R0,#+16
        BL       OLED2_WrCmd
//  725   OLED2_WrCmd(0x40);//--set start line address  Set Mapping RAM Display Start Line (0x00~0x3F)
        MOVS     R0,#+64
        BL       OLED2_WrCmd
//  726   OLED2_WrCmd(0x81);//--set contrast control register
        MOVS     R0,#+129
        BL       OLED2_WrCmd
//  727   OLED2_WrCmd(0xcf); // Set SEG Output Current Brightness
        MOVS     R0,#+207
        BL       OLED2_WrCmd
//  728   OLED2_WrCmd(0xa1);//--Set SEG/Column Mapping     0xa0左右反置 0xa1正常
        MOVS     R0,#+161
        BL       OLED2_WrCmd
//  729   OLED2_WrCmd(0xc8);//Set COM/Row Scan Direction   0xc0上下反置 0xc8正常
        MOVS     R0,#+200
        BL       OLED2_WrCmd
//  730   OLED2_WrCmd(0xa6);//--set normal display
        MOVS     R0,#+166
        BL       OLED2_WrCmd
//  731   OLED2_WrCmd(0xa8);//--set multiplex ratio(1 to 64)
        MOVS     R0,#+168
        BL       OLED2_WrCmd
//  732   OLED2_WrCmd(0x3f);//--1/64 duty
        MOVS     R0,#+63
        BL       OLED2_WrCmd
//  733   OLED2_WrCmd(0xd3);//-set display offset	Shift Mapping RAM Counter (0x00~0x3F)
        MOVS     R0,#+211
        BL       OLED2_WrCmd
//  734   OLED2_WrCmd(0x00);//-not offset
        MOVS     R0,#+0
        BL       OLED2_WrCmd
//  735   OLED2_WrCmd(0xd5);//--set display clock divide ratio/oscillator frequency
        MOVS     R0,#+213
        BL       OLED2_WrCmd
//  736   OLED2_WrCmd(0x80);//--set divide ratio, Set Clock as 100 Frames/Sec
        MOVS     R0,#+128
        BL       OLED2_WrCmd
//  737   OLED2_WrCmd(0xd9);//--set pre-charge period
        MOVS     R0,#+217
        BL       OLED2_WrCmd
//  738   OLED2_WrCmd(0xf1);//Set Pre-Charge as 15 Clocks & Discharge as 1 Clock
        MOVS     R0,#+241
        BL       OLED2_WrCmd
//  739   OLED2_WrCmd(0xda);//--set com pins hardware configuration
        MOVS     R0,#+218
        BL       OLED2_WrCmd
//  740   OLED2_WrCmd(0x12);
        MOVS     R0,#+18
        BL       OLED2_WrCmd
//  741   OLED2_WrCmd(0xdb);//--set vcomh
        MOVS     R0,#+219
        BL       OLED2_WrCmd
//  742   OLED2_WrCmd(0x40);//Set VCOM Deselect Level
        MOVS     R0,#+64
        BL       OLED2_WrCmd
//  743   OLED2_WrCmd(0x20);//-Set Page Addressing Mode (0x00/0x01/0x02)
        MOVS     R0,#+32
        BL       OLED2_WrCmd
//  744   OLED2_WrCmd(0x02);//
        MOVS     R0,#+2
        BL       OLED2_WrCmd
//  745   OLED2_WrCmd(0x8d);//--set Charge Pump enable/disable
        MOVS     R0,#+141
        BL       OLED2_WrCmd
//  746   OLED2_WrCmd(0x14);//--set(0x10) disable
        MOVS     R0,#+20
        BL       OLED2_WrCmd
//  747   OLED2_WrCmd(0xa4);// Disable Entire Display On (0xa4/0xa5)
        MOVS     R0,#+164
        BL       OLED2_WrCmd
//  748   OLED2_WrCmd(0xa6);// Disable Inverse Display On (0xa6/a7) 
        MOVS     R0,#+166
        BL       OLED2_WrCmd
//  749   OLED2_WrCmd(0xaf);//--turn on oled panel
        MOVS     R0,#+175
        BL       OLED2_WrCmd
//  750   OLED2_Fill(0x00);  //初始清屏
        MOVS     R0,#+0
        BL       OLED2_Fill
//  751   OLED2_Set_Pos(0,0);  
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED2_Set_Pos
//  752 	
//  753 } 
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11:
        DC32     0x427c0000
//  754 
//  755 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  756 void OLED2_Fill(uint8 bmp_data)
//  757 {
OLED2_Fill:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
//  758 	uint8 y,x;
//  759 	
//  760 	for(y=0;y<8;y++)
        MOVS     R5,#+0
        B.N      ??OLED2_Fill_0
//  761 	{
//  762 		OLED2_WrCmd(0xb0+y);
//  763 		OLED2_WrCmd(0x01);
//  764 		OLED2_WrCmd(0x10);
//  765 		for(x=0;x<X_WIDTH;x++)
//  766 			OLED2_WrDat(bmp_data);
??OLED2_Fill_1:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED2_WrDat
        ADDS     R6,R6,#+1
??OLED2_Fill_2:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+128
        BLT.N    ??OLED2_Fill_1
        ADDS     R5,R5,#+1
??OLED2_Fill_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+8
        BGE.N    ??OLED2_Fill_3
        SUBS     R0,R5,#+80
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED2_WrCmd
        MOVS     R0,#+1
        BL       OLED2_WrCmd
        MOVS     R0,#+16
        BL       OLED2_WrCmd
        MOVS     R6,#+0
        B.N      ??OLED2_Fill_2
//  767 	}
//  768 }
??OLED2_Fill_3:
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  769 void OLED2_CLS(void)
//  770 {
OLED2_CLS:
        PUSH     {R3-R5,LR}
//  771 	uint8 y,x;	
//  772 	for(y=0;y<8;y++)
        MOVS     R4,#+0
        B.N      ??OLED2_CLS_0
//  773 	{
//  774 		OLED2_WrCmd(0xb0+y);
//  775 		OLED2_WrCmd(0x01);
//  776 		OLED2_WrCmd(0x10); 
//  777 		for(x=0;x<X_WIDTH;x++)
//  778 			OLED2_WrDat(0);
??OLED2_CLS_1:
        MOVS     R0,#+0
        BL       OLED2_WrDat
        ADDS     R5,R5,#+1
??OLED2_CLS_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+128
        BLT.N    ??OLED2_CLS_1
        ADDS     R4,R4,#+1
??OLED2_CLS_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+8
        BGE.N    ??OLED2_CLS_3
        SUBS     R0,R4,#+80
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED2_WrCmd
        MOVS     R0,#+1
        BL       OLED2_WrCmd
        MOVS     R0,#+16
        BL       OLED2_WrCmd
        MOVS     R5,#+0
        B.N      ??OLED2_CLS_2
//  779 	}
//  780 }
??OLED2_CLS_3:
        POP      {R0,R4,R5,PC}    ;; return
//  781 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  782 void OLED2_PutPixel(uint8 x,uint8 y)
//  783 {
OLED2_PutPixel:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//  784 	uint8 data1;  //data1当前点的数据 
//  785 	data1 = 0x01<<(y%8); 	
        MOVS     R0,#+1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R2,#+8
        SDIV     R3,R1,R2
        MLS      R3,R3,R2,R1
        LSLS     R5,R0,R3
//  786 	OLED2_WrCmd(0xb0+(y>>3));//设置页号，y右移3位相当于除以8，即由行号得出页号
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSRS     R0,R1,#+3
        SUBS     R0,R0,#+80
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED2_WrCmd
//  787 	OLED2_WrCmd(((x&0xf0)>>4)|0x10);//设置列号的高4位
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSRS     R0,R4,#+4
        ORRS     R0,R0,#0x10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED2_WrCmd
//  788 	OLED2_WrCmd(x&0x0f);//设置列号的低4位
        ANDS     R0,R4,#0xF
        BL       OLED2_WrCmd
//  789 	OLED2_WrDat(data1); 	 	
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED2_WrDat
//  790 }
        POP      {R0,R4,R5,PC}    ;; return
//  791 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  792 void OLED2_PutPagePixel(uint8 x,uint8 y,uint8 data1)
//  793 { 
OLED2_PutPagePixel:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R2
//  794 	OLED2_WrCmd(0xb0+(y>>3));//设置页号，y右移3位相当于除以8，即由行号得出页号
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSRS     R0,R1,#+3
        SUBS     R0,R0,#+80
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED2_WrCmd
//  795 	OLED2_WrCmd(((x&0xf0)>>4)|0x10);//设置列号的高4位
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSRS     R0,R4,#+4
        ORRS     R0,R0,#0x10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED2_WrCmd
//  796 	OLED2_WrCmd(x&0x0f);//设置列号的低4位
        ANDS     R0,R4,#0xF
        BL       OLED2_WrCmd
//  797 	OLED2_WrDat(data1); 	 	
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED2_WrDat
//  798 }
        POP      {R0,R4,R5,PC}    ;; return
//  799 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  800 void OLED2_P6x8Str(uint8 x,uint8 y,uint8 ch[])
//  801 {
OLED2_P6x8Str:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  802   uint8 c=0,i=0,j=0;      
        MOVS     R7,#+0
        MOVS     R8,#+0
        MOVS     R9,#+0
        B.N      ??OLED2_P6x8Str_0
//  803   while (ch[j]!='\0')
//  804   {    
//  805     c =ch[j]-32;
//  806     if(x>126){x=0;y++;}
//  807     OLED2_Set_Pos(x,y);    
//  808   	for(i=0;i<6;i++)     
//  809   	  OLED2_WrDat(F6x8[c][i]);  
??OLED2_P6x8Str_1:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOVS     R0,#+6
        LDR.W    R1,??DataTable14_6
        MLA      R0,R0,R7,R1
        LDRB     R0,[R8, R0]
        BL       OLED2_WrDat
        ADDS     R8,R8,#+1
??OLED2_P6x8Str_2:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+6
        BLT.N    ??OLED2_P6x8Str_1
//  810   	x+=6;
        ADDS     R4,R4,#+6
//  811   	j++;
        ADDS     R9,R9,#+1
??OLED2_P6x8Str_0:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        LDRB     R0,[R9, R6]
        CMP      R0,#+0
        BEQ.N    ??OLED2_P6x8Str_3
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        LDRB     R0,[R9, R6]
        SUBS     R7,R0,#+32
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+127
        BLT.N    ??OLED2_P6x8Str_4
        MOVS     R4,#+0
        ADDS     R5,R5,#+1
??OLED2_P6x8Str_4:
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED2_Set_Pos
        MOVS     R8,#+0
        B.N      ??OLED2_P6x8Str_2
//  812   }
//  813 }
??OLED2_P6x8Str_3:
        POP      {R0,R4-R9,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12:
        DC32     `?<Constant "3.14159">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_1:
        DC32     0x4b189680

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_2:
        DC32     0x49742400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_3:
        DC32     0x47c35000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_4:
        DC32     0x461c4000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_5:
        DC32     0x447a0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_6:
        DC32     0x42c80000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_7:
        DC32     0x41200000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_8:
        DC32     0x3dcccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_9:
        DC32     0x3c23d70b

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_10:
        DC32     0x3a83126f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_11:
        DC32     0x38d1b718

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_12:
        DC32     0x3727c5ad
//  814 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  815 void OLED2_Draw_BMP(uint8 x0,uint8 y0,uint8 x1,uint8 y1,uint8 const bmp[])
//  816 { 	
OLED2_Draw_BMP:
        PUSH     {R4-R10,LR}
        MOVS     R4,R0
        MOVS     R5,R2
        MOVS     R6,R3
//  817   uint16 ii=0;
        MOVS     R7,#+0
//  818   uint8 x,y;
//  819   
//  820   if(y1%8==0) y=y1/8;      
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R0,#+8
        SDIV     R2,R6,R0
        MLS      R2,R2,R0,R6
        CMP      R2,#+0
        BNE.N    ??OLED2_Draw_BMP_0
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R0,#+8
        SDIV     R10,R6,R0
        B.N      ??OLED2_Draw_BMP_1
//  821   else y=y1/8+1;
??OLED2_Draw_BMP_0:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R0,#+8
        SDIV     R0,R6,R0
        ADDS     R10,R0,#+1
//  822 	
//  823   for(y=y0;y<=y1;y++)
??OLED2_Draw_BMP_1:
        MOV      R10,R1
        LDR      R8,[SP, #+32]
        B.N      ??OLED2_Draw_BMP_2
//  824   {
//  825     OLED2_Set_Pos(x0,y);				
//  826     for(x=x0;x<=x1;x++)
//  827     {  
//  828       OLED2_WrDat(bmp[ii++]);	    	
??OLED2_Draw_BMP_3:
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R8]
        BL       OLED2_WrDat
        ADDS     R7,R7,#+1
//  829     }
        ADDS     R9,R9,#+1
??OLED2_Draw_BMP_4:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R5,R9
        BCS.N    ??OLED2_Draw_BMP_3
        ADDS     R10,R10,#+1
??OLED2_Draw_BMP_2:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        CMP      R6,R10
        BCC.N    ??OLED2_Draw_BMP_5
        MOV      R1,R10
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED2_Set_Pos
        MOV      R9,R4
        B.N      ??OLED2_Draw_BMP_4
//  830   }
//  831 }
??OLED2_Draw_BMP_5:
        POP      {R4-R10,PC}      ;; return
//  832 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  833 void OLED2_showCCD(uint8 CCD_Pixel_org[],uint8 thereshold,uint8 illegalArea)
//  834 {
OLED2_showCCD:
        PUSH     {R4-R9,LR}
        SUB      SP,SP,#+132
        MOVS     R5,R0
        MOVS     R4,R2
//  835   uint8 max_Pixel = 0;//数组中的最大值
        MOVS     R6,#+0
//  836   uint8 temp = 0;//临时存储用
        MOVS     R9,#+0
//  837   uint8 CCD_Pixel[128] = {0};
        ADD      R0,SP,#+0
        MOVS     R1,#+128
        BL       __aeabi_memclr4
//  838   uint8 i = 0 ,j = 0;
        MOVS     R7,#+0
        MOVS     R1,#+0
//  839   float temp_float = 0,temp_float2 = 0;
        MOVS     R0,#+0
        MOVS     R8,#+0
//  840   
//  841   for(i=0;i<128;i++)//将CCD数据存入临时数组，防止中断造成显示错误
        MOVS     R2,#+0
        MOVS     R7,R2
        B.N      ??OLED2_showCCD_0
//  842   {
//  843     CCD_Pixel[i] = CCD_Pixel_org[i];
??OLED2_showCCD_1:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDRB     R0,[R7, R5]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R7, R1]
//  844   }
        ADDS     R7,R7,#+1
??OLED2_showCCD_0:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+128
        BLT.N    ??OLED2_showCCD_1
//  845   for(i=0;i<128;i++)
        MOVS     R7,#+0
        B.N      ??OLED2_showCCD_2
//  846   {
//  847     if(CCD_Pixel[i] > max_Pixel){max_Pixel = CCD_Pixel[i];}//求出最大值
??OLED2_showCCD_3:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        ADD      R0,SP,#+0
        LDRB     R0,[R7, R0]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,R0
        BCS.N    ??OLED2_showCCD_4
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        ADD      R0,SP,#+0
        LDRB     R6,[R7, R0]
//  848   }
??OLED2_showCCD_4:
        ADDS     R7,R7,#+1
??OLED2_showCCD_2:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+128
        BLT.N    ??OLED2_showCCD_3
//  849   //max_Pixel = 255;//注释此行可以动态显示最大值，否则将以绝对值方式显示图形
//  850 
//  851   temp_float2 = max_Pixel;if(temp_float2 == 0) temp_float2 = 1;//防除法错误
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R0,R6
        BL       __aeabi_ui2f
        MOV      R8,R0
        MOV      R0,R8
        MOVS     R1,#+0
        BL       __aeabi_cfcmpeq
        BNE.N    ??OLED2_showCCD_5
        MOVS     R8,#+1065353216
//  852   
//  853   OLED2_Fill(0x00);  //清屏
??OLED2_showCCD_5:
        MOVS     R0,#+0
        BL       OLED2_Fill
//  854 
//  855   for(i=0;i<128;i++)
        MOVS     R7,#+0
        B.N      ??OLED2_showCCD_6
//  856   {
//  857     temp_float = CCD_Pixel[i];
??OLED2_showCCD_7:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        ADD      R0,SP,#+0
        LDRB     R0,[R7, R0]
        BL       __aeabi_ui2f
//  858     temp_float = temp_float/temp_float2*63;//求出按比例的Y值
        MOV      R1,R8
        BL       __aeabi_fdiv
        LDR.W    R1,??DataTable14_7  ;; 0x427c0000
        BL       __aeabi_fmul
//  859     
//  860     temp = (uint8) temp_float;
        BL       __aeabi_f2iz
        MOV      R9,R0
//  861     j = (uint8) temp;//将Y值转换为字节型数
        MOV      R1,R9
//  862     
//  863     OLED2_PutPixel(i,(63-j));//输出原始像素点
        RSBS     R1,R1,#+63
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED2_PutPixel
//  864   }
        ADDS     R7,R7,#+1
??OLED2_showCCD_6:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+128
        BLT.N    ??OLED2_showCCD_7
//  865   
//  866   OLED2_PutPagePixel(illegalArea,0,0xFF);//显示无效区域边界线
        MOVS     R2,#+255
        MOVS     R1,#+0
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED2_PutPagePixel
//  867   OLED2_PutPagePixel(illegalArea,8,0xFF);//显示无效区域边界线
        MOVS     R2,#+255
        MOVS     R1,#+8
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED2_PutPagePixel
//  868   OLED2_PutPagePixel(127-illegalArea,0,0xFF);//显示无效区域边界线
        MOVS     R2,#+255
        MOVS     R1,#+0
        RSBS     R0,R4,#+127
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED2_PutPagePixel
//  869   OLED2_PutPagePixel(127-illegalArea,8,0xFF);//显示无效区域边界线
        MOVS     R2,#+255
        MOVS     R1,#+8
        RSBS     R0,R4,#+127
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED2_PutPagePixel
//  870   
//  871 }
        ADD      SP,SP,#+132
        POP      {R4-R9,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13:
        DC32     0x358637be

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_1:
        DC32     0x186a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_2:
        DC32     0x989680

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_3:
        DC32     0xf4240

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_4:
        DC32     ??count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_5:
        DC32     0x400ff080
//  872 /*
//  873 void OLED2_showThQuard(uint16 ThQuard_All[],uint8 MaxTh,uint8 MinTh,uint8 AllMuch)
//  874 // 显示跳变阈值直方图
//  875 {
//  876     uint16 ThQuard_All_save[maxRAMSaveNum];
//  877     uint8 loop = 0;
//  878     for(loop=0;loop<=AllMuch;loop++)
//  879     {
//  880         ThQuard_All_save[loop] = ThQuard_All[loop];
//  881     }
//  882     uint8 maxPixel = MaxTh;
//  883     // uint8 maxPixel = 255;
//  884     OLED2_Fill(0x00);  //清屏
//  885     uint8 y_show = 0;
//  886     uint8 loop_show_Line = 0;
//  887     for(loop=0;loop<=AllMuch;loop++)
//  888     {
//  889         y_show = ThQuard_All_save[loop] * 64 / maxPixel;
//  890         for(loop_show_Line=0;loop_show_Line<=y_show;loop_show_Line++)
//  891         {
//  892             OLED2_PutPixel(loop,loop_show_Line);
//  893         }
//  894     }
//  895 }
//  896 */
//  897 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  898 void OLED2_ShowNumber(uint8 x, uint8 y,float num) 
//  899 {
OLED2_ShowNumber:
        PUSH     {R4-R7,LR}
        SUB      SP,SP,#+12
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  900   float float_num = num;
//  901   uint8 i = 0;
        MOVS     R2,#+0
//  902   uint8 range_flag = 0;
        MOVS     R7,#+0
//  903   unsigned long long_num=1;
        MOVS     R3,#+1
//  904   uint8 float_numchar[8] = "3.14159"; 
        ADD      R0,SP,#+0
        LDR.W    R1,??DataTable14_8
        LDM      R1!,{R12,LR}
        STM      R0!,{R12,LR}
        SUBS     R1,R1,#+8
        SUBS     R0,R0,#+8
//  905   if(float_num >= 10000000){range_flag = 0;} 
        MOVS     R0,R6
        LDR.W    R1,??DataTable14_9  ;; 0x4b189680
        BL       __aeabi_cfrcmple
        BHI.N    ??OLED2_ShowNumber_0
        MOVS     R7,#+0
        B.N      ??OLED2_ShowNumber_1
//  906   else if(float_num >= 1000000){range_flag = 1;}
??OLED2_ShowNumber_0:
        MOVS     R0,R6
        LDR.W    R1,??DataTable14_10  ;; 0x49742400
        BL       __aeabi_cfrcmple
        BHI.N    ??OLED2_ShowNumber_2
        MOVS     R7,#+1
        B.N      ??OLED2_ShowNumber_1
//  907   else if(float_num >= 100000){range_flag = 2;}
??OLED2_ShowNumber_2:
        MOVS     R0,R6
        LDR.W    R1,??DataTable14_11  ;; 0x47c35000
        BL       __aeabi_cfrcmple
        BHI.N    ??OLED2_ShowNumber_3
        MOVS     R7,#+2
        B.N      ??OLED2_ShowNumber_1
//  908   else if(float_num >= 10000){range_flag = 3;}
??OLED2_ShowNumber_3:
        MOVS     R0,R6
        LDR.W    R1,??DataTable14_12  ;; 0x461c4000
        BL       __aeabi_cfrcmple
        BHI.N    ??OLED2_ShowNumber_4
        MOVS     R7,#+3
        B.N      ??OLED2_ShowNumber_1
//  909   else if(float_num >= 1000){range_flag = 4;}
??OLED2_ShowNumber_4:
        MOVS     R0,R6
        LDR.W    R1,??DataTable14_13  ;; 0x447a0000
        BL       __aeabi_cfrcmple
        BHI.N    ??OLED2_ShowNumber_5
        MOVS     R7,#+4
        B.N      ??OLED2_ShowNumber_1
//  910   else if(float_num >= 100){range_flag = 5;}
??OLED2_ShowNumber_5:
        MOVS     R0,R6
        LDR.W    R1,??DataTable14_14  ;; 0x42c80000
        BL       __aeabi_cfrcmple
        BHI.N    ??OLED2_ShowNumber_6
        MOVS     R7,#+5
        B.N      ??OLED2_ShowNumber_1
//  911   else if(float_num >= 10){range_flag = 6;}
??OLED2_ShowNumber_6:
        MOVS     R0,R6
        LDR.W    R1,??DataTable14_15  ;; 0x41200000
        BL       __aeabi_cfrcmple
        BHI.N    ??OLED2_ShowNumber_7
        MOVS     R7,#+6
        B.N      ??OLED2_ShowNumber_1
//  912   else if((float_num >= 1) || (float_num == 0)){range_flag = 7;}
??OLED2_ShowNumber_7:
        MOVS     R0,R6
        MOVS     R1,#+1065353216
        BL       __aeabi_cfrcmple
        BLS.N    ??OLED2_ShowNumber_8
        MOVS     R0,R6
        MOVS     R1,#+0
        BL       __aeabi_cfcmpeq
        BNE.N    ??OLED2_ShowNumber_9
??OLED2_ShowNumber_8:
        MOVS     R7,#+7
        B.N      ??OLED2_ShowNumber_1
//  913   else if(float_num >= 0.1){range_flag = 8;}
??OLED2_ShowNumber_9:
        MOVS     R0,R6
        LDR.W    R1,??DataTable14_16  ;; 0x3dcccccd
        BL       __aeabi_cfrcmple
        BHI.N    ??OLED2_ShowNumber_10
        MOVS     R7,#+8
        B.N      ??OLED2_ShowNumber_1
//  914   else if(float_num >= 0.01){range_flag = 9;}
??OLED2_ShowNumber_10:
        MOVS     R0,R6
        LDR.W    R1,??DataTable14_17  ;; 0x3c23d70b
        BL       __aeabi_cfrcmple
        BHI.N    ??OLED2_ShowNumber_11
        MOVS     R7,#+9
        B.N      ??OLED2_ShowNumber_1
//  915   else if(float_num >= 0.001){range_flag = 10;}
??OLED2_ShowNumber_11:
        MOVS     R0,R6
        LDR.W    R1,??DataTable14_18  ;; 0x3a83126f
        BL       __aeabi_cfrcmple
        BHI.N    ??OLED2_ShowNumber_12
        MOVS     R7,#+10
        B.N      ??OLED2_ShowNumber_1
//  916   else if(float_num >= 0.0001){range_flag = 11;}
??OLED2_ShowNumber_12:
        MOVS     R0,R6
        LDR.W    R1,??DataTable14_19  ;; 0x38d1b718
        BL       __aeabi_cfrcmple
        BHI.N    ??OLED2_ShowNumber_13
        MOVS     R7,#+11
        B.N      ??OLED2_ShowNumber_1
//  917   else if(float_num >= 0.00001){range_flag = 12;}
??OLED2_ShowNumber_13:
        MOVS     R0,R6
        LDR.W    R1,??DataTable14_20  ;; 0x3727c5ad
        BL       __aeabi_cfrcmple
        BHI.N    ??OLED2_ShowNumber_14
        MOVS     R7,#+12
        B.N      ??OLED2_ShowNumber_1
//  918   else if(float_num >= 0.000001){range_flag = 13;}
??OLED2_ShowNumber_14:
        MOVS     R0,R6
        LDR.W    R1,??DataTable14_21  ;; 0x358637be
        BL       __aeabi_cfrcmple
        BHI.N    ??OLED2_ShowNumber_1
        MOVS     R7,#+13
//  919   switch (range_flag) 
??OLED2_ShowNumber_1:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+2
        BEQ.N    ??OLED2_ShowNumber_15
        BCC.N    ??OLED2_ShowNumber_16
        CMP      R7,#+4
        BEQ.W    ??OLED2_ShowNumber_17
        BCC.N    ??OLED2_ShowNumber_18
        CMP      R7,#+6
        BEQ.W    ??OLED2_ShowNumber_19
        BCC.W    ??OLED2_ShowNumber_20
        CMP      R7,#+8
        BEQ.W    ??OLED2_ShowNumber_21
        BCC.W    ??OLED2_ShowNumber_22
        CMP      R7,#+10
        BEQ.W    ??OLED2_ShowNumber_23
        BCC.W    ??OLED2_ShowNumber_24
//  920   {
//  921     default : break;
??OLED2_ShowNumber_16:
        B.N      ??OLED2_ShowNumber_25
//  922     case 2 : long_num = (unsigned long)(float_num);
??OLED2_ShowNumber_15:
        MOVS     R0,R6
        BL       __aeabi_f2uiz
        MOVS     R3,R0
//  923       for(i=0;i<7;i++) 
        MOVS     R2,#+0
        B.N      ??OLED2_ShowNumber_26
//  924       {
//  925         switch (i)
//  926         {
//  927           default : break;
//  928           case 0 : float_numchar[i] = (long_num/100000)+'0';
//  929           long_num = long_num%100000; break;
//  930           case 1 : float_numchar[i] = (long_num/10000)+'0';
//  931           long_num = long_num%10000; break;
//  932           case 2 : float_numchar[i] = (long_num/1000)+'0';
//  933           long_num = long_num%1000; break;          
//  934           case 3 : float_numchar[i] = (long_num/100)+'0';
//  935           long_num = long_num%100; break;
//  936           case 4 : float_numchar[i] = (long_num/10)+'0'; 
//  937           long_num = long_num%10; break;     
//  938           case 5 : float_numchar[i] = (long_num)+'0'; 
//  939           long_num = long_num; break;  
//  940           case 6 : float_numchar[i] = ' '; break;   
??OLED2_ShowNumber_27:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+32
        STRB     R1,[R2, R0]
??OLED2_ShowNumber_28:
        ADDS     R2,R2,#+1
??OLED2_ShowNumber_26:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+7
        BGE.N    ??OLED2_ShowNumber_29
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BEQ.N    ??OLED2_ShowNumber_30
        CMP      R2,#+2
        BEQ.N    ??OLED2_ShowNumber_31
        BCC.N    ??OLED2_ShowNumber_32
        CMP      R2,#+4
        BEQ.N    ??OLED2_ShowNumber_33
        BCC.N    ??OLED2_ShowNumber_34
        CMP      R2,#+6
        BEQ.N    ??OLED2_ShowNumber_27
        BCC.N    ??OLED2_ShowNumber_35
??OLED2_ShowNumber_36:
        B.N      ??OLED2_ShowNumber_28
??OLED2_ShowNumber_30:
        LDR.W    R0,??DataTable14_22  ;; 0x186a0
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        LDR.W    R0,??DataTable14_22  ;; 0x186a0
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED2_ShowNumber_28
??OLED2_ShowNumber_32:
        MOVW     R0,#+10000
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        MOVW     R0,#+10000
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED2_ShowNumber_28
??OLED2_ShowNumber_31:
        MOV      R0,#+1000
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        MOV      R0,#+1000
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED2_ShowNumber_28
??OLED2_ShowNumber_34:
        MOVS     R0,#+100
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        MOVS     R0,#+100
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED2_ShowNumber_28
??OLED2_ShowNumber_33:
        MOVS     R0,#+10
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        MOVS     R0,#+10
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED2_ShowNumber_28
??OLED2_ShowNumber_35:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        ADDS     R1,R3,#+48
        STRB     R1,[R2, R0]
        B.N      ??OLED2_ShowNumber_28
//  941         } 
//  942       }break;
??OLED2_ShowNumber_29:
        B.N      ??OLED2_ShowNumber_25
//  943     case 3 : long_num = (unsigned long)(float_num*1000);
??OLED2_ShowNumber_18:
        LDR.W    R0,??DataTable14_13  ;; 0x447a0000
        MOVS     R1,R6
        BL       __aeabi_fmul
        BL       __aeabi_f2uiz
        MOVS     R3,R0
//  944       for(i=0;i<7;i++) 
        MOVS     R2,#+0
        B.N      ??OLED2_ShowNumber_37
//  945       {
//  946         switch (i)
//  947         {
//  948           default : break;
//  949           case 0 : float_numchar[i] = (long_num/10000000)+'0';
//  950           long_num = long_num%10000000; break;
//  951           case 1 : float_numchar[i] = (long_num/1000000)+'0';
//  952           long_num = long_num%1000000; break;
//  953           case 2 : float_numchar[i] = (long_num/100000)+'0';
//  954           long_num = long_num%100000; break;          
//  955           case 3 : float_numchar[i] = (long_num/10000)+'0';
//  956           long_num = long_num%10000; break;
//  957           case 4 : float_numchar[i] = (long_num/1000)+'0'; 
//  958           long_num = long_num%1000; break;       
//  959           case 5 : float_numchar[i] = ' '; break;   
//  960           case 6 : float_numchar[i] = ' '; break;   
??OLED2_ShowNumber_38:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+32
        STRB     R1,[R2, R0]
??OLED2_ShowNumber_39:
        ADDS     R2,R2,#+1
??OLED2_ShowNumber_37:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+7
        BGE.N    ??OLED2_ShowNumber_40
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BEQ.N    ??OLED2_ShowNumber_41
        CMP      R2,#+2
        BEQ.N    ??OLED2_ShowNumber_42
        BCC.N    ??OLED2_ShowNumber_43
        CMP      R2,#+4
        BEQ.N    ??OLED2_ShowNumber_44
        BCC.N    ??OLED2_ShowNumber_45
        CMP      R2,#+6
        BEQ.N    ??OLED2_ShowNumber_38
        BCC.N    ??OLED2_ShowNumber_46
??OLED2_ShowNumber_47:
        B.N      ??OLED2_ShowNumber_39
??OLED2_ShowNumber_41:
        LDR.W    R0,??DataTable14_23  ;; 0x989680
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        LDR.W    R0,??DataTable14_23  ;; 0x989680
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED2_ShowNumber_39
??OLED2_ShowNumber_43:
        LDR.W    R0,??DataTable14_24  ;; 0xf4240
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        LDR.W    R0,??DataTable14_24  ;; 0xf4240
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED2_ShowNumber_39
??OLED2_ShowNumber_42:
        LDR.W    R0,??DataTable14_22  ;; 0x186a0
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        LDR.W    R0,??DataTable14_22  ;; 0x186a0
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED2_ShowNumber_39
??OLED2_ShowNumber_45:
        MOVW     R0,#+10000
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        MOVW     R0,#+10000
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED2_ShowNumber_39
??OLED2_ShowNumber_44:
        MOV      R0,#+1000
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        MOV      R0,#+1000
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED2_ShowNumber_39
??OLED2_ShowNumber_46:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+32
        STRB     R1,[R2, R0]
        B.N      ??OLED2_ShowNumber_39
//  961         } 
//  962       }break;
??OLED2_ShowNumber_40:
        B.N      ??OLED2_ShowNumber_25
//  963     case 4 : long_num = (unsigned long)(float_num*1000);
??OLED2_ShowNumber_17:
        LDR.W    R0,??DataTable14_13  ;; 0x447a0000
        MOVS     R1,R6
        BL       __aeabi_fmul
        BL       __aeabi_f2uiz
        MOVS     R3,R0
//  964       for(i=0;i<7;i++) 
        MOVS     R2,#+0
        B.N      ??OLED2_ShowNumber_48
//  965       {
//  966         switch (i)
//  967         {
//  968           default : break;
//  969           case 0 : float_numchar[i] = (long_num/1000000)+'0';
//  970           long_num = long_num%1000000; break;
//  971           case 1 : float_numchar[i] = (long_num/100000)+'0';
//  972           long_num = long_num%100000; break;
//  973           case 2 : float_numchar[i] = (long_num/10000)+'0';
//  974           long_num = long_num%10000; break;          
//  975           case 3 : float_numchar[i] = (long_num/1000)+'0';
//  976           long_num = long_num%1000; break;
//  977           case 4 : float_numchar[i] = ' '; break;   
//  978           case 5 : float_numchar[i] = ' '; break;   
//  979           case 6 : float_numchar[i] = ' '; break;   
??OLED2_ShowNumber_49:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+32
        STRB     R1,[R2, R0]
??OLED2_ShowNumber_50:
        ADDS     R2,R2,#+1
??OLED2_ShowNumber_48:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+7
        BGE.N    ??OLED2_ShowNumber_51
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BEQ.N    ??OLED2_ShowNumber_52
        CMP      R2,#+2
        BEQ.N    ??OLED2_ShowNumber_53
        BCC.N    ??OLED2_ShowNumber_54
        CMP      R2,#+4
        BEQ.N    ??OLED2_ShowNumber_55
        BCC.N    ??OLED2_ShowNumber_56
        CMP      R2,#+6
        BEQ.N    ??OLED2_ShowNumber_49
        BCC.N    ??OLED2_ShowNumber_57
??OLED2_ShowNumber_58:
        B.N      ??OLED2_ShowNumber_50
??OLED2_ShowNumber_52:
        LDR.W    R0,??DataTable14_24  ;; 0xf4240
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        LDR.W    R0,??DataTable14_24  ;; 0xf4240
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED2_ShowNumber_50
??OLED2_ShowNumber_54:
        LDR.W    R0,??DataTable14_22  ;; 0x186a0
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        LDR.W    R0,??DataTable14_22  ;; 0x186a0
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED2_ShowNumber_50
??OLED2_ShowNumber_53:
        MOVW     R0,#+10000
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        MOVW     R0,#+10000
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED2_ShowNumber_50
??OLED2_ShowNumber_56:
        MOV      R0,#+1000
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        MOV      R0,#+1000
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED2_ShowNumber_50
??OLED2_ShowNumber_55:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+32
        STRB     R1,[R2, R0]
        B.N      ??OLED2_ShowNumber_50
??OLED2_ShowNumber_57:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+32
        STRB     R1,[R2, R0]
        B.N      ??OLED2_ShowNumber_50
//  980         } 
//  981       }break;
??OLED2_ShowNumber_51:
        B.N      ??OLED2_ShowNumber_25
//  982     case 5 : long_num = (unsigned long)(float_num*1000);
??OLED2_ShowNumber_20:
        LDR.W    R0,??DataTable14_13  ;; 0x447a0000
        MOVS     R1,R6
        BL       __aeabi_fmul
        BL       __aeabi_f2uiz
        MOVS     R3,R0
//  983       for(i=0;i<7;i++) 
        MOVS     R2,#+0
        B.N      ??OLED2_ShowNumber_59
//  984       {
//  985         switch (i)
//  986         {
//  987           default : break;
//  988           case 0 : float_numchar[i] = (long_num/100000)+'0';
//  989           long_num = long_num%100000; break;
//  990           case 1 : float_numchar[i] = (long_num/10000)+'0';
//  991           long_num = long_num%10000; break;
//  992           case 2 : float_numchar[i] = (long_num/1000)+'0';
//  993           long_num = long_num%1000; break;
//  994           case 3 : float_numchar[i] = '.'; break;
//  995           case 4 : float_numchar[i] = (long_num/100)+'0';
//  996           long_num = long_num%100; break;           
//  997           case 5 : float_numchar[i] = (long_num/10)+'0';
//  998           long_num = long_num%10; break;  
//  999           case 6 : float_numchar[i] = (long_num)+'0';
??OLED2_ShowNumber_60:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        ADDS     R1,R3,#+48
        STRB     R1,[R2, R0]
// 1000           long_num = long_num; break;    
??OLED2_ShowNumber_61:
        ADDS     R2,R2,#+1
??OLED2_ShowNumber_59:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+7
        BGE.N    ??OLED2_ShowNumber_62
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BEQ.N    ??OLED2_ShowNumber_63
        CMP      R2,#+2
        BEQ.N    ??OLED2_ShowNumber_64
        BCC.N    ??OLED2_ShowNumber_65
        CMP      R2,#+4
        BEQ.N    ??OLED2_ShowNumber_66
        BCC.N    ??OLED2_ShowNumber_67
        CMP      R2,#+6
        BEQ.N    ??OLED2_ShowNumber_60
        BCC.N    ??OLED2_ShowNumber_68
??OLED2_ShowNumber_69:
        B.N      ??OLED2_ShowNumber_61
??OLED2_ShowNumber_63:
        LDR.W    R0,??DataTable14_22  ;; 0x186a0
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        LDR.W    R0,??DataTable14_22  ;; 0x186a0
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED2_ShowNumber_61
??OLED2_ShowNumber_65:
        MOVW     R0,#+10000
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        MOVW     R0,#+10000
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED2_ShowNumber_61
??OLED2_ShowNumber_64:
        MOV      R0,#+1000
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        MOV      R0,#+1000
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED2_ShowNumber_61
??OLED2_ShowNumber_67:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+46
        STRB     R1,[R2, R0]
        B.N      ??OLED2_ShowNumber_61
??OLED2_ShowNumber_66:
        MOVS     R0,#+100
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        MOVS     R0,#+100
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED2_ShowNumber_61
??OLED2_ShowNumber_68:
        MOVS     R0,#+10
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        MOVS     R0,#+10
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED2_ShowNumber_61
// 1001         } 
// 1002       }break;    
??OLED2_ShowNumber_62:
        B.N      ??OLED2_ShowNumber_25
// 1003     case 6 : long_num = (unsigned long)(float_num*10000);
??OLED2_ShowNumber_19:
        LDR.W    R0,??DataTable14_12  ;; 0x461c4000
        MOVS     R1,R6
        BL       __aeabi_fmul
        BL       __aeabi_f2uiz
        MOVS     R3,R0
// 1004       for(i=0;i<7;i++) 
        MOVS     R2,#+0
        B.N      ??OLED2_ShowNumber_70
// 1005       {
// 1006         switch (i)
// 1007         {
// 1008           default : break;
// 1009           case 0 : float_numchar[i] =  (long_num/100000)+'0';
// 1010           long_num = long_num%100000; break;
// 1011           case 1 : float_numchar[i] =  (long_num/10000)+'0';
// 1012           long_num = long_num%10000; break;
// 1013           case 2 : float_numchar[i] = '.'; break;
// 1014           case 3 : float_numchar[i] =  (long_num/1000)+'0';
// 1015           long_num = long_num%1000; break;
// 1016           case 4 : float_numchar[i] =  (long_num/100)+'0';
// 1017           long_num = long_num%100; break;
// 1018           case 5 : float_numchar[i] =  (long_num/10)+'0';
// 1019           long_num = long_num%10; break;  
// 1020           case 6 : float_numchar[i] =  (long_num)+'0';
??OLED2_ShowNumber_71:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        ADDS     R1,R3,#+48
        STRB     R1,[R2, R0]
// 1021           long_num = long_num; break;    
??OLED2_ShowNumber_72:
        ADDS     R2,R2,#+1
??OLED2_ShowNumber_70:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+7
        BGE.N    ??OLED2_ShowNumber_73
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BEQ.N    ??OLED2_ShowNumber_74
        CMP      R2,#+2
        BEQ.N    ??OLED2_ShowNumber_75
        BCC.N    ??OLED2_ShowNumber_76
        CMP      R2,#+4
        BEQ.N    ??OLED2_ShowNumber_77
        BCC.N    ??OLED2_ShowNumber_78
        CMP      R2,#+6
        BEQ.N    ??OLED2_ShowNumber_71
        BCC.N    ??OLED2_ShowNumber_79
??OLED2_ShowNumber_80:
        B.N      ??OLED2_ShowNumber_72
??OLED2_ShowNumber_74:
        LDR.W    R0,??DataTable14_22  ;; 0x186a0
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        LDR.W    R0,??DataTable14_22  ;; 0x186a0
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED2_ShowNumber_72
??OLED2_ShowNumber_76:
        MOVW     R0,#+10000
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        MOVW     R0,#+10000
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED2_ShowNumber_72
??OLED2_ShowNumber_75:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+46
        STRB     R1,[R2, R0]
        B.N      ??OLED2_ShowNumber_72
??OLED2_ShowNumber_78:
        MOV      R0,#+1000
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        MOV      R0,#+1000
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED2_ShowNumber_72
??OLED2_ShowNumber_77:
        MOVS     R0,#+100
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        MOVS     R0,#+100
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED2_ShowNumber_72
??OLED2_ShowNumber_79:
        MOVS     R0,#+10
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        MOVS     R0,#+10
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED2_ShowNumber_72
// 1022         } 
// 1023       }break;
??OLED2_ShowNumber_73:
        B.N      ??OLED2_ShowNumber_25
// 1024     case 7 : long_num = (unsigned long)(float_num*100000);
??OLED2_ShowNumber_22:
        LDR.N    R0,??DataTable14_11  ;; 0x47c35000
        MOVS     R1,R6
        BL       __aeabi_fmul
        BL       __aeabi_f2uiz
        MOVS     R3,R0
// 1025       for(i=0;i<7;i++) 
        MOVS     R2,#+0
        B.N      ??OLED2_ShowNumber_81
// 1026       {
// 1027         switch (i)
// 1028         {
// 1029           default : break;
// 1030           case 0 : float_numchar[i] =  (long_num/100000)+'0';
// 1031           long_num = long_num%100000; break;
// 1032           case 1 : float_numchar[i] = '.'; break;
// 1033           case 2 : float_numchar[i] =  (long_num/10000)+'0';
// 1034           long_num = long_num%10000; break;          
// 1035           case 3 : float_numchar[i] =  (long_num/1000)+'0';
// 1036           long_num = long_num%1000; break;
// 1037           case 4 : float_numchar[i] =  (long_num/100)+'0';
// 1038           long_num = long_num%100; break;  
// 1039           case 5 : float_numchar[i] =  (long_num/10)+'0';
// 1040           long_num = long_num%10; break;    
// 1041           case 6 : float_numchar[i] =  (long_num)+'0';
??OLED2_ShowNumber_82:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        ADDS     R1,R3,#+48
        STRB     R1,[R2, R0]
// 1042           long_num = long_num; break;   
??OLED2_ShowNumber_83:
        ADDS     R2,R2,#+1
??OLED2_ShowNumber_81:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+7
        BGE.N    ??OLED2_ShowNumber_84
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BEQ.N    ??OLED2_ShowNumber_85
        CMP      R2,#+2
        BEQ.N    ??OLED2_ShowNumber_86
        BCC.N    ??OLED2_ShowNumber_87
        CMP      R2,#+4
        BEQ.N    ??OLED2_ShowNumber_88
        BCC.N    ??OLED2_ShowNumber_89
        CMP      R2,#+6
        BEQ.N    ??OLED2_ShowNumber_82
        BCC.N    ??OLED2_ShowNumber_90
??OLED2_ShowNumber_91:
        B.N      ??OLED2_ShowNumber_83
??OLED2_ShowNumber_85:
        LDR.N    R0,??DataTable14_22  ;; 0x186a0
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        LDR.N    R0,??DataTable14_22  ;; 0x186a0
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED2_ShowNumber_83
??OLED2_ShowNumber_87:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+46
        STRB     R1,[R2, R0]
        B.N      ??OLED2_ShowNumber_83
??OLED2_ShowNumber_86:
        MOVW     R0,#+10000
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        MOVW     R0,#+10000
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED2_ShowNumber_83
??OLED2_ShowNumber_89:
        MOV      R0,#+1000
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        MOV      R0,#+1000
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED2_ShowNumber_83
??OLED2_ShowNumber_88:
        MOVS     R0,#+100
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        MOVS     R0,#+100
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED2_ShowNumber_83
??OLED2_ShowNumber_90:
        MOVS     R0,#+10
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        MOVS     R0,#+10
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED2_ShowNumber_83
// 1043         } 
// 1044       }break; 
??OLED2_ShowNumber_84:
        B.N      ??OLED2_ShowNumber_25
// 1045     case 8 : long_num = (unsigned int)(float_num*1000);
??OLED2_ShowNumber_21:
        LDR.N    R0,??DataTable14_13  ;; 0x447a0000
        MOVS     R1,R6
        BL       __aeabi_fmul
        BL       __aeabi_f2uiz
        MOVS     R3,R0
// 1046       for(i=0;i<7;i++) 
        MOVS     R2,#+0
        B.N      ??OLED2_ShowNumber_92
// 1047       {
// 1048         switch (i)
// 1049         {
// 1050           default : break;
// 1051           case 0 : float_numchar[i] = '0'; break;
// 1052           case 1 : float_numchar[i] = '.'; break;
// 1053           case 2 : float_numchar[i] = (long_num/100)+'0';
// 1054           long_num = long_num%100; break;          
// 1055           case 3 : float_numchar[i] = (long_num/10)+'0';
// 1056           long_num = long_num%10; break;
// 1057           case 4 : float_numchar[i] = (long_num)+'0'; break;  
// 1058           case 5 : float_numchar[i] = ' '; break;   
// 1059           case 6 : float_numchar[i] = ' '; break;   
??OLED2_ShowNumber_93:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+32
        STRB     R1,[R2, R0]
??OLED2_ShowNumber_94:
        ADDS     R2,R2,#+1
??OLED2_ShowNumber_92:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+7
        BGE.N    ??OLED2_ShowNumber_95
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BEQ.N    ??OLED2_ShowNumber_96
        CMP      R2,#+2
        BEQ.N    ??OLED2_ShowNumber_97
        BCC.N    ??OLED2_ShowNumber_98
        CMP      R2,#+4
        BEQ.N    ??OLED2_ShowNumber_99
        BCC.N    ??OLED2_ShowNumber_100
        CMP      R2,#+6
        BEQ.N    ??OLED2_ShowNumber_93
        BCC.N    ??OLED2_ShowNumber_101
??OLED2_ShowNumber_102:
        B.N      ??OLED2_ShowNumber_94
??OLED2_ShowNumber_96:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+48
        STRB     R1,[R2, R0]
        B.N      ??OLED2_ShowNumber_94
??OLED2_ShowNumber_98:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+46
        STRB     R1,[R2, R0]
        B.N      ??OLED2_ShowNumber_94
??OLED2_ShowNumber_97:
        MOVS     R0,#+100
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        MOVS     R0,#+100
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED2_ShowNumber_94
??OLED2_ShowNumber_100:
        MOVS     R0,#+10
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        MOVS     R0,#+10
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED2_ShowNumber_94
??OLED2_ShowNumber_99:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        ADDS     R1,R3,#+48
        STRB     R1,[R2, R0]
        B.N      ??OLED2_ShowNumber_94
??OLED2_ShowNumber_101:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+32
        STRB     R1,[R2, R0]
        B.N      ??OLED2_ShowNumber_94
// 1060         } 
// 1061       }break;
??OLED2_ShowNumber_95:
        B.N      ??OLED2_ShowNumber_25
// 1062     case 9 : long_num = (unsigned int)(float_num*1000);
??OLED2_ShowNumber_24:
        LDR.N    R0,??DataTable14_13  ;; 0x447a0000
        MOVS     R1,R6
        BL       __aeabi_fmul
        BL       __aeabi_f2uiz
        MOVS     R3,R0
// 1063       for(i=0;i<7;i++) 
        MOVS     R2,#+0
        B.N      ??OLED2_ShowNumber_103
// 1064       {
// 1065         switch (i)
// 1066         {
// 1067           default : break;
// 1068           case 0 : float_numchar[i] = '0'; break;
// 1069           case 1 : float_numchar[i] = '.'; break;
// 1070           case 2 : float_numchar[i] = '0'; break;          
// 1071           case 3 : float_numchar[i] = (long_num/10)+'0';
// 1072           long_num = long_num%10; break;
// 1073           case 4 : float_numchar[i] = (long_num)+'0'; break;     
// 1074           case 5 : float_numchar[i] = ' '; break;   
// 1075           case 6 : float_numchar[i] = ' '; break;   
??OLED2_ShowNumber_104:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+32
        STRB     R1,[R2, R0]
??OLED2_ShowNumber_105:
        ADDS     R2,R2,#+1
??OLED2_ShowNumber_103:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+7
        BGE.N    ??OLED2_ShowNumber_106
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BEQ.N    ??OLED2_ShowNumber_107
        CMP      R2,#+2
        BEQ.N    ??OLED2_ShowNumber_108
        BCC.N    ??OLED2_ShowNumber_109
        CMP      R2,#+4
        BEQ.N    ??OLED2_ShowNumber_110
        BCC.N    ??OLED2_ShowNumber_111
        CMP      R2,#+6
        BEQ.N    ??OLED2_ShowNumber_104
        BCC.N    ??OLED2_ShowNumber_112
??OLED2_ShowNumber_113:
        B.N      ??OLED2_ShowNumber_105
??OLED2_ShowNumber_107:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+48
        STRB     R1,[R2, R0]
        B.N      ??OLED2_ShowNumber_105
??OLED2_ShowNumber_109:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+46
        STRB     R1,[R2, R0]
        B.N      ??OLED2_ShowNumber_105
??OLED2_ShowNumber_108:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+48
        STRB     R1,[R2, R0]
        B.N      ??OLED2_ShowNumber_105
??OLED2_ShowNumber_111:
        MOVS     R0,#+10
        UDIV     R0,R3,R0
        ADDS     R0,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R2, R1]
        MOVS     R0,#+10
        UDIV     R1,R3,R0
        MLS      R3,R0,R1,R3
        B.N      ??OLED2_ShowNumber_105
??OLED2_ShowNumber_110:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        ADDS     R1,R3,#+48
        STRB     R1,[R2, R0]
        B.N      ??OLED2_ShowNumber_105
??OLED2_ShowNumber_112:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+32
        STRB     R1,[R2, R0]
        B.N      ??OLED2_ShowNumber_105
// 1076         } 
// 1077       }break;
??OLED2_ShowNumber_106:
        B.N      ??OLED2_ShowNumber_25
// 1078     case 10 : long_num = (unsigned int)(float_num*1000);
??OLED2_ShowNumber_23:
        LDR.N    R0,??DataTable14_13  ;; 0x447a0000
        MOVS     R1,R6
        BL       __aeabi_fmul
        BL       __aeabi_f2uiz
        MOVS     R3,R0
// 1079       for(i=0;i<7;i++) 
        MOVS     R2,#+0
        B.N      ??OLED2_ShowNumber_114
// 1080       {
// 1081         switch (i)
// 1082         {
// 1083           default : break;
// 1084           case 0 : float_numchar[i] = '0'; break;
// 1085           case 1 : float_numchar[i] = '.'; break;
// 1086           case 2 : float_numchar[i] = '0'; break; 
// 1087           case 3 : float_numchar[i] = '0'; break;         
// 1088           case 4 : float_numchar[i] = (long_num)+'0'; break;    
// 1089           case 5 : float_numchar[i] = ' '; break;   
// 1090           case 6 : float_numchar[i] = ' '; break;   
??OLED2_ShowNumber_115:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+32
        STRB     R1,[R2, R0]
??OLED2_ShowNumber_116:
        ADDS     R2,R2,#+1
??OLED2_ShowNumber_114:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+7
        BGE.N    ??OLED2_ShowNumber_117
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BEQ.N    ??OLED2_ShowNumber_118
        CMP      R2,#+2
        BEQ.N    ??OLED2_ShowNumber_119
        BCC.N    ??OLED2_ShowNumber_120
        CMP      R2,#+4
        BEQ.N    ??OLED2_ShowNumber_121
        BCC.N    ??OLED2_ShowNumber_122
        CMP      R2,#+6
        BEQ.N    ??OLED2_ShowNumber_115
        BCC.N    ??OLED2_ShowNumber_123
??OLED2_ShowNumber_124:
        B.N      ??OLED2_ShowNumber_116
??OLED2_ShowNumber_118:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+48
        STRB     R1,[R2, R0]
        B.N      ??OLED2_ShowNumber_116
??OLED2_ShowNumber_120:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+46
        STRB     R1,[R2, R0]
        B.N      ??OLED2_ShowNumber_116
??OLED2_ShowNumber_119:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+48
        STRB     R1,[R2, R0]
        B.N      ??OLED2_ShowNumber_116
??OLED2_ShowNumber_122:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+48
        STRB     R1,[R2, R0]
        B.N      ??OLED2_ShowNumber_116
??OLED2_ShowNumber_121:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        ADDS     R1,R3,#+48
        STRB     R1,[R2, R0]
        B.N      ??OLED2_ShowNumber_116
??OLED2_ShowNumber_123:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+32
        STRB     R1,[R2, R0]
        B.N      ??OLED2_ShowNumber_116
// 1091         } 
// 1092       }break;
// 1093   }
// 1094   float_numchar[7] = 0;
??OLED2_ShowNumber_117:
??OLED2_ShowNumber_25:
        MOVS     R0,#+0
        STRB     R0,[SP, #+7]
// 1095   OLED2_P6x8Str(x,y,float_numchar);
        ADD      R2,SP,#+0
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED2_P6x8Str
// 1096 }
        POP      {R0-R2,R4-R7,PC}  ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_1:
        DC32     0x4004b04c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_2:
        DC32     0x4004b048

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_3:
        DC32     0x4004b044

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_4:
        DC32     0x4004b040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_5:
        DC32     0x400ff094

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_6:
        DC32     F6x8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_7:
        DC32     0x427c0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_8:
        DC32     `?<Constant "3.14159">_1`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_9:
        DC32     0x4b189680

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_10:
        DC32     0x49742400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_11:
        DC32     0x47c35000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_12:
        DC32     0x461c4000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_13:
        DC32     0x447a0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_14:
        DC32     0x42c80000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_15:
        DC32     0x41200000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_16:
        DC32     0x3dcccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_17:
        DC32     0x3c23d70b

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_18:
        DC32     0x3a83126f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_19:
        DC32     0x38d1b718

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_20:
        DC32     0x3727c5ad

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_21:
        DC32     0x358637be

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_22:
        DC32     0x186a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_23:
        DC32     0x989680

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_24:
        DC32     0xf4240
// 1097 
// 1098 //*****************************************************************************************
// 1099 //-----------------------------------------------------------------------------------------
// 1100 //---------------------------------------OLED菜单显示--------------------------------------
// 1101 //-----------------------------------------------------------------------------------------
// 1102 //*****************************************************************************************

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1103 void GR_OLEDMenuDisplay(void)
// 1104 {
GR_OLEDMenuDisplay:
        PUSH     {R7,LR}
// 1105 
// 1106   if(OLED.Screen == 0)//0-CCD原始图像+参数画面
        LDR.W    R0,??DataTable15
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.W    ??GR_OLEDMenuDisplay_0
// 1107   {
// 1108     //----CCD原始图像显示----//
// 1109     switch(OLED.Image)
        LDR.W    R0,??DataTable15
        LDRB     R0,[R0, #+1]
        CMP      R0,#+0
        BEQ.N    ??GR_OLEDMenuDisplay_1
        CMP      R0,#+2
        BEQ.N    ??GR_OLEDMenuDisplay_2
        BCC.N    ??GR_OLEDMenuDisplay_3
        B.N      ??GR_OLEDMenuDisplay_4
// 1110     {
// 1111     case 0://显示CCD图像
// 1112       OLED_showCCD(CCD1.img,0,CCD1illegalArea);//显示CCD1图像
??GR_OLEDMenuDisplay_1:
        MOVS     R2,#+10
        MOVS     R1,#+0
        LDR.W    R0,??DataTable15_1
        BL       OLED_showCCD
// 1113       OLED2_showCCD(CCD2.img,0,CCD2illegalArea);//显示CCD2图像
        MOVS     R2,#+5
        MOVS     R1,#+0
        LDR.W    R0,??DataTable15_2
        BL       OLED2_showCCD
// 1114       break;
        B.N      ??GR_OLEDMenuDisplay_5
// 1115     case 1://高亮显示当前使用的CCD
// 1116       if(Give.CCDSource == 0){OLED_Fill(0xFF);OLED2_Fill(0);}
??GR_OLEDMenuDisplay_3:
        LDR.W    R0,??DataTable15_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??GR_OLEDMenuDisplay_6
        MOVS     R0,#+255
        BL       OLED_Fill
        MOVS     R0,#+0
        BL       OLED2_Fill
        B.N      ??GR_OLEDMenuDisplay_7
// 1117       else{OLED_Fill(0);OLED2_Fill(0xFF);}
??GR_OLEDMenuDisplay_6:
        MOVS     R0,#+0
        BL       OLED_Fill
        MOVS     R0,#+255
        BL       OLED2_Fill
// 1118       break;
??GR_OLEDMenuDisplay_7:
        B.N      ??GR_OLEDMenuDisplay_5
// 1119     case 2://显示特殊状态画面
// 1120       if(OLED.ClearFlag == 1)
??GR_OLEDMenuDisplay_2:
        LDR.W    R0,??DataTable15
        LDRB     R0,[R0, #+4]
        CMP      R0,#+1
        BNE.N    ??GR_OLEDMenuDisplay_8
// 1121       { OLED_CLS();OLED2_CLS();//清屏
        BL       OLED_CLS
        BL       OLED2_CLS
// 1122         OLED.ClearFlag = 0;
        LDR.W    R0,??DataTable15
        MOVS     R1,#+0
        STRB     R1,[R0, #+4]
// 1123       }
// 1124       switch(Trk.SpecialStatus)
??GR_OLEDMenuDisplay_8:
        LDR.W    R0,??DataTable15_4
        LDRB     R0,[R0, #+1692]
        CMP      R0,#+0
        BEQ.N    ??GR_OLEDMenuDisplay_9
        CMP      R0,#+1
        BEQ.N    ??GR_OLEDMenuDisplay_10
        CMP      R0,#+2
        BEQ.N    ??GR_OLEDMenuDisplay_11
        CMP      R0,#+3
        BEQ.N    ??GR_OLEDMenuDisplay_12
        CMP      R0,#+4
        BEQ.W    ??GR_OLEDMenuDisplay_13
        CMP      R0,#+11
        BEQ.W    ??GR_OLEDMenuDisplay_14
        CMP      R0,#+12
        BEQ.W    ??GR_OLEDMenuDisplay_15
        CMP      R0,#+13
        BEQ.W    ??GR_OLEDMenuDisplay_16
        CMP      R0,#+14
        BEQ.W    ??GR_OLEDMenuDisplay_17
        CMP      R0,#+21
        BEQ.W    ??GR_OLEDMenuDisplay_18
        CMP      R0,#+22
        BEQ.W    ??GR_OLEDMenuDisplay_19
        CMP      R0,#+31
        BEQ.W    ??GR_OLEDMenuDisplay_20
        CMP      R0,#+32
        BEQ.W    ??GR_OLEDMenuDisplay_21
        CMP      R0,#+41
        BEQ.W    ??GR_OLEDMenuDisplay_22
        CMP      R0,#+42
        BEQ.W    ??GR_OLEDMenuDisplay_23
        CMP      R0,#+51
        BEQ.W    ??GR_OLEDMenuDisplay_24
        CMP      R0,#+52
        BEQ.W    ??GR_OLEDMenuDisplay_25
        CMP      R0,#+61
        BEQ.W    ??GR_OLEDMenuDisplay_26
        CMP      R0,#+71
        BEQ.W    ??GR_OLEDMenuDisplay_27
        CMP      R0,#+81
        BEQ.W    ??GR_OLEDMenuDisplay_28
        B.N      ??GR_OLEDMenuDisplay_29
// 1125       {
// 1126       case 0:OLED2_Draw_BMP(0,0,127,7,Status0);OLED_ShowNumber(45,4,Trk.SpecialStatus);
??GR_OLEDMenuDisplay_9:
        LDR.W    R0,??DataTable15_5
        STR      R0,[SP, #+0]
        MOVS     R3,#+7
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED2_Draw_BMP
        LDR.W    R0,??DataTable15_4
        LDRB     R0,[R0, #+1692]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+4
        MOVS     R0,#+45
        BL       OLED_ShowNumber
// 1127         break;
        B.N      ??GR_OLEDMenuDisplay_30
// 1128       case 1:OLED2_Draw_BMP(0,0,127,7,Status1);OLED_ShowNumber(45,4,Trk.SpecialStatus);
??GR_OLEDMenuDisplay_10:
        LDR.W    R0,??DataTable15_6
        STR      R0,[SP, #+0]
        MOVS     R3,#+7
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED2_Draw_BMP
        LDR.W    R0,??DataTable15_4
        LDRB     R0,[R0, #+1692]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+4
        MOVS     R0,#+45
        BL       OLED_ShowNumber
// 1129         break;
        B.N      ??GR_OLEDMenuDisplay_30
// 1130       case 2:OLED2_Draw_BMP(0,0,127,7,Status2);OLED_ShowNumber(45,4,Trk.SpecialStatus);
??GR_OLEDMenuDisplay_11:
        LDR.W    R0,??DataTable15_7
        STR      R0,[SP, #+0]
        MOVS     R3,#+7
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED2_Draw_BMP
        LDR.W    R0,??DataTable15_4
        LDRB     R0,[R0, #+1692]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+4
        MOVS     R0,#+45
        BL       OLED_ShowNumber
// 1131         break;
        B.N      ??GR_OLEDMenuDisplay_30
// 1132       case 3:OLED2_Draw_BMP(0,0,127,7,Status3); OLED_ShowNumber(45,4,Trk.SpecialStatus);
??GR_OLEDMenuDisplay_12:
        LDR.W    R0,??DataTable15_8
        STR      R0,[SP, #+0]
        MOVS     R3,#+7
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED2_Draw_BMP
        LDR.W    R0,??DataTable15_4
        LDRB     R0,[R0, #+1692]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+4
        MOVS     R0,#+45
        BL       OLED_ShowNumber
// 1133         break;
        B.N      ??GR_OLEDMenuDisplay_30
// 1134       case 4:OLED2_Draw_BMP(0,0,127,7,Status4); OLED_ShowNumber(45,4,Trk.SpecialStatus);
??GR_OLEDMenuDisplay_13:
        LDR.W    R0,??DataTable15_9
        STR      R0,[SP, #+0]
        MOVS     R3,#+7
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED2_Draw_BMP
        LDR.W    R0,??DataTable15_4
        LDRB     R0,[R0, #+1692]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+4
        MOVS     R0,#+45
        BL       OLED_ShowNumber
// 1135         break;
        B.N      ??GR_OLEDMenuDisplay_30
// 1136       case 11:OLED2_Draw_BMP(0,0,127,7,Status11); OLED_ShowNumber(45,4,Trk.SpecialStatus);
??GR_OLEDMenuDisplay_14:
        LDR.W    R0,??DataTable15_10
        STR      R0,[SP, #+0]
        MOVS     R3,#+7
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED2_Draw_BMP
        LDR.W    R0,??DataTable15_4
        LDRB     R0,[R0, #+1692]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+4
        MOVS     R0,#+45
        BL       OLED_ShowNumber
// 1137         break;
        B.N      ??GR_OLEDMenuDisplay_30
// 1138       case 12:OLED2_Draw_BMP(0,0,127,7,Status12); OLED_ShowNumber(45,4,Trk.SpecialStatus);
??GR_OLEDMenuDisplay_15:
        LDR.W    R0,??DataTable15_11
        STR      R0,[SP, #+0]
        MOVS     R3,#+7
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED2_Draw_BMP
        LDR.W    R0,??DataTable15_4
        LDRB     R0,[R0, #+1692]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+4
        MOVS     R0,#+45
        BL       OLED_ShowNumber
// 1139         break;
        B.N      ??GR_OLEDMenuDisplay_30
// 1140       case 13:OLED2_Draw_BMP(0,0,127,7,Status13); OLED_ShowNumber(45,4,Trk.SpecialStatus);
??GR_OLEDMenuDisplay_16:
        LDR.W    R0,??DataTable15_12
        STR      R0,[SP, #+0]
        MOVS     R3,#+7
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED2_Draw_BMP
        LDR.W    R0,??DataTable15_4
        LDRB     R0,[R0, #+1692]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+4
        MOVS     R0,#+45
        BL       OLED_ShowNumber
// 1141         break;
        B.N      ??GR_OLEDMenuDisplay_30
// 1142       case 14:OLED2_Draw_BMP(0,0,127,7,Status14); OLED_ShowNumber(45,4,Trk.SpecialStatus);
??GR_OLEDMenuDisplay_17:
        LDR.W    R0,??DataTable15_13
        STR      R0,[SP, #+0]
        MOVS     R3,#+7
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED2_Draw_BMP
        LDR.W    R0,??DataTable15_4
        LDRB     R0,[R0, #+1692]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+4
        MOVS     R0,#+45
        BL       OLED_ShowNumber
// 1143         break;
        B.N      ??GR_OLEDMenuDisplay_30
// 1144       case 21:OLED2_Draw_BMP(0,0,127,7,Status21); OLED_ShowNumber(45,4,Trk.SpecialStatus);
??GR_OLEDMenuDisplay_18:
        LDR.W    R0,??DataTable15_14
        STR      R0,[SP, #+0]
        MOVS     R3,#+7
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED2_Draw_BMP
        LDR.W    R0,??DataTable15_4
        LDRB     R0,[R0, #+1692]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+4
        MOVS     R0,#+45
        BL       OLED_ShowNumber
// 1145         break;
        B.N      ??GR_OLEDMenuDisplay_30
// 1146       case 22:OLED2_Draw_BMP(0,0,127,7,Status22); OLED_ShowNumber(45,4,Trk.SpecialStatus);
??GR_OLEDMenuDisplay_19:
        LDR.W    R0,??DataTable15_15
        STR      R0,[SP, #+0]
        MOVS     R3,#+7
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED2_Draw_BMP
        LDR.W    R0,??DataTable15_4
        LDRB     R0,[R0, #+1692]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+4
        MOVS     R0,#+45
        BL       OLED_ShowNumber
// 1147         break;
        B.N      ??GR_OLEDMenuDisplay_30
// 1148       case 31:OLED2_Draw_BMP(0,0,127,7,Status31); OLED_ShowNumber(45,4,Trk.SpecialStatus);
??GR_OLEDMenuDisplay_20:
        LDR.W    R0,??DataTable15_16
        STR      R0,[SP, #+0]
        MOVS     R3,#+7
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED2_Draw_BMP
        LDR.W    R0,??DataTable15_4
        LDRB     R0,[R0, #+1692]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+4
        MOVS     R0,#+45
        BL       OLED_ShowNumber
// 1149         break;
        B.N      ??GR_OLEDMenuDisplay_30
// 1150       case 32:OLED2_Draw_BMP(0,0,127,7,Status32); OLED_ShowNumber(45,4,Trk.SpecialStatus);
??GR_OLEDMenuDisplay_21:
        LDR.W    R0,??DataTable15_17
        STR      R0,[SP, #+0]
        MOVS     R3,#+7
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED2_Draw_BMP
        LDR.W    R0,??DataTable15_4
        LDRB     R0,[R0, #+1692]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+4
        MOVS     R0,#+45
        BL       OLED_ShowNumber
// 1151         break;
        B.N      ??GR_OLEDMenuDisplay_30
// 1152       case 41:OLED2_Draw_BMP(0,0,127,7,Status41); OLED_ShowNumber(45,4,Trk.SpecialStatus);
??GR_OLEDMenuDisplay_22:
        LDR.W    R0,??DataTable15_18
        STR      R0,[SP, #+0]
        MOVS     R3,#+7
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED2_Draw_BMP
        LDR.W    R0,??DataTable15_4
        LDRB     R0,[R0, #+1692]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+4
        MOVS     R0,#+45
        BL       OLED_ShowNumber
// 1153         break;
        B.N      ??GR_OLEDMenuDisplay_30
// 1154       case 42:OLED2_Draw_BMP(0,0,127,7,Status42); OLED_ShowNumber(45,4,Trk.SpecialStatus);
??GR_OLEDMenuDisplay_23:
        LDR.W    R0,??DataTable15_19
        STR      R0,[SP, #+0]
        MOVS     R3,#+7
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED2_Draw_BMP
        LDR.W    R0,??DataTable15_4
        LDRB     R0,[R0, #+1692]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+4
        MOVS     R0,#+45
        BL       OLED_ShowNumber
// 1155         break;
        B.N      ??GR_OLEDMenuDisplay_30
// 1156       case 51:OLED2_Draw_BMP(0,0,127,7,Status51); OLED_ShowNumber(45,4,Trk.SpecialStatus);
??GR_OLEDMenuDisplay_24:
        LDR.W    R0,??DataTable15_20
        STR      R0,[SP, #+0]
        MOVS     R3,#+7
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED2_Draw_BMP
        LDR.W    R0,??DataTable15_4
        LDRB     R0,[R0, #+1692]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+4
        MOVS     R0,#+45
        BL       OLED_ShowNumber
// 1157         break;
        B.N      ??GR_OLEDMenuDisplay_30
// 1158       case 52:OLED2_Draw_BMP(0,0,127,7,Status52); OLED_ShowNumber(45,4,Trk.SpecialStatus);
??GR_OLEDMenuDisplay_25:
        LDR.W    R0,??DataTable15_21
        STR      R0,[SP, #+0]
        MOVS     R3,#+7
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED2_Draw_BMP
        LDR.W    R0,??DataTable15_4
        LDRB     R0,[R0, #+1692]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+4
        MOVS     R0,#+45
        BL       OLED_ShowNumber
// 1159         break;
        B.N      ??GR_OLEDMenuDisplay_30
// 1160       case 61:OLED2_Draw_BMP(0,0,127,7,Status61); OLED_ShowNumber(45,4,Trk.SpecialStatus);
??GR_OLEDMenuDisplay_26:
        LDR.W    R0,??DataTable15_22
        STR      R0,[SP, #+0]
        MOVS     R3,#+7
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED2_Draw_BMP
        LDR.W    R0,??DataTable15_4
        LDRB     R0,[R0, #+1692]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+4
        MOVS     R0,#+45
        BL       OLED_ShowNumber
// 1161         break;
        B.N      ??GR_OLEDMenuDisplay_30
// 1162       case 71:OLED2_Draw_BMP(0,0,127,7,Status71); OLED_ShowNumber(45,4,Trk.SpecialStatus);
??GR_OLEDMenuDisplay_27:
        LDR.W    R0,??DataTable15_23
        STR      R0,[SP, #+0]
        MOVS     R3,#+7
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED2_Draw_BMP
        LDR.W    R0,??DataTable15_4
        LDRB     R0,[R0, #+1692]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+4
        MOVS     R0,#+45
        BL       OLED_ShowNumber
// 1163         break;
        B.N      ??GR_OLEDMenuDisplay_30
// 1164       case 81:OLED2_Draw_BMP(0,0,127,7,Status81); OLED_ShowNumber(45,4,Trk.SpecialStatus);
??GR_OLEDMenuDisplay_28:
        LDR.W    R0,??DataTable15_24
        STR      R0,[SP, #+0]
        MOVS     R3,#+7
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED2_Draw_BMP
        LDR.W    R0,??DataTable15_4
        LDRB     R0,[R0, #+1692]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+4
        MOVS     R0,#+45
        BL       OLED_ShowNumber
// 1165         break;
        B.N      ??GR_OLEDMenuDisplay_30
// 1166       default:break;
// 1167       }
// 1168       break;
??GR_OLEDMenuDisplay_29:
??GR_OLEDMenuDisplay_30:
        B.N      ??GR_OLEDMenuDisplay_5
// 1169     default:break;
// 1170     }
// 1171     //----参数显示----//
// 1172     switch(OLED.Parameter)
??GR_OLEDMenuDisplay_4:
??GR_OLEDMenuDisplay_5:
        LDR.W    R0,??DataTable15
        LDRB     R0,[R0, #+2]
        CMP      R0,#+0
        BEQ.N    ??GR_OLEDMenuDisplay_31
        CMP      R0,#+2
        BEQ.W    ??GR_OLEDMenuDisplay_32
        BCC.W    ??GR_OLEDMenuDisplay_33
        B.N      ??GR_OLEDMenuDisplay_34
// 1173     {
// 1174     case 0://显示第1页参数
// 1175       OLED_P6x8Str(0,2,"Aver1:");
??GR_OLEDMenuDisplay_31:
        LDR.W    R2,??DataTable15_25
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       OLED_P6x8Str
// 1176       OLED_ShowNumber(60,2,CCD1.aver);
        LDR.W    R0,??DataTable15_1
        LDRH     R0,[R0, #+130]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+2
        MOVS     R0,#+60
        BL       OLED_ShowNumber
// 1177       OLED_P6x8Str(0,3,"MiMa1:");
        LDR.W    R2,??DataTable15_26
        MOVS     R1,#+3
        MOVS     R0,#+0
        BL       OLED_P6x8Str
// 1178       OLED_ShowNumber(40,3,CCD1.min);OLED_ShowNumber(85,3,CCD1.max);
        LDR.W    R0,??DataTable15_1
        LDRB     R0,[R0, #+129]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+3
        MOVS     R0,#+40
        BL       OLED_ShowNumber
        LDR.W    R0,??DataTable15_1
        LDRB     R0,[R0, #+128]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+3
        MOVS     R0,#+85
        BL       OLED_ShowNumber
// 1179       OLED_P6x8Str(0,4,"Thres1:");
        LDR.W    R2,??DataTable15_27
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       OLED_P6x8Str
// 1180       OLED_ShowNumber(60,4,CCD1.threshold);
        LDR.W    R0,??DataTable15_1
        LDRB     R0,[R0, #+132]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+4
        MOVS     R0,#+60
        BL       OLED_ShowNumber
// 1181       OLED_P6x8Str(0,5,"Edge1:");
        LDR.W    R2,??DataTable15_28
        MOVS     R1,#+5
        MOVS     R0,#+0
        BL       OLED_P6x8Str
// 1182       OLED_ShowNumber(40,5,Trk.left1[Trk.currentLeft1]);
        LDR.W    R0,??DataTable15_4
        LDRH     R0,[R0, #+202]
        LDR.W    R1,??DataTable15_4
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+1]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+5
        MOVS     R0,#+40
        BL       OLED_ShowNumber
// 1183       OLED_ShowNumber(85,5,Trk.right1[Trk.currentRight1]);
        LDR.W    R0,??DataTable15_4
        LDRH     R0,[R0, #+406]
        LDR.W    R1,??DataTable15_4
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+206]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+5
        MOVS     R0,#+85
        BL       OLED_ShowNumber
// 1184       OLED_P6x8Str(0,6,"Width1:");
        LDR.W    R2,??DataTable15_29
        MOVS     R1,#+6
        MOVS     R0,#+0
        BL       OLED_P6x8Str
// 1185       OLED_ShowNumber(60,6,Trk.Width1);
        LDR.W    R0,??DataTable15_4
        LDRB     R0,[R0, #+814]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+6
        MOVS     R0,#+60
        BL       OLED_ShowNumber
// 1186       OLED_P6x8Str(0,7,"Cen1:");
        LDR.W    R2,??DataTable15_30
        MOVS     R1,#+7
        MOVS     R0,#+0
        BL       OLED_P6x8Str
// 1187       OLED_ShowNumber(60,7,Trk.cen1[Trk.currentCen1]);
        LDR.W    R0,??DataTable15_4
        LDRH     R0,[R0, #+810]
        LDR.W    R1,??DataTable15_4
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+410]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+7
        MOVS     R0,#+60
        BL       OLED_ShowNumber
// 1188       OLED2_P6x8Str(0,2,"Aver2:");
        LDR.W    R2,??DataTable15_31
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       OLED2_P6x8Str
// 1189       OLED2_ShowNumber(75,2,CCD2.aver);
        LDR.W    R0,??DataTable15_2
        LDRH     R0,[R0, #+130]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+2
        MOVS     R0,#+75
        BL       OLED2_ShowNumber
// 1190       OLED2_P6x8Str(0,3,"MiMa2:");
        LDR.W    R2,??DataTable15_32
        MOVS     R1,#+3
        MOVS     R0,#+0
        BL       OLED2_P6x8Str
// 1191       OLED2_ShowNumber(40,3,CCD2.min);OLED2_ShowNumber(85,3,CCD2.max);
        LDR.W    R0,??DataTable15_2
        LDRB     R0,[R0, #+129]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+3
        MOVS     R0,#+40
        BL       OLED2_ShowNumber
        LDR.W    R0,??DataTable15_2
        LDRB     R0,[R0, #+128]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+3
        MOVS     R0,#+85
        BL       OLED2_ShowNumber
// 1192       OLED2_P6x8Str(0,4,"Thres2:");
        LDR.W    R2,??DataTable15_33
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       OLED2_P6x8Str
// 1193       OLED2_ShowNumber(60,4,CCD2.threshold);
        LDR.W    R0,??DataTable15_2
        LDRB     R0,[R0, #+132]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+4
        MOVS     R0,#+60
        BL       OLED2_ShowNumber
// 1194       OLED2_P6x8Str(0,5,"Edge2:");
        LDR.W    R2,??DataTable15_34
        MOVS     R1,#+5
        MOVS     R0,#+0
        BL       OLED2_P6x8Str
// 1195       OLED2_ShowNumber(40,5,Trk.left2[Trk.currentLeft2]);
        LDR.W    R0,??DataTable15_4
        LDRH     R0,[R0, #+1034]
        LDR.W    R1,??DataTable15_4
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+834]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+5
        MOVS     R0,#+40
        BL       OLED2_ShowNumber
// 1196       OLED2_ShowNumber(85,5,Trk.right2[Trk.currentRight2]);
        LDR.W    R0,??DataTable15_4
        LDRH     R0,[R0, #+1238]
        LDR.W    R1,??DataTable15_4
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+1038]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+5
        MOVS     R0,#+85
        BL       OLED2_ShowNumber
// 1197       OLED2_P6x8Str(0,6,"Width2:");
        LDR.W    R2,??DataTable15_35
        MOVS     R1,#+6
        MOVS     R0,#+0
        BL       OLED2_P6x8Str
// 1198       OLED2_ShowNumber(60,6,Trk.Width2);
        LDR.W    R0,??DataTable15_4
        LDRB     R0,[R0, #+1646]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+6
        MOVS     R0,#+60
        BL       OLED2_ShowNumber
// 1199       OLED2_P6x8Str(0,7,"Cen2:");
        LDR.W    R2,??DataTable15_36
        MOVS     R1,#+7
        MOVS     R0,#+0
        BL       OLED2_P6x8Str
// 1200       OLED2_ShowNumber(60,7,Trk.cen2[Trk.currentCen2]);
        LDR.W    R0,??DataTable15_4
        LDRH     R0,[R0, #+1642]
        LDR.W    R1,??DataTable15_4
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+1242]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+7
        MOVS     R0,#+60
        BL       OLED2_ShowNumber
// 1201       break;
        B.N      ??GR_OLEDMenuDisplay_35
// 1202     case 1://显示第2页参数
// 1203       OLED_P6x8Str(0,2,"Source:");
??GR_OLEDMenuDisplay_33:
        LDR.W    R2,??DataTable15_37
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       OLED_P6x8Str
// 1204       OLED_ShowNumber(60,2,Give.CCDSource);
        LDR.W    R0,??DataTable15_3
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+2
        MOVS     R0,#+60
        BL       OLED_ShowNumber
// 1205       OLED_P6x8Str(0,3,"SerPWM:");
        LDR.W    R2,??DataTable15_38
        MOVS     R1,#+3
        MOVS     R0,#+0
        BL       OLED_P6x8Str
// 1206       OLED_ShowNumber(60,3,Give.serverDPWM);
        LDR.W    R0,??DataTable15_3
        LDRB     R0,[R0, #+27]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+3
        MOVS     R0,#+60
        BL       OLED_ShowNumber
// 1207       OLED_P6x8Str(0,4,"Motor:");
        LDR.W    R2,??DataTable15_39
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       OLED_P6x8Str
// 1208       OLED_ShowNumber(40,4,Give.motorDSpeed);OLED_ShowNumber(85,4,Give.motorPWM);
        LDR.W    R0,??DataTable15_3
        LDRH     R0,[R0, #+36]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+4
        MOVS     R0,#+40
        BL       OLED_ShowNumber
        LDR.W    R0,??DataTable15_3
        LDRH     R0,[R0, #+44]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+4
        MOVS     R0,#+85
        BL       OLED_ShowNumber
// 1209       OLED_P6x8Str(0,5,"Coef:");
        LDR.W    R2,??DataTable15_40
        MOVS     R1,#+5
        MOVS     R0,#+0
        BL       OLED_P6x8Str
// 1210       OLED_ShowNumber(60,5,Trk.ServerCoef);
        LDR.W    R0,??DataTable15_4
        LDR      R2,[R0, #+1660]
        MOVS     R1,#+5
        MOVS     R0,#+60
        BL       OLED_ShowNumber
// 1211       OLED_P6x8Str(0,6,"Status:");
        LDR.W    R2,??DataTable15_41
        MOVS     R1,#+6
        MOVS     R0,#+0
        BL       OLED_P6x8Str
// 1212       OLED_ShowNumber(60,6,Trk.SpecialStatus);
        LDR.W    R0,??DataTable15_4
        LDRB     R0,[R0, #+1692]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+6
        MOVS     R0,#+60
        BL       OLED_ShowNumber
// 1213       OLED_P6x8Str(0,7,"Cen1:");
        LDR.W    R2,??DataTable15_30
        MOVS     R1,#+7
        MOVS     R0,#+0
        BL       OLED_P6x8Str
// 1214       OLED_ShowNumber(60,7,Trk.cen1[Trk.currentCen1]);     
        LDR.W    R0,??DataTable15_4
        LDRH     R0,[R0, #+810]
        LDR.W    R1,??DataTable15_4
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+410]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+7
        MOVS     R0,#+60
        BL       OLED_ShowNumber
// 1215       OLED2_P6x8Str(0,2,"Speed:");
        LDR.W    R2,??DataTable15_42
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       OLED2_P6x8Str
// 1216       OLED2_ShowNumber(60,2,Encoder.encoder[Encoder.currentEnc]);
        LDR.W    R0,??DataTable15_43
        LDRH     R0,[R0, #+400]
        LDR.W    R1,??DataTable15_43
        LDRH     R0,[R1, R0, LSL #+1]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+2
        MOVS     R0,#+60
        BL       OLED2_ShowNumber
// 1217       OLED2_P6x8Str(0,3,"Infra:");
        LDR.W    R2,??DataTable15_44
        MOVS     R1,#+3
        MOVS     R0,#+0
        BL       OLED2_P6x8Str
// 1218       OLED2_ShowNumber(40,3,Infrared.Infrared1[Infrared.currentInfrared]);
        LDR.W    R0,??DataTable15_45
        LDRH     R0,[R0, #+400]
        LDR.W    R1,??DataTable15_45
        LDRB     R0,[R0, R1]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+3
        MOVS     R0,#+40
        BL       OLED2_ShowNumber
// 1219       OLED2_ShowNumber(85,3,Infrared.Infrared2[Infrared.currentInfrared]);
        LDR.W    R0,??DataTable15_45
        LDRH     R0,[R0, #+400]
        LDR.W    R1,??DataTable15_45
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+200]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+3
        MOVS     R0,#+85
        BL       OLED2_ShowNumber
// 1220       OLED2_P6x8Str(0,4,"Gyros:");
        LDR.W    R2,??DataTable15_46
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       OLED2_P6x8Str
// 1221       OLED2_ShowNumber(60,4,Gyroscope.Gyroscope[Gyroscope.currentGyro]);
        LDR.W    R0,??DataTable15_47
        LDRH     R0,[R0, #+400]
        LDR.W    R1,??DataTable15_47
        LDRH     R0,[R1, R0, LSL #+1]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+4
        MOVS     R0,#+60
        BL       OLED2_ShowNumber
// 1222       OLED2_P6x8Str(0,5,"Other:");
        LDR.W    R2,??DataTable15_48
        MOVS     R1,#+5
        MOVS     R0,#+0
        BL       OLED2_P6x8Str
// 1223       OLED2_ShowNumber(40,5,Trk.CurveLock1);
        LDR.W    R0,??DataTable15_4
        LDRB     R0,[R0, #+832]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+5
        MOVS     R0,#+40
        BL       OLED2_ShowNumber
// 1224       OLED2_ShowNumber(85,5,Trk.HerringTurnRoad2);
        LDR.W    R0,??DataTable15_4
        LDR      R0,[R0, #+1728]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+5
        MOVS     R0,#+85
        BL       OLED2_ShowNumber
// 1225       OLED2_P6x8Str(0,6,"Road:");
        LDR.W    R2,??DataTable15_49
        MOVS     R1,#+6
        MOVS     R0,#+0
        BL       OLED2_P6x8Str
// 1226       OLED2_ShowNumber(60,6,Con.TotalRoad);
        LDR.W    R0,??DataTable15_50
        LDR      R0,[R0, #+4]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+6
        MOVS     R0,#+60
        BL       OLED2_ShowNumber
// 1227       OLED2_P6x8Str(0,7,"Time:");
        LDR.W    R2,??DataTable15_51
        MOVS     R1,#+7
        MOVS     R0,#+0
        BL       OLED2_P6x8Str
// 1228       OLED2_ShowNumber(60,7,Con.TotalTime);
        LDR.W    R0,??DataTable15_50
        LDR      R0,[R0, #+8]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+7
        MOVS     R0,#+60
        BL       OLED2_ShowNumber
// 1229       break;
        B.N      ??GR_OLEDMenuDisplay_35
// 1230     case 2://不显示
// 1231       break;
??GR_OLEDMenuDisplay_32:
        B.N      ??GR_OLEDMenuDisplay_35
// 1232     default:break;
??GR_OLEDMenuDisplay_34:
        B.N      ??GR_OLEDMenuDisplay_35
// 1233     }
// 1234   }
// 1235   else if(OLED.Screen == 1)//1-设置菜单画面
??GR_OLEDMenuDisplay_0:
        LDR.W    R0,??DataTable15
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.W    ??GR_OLEDMenuDisplay_35
// 1236   {
// 1237     if(OLED.ClearFlag == 1)
        LDR.W    R0,??DataTable15
        LDRB     R0,[R0, #+4]
        CMP      R0,#+1
        BNE.N    ??GR_OLEDMenuDisplay_36
// 1238     {
// 1239       OLED_CLS();//清屏
        BL       OLED_CLS
// 1240       OLED2_CLS();//清屏
        BL       OLED2_CLS
// 1241       OLED.ClearFlag = 0;
        LDR.W    R0,??DataTable15
        MOVS     R1,#+0
        STRB     R1,[R0, #+4]
// 1242     }
// 1243     switch(OLED.Menu)
??GR_OLEDMenuDisplay_36:
        LDR.W    R0,??DataTable15
        LDRB     R0,[R0, #+3]
        CMP      R0,#+0
        BEQ.N    ??GR_OLEDMenuDisplay_37
        CMP      R0,#+2
        BEQ.N    ??GR_OLEDMenuDisplay_38
        BCC.N    ??GR_OLEDMenuDisplay_39
        CMP      R0,#+4
        BEQ.W    ??GR_OLEDMenuDisplay_40
        BCC.N    ??GR_OLEDMenuDisplay_41
        CMP      R0,#+6
        BEQ.W    ??GR_OLEDMenuDisplay_42
        BCC.W    ??GR_OLEDMenuDisplay_43
        CMP      R0,#+8
        BEQ.W    ??GR_OLEDMenuDisplay_44
        BCC.W    ??GR_OLEDMenuDisplay_45
        CMP      R0,#+10
        BEQ.W    ??GR_OLEDMenuDisplay_46
        BCC.W    ??GR_OLEDMenuDisplay_47
        CMP      R0,#+12
        BEQ.W    ??GR_OLEDMenuDisplay_48
        BCC.W    ??GR_OLEDMenuDisplay_49
        B.N      ??GR_OLEDMenuDisplay_50
// 1244     {
// 1245     case 0://速度系数
// 1246       OLED2_Draw_BMP(0,0,127,7,Menu0_SpeedCoef); 
??GR_OLEDMenuDisplay_37:
        LDR.W    R0,??DataTable15_52
        STR      R0,[SP, #+0]
        MOVS     R3,#+7
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED2_Draw_BMP
// 1247       OLED2_P6x8Str(50,7,"0 /12");
        LDR.W    R2,??DataTable15_53
        MOVS     R1,#+7
        MOVS     R0,#+50
        BL       OLED2_P6x8Str
// 1248       OLED_ShowNumber(45,4,Give.SpeedCoef);
        LDR.N    R0,??DataTable15_3
        LDR      R2,[R0, #+40]
        MOVS     R1,#+4
        MOVS     R0,#+45
        BL       OLED_ShowNumber
// 1249     break;
        B.N      ??GR_OLEDMenuDisplay_35
// 1250     case 1://人字检测使能
// 1251       OLED2_Draw_BMP(0,0,127,7,Menu1_renzi); 
??GR_OLEDMenuDisplay_39:
        LDR.W    R0,??DataTable15_54
        STR      R0,[SP, #+0]
        MOVS     R3,#+7
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED2_Draw_BMP
// 1252       OLED2_P6x8Str(50,7,"1 /12");
        LDR.W    R2,??DataTable15_55
        MOVS     R1,#+7
        MOVS     R0,#+50
        BL       OLED2_P6x8Str
// 1253       if(Con.EnableHerribone == 1){OLED_Draw_BMP(0,0,127,7,Enable);}
        LDR.W    R0,??DataTable15_50
        LDRB     R0,[R0, #+51]
        CMP      R0,#+1
        BNE.N    ??GR_OLEDMenuDisplay_51
        LDR.W    R0,??DataTable15_56
        STR      R0,[SP, #+0]
        MOVS     R3,#+7
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED_Draw_BMP
        B.N      ??GR_OLEDMenuDisplay_52
// 1254       else{OLED_Draw_BMP(0,0,127,7,Unable);}
??GR_OLEDMenuDisplay_51:
        LDR.W    R0,??DataTable15_57
        STR      R0,[SP, #+0]
        MOVS     R3,#+7
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED_Draw_BMP
// 1255     break;
??GR_OLEDMenuDisplay_52:
        B.N      ??GR_OLEDMenuDisplay_35
// 1256     case 2://路障检测使能
// 1257       OLED2_Draw_BMP(0,0,127,7,Menu2_zhangai); 
??GR_OLEDMenuDisplay_38:
        LDR.W    R0,??DataTable15_58
        STR      R0,[SP, #+0]
        MOVS     R3,#+7
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED2_Draw_BMP
// 1258       OLED2_P6x8Str(50,7,"2 /12");
        LDR.W    R2,??DataTable15_59
        MOVS     R1,#+7
        MOVS     R0,#+50
        BL       OLED2_P6x8Str
// 1259       if(Con.EnableRoadblock == 1){OLED_Draw_BMP(0,0,127,7,Enable);}
        LDR.N    R0,??DataTable15_50
        LDRB     R0,[R0, #+52]
        CMP      R0,#+1
        BNE.N    ??GR_OLEDMenuDisplay_53
        LDR.N    R0,??DataTable15_56
        STR      R0,[SP, #+0]
        MOVS     R3,#+7
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED_Draw_BMP
        B.N      ??GR_OLEDMenuDisplay_54
// 1260       else{OLED_Draw_BMP(0,0,127,7,Unable);}
??GR_OLEDMenuDisplay_53:
        LDR.N    R0,??DataTable15_57
        STR      R0,[SP, #+0]
        MOVS     R3,#+7
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED_Draw_BMP
// 1261     break;
??GR_OLEDMenuDisplay_54:
        B.N      ??GR_OLEDMenuDisplay_35
// 1262     case 3://起跑线检测使能
// 1263       OLED2_Draw_BMP(0,0,127,7,Menu3_StartLine); 
??GR_OLEDMenuDisplay_41:
        LDR.N    R0,??DataTable15_60
        STR      R0,[SP, #+0]
        MOVS     R3,#+7
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED2_Draw_BMP
// 1264       OLED2_P6x8Str(50,7,"3 /12");
        LDR.N    R2,??DataTable15_61
        MOVS     R1,#+7
        MOVS     R0,#+50
        BL       OLED2_P6x8Str
// 1265       if(Con.EnableStartline == 1){OLED_Draw_BMP(0,0,127,7,Enable);}
        LDR.N    R0,??DataTable15_50
        LDRB     R0,[R0, #+54]
        CMP      R0,#+1
        BNE.N    ??GR_OLEDMenuDisplay_55
        LDR.N    R0,??DataTable15_56
        STR      R0,[SP, #+0]
        MOVS     R3,#+7
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED_Draw_BMP
        B.N      ??GR_OLEDMenuDisplay_56
// 1266       else{OLED_Draw_BMP(0,0,127,7,Unable);}
??GR_OLEDMenuDisplay_55:
        LDR.N    R0,??DataTable15_57
        STR      R0,[SP, #+0]
        MOVS     R3,#+7
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED_Draw_BMP
// 1267     break;
??GR_OLEDMenuDisplay_56:
        B.N      ??GR_OLEDMenuDisplay_35
// 1268     case 4://坡道检测使能
// 1269       OLED2_Draw_BMP(0,0,127,7,Menu4_PoDao); 
??GR_OLEDMenuDisplay_40:
        LDR.N    R0,??DataTable15_62
        STR      R0,[SP, #+0]
        MOVS     R3,#+7
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED2_Draw_BMP
// 1270       OLED2_P6x8Str(50,7,"4 /12");
        LDR.N    R2,??DataTable15_63
        MOVS     R1,#+7
        MOVS     R0,#+50
        BL       OLED2_P6x8Str
// 1271       if(Con.EnableRamp == 1){OLED_Draw_BMP(0,0,127,7,Enable);}
        LDR.N    R0,??DataTable15_50
        LDRB     R0,[R0, #+53]
        CMP      R0,#+1
        BNE.N    ??GR_OLEDMenuDisplay_57
        LDR.N    R0,??DataTable15_56
        STR      R0,[SP, #+0]
        MOVS     R3,#+7
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED_Draw_BMP
        B.N      ??GR_OLEDMenuDisplay_58
// 1272       else{OLED_Draw_BMP(0,0,127,7,Unable);}
??GR_OLEDMenuDisplay_57:
        LDR.N    R0,??DataTable15_57
        STR      R0,[SP, #+0]
        MOVS     R3,#+7
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED_Draw_BMP
// 1273     break;
??GR_OLEDMenuDisplay_58:
        B.N      ??GR_OLEDMenuDisplay_35
// 1274     case 5://冲出赛道检测使能
// 1275       OLED2_Draw_BMP(0,0,127,7,Menu5_AllDark); 
??GR_OLEDMenuDisplay_43:
        LDR.N    R0,??DataTable15_64
        STR      R0,[SP, #+0]
        MOVS     R3,#+7
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED2_Draw_BMP
// 1276       OLED2_P6x8Str(50,7,"5 /12");
        LDR.N    R2,??DataTable15_65
        MOVS     R1,#+7
        MOVS     R0,#+50
        BL       OLED2_P6x8Str
// 1277       if(Con.EnableCrash == 1){OLED_Draw_BMP(0,0,127,7,Enable);}
        LDR.N    R0,??DataTable15_50
        LDRB     R0,[R0, #+55]
        CMP      R0,#+1
        BNE.N    ??GR_OLEDMenuDisplay_59
        LDR.N    R0,??DataTable15_56
        STR      R0,[SP, #+0]
        MOVS     R3,#+7
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED_Draw_BMP
        B.N      ??GR_OLEDMenuDisplay_60
// 1278       else{OLED_Draw_BMP(0,0,127,7,Unable);}
??GR_OLEDMenuDisplay_59:
        LDR.N    R0,??DataTable15_57
        STR      R0,[SP, #+0]
        MOVS     R3,#+7
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED_Draw_BMP
// 1279     break;
??GR_OLEDMenuDisplay_60:
        B.N      ??GR_OLEDMenuDisplay_35
// 1280     case 6://试跑使能
// 1281       OLED2_Draw_BMP(0,0,127,7,Menu6_TestRun); 
??GR_OLEDMenuDisplay_42:
        LDR.N    R0,??DataTable15_66
        STR      R0,[SP, #+0]
        MOVS     R3,#+7
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED2_Draw_BMP
// 1282       OLED2_P6x8Str(50,7,"6 /12");
        LDR.N    R2,??DataTable15_67
        MOVS     R1,#+7
        MOVS     R0,#+50
        BL       OLED2_P6x8Str
// 1283       if(Con.EnableTest5S == 1){OLED_Draw_BMP(0,0,127,7,Enable);}
        LDR.N    R0,??DataTable15_50
        LDRB     R0,[R0, #+56]
        CMP      R0,#+1
        BNE.N    ??GR_OLEDMenuDisplay_61
        LDR.N    R0,??DataTable15_56
        STR      R0,[SP, #+0]
        MOVS     R3,#+7
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED_Draw_BMP
        B.N      ??GR_OLEDMenuDisplay_62
// 1284       else{OLED_Draw_BMP(0,0,127,7,Unable);}
??GR_OLEDMenuDisplay_61:
        LDR.N    R0,??DataTable15_57
        STR      R0,[SP, #+0]
        MOVS     R3,#+7
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED_Draw_BMP
// 1285     break;
??GR_OLEDMenuDisplay_62:
        B.N      ??GR_OLEDMenuDisplay_35
// 1286     case 7://电机使能
// 1287       OLED2_Draw_BMP(0,0,127,7,Menu7_MotorEnable); 
??GR_OLEDMenuDisplay_45:
        LDR.N    R0,??DataTable15_68
        STR      R0,[SP, #+0]
        MOVS     R3,#+7
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED2_Draw_BMP
// 1288       OLED2_P6x8Str(50,7,"7 /12");
        LDR.N    R2,??DataTable15_69
        MOVS     R1,#+7
        MOVS     R0,#+50
        BL       OLED2_P6x8Str
// 1289       if(Con.EnableMotor == 1){OLED_Draw_BMP(0,0,127,7,Enable);}
        LDR.N    R0,??DataTable15_50
        LDRB     R0,[R0, #+50]
        CMP      R0,#+1
        BNE.N    ??GR_OLEDMenuDisplay_63
        LDR.N    R0,??DataTable15_56
        STR      R0,[SP, #+0]
        MOVS     R3,#+7
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED_Draw_BMP
        B.N      ??GR_OLEDMenuDisplay_64
// 1290       else{OLED_Draw_BMP(0,0,127,7,Unable);}
??GR_OLEDMenuDisplay_63:
        LDR.N    R0,??DataTable15_57
        STR      R0,[SP, #+0]
        MOVS     R3,#+7
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED_Draw_BMP
// 1291     break;
??GR_OLEDMenuDisplay_64:
        B.N      ??GR_OLEDMenuDisplay_35
// 1292     case 8://舵机使能
// 1293       OLED2_Draw_BMP(0,0,127,7,Menu8_ServerEnable); 
??GR_OLEDMenuDisplay_44:
        LDR.N    R0,??DataTable15_70
        STR      R0,[SP, #+0]
        MOVS     R3,#+7
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED2_Draw_BMP
// 1294       OLED2_P6x8Str(50,7,"8 /12");
        LDR.N    R2,??DataTable15_71
        MOVS     R1,#+7
        MOVS     R0,#+50
        BL       OLED2_P6x8Str
// 1295       if(Con.EnableDirectionServer == 1){OLED_Draw_BMP(0,0,127,7,Enable);}
        LDR.N    R0,??DataTable15_50
        LDRB     R0,[R0, #+49]
        CMP      R0,#+1
        BNE.N    ??GR_OLEDMenuDisplay_65
        LDR.N    R0,??DataTable15_56
        STR      R0,[SP, #+0]
        MOVS     R3,#+7
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED_Draw_BMP
        B.N      ??GR_OLEDMenuDisplay_66
// 1296       else{OLED_Draw_BMP(0,0,127,7,Unable);}
??GR_OLEDMenuDisplay_65:
        LDR.N    R0,??DataTable15_57
        STR      R0,[SP, #+0]
        MOVS     R3,#+7
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED_Draw_BMP
// 1297     break;
??GR_OLEDMenuDisplay_66:
        B.N      ??GR_OLEDMenuDisplay_35
// 1298     case 9://舵机调试
// 1299       OLED2_Draw_BMP(0,0,127,7,Menu9_ServerTest); 
??GR_OLEDMenuDisplay_47:
        LDR.N    R0,??DataTable15_72
        STR      R0,[SP, #+0]
        MOVS     R3,#+7
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED2_Draw_BMP
// 1300       OLED2_P6x8Str(50,7,"9 /12");
        LDR.N    R2,??DataTable15_73
        MOVS     R1,#+7
        MOVS     R0,#+50
        BL       OLED2_P6x8Str
// 1301       OLED_ShowNumber(45,4,Give.ServerTestPWM);
        LDR.N    R0,??DataTable15_3
        LDRB     R0,[R0, #+5]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+4
        MOVS     R0,#+45
        BL       OLED_ShowNumber
// 1302     break;
        B.N      ??GR_OLEDMenuDisplay_35
// 1303     case 10://曝光时间设置（复位后只能由拨码开关设置一次）
// 1304       OLED2_Draw_BMP(0,0,127,7,Menu10_ExposureTime); 
??GR_OLEDMenuDisplay_46:
        LDR.N    R0,??DataTable15_74
        STR      R0,[SP, #+0]
        MOVS     R3,#+7
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED2_Draw_BMP
// 1305       OLED2_P6x8Str(50,7,"10/12");
        LDR.N    R2,??DataTable15_75
        MOVS     R1,#+7
        MOVS     R0,#+50
        BL       OLED2_P6x8Str
// 1306       OLED_ShowNumber(45,4,Con.MainContralPeriod);
        LDR.N    R0,??DataTable15_50
        LDRB     R0,[R0, #+3]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+4
        MOVS     R0,#+45
        BL       OLED_ShowNumber
// 1307     break;
        B.N      ??GR_OLEDMenuDisplay_35
// 1308     case 11://蓝牙发送设置
// 1309       OLED2_Draw_BMP(0,0,127,7,Menu11_BlueTooth); 
??GR_OLEDMenuDisplay_49:
        LDR.N    R0,??DataTable15_76
        STR      R0,[SP, #+0]
        MOVS     R3,#+7
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED2_Draw_BMP
// 1310       OLED2_P6x8Str(50,7,"11/12");
        LDR.N    R2,??DataTable15_77
        MOVS     R1,#+7
        MOVS     R0,#+50
        BL       OLED2_P6x8Str
// 1311     break;
        B.N      ??GR_OLEDMenuDisplay_35
// 1312     case 12://电池电压和电动势常数设置
// 1313       OLED2_Draw_BMP(0,0,127,7,Menu12_Battery); 
??GR_OLEDMenuDisplay_48:
        LDR.N    R0,??DataTable15_78
        STR      R0,[SP, #+0]
        MOVS     R3,#+7
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED2_Draw_BMP
// 1314       //OLED2_P6x8Str(50,7,"12/12");
// 1315       OLED_ShowNumber(45,4,Con.Battery);
        LDR.N    R0,??DataTable15_50
        LDR      R2,[R0, #+60]
        MOVS     R1,#+4
        MOVS     R0,#+45
        BL       OLED_ShowNumber
// 1316       OLED_ShowNumber(45,5,Con.Ce_);
        LDR.N    R0,??DataTable15_50
        LDR      R2,[R0, #+64]
        MOVS     R1,#+5
        MOVS     R0,#+45
        BL       OLED_ShowNumber
// 1317     break;
        B.N      ??GR_OLEDMenuDisplay_35
// 1318     default:break;
// 1319     }
// 1320   }
// 1321 }
??GR_OLEDMenuDisplay_50:
??GR_OLEDMenuDisplay_35:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15:
        DC32     OLED

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_1:
        DC32     CCD1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_2:
        DC32     CCD2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_3:
        DC32     Give

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_4:
        DC32     Trk

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_5:
        DC32     Status0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_6:
        DC32     Status1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_7:
        DC32     Status2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_8:
        DC32     Status3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_9:
        DC32     Status4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_10:
        DC32     Status11

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_11:
        DC32     Status12

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_12:
        DC32     Status13

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_13:
        DC32     Status14

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_14:
        DC32     Status21

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_15:
        DC32     Status22

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_16:
        DC32     Status31

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_17:
        DC32     Status32

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_18:
        DC32     Status41

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_19:
        DC32     Status42

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_20:
        DC32     Status51

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_21:
        DC32     Status52

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_22:
        DC32     Status61

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_23:
        DC32     Status71

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_24:
        DC32     Status81

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_25:
        DC32     `?<Constant "Aver1:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_26:
        DC32     `?<Constant "MiMa1:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_27:
        DC32     `?<Constant "Thres1:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_28:
        DC32     `?<Constant "Edge1:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_29:
        DC32     `?<Constant "Width1:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_30:
        DC32     `?<Constant "Cen1:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_31:
        DC32     `?<Constant "Aver2:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_32:
        DC32     `?<Constant "MiMa2:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_33:
        DC32     `?<Constant "Thres2:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_34:
        DC32     `?<Constant "Edge2:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_35:
        DC32     `?<Constant "Width2:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_36:
        DC32     `?<Constant "Cen2:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_37:
        DC32     `?<Constant "Source:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_38:
        DC32     `?<Constant "SerPWM:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_39:
        DC32     `?<Constant "Motor:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_40:
        DC32     `?<Constant "Coef:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_41:
        DC32     `?<Constant "Status:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_42:
        DC32     `?<Constant "Speed:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_43:
        DC32     Encoder

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_44:
        DC32     `?<Constant "Infra:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_45:
        DC32     Infrared

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_46:
        DC32     `?<Constant "Gyros:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_47:
        DC32     Gyroscope

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_48:
        DC32     `?<Constant "Other:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_49:
        DC32     `?<Constant "Road:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_50:
        DC32     Con

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_51:
        DC32     `?<Constant "Time:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_52:
        DC32     Menu0_SpeedCoef

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_53:
        DC32     `?<Constant "0 /12">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_54:
        DC32     Menu1_renzi

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_55:
        DC32     `?<Constant "1 /12">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_56:
        DC32     Enable

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_57:
        DC32     Unable

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_58:
        DC32     Menu2_zhangai

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_59:
        DC32     `?<Constant "2 /12">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_60:
        DC32     Menu3_StartLine

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_61:
        DC32     `?<Constant "3 /12">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_62:
        DC32     Menu4_PoDao

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_63:
        DC32     `?<Constant "4 /12">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_64:
        DC32     Menu5_AllDark

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_65:
        DC32     `?<Constant "5 /12">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_66:
        DC32     Menu6_TestRun

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_67:
        DC32     `?<Constant "6 /12">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_68:
        DC32     Menu7_MotorEnable

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_69:
        DC32     `?<Constant "7 /12">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_70:
        DC32     Menu8_ServerEnable

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_71:
        DC32     `?<Constant "8 /12">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_72:
        DC32     Menu9_ServerTest

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_73:
        DC32     `?<Constant "9 /12">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_74:
        DC32     Menu10_ExposureTime

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_75:
        DC32     `?<Constant "10/12">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_76:
        DC32     Menu11_BlueTooth

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_77:
        DC32     `?<Constant "11/12">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_78:
        DC32     Menu12_Battery

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

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

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "3.14159">`:
        DATA
        DC8 "3.14159"

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

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "3.14159">_1`:
        DATA
        DC8 "3.14159"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Aver1:">`:
        DATA
        DC8 "Aver1:"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "MiMa1:">`:
        DATA
        DC8 "MiMa1:"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Thres1:">`:
        DATA
        DC8 "Thres1:"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Edge1:">`:
        DATA
        DC8 "Edge1:"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Width1:">`:
        DATA
        DC8 "Width1:"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Cen1:">`:
        DATA
        DC8 "Cen1:"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Aver2:">`:
        DATA
        DC8 "Aver2:"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "MiMa2:">`:
        DATA
        DC8 "MiMa2:"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Thres2:">`:
        DATA
        DC8 "Thres2:"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Edge2:">`:
        DATA
        DC8 "Edge2:"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Width2:">`:
        DATA
        DC8 "Width2:"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Cen2:">`:
        DATA
        DC8 "Cen2:"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Source:">`:
        DATA
        DC8 "Source:"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "SerPWM:">`:
        DATA
        DC8 "SerPWM:"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Motor:">`:
        DATA
        DC8 "Motor:"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Coef:">`:
        DATA
        DC8 "Coef:"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Status:">`:
        DATA
        DC8 "Status:"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Speed:">`:
        DATA
        DC8 "Speed:"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Infra:">`:
        DATA
        DC8 "Infra:"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Gyros:">`:
        DATA
        DC8 "Gyros:"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Other:">`:
        DATA
        DC8 "Other:"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Road:">`:
        DATA
        DC8 "Road:"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Time:">`:
        DATA
        DC8 "Time:"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "0 /12">`:
        DATA
        DC8 "0 /12"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "1 /12">`:
        DATA
        DC8 "1 /12"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "2 /12">`:
        DATA
        DC8 "2 /12"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "3 /12">`:
        DATA
        DC8 "3 /12"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "4 /12">`:
        DATA
        DC8 "4 /12"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "5 /12">`:
        DATA
        DC8 "5 /12"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "6 /12">`:
        DATA
        DC8 "6 /12"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "7 /12">`:
        DATA
        DC8 "7 /12"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "8 /12">`:
        DATA
        DC8 "8 /12"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "9 /12">`:
        DATA
        DC8 "9 /12"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "10/12">`:
        DATA
        DC8 "10/12"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "11/12">`:
        DATA
        DC8 "11/12"
        DC8 0, 0

        END
// 
//      9 bytes in section .bss
//    680 bytes in section .rodata
// 11 388 bytes in section .text
// 
// 11 388 bytes of CODE  memory
//    680 bytes of CONST memory
//      9 bytes of DATA  memory
//
//Errors: none
//Warnings: none
