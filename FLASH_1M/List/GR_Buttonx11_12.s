///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     16/Aug/2014  22:11:11 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\pc\Desktop\¼ÌÐø×öµÄÊÂÇé\ËÄÐýÒí·ÉÐÐÆ÷ -         /
//                    TM4123G\´úÂë\Ò£¿ØÆ÷\ShunAn2\GR_Buttonx11_12.c           /
//    Command line =  "C:\Users\pc\Desktop\¼ÌÐø×öµÄÊÂÇé\ËÄÐýÒí·ÉÐÐÆ÷ -        /
//                    TM4123G\´úÂë\Ò£¿ØÆ÷\ShunAn2\GR_Buttonx11_12.c" -D IAR   /
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
//                    TM4123G\´úÂë\Ò£¿ØÆ÷\FLASH_1M\List\GR_Buttonx11_12.s     /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN g_Control

        PUBLIC InitButton
        PUBLIC g_Buttons
        PUBLIC u8_Button1get
        PUBLIC u8_Button2get
        PUBLIC u8_Button3get
        PUBLIC u8_Button4get
        PUBLIC u8_Switch1get
        PUBLIC u8_Switch2get
        PUBLIC u8_Switch3get
        PUBLIC u8_Switch4get
        PUBLIC u8_Switch5get
        PUBLIC u8_Switch6get
        PUBLIC u8_Switch7get
        PUBLIC u8_Switch8get
        PUBLIC v_Button_set

// C:\Users\pc\Desktop\¼ÌÐø×öµÄÊÂÇé\ËÄÐýÒí·ÉÐÐÆ÷ - TM4123G\´úÂë\Ò£¿ØÆ÷\ShunAn2\GR_Buttonx11_12.c
//    1 #include "GR_Buttonx11_12.h"
//    2 //#include "GR_OLEDx11_12.h"
//    3 #include "GR_ControlPads.h"
//    4 //#include "GR_Bluetoothx11_12.h"
//    5 #include "MK60F15.h"
//    6 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    7 Buttons g_Buttons;
g_Buttons:
        DS8 20
