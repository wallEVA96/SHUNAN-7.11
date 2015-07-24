///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     20/Jul/2015  01:04:02 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\Ë³°µÈýºÅ-»ªÄÏÈ /
//                    ü×îºóÆßÌì-7.11\ShunAn_Panel\Poet_InputInterface.c       /
//    Command line =  D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\Ë³°µÈýºÅ-»ªÄÏÈ /
//                    ü×îºóÆßÌì-7.11\ShunAn_Panel\Poet_InputInterface.c -D    /
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
//                    ü×îºóÆßÌì-7.11\FLASH_1MB\List\Poet_InputInterface.s     /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        PUBLIC m_Button_Timer
        PUBLIC u8_ExInterface0_get
        PUBLIC u8_ExInterface10_get
        PUBLIC u8_ExInterface1_get
        PUBLIC u8_ExInterface2_get
        PUBLIC u8_ExInterface3_get
        PUBLIC u8_ExInterface4_get
        PUBLIC u8_ExInterface5_get
        PUBLIC u8_ExInterface6_get
        PUBLIC u8_ExInterface7_get
        PUBLIC u8_ExInterface8_get
        PUBLIC u8_ExInterface9_get
        PUBLIC v_ExInterface_Init

// D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\Ë³°µÈýºÅ-»ªÄÏÈü×îºóÆßÌì-7.11\ShunAn_Panel\Poet_InputInterface.c
//    1 #include "MK60F15.h"
//    2 #include "ShunAn_Lib.h"
//    3 #include "start_ShunAn.h"
//    4 #include "BlessedAlien.h"
//    5 
//    6 #include "Poet_InputInterface.h"
//    7 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    8 s_Button_TimeInformation m_Button_Timer = {0};//°´¼ü¼ÆÊ±Æ÷È«¾Ö³õÊ¼»¯
m_Button_Timer:
        DS8 32
