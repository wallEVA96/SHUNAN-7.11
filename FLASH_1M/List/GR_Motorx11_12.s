///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     16/Aug/2014  22:11:15 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\pc\Desktop\¼ÌÐø×öµÄÊÂÇé\ËÄÐýÒí·ÉÐÐÆ÷ -         /
//                    TM4123G\´úÂë\Ò£¿ØÆ÷\ShunAn2\GR_Motorx11_12.c            /
//    Command line =  "C:\Users\pc\Desktop\¼ÌÐø×öµÄÊÂÇé\ËÄÐýÒí·ÉÐÐÆ÷ -        /
//                    TM4123G\´úÂë\Ò£¿ØÆ÷\ShunAn2\GR_Motorx11_12.c" -D IAR    /
//                    -D ShunAn2 -lCN "C:\Users\pc\Desktop\¼ÌÐø×öµÄÊÂÇé\ËÄÐýÒ /
//                    í·ÉÐÐÆ÷ - TM4123G\´úÂë\Ò£¿ØÆ÷\FLASH_1M\List\" -lB       /
//                    "C:\Users\pc\Desktop\¼ÌÐø×öµÄÊÂÇé\ËÄÐýÒí·ÉÐÐÆ÷ -        /
//                    TM4123G\´úÂë\Ò£¿ØÆ÷\FLASH_1M\List\" -o                  /
//                    "C:\Users\pc\Desktop\¼ÌÐø×öµÄÊÂÇé\ËÄÐýÒí·ÉÐÐÆ÷ -        /
//                    TM4123G\´úÂë\Ò£¿ØÆ÷\FLASH_1M\Obj\" --no_cse             /
//                    --no_unroll --no_inline --no_code_motion --no_tbaa      /
//                    --no_clustering --no_scheduling --debug                 /
//                    --endian=little --cpu=Cortex-M4 -e --fpu=None           /
//                    --dlib_config "C:\Program Files (x86)\IAR               /
//                    Systems\Embedded Workbench                              /
//                    6.5\arm\INC\c\DLib_Config_Normal.h" -I                  /
//                    "C:\Users\pc\Desktop\¼ÌÐø×öµÄÊÂÇé\ËÄÐýÒí·ÉÐÐÆ÷ -        /
//                    TM4123G\´úÂë\Ò£¿ØÆ÷\ShunAn2\" -I                        /
//                    "C:\Users\pc\Desktop\¼ÌÐø×öµÄÊÂÇé\ËÄÐýÒí·ÉÐÐÆ÷ -        /
//                    TM4123G\´úÂë\Ò£¿ØÆ÷\Library\" -I                        /
//                    "C:\Users\pc\Desktop\¼ÌÐø×öµÄÊÂÇé\ËÄÐýÒí·ÉÐÐÆ÷ -        /
//                    TM4123G\´úÂë\Ò£¿ØÆ÷\Library\BlessedAlien\" -Ol          /
//                    --use_c++_inline                                        /
//    List file    =  C:\Users\pc\Desktop\¼ÌÐø×öµÄÊÂÇé\ËÄÐýÒí·ÉÐÐÆ÷ -         /
//                    TM4123G\´úÂë\Ò£¿ØÆ÷\FLASH_1M\List\GR_Motorx11_12.s      /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_f2iz
        EXTERN __aeabi_fdiv
        EXTERN __aeabi_fmul
        EXTERN __aeabi_ui2f

        PUBLIC GR_MotorInit
        PUBLIC GR_MotorPWMOut