//    8 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    9 void InitButton(void)
//   10 {
//   11   SIM_SCGC5 |= (SIM_SCGC5_PORTA_MASK|SIM_SCGC5_PORTB_MASK);//Ê¹ÄÜPORTA¡¢BÊ±ÖÓ 
InitButton:
        LDR.N    R0,??DataTable13  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x600
        LDR.N    R1,??DataTable13  ;; 0x40048038
        STR      R0,[R1, #+0]
//   12   
//   13   PORTA_PCR24 |= 0x00000100u;//Òý½Å¸´ÓÃÑ¡ÔñÆÕÍ¨IO(²¦Âë¿ª¹Ø1)
        LDR.N    R0,??DataTable13_1  ;; 0x40049060
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.N    R1,??DataTable13_1  ;; 0x40049060
        STR      R0,[R1, #+0]
//   14   PORTA_PCR25 |= 0x00000100u;//Òý½Å¸´ÓÃÑ¡ÔñÆÕÍ¨IO(²¦Âë¿ª¹Ø2)
        LDR.N    R0,??DataTable13_2  ;; 0x40049064
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.N    R1,??DataTable13_2  ;; 0x40049064
        STR      R0,[R1, #+0]
//   15   PORTA_PCR26 |= 0x00000100u;//Òý½Å¸´ÓÃÑ¡ÔñÆÕÍ¨IO(²¦Âë¿ª¹Ø3)
        LDR.N    R0,??DataTable13_3  ;; 0x40049068
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.N    R1,??DataTable13_3  ;; 0x40049068
        STR      R0,[R1, #+0]
//   16   PORTA_PCR27 |= 0x00000100u;//Òý½Å¸´ÓÃÑ¡ÔñÆÕÍ¨IO(²¦Âë¿ª¹Ø4)
        LDR.N    R0,??DataTable13_4  ;; 0x4004906c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.N    R1,??DataTable13_4  ;; 0x4004906c
        STR      R0,[R1, #+0]
//   17   PORTA_PCR28 |= 0x00000100u;//Òý½Å¸´ÓÃÑ¡ÔñÆÕÍ¨IO(²¦Âë¿ª¹Ø5)
        LDR.N    R0,??DataTable13_5  ;; 0x40049070
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.N    R1,??DataTable13_5  ;; 0x40049070
        STR      R0,[R1, #+0]
//   18   PORTA_PCR29 |= 0x00000100u;//Òý½Å¸´ÓÃÑ¡ÔñÆÕÍ¨IO(²¦Âë¿ª¹Ø6)
        LDR.N    R0,??DataTable13_6  ;; 0x40049074
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.N    R1,??DataTable13_6  ;; 0x40049074
        STR      R0,[R1, #+0]
//   19   PORTB_PCR0  |= 0x00000100u;//Òý½Å¸´ÓÃÑ¡ÔñÆÕÍ¨IO(²¦Âë¿ª¹Ø7)
        LDR.N    R0,??DataTable13_7  ;; 0x4004a000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.N    R1,??DataTable13_7  ;; 0x4004a000
        STR      R0,[R1, #+0]
//   20   PORTB_PCR1  |= 0x00000100u;//Òý½Å¸´ÓÃÑ¡ÔñÆÕÍ¨IO(²¦Âë¿ª¹Ø8)
        LDR.N    R0,??DataTable13_8  ;; 0x4004a004
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.N    R1,??DataTable13_8  ;; 0x4004a004
        STR      R0,[R1, #+0]
//   21   
//   22   GPIOA_PDDR &= ~(1<<24);//Òý½ÅÑ¡ÔñÊäÈë·½Ïò(²¦Âë¿ª¹Ø1)
        LDR.N    R0,??DataTable13_9  ;; 0x400ff014
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x1000000
        LDR.N    R1,??DataTable13_9  ;; 0x400ff014
        STR      R0,[R1, #+0]
//   23   GPIOA_PDDR &= ~(1<<25);//Òý½ÅÑ¡ÔñÊäÈë·½Ïò(²¦Âë¿ª¹Ø2)
        LDR.N    R0,??DataTable13_9  ;; 0x400ff014
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x2000000
        LDR.N    R1,??DataTable13_9  ;; 0x400ff014
        STR      R0,[R1, #+0]
//   24   GPIOA_PDDR &= ~(1<<26);//Òý½ÅÑ¡ÔñÊäÈë·½Ïò(²¦Âë¿ª¹Ø3)
        LDR.N    R0,??DataTable13_9  ;; 0x400ff014
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x4000000
        LDR.N    R1,??DataTable13_9  ;; 0x400ff014
        STR      R0,[R1, #+0]
//   25   GPIOA_PDDR &= ~(1<<27);//Òý½ÅÑ¡ÔñÊäÈë·½Ïò(²¦Âë¿ª¹Ø4)
        LDR.N    R0,??DataTable13_9  ;; 0x400ff014
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x8000000
        LDR.N    R1,??DataTable13_9  ;; 0x400ff014
        STR      R0,[R1, #+0]
//   26   GPIOA_PDDR &= ~(1<<28);//Òý½ÅÑ¡ÔñÊäÈë·½Ïò(²¦Âë¿ª¹Ø5)
        LDR.N    R0,??DataTable13_9  ;; 0x400ff014
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x10000000
        LDR.N    R1,??DataTable13_9  ;; 0x400ff014
        STR      R0,[R1, #+0]
//   27   GPIOA_PDDR &= ~(1<<29);//Òý½ÅÑ¡ÔñÊäÈë·½Ïò(²¦Âë¿ª¹Ø6)
        LDR.N    R0,??DataTable13_9  ;; 0x400ff014
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x20000000
        LDR.N    R1,??DataTable13_9  ;; 0x400ff014
        STR      R0,[R1, #+0]
//   28   GPIOB_PDDR &= ~(1<<0);//Òý½ÅÑ¡ÔñÊäÈë·½Ïò(²¦Âë¿ª¹Ø7)
        LDR.N    R0,??DataTable13_10  ;; 0x400ff054
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.N    R1,??DataTable13_10  ;; 0x400ff054
        STR      R0,[R1, #+0]
//   29   GPIOB_PDDR &= ~(1<<1);//Òý½ÅÑ¡ÔñÊäÈë·½Ïò(²¦Âë¿ª¹Ø8)
        LDR.N    R0,??DataTable13_10  ;; 0x400ff054
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x2
        LDR.N    R1,??DataTable13_10  ;; 0x400ff054
        STR      R0,[R1, #+0]
//   30   
//   31   
//   32   /* °´¼üÅäÖÃ */
//   33   
//   34   PORTB_PCR2 |= 0x00000100u;//Òý½Å¸´ÓÃÑ¡ÔñÆÕÍ¨IO(°´¼ü1)
        LDR.N    R0,??DataTable13_11  ;; 0x4004a008
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.N    R1,??DataTable13_11  ;; 0x4004a008
        STR      R0,[R1, #+0]
//   35   PORTB_PCR3 |= 0x00000100u;//Òý½Å¸´ÓÃÑ¡ÔñÆÕÍ¨IO(°´¼ü2)
        LDR.N    R0,??DataTable13_12  ;; 0x4004a00c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.N    R1,??DataTable13_12  ;; 0x4004a00c
        STR      R0,[R1, #+0]
//   36   PORTB_PCR4 |= 0x00000100u;//Òý½Å¸´ÓÃÑ¡ÔñÆÕÍ¨IO(°´¼ü3)
        LDR.N    R0,??DataTable13_13  ;; 0x4004a010
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.N    R1,??DataTable13_13  ;; 0x4004a010
        STR      R0,[R1, #+0]
//   37   PORTB_PCR5 |= 0x00000100u;//Òý½Å¸´ÓÃÑ¡ÔñÆÕÍ¨IO(°´¼ü4)
        LDR.N    R0,??DataTable13_14  ;; 0x4004a014
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.N    R1,??DataTable13_14  ;; 0x4004a014
        STR      R0,[R1, #+0]
//   38   
//   39   GPIOB_PDDR &= ~(1<<2);//Òý½ÅÑ¡ÔñÊäÈë·½Ïò(°´¼ü1)
        LDR.N    R0,??DataTable13_10  ;; 0x400ff054
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x4
        LDR.N    R1,??DataTable13_10  ;; 0x400ff054
        STR      R0,[R1, #+0]
//   40   GPIOB_PDDR &= ~(1<<3);//Òý½ÅÑ¡ÔñÊäÈë·½Ïò(°´¼ü2)
        LDR.N    R0,??DataTable13_10  ;; 0x400ff054
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x8
        LDR.N    R1,??DataTable13_10  ;; 0x400ff054
        STR      R0,[R1, #+0]
//   41   GPIOB_PDDR &= ~(1<<4);//Òý½ÅÑ¡ÔñÊäÈë·½Ïò(°´¼ü3)
        LDR.N    R0,??DataTable13_10  ;; 0x400ff054
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x10
        LDR.N    R1,??DataTable13_10  ;; 0x400ff054
        STR      R0,[R1, #+0]
//   42   GPIOB_PDDR &= ~(1<<5);//Òý½ÅÑ¡ÔñÊäÈë·½Ïò(°´¼ü4)
        LDR.N    R0,??DataTable13_10  ;; 0x400ff054
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x20
        LDR.N    R1,??DataTable13_10  ;; 0x400ff054
        STR      R0,[R1, #+0]
//   43   
//   44   //------------------------------LEDµÆ---------------------------------
//   45   SIM_SCGC5 |= 0x00002000u;//Ê¹ÄÜPORTEÊ±ÖÓ 
        LDR.N    R0,??DataTable13  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000
        LDR.N    R1,??DataTable13  ;; 0x40048038
        STR      R0,[R1, #+0]
//   46   PORTE_PCR8 |= 0x00000100u;//Òý½Å¸´ÓÃÑ¡ÔñÆÕÍ¨IO(LED1)
        LDR.N    R0,??DataTable13_15  ;; 0x4004d020
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.N    R1,??DataTable13_15  ;; 0x4004d020
        STR      R0,[R1, #+0]
//   47   PORTE_PCR9 |= 0x00000100u;//Òý½Å¸´ÓÃÑ¡ÔñÆÕÍ¨IO(LED2)  
        LDR.N    R0,??DataTable13_16  ;; 0x4004d024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.N    R1,??DataTable13_16  ;; 0x4004d024
        STR      R0,[R1, #+0]
//   48   GPIOE_PDDR |= (1<<8);//Òý½ÅÑ¡ÔñÊä³ö·½Ïò(LED1)  
        LDR.N    R0,??DataTable13_17  ;; 0x400ff114
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.N    R1,??DataTable13_17  ;; 0x400ff114
        STR      R0,[R1, #+0]
//   49   GPIOE_PDDR |= (1<<9);//Òý½ÅÑ¡ÔñÊä³ö·½Ïò(LED2)
        LDR.N    R0,??DataTable13_17  ;; 0x400ff114
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x200
        LDR.N    R1,??DataTable13_17  ;; 0x400ff114
        STR      R0,[R1, #+0]
//   50  
//   51 }
        BX       LR               ;; return
//   52 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   53 unsigned char u8_Switch1get(void){return (GPIOA_PDIR >> 24) & 0x01;}
u8_Switch1get:
        LDR.N    R0,??DataTable13_18  ;; 0x400ff010
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+24
        ANDS     R0,R0,#0x1
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   54 unsigned char u8_Switch2get(void){return (GPIOA_PDIR >> 25) & 0x01;}
u8_Switch2get:
        LDR.N    R0,??DataTable13_18  ;; 0x400ff010
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+25
        ANDS     R0,R0,#0x1
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   55 unsigned char u8_Switch3get(void){return (GPIOA_PDIR >> 26) & 0x01;}
u8_Switch3get:
        LDR.N    R0,??DataTable13_18  ;; 0x400ff010
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+26
        ANDS     R0,R0,#0x1
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   56 unsigned char u8_Switch4get(void){return (GPIOA_PDIR >> 27) & 0x01;}
u8_Switch4get:
        LDR.N    R0,??DataTable13_18  ;; 0x400ff010
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+27
        ANDS     R0,R0,#0x1
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   57 unsigned char u8_Switch5get(void){return (GPIOA_PDIR >> 28) & 0x01;}
u8_Switch5get:
        LDR.N    R0,??DataTable13_18  ;; 0x400ff010
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+28
        ANDS     R0,R0,#0x1
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   58 unsigned char u8_Switch6get(void){return (GPIOA_PDIR >> 29) & 0x01;}
u8_Switch6get:
        LDR.N    R0,??DataTable13_18  ;; 0x400ff010
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+29
        ANDS     R0,R0,#0x1
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   59 unsigned char u8_Switch7get(void){return (GPIOB_PDIR >> 0) & 0x01;}
u8_Switch7get:
        LDR.N    R0,??DataTable13_19  ;; 0x400ff050
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x1
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   60 unsigned char u8_Switch8get(void){return (GPIOB_PDIR >> 1) & 0x01;}
u8_Switch8get:
        LDR.N    R0,??DataTable13_19  ;; 0x400ff050
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+1,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
//   61 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   62 unsigned char u8_Button1get(void){return (GPIOB_PDIR >> 2) & 0x01;}
u8_Button1get:
        LDR.N    R0,??DataTable13_19  ;; 0x400ff050
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+2,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   63 unsigned char u8_Button2get(void){return (GPIOB_PDIR >> 3) & 0x01;}
u8_Button2get:
        LDR.N    R0,??DataTable13_19  ;; 0x400ff050
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+3,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   64 unsigned char u8_Button3get(void){return (GPIOB_PDIR >> 4) & 0x01;}
u8_Button3get:
        LDR.N    R0,??DataTable13_19  ;; 0x400ff050
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+4,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   65 unsigned char u8_Button4get(void){return (GPIOB_PDIR >> 5) & 0x01;}
u8_Button4get:
        LDR.N    R0,??DataTable13_19  ;; 0x400ff050
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+5,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
//   66 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   67 void v_Button_set(void)
//   68 {
v_Button_set:
        PUSH     {R7,LR}
//   69     if( ( 0 == Button1 ) && ( g_Buttons.BottonTotaltime - g_Buttons.Button1time > 300 ) )
        BL       u8_Button1get
        CMP      R0,#+0
        BNE.N    ??v_Button_set_0
        LDR.N    R0,??DataTable13_20
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable13_20
        LDR      R1,[R1, #+4]
        SUBS     R0,R0,R1
        CMP      R0,#+300
        BLS.N    ??v_Button_set_0
//   70     {
//   71         g_Control.SendWhich.Start = 1;
        LDR.N    R0,??DataTable13_21
        MOVS     R1,#+1
        STRB     R1,[R0, #+4]
//   72         g_Buttons.Button1time = g_Buttons.BottonTotaltime;
        LDR.N    R0,??DataTable13_20
        LDR.N    R1,??DataTable13_20
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+4]
//   73     }
//   74     if( ( 0 == Button2 ) && ( g_Buttons.BottonTotaltime - g_Buttons.Button2time > 300 ) )
??v_Button_set_0:
        BL       u8_Button2get
        CMP      R0,#+0
        BNE.N    ??v_Button_set_1
        LDR.N    R0,??DataTable13_20
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable13_20
        LDR      R1,[R1, #+8]
        SUBS     R0,R0,R1
        CMP      R0,#+300
        BLS.N    ??v_Button_set_1
//   75     {
//   76         g_Control.SendWhich.Up = 1;
        LDR.N    R0,??DataTable13_21
        MOVS     R1,#+1
        STRB     R1,[R0, #+5]
//   77         g_Buttons.Button2time = g_Buttons.BottonTotaltime;
        LDR.N    R0,??DataTable13_20
        LDR.N    R1,??DataTable13_20
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+8]
//   78     }
//   79     if( ( 0 == Button3 ) && ( g_Buttons.BottonTotaltime - g_Buttons.Button3time > 300 ) )
??v_Button_set_1:
        BL       u8_Button3get
        CMP      R0,#+0
        BNE.N    ??v_Button_set_2
        LDR.N    R0,??DataTable13_20
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable13_20
        LDR      R1,[R1, #+12]
        SUBS     R0,R0,R1
        CMP      R0,#+300
        BLS.N    ??v_Button_set_2
//   80     {
//   81         g_Control.SendWhich.Down = 1;
        LDR.N    R0,??DataTable13_21
        MOVS     R1,#+1
        STRB     R1,[R0, #+6]
//   82         g_Buttons.Button3time = g_Buttons.BottonTotaltime;
        LDR.N    R0,??DataTable13_20
        LDR.N    R1,??DataTable13_20
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+12]
//   83     }
//   84     if( ( 0 == Button4 ) && ( g_Buttons.BottonTotaltime - g_Buttons.Button4time > 300 ) )
??v_Button_set_2:
        BL       u8_Button4get
        CMP      R0,#+0
        BNE.N    ??v_Button_set_3
        LDR.N    R0,??DataTable13_20
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable13_20
        LDR      R1,[R1, #+16]
        SUBS     R0,R0,R1
        CMP      R0,#+300
        BLS.N    ??v_Button_set_3
//   85     {
//   86         g_Control.SendWhich.Max = 1;
        LDR.N    R0,??DataTable13_21
        MOVS     R1,#+1
        STRB     R1,[R0, #+7]
//   87         g_Buttons.Button4time = g_Buttons.BottonTotaltime;
        LDR.N    R0,??DataTable13_20
        LDR.N    R1,??DataTable13_20
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+16]
//   88     }
//   89 }
??v_Button_set_3:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_1:
        DC32     0x40049060

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_2:
        DC32     0x40049064

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_3:
        DC32     0x40049068

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_4:
        DC32     0x4004906c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_5:
        DC32     0x40049070

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_6:
        DC32     0x40049074

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_7:
        DC32     0x4004a000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_8:
        DC32     0x4004a004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_9:
        DC32     0x400ff014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_10:
        DC32     0x400ff054

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_11:
        DC32     0x4004a008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_12:
        DC32     0x4004a00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_13:
        DC32     0x4004a010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_14:
        DC32     0x4004a014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_15:
        DC32     0x4004d020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_16:
        DC32     0x4004d024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_17:
        DC32     0x400ff114

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_18:
        DC32     0x400ff010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_19:
        DC32     0x400ff050

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_20:
        DC32     g_Buttons

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_21:
        DC32     g_Control

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
//  20 bytes in section .bss
// 748 bytes in section .text
// 
// 748 bytes of CODE memory
//  20 bytes of DATA memory
//
//Errors: none
//Warnings: none