//    9 
//   10 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   11 void v_ExInterface_Init ( void )
//   12 {
//   13     // ³õÊ¼»¯²¦Âë¿ª¹Ø / °´¼ü
//   14     SIM_SCGC5 |= (SIM_SCGC5_PORTA_MASK|SIM_SCGC5_PORTE_MASK);//Ê¹ÄÜPORTA¡¢BÊ±ÖÓ
v_ExInterface_Init:
        LDR.N    R0,??DataTable11  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2200
        LDR.N    R1,??DataTable11  ;; 0x40048038
        STR      R0,[R1, #+0]
//   15     
//   16     PORTE_PCR24 |= 0x00000100u;//Òý½Å¸´ÓÃÑ¡ÔñÆÕÍ¨IO()
        LDR.N    R0,??DataTable11_1  ;; 0x4004d060
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.N    R1,??DataTable11_1  ;; 0x4004d060
        STR      R0,[R1, #+0]
//   17     PORTE_PCR25 |= 0x00000100u;//Òý½Å¸´ÓÃÑ¡ÔñÆÕÍ¨IO()
        LDR.N    R0,??DataTable11_2  ;; 0x4004d064
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.N    R1,??DataTable11_2  ;; 0x4004d064
        STR      R0,[R1, #+0]
//   18     PORTE_PCR26 |= 0x00000100u;//Òý½Å¸´ÓÃÑ¡ÔñÆÕÍ¨IO()
        LDR.N    R0,??DataTable11_3  ;; 0x4004d068
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.N    R1,??DataTable11_3  ;; 0x4004d068
        STR      R0,[R1, #+0]
//   19     PORTE_PCR27 |= 0x00000100u;//Òý½Å¸´ÓÃÑ¡ÔñÆÕÍ¨IO()
        LDR.N    R0,??DataTable11_4  ;; 0x4004d06c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.N    R1,??DataTable11_4  ;; 0x4004d06c
        STR      R0,[R1, #+0]
//   20     PORTE_PCR28 |= 0x00000100u;//Òý½Å¸´ÓÃÑ¡ÔñÆÕÍ¨IO()
        LDR.N    R0,??DataTable11_5  ;; 0x4004d070
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.N    R1,??DataTable11_5  ;; 0x4004d070
        STR      R0,[R1, #+0]
//   21     
//   22     PORTA_PCR5  |= 0x00000100u;//Òý½Å¸´ÓÃÑ¡ÔñÆÕÍ¨IO()
        LDR.N    R0,??DataTable11_6  ;; 0x40049014
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.N    R1,??DataTable11_6  ;; 0x40049014
        STR      R0,[R1, #+0]
//   23     
//   24     PORTA_PCR24 |= 0x00000100u;//Òý½Å¸´ÓÃÑ¡ÔñÆÕÍ¨IO()
        LDR.N    R0,??DataTable11_7  ;; 0x40049060
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.N    R1,??DataTable11_7  ;; 0x40049060
        STR      R0,[R1, #+0]
//   25     PORTA_PCR25 |= 0x00000100u;//Òý½Å¸´ÓÃÑ¡ÔñÆÕÍ¨IO()
        LDR.N    R0,??DataTable11_8  ;; 0x40049064
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.N    R1,??DataTable11_8  ;; 0x40049064
        STR      R0,[R1, #+0]
//   26     PORTA_PCR26 |= 0x00000100u;//Òý½Å¸´ÓÃÑ¡ÔñÆÕÍ¨IO()
        LDR.N    R0,??DataTable11_9  ;; 0x40049068
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.N    R1,??DataTable11_9  ;; 0x40049068
        STR      R0,[R1, #+0]
//   27     PORTA_PCR27 |= 0x00000100u;//Òý½Å¸´ÓÃÑ¡ÔñÆÕÍ¨IO()
        LDR.N    R0,??DataTable11_10  ;; 0x4004906c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.N    R1,??DataTable11_10  ;; 0x4004906c
        STR      R0,[R1, #+0]
//   28     PORTA_PCR12 |= 0x00000100u;//Òý½Å¸´ÓÃÑ¡ÔñÆÕÍ¨IO()
        LDR.N    R0,??DataTable11_11  ;; 0x40049030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.N    R1,??DataTable11_11  ;; 0x40049030
        STR      R0,[R1, #+0]
//   29     
//   30     GPIOE_PDDR &= ~(1<<24);//Òý½ÅÑ¡ÔñÊäÈë·½Ïò()
        LDR.N    R0,??DataTable11_12  ;; 0x400ff114
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x1000000
        LDR.N    R1,??DataTable11_12  ;; 0x400ff114
        STR      R0,[R1, #+0]
//   31     GPIOE_PDDR &= ~(1<<25);//Òý½ÅÑ¡ÔñÊäÈë·½Ïò()
        LDR.N    R0,??DataTable11_12  ;; 0x400ff114
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x2000000
        LDR.N    R1,??DataTable11_12  ;; 0x400ff114
        STR      R0,[R1, #+0]
//   32     GPIOE_PDDR &= ~(1<<26);//Òý½ÅÑ¡ÔñÊäÈë·½Ïò()
        LDR.N    R0,??DataTable11_12  ;; 0x400ff114
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x4000000
        LDR.N    R1,??DataTable11_12  ;; 0x400ff114
        STR      R0,[R1, #+0]
//   33     GPIOE_PDDR &= ~(1<<27);//Òý½ÅÑ¡ÔñÊäÈë·½Ïò()
        LDR.N    R0,??DataTable11_12  ;; 0x400ff114
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x8000000
        LDR.N    R1,??DataTable11_12  ;; 0x400ff114
        STR      R0,[R1, #+0]
//   34     GPIOE_PDDR &= ~(1<<28);//Òý½ÅÑ¡ÔñÊäÈë·½Ïò()
        LDR.N    R0,??DataTable11_12  ;; 0x400ff114
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x10000000
        LDR.N    R1,??DataTable11_12  ;; 0x400ff114
        STR      R0,[R1, #+0]
//   35     
//   36     GPIOA_PDDR &= ~(1<<5);//Òý½ÅÑ¡ÔñÊäÈë·½Ïò()
        LDR.N    R0,??DataTable11_13  ;; 0x400ff014
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x20
        LDR.N    R1,??DataTable11_13  ;; 0x400ff014
        STR      R0,[R1, #+0]
//   37     
//   38     GPIOA_PDDR &= ~(1<<24);//Òý½ÅÑ¡ÔñÊäÈë·½Ïò()
        LDR.N    R0,??DataTable11_13  ;; 0x400ff014
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x1000000
        LDR.N    R1,??DataTable11_13  ;; 0x400ff014
        STR      R0,[R1, #+0]
//   39     GPIOA_PDDR &= ~(1<<25);//Òý½ÅÑ¡ÔñÊäÈë·½Ïò()
        LDR.N    R0,??DataTable11_13  ;; 0x400ff014
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x2000000
        LDR.N    R1,??DataTable11_13  ;; 0x400ff014
        STR      R0,[R1, #+0]
//   40     GPIOA_PDDR &= ~(1<<26);//Òý½ÅÑ¡ÔñÊäÈë·½Ïò()
        LDR.N    R0,??DataTable11_13  ;; 0x400ff014
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x4000000
        LDR.N    R1,??DataTable11_13  ;; 0x400ff014
        STR      R0,[R1, #+0]
//   41     GPIOA_PDDR &= ~(1<<27);//Òý½ÅÑ¡ÔñÊäÈë·½Ïò()
        LDR.N    R0,??DataTable11_13  ;; 0x400ff014
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x8000000
        LDR.N    R1,??DataTable11_13  ;; 0x400ff014
        STR      R0,[R1, #+0]
//   42     GPIOA_PDDR &= ~(1<<12);//Òý½ÅÑ¡ÔñÊäÈë·½Ïò()
        LDR.N    R0,??DataTable11_13  ;; 0x400ff014
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x1000
        LDR.N    R1,??DataTable11_13  ;; 0x400ff014
        STR      R0,[R1, #+0]
//   43 }
        BX       LR               ;; return
//   44 
//   45 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   46 unsigned char u8_ExInterface0_get(void){return (GPIOA_PDIR >> 24) & 0x01;}
u8_ExInterface0_get:
        LDR.N    R0,??DataTable11_14  ;; 0x400ff010
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+24
        ANDS     R0,R0,#0x1
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   47 unsigned char u8_ExInterface1_get(void){return (GPIOA_PDIR >> 25) & 0x01;}
u8_ExInterface1_get:
        LDR.N    R0,??DataTable11_14  ;; 0x400ff010
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+25
        ANDS     R0,R0,#0x1
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   48 unsigned char u8_ExInterface2_get(void){return (GPIOA_PDIR >> 26) & 0x01;}
u8_ExInterface2_get:
        LDR.N    R0,??DataTable11_14  ;; 0x400ff010
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+26
        ANDS     R0,R0,#0x1
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   49 unsigned char u8_ExInterface3_get(void){return (GPIOA_PDIR >> 27) & 0x01;}
u8_ExInterface3_get:
        LDR.N    R0,??DataTable11_14  ;; 0x400ff010
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+27
        ANDS     R0,R0,#0x1
        BX       LR               ;; return
//   50 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   51 unsigned char u8_ExInterface4_get(void){return (GPIOA_PDIR >> 12) & 0x01;}
u8_ExInterface4_get:
        LDR.N    R0,??DataTable11_14  ;; 0x400ff010
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+12
        ANDS     R0,R0,#0x1
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   52 unsigned char u8_ExInterface5_get(void){return (GPIOA_PDIR >> 5) & 0x01;}
u8_ExInterface5_get:
        LDR.N    R0,??DataTable11_14  ;; 0x400ff010
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+5,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   53 unsigned char u8_ExInterface6_get(void){return (GPIOE_PDIR >> 24) & 0x01;}
u8_ExInterface6_get:
        LDR.N    R0,??DataTable11_15  ;; 0x400ff110
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+24
        ANDS     R0,R0,#0x1
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   54 unsigned char u8_ExInterface7_get(void){return (GPIOE_PDIR >> 25) & 0x01;}
u8_ExInterface7_get:
        LDR.N    R0,??DataTable11_15  ;; 0x400ff110
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+25
        ANDS     R0,R0,#0x1
        BX       LR               ;; return
//   55 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   56 unsigned char u8_ExInterface8_get(void){return (GPIOE_PDIR >> 26) & 0x01;}
u8_ExInterface8_get:
        LDR.N    R0,??DataTable11_15  ;; 0x400ff110
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+26
        ANDS     R0,R0,#0x1
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   57 unsigned char u8_ExInterface9_get(void){return (GPIOE_PDIR >> 27) & 0x01;}
u8_ExInterface9_get:
        LDR.N    R0,??DataTable11_15  ;; 0x400ff110
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+27
        ANDS     R0,R0,#0x1
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   58 unsigned char u8_ExInterface10_get(void){return (GPIOE_PDIR >> 28) & 0x01;}
u8_ExInterface10_get:
        LDR.N    R0,??DataTable11_15  ;; 0x400ff110
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+28
        ANDS     R0,R0,#0x1
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_1:
        DC32     0x4004d060

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_2:
        DC32     0x4004d064

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_3:
        DC32     0x4004d068

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_4:
        DC32     0x4004d06c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_5:
        DC32     0x4004d070

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_6:
        DC32     0x40049014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_7:
        DC32     0x40049060

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_8:
        DC32     0x40049064

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_9:
        DC32     0x40049068

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_10:
        DC32     0x4004906c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_11:
        DC32     0x40049030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_12:
        DC32     0x400ff114

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_13:
        DC32     0x400ff014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_14:
        DC32     0x400ff010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_15:
        DC32     0x400ff110

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//   59 
//   60 
//   61 
//   62 /*
//   63 //#define DE_BUTTON_TICK  13
//   64 Buttons g_Buttons;
//   65 ExInterfaces g_ExInterfaces;
//   66 */
//   67 /*
//   68 uint8 u8_Button_set(Message * _Message , Buttons * _Buttons , ExInterfaces * _ExInterfaces)
//   69 {
//   70     uint8 DownEventStart = 0;
//   71     uint8 DownButton = 0;
//   72     uint8 DownSwitch = 0;
//   73     if( ( 0 == Button1 ) && ( _Buttons->BottonTotaltime - _Buttons->Button1time > DE_BUTTON_TICK ) )
//   74     {
//   75         // ÊÂ¼þ³ÉÁ¢
//   76         DownButton |= 0x01;
//   77         DownEventStart = 1;
//   78         _Buttons->Button1time = _Buttons->BottonTotaltime;
//   79     }
//   80     if( ( 0 == Button2 ) && ( _Buttons->BottonTotaltime - _Buttons->Button2time > DE_BUTTON_TICK ) )
//   81     {
//   82         // ÊÂ¼þ³ÉÁ¢
//   83         DownButton |= 0x02;
//   84         DownEventStart = 1;
//   85         _Buttons->Button2time = _Buttons->BottonTotaltime;
//   86     }
//   87     if( ( 0 == Button3 ) && ( _Buttons->BottonTotaltime - _Buttons->Button3time > DE_BUTTON_TICK ) )
//   88     {
//   89         // ÊÂ¼þ³ÉÁ¢
//   90         DownButton |= 0x04;
//   91         DownEventStart = 1;
//   92         _Buttons->Button3time = _Buttons->BottonTotaltime;
//   93     }
//   94     if( ( 0 == Button4 ) && ( _Buttons->BottonTotaltime - _Buttons->Button4time > DE_BUTTON_TICK ) )
//   95     {
//   96         // ÊÂ¼þ³ÉÁ¢
//   97         DownButton |= 0x08;
//   98         DownEventStart = 1;
//   99         _Buttons->Button4time = _Buttons->BottonTotaltime;
//  100     }
//  101     if(1 == DownEventStart)
//  102     {
//  103         DownSwitch |= Switch1 << 0;
//  104         DownSwitch |= Switch2 << 1;
//  105         DownSwitch |= Switch3 << 2;
//  106         DownSwitch |= Switch4 << 3;
//  107         DownSwitch |= Switch5 << 4;
//  108         DownSwitch |= Switch6 << 5;
//  109         DownSwitch |= Switch7 << 6;
//  110         DownSwitch |= Switch8 << 7;
//  111         _ExInterfaces->ButtonsOn = DownButton;
//  112         _ExInterfaces->SwitchsOn = DownSwitch;
//  113         _Message->msgGaia = (void*)_ExInterfaces;
//  114         _Message->time = _Buttons->BottonTotaltime;
//  115         return 0;
//  116     }
//  117     return 1;
//  118 }
//  119 */
//  120 
//  121 /*
//  122 #define Accel_SPI_PTR           SPI1_BASE_PTR
//  123 uint8 b_Accel_DSPI_Init()
//  124 {
//  125     SIM_SCGC6 |= SIM_SCGC6_DSPI1_MASK; //
//  126     SIM_SCGC5 |= SIM_SCGC5_PORTE_MASK;
//  127     PORTE_BASE_PTR->PCR[0] = 0x00000200u; // 
//  128     PORTE_BASE_PTR->PCR[1] = 0x00000200u; // 
//  129     PORTE_BASE_PTR->PCR[2] = 0x00000200u; // 
//  130     PORTE_BASE_PTR->PCR[3] = 0x00000200u; // 
//  131     PORTE_BASE_PTR->PCR[4] = 0x00000200u; //
//  132     Accel_SPI_PTR->MCR |= SPI_MCR_HALT_MASK; // Í£Ö¹´«Êä
//  133     Accel_SPI_PTR->SR  = SPI_SR_EOQF_MASK | SPI_SR_TFUF_MASK | SPI_SR_TFFF_MASK
//  134                             | SPI_SR_RFOF_MASK | SPI_SR_RFDF_MASK; // ¼¯ÌåÇå¿Õ 
//  135     Accel_SPI_PTR->MCR = SPI_MCR_MSTR_MASK  | SPI_MCR_CLR_RXF_MASK | SPI_MCR_CLR_TXF_MASK | SPI_MCR_PCSIS(1) | SPI_MCR_PCSSE_SHIFT | SPI_MCR_CONT_SCKE_MASK
//  136                         | SPI_MCR_DIS_TXF_MASK | SPI_MCR_DIS_RXF_MASK | SPI_MCR_SMPL_PT(1);//SPI_MCR_PCSIS(1);
//  137                          //Ö÷»ú//½ÓÊÕÇå¿Õ//´«ÊäÇå¿Õ//Æ¬Ñ¡Î»ÖÃ
//  138     
//  139     Accel_SPI_PTR->CTAR[0] = SPI_CTAR_PBR(3) | SPI_CTAR_BR(5) | SPI_CTAR_CPOL_MASK | SPI_CTAR_CPHA_MASK// ·ÖÆµ
//  140                         | SPI_CTAR_FMSZ(7) ; // Î»Êý
//  141     Accel_SPI_PTR->MCR &=~SPI_MCR_HALT_MASK; // Ê¹ÄÜ´«Êä
//  142     
//  143     uint8 returnNum = 0;
//  144     if( 'F' == b_Accel_TxByte(0x80 | 0x0F,0)){return 'F';};
//  145     if( 'F' == b_Accel_RxByte(&returnNum)){return 'F';};
//  146     if(0xD7 != returnNum){return 'F';} // Ä¿±êÈ·ÈÏ
//  147     return 'T';
//  148 }
//  149 
//  150 uint8 b_Accel_RxByte(uint8 * returnNum)
//  151 {
//  152     uint8 time = 255;
//  153     while( !((Accel_SPI_PTR->SR) & SPI_SR_RFDF_MASK) )
//  154     {
//  155         if(!(time--)){return 'F';}  
//  156     }
//  157     *returnNum = (uint8)Accel_SPI_PTR->POPR;
//  158     Accel_SPI_PTR->SR |= SPI_SR_RFDF_MASK;
//  159     return 'T';
//  160 }
//  161 
//  162 uint8 b_Accel_TxByte(uint8 returnNum,uint8 coun)
//  163 {
//  164     uint8 time = 255;
//  165     do
//  166     {
//  167         Accel_SPI_PTR->SR  |= SPI_SR_EOQF_MASK | SPI_SR_TFUF_MASK | SPI_SR_TFFF_MASK
//  168                             | SPI_SR_RFOF_MASK | SPI_SR_RFDF_MASK;
//  169         Accel_SPI_PTR->MCR |= SPI_MCR_CLR_TXF_MASK | SPI_MCR_CLR_RXF_MASK;
//  170         if(!(time--)){return 'F';} 
//  171     } while( (Accel_SPI_PTR->SR) & SPI_SR_RFDF_MASK );
//  172     // ·¢ËÍÊý¾Ý
//  173     Accel_SPI_PTR->PUSHR = ( 0
//  174                                  | SPI_PUSHR_CTAS(0)                 //Ñ¡ÔñCTAR0¼Ä´æÆ÷
//  175                                  | SPI_PUSHR_PCS(1)
//  176                                  | (coun << SPI_PUSHR_EOQ_SHIFT)                //1Îª ´«ÊäSPI×îºóµÄÊý¾Ý
//  177                                  | SPI_PUSHR_TXDATA( returnNum )
//  178                                  );
//  179     //time = 255;
//  180     //while(  (Accel_SPI_PTR->SR & SPI_SR_EOQF_MASK ) == 0 )       //µÈ´ý´«ÊäÍê³É
//  181     //{
//  182     //    if(!(time--)){return 'F';}
//  183     //}
//  184     return 'T';
//  185 }
//  186 */
//  187 
//  188 //#undef DE_BUTTON_TICK 
//  189 
//  190 /*
//  191 
//  192             if(now_width * 3 <= m_ImageAbstract.width[y_ctr])//´Ë´Î¼´ÈÏ¶¨ÎªºÏÊÊµÄ
//  193             {//ÖÁ´Ë£¬ÎÒÃÇÓ¦¸ÃÑ¡ÔñÒ»¸öºÜºÃµÄ·½Ê½È¥ºöÂÔÏàÓ¦µÄºÚÉ«ÇøÓò
//  194                 //ÎÒÃÇÊÇ·ñÓ¦¸Ã¶à´ÎÑ­¼£»¹ÊÇËµÕÒ¸ö¸ü·½±ãµÄ·½·¨
//  195                 //Èç¹ûÊÇ×ó¹Õ£¬ÎÒÃÇÓ¦¸Ã¼ÌÐø×ó¹Õ<=³¤Ð±ÈëºÚÏßÕÏ°­
//  196                 //Èç¹ûÊÇ×ó¹Õ£¬ÎÒÃÇÓ¦¸Ã¸ü×ó¹Õ£¿=>ÊÇ·ñµ¼ÖÂÇ¿ÁÒµÄ¹ÕÍä£¿<=Ð¨ÐÎÂ·ÕÏ
//  197                 //¼òµ¥µÄ·½·¨=>¼ÌÐøÏàÓ¦Ñ°Ïß=>ÕæÊµµ°ÌÛµÄ¹ÊÊÂ=>¸ù¾Ýµ±Ç°¿í¶È½øÐÐÆ¥Åä
//  198                 do//½øÐÐ¶àÓàµÄÑ­¼£
//  199                 {
//  200                     uint8 left_pluto_Pos = 255;
//  201                     for (sint16 LINE_CTR = number_Trk.n_left_end;//´Ë²½ÎªÑ°ÕÒ×óÏß
//  202                         LINE_CTR - constn_xFindJumpLine_Width >= constn_xFindJumpLine_Width;//ÏÞÖÆ·ù¶ÈÎª×î×ó
//  203                         LINE_CTR--)
//  204                     {
//  205                         sint16 n_jumpVar = m_ImageBeholder_Data[y_ctr][LINE_CTR]//»ñÈ¡ºÏÊÊµÄÌø±äÖµ
//  206                                          - m_ImageBeholder_Data[y_ctr][LINE_CTR - constn_xFindJumpLine_Width];
//  207                         sint16 absn_jumpVar = __ABS(n_jumpVar);//»ñÈ¡¾ø¶ÔÖµ
//  208                         if ((absn_jumpVar > perLine_JumpNumVaild) && (absn_jumpVar > perLine_JumpNumNonVaild)
//  209                         && (n_jumpVar > 0)){left_pluto_Pos = LINE_CTR;break;}//=>Ñ°ÕÒµ½ÏÂÒ»¸ö±ßÑØ
//  210                     }//×óÏßËÑÑ°Íê±Ï
//  211                     uint8 right_pluto_Pos = 255;
//  212                     for (sint16 LINE_CTR = number_Trk.n_right_end;//´Ë²½ÎªÑ°ÕÒÓÒÏß
//  213                         LINE_CTR + constn_xFindJumpLine_Width < constNum_X_MaxCounter - constn_xFindJumpLine_Width;//ÏÞÖÆ·ù¶ÈÎª×îÓÒ
//  214                         LINE_CTR++)//ÏòÓÒÌáÏß
//  215                     {
//  216                         sint16 n_jumpVar = m_ImageBeholder_Data[y_ctr][LINE_CTR]//»ñÈ¡ºÏÊÊµÄÌø±äÖµ
//  217                                          - m_ImageBeholder_Data[y_ctr][LINE_CTR + constn_xFindJumpLine_Width];
//  218                         sint16 absn_jumpVar = __ABS(n_jumpVar);//»ñÈ¡¾ø¶ÔÖµ
//  219                         if ((absn_jumpVar > perLine_JumpNumVaild) && (absn_jumpVar > perLine_JumpNumNonVaild)
//  220                          && (n_jumpVar > 0)){right_pluto_Pos = LINE_CTR;break;}//Ìø³ö±¾Ñ­»·
//  221                     }//ÓÒÏßËÑÑ°Íê±Ï
//  222                     
//  223                     //´æÔÚÈýÖÖ¿í¶È=>ÒÔÏÂÐèÒªÔÙ´Î¿¼ÂÇ
//  224                     //×óºÏÊÊÓÒºÏÊÊ
//  225                     //×ó¼«ÏÞÓÒºÏÊÊ
//  226                     //×óºÏÊÊÓÒ¼«ÏÞ
//  227                     //×ó¼«ÏÞÓÒ¼«ÏÞ => Ò»°ã²»¿¼ÂÇ
//  228                     
//  229                     uint8 width_Left_Pluto = 0;
//  230                     uint8 width_right_Pluto = 0;
//  231                     
//  232                     uint8 temp_cut_var[3] = {0,0,0};//ÈýÖÖ²îÖµ
//  233                     temp_cut_var[0] = __ABS(now_width - m_ImageAbstract.width[y_ctr]);
//  234                     
//  235                     if(255 != left_pluto_Pos)
//  236                     {width_Left_Pluto = number_Trk.n_right_end - left_pluto_Pos;
//  237                     temp_cut_var[1] = __ABS(width_Left_Pluto - m_ImageAbstract.width[y_ctr]);}
//  238                     else{temp_cut_var[1] = 255;}
//  239                     
//  240                     if(255 != right_pluto_Pos)
//  241                     {width_right_Pluto = right_pluto_Pos - number_Trk.n_left_end;
//  242                     temp_cut_var[2] = __ABS(width_right_Pluto - m_ImageAbstract.width[y_ctr]);}
//  243                     else{temp_cut_var[2] = 255;}
//  244                     //ÒÔÉÏÎª¿í¶ÈËÑË÷
//  245                     uint8 min = 255;uint8 mark = 0;
//  246                     for(uint8 loop = 0;loop < 3;loop++)
//  247                     {
//  248                         if(min > temp_cut_var[loop]){min = temp_cut_var[loop];mark = loop;}
//  249                     }
//  250                     if(255 != min)
//  251                     {
//  252                         if(1 == mark){number_Trk.n_left_end = left_pluto_Pos;}
//  253                         if(2 == mark){number_Trk.n_right_end = width_right_Pluto;}
//  254                     }
//  255                 }while(0);//ÖÁ´Ë£¬ÌØÊâ´¦ÀíÍê±Ï
//  256                 
//  257             }
//  258 */
//  259 
//  260 
//  261     /*
//  262     if(__ABS(process_find_timer - lostDouble_AllCounter) <= 1)
//  263     {
//  264         m_Control.need_Hold = 1;
//  265     }
//  266     */
//  267     /*
//  268     if(all_height_Y_last_cut_first < 20)//Ð¡ÓÚ´ËÊ±½«½øÈëÅÐ¶¨
//  269     {
//  270         uint8 last = (all_height_Y_last_cut_first > 30)?30:all_height_Y_last_cut_first;
//  271         uint8 left_counter = 0;
//  272         uint8 right_counter = 0;
//  273         for(uint8 loop = m_ImageAbstract.Start_Y_Position;//ÕûÌåÑ­»·
//  274                   loop < last + m_ImageAbstract.Start_Y_Position;
//  275                   loop ++)
//  276         {
//  277             if(255 == m_ImageAbstract.Left[loop]){left_counter++;}
//  278             if(255 == m_ImageAbstract.Right[loop]){right_counter++;}
//  279         }
//  280         if(((left_counter > all_height_Y_last_cut_first/2)
//  281           &&(right_counter > all_height_Y_last_cut_first/2))
//  282          ||(all_height_Y_last_cut_first < 10))
//  283         {
//  284             m_Control.need_Hold = 1;
//  285         }
//  286         else
//  287         {
//  288             
//  289             if(left_counter > all_height_Y_last_cut_first/2)
//  290             {
//  291                 m_Control.need_TurnLeft = 1;
//  292             }
//  293             if(right_counter > all_height_Y_last_cut_first/2)
//  294             {
//  295                 m_Control.need_TurnRight = 1;
//  296             }
//  297             
//  298         }
//  299     }
//  300     */
//  301     /*
//  302     do//ÖØÐÂÈ«²¿¹ÜÀíÊý¾Ý
//  303     {
//  304         sint16 all_height_Y_last_cut_first = m_ImageAbstract.Last_Y_Position - m_ImageAbstract.Start_Y_Position;
//  305         if(all_height_Y_last_cut_first < 25)//±È30ÒªÐ¡//Magic Number
//  306         {
//  307             float cutVar = 0; //30 - all_height_Y_last_cut_first;
//  308             for(uint8 loop = 0;loop < all_height_Y_last_cut_first;loop++)
//  309             {
//  310                 uint8 Mark = m_ImageAbstract.Start_Y_Position + loop;
//  311                 sint16 Central_Pos = 0;
//  312                 do//¶îÍâËÑÏß
//  313                 {
//  314                     
//  315                 }while(0);
//  316                 
//  317                 if(255 == m_ImageAbstract.Left[Mark])
//  318                 {
//  319                     if(255 == m_ImageAbstract.Right[Mark])
//  320                     {
//  321                         if(Mark > m_ImageAbstract.Start_Y_Position)
//  322                         {Central_Pos = m_ImageAbstract.Central[Mark - 1];}
//  323                         else
//  324                         {Central_Pos = m_ImageAbstract.LastFrame_CentralPos;}
//  325                     }
//  326                     else//(255 != m_ImageAbstract.Right[Mark])
//  327                     {
//  328                         Central_Pos = (sint16)
//  329                       ((m_ImageAbstract.Right[Mark] + constn_xFindJumpLine_Width)/2 - 3 * cutVar);
//  330                     }
//  331                 }
//  332                 else//255 != m_ImageAbstract.Left[Mark]
//  333                 {
//  334                     if(255 == m_ImageAbstract.Right[Mark])
//  335                     {
//  336                         Central_Pos = (sint16)
//  337                       ((m_ImageAbstract.Left[Mark] + constNum_X_MaxCounter - constn_xFindJumpLine_Width)/2 + 2 * cutVar);
//  338                     }
//  339                     else//(255 != m_ImageAbstract.Right[Mark])
//  340                     {//²»ÓÃ¹Ü
//  341                     }
//  342                 }//
//  343                 cutVar += 30.f / all_height_Y_last_cut_first;
//  344                 if(Central_Pos < constn_xFindJumpLine_Width){Central_Pos = constn_xFindJumpLine_Width;}
//  345                 if(Central_Pos > constNum_X_MaxCounter - constn_xFindJumpLine_Width)
//  346                 {Central_Pos = constNum_X_MaxCounter - constn_xFindJumpLine_Width;}
//  347                 m_ImageAbstract.Central[Mark] = Central_Pos;
//  348                 
//  349                 if(m_ImageAbstract.Central[Mark] > constNum_X_MaxCounter - constn_xFindJumpLine_Width * 2)
//  350                 {m_ImageAbstract.Central[Mark] = constNum_X_MaxCounter - constn_xFindJumpLine_Width * 2;}//ÏÞ·ùÒÖÖÆÐÅÏ¢
//  351                 if(m_ImageAbstract.Central[Mark] < constn_xFindJumpLine_Width * 2)
//  352                 {m_ImageAbstract.Central[Mark] = constn_xFindJumpLine_Width * 2;}
//  353             }
//  354         }
//  355     }while(0);
//  356     */
// 
//  32 bytes in section .bss
// 474 bytes in section .text
// 
// 474 bytes of CODE memory
//  32 bytes of DATA memory
//
//Errors: none
//Warnings: none
