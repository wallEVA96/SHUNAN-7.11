///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     04/Jul/2015  06:49:27 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\Ë³°µÈýºÅ-ÆðÔ´- /
//                    µÚÒ»´ú°å\Library\BlessedAlien\ShunAn_Lib.c              /
//    Command line =  D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\Ë³°µÈýºÅ-ÆðÔ´- /
//                    µÚÒ»´ú°å\Library\BlessedAlien\ShunAn_Lib.c -D IAR -D    /
//                    TWR_K60F120M -lCN D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´ /
//                    úÂë\Ë³°µÈýºÅ-ÆðÔ´-µÚÒ»´ú°å\FLASH_1MB\List\ -lB          /
//                    D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\Ë³°µÈýºÅ-ÆðÔ´- /
//                    µÚÒ»´ú°å\FLASH_1MB\List\ -o                             /
//                    D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\Ë³°µÈýºÅ-ÆðÔ´- /
//                    µÚÒ»´ú°å\FLASH_1MB\Obj\ --no_cse --no_unroll            /
//                    --no_inline --no_code_motion --no_tbaa --no_clustering  /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=VFPv4_sp --dlib_config         /
//                    "C:\Program Files (x86)\IAR Systems\Embedded Workbench  /
//                    6.5\arm\INC\c\DLib_Config_Normal.h" -I                  /
//                    D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\Ë³°µÈýºÅ-ÆðÔ´- /
//                    µÚÒ»´ú°å\ -I D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\Ë /
//                    ³°µÈýºÅ-ÆðÔ´-µÚÒ»´ú°å\Library\ -I                       /
//                    D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\Ë³°µÈýºÅ-ÆðÔ´- /
//                    µÚÒ»´ú°å\Library\BlessedAlien\ -I                       /
//                    D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\Ë³°µÈýºÅ-ÆðÔ´- /
//                    µÚÒ»´ú°å\ShunAn_Panel\ -Ol --use_c++_inline             /
//    List file    =  D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\Ë³°µÈýºÅ-ÆðÔ´- /
//                    µÚÒ»´ú°å\FLASH_1MB\List\ShunAn_Lib.s                    /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_dadd
        EXTERN m_system

        PUBLIC RoundToInt32
        PUBLIC RoundToInt64
        PUBLIC SquareRootBedivFloat
        PUBLIC SquareRootFloat
        PUBLIC number_ServoGraduated
        PUBLIC v_Disable_ControlProcess

// D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\Ë³°µÈýºÅ-ÆðÔ´-µÚÒ»´ú°å\Library\BlessedAlien\ShunAn_Lib.c
//    1 // µ¥¾«¶È×ª»»ÎªÕûÐÎ
//    2 #include "arm_cm4.h"
//    3 #include "MK60F15.h"
//    4 #include "ShunAn_Lib.h"
//    5 #include "start_ShunAn.h"
//    6 

        SECTION `.rodata`:CONST:REORDER:NOROOT(1)
//    7 const unsigned short int number_ServoGraduated = 400;
number_ServoGraduated:
        DATA
        DC16 400
//    8 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    9 signed long int RoundToInt32 (float dval)
//   10 {
//   11     signed long int val = 0;
RoundToInt32:
        MOVS     R0,#+0
