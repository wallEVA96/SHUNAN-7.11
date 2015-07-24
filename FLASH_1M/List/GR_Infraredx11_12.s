///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     16/Aug/2014  22:11:14 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\pc\Desktop\¼ÌÐø×öµÄÊÂÇé\ËÄÐýÒí·ÉÐÐÆ÷ -         /
//                    TM4123G\´úÂë\Ò£¿ØÆ÷\ShunAn2\GR_Infraredx11_12.c         /
//    Command line =  "C:\Users\pc\Desktop\¼ÌÐø×öµÄÊÂÇé\ËÄÐýÒí·ÉÐÐÆ÷ -        /
//                    TM4123G\´úÂë\Ò£¿ØÆ÷\ShunAn2\GR_Infraredx11_12.c" -D     /
//                    IAR -D ShunAn2 -lCN "C:\Users\pc\Desktop\¼ÌÐø×öµÄÊÂÇé\Ë /
//                    ÄÐýÒí·ÉÐÐÆ÷ - TM4123G\´úÂë\Ò£¿ØÆ÷\FLASH_1M\List\" -lB   /
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
//                    TM4123G\´úÂë\Ò£¿ØÆ÷\FLASH_1M\List\GR_Infraredx11_12.s   /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        PUBLIC Infrared1get
        PUBLIC Infrared2get
        PUBLIC Infrared_Init

// C:\Users\pc\Desktop\¼ÌÐø×öµÄÊÂÇé\ËÄÐýÒí·ÉÐÐÆ÷ - TM4123G\´úÂë\Ò£¿ØÆ÷\ShunAn2\GR_Infraredx11_12.c
//    1 #include "GR_Infraredx11_12.h"
//    2 #include "MK60F15.h"
//    3 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    4 void Infrared_Init(void)
//    5 {
//    6   SIM_SCGC5 |= 0x00000400u;//Ê¹ÄÜPORTBÊ±ÖÓ 
Infrared_Init:
        LDR.N    R0,??DataTable2  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x400
        LDR.N    R1,??DataTable2  ;; 0x40048038
        STR      R0,[R1, #+0]
//    7   PORTB_PCR0 |= 0x00000100u;//Òý½Å¸´ÓÃÑ¡ÔñÆÕÍ¨IO(ºìÍâ1)
        LDR.N    R0,??DataTable2_1  ;; 0x4004a000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.N    R1,??DataTable2_1  ;; 0x4004a000
        STR      R0,[R1, #+0]
//    8   PORTB_PCR2 |= 0x00000100u;//Òý½Å¸´ÓÃÑ¡ÔñÆÕÍ¨IO(ºìÍâ2)
        LDR.N    R0,??DataTable2_2  ;; 0x4004a008
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.N    R1,??DataTable2_2  ;; 0x4004a008
        STR      R0,[R1, #+0]
//    9 
//   10   GPIOB_PDDR &= ~(1<<0);//PTB19Òý½ÅÑ¡ÔñÊäÈë·½Ïò(ºìÍâ1)
        LDR.N    R0,??DataTable2_3  ;; 0x400ff054
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.N    R1,??DataTable2_3  ;; 0x400ff054
        STR      R0,[R1, #+0]
//   11   GPIOB_PDDR &= ~(1<<2);//PTB20Òý½ÅÑ¡ÔñÊäÈë·½Ïò(ºìÍâ2)
        LDR.N    R0,??DataTable2_3  ;; 0x400ff054
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x4
        LDR.N    R1,??DataTable2_3  ;; 0x400ff054
        STR      R0,[R1, #+0]
//   12  
//   13 }
        BX       LR               ;; return
//   14 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   15 unsigned char Infrared1get(void)
//   16 {
//   17   return (GPIOB_PDIR >> 0) & 0x01;
Infrared1get:
        LDR.N    R0,??DataTable2_4  ;; 0x400ff050
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x1
        BX       LR               ;; return
//   18 }
//   19 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   20 unsigned char Infrared2get(void)
//   21 {
//   22   return (GPIOB_PDIR >> 2) & 0x01;
Infrared2get:
        LDR.N    R0,??DataTable2_4  ;; 0x400ff050
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+2,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
//   23 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     0x4004a000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     0x4004a008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     0x400ff054

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     0x400ff050

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
// 104 bytes in section .text
// 
// 104 bytes of CODE memory
//
//Errors: none
//Warnings: none
