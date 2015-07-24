///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     23/Jan/2015  01:58:38 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\MK60FX512VLQ15 /
//                    \ShunAn_Panel\Poet_Flash.c                              /
//    Command line =  D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\MK60FX512VLQ15 /
//                    \ShunAn_Panel\Poet_Flash.c -D IAR -D TWR_K60F120M -lCN  /
//                    D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\MK60FX512VLQ15 /
//                    \FLASH_1MB\List\ -lB D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýº /
//                    Å\´úÂë\MK60FX512VLQ15\FLASH_1MB\List\ -o                /
//                    D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\MK60FX512VLQ15 /
//                    \FLASH_1MB\Obj\ --no_cse --no_unroll --no_inline        /
//                    --no_code_motion --no_tbaa --no_clustering              /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=VFPv4_sp --dlib_config         /
//                    "C:\Program Files (x86)\IAR Systems\Embedded Workbench  /
//                    6.5\arm\INC\c\DLib_Config_Normal.h" -I                  /
//                    D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\MK60FX512VLQ15 /
//                    \ -I D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\MK60FX512 /
//                    VLQ15\Library\ -I D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´ /
//                    úÂë\MK60FX512VLQ15\Library\BlessedAlien\ -I             /
//                    D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\MK60FX512VLQ15 /
//                    \ShunAn_Panel\ -Ol --use_c++_inline                     /
//    List file    =  D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\MK60FX512VLQ15 /
//                    \FLASH_1MB\List\Poet_Flash.s                            /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        PUBLIC b_DSPI_ClrRx
        PUBLIC b_DSPI_Init
        PUBLIC b_DSPI_PoP
        PUBLIC b_Flash_EnsureRest
        PUBLIC b_Flash_EnsureWillWrite
        PUBLIC b_Flash_Init
        PUBLIC g_RxCounter
        PUBLIC g_Tx
        PUBLIC v_DSPI_PushTx