// C:\Users\pc\Desktop\¼ÌÐø×öµÄÊÂÇé\ËÄÐýÒí·ÉÐÐÆ÷ - TM4123G\´úÂë\Ò£¿ØÆ÷\ShunAn2\GR_Motorx11_12.c
//    1 #include "MK60F15.h"
//    2 #include "GR_Motorx11_12.h"
//    3 
//    4 //==============================================================
//    5 //º¯ÊýÃû£ºvoid GR_MotorInit()
//    6 //¹¦ÄÜÃèÊö£ºµç»úPWM³õÊ¼»¯£¬PTA8-FTM1_CH0
//    7 //²ÎÊý£ºÎÞ
//    8 //·µ»Ø£ºÎÞ
//    9 //==============================================================

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   10 void GR_MotorInit()
//   11 {
//   12   SIM_SCGC3 |= SIM_SCGC3_FTM3_MASK;//Ê¹ÄÜFTM3Ê±ÖÓ
GR_MotorInit:
        LDR.N    R0,??DataTable1  ;; 0x40048030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000000
        LDR.N    R1,??DataTable1  ;; 0x40048030
        STR      R0,[R1, #+0]
//   13   SIM_SCGC5 |= SIM_SCGC5_PORTE_MASK;//Ê¹ÄÜPTE5Ê±ÖÓ//SIM_SCGC5 |= 0x00002000u;//Ê¹ÄÜPORTEÊ±ÖÓ 
        LDR.N    R0,??DataTable1_1  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000
        LDR.N    R1,??DataTable1_1  ;; 0x40048038
        STR      R0,[R1, #+0]
//   14   
//   15   PORTE_PCR7 = 0x00000600u;//PTE7Òý½Å¸´ÓÃÑ¡ÔñALT6(FTM)
        LDR.N    R0,??DataTable1_2  ;; 0x4004d01c
        MOV      R1,#+1536
        STR      R1,[R0, #+0]
//   16   PORTE_PCR6 = 0x00000600u;//PTE6Òý½Å¸´ÓÃÑ¡ÔñALT6(FTM)
        LDR.N    R0,??DataTable1_3  ;; 0x4004d018
        MOV      R1,#+1536
        STR      R1,[R0, #+0]
//   17   
//   18   PORTE_PCR27 = 0x00000100u;//Ê¹ÄÜ¿ØÖÆ
        LDR.N    R0,??DataTable1_4  ;; 0x4004d06c
        MOV      R1,#+256
        STR      R1,[R0, #+0]
//   19   PORTE_PCR28 = 0x00000100u;//Ê¹ÄÜ¿ØÖÆ
        LDR.N    R0,??DataTable1_5  ;; 0x4004d070
        MOV      R1,#+256
        STR      R1,[R0, #+0]
//   20   
//   21   GPIOE_PDDR |= (1<<27);//PTE27Êä³ö(¸ß¶ËÊ¹ÄÜ)
        LDR.N    R0,??DataTable1_6  ;; 0x400ff114
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8000000
        LDR.N    R1,??DataTable1_6  ;; 0x400ff114
        STR      R0,[R1, #+0]
//   22   GPIOE_PDDR |= (1<<28);//PTE28Êä³ö(¸ß¶ËÊ¹ÄÜ)
        LDR.N    R0,??DataTable1_6  ;; 0x400ff114
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000000
        LDR.N    R1,??DataTable1_6  ;; 0x400ff114
        STR      R0,[R1, #+0]
//   23   
//   24   // Êä³öµçÆ½
//   25   GPIOE_PDOR |= (1<<27);//PTE27Êä³ö(¸ß¶ËÊ¹ÄÜ)
        LDR.N    R0,??DataTable1_7  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8000000
        LDR.N    R1,??DataTable1_7  ;; 0x400ff100
        STR      R0,[R1, #+0]
//   26   GPIOE_PDOR |= (1<<28);//PTE28Êä³ö(¸ß¶ËÊ¹ÄÜ)
        LDR.N    R0,??DataTable1_7  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000000
        LDR.N    R1,??DataTable1_7  ;; 0x400ff100
        STR      R0,[R1, #+0]
//   27   //
//   28   
//   29   FTM3_C1SC &= ~FTM_CnSC_ELSA_MASK;                  // MSnB:MSnA = 1x       ±ßÑØ¶ÔÆëPWM
        LDR.N    R0,??DataTable1_8  ;; 0x400b9014
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x4
        LDR.N    R1,??DataTable1_8  ;; 0x400b9014
        STR      R0,[R1, #+0]
//   30   FTM3_C1SC = FTM_CnSC_MSB_MASK | FTM_CnSC_ELSB_MASK;// ELSnB:ELSnA = 10     ÏÈ¸ßºóµÍ
        LDR.N    R0,??DataTable1_8  ;; 0x400b9014
        MOVS     R1,#+40
        STR      R1,[R0, #+0]
//   31                                                      // ELSnB:ELSnA = 11     ÏÈµÍºó¸ß
//   32   FTM3_C2SC &= ~FTM_CnSC_ELSA_MASK;                  // MSnB:MSnA = 1x       ±ßÑØ¶ÔÆëPWM
        LDR.N    R0,??DataTable1_9  ;; 0x400b901c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x4
        LDR.N    R1,??DataTable1_9  ;; 0x400b901c
        STR      R0,[R1, #+0]
//   33   FTM3_C2SC = FTM_CnSC_MSB_MASK | FTM_CnSC_ELSB_MASK;// ELSnB:ELSnA = 10     ÏÈ¸ßºóµÍ
        LDR.N    R0,??DataTable1_9  ;; 0x400b901c
        MOVS     R1,#+40
        STR      R1,[R0, #+0]
//   34                                                      // ELSnB:ELSnA = 11     ÏÈµÍºó¸ß
//   35   FTM3_SC = 0 | FTM_SC_PS(1) | FTM_SC_CLKS(1);//ÉÏÉýÑØ¼ÆÊýÄ£Ê½¡¢·ÖÆµÏµÊýÎª2^1¡¢Ê±ÖÓÑ¡ÔñÎªbus Ê±ÖÓ¡¢½ûÖ¹ÖÐ¶Ï
        LDR.N    R0,??DataTable1_10  ;; 0x400b9000
        MOVS     R1,#+9
        STR      R1,[R0, #+0]
//   36   FTM3_MOD = 3750;//Ä£Êý, EPWMµÄÖÜÆÚÎª £ºMOD - CNTIN + 0x0001
        LDR.N    R0,??DataTable1_11  ;; 0x400b9008
        MOVW     R1,#+3750
        STR      R1,[R0, #+0]
//   37   FTM3_CNTIN = 0;//Âö³å¿í¶È£º(CnV - CNTIN)
        LDR.N    R0,??DataTable1_12  ;; 0x400b904c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   38   FTM3_C1V = 1000;//Âö³å¿í¶È£º(CnV - CNTIN)
        LDR.N    R0,??DataTable1_13  ;; 0x400b9018
        MOV      R1,#+1000
        STR      R1,[R0, #+0]
//   39   FTM3_C2V = 1000;//Âö³å¿í¶È£º(CnV - CNTIN)
        LDR.N    R0,??DataTable1_14  ;; 0x400b9020
        MOV      R1,#+1000
        STR      R1,[R0, #+0]
//   40   FTM3_CNT = 0;//¼ÆÊýÆ÷¡£Ö»ÓÐµÍ16Î»¿ÉÓÃ£¨Ð´ÈÎºÎÖµµ½´Ë¼Ä´æÆ÷£¬¶¼»á¼ÓÔØ CNTIN µÄÖµ£©
        LDR.N    R0,??DataTable1_15  ;; 0x400b9004
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   41   //3750ÎªÂúÕ¼¿Õ±È
//   42 }
        BX       LR               ;; return
//   43 
//   44 //==============================================================
//   45 //º¯ÊýÃû£ºvoid GR_MotorPWMOut(unsigned short int duty,unsigned char direction)
//   46 //¹¦ÄÜÃèÊö£ºµç»úPWMÊä³ö(10kHzÆµÂÊ¡¢1000·Ö¶È¡¢3750Îª¼Ä´æÆ÷ÂúÕ¼¿Õ±ÈÊýÊÇÇ°ÌáÌõ¼þ)
//   47 //²ÎÊý£ºÕ¼¿Õ±È¡¢·½Ïò£¨0-Í£Ö¹£¬1-Õý×ª£¬2-·´×ª£©
//   48 //·µ»Ø£ºÎÞ
//   49 //==============================================================

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   50 void GR_MotorPWMOut(unsigned short int duty,unsigned char direction)
//   51 {
GR_MotorPWMOut:
        PUSH     {R4,LR}
        MOVS     R4,R1
//   52   unsigned short int PWMtemp = 2250;//3750ÎªÂúÕ¼¿Õ±È
        MOVW     R2,#+2250
//   53   float float_temp = 0.60;
        LDR.N    R1,??DataTable1_16  ;; 0x3f19999a
//   54   if(duty > 1000) duty = 1000;//ÏÞ·ù·ÀÖ¹´íÎó
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+1000
        BLE.N    ??GR_MotorPWMOut_0
        MOV      R0,#+1000
//   55   float_temp = duty;
??GR_MotorPWMOut_0:
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       __aeabi_ui2f
        MOVS     R1,R0
//   56   float_temp = float_temp/1000*3750;
        MOVS     R0,R1
        LDR.N    R1,??DataTable1_17  ;; 0x447a0000
        BL       __aeabi_fdiv
        LDR.N    R1,??DataTable1_18  ;; 0x456a6000
        BL       __aeabi_fmul
        MOVS     R1,R0
//   57   PWMtemp = (unsigned short int)float_temp;
        MOVS     R0,R1
        BL       __aeabi_f2iz
        MOVS     R2,R0
//   58   
//   59   if(direction == 1) 
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.N    ??GR_MotorPWMOut_1
//   60   {
//   61     FTM3_C2V = PWMtemp;
        LDR.N    R0,??DataTable1_14  ;; 0x400b9020
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        STR      R2,[R0, #+0]
//   62     FTM3_C1V = 0;
        LDR.N    R0,??DataTable1_13  ;; 0x400b9018
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        B.N      ??GR_MotorPWMOut_2
//   63   }
//   64   else if(direction == 2) 
??GR_MotorPWMOut_1:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+2
        BNE.N    ??GR_MotorPWMOut_3
//   65   {
//   66     FTM3_C2V = 0;
        LDR.N    R0,??DataTable1_14  ;; 0x400b9020
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   67     FTM3_C1V = PWMtemp;
        LDR.N    R0,??DataTable1_13  ;; 0x400b9018
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        STR      R2,[R0, #+0]
        B.N      ??GR_MotorPWMOut_2
//   68   }
//   69   else if(direction == 3) 
??GR_MotorPWMOut_3:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+3
        BNE.N    ??GR_MotorPWMOut_4
//   70   {
//   71     FTM3_C2V = PWMtemp;
        LDR.N    R0,??DataTable1_14  ;; 0x400b9020
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        STR      R2,[R0, #+0]
//   72     FTM3_C1V = PWMtemp;
        LDR.N    R0,??DataTable1_13  ;; 0x400b9018
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        STR      R2,[R0, #+0]
        B.N      ??GR_MotorPWMOut_2
//   73   }
//   74   else
//   75   {
//   76     FTM3_C2V = 0;
??GR_MotorPWMOut_4:
        LDR.N    R0,??DataTable1_14  ;; 0x400b9020
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   77     FTM3_C1V = 0;
        LDR.N    R0,??DataTable1_13  ;; 0x400b9018
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   78   }
//   79 }
??GR_MotorPWMOut_2:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     0x40048030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     0x4004d01c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     0x4004d018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DC32     0x4004d06c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_5:
        DC32     0x4004d070

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_6:
        DC32     0x400ff114

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_7:
        DC32     0x400ff100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_8:
        DC32     0x400b9014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_9:
        DC32     0x400b901c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_10:
        DC32     0x400b9000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_11:
        DC32     0x400b9008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_12:
        DC32     0x400b904c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_13:
        DC32     0x400b9018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_14:
        DC32     0x400b9020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_15:
        DC32     0x400b9004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_16:
        DC32     0x3f19999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_17:
        DC32     0x447a0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_18:
        DC32     0x456a6000

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
// 388 bytes in section .text
// 
// 388 bytes of CODE memory
//
//Errors: none
//Warnings: none