//   12     static float magic = 12582912.0;
//   13     dval += magic;
        LDR.N    R1,??DataTable4
        VLDR     S1,[R1, #0]
        VADD.F32 S0,S0,S1
//   14     val = *(signed long int*)&dval;
        VMOV     R1,S0
        MOVS     R0,R1
//   15     return val;
        BX       LR               ;; return
//   16 }

        SECTION `.data`:DATA:REORDER:NOROOT(2)
??magic:
        DATA
        DC32 4B400000H
//   17 // Ë«¾«¶È×ª»»ÎªÕûÐÎ

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   18 signed long int RoundToInt64 (double dval)
//   19 {
RoundToInt64:
        PUSH     {R4,LR}
        VPUSH    {D0}
//   20     signed long int val = 0;
        MOVS     R4,#+0
//   21     static double magic = 6755399441055744.0;
//   22     dval += magic;
        LDRD     R2,R3,[SP, #+0]
        LDR.N    R0,??DataTable4_1
        LDR      R1,[R0, #+4]
        LDR      R0,[R0, #+0]
        BL       __aeabi_dadd
        STRD     R0,R1,[SP, #+0]
//   23     val = *(signed long int*)&dval;
        LDR      R0,[SP, #+0]
        MOVS     R4,R0
//   24     return val;
        MOVS     R0,R4
        POP      {R1,R2,R4,PC}    ;; return
//   25 }

        SECTION `.data`:DATA:REORDER:NOROOT(3)
??magic_1:
        DATA
        DC32 0H, 43380000H
//   26 // ÑÓ³Ùº¯Êý
//   27 /*
//   28 void vDelayMs( unsigned int MuchMs )
//   29 {
//   30   	unsigned int pool_Much = 0;  
//   31 	unsigned int pool_ms = 0;
//   32 	for(pool_Much=0;pool_Much<MuchMs;pool_Much++)
//   33 	{
//   34           for(pool_ms=0;pool_ms<19100;pool_ms++);//Ô¼Îª1msÑÓ³Ù
//   35 	}
//   36 }
//   37 */
//   38 // Æ½·½¸ù
//   39 // ²âÊÔÊ±¼ä 0.6 us / 2 => 0.3 us // ¿ªÆô¸¡µã
//   40 // 77ms / 10000 / 2 // ¹Ø±Õ¸¡µã
//   41 // ¾«¶ÈÔ¼ÎªºóÎåÎ»
//   42 // ±ê×¼¿â sqrt 98 ms

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   43 float SquareRootFloat(float number)
//   44 {
SquareRootFloat:
        SUB      SP,SP,#+4
//   45     long i;
//   46     float x, y;
//   47     const float f = 1.5F;
        VMOV.F32 S3,#1.5
//   48     x = number * 0.5F;
        VMOV.F32 S1,#0.5
        VMUL.F32 S1,S0,S1
//   49     y  = number;
        VMOV.F32 S2,S0
//   50     i  = * ( long * ) &y;
        VSTR     S2,[SP, #+0]
//   51     i  = 0x5f3759df - ( i >> 1 ); // È¡ºÏÀí³õÖµ // 0x5f375a86
        LDR.N    R0,??DataTable4_2  ;; 0x5f3759df
        LDR      R1,[SP, #+0]
        SUBS     R0,R0,R1, ASR #+1
        STR      R0,[SP, #+0]
//   52     y  = * ( float * ) &i;
        VLDR     S2,[SP, #+0]
//   53     y  = y * ( f - ( x * y * y ) ); // ¿ÉÒÔÊÊµ±Ôö¼Ó // y Îª ¸ùºÅÏÂ(number)
        VMUL.F32 S4,S1,S2
        VMOV.F32 S5,S3
        VMLS.F32 S5,S4,S2
        VMUL.F32 S2,S5,S2
//   54     y  = y * ( f - ( x * y * y ) );
        VMUL.F32 S4,S1,S2
        VMOV.F32 S5,S3
        VMLS.F32 S5,S4,S2
        VMUL.F32 S2,S5,S2
//   55     y  = y * ( f - ( x * y * y ) );
        VMUL.F32 S1,S1,S2
        VMLS.F32 S3,S1,S2
        VMUL.F32 S2,S3,S2
//   56     return number * y;
        VMUL.F32 S0,S0,S2
        ADD      SP,SP,#+4
        BX       LR               ;; return
//   57 }
//   58 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   59 float SquareRootBedivFloat(float number)
//   60 {
SquareRootBedivFloat:
        SUB      SP,SP,#+4
//   61     long i;
//   62     float x, y;
//   63     const float f = 1.5F;
        VMOV.F32 S2,#1.5
//   64     x = number * 0.5F;
        VMOV.F32 S1,#0.5
        VMUL.F32 S1,S0,S1
//   65     y  = number;
//   66     i  = * ( long * ) &y;
        VSTR     S0,[SP, #+0]
//   67     i  = 0x5f3759df - ( i >> 1 ); // È¡ºÏÀí³õÖµ // 0x5f375a86
        LDR.N    R0,??DataTable4_2  ;; 0x5f3759df
        LDR      R1,[SP, #+0]
        SUBS     R0,R0,R1, ASR #+1
        STR      R0,[SP, #+0]
//   68     y  = * ( float * ) &i;
        VLDR     S0,[SP, #+0]
//   69     y  = y * ( f - ( x * y * y ) ); // ¿ÉÒÔÊÊµ±Ôö¼Ó // y Îª ¸ùºÅÏÂ(number)
        VMUL.F32 S3,S1,S0
        VMOV.F32 S4,S2
        VMLS.F32 S4,S3,S0
        VMUL.F32 S0,S4,S0
//   70     y  = y * ( f - ( x * y * y ) );
        VMUL.F32 S3,S1,S0
        VMOV.F32 S4,S2
        VMLS.F32 S4,S3,S0
        VMUL.F32 S0,S4,S0
//   71     y  = y * ( f - ( x * y * y ) );
        VMUL.F32 S1,S1,S0
        VMLS.F32 S2,S1,S0
        VMUL.F32 S0,S2,S0
//   72     return y;
        ADD      SP,SP,#+4
        BX       LR               ;; return
//   73 }
//   74 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   75 void v_Disable_ControlProcess()
//   76 {
//   77     m_system.control_isDone = 0;//¹Ø±Õ
v_Disable_ControlProcess:
        LDR.N    R0,??DataTable4_3
        MOVS     R1,#+0
        STRB     R1,[R0, #+17]
//   78 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     ??magic

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     ??magic_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     0x5f3759df

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     m_system

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//   79 /*
//   80 //#pragma inline
//   81 sint16 _camera_10_to_8( sint16 n)
//   82 {////-n*n/4096 + n/2 => (-n*n + n*2048)/4096
//   83     sint16 result = 0;
//   84     asm("smlal %0, %1, %2, %3" : "=r" (result) : "r" (0), "r" (n), "r" (-n) );
//   85     asm("smlal %0, %1, %2, %3" : "=r" (result) : "r" (0), "r" (n), "r" (2048) );
//   86     asm("sdiv %0, %1, %2" : "=r" (result) : "r" (result), "r" (4096) );
//   87     return(result);
//   88 }
//   89 */
// 
//  12 bytes in section .data
//   2 bytes in section .rodata
// 246 bytes in section .text
// 
// 246 bytes of CODE  memory
//   2 bytes of CONST memory
//  12 bytes of DATA  memory
//
//Errors: none
//Warnings: none