// D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\MK60FX512VLQ15\ShunAn_Panel\Poet_Flash.c
//    1 #include "MK60F15.h"
//    2 #include "ShunAn_Lib.h"
//    3 #include "start_ShunAn.h"
//    4 #include "BlessedAlien.h"
//    5 
//    6 //#include "Poet_Scourage.h"
//    7 #include "Poet_Flash.h"
//    8 // Scourage
//    9 // ========================================================================== //
//   10 // W25Q64FV //
//   11 /*
//   12 // Ê±Ðò¼ÆËã
//   13 ¶ÁÆµÂÊ×î´óÖµ 50MHz
//   14 Ð´ÆµÂÊ×î´óÖµ 104MHz
//   15 CLK µ¥ÖÜÆÚmin     6ns
//   16 CSÏÂ => CLKÉÏ     5ns
//   17 // /CS Deselect Time (for Erase or Program ? Read Status Registers) => 50ns
//   18 CSµ½Êä³öÎÞÐ§Ê±¼ä   7ns
//   19 WP
//   20 CS
//   21 
//   22 Flash²Ù×÷
//   23 CLK Low To Data Output => 7ns // ÏÂ½µÑØÊý¾ÝÉÈ³ö
//   24 // ÉÏÉýÑØ¶ÁÈ¡Êý¾Ý
//   25 
//   26 ÏàÓ¦=> K70Ó¦±£Ö¤ÉÏÉýÑØÉÈ³öÊý¾Ý£¬ÏÂ½µÑØ¶ÁÈ¡Êý¾Ý
//   27 */
//   28 // Ä¬ÈÏ°ËÎ»½á¹¹
//   29 // ========================================================================== //
//   30 // 
//   31 //#define v_DSPI_SetFrameSize(FrameSize)          do{Flash_SPI_PTR->CTAR[0] |= SPI_CTAR_FMSZ(FrameSize-1);}while(0)  
//   32 //#define v_DSPI_HaltTx()                         do{Flash_SPI_PTR->MCR |= SPI_MCR_HALT_MASK;}while(0)
//   33 //#define v_DSPI_GoonTx()                         do{Flash_SPI_PTR->MCR &=~SPI_MCR_HALT_MASK;}while(0)
//   34 
//   35 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   36 uint8 b_DSPI_Init()
//   37 {
//   38     // ====================================================================== //
//   39     /* Òý½ÅÅäÖÃ */
//   40     SIM_SCGC6 |= SIM_SCGC6_DSPI1_MASK; //
b_DSPI_Init:
        LDR.W    R0,??DataTable6  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000
        LDR.W    R1,??DataTable6  ;; 0x4004803c
        STR      R0,[R1, #+0]
//   41     SIM_SCGC5 |= SIM_SCGC5_PORTE_MASK;
        LDR.W    R0,??DataTable6_1  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000
        LDR.W    R1,??DataTable6_1  ;; 0x40048038
        STR      R0,[R1, #+0]
//   42     PORTE_BASE_PTR->PCR[0] = 0x00000200u; // CS1
        LDR.W    R0,??DataTable6_2  ;; 0x4004d000
        MOV      R1,#+512
        STR      R1,[R0, #+0]
//   43     PORTE_BASE_PTR->PCR[1] = 0x00000200u; // OUT
        LDR.W    R0,??DataTable6_3  ;; 0x4004d004
        MOV      R1,#+512
        STR      R1,[R0, #+0]
//   44     PORTE_BASE_PTR->PCR[2] = 0x00000200u; // CLK
        LDR.W    R0,??DataTable6_4  ;; 0x4004d008
        MOV      R1,#+512
        STR      R1,[R0, #+0]
//   45     PORTE_BASE_PTR->PCR[3] = 0x00000200u; // IN
        LDR.W    R0,??DataTable6_5  ;; 0x4004d00c
        MOV      R1,#+512
        STR      R1,[R0, #+0]
//   46     
//   47     // ====================================================================== //
//   48     /* Í£Ö¹´«Êä */
//   49     Flash_SPI_PTR->MCR |= SPI_MCR_HALT_MASK; // Í£Ö¹´«Êä
        LDR.W    R0,??DataTable6_6  ;; 0x4002d000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.W    R1,??DataTable6_6  ;; 0x4002d000
        STR      R0,[R1, #+0]
//   50     /* Çå³ýÐÅÏ¢ */
//   51     Flash_SPI_PTR->MCR |= SPI_MCR_CLR_RXF_MASK | SPI_MCR_CLR_TXF_MASK; // Çå¿ÕFIFO
        LDR.W    R0,??DataTable6_6  ;; 0x4002d000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0xC00
        LDR.W    R1,??DataTable6_6  ;; 0x4002d000
        STR      R0,[R1, #+0]
//   52     Flash_SPI_PTR->SR  = SPI_SR_EOQF_MASK 
//   53                        | SPI_SR_TFUF_MASK 
//   54                        | SPI_SR_TFFF_MASK
//   55                        | SPI_SR_RFOF_MASK 
//   56                        | SPI_SR_RFDF_MASK
//   57                       // | SPI_SR_TXRXS_MASK
//   58                       // | SPI_SR_TCF_MASK        // Çå¿Õ·¢ËÍ
//   59                        ; 
        LDR.W    R0,??DataTable6_7  ;; 0x4002d02c
        LDR.W    R1,??DataTable6_8  ;; 0x1a0a0000
        STR      R1,[R0, #+0]
//   60     /* ÅäÖÃ»ù´¡ÐÅÏ¢ */
//   61     Flash_SPI_PTR->MCR =  SPI_MCR_MSTR_MASK
//   62                         | SPI_MCR_CONT_SCKE_MASK
//   63                         | SPI_MCR_PCSIS_MASK
//   64                         | SPI_MCR_PCSSE_MASK
//   65                        //==================//
//   66                         | SPI_MCR_ROOE_MASK
//   67                         | SPI_MCR_MTFE_MASK
//   68                        // | SPI_MCR_PCSIS_MASK
//   69                        // | SPI_MCR_DIS_TXF_MASK  // ¹Ø±ÕFIFO
//   70                        // | SPI_MCR_DIS_RXF_MASK  // ¹Ø±ÕFIFO
//   71                        // | SPI_MCR_SMPL_PT(2)    // one system clock 
//   72                         ;
        LDR.W    R0,??DataTable6_6  ;; 0x4002d000
        LDR.W    R1,??DataTable6_9  ;; 0xc73f0000
        STR      R1,[R0, #+0]
//   73                          //Ö÷»ú//½ÓÊÕÇå¿Õ//´«ÊäÇå¿Õ//Æ¬Ñ¡Î»ÖÃ
//   74     // ====================================================================== //
//   75     // Ê±¼ä·ÖÆµ // ÊäÈëBus Clock => ×î´óÖµÏÞÖÆÎª75MHz £¨Êý¾ÝÎ´¸ü¸Ä£©
//   76     Flash_SPI_PTR->CTAR[0] = SPI_CTAR_FMSZ(7)           // °ËÎ»Ä£Ê½
//   77                            // =============================================== //
//   78                            | SPI_CTAR_PBR(3)//1
//   79                            | SPI_CTAR_BR(2)//0//1
//   80                           // | SPI_CTAR_DBR_MASK //
//   81                            // =============================================== //
//   82                            // Ó¦×îÐ¡±£Ö¤ 5ns
//   83                            | SPI_CTAR_PCSSCK(1)         // PCS to SCK Delay Prescaler
//   84                            | SPI_CTAR_CSSCK(0)          // PCS to SCK Delay Scaler
//   85                            // =============================================== //
//   86                            // Ó¦×îÐ¡±£Ö¤ 5ns
//   87                            | SPI_CTAR_PASC(1)
//   88                            | SPI_CTAR_ASC(0)
//   89                            // =============================================== //
//   90                            // Ó¦×îÐ¡±£Ö¤ 50ns
//   91                            | SPI_CTAR_PDT(1)
//   92                            | SPI_CTAR_DT(4)  
//   93                            // =============================================== // 
//   94                            | SPI_CTAR_CPHA_MASK 
//   95                            | SPI_CTAR_CPOL_MASK
//   96                            | SPI_CTAR_DBR_MASK
//   97                            ;
        LDR.W    R0,??DataTable6_10  ;; 0x4002d00c
        LDR.W    R1,??DataTable6_11  ;; 0xbe570042
        STR      R1,[R0, #+0]
//   98     Flash_SPI_PTR->CTAR[1] = SPI_CTAR_FMSZ(15)           // Ê®ÁùÎ»Ä£Ê½
//   99                            // =============================================== //
//  100                            | SPI_CTAR_PBR(3)//1
//  101                            | SPI_CTAR_BR(2)//0//1
//  102                           // | SPI_CTAR_DBR_MASK //
//  103                            // =============================================== //
//  104                            // Ó¦×îÐ¡±£Ö¤ 5ns
//  105                            | SPI_CTAR_PCSSCK(1)         // PCS to SCK Delay Prescaler
//  106                            | SPI_CTAR_CSSCK(0)          // PCS to SCK Delay Scaler
//  107                            // =============================================== //
//  108                            // Ó¦×îÐ¡±£Ö¤ 5ns
//  109                            | SPI_CTAR_PASC(1)
//  110                            | SPI_CTAR_ASC(0)
//  111                            // =============================================== //
//  112                            // Ó¦×îÐ¡±£Ö¤ 50ns
//  113                            | SPI_CTAR_PDT(1)
//  114                            | SPI_CTAR_DT(4)  
//  115                            // =============================================== // 
//  116                            | SPI_CTAR_CPHA_MASK 
//  117                            | SPI_CTAR_CPOL_MASK
//  118                            | SPI_CTAR_DBR_MASK
//  119                            ;
        LDR.W    R0,??DataTable6_12  ;; 0x4002d010
        LDR.W    R1,??DataTable6_13  ;; 0xfe570042
        STR      R1,[R0, #+0]
//  120     // ====================================================================== //
//  121     Flash_SPI_PTR->MCR &=~SPI_MCR_HALT_MASK; // Ê¹ÄÜ´«Êä
        LDR.W    R0,??DataTable6_6  ;; 0x4002d000
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.W    R1,??DataTable6_6  ;; 0x4002d000
        STR      R0,[R1, #+0]
//  122     return 'T';
        MOVS     R0,#+84
        BX       LR               ;; return
//  123 }
//  124 
//  125 
//  126 // ========================================================================== //
//  127 // 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  128 void v_DSPI_PushTx(uint16 pushNum,uint8 isClkCoun,uint8 isClrCounter,uint8 isEndQueue,uint8 CTARn)
//  129 {
v_DSPI_PushTx:
        PUSH     {R4}
//  130     // ====================================================================== //
//  131     // Êý¾ÝÈëÕ»
//  132     Flash_SPI_PTR->PUSHR = ( 0
//  133                                  | SPI_PUSHR_CTAS(CTARn)                 //Ñ¡ÔñCTAR0¼Ä´æÆ÷
//  134                                  | SPI_PUSHR_PCS(1 << 1)
//  135                                  | (isClrCounter << SPI_PUSHR_CTCNT_SHIFT )
//  136                                  | (isClkCoun << SPI_PUSHR_CONT_SHIFT)                //1Îª ´«ÊäSPI×îºóµÄÊý¾Ý
//  137                                  | SPI_PUSHR_TXDATA( pushNum )
//  138                                  | (isEndQueue << SPI_PUSHR_EOQ_SHIFT)
//  139                                  );
        LDR      R4,[SP, #+4]
        LSLS     R4,R4,#+28
        ANDS     R4,R4,#0x70000000
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ORRS     R2,R4,R2, LSL #+26
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ORRS     R1,R2,R1, LSL #+31
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        ORRS     R0,R0,R1
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ORRS     R0,R0,R3, LSL #+27
        ORRS     R0,R0,#0x20000
        LDR.W    R1,??DataTable6_14  ;; 0x4002d034
        STR      R0,[R1, #+0]
//  140 }
        POP      {R4}
        BX       LR               ;; return
//  141 
//  142 
//  143 // ========================================================================== //
//  144 // 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  145 uint8 b_DSPI_PoP(void * popArray,uint8 popArrayCounter,uint8 * popCounter,uint8 CTARn)
//  146 {
b_DSPI_PoP:
        PUSH     {R4-R6}
//  147     // ½ÓÊÕÎÊÌâ //
//  148     uint16 time = 60000;
        MOVW     R4,#+60000
//  149     while(Flash_SPI_PTR->SR & SPI_SR_TXRXS_MASK)
??b_DSPI_PoP_0:
        LDR.W    R5,??DataTable6_7  ;; 0x4002d02c
        LDR      R5,[R5, #+0]
        LSLS     R5,R5,#+1
        BPL.N    ??b_DSPI_PoP_1
//  150     {
//  151         if(!(time--)){return 'F';}
        MOVS     R5,R4
        SUBS     R4,R5,#+1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BNE.N    ??b_DSPI_PoP_0
        MOVS     R0,#+70
        B.N      ??b_DSPI_PoP_2
//  152     }
//  153     uint8 readCounter = 0;//¶ÁÈ¡¼ÆÊý
??b_DSPI_PoP_1:
        MOVS     R5,#+0
//  154     readCounter = Flash_SPI_PTR->SR;
        LDR.W    R4,??DataTable6_7  ;; 0x4002d02c
        LDR      R4,[R4, #+0]
        MOVS     R5,R4
//  155     readCounter = (readCounter & SPI_SR_RXCTR_MASK) >> SPI_SR_RXCTR_SHIFT;
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LSRS     R5,R5,#+4
//  156     if(readCounter > popArrayCounter){return 'F';}//ÏÞ·ù
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R1,R5
        BCS.N    ??b_DSPI_PoP_3
        MOVS     R0,#+70
        B.N      ??b_DSPI_PoP_2
//  157     //popArrayCounter--;//ÒòÎªÊý×éÐÞ¼ôpopArrayCounter
//  158     time = 0;//ÎªÁË½ÓÊÜ½øÐÐÐÞ¼ô
??b_DSPI_PoP_3:
        MOVS     R4,#+0
//  159     popArrayCounter = 0;//³£ÏµÊýÐÞ¼ô
        MOVS     R1,#+0
//  160     do
//  161     {
//  162         time++;
??b_DSPI_PoP_4:
        ADDS     R4,R4,#+1
//  163         if(CTARn)
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+0
        BEQ.N    ??b_DSPI_PoP_5
//  164         {//1
//  165             ((uint16*)(popArray))[popArrayCounter] = Flash_SPI_PTR->POPR;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R5,??DataTable6_15  ;; 0x4002d038
        LDR      R5,[R5, #+0]
        STRH     R5,[R0, R1, LSL #+1]
        B.N      ??b_DSPI_PoP_6
//  166         }
//  167         else
//  168         {//0 
//  169             ((uint8*)(popArray))[popArrayCounter] = Flash_SPI_PTR->POPR;
??b_DSPI_PoP_5:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R5,??DataTable6_15  ;; 0x4002d038
        LDR      R5,[R5, #+0]
        STRB     R5,[R1, R0]
//  170         }
//  171         popArrayCounter++;
??b_DSPI_PoP_6:
        ADDS     R1,R1,#+1
//  172         readCounter = ((Flash_SPI_PTR->SR & SPI_SR_RXCTR_MASK) >> SPI_SR_RXCTR_SHIFT);
        LDR.W    R5,??DataTable6_7  ;; 0x4002d02c
        LDR      R5,[R5, #+0]
        UBFX     R5,R5,#+4,#+4
//  173         if(0 == readCounter){Flash_SPI_PTR->SR |= SPI_SR_RFDF_MASK;}
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.N    ??b_DSPI_PoP_7
        LDR.W    R5,??DataTable6_7  ;; 0x4002d02c
        LDR      R5,[R5, #+0]
        ORRS     R5,R5,#0x20000
        LDR.W    R6,??DataTable6_7  ;; 0x4002d02c
        STR      R5,[R6, #+0]
//  174     }
//  175     while(Flash_SPI_PTR->SR & SPI_SR_RFDF_MASK);
??b_DSPI_PoP_7:
        LDR.W    R5,??DataTable6_7  ;; 0x4002d02c
        LDR      R5,[R5, #+0]
        LSLS     R5,R5,#+14
        BMI.N    ??b_DSPI_PoP_4
//  176     (*popCounter) = time;//·µ»Øµ¯³ö¸öÊý
        STRB     R4,[R2, #+0]
//  177     return 'T';
        MOVS     R0,#+84
??b_DSPI_PoP_2:
        POP      {R4-R6}
        BX       LR               ;; return
//  178 }
//  179 
//  180 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  181 uint8 b_DSPI_ClrRx()
//  182 {
//  183     uint16 time = 60000;
b_DSPI_ClrRx:
        MOVW     R0,#+60000
//  184     while(Flash_SPI_PTR->SR & SPI_SR_TXRXS_MASK)
??b_DSPI_ClrRx_0:
        LDR.W    R1,??DataTable6_7  ;; 0x4002d02c
        LDR      R1,[R1, #+0]
        LSLS     R1,R1,#+1
        BPL.N    ??b_DSPI_ClrRx_1
//  185     {
//  186         if(!(time--)){return 'F';}
        MOVS     R1,R0
        SUBS     R0,R1,#+1
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+0
        BNE.N    ??b_DSPI_ClrRx_0
        MOVS     R0,#+70
        B.N      ??b_DSPI_ClrRx_2
//  187     }
//  188     Flash_SPI_PTR->SR |= SPI_SR_RFDF_MASK;
??b_DSPI_ClrRx_1:
        LDR.W    R0,??DataTable6_7  ;; 0x4002d02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x20000
        LDR.W    R1,??DataTable6_7  ;; 0x4002d02c
        STR      R0,[R1, #+0]
//  189     Flash_SPI_PTR->MCR |= (SPI_MCR_CLR_RXF_MASK);
        LDR.W    R0,??DataTable6_6  ;; 0x4002d000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x400
        LDR.W    R1,??DataTable6_6  ;; 0x4002d000
        STR      R0,[R1, #+0]
//  190     return 'T';
        MOVS     R0,#+84
??b_DSPI_ClrRx_2:
        BX       LR               ;; return
//  191 }
//  192 // ========================================================================== //
//  193 // Flash³õÊ¼»¯
//  194 // Ð´Ê¹ÄÜ

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  195 uint16 g_Tx[] = {0xFF,0xFF,0xFe,0xFe};
g_Tx:
        DATA
        DC16 255, 255, 254, 254

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  196 uint8 g_RxCounter = 0;
g_RxCounter:
        DS8 1

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  197 uint8 b_Flash_Init()
//  198 {
b_Flash_Init:
        PUSH     {R4,LR}
        SUB      SP,SP,#+24
//  199     if('F' == b_DSPI_Init()){return 'F';}
        BL       b_DSPI_Init
        CMP      R0,#+70
        BNE.N    ??b_Flash_Init_0
        MOVS     R0,#+70
        B.N      ??b_Flash_Init_1
//  200     // ==================== //
//  201     //uint8 error_occur = 0;//´íÎó¼ÆÊý
//  202     do /* È·ÈÏÐ¾Æ¬ÐÍºÅ */
//  203     {
//  204         //break; 
//  205         //v_DSPI_SetFrameSize(8);
//  206         uint8 Tx[] = {0x9F,0xFF,0xFF,0xFF};
??b_Flash_Init_0:
        ADD      R0,SP,#+8
        LDR.W    R1,??DataTable6_16
        LDR      R2,[R1, #0]
        STR      R2,[R0, #+0]
//  207         uint8 RxCounter = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+5]
//  208         v_DSPI_PushTx(Tx[0],1,1,0,CATR0);
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+1
        LDRB     R0,[SP, #+8]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       v_DSPI_PushTx
//  209         v_DSPI_PushTx(Tx[1],1,0,0,CATR0);
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOVS     R1,#+1
        LDRB     R0,[SP, #+9]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       v_DSPI_PushTx
//  210         v_DSPI_PushTx(Tx[2],1,0,0,CATR0);
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOVS     R1,#+1
        LDRB     R0,[SP, #+10]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       v_DSPI_PushTx
//  211         v_DSPI_PushTx(Tx[3],0,0,1,CATR0);//´«ËÍ¿ªÊ¼
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+1
        MOVS     R2,#+0
        MOVS     R1,#+0
        LDRB     R0,[SP, #+11]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       v_DSPI_PushTx
//  212         if('F' == b_DSPI_PopRx(Tx,&RxCounter,Rec_u8)){return 'F';}
        MOVS     R3,#+0
        ADD      R2,SP,#+5
        MOVS     R1,#+4
        ADD      R0,SP,#+8
        BL       b_DSPI_PoP
        CMP      R0,#+70
        BNE.N    ??b_Flash_Init_2
        MOVS     R0,#+70
        B.N      ??b_Flash_Init_1
//  213         if( (sizeof(Tx)/sizeof(Tx[0])) != RxCounter){/*error_occur = 1;*/return 'F';}
??b_Flash_Init_2:
        LDRB     R0,[SP, #+5]
        CMP      R0,#+4
        BEQ.N    ??b_Flash_Init_3
        MOVS     R0,#+70
        B.N      ??b_Flash_Init_1
//  214         if(0xEF != Tx[1]){return 'F';}
??b_Flash_Init_3:
        LDRB     R0,[SP, #+9]
        CMP      R0,#+239
        BEQ.N    ??b_Flash_Init_4
        MOVS     R0,#+70
        B.N      ??b_Flash_Init_1
//  215         if(0x40 != Tx[2]){return 'F';}
??b_Flash_Init_4:
        LDRB     R0,[SP, #+10]
        CMP      R0,#+64
        BEQ.N    ??b_Flash_Init_5
        MOVS     R0,#+70
        B.N      ??b_Flash_Init_1
//  216         if(0x17 != Tx[3]){return 'F';}
??b_Flash_Init_5:
        LDRB     R0,[SP, #+11]
        CMP      R0,#+23
        BEQ.N    ??b_Flash_Init_6
        MOVS     R0,#+70
        B.N      ??b_Flash_Init_1
//  217     }
//  218     while(0);
//  219     do // == ×´Ì¬Î»¿ØÖÆ == //
//  220     {
//  221         //break;
//  222         v_DSPI_PushTx(0x06,0,1,1,CATR0); // Ð´¼Ä´æÆ÷Ê¹ÄÜ
??b_Flash_Init_6:
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+0
        MOVS     R0,#+6
        BL       v_DSPI_PushTx
//  223         uint8 Tx[] = {0xFF,0xFF};
        LDR.N    R0,??DataTable6_17
        LDRH     R0,[R0, #+0]
        STRH     R0,[SP, #+6]
//  224         uint8 RxCounter = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+4]
//  225         if('F' == b_DSPI_ClrRx()){return 'F';}
        BL       b_DSPI_ClrRx
        CMP      R0,#+70
        BNE.N    ??b_Flash_Init_7
        MOVS     R0,#+70
        B.N      ??b_Flash_Init_1
//  226         // ¼Ä´æÆ÷ 1
//  227         v_DSPI_PushTx(0x35,1,1,0,CATR0); // ¶Á¼Ä´æÆ÷
??b_Flash_Init_7:
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+1
        MOVS     R0,#+53
        BL       v_DSPI_PushTx
//  228         v_DSPI_PushTx(0xFF,0,0,1,CATR0);
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+1
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,#+255
        BL       v_DSPI_PushTx
//  229         if('F' == b_DSPI_PopRx(Tx,&RxCounter,Rec_u8)){return 'F';}
        MOVS     R3,#+0
        ADD      R2,SP,#+4
        MOVS     R1,#+2
        ADD      R0,SP,#+6
        BL       b_DSPI_PoP
        CMP      R0,#+70
        BNE.N    ??b_Flash_Init_8
        MOVS     R0,#+70
        B.N      ??b_Flash_Init_1
//  230         if(2 != RxCounter){return 'F';}
??b_Flash_Init_8:
        LDRB     R0,[SP, #+4]
        CMP      R0,#+2
        BEQ.N    ??b_Flash_Init_9
        MOVS     R0,#+70
        B.N      ??b_Flash_Init_1
//  231         if(Tx[1]){return 'F';}
??b_Flash_Init_9:
        LDRB     R0,[SP, #+7]
        CMP      R0,#+0
        BEQ.N    ??b_Flash_Init_10
        MOVS     R0,#+70
        B.N      ??b_Flash_Init_1
//  232         // ¼Ä´æÆ÷ 2
//  233         v_DSPI_PushTx(0x05,1,1,0,CATR0); // ¶Á¼Ä´æÆ÷
??b_Flash_Init_10:
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+1
        MOVS     R0,#+5
        BL       v_DSPI_PushTx
//  234         v_DSPI_PushTx(0xFF,0,0,1,CATR0);
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+1
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,#+255
        BL       v_DSPI_PushTx
//  235         if('F' == b_DSPI_PopRx(Tx,&RxCounter,Rec_u8)){return 'F';}
        MOVS     R3,#+0
        ADD      R2,SP,#+4
        MOVS     R1,#+2
        ADD      R0,SP,#+6
        BL       b_DSPI_PoP
        CMP      R0,#+70
        BNE.N    ??b_Flash_Init_11
        MOVS     R0,#+70
        B.N      ??b_Flash_Init_1
//  236         if(2 != RxCounter){return 'F';}
??b_Flash_Init_11:
        LDRB     R0,[SP, #+4]
        CMP      R0,#+2
        BEQ.N    ??b_Flash_Init_12
        MOVS     R0,#+70
        B.N      ??b_Flash_Init_1
//  237         if(!(Tx[1] & 0x02)){return 'F';}
??b_Flash_Init_12:
        LDRB     R0,[SP, #+7]
        LSLS     R0,R0,#+30
        BMI.N    ??b_Flash_Init_13
        MOVS     R0,#+70
        B.N      ??b_Flash_Init_1
//  238         v_DSPI_PushTx(0x04,0,1,1,CATR0); // Ð´¼Ä´æÆ÷ÎÞÐ§
??b_Flash_Init_13:
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+0
        MOVS     R0,#+4
        BL       v_DSPI_PushTx
//  239         if('F' == b_DSPI_ClrRx()){return 'F';}
        BL       b_DSPI_ClrRx
        CMP      R0,#+70
        BNE.N    ??b_Flash_Init_14
        MOVS     R0,#+70
        B.N      ??b_Flash_Init_1
//  240     }
//  241     while(0);
//  242     do /* ²âÊÔ²É¼¯³ÌÐò */
//  243     {
//  244         //break;
//  245         uint16 Tx[] = {0xFF,0xFF,0xFF,0xFF};
??b_Flash_Init_14:
        ADD      R0,SP,#+12
        LDR.N    R1,??DataTable6_18
        LDM      R1!,{R2,R3}
        STM      R0!,{R2,R3}
        SUBS     R1,R1,#+8
        SUBS     R0,R0,#+8
//  246         uint8 RxCounter = 0;
        MOVS     R4,#+0
//  247        // if('F' == b_Flash_EnsureWillWrite()){return 'F';} // È·ÈÏÇå³ý
//  248        // v_DSPI_PushTx(0x4400,1,1,0,CATR1);
//  249        // v_DSPI_PushTx(0x3000,0,0,1,CATR1);
//  250        // if('F' == b_DSPI_ClrRx()){return 'F';}
//  251        // if('F' == b_Flash_EnsureRest()){return 'F';} // È·ÈÏ¿ÕÏÐ
//  252        // if('F' == b_Flash_EnsureWillWrite()){return 'F';} // È·ÈÏÇå³ý
//  253         if('F' == b_Flash_EnsureWillWrite()){return 'F';} // È·ÈÏÇå³ý
        BL       b_Flash_EnsureWillWrite
        CMP      R0,#+70
        BNE.N    ??b_Flash_Init_15
        MOVS     R0,#+70
        B.N      ??b_Flash_Init_1
//  254         v_DSPI_PushTx(0x4200,1,1,0,CATR1);
??b_Flash_Init_15:
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+1
        MOV      R0,#+16896
        BL       v_DSPI_PushTx
//  255         v_DSPI_PushTx(0x3001,1,0,0,CATR1);
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOVS     R1,#+1
        MOVW     R0,#+12289
        BL       v_DSPI_PushTx
//  256         v_DSPI_PushTx(0xF006,1,0,0,CATR1);
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOVS     R1,#+1
        MOVW     R0,#+61446
        BL       v_DSPI_PushTx
//  257         v_DSPI_PushTx(0xF007,0,0,1,CATR1);
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,#+1
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVW     R0,#+61447
        BL       v_DSPI_PushTx
//  258         if('F' == b_DSPI_ClrRx()){return 'F';}
        BL       b_DSPI_ClrRx
        CMP      R0,#+70
        BNE.N    ??b_Flash_Init_16
        MOVS     R0,#+70
        B.N      ??b_Flash_Init_1
//  259         if('F' == b_Flash_EnsureRest()){return 'F';} // È·ÈÏ¿ÕÏÐ
??b_Flash_Init_16:
        BL       b_Flash_EnsureRest
        CMP      R0,#+70
        BNE.N    ??b_Flash_Init_17
        MOVS     R0,#+70
        B.N      ??b_Flash_Init_1
//  260         if('F' == b_Flash_EnsureWillWrite()){return 'F';} // È·ÈÏÇå³ý
??b_Flash_Init_17:
        BL       b_Flash_EnsureWillWrite
        CMP      R0,#+70
        BNE.N    ??b_Flash_Init_18
        MOVS     R0,#+70
        B.N      ??b_Flash_Init_1
//  261         
//  262         v_DSPI_PushTx(0x4800,1,1,0,CATR1);
??b_Flash_Init_18:
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+1
        MOV      R0,#+18432
        BL       v_DSPI_PushTx
//  263         v_DSPI_PushTx(0x3000,1,0,0,CATR1);
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOVS     R1,#+1
        MOV      R0,#+12288
        BL       v_DSPI_PushTx
//  264         v_DSPI_PushTx(0xF006,1,0,0,CATR1);
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOVS     R1,#+1
        MOVW     R0,#+61446
        BL       v_DSPI_PushTx
//  265         v_DSPI_PushTx(0xF007,0,0,1,CATR1);
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,#+1
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVW     R0,#+61447
        BL       v_DSPI_PushTx
//  266         if('F' == b_DSPI_PopRx(g_Tx,&g_RxCounter,Rec_u16)){return 'F';}
        MOVS     R3,#+1
        LDR.N    R2,??DataTable6_19
        MOVS     R1,#+4
        LDR.N    R0,??DataTable6_20
        BL       b_DSPI_PoP
        CMP      R0,#+70
        BNE.N    ??b_Flash_Init_19
        MOVS     R0,#+70
        B.N      ??b_Flash_Init_1
//  267         
//  268        // if('F' == b_Flash_EnsureRest()){return 'F';} // È·ÈÏ¿ÕÏÐ
//  269        // if('F' == b_Flash_EnsureWillWrite()){return 'F';} // È·ÈÏÇå³ý
//  270         
//  271         //v_DSPI_SetFrameSize(8);
//  272     }
//  273     while(0);
//  274     //if('F' == b_Flash_Write(0,0,0)){return 'F';}
//  275     return 'T';
??b_Flash_Init_19:
        MOVS     R0,#+84
??b_Flash_Init_1:
        ADD      SP,SP,#+24
        POP      {R4,PC}          ;; return
//  276 }
//  277 
//  278 /*
//  279 Status Bits
//  280 15      suspend status
//  281 14      complement protect
//  282 13      security register lock bits
//  283 12      
//  284 11      
//  285 10      
//  286 9       quad enable
//  287 8       status regisrer protect 1
//  288 7       status register protect 0
//  289 6       sector protect
//  290 5       top/bottom protect
//  291 4       block protect bits
//  292 3
//  293 2
//  294 1       write enable latch
//  295 0       erase or write in progress
//  296 */
//  297 
//  298 // ========================================================================== //
//  299 // µØÖ·ÊäÈë£º000000h ¨C 7F FFFF h
//  300 // 1 Block => 64K // 128 Blocks => 8M
//  301 // 25MHz => 40ns*8*2080 => 665600ns => 665.6 us => 0.6656 ms => 256 bytes
//  302 // ========================================================================== //
//  303 // È·ÈÏ½«Òª¿ÉÒÔ¶ÁÈ¡
//  304 // ¹¦ÄÜ´úÂë

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  305 uint8 b_Flash_EnsureWillWrite()
//  306 {
b_Flash_EnsureWillWrite:
        PUSH     {R4,R5,LR}
        SUB      SP,SP,#+12
//  307     uint16 time = 60000;
        MOVW     R4,#+60000
//  308     uint8 Tx[] = {0,0xFF};
        LDR.N    R0,??DataTable6_21
        LDRH     R0,[R0, #+0]
        STRH     R0,[SP, #+6]
//  309     uint8 RxCounter = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+4]
//  310     uint8 Bit_Much = (Flash_SPI_PTR->CTAR[0] & SPI_CTAR_FMSZ_MASK)>>SPI_CTAR_FMSZ_SHIFT;
        LDR.N    R0,??DataTable6_10  ;; 0x4002d00c
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+27
        ANDS     R5,R0,#0xF
//  311     do
//  312     {
//  313         
//  314         v_DSPI_PushTx(0x06,0,1,1,CTAR0); // Ð´¼Ä´æÆ÷Ê¹ÄÜ
??b_Flash_EnsureWillWrite_0:
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+0
        MOVS     R0,#+6
        BL       v_DSPI_PushTx
//  315         if('F' == b_DSPI_ClrRx()){return 'F';}
        BL       b_DSPI_ClrRx
        CMP      R0,#+70
        BNE.N    ??b_Flash_EnsureWillWrite_1
        MOVS     R0,#+70
        B.N      ??b_Flash_EnsureWillWrite_2
//  316         v_DSPI_PushTx(0x05,1,1,0,CTAR0); // 
??b_Flash_EnsureWillWrite_1:
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+1
        MOVS     R0,#+5
        BL       v_DSPI_PushTx
//  317         v_DSPI_PushTx(0xFF,0,0,1,CTAR0); // 
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+1
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,#+255
        BL       v_DSPI_PushTx
//  318         if('F' == b_DSPI_PopRx(Tx,&RxCounter,Rec_u8)){return 'F';}
        MOVS     R3,#+0
        ADD      R2,SP,#+4
        MOVS     R1,#+2
        ADD      R0,SP,#+6
        BL       b_DSPI_PoP
        CMP      R0,#+70
        BNE.N    ??b_Flash_EnsureWillWrite_3
        MOVS     R0,#+70
        B.N      ??b_Flash_EnsureWillWrite_2
//  319         if(!(time--)){return 'F';}
??b_Flash_EnsureWillWrite_3:
        MOVS     R0,R4
        SUBS     R4,R0,#+1
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+0
        BNE.N    ??b_Flash_EnsureWillWrite_4
        MOVS     R0,#+70
        B.N      ??b_Flash_EnsureWillWrite_2
//  320      }
//  321      while(!(Tx[1] & 0x02)); // 1Ôò¿ÉÒÔÍË³ö
??b_Flash_EnsureWillWrite_4:
        LDRB     R0,[SP, #+7]
        LSLS     R0,R0,#+30
        BPL.N    ??b_Flash_EnsureWillWrite_0
//  322      Flash_SPI_PTR->CTAR[0] |= SPI_CTAR_FMSZ(Bit_Much);
        LDR.N    R0,??DataTable6_10  ;; 0x4002d00c
        LDR      R0,[R0, #+0]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LSLS     R1,R5,#+27
        ANDS     R1,R1,#0x78000000
        ORRS     R0,R1,R0
        LDR.N    R1,??DataTable6_10  ;; 0x4002d00c
        STR      R0,[R1, #+0]
//  323      return 'T';
        MOVS     R0,#+84
??b_Flash_EnsureWillWrite_2:
        POP      {R1-R5,PC}       ;; return
//  324 }
//  325 
//  326 
//  327 // ========================================================================== //
//  328 //
//  329 // ¹¦ÄÜ´úÂë

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  330 uint8 b_Flash_EnsureRest()
//  331 {    
b_Flash_EnsureRest:
        PUSH     {R4,R5,LR}
        SUB      SP,SP,#+12
//  332     uint16 time = 60000;
        MOVW     R4,#+60000
//  333     uint8 Tx[] = {0,0};            
        MOVS     R0,#+0
        STRH     R0,[SP, #+6]
//  334     uint8 RxCounter = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+4]
//  335     Flash_SPI_PTR->MCR |= (SPI_MCR_CLR_TXF_MASK);
        LDR.N    R0,??DataTable6_6  ;; 0x4002d000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x800
        LDR.N    R1,??DataTable6_6  ;; 0x4002d000
        STR      R0,[R1, #+0]
//  336     uint8 Bit_Much = (Flash_SPI_PTR->CTAR[0] & SPI_CTAR_FMSZ_MASK)>>SPI_CTAR_FMSZ_SHIFT;
        LDR.N    R0,??DataTable6_10  ;; 0x4002d00c
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+27
        ANDS     R5,R0,#0xF
//  337     do
//  338     {
//  339         //v_DSPI_SetFrameSize(8);
//  340         v_DSPI_PushTx(0x05,1,1,0,CTAR0); // 
??b_Flash_EnsureRest_0:
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+1
        MOVS     R0,#+5
        BL       v_DSPI_PushTx
//  341         v_DSPI_PushTx(0xFF,0,0,1,CTAR0); // 
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+1
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,#+255
        BL       v_DSPI_PushTx
//  342         if('F' == b_DSPI_PopRx(Tx,&RxCounter,Rec_u8)){return 'F';}
        MOVS     R3,#+0
        ADD      R2,SP,#+4
        MOVS     R1,#+2
        ADD      R0,SP,#+6
        BL       b_DSPI_PoP
        CMP      R0,#+70
        BNE.N    ??b_Flash_EnsureRest_1
        MOVS     R0,#+70
        B.N      ??b_Flash_EnsureRest_2
//  343         if(!(time--)){return 'F';}
??b_Flash_EnsureRest_1:
        MOVS     R0,R4
        SUBS     R4,R0,#+1
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+0
        BNE.N    ??b_Flash_EnsureRest_3
        MOVS     R0,#+70
        B.N      ??b_Flash_EnsureRest_2
//  344     }
//  345     while(Tx[1] & 0x01);//µ±²»Ã¦Ê±Ìø³öÑ­»·
??b_Flash_EnsureRest_3:
        LDRB     R0,[SP, #+7]
        LSLS     R0,R0,#+31
        BMI.N    ??b_Flash_EnsureRest_0
//  346     Flash_SPI_PTR->CTAR[0] |= SPI_CTAR_FMSZ(Bit_Much);
        LDR.N    R0,??DataTable6_10  ;; 0x4002d00c
        LDR      R0,[R0, #+0]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LSLS     R1,R5,#+27
        ANDS     R1,R1,#0x78000000
        ORRS     R0,R1,R0
        LDR.N    R1,??DataTable6_10  ;; 0x4002d00c
        STR      R0,[R1, #+0]
//  347     return 'T';
        MOVS     R0,#+84
??b_Flash_EnsureRest_2:
        POP      {R1-R5,PC}       ;; return
//  348 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_2:
        DC32     0x4004d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_3:
        DC32     0x4004d004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_4:
        DC32     0x4004d008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_5:
        DC32     0x4004d00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_6:
        DC32     0x4002d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_7:
        DC32     0x4002d02c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_8:
        DC32     0x1a0a0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_9:
        DC32     0xc73f0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_10:
        DC32     0x4002d00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_11:
        DC32     0xbe570042

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_12:
        DC32     0x4002d010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_13:
        DC32     0xfe570042

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_14:
        DC32     0x4002d034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_15:
        DC32     0x4002d038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_16:
        DC32     `?<Constant {159, 255, 255, 255}>`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_17:
        DC32     `?<Constant {255, 255}>`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_18:
        DC32     `?<Constant {255, 255, 255, 255}>`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_19:
        DC32     g_RxCounter

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_20:
        DC32     g_Tx

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_21:
        DC32     `?<Constant {0, 255}>`

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant {159, 255, 255, 255}>`:
        DATA
        DC8 159, 255, 255, 255

        SECTION `.rodata`:CONST:REORDER:NOROOT(1)
`?<Constant {255, 255}>`:
        DATA
        DC8 255, 255

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant {255, 255, 255, 255}>`:
        DATA
        DC16 255, 255, 255, 255

        SECTION `.rodata`:CONST:REORDER:NOROOT(1)
`?<Constant {0, 255}>`:
        DATA
        DC8 0, 255

        SECTION `.rodata`:CONST:REORDER:NOROOT(1)
        DATA
        DC8 0, 0

        END
// 
//     1 byte  in section .bss
//     8 bytes in section .data
//    18 bytes in section .rodata
// 1 444 bytes in section .text
// 
// 1 444 bytes of CODE  memory
//    18 bytes of CONST memory
//     9 bytes of DATA  memory
//
//Errors: none
//Warnings: 2
