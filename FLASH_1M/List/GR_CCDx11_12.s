///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     16/Aug/2014  22:11:12 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\pc\Desktop\继续做的事情\四旋翼飞行器 -         /
//                    TM4123G\代码\遥控器\ShunAn2\GR_CCDx11_12.c              /
//    Command line =  "C:\Users\pc\Desktop\继续做的事情\四旋翼飞行器 -        /
//                    TM4123G\代码\遥控器\ShunAn2\GR_CCDx11_12.c" -D IAR -D   /
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
//                    TM4123G\代码\遥控器\FLASH_1M\List\GR_CCDx11_12.s        /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        PUBLIC CCD1get
        PUBLIC CCD2get
        PUBLIC InitCCD
        PUBLIC SampleOncePTE0
        PUBLIC SampleOncePTE3

// C:\Users\pc\Desktop\继续做的事情\四旋翼飞行器 - TM4123G\代码\遥控器\ShunAn2\GR_CCDx11_12.c
//    1 #include "GR_CCDx11_12.h"
//    2 #include "MK60F15.h"

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    3 void InitCCD(void)
//    4 { 
//    5   SIM_SCGC3 |= 0x08000000u;//使能ADC1模块时钟 
InitCCD:
        LDR.N    R0,??DataTable4  ;; 0x40048030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8000000
        LDR.N    R1,??DataTable4  ;; 0x40048030
        STR      R0,[R1, #+0]
//    6   SIM_SCGC5 |= 0x00002000u;//使能PORTE时钟 
        LDR.N    R0,??DataTable4_1  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000
        LDR.N    R1,??DataTable4_1  ;; 0x40048038
        STR      R0,[R1, #+0]
//    7   //------------------------------CCD1---------------------------------
//    8   PORTE_PCR3 |= 0x0u;//引脚复用选择模拟输入
        LDR.N    R0,??DataTable4_2  ;; 0x4004d00c
        LDR.N    R1,??DataTable4_2  ;; 0x4004d00c
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
//    9   PORTE_PCR4 |= 0x00000100u;//引脚复用选择普通IO(SI同步信号)
        LDR.N    R0,??DataTable4_3  ;; 0x4004d010
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.N    R1,??DataTable4_3  ;; 0x4004d010
        STR      R0,[R1, #+0]
//   10   PORTE_PCR5 |= 0x00000100u;//引脚复用选择普通IO(CLK时钟信号)  
        LDR.N    R0,??DataTable4_4  ;; 0x4004d014
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.N    R1,??DataTable4_4  ;; 0x4004d014
        STR      R0,[R1, #+0]
//   11   GPIOE_PDDR |= (1<<4);//引脚选择输出方向(SI同步信号)  
        LDR.N    R0,??DataTable4_5  ;; 0x400ff114
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10
        LDR.N    R1,??DataTable4_5  ;; 0x400ff114
        STR      R0,[R1, #+0]
//   12   GPIOE_PDDR |= (1<<5);//引脚选择输出方向(CLK同步信号)
        LDR.N    R0,??DataTable4_5  ;; 0x400ff114
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x20
        LDR.N    R1,??DataTable4_5  ;; 0x400ff114
        STR      R0,[R1, #+0]
//   13   //------------------------------CCD3---------------------------------
//   14   /*
//   15   PORTE_PCR0 |= 0x0u;//引脚复用选择模拟输入 
//   16   PORTE_PCR1 |= 0x00000100u;//引脚复用选择普通IO(SI同步信号) 
//   17   PORTE_PCR2 |= 0x00000100u;//引脚复用选择普通IO(CLK时钟信号)   
//   18   GPIOE_PDDR |= (1<<1);//引脚选择输出方向(SI同步信号)  
//   19   GPIOE_PDDR |= (1<<2);//引脚选择输出方向(CLK同步信号)
//   20   */
//   21 }
        BX       LR               ;; return
//   22 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   23 unsigned char SampleOncePTE3(void)
//   24 {
//   25   unsigned char result = 0;
SampleOncePTE3:
        MOVS     R0,#+0
//   26   ADC1_CFG1 |= 0x00000030u;//ADC1设置为总线时钟频率/2，长采样时间，8位采样
        LDR.N    R1,??DataTable4_6  ;; 0x400bb008
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x30
        LDR.N    R2,??DataTable4_6  ;; 0x400bb008
        STR      R1,[R2, #+0]
//   27   ADC1_CFG2 |= 0x00000004u;//ADC1设置为a通道，禁止异步时钟，高速序列转换，最长采样时间
        LDR.N    R1,??DataTable4_7  ;; 0x400bb00c
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x4
        LDR.N    R2,??DataTable4_7  ;; 0x400bb00c
        STR      R1,[R2, #+0]
//   28   ADC1_SC1A = 0x00000007u;//ADC1设置为禁止中断，单端采样，通道7a采样，这个寄存器写入后就会开始转换
        LDR.N    R1,??DataTable4_8  ;; 0x400bb000
        MOVS     R2,#+7
        STR      R2,[R1, #+0]
//   29   while ((ADC1_SC1A & ADC_SC1_COCO_MASK ) != ADC_SC1_COCO_MASK);//等待单次转换完成   
??SampleOncePTE3_0:
        LDR.N    R0,??DataTable4_8  ;; 0x400bb000
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??SampleOncePTE3_0
//   30   result = ADC1_RA;
        LDR.N    R0,??DataTable4_9  ;; 0x400bb010
        LDR      R0,[R0, #+0]
//   31   return result;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
//   32 }
//   33 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   34 unsigned char SampleOncePTE0(void)
//   35 {
//   36   unsigned char result = 0;
SampleOncePTE0:
        MOVS     R0,#+0
//   37   ADC1_CFG1 |= 0x00000030u;//ADC1设置为总线时钟频率/2，长采样时间，8位采样
        LDR.N    R1,??DataTable4_6  ;; 0x400bb008
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x30
        LDR.N    R2,??DataTable4_6  ;; 0x400bb008
        STR      R1,[R2, #+0]
//   38   ADC1_CFG2 |= 0x00000004u;//ADC1设置为a通道，禁止异步时钟，高速序列转换，最长采样时间
        LDR.N    R1,??DataTable4_7  ;; 0x400bb00c
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x4
        LDR.N    R2,??DataTable4_7  ;; 0x400bb00c
        STR      R1,[R2, #+0]
//   39   ADC1_SC1A = 0x00000004u;//ADC1设置为禁止中断，单端采样，通道4a采样，这个寄存器写入后就会开始转换
        LDR.N    R1,??DataTable4_8  ;; 0x400bb000
        MOVS     R2,#+4
        STR      R2,[R1, #+0]
//   40   while ((ADC1_SC1A & ADC_SC1_COCO_MASK ) != ADC_SC1_COCO_MASK);//等待单次转换完成   
??SampleOncePTE0_0:
        LDR.N    R0,??DataTable4_8  ;; 0x400bb000
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??SampleOncePTE0_0
//   41   result = ADC1_RA;
        LDR.N    R0,??DataTable4_9  ;; 0x400bb010
        LDR      R0,[R0, #+0]
//   42   return result;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
//   43 }
//   44 
//   45 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   46 void CCD1get(unsigned char *CCD)
//   47 {
CCD1get:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//   48   //GPIOE_PDOR &= ~(1<<5);//CLK1 = 0
//   49   //GPIOE_PDOR |= (1<<5);//CLK1 = 1
//   50   //GPIOE_PDOR &= ~(1<<4);//SI1 = 0
//   51   //GPIOE_PDOR |= (1<<4);//SI1 = 1
//   52   
//   53   GPIOE_PDOR &= ~(1<<5);//CLK1 = 0
        LDR.N    R0,??DataTable4_10  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x20
        LDR.N    R1,??DataTable4_10  ;; 0x400ff100
        STR      R0,[R1, #+0]
//   54   for(unsigned char i = 0;i<10;i++);//延时
        MOVS     R0,#+0
        B.N      ??CCD1get_0
??CCD1get_1:
        ADDS     R0,R0,#+1
??CCD1get_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+10
        BLT.N    ??CCD1get_1
//   55   GPIOE_PDOR |= (1<<4);//SI1 = 1
        LDR.N    R0,??DataTable4_10  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10
        LDR.N    R1,??DataTable4_10  ;; 0x400ff100
        STR      R0,[R1, #+0]
//   56   for(unsigned char i = 0;i<10;i++);//延时
        MOVS     R0,#+0
        B.N      ??CCD1get_2
??CCD1get_3:
        ADDS     R0,R0,#+1
??CCD1get_2:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+10
        BLT.N    ??CCD1get_3
//   57   GPIOE_PDOR |= (1<<5);//CLK1 = 1
        LDR.N    R0,??DataTable4_10  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x20
        LDR.N    R1,??DataTable4_10  ;; 0x400ff100
        STR      R0,[R1, #+0]
//   58   for(unsigned char i = 0;i<10;i++);//延时
        MOVS     R0,#+0
        B.N      ??CCD1get_4
??CCD1get_5:
        ADDS     R0,R0,#+1
??CCD1get_4:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+10
        BLT.N    ??CCD1get_5
//   59   GPIOE_PDOR &= ~(1<<4);//SI1 = 0
        LDR.N    R0,??DataTable4_10  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x10
        LDR.N    R1,??DataTable4_10  ;; 0x400ff100
        STR      R0,[R1, #+0]
//   60   for(unsigned char i = 0;i<200;i++);//延时
        MOVS     R0,#+0
        B.N      ??CCD1get_6
??CCD1get_7:
        ADDS     R0,R0,#+1
??CCD1get_6:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+200
        BLT.N    ??CCD1get_7
//   61   
//   62   for(unsigned char i = 0;i<128;i++)
        MOVS     R5,#+0
        B.N      ??CCD1get_8
//   63   {
//   64     GPIOE_PDOR &= ~(1<<5);//CLK1 = 0
//   65     *(CCD + i) = SampleOncePTE3();//存储CCD值  
//   66     GPIOE_PDOR |= (1<<5);//CLK1 = 1
//   67     for(unsigned char i = 0;i<10;i++);//延时
??CCD1get_9:
        ADDS     R0,R0,#+1
??CCD1get_10:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+10
        BLT.N    ??CCD1get_9
        ADDS     R5,R5,#+1
??CCD1get_8:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+128
        BGE.N    ??CCD1get_11
        LDR.N    R0,??DataTable4_10  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x20
        LDR.N    R1,??DataTable4_10  ;; 0x400ff100
        STR      R0,[R1, #+0]
        BL       SampleOncePTE3
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STRB     R0,[R5, R4]
        LDR.N    R0,??DataTable4_10  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x20
        LDR.N    R1,??DataTable4_10  ;; 0x400ff100
        STR      R0,[R1, #+0]
        MOVS     R0,#+0
        B.N      ??CCD1get_10
//   68   }
//   69 //  *(CCD + 0) = *(CCD + 2);
//   70 //  *(CCD + 1) = *(CCD + 2);
//   71 }
??CCD1get_11:
        POP      {R0,R4,R5,PC}    ;; return
//   72 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   73 void CCD2get(unsigned char *CCD)
//   74 {
CCD2get:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//   75   //GPIOE_PDOR &= ~(1<<2);//CLK3 = 0
//   76   //GPIOE_PDOR |= (1<<2);//CLK3 = 1
//   77   //GPIOE_PDOR &= ~(1<<1);//SI3 = 0
//   78   //GPIOE_PDOR |= (1<<1);//SI3 = 1
//   79   
//   80   GPIOE_PDOR &= ~(1<<2);//CLK3 = 0
        LDR.N    R0,??DataTable4_10  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x4
        LDR.N    R1,??DataTable4_10  ;; 0x400ff100
        STR      R0,[R1, #+0]
//   81   for(unsigned char i = 0;i<10;i++);//延时
        MOVS     R0,#+0
        B.N      ??CCD2get_0
??CCD2get_1:
        ADDS     R0,R0,#+1
??CCD2get_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+10
        BLT.N    ??CCD2get_1
//   82   GPIOE_PDOR |= (1<<1);//SI3 = 1
        LDR.N    R0,??DataTable4_10  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable4_10  ;; 0x400ff100
        STR      R0,[R1, #+0]
//   83   for(unsigned char i = 0;i<10;i++);//延时
        MOVS     R0,#+0
        B.N      ??CCD2get_2
??CCD2get_3:
        ADDS     R0,R0,#+1
??CCD2get_2:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+10
        BLT.N    ??CCD2get_3
//   84   GPIOE_PDOR |= (1<<2);//CLK3 = 1
        LDR.N    R0,??DataTable4_10  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.N    R1,??DataTable4_10  ;; 0x400ff100
        STR      R0,[R1, #+0]
//   85   for(unsigned char i = 0;i<10;i++);//延时
        MOVS     R0,#+0
        B.N      ??CCD2get_4
??CCD2get_5:
        ADDS     R0,R0,#+1
??CCD2get_4:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+10
        BLT.N    ??CCD2get_5
//   86   GPIOE_PDOR &= ~(1<<1);//SI3 = 0
        LDR.N    R0,??DataTable4_10  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x2
        LDR.N    R1,??DataTable4_10  ;; 0x400ff100
        STR      R0,[R1, #+0]
//   87   for(unsigned char i = 0;i<200;i++);//延时
        MOVS     R0,#+0
        B.N      ??CCD2get_6
??CCD2get_7:
        ADDS     R0,R0,#+1
??CCD2get_6:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+200
        BLT.N    ??CCD2get_7
//   88   
//   89   for(unsigned char i = 0;i<128;i++)
        MOVS     R5,#+0
        B.N      ??CCD2get_8
//   90   {
//   91     GPIOE_PDOR &= ~(1<<2);//CLK3 = 0
//   92     *(CCD + i) = SampleOncePTE0();//存储CCD值  
//   93     GPIOE_PDOR |= (1<<2);//CLK3 = 1
//   94     for(unsigned char i = 0;i<10;i++);//延时
??CCD2get_9:
        ADDS     R0,R0,#+1
??CCD2get_10:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+10
        BLT.N    ??CCD2get_9
        ADDS     R5,R5,#+1
??CCD2get_8:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+128
        BGE.N    ??CCD2get_11
        LDR.N    R0,??DataTable4_10  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x4
        LDR.N    R1,??DataTable4_10  ;; 0x400ff100
        STR      R0,[R1, #+0]
        BL       SampleOncePTE0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STRB     R0,[R5, R4]
        LDR.N    R0,??DataTable4_10  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.N    R1,??DataTable4_10  ;; 0x400ff100
        STR      R0,[R1, #+0]
        MOVS     R0,#+0
        B.N      ??CCD2get_10
//   95   }
//   96 //  *(CCD + 0) = *(CCD + 2);
//   97 //  *(CCD + 1) = *(CCD + 2);
//   98 }
??CCD2get_11:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     0x40048030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     0x4004d00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     0x4004d010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     0x4004d014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     0x400ff114

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_6:
        DC32     0x400bb008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_7:
        DC32     0x400bb00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_8:
        DC32     0x400bb000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_9:
        DC32     0x400bb010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_10:
        DC32     0x400ff100

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
// 538 bytes in section .text
// 
// 538 bytes of CODE memory
//
//Errors: none
//Warnings: none
