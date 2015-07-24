///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     26/Nov/2014  20:35:18 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\MK60FX512VLQ15 /
//                    \ShunAn_Panel\ExInterface.c                             /
//    Command line =  D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\MK60FX512VLQ15 /
//                    \ShunAn_Panel\ExInterface.c -D IAR -D TWR_K60F120M      /
//                    -lCN D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\MK60FX512 /
//                    VLQ15\FLASH_1MB\List\ -lB D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³ /
//                    °µÈýºÅ\´úÂë\MK60FX512VLQ15\FLASH_1MB\List\ -o           /
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
//                    \FLASH_1MB\List\ExInterface.s                           /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        PUBLIC g_Buttons
        PUBLIC g_ExInterfaces
        PUBLIC u8_Button1get
        PUBLIC u8_Button2get
        PUBLIC u8_Button3get
        PUBLIC u8_Button4get
        PUBLIC u8_Button_set
        PUBLIC u8_Switch1get
        PUBLIC u8_Switch2get
        PUBLIC u8_Switch3get
        PUBLIC u8_Switch4get
        PUBLIC u8_Switch5get
        PUBLIC u8_Switch6get
        PUBLIC u8_Switch7get
        PUBLIC u8_Switch8get
        PUBLIC v_Init_ExInterface

// D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\MK60FX512VLQ15\ShunAn_Panel\ExInterface.c
//    1 #include "MK60F15.h"
//    2 #include "ShunAn_Lib.h"
//    3 #include "start_ShunAn.h"
//    4 #include "BlessedAlien.h"
//    5 
//    6 #include "ControlPads.h"
//    7 #include "ExInterface.h"
//    8 
//    9 #define Button1 (u8_Button1get())
//   10 #define Button2 (u8_Button2get())
//   11 #define Button3 (u8_Button3get())
//   12 #define Button4 (u8_Button4get())
//   13 
//   14 #define Switch1 (u8_Switch1get())
//   15 #define Switch2 (u8_Switch2get())
//   16 #define Switch3 (u8_Switch3get())
//   17 #define Switch4 (u8_Switch4get())
//   18 #define Switch5 (u8_Switch5get())
//   19 #define Switch6 (u8_Switch6get())
//   20 #define Switch7 (u8_Switch7get())
//   21 #define Switch8 (u8_Switch8get())
//   22 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   23 void v_Init_ExInterface ( void )
//   24 {
//   25     // ³õÊ¼»¯²¦Âë¿ª¹Ø / °´¼ü
//   26     SIM_SCGC5 |= (SIM_SCGC5_PORTA_MASK|SIM_SCGC5_PORTB_MASK);//Ê¹ÄÜPORTA¡¢BÊ±ÖÓ
v_Init_ExInterface:
        LDR.N    R0,??DataTable12  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x600
        LDR.N    R1,??DataTable12  ;; 0x40048038
        STR      R0,[R1, #+0]
//   27     PORTA_PCR24 |= 0x00000100u;//Òý½Å¸´ÓÃÑ¡ÔñÆÕÍ¨IO(²¦Âë¿ª¹Ø1)
        LDR.N    R0,??DataTable12_1  ;; 0x40049060
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.N    R1,??DataTable12_1  ;; 0x40049060
        STR      R0,[R1, #+0]
//   28     PORTA_PCR25 |= 0x00000100u;//Òý½Å¸´ÓÃÑ¡ÔñÆÕÍ¨IO(²¦Âë¿ª¹Ø2)
        LDR.N    R0,??DataTable12_2  ;; 0x40049064
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.N    R1,??DataTable12_2  ;; 0x40049064
        STR      R0,[R1, #+0]
//   29     PORTA_PCR26 |= 0x00000100u;//Òý½Å¸´ÓÃÑ¡ÔñÆÕÍ¨IO(²¦Âë¿ª¹Ø3)
        LDR.N    R0,??DataTable12_3  ;; 0x40049068
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.N    R1,??DataTable12_3  ;; 0x40049068
        STR      R0,[R1, #+0]
//   30     PORTA_PCR27 |= 0x00000100u;//Òý½Å¸´ÓÃÑ¡ÔñÆÕÍ¨IO(²¦Âë¿ª¹Ø4)
        LDR.N    R0,??DataTable12_4  ;; 0x4004906c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.N    R1,??DataTable12_4  ;; 0x4004906c
        STR      R0,[R1, #+0]
//   31     PORTA_PCR28 |= 0x00000100u;//Òý½Å¸´ÓÃÑ¡ÔñÆÕÍ¨IO(²¦Âë¿ª¹Ø5)
        LDR.N    R0,??DataTable12_5  ;; 0x40049070
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.N    R1,??DataTable12_5  ;; 0x40049070
        STR      R0,[R1, #+0]
//   32     PORTA_PCR29 |= 0x00000100u;//Òý½Å¸´ÓÃÑ¡ÔñÆÕÍ¨IO(²¦Âë¿ª¹Ø6)
        LDR.N    R0,??DataTable12_6  ;; 0x40049074
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.N    R1,??DataTable12_6  ;; 0x40049074
        STR      R0,[R1, #+0]
//   33     PORTB_PCR0  |= 0x00000100u;//Òý½Å¸´ÓÃÑ¡ÔñÆÕÍ¨IO(²¦Âë¿ª¹Ø7)
        LDR.N    R0,??DataTable12_7  ;; 0x4004a000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.N    R1,??DataTable12_7  ;; 0x4004a000
        STR      R0,[R1, #+0]
//   34     PORTB_PCR1  |= 0x00000100u;//Òý½Å¸´ÓÃÑ¡ÔñÆÕÍ¨IO(²¦Âë¿ª¹Ø8)
        LDR.N    R0,??DataTable12_8  ;; 0x4004a004
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.N    R1,??DataTable12_8  ;; 0x4004a004
        STR      R0,[R1, #+0]
//   35     GPIOA_PDDR &= ~(1<<24);//Òý½ÅÑ¡ÔñÊäÈë·½Ïò(²¦Âë¿ª¹Ø1)
        LDR.N    R0,??DataTable12_9  ;; 0x400ff014
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x1000000
        LDR.N    R1,??DataTable12_9  ;; 0x400ff014
        STR      R0,[R1, #+0]
//   36     GPIOA_PDDR &= ~(1<<25);//Òý½ÅÑ¡ÔñÊäÈë·½Ïò(²¦Âë¿ª¹Ø2)
        LDR.N    R0,??DataTable12_9  ;; 0x400ff014
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x2000000
        LDR.N    R1,??DataTable12_9  ;; 0x400ff014
        STR      R0,[R1, #+0]
//   37     GPIOA_PDDR &= ~(1<<26);//Òý½ÅÑ¡ÔñÊäÈë·½Ïò(²¦Âë¿ª¹Ø3)
        LDR.N    R0,??DataTable12_9  ;; 0x400ff014
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x4000000
        LDR.N    R1,??DataTable12_9  ;; 0x400ff014
        STR      R0,[R1, #+0]
//   38     GPIOA_PDDR &= ~(1<<27);//Òý½ÅÑ¡ÔñÊäÈë·½Ïò(²¦Âë¿ª¹Ø4)
        LDR.N    R0,??DataTable12_9  ;; 0x400ff014
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x8000000
        LDR.N    R1,??DataTable12_9  ;; 0x400ff014
        STR      R0,[R1, #+0]
//   39     GPIOA_PDDR &= ~(1<<28);//Òý½ÅÑ¡ÔñÊäÈë·½Ïò(²¦Âë¿ª¹Ø5)
        LDR.N    R0,??DataTable12_9  ;; 0x400ff014
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x10000000
        LDR.N    R1,??DataTable12_9  ;; 0x400ff014
        STR      R0,[R1, #+0]
//   40     GPIOA_PDDR &= ~(1<<29);//Òý½ÅÑ¡ÔñÊäÈë·½Ïò(²¦Âë¿ª¹Ø6)
        LDR.N    R0,??DataTable12_9  ;; 0x400ff014
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x20000000
        LDR.N    R1,??DataTable12_9  ;; 0x400ff014
        STR      R0,[R1, #+0]
//   41     GPIOB_PDDR &= ~(1<<0);//Òý½ÅÑ¡ÔñÊäÈë·½Ïò(²¦Âë¿ª¹Ø7)
        LDR.N    R0,??DataTable12_10  ;; 0x400ff054
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.N    R1,??DataTable12_10  ;; 0x400ff054
        STR      R0,[R1, #+0]
//   42     GPIOB_PDDR &= ~(1<<1);//Òý½ÅÑ¡ÔñÊäÈë·½Ïò(²¦Âë¿ª¹Ø8)
        LDR.N    R0,??DataTable12_10  ;; 0x400ff054
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x2
        LDR.N    R1,??DataTable12_10  ;; 0x400ff054
        STR      R0,[R1, #+0]
//   43     /* °´¼üÅäÖÃ */
//   44     PORTB_PCR2 |= 0x00000100u;//Òý½Å¸´ÓÃÑ¡ÔñÆÕÍ¨IO(°´¼ü1)
        LDR.N    R0,??DataTable12_11  ;; 0x4004a008
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.N    R1,??DataTable12_11  ;; 0x4004a008
        STR      R0,[R1, #+0]
//   45     PORTB_PCR3 |= 0x00000100u;//Òý½Å¸´ÓÃÑ¡ÔñÆÕÍ¨IO(°´¼ü2)
        LDR.N    R0,??DataTable12_12  ;; 0x4004a00c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.N    R1,??DataTable12_12  ;; 0x4004a00c
        STR      R0,[R1, #+0]
//   46     PORTB_PCR4 |= 0x00000100u;//Òý½Å¸´ÓÃÑ¡ÔñÆÕÍ¨IO(°´¼ü3)
        LDR.N    R0,??DataTable12_13  ;; 0x4004a010
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.N    R1,??DataTable12_13  ;; 0x4004a010
        STR      R0,[R1, #+0]
//   47     PORTB_PCR5 |= 0x00000100u;//Òý½Å¸´ÓÃÑ¡ÔñÆÕÍ¨IO(°´¼ü4)
        LDR.N    R0,??DataTable12_14  ;; 0x4004a014
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.N    R1,??DataTable12_14  ;; 0x4004a014
        STR      R0,[R1, #+0]
//   48     GPIOB_PDDR &= ~(1<<2);//Òý½ÅÑ¡ÔñÊäÈë·½Ïò(°´¼ü1)
        LDR.N    R0,??DataTable12_10  ;; 0x400ff054
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x4
        LDR.N    R1,??DataTable12_10  ;; 0x400ff054
        STR      R0,[R1, #+0]
//   49     GPIOB_PDDR &= ~(1<<3);//Òý½ÅÑ¡ÔñÊäÈë·½Ïò(°´¼ü2)
        LDR.N    R0,??DataTable12_10  ;; 0x400ff054
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x8
        LDR.N    R1,??DataTable12_10  ;; 0x400ff054
        STR      R0,[R1, #+0]
//   50     GPIOB_PDDR &= ~(1<<4);//Òý½ÅÑ¡ÔñÊäÈë·½Ïò(°´¼ü3)
        LDR.N    R0,??DataTable12_10  ;; 0x400ff054
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x10
        LDR.N    R1,??DataTable12_10  ;; 0x400ff054
        STR      R0,[R1, #+0]
//   51     GPIOB_PDDR &= ~(1<<5);//Òý½ÅÑ¡ÔñÊäÈë·½Ïò(°´¼ü4)
        LDR.N    R0,??DataTable12_10  ;; 0x400ff054
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x20
        LDR.N    R1,??DataTable12_10  ;; 0x400ff054
        STR      R0,[R1, #+0]
//   52 }
        BX       LR               ;; return
//   53 
//   54 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   55 unsigned char u8_Switch1get(void){return (GPIOA_PDIR >> 24) & 0x01;}
u8_Switch1get:
        LDR.N    R0,??DataTable12_15  ;; 0x400ff010
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+24
        ANDS     R0,R0,#0x1
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   56 unsigned char u8_Switch2get(void){return (GPIOA_PDIR >> 25) & 0x01;}
u8_Switch2get:
        LDR.N    R0,??DataTable12_15  ;; 0x400ff010
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+25
        ANDS     R0,R0,#0x1
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   57 unsigned char u8_Switch3get(void){return (GPIOA_PDIR >> 26) & 0x01;}
u8_Switch3get:
        LDR.N    R0,??DataTable12_15  ;; 0x400ff010
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+26
        ANDS     R0,R0,#0x1
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   58 unsigned char u8_Switch4get(void){return (GPIOA_PDIR >> 27) & 0x01;}
u8_Switch4get:
        LDR.N    R0,??DataTable12_15  ;; 0x400ff010
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+27
        ANDS     R0,R0,#0x1
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   59 unsigned char u8_Switch5get(void){return (GPIOA_PDIR >> 28) & 0x01;}
u8_Switch5get:
        LDR.N    R0,??DataTable12_15  ;; 0x400ff010
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+28
        ANDS     R0,R0,#0x1
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   60 unsigned char u8_Switch6get(void){return (GPIOA_PDIR >> 29) & 0x01;}
u8_Switch6get:
        LDR.N    R0,??DataTable12_15  ;; 0x400ff010
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+29
        ANDS     R0,R0,#0x1
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   61 unsigned char u8_Switch7get(void){return (GPIOB_PDIR >> 0) & 0x01;}
u8_Switch7get:
        LDR.N    R0,??DataTable12_16  ;; 0x400ff050
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x1
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   62 unsigned char u8_Switch8get(void){return (GPIOB_PDIR >> 1) & 0x01;}
u8_Switch8get:
        LDR.N    R0,??DataTable12_16  ;; 0x400ff050
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+1,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
//   63 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   64 unsigned char u8_Button1get(void){return (GPIOB_PDIR >> 2) & 0x01;}
u8_Button1get:
        LDR.N    R0,??DataTable12_16  ;; 0x400ff050
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+2,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   65 unsigned char u8_Button2get(void){return (GPIOB_PDIR >> 3) & 0x01;}
u8_Button2get:
        LDR.N    R0,??DataTable12_16  ;; 0x400ff050
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+3,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   66 unsigned char u8_Button3get(void){return (GPIOB_PDIR >> 4) & 0x01;}
u8_Button3get:
        LDR.N    R0,??DataTable12_16  ;; 0x400ff050
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+4,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   67 unsigned char u8_Button4get(void){return (GPIOB_PDIR >> 5) & 0x01;}
u8_Button4get:
        LDR.N    R0,??DataTable12_16  ;; 0x400ff050
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+5,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_1:
        DC32     0x40049060

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_2:
        DC32     0x40049064

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_3:
        DC32     0x40049068

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_4:
        DC32     0x4004906c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_5:
        DC32     0x40049070

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_6:
        DC32     0x40049074

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_7:
        DC32     0x4004a000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_8:
        DC32     0x4004a004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_9:
        DC32     0x400ff014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_10:
        DC32     0x400ff054

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_11:
        DC32     0x4004a008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_12:
        DC32     0x4004a00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_13:
        DC32     0x4004a010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_14:
        DC32     0x4004a014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_15:
        DC32     0x400ff010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_16:
        DC32     0x400ff050
//   68 
//   69 #define DE_BUTTON_TICK  13

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   70 Buttons g_Buttons;
g_Buttons:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   71 ExInterfaces g_ExInterfaces;
g_ExInterfaces:
        DS8 4
//   72 
//   73 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   74 uint8 u8_Button_set(Message * _Message , Buttons * _Buttons , ExInterfaces * _ExInterfaces)
//   75 {
u8_Button_set:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//   76     uint8 DownEventStart = 0;
        MOVS     R7,#+0
//   77     uint8 DownButton = 0;
        MOVS     R8,#+0
//   78     uint8 DownSwitch = 0;
        MOVS     R9,#+0
//   79     if( ( 0 == Button1 ) && ( _Buttons->BottonTotaltime - _Buttons->Button1time > DE_BUTTON_TICK ) )
        BL       u8_Button1get
        CMP      R0,#+0
        BNE.N    ??u8_Button_set_0
        LDR      R0,[R5, #+0]
        LDR      R1,[R5, #+4]
        SUBS     R0,R0,R1
        CMP      R0,#+14
        BCC.N    ??u8_Button_set_0
//   80     {
//   81         // ÊÂ¼þ³ÉÁ¢
//   82         DownButton |= 0x01;
        ORRS     R8,R8,#0x1
//   83         DownEventStart = 1;
        MOVS     R7,#+1
//   84         _Buttons->Button1time = _Buttons->BottonTotaltime;
        LDR      R0,[R5, #+0]
        STR      R0,[R5, #+4]
//   85     }
//   86     if( ( 0 == Button2 ) && ( _Buttons->BottonTotaltime - _Buttons->Button2time > DE_BUTTON_TICK ) )
??u8_Button_set_0:
        BL       u8_Button2get
        CMP      R0,#+0
        BNE.N    ??u8_Button_set_1
        LDR      R0,[R5, #+0]
        LDR      R1,[R5, #+8]
        SUBS     R0,R0,R1
        CMP      R0,#+14
        BCC.N    ??u8_Button_set_1
//   87     {
//   88         // ÊÂ¼þ³ÉÁ¢
//   89         DownButton |= 0x02;
        ORRS     R8,R8,#0x2
//   90         DownEventStart = 1;
        MOVS     R7,#+1
//   91         _Buttons->Button2time = _Buttons->BottonTotaltime;
        LDR      R0,[R5, #+0]
        STR      R0,[R5, #+8]
//   92     }
//   93     if( ( 0 == Button3 ) && ( _Buttons->BottonTotaltime - _Buttons->Button3time > DE_BUTTON_TICK ) )
??u8_Button_set_1:
        BL       u8_Button3get
        CMP      R0,#+0
        BNE.N    ??u8_Button_set_2
        LDR      R0,[R5, #+0]
        LDR      R1,[R5, #+12]
        SUBS     R0,R0,R1
        CMP      R0,#+14
        BCC.N    ??u8_Button_set_2
//   94     {
//   95         // ÊÂ¼þ³ÉÁ¢
//   96         DownButton |= 0x04;
        ORRS     R8,R8,#0x4
//   97         DownEventStart = 1;
        MOVS     R7,#+1
//   98         _Buttons->Button3time = _Buttons->BottonTotaltime;
        LDR      R0,[R5, #+0]
        STR      R0,[R5, #+12]
//   99     }
//  100     if( ( 0 == Button4 ) && ( _Buttons->BottonTotaltime - _Buttons->Button4time > DE_BUTTON_TICK ) )
??u8_Button_set_2:
        BL       u8_Button4get
        CMP      R0,#+0
        BNE.N    ??u8_Button_set_3
        LDR      R0,[R5, #+0]
        LDR      R1,[R5, #+16]
        SUBS     R0,R0,R1
        CMP      R0,#+14
        BCC.N    ??u8_Button_set_3
//  101     {
//  102         // ÊÂ¼þ³ÉÁ¢
//  103         DownButton |= 0x08;
        ORRS     R8,R8,#0x8
//  104         DownEventStart = 1;
        MOVS     R7,#+1
//  105         _Buttons->Button4time = _Buttons->BottonTotaltime;
        LDR      R0,[R5, #+0]
        STR      R0,[R5, #+16]
//  106     }
//  107     if(1 == DownEventStart)
??u8_Button_set_3:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+1
        BNE.N    ??u8_Button_set_4
//  108     {
//  109         DownSwitch |= Switch1 << 0;
        BL       u8_Switch1get
        ORRS     R9,R0,R9
//  110         DownSwitch |= Switch2 << 1;
        BL       u8_Switch2get
        ORRS     R9,R9,R0, LSL #+1
//  111         DownSwitch |= Switch3 << 2;
        BL       u8_Switch3get
        ORRS     R9,R9,R0, LSL #+2
//  112         DownSwitch |= Switch4 << 3;
        BL       u8_Switch4get
        ORRS     R9,R9,R0, LSL #+3
//  113         DownSwitch |= Switch5 << 4;
        BL       u8_Switch5get
        ORRS     R9,R9,R0, LSL #+4
//  114         DownSwitch |= Switch6 << 5;
        BL       u8_Switch6get
        ORRS     R9,R9,R0, LSL #+5
//  115         DownSwitch |= Switch7 << 6;
        BL       u8_Switch7get
        ORRS     R9,R9,R0, LSL #+6
//  116         DownSwitch |= Switch8 << 7;
        BL       u8_Switch8get
        ORRS     R9,R9,R0, LSL #+7
//  117         _ExInterfaces->ButtonsOn = DownButton;
        STRB     R8,[R6, #+0]
//  118         _ExInterfaces->SwitchsOn = DownSwitch;
        STRB     R9,[R6, #+1]
//  119         _Message->msgGaia = (void*)_ExInterfaces;
        STR      R6,[R4, #+0]
//  120         _Message->time = _Buttons->BottonTotaltime;
        LDR      R0,[R5, #+0]
        STR      R0,[R4, #+8]
//  121         return 0;
        MOVS     R0,#+0
        B.N      ??u8_Button_set_5
//  122     }
//  123     return 1;
??u8_Button_set_4:
        MOVS     R0,#+1
??u8_Button_set_5:
        POP      {R1,R4-R9,PC}    ;; return
//  124 }

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  125 
//  126 #undef DE_BUTTON_TICK 
// 
//  24 bytes in section .bss
// 738 bytes in section .text
// 
// 738 bytes of CODE memory
//  24 bytes of DATA memory
//
//Errors: none
//Warnings: none
