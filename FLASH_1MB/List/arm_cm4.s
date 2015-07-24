///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     29/Jun/2015  21:49:20 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\Ë³°µÈýºÅ-ÆðÔ´- /
//                    µÚÒ»´ú°å\Library\arm_cm4.c                              /
//    Command line =  D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\Ë³°µÈýºÅ-ÆðÔ´- /
//                    µÚÒ»´ú°å\Library\arm_cm4.c -D IAR -D TWR_K60F120M -lCN  /
//                    D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\Ë³°µÈýºÅ-ÆðÔ´- /
//                    µÚÒ»´ú°å\FLASH_1MB\List\ -lB                            /
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
//                    µÚÒ»´ú°å\FLASH_1MB\List\arm_cm4.s                       /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        PUBLIC disable_irq
        PUBLIC enable_irq
        PUBLIC set_irq_priority
        PUBLIC stop
        PUBLIC wait
        PUBLIC write_vtor

// D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\Ë³°µÈýºÅ-ÆðÔ´-µÚÒ»´ú°å\Library\arm_cm4.c
//    1 /*
//    2  * ÎÄ¼þ:		arm_cm4.c
//    3  * Ä¿µÄ:		ARM Cortex M4´¦ÀíÆ÷Í¨ÓÃµÄ¸ß¼¶ÊÂÎñ
//    4  * ´´½¨Ê±¼ä£º            2014/5/18
//    5  * ×÷Õß£º                ÖÐÄÏ´óÑ§¹­¼ý
//    6  */
//    7 
//    8 #include "arm_cm4.h"
//    9 #include "MK60F15.h"
//   10 
//   11 /***********************************************************************/
//   12 /*
//   13  * Configures the ARM system control register for STOP (deep sleep) mode
//   14  * and then executes the WFI instruction to enter the mode.
//   15  *
//   16  * Parameters:
//   17  * none
//   18  *
//   19  * Note: Might want to change this later to allow for passing in a parameter
//   20  *       to optionally set the sleep on exit bit.
//   21  */
//   22 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   23 void stop (void)
//   24 {
//   25 	/* Set the SLEEPDEEP bit to enable deep sleep mode (STOP) */
//   26 	SCB_SCR |= SCB_SCR_SLEEPDEEP_MASK;	
stop:
        LDR.N    R0,??DataTable4  ;; 0xe000ed10
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.N    R1,??DataTable4  ;; 0xe000ed10
        STR      R0,[R1, #+0]
//   27 
//   28 	/* WFI instruction will start entry into STOP mode */
//   29 	asm("WFI");
        WFI
//   30 }
        BX       LR               ;; return
//   31 /***********************************************************************/
//   32 /*
//   33  * Configures the ARM system control register for WAIT (sleep) mode
//   34  * and then executes the WFI instruction to enter the mode.
//   35  *
//   36  * Parameters:
//   37  * none
//   38  *
//   39  * Note: Might want to change this later to allow for passing in a parameter
//   40  *       to optionally set the sleep on exit bit.
//   41  */
//   42 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   43 void wait (void)
//   44 {
//   45 	/* Clear the SLEEPDEEP bit to make sure we go into WAIT (sleep) mode instead
//   46 	 * of deep sleep.
//   47 	 */
//   48 	SCB_SCR &= ~SCB_SCR_SLEEPDEEP_MASK;	
wait:
        LDR.N    R0,??DataTable4  ;; 0xe000ed10
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x4
        LDR.N    R1,??DataTable4  ;; 0xe000ed10
        STR      R0,[R1, #+0]
//   49 
//   50 	/* WFI instruction will start entry into WAIT mode */
//   51 	asm("WFI");
        WFI
//   52 }
        BX       LR               ;; return
//   53 /***********************************************************************/
//   54 /*
//   55  * Change the value of the vector table offset register to the specified value.
//   56  *
//   57  * Parameters:
//   58  * vtor     new value to write to the VTOR
//   59  */
//   60 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   61 void write_vtor (int vtor)
//   62 {
//   63         /* Write the VTOR with the new value */
//   64         SCB_VTOR = vtor;	
write_vtor:
        LDR.N    R1,??DataTable4_1  ;; 0xe000ed08
        STR      R0,[R1, #+0]
//   65 }
        BX       LR               ;; return
//   66 /***********************************************************************/
//   67 /*
//   68  * Initialize the NVIC to enable the specified IRQ.
//   69  * 
//   70  * NOTE: The function only initializes the NVIC to enable a single IRQ. 
//   71  * Interrupts will also need to be enabled in the ARM core. This can be 
//   72  * done using the EnableInterrupts macro.
//   73  *
//   74  * Parameters:
//   75  * irq    irq number to be enabled (the irq number NOT the vector number)
//   76  */
//   77 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   78 void enable_irq (int irq)
//   79 {
enable_irq:
        PUSH     {R4}
//   80     int div;
//   81     
//   82     /* Make sure that the IRQ is an allowable number. Right now up to 91 is 
//   83      * used.
//   84      */
//   85     //if (irq > 91)
//   86     //    printf("\nERR! Invalid IRQ value passed to enable irq function!\n");
//   87     
//   88     /* Determine which of the NVICISERs corresponds to the irq */
//   89     div = irq/32;
        MOVS     R1,#+32
        SDIV     R1,R0,R1
//   90     
//   91     switch (div)
        CMP      R1,#+0
        BEQ.N    ??enable_irq_0
        CMP      R1,#+2
        BEQ.N    ??enable_irq_1
        BCC.N    ??enable_irq_2
        B.N      ??enable_irq_3
//   92     {
//   93     	case 0x0:
//   94               NVICICPR0 |= 1 << (irq%32);
??enable_irq_0:
        LDR.N    R1,??DataTable4_2  ;; 0xe000e280
        LDR      R1,[R1, #+0]
        MOVS     R2,#+1
        MOVS     R3,#+32
        SDIV     R4,R0,R3
        MLS      R4,R4,R3,R0
        LSLS     R2,R2,R4
        ORRS     R1,R2,R1
        LDR.N    R2,??DataTable4_2  ;; 0xe000e280
        STR      R1,[R2, #+0]
//   95               NVICISER0 |= 1 << (irq%32);
        LDR.N    R1,??DataTable4_3  ;; 0xe000e100
        LDR      R1,[R1, #+0]
        MOVS     R2,#+1
        MOVS     R3,#+32
        SDIV     R4,R0,R3
        MLS      R4,R4,R3,R0
        LSLS     R0,R2,R4
        ORRS     R0,R0,R1
        LDR.N    R1,??DataTable4_3  ;; 0xe000e100
        STR      R0,[R1, #+0]
//   96               break;
        B.N      ??enable_irq_3
//   97     	case 0x1:
//   98               NVICICPR1 |= 1 << (irq%32);
??enable_irq_2:
        LDR.N    R1,??DataTable4_4  ;; 0xe000e284
        LDR      R1,[R1, #+0]
        MOVS     R2,#+1
        MOVS     R3,#+32
        SDIV     R4,R0,R3
        MLS      R4,R4,R3,R0
        LSLS     R2,R2,R4
        ORRS     R1,R2,R1
        LDR.N    R2,??DataTable4_4  ;; 0xe000e284
        STR      R1,[R2, #+0]
//   99               NVICISER1 |= 1 << (irq%32);
        LDR.N    R1,??DataTable4_5  ;; 0xe000e104
        LDR      R1,[R1, #+0]
        MOVS     R2,#+1
        MOVS     R3,#+32
        SDIV     R4,R0,R3
        MLS      R4,R4,R3,R0
        LSLS     R0,R2,R4
        ORRS     R0,R0,R1
        LDR.N    R1,??DataTable4_5  ;; 0xe000e104
        STR      R0,[R1, #+0]
//  100               break;
        B.N      ??enable_irq_3
//  101     	case 0x2:
//  102               NVICICPR2 |= 1 << (irq%32);
??enable_irq_1:
        LDR.N    R1,??DataTable4_6  ;; 0xe000e288
        LDR      R1,[R1, #+0]
        MOVS     R2,#+1
        MOVS     R3,#+32
        SDIV     R4,R0,R3
        MLS      R4,R4,R3,R0
        LSLS     R2,R2,R4
        ORRS     R1,R2,R1
        LDR.N    R2,??DataTable4_6  ;; 0xe000e288
        STR      R1,[R2, #+0]
//  103               NVICISER2 |= 1 << (irq%32);
        LDR.N    R1,??DataTable4_7  ;; 0xe000e108
        LDR      R1,[R1, #+0]
        MOVS     R2,#+1
        MOVS     R3,#+32
        SDIV     R4,R0,R3
        MLS      R4,R4,R3,R0
        LSLS     R0,R2,R4
        ORRS     R0,R0,R1
        LDR.N    R1,??DataTable4_7  ;; 0xe000e108
        STR      R0,[R1, #+0]
//  104               break;
//  105     }              
//  106 }
??enable_irq_3:
        POP      {R4}
        BX       LR               ;; return
//  107 /***********************************************************************/
//  108 /*
//  109  * Initialize the NVIC to disable the specified IRQ.
//  110  * 
//  111  * NOTE: The function only initializes the NVIC to disable a single IRQ. 
//  112  * If you want to disable all interrupts, then use the DisableInterrupts
//  113  * macro instead. 
//  114  *
//  115  * Parameters:
//  116  * irq    irq number to be disabled (the irq number NOT the vector number)
//  117  */
//  118 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  119 void disable_irq (int irq)
//  120 {
//  121     int div;
//  122     
//  123     /* Make sure that the IRQ is an allowable number. Right now up to 91 is 
//  124      * used.
//  125      */
//  126     //if (irq > 91)
//  127     //    printf("\nERR! Invalid IRQ value passed to disable irq function!\n");
//  128     
//  129     /* Determine which of the NVICICERs corresponds to the irq */
//  130     div = irq/32;
disable_irq:
        MOVS     R1,#+32
        SDIV     R1,R0,R1
//  131     
//  132     switch (div)
        CMP      R1,#+0
        BEQ.N    ??disable_irq_0
        CMP      R1,#+2
        BEQ.N    ??disable_irq_1
        BCC.N    ??disable_irq_2
        B.N      ??disable_irq_3
//  133     {
//  134     	case 0x0:
//  135               NVICICER0 = 1 << (irq%32);
??disable_irq_0:
        MOVS     R1,#+1
        MOVS     R2,#+32
        SDIV     R3,R0,R2
        MLS      R3,R3,R2,R0
        LSLS     R0,R1,R3
        LDR.N    R1,??DataTable4_8  ;; 0xe000e180
        STR      R0,[R1, #+0]
//  136               break;
        B.N      ??disable_irq_3
//  137     	case 0x1:
//  138               NVICICER1 = 1 << (irq%32);
??disable_irq_2:
        MOVS     R1,#+1
        MOVS     R2,#+32
        SDIV     R3,R0,R2
        MLS      R3,R3,R2,R0
        LSLS     R0,R1,R3
        LDR.N    R1,??DataTable4_9  ;; 0xe000e184
        STR      R0,[R1, #+0]
//  139               break;
        B.N      ??disable_irq_3
//  140     	case 0x2:
//  141               NVICICER2 = 1 << (irq%32);
??disable_irq_1:
        MOVS     R1,#+1
        MOVS     R2,#+32
        SDIV     R3,R0,R2
        MLS      R3,R3,R2,R0
        LSLS     R0,R1,R3
        LDR.N    R1,??DataTable4_10  ;; 0xe000e188
        STR      R0,[R1, #+0]
//  142               break;
//  143     }              
//  144 }
??disable_irq_3:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     0xe000ed10

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     0xe000ed08

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     0xe000e280

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     0xe000e100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     0xe000e284

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     0xe000e104

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_6:
        DC32     0xe000e288

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_7:
        DC32     0xe000e108

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_8:
        DC32     0xe000e180

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_9:
        DC32     0xe000e184

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_10:
        DC32     0xe000e188
//  145 /***********************************************************************/
//  146 /*
//  147  * Initialize the NVIC to set specified IRQ priority.
//  148  * 
//  149  * NOTE: The function only initializes the NVIC to set a single IRQ priority. 
//  150  * Interrupts will also need to be enabled in the ARM core. This can be 
//  151  * done using the EnableInterrupts macro.
//  152  *
//  153  * Parameters:
//  154  * irq    irq number to be enabled (the irq number NOT the vector number)
//  155  * prio   irq priority. 0-15 levels. 0 max priority
//  156  */
//  157 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  158 void set_irq_priority (int irq, int prio)
//  159 {
//  160     /*irq priority pointer*/
//  161     uint8 *prio_reg;
//  162     
//  163     /* Make sure that the IRQ is an allowable number. Right now up to 91 is 
//  164      * used.
//  165      */
//  166     //if (irq > 91)
//  167     //    printf("\nERR! Invalid IRQ value passed to priority irq function!\n");
//  168 
//  169     //if (prio > 15)
//  170     //    printf("\nERR! Invalid priority value passed to priority irq function!\n");
//  171     
//  172     /* Determine which of the NVICIPx corresponds to the irq */
//  173     prio_reg = (uint8 *)(((uint32)&NVICIP0) + irq);
set_irq_priority:
        ADD      R0,R0,#-536870912
        ADDS     R0,R0,#+58368
//  174     /* Assign priority to IRQ */
//  175     *prio_reg = ( (prio&0xF) << (8 - ARM_INTERRUPT_LEVEL_BITS) );             
        LSLS     R1,R1,#+4
        STRB     R1,[R0, #+0]
//  176 }
        BX       LR               ;; return

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  177 /***********************************************************************/
//  178 
// 
// 358 bytes in section .text
// 
// 358 bytes of CODE memory
//
//Errors: none
//Warnings: none
