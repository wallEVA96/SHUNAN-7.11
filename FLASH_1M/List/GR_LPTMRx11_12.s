///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     16/Aug/2014  22:11:15 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\pc\Desktop\¼ÌÐø×öµÄÊÂÇé\ËÄÐýÒí·ÉÐÐÆ÷ -         /
//                    TM4123G\´úÂë\Ò£¿ØÆ÷\ShunAn2\GR_LPTMRx11_12.c            /
//    Command line =  "C:\Users\pc\Desktop\¼ÌÐø×öµÄÊÂÇé\ËÄÐýÒí·ÉÐÐÆ÷ -        /
//                    TM4123G\´úÂë\Ò£¿ØÆ÷\ShunAn2\GR_LPTMRx11_12.c" -D IAR    /
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
//                    TM4123G\´úÂë\Ò£¿ØÆ÷\FLASH_1M\List\GR_LPTMRx11_12.s      /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        PUBLIC lptmr_clean
        PUBLIC lptmr_get
        PUBLIC lptmr_init

// C:\Users\pc\Desktop\¼ÌÐø×öµÄÊÂÇé\ËÄÐýÒí·ÉÐÐÆ÷ - TM4123G\´úÂë\Ò£¿ØÆ÷\ShunAn2\GR_LPTMRx11_12.c
//    1 #include "GR_LPTMRx11_12.h"
//    2 #include "MK60F15.h"
//    3 /*  void lptmr_init(void)
//    4  *  @brief      LPTMRÂö³å¼ÆÊý³õÊ¼»¯
//    5  *  @since      v5.0
//    6  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    7 void lptmr_init(void)
//    8 {
//    9     OSC0_CR |= OSC_CR_ERCLKEN_MASK;//Ê¹ÄÜ OSCERCLK
lptmr_init:
        LDR.N    R0,??DataTable2  ;; 0x40065000
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.N    R1,??DataTable2  ;; 0x40065000
        STRB     R0,[R1, #+0]
//   10     SIM_SCGC5 |= SIM_SCGC5_LPTIMER_MASK;//Ê¹ÄÜLPTMRÄ£¿éÊ±ÖÓ
        LDR.N    R0,??DataTable2_1  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable2_1  ;; 0x40048038
        STR      R0,[R1, #+0]
//   11     SIM_SCGC5 |= 0x00000200u;//Ê¹ÄÜPORTAÊ±ÖÓ
        LDR.N    R0,??DataTable2_1  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x200
        LDR.N    R1,??DataTable2_1  ;; 0x40048038
        STR      R0,[R1, #+0]
//   12     PORTA_PCR19 |= 0x00000600u;//PTA19Òý½Å¸´ÓÃÑ¡ÔñLMPTR¹¦ÄÜ
        LDR.N    R0,??DataTable2_2  ;; 0x4004904c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x600
        LDR.N    R1,??DataTable2_2  ;; 0x4004904c
        STR      R0,[R1, #+0]
//   13     LPTMR0_CSR = 0x00;//ÏÈ¹ØÁËLPT£¬ÕâÑù²ÅÄÜÉèÖÃÊ±ÖÓ·ÖÆµ,Çå¿Õ¼ÆÊýÖµµÈ
        LDR.N    R0,??DataTable2_3  ;; 0x40040000
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   14     LPTMR0_PSR = 0x0000000Fu;//Ô¤·ÖÆµÏµÊýÎª4£¬½ûÖ¹ÂË²¨Æ÷¹¦ÄÜ£¬Ñ¡ÔñOSCERCLK
        LDR.N    R0,??DataTable2_4  ;; 0x40040004
        MOVS     R1,#+15
        STR      R1,[R0, #+0]
//   15     LPTMR0_CMR = 60000;//ÉèÖÃ±È½ÏÖµ
        LDR.N    R0,??DataTable2_5  ;; 0x40040008
        MOVW     R1,#+60000
        STR      R1,[R0, #+0]
//   16     LPTMR0_CSR = 0x00000017u;//½ûÖ¹ÖÐ¶Ï¡¢Ñ¡ÔñÍ¨µÀ1ÊäÈë¡¢ÉÏÉýÑØ´¥·¢¡¢Òç³ö¸´Î»¡¢Âö³å¼ÆÊýÄ£Ê½¡¢Ê¹ÄÜLMPTRÄ£¿é
        LDR.N    R0,??DataTable2_3  ;; 0x40040000
        MOVS     R1,#+23
        STR      R1,[R0, #+0]
//   17 }
        BX       LR               ;; return
//   18 
//   19 /*
//   20  *  @brief      »ñÈ¡LPTMRÂö³å¼ÆÊýÖµ
//   21  *  @return     Âö³å¼ÆÊýÖµ
//   22  *  @since      v5.0
//   23  *  Sample usage:       uint16 data = lptmr_pulse_get();  //»ñÈ¡Âö³å¼ÆÊýÖµ
//   24  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   25 unsigned short int lptmr_get(void)
//   26 {
//   27     unsigned short int data;
//   28     LPTMR0_CNR = 0x01;//Ô¤ÏÈÏòËûÐ´ÈëÈÎÒâÖµÒÔÍ¬²½
lptmr_get:
        LDR.N    R0,??DataTable2_6  ;; 0x4004000c
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
//   29     data = LPTMR0_CNR;
        LDR.N    R0,??DataTable2_6  ;; 0x4004000c
        LDR      R0,[R0, #+0]
//   30     return data;
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BX       LR               ;; return
//   31 }
//   32 
//   33 /*!
//   34  *  @brief      Çå¿ÕLPTMRÂö³å¼ÆÊý
//   35  *  @since      v5.0
//   36  *  Sample usage:       lptmr_counter_clean();          //Çå¿ÕLPTMRÂö³å¼ÆÊý
//   37  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   38 void lptmr_clean(void)
//   39 {
//   40     LPTMR0_CSR  &= ~LPTMR_CSR_TEN_MASK;     //½ûÓÃLPTµÄÊ±ºò¾Í»á×Ô¶¯Çå¼ÆÊýÆ÷µÄÖµ
lptmr_clean:
        LDR.N    R0,??DataTable2_3  ;; 0x40040000
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.N    R1,??DataTable2_3  ;; 0x40040000
        STR      R0,[R1, #+0]
//   41     LPTMR0_CSR  |= LPTMR_CSR_TEN_MASK;
        LDR.N    R0,??DataTable2_3  ;; 0x40040000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable2_3  ;; 0x40040000
        STR      R0,[R1, #+0]
//   42 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     0x40065000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     0x4004904c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     0x40040000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     0x40040004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DC32     0x40040008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_6:
        DC32     0x4004000c

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
// 144 bytes in section .text
// 
// 144 bytes of CODE memory
//
//Errors: none
//Warnings: none
