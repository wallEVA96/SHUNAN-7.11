///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     16/Aug/2014  22:11:17 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\pc\Desktop\继续做的事情\四旋翼飞行器 -         /
//                    TM4123G\代码\遥控器\ShunAn2\GR_Serverx11_12.c           /
//    Command line =  "C:\Users\pc\Desktop\继续做的事情\四旋翼飞行器 -        /
//                    TM4123G\代码\遥控器\ShunAn2\GR_Serverx11_12.c" -D IAR   /
//                    -D ShunAn2 -lCN "C:\Users\pc\Desktop\继续做的事情\四旋� /
//                    矸尚衅� - TM4123G\代码\遥控器\FLASH_1M\List\" -lB       /
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
//                    TM4123G\代码\遥控器\FLASH_1M\List\GR_Serverx11_12.s     /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_f2iz
        EXTERN __aeabi_fadd
        EXTERN __aeabi_fdiv
        EXTERN __aeabi_fmul
        EXTERN __aeabi_ui2f

        PUBLIC GR_ServerInit
        PUBLIC GR_ServerPWMOut

// C:\Users\pc\Desktop\继续做的事情\四旋翼飞行器 - TM4123G\代码\遥控器\ShunAn2\GR_Serverx11_12.c
//    1 #include "MK60F15.h"
//    2 #include "GR_Serverx11_12.h"
//    3 
//    4 //打角舵机
//    5 #define Server1Central 13120
//    6 #define Server1Offset 3000
//    7 #define Server1Left (Server1Central-Server1Offset)
//    8 #define Server1Right (Server1Central+Server1Offset)
//    9 //==============================================================
//   10 //函数名：void GR_ServerInit()
//   11 //功能描述：舵机PWM初始化，PTA11-FTM2_CH1
//   12 //参数：无
//   13 //返回：无
//   14 //==============================================================

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   15 void GR_ServerInit()
//   16 {
//   17   SIM_SCGC6 |= SIM_SCGC6_FTM0_MASK;//使能FTM0时钟
GR_ServerInit:
        LDR.N    R0,??DataTable1  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000000
        LDR.N    R1,??DataTable1  ;; 0x4004803c
        STR      R0,[R1, #+0]
//   18   SIM_SCGC5 |= 0x00001000u;//使能PORTD时钟
        LDR.N    R0,??DataTable1_1  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000
        LDR.N    R1,??DataTable1_1  ;; 0x40048038
        STR      R0,[R1, #+0]
//   19   PORTD_PCR4 = 0x00000400u;//引脚复用选择ALT4(FTM)
        LDR.N    R0,??DataTable1_2  ;; 0x4004c010
        MOV      R1,#+1024
        STR      R1,[R0, #+0]
//   20   
//   21   FTM0_C4SC &= ~FTM_CnSC_ELSA_MASK;                  // MSnB:MSnA = 1x       边沿对齐PWM
        LDR.N    R0,??DataTable1_3  ;; 0x4003802c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x4
        LDR.N    R1,??DataTable1_3  ;; 0x4003802c
        STR      R0,[R1, #+0]
//   22   FTM0_C4SC = FTM_CnSC_MSB_MASK | FTM_CnSC_ELSB_MASK;// ELSnB:ELSnA = 10     先高后低
        LDR.N    R0,??DataTable1_3  ;; 0x4003802c
        MOVS     R1,#+40
        STR      R1,[R0, #+0]
//   23                                                      // ELSnB:ELSnA = 11     先低后高
//   24   FTM0_SC = 0 | FTM_SC_PS(3) | FTM_SC_CLKS(1);//上升沿计数模式、分频系数为2^3(300Hz)2^5(75Hz)、时钟选择为bus 时钟、禁止中断
        LDR.N    R0,??DataTable1_4  ;; 0x40038000
        MOVS     R1,#+11
        STR      R1,[R0, #+0]
//   25   FTM0_MOD = 31250;//模数, EPWM的周期为 ：MOD - CNTIN + 0x0001
        LDR.N    R0,??DataTable1_5  ;; 0x40038008
        MOVW     R1,#+31250
        STR      R1,[R0, #+0]
//   26   FTM0_CNTIN = 0;//脉冲宽度：(CnV - CNTIN)
        LDR.N    R0,??DataTable1_6  ;; 0x4003804c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   27   FTM0_C4V = Server1Central;//脉冲宽度：(CnV - CNTIN)
        LDR.N    R0,??DataTable1_7  ;; 0x40038030
        MOV      R1,#+13120
        STR      R1,[R0, #+0]
//   28   FTM0_CNT = 0;//计数器。只有低16位可用（写任何值到此寄存器，都会加载 CNTIN 的值）
        LDR.N    R0,??DataTable1_8  ;; 0x40038004
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   29   //正中间占空比45-14062，最左占空比35-10937，最右占空比55-17187(300Hz)
//   30   //正中间占空比45-4300，最左占空比35-4950，最右占空比55-3650(75Hz)
//   31   //正中间占空比13240，最左10630，最右15850
//   32 }
        BX       LR               ;; return
//   33 //==============================================================
//   34 //函数名：void GR_ServerPWMOut(unsigned short int duty)
//   35 //功能描述：转向舵机PWM输出
//   36 //参数：占空比(0-200)，100为正中间，0为最左边，200为最右边
//   37 //返回：无
//   38 //==============================================================

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   39 void GR_ServerPWMOut(unsigned char duty)
//   40 {
GR_ServerPWMOut:
        PUSH     {R7,LR}
//   41   unsigned short int PWMtemp;//正中间占空比15200，最左占空比12100，最右占空比18300//正中间占空比45-4250，最左占空比35-4900，最右占空比55-3600(75Hz)
//   42   float float_temp;
//   43   if(duty > 200) duty = 200;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+201
        BLT.N    ??GR_ServerPWMOut_0
        MOVS     R0,#+200
//   44   float_temp = duty;
??GR_ServerPWMOut_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       __aeabi_ui2f
//   45   float_temp = float_temp/200*(Server1Offset*2) + Server1Left;//计算实际输出占空比,200为满刻度，3125为实际占空比最大值减最小值（即变化范围），12100为实际能输出的最小占空比
        LDR.N    R1,??DataTable1_9  ;; 0x43480000
        BL       __aeabi_fdiv
        LDR.N    R1,??DataTable1_10  ;; 0x45bb8000
        BL       __aeabi_fmul
        LDR.N    R1,??DataTable1_11  ;; 0x461e2000
        BL       __aeabi_fadd
//   46   PWMtemp = (unsigned short int)float_temp;
        BL       __aeabi_f2iz
//   47   if(PWMtemp > Server1Right) PWMtemp = Server1Right;
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOVW     R1,#+16121
        CMP      R0,R1
        BLT.N    ??GR_ServerPWMOut_1
        MOVW     R0,#+16120
        B.N      ??GR_ServerPWMOut_2
//   48   else if(PWMtemp < Server1Left) PWMtemp = Server1Left;
??GR_ServerPWMOut_1:
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOVW     R1,#+10120
        CMP      R0,R1
        BGE.N    ??GR_ServerPWMOut_2
        MOVW     R0,#+10120
//   49   FTM0_C4V = PWMtemp;
??GR_ServerPWMOut_2:
        LDR.N    R1,??DataTable1_7  ;; 0x40038030
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        STR      R0,[R1, #+0]
//   50 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     0x4004c010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     0x4003802c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DC32     0x40038000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_5:
        DC32     0x40038008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_6:
        DC32     0x4003804c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_7:
        DC32     0x40038030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_8:
        DC32     0x40038004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_9:
        DC32     0x43480000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_10:
        DC32     0x45bb8000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_11:
        DC32     0x461e2000

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//   51 
// 
// 210 bytes in section .text
// 
// 210 bytes of CODE memory
//
//Errors: none
//Warnings: none
