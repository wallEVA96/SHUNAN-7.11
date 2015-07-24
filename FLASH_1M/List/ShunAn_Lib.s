///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     16/Aug/2014  22:15:43 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\pc\Desktop\¼ÌÐø×öµÄÊÂÇé\ËÄÐýÒí·ÉÐÐÆ÷ -         /
//                    TM4123G\´úÂë\Ò£¿ØÆ÷\Library\BlessedAlien\ShunAn_Lib.c   /
//    Command line =  "C:\Users\pc\Desktop\¼ÌÐø×öµÄÊÂÇé\ËÄÐýÒí·ÉÐÐÆ÷ -        /
//                    TM4123G\´úÂë\Ò£¿ØÆ÷\Library\BlessedAlien\ShunAn_Lib.c"  /
//                    -D IAR -D ShunAn2 -lCN "C:\Users\pc\Desktop\¼ÌÐø×öµÄÊÂÇ /
//                    é\ËÄÐýÒí·ÉÐÐÆ÷ - TM4123G\´úÂë\Ò£¿ØÆ÷\FLASH_1M\List\"    /
//                    -lB "C:\Users\pc\Desktop\¼ÌÐø×öµÄÊÂÇé\ËÄÐýÒí·ÉÐÐÆ÷ -    /
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
//                    TM4123G\´úÂë\Ò£¿ØÆ÷\FLASH_1M\List\ShunAn_Lib.s          /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_dadd
        EXTERN __aeabi_fadd

        PUBLIC RoundToInt32
        PUBLIC RoundToInt64
        PUBLIC vDelayMs

// C:\Users\pc\Desktop\¼ÌÐø×öµÄÊÂÇé\ËÄÐýÒí·ÉÐÐÆ÷ - TM4123G\´úÂë\Ò£¿ØÆ÷\Library\BlessedAlien\ShunAn_Lib.c
//    1 // µ¥¾«¶È×ª»»ÎªÕûÐÎ

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    2 signed long int RoundToInt32 (float dval)
//    3 {
RoundToInt32:
        PUSH     {R4,LR}
//    4     unsigned long int val = 0;
        MOVS     R4,#+0
//    5     static float magic = 12582912.0;
//    6     dval += magic;
        LDR.N    R1,??DataTable1
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
//    7     val = *(signed long int*)&dval;
        MOVS     R4,R0
//    8     return val;
        MOVS     R0,R4
        POP      {R4,PC}          ;; return
//    9 }

        SECTION `.data`:DATA:REORDER:NOROOT(2)
??magic:
        DATA
        DC32 4B400000H
//   10 // Ë«¾«¶È×ª»»ÎªÕûÐÎ

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   11 signed long int RoundToInt64 (double dval)
//   12 {
RoundToInt64:
        PUSH     {R0,R1,R3-R5,LR}
//   13     unsigned long int val = 0;
        MOVS     R4,#+0
//   14     static double magic = 6755399441055744.0;
//   15     dval += magic;
        LDRD     R2,R3,[SP, #+0]
        LDR.N    R5,??DataTable1_1
        LDRD     R0,R1,[R5, #+0]
        BL       __aeabi_dadd
        STRD     R0,R1,[SP, #+0]
//   16     val = *(signed long int*)&dval;
        LDR      R0,[SP, #+0]
        MOVS     R4,R0
//   17     return val;
        MOVS     R0,R4
        POP      {R1-R5,PC}       ;; return
//   18 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     ??magic

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     ??magic_1

        SECTION `.data`:DATA:REORDER:NOROOT(3)
??magic_1:
        DATA
        DC32 0H, 43380000H

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   19 void vDelayMs( unsigned int MuchMs )
//   20 {
//   21   	unsigned int pool_Much = 0;  
vDelayMs:
        MOVS     R1,#+0
//   22 	unsigned int pool_ms = 0;
        MOVS     R2,#+0
//   23 	for(pool_Much=0;pool_Much<MuchMs;pool_Much++)
        MOVS     R3,#+0
        MOVS     R1,R3
        B.N      ??vDelayMs_0
//   24 	{
//   25           for(pool_ms=0;pool_ms<19100;pool_ms++);//Ô¼Îª1msÑÓ³Ù
??vDelayMs_1:
        ADDS     R2,R2,#+1
??vDelayMs_2:
        MOVW     R3,#+19100
        CMP      R2,R3
        BCC.N    ??vDelayMs_1
        ADDS     R1,R1,#+1
??vDelayMs_0:
        CMP      R1,R0
        BCS.N    ??vDelayMs_3
        MOVS     R2,#+0
        B.N      ??vDelayMs_2
//   26 	}
//   27 }
??vDelayMs_3:
        BX       LR               ;; return

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
// 12 bytes in section .data
// 88 bytes in section .text
// 
// 88 bytes of CODE memory
// 12 bytes of DATA memory
//
//Errors: none
//Warnings: none
