///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     04/Jul/2015  06:49:24 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\Ë³°µÈýºÅ-ÆðÔ´- /
//                    µÚÒ»´ú°å\ShunAn_Panel\Poet_Scourage.c                   /
//    Command line =  D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\Ë³°µÈýºÅ-ÆðÔ´- /
//                    µÚÒ»´ú°å\ShunAn_Panel\Poet_Scourage.c -D IAR -D         /
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
//                    µÚÒ»´ú°å\FLASH_1MB\List\Poet_Scourage.s                 /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        PUBLIC b_DSPI_ClrRx
        PUBLIC b_DSPI_Init
        PUBLIC b_DSPI_PoP
        PUBLIC b_DSPI_PoP_PoP
        PUBLIC b_Flash_EnsureRest
        PUBLIC b_Flash_EnsureWillWrite
        PUBLIC b_Flash_Init
        PUBLIC g16_1
        PUBLIC g16_2
        PUBLIC g16_3
        PUBLIC g16_4
        PUBLIC g16_5
        PUBLIC g16_6
        PUBLIC g16_7
        PUBLIC g16_8
        PUBLIC g_RxCounter
        PUBLIC g_Tx
        PUBLIC g_Tx_Tx
        PUBLIC v_DSPI_PushTx

// D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\Ë³°µÈýºÅ-ÆðÔ´-µÚÒ»´ú°å\ShunAn_Panel\Poet_Scourage.c
//    1 #include "MK60F15.h"
//    2 #include "ShunAn_Lib.h"
//    3 #include "start_ShunAn.h"
//    4 #include "BlessedAlien.h"
//    5 
//    6 #include "Poet_Scourage.h"
//    7 // µ¥¸ö½â¾ö¡¢ÄÜ·ñÁ¬Ðø¶ÁÈ¡£¿
//    8 // ========================================================================== //
//    9 #define Flash_SPI_PTR           SPI0_BASE_PTR
//   10 // CS           B20
//   11 // DO           B22
//   12 // WP           B19 --
//   13 // HOLD         B18 --
//   14 // CLK          B21
//   15 // DI           B23
//   16 
//   17 //#define v_DSPI_SetFrameSize(FrameSize)          do{Flash_SPI_PTR->CTAR[0] |= SPI_CTAR_FMSZ(FrameSize-1);}while(0)  
//   18 //#define v_DSPI_HaltTx()                         do{Flash_SPI_PTR->MCR |= SPI_MCR_HALT_MASK;}while(0)
//   19 //#define v_DSPI_GoonTx()                         do{Flash_SPI_PTR->MCR &=~SPI_MCR_HALT_MASK;}while(0)
//   20 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   21 uint8 b_DSPI_Init()
//   22 {
//   23     // ====================================================================== //
//   24     /* Òý½ÅÅäÖÃ */
//   25     SIM_SCGC6 |= SIM_SCGC6_DSPI0_MASK; //
b_DSPI_Init:
        LDR.W    R0,??DataTable7  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000
        LDR.W    R1,??DataTable7  ;; 0x4004803c
        STR      R0,[R1, #+0]
//   26     SIM_SCGC5 |= SIM_SCGC5_PORTE_MASK;
        LDR.W    R0,??DataTable7_1  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000
        LDR.W    R1,??DataTable7_1  ;; 0x40048038
        STR      R0,[R1, #+0]
//   27     PORTE_BASE_PTR->PCR[0] = 0x00000200u; // 
        LDR.W    R0,??DataTable7_2  ;; 0x4004d000
        MOV      R1,#+512
        STR      R1,[R0, #+0]
//   28     PORTE_BASE_PTR->PCR[1] = 0x00000200u; // 
        LDR.W    R0,??DataTable7_3  ;; 0x4004d004
        MOV      R1,#+512
        STR      R1,[R0, #+0]
//   29     PORTE_BASE_PTR->PCR[2] = 0x00000200u; // 
        LDR.W    R0,??DataTable7_4  ;; 0x4004d008
        MOV      R1,#+512
        STR      R1,[R0, #+0]
//   30     PORTE_BASE_PTR->PCR[3] = 0x00000200u; // 
        LDR.W    R0,??DataTable7_5  ;; 0x4004d00c
        MOV      R1,#+512
        STR      R1,[R0, #+0]
//   31     
//   32     PORTE_BASE_PTR->PCR[10] = 0x00000100u; // 
        LDR.W    R0,??DataTable7_6  ;; 0x4004d028
        MOV      R1,#+256
        STR      R1,[R0, #+0]
//   33     PORTE_BASE_PTR->PCR[11] = 0x00000100u; //
        LDR.W    R0,??DataTable7_7  ;; 0x4004d02c
        MOV      R1,#+256
        STR      R1,[R0, #+0]
//   34     
//   35     GPIOE_PDDR |= (1<<10);//Òý½ÅÑ¡ÔñÊä³ö·½Ïò()
        LDR.W    R0,??DataTable7_8  ;; 0x400ff114
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x400
        LDR.W    R1,??DataTable7_8  ;; 0x400ff114
        STR      R0,[R1, #+0]
//   36     GPIOE_PDDR |= (1<<11);//Òý½ÅÑ¡ÔñÊä³ö·½Ïò()
        LDR.W    R0,??DataTable7_8  ;; 0x400ff114
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x800
        LDR.W    R1,??DataTable7_8  ;; 0x400ff114
        STR      R0,[R1, #+0]
//   37     
//   38     GPIOE_PDOR |= (1<<10);//Òý½ÅÑ¡ÔñÊä³ö·½Ïò()
        LDR.W    R0,??DataTable7_9  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x400
        LDR.W    R1,??DataTable7_9  ;; 0x400ff100
        STR      R0,[R1, #+0]
//   39     GPIOE_PDOR |= (1<<11);//Òý½ÅÑ¡ÔñÊä³ö·½Ïò()
        LDR.W    R0,??DataTable7_9  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x800
        LDR.W    R1,??DataTable7_9  ;; 0x400ff100
        STR      R0,[R1, #+0]
//   40     // ====================================================================== //
//   41     /* Í£Ö¹´«Êä */
//   42     Flash_SPI_PTR->MCR |= SPI_MCR_HALT_MASK; // Í£Ö¹´«Êä
        LDR.W    R0,??DataTable7_10  ;; 0x4002c000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.W    R1,??DataTable7_10  ;; 0x4002c000
        STR      R0,[R1, #+0]
//   43     /* Çå³ýÐÅÏ¢ */
//   44     Flash_SPI_PTR->MCR |= SPI_MCR_CLR_RXF_MASK | SPI_MCR_CLR_TXF_MASK; // Çå¿ÕFIFO
        LDR.W    R0,??DataTable7_10  ;; 0x4002c000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0xC00
        LDR.W    R1,??DataTable7_10  ;; 0x4002c000
        STR      R0,[R1, #+0]
//   45     Flash_SPI_PTR->SR  = SPI_SR_EOQF_MASK 
//   46                        | SPI_SR_TFUF_MASK 
//   47                        | SPI_SR_TFFF_MASK
//   48                        | SPI_SR_RFOF_MASK 
//   49                        | SPI_SR_RFDF_MASK
//   50                       // | SPI_SR_TXRXS_MASK
//   51                       // | SPI_SR_TCF_MASK        // Çå¿Õ·¢ËÍ
//   52                        ; 
        LDR.W    R0,??DataTable7_11  ;; 0x4002c02c
        LDR.W    R1,??DataTable7_12  ;; 0x1a0a0000
        STR      R1,[R0, #+0]
//   53     /* ÅäÖÃ»ù´¡ÐÅÏ¢ */
//   54     Flash_SPI_PTR->MCR =  SPI_MCR_MSTR_MASK
//   55                         | SPI_MCR_CONT_SCKE_MASK
//   56                         | SPI_MCR_PCSIS_MASK
//   57                         | SPI_MCR_PCSSE_MASK
//   58                        //==================//
//   59                         | SPI_MCR_ROOE_MASK
//   60                         | SPI_MCR_MTFE_MASK
//   61                        // | SPI_MCR_PCSIS_MASK
//   62                        // | SPI_MCR_DIS_TXF_MASK  // ¹Ø±ÕFIFO
//   63                        // | SPI_MCR_DIS_RXF_MASK  // ¹Ø±ÕFIFO
//   64                        // | SPI_MCR_SMPL_PT(2)    // one system clock 
//   65                         ;
        LDR.W    R0,??DataTable7_10  ;; 0x4002c000
        LDR.W    R1,??DataTable7_13  ;; 0xc73f0000
        STR      R1,[R0, #+0]
//   66                          //Ö÷»ú//½ÓÊÕÇå¿Õ//´«ÊäÇå¿Õ//Æ¬Ñ¡Î»ÖÃ
//   67     // ====================================================================== //
//   68     // Ê±¼ä·ÖÆµ // ÊäÈëBus Clock => ×î´óÖµÏÞÖÆÎª75MHz £¨Êý¾ÝÎ´¸ü¸Ä£©
//   69     Flash_SPI_PTR->CTAR[0] = SPI_CTAR_FMSZ(7)           // °ËÎ»Ä£Ê½
//   70                            // =============================================== //
//   71                            | SPI_CTAR_PBR(3)//1
//   72                            | SPI_CTAR_BR(2)//0//1
//   73                           // | SPI_CTAR_DBR_MASK //
//   74                            // =============================================== //
//   75                            // Ó¦×îÐ¡±£Ö¤ 5ns
//   76                            | SPI_CTAR_PCSSCK(1)         // PCS to SCK Delay Prescaler
//   77                            | SPI_CTAR_CSSCK(0)          // PCS to SCK Delay Scaler
//   78                            // =============================================== //
//   79                            // Ó¦×îÐ¡±£Ö¤ 5ns
//   80                            | SPI_CTAR_PASC(1)
//   81                            | SPI_CTAR_ASC(0)
//   82                            // =============================================== //
//   83                            // Ó¦×îÐ¡±£Ö¤ 50ns
//   84                            | SPI_CTAR_PDT(1)
//   85                            | SPI_CTAR_DT(4)  
//   86                            // =============================================== // 
//   87                            | SPI_CTAR_CPHA_MASK 
//   88                            | SPI_CTAR_CPOL_MASK
//   89                            | SPI_CTAR_DBR_MASK
//   90                            ;
        LDR.W    R0,??DataTable7_14  ;; 0x4002c00c
        LDR.W    R1,??DataTable7_15  ;; 0xbe570042
        STR      R1,[R0, #+0]
//   91     Flash_SPI_PTR->CTAR[1] = SPI_CTAR_FMSZ(15)           // Ê®ÁùÎ»Ä£Ê½
//   92                            // =============================================== //
//   93                            | SPI_CTAR_PBR(3)//1
//   94                            | SPI_CTAR_BR(2)//0//1
//   95                           // | SPI_CTAR_DBR_MASK //
//   96                            // =============================================== //
//   97                            // Ó¦×îÐ¡±£Ö¤ 5ns
//   98                            | SPI_CTAR_PCSSCK(1)         // PCS to SCK Delay Prescaler
//   99                            | SPI_CTAR_CSSCK(0)          // PCS to SCK Delay Scaler
//  100                            // =============================================== //
//  101                            // Ó¦×îÐ¡±£Ö¤ 5ns
//  102                            | SPI_CTAR_PASC(1)
//  103                            | SPI_CTAR_ASC(0)
//  104                            // =============================================== //
//  105                            // Ó¦×îÐ¡±£Ö¤ 50ns
//  106                            | SPI_CTAR_PDT(1)
//  107                            | SPI_CTAR_DT(4)  
//  108                            // =============================================== // 
//  109                            | SPI_CTAR_CPHA_MASK 
//  110                            | SPI_CTAR_CPOL_MASK
//  111                            | SPI_CTAR_DBR_MASK
//  112                            ;
        LDR.W    R0,??DataTable7_16  ;; 0x4002c010
        LDR.W    R1,??DataTable7_17  ;; 0xfe570042
        STR      R1,[R0, #+0]
//  113     // ====================================================================== //
//  114     Flash_SPI_PTR->MCR &=~SPI_MCR_HALT_MASK; // Ê¹ÄÜ´«Êä
        LDR.W    R0,??DataTable7_10  ;; 0x4002c000
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.W    R1,??DataTable7_10  ;; 0x4002c000
        STR      R0,[R1, #+0]
//  115     return 'T';
        MOVS     R0,#+84
        BX       LR               ;; return
//  116 }
//  117 
//  118 
//  119 // ========================================================================== //
//  120 // 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  121 void v_DSPI_PushTx(uint16 pushNum,uint8 isClkCoun,uint8 isClrCounter,uint8 isEndQueue,uint8 CTARn)
//  122 {
v_DSPI_PushTx:
        PUSH     {R4}
//  123     // ====================================================================== //
//  124     // Êý¾ÝÈëÕ»
//  125     Flash_SPI_PTR->PUSHR = ( 0
//  126                                  | SPI_PUSHR_CTAS(CTARn)                 //Ñ¡ÔñCTAR0¼Ä´æÆ÷
//  127                                  | SPI_PUSHR_PCS(1 << 1)
//  128                                  | (isClrCounter << SPI_PUSHR_CTCNT_SHIFT )
//  129                                  | (isClkCoun << SPI_PUSHR_CONT_SHIFT)                //1Îª ´«ÊäSPI×îºóµÄÊý¾Ý
//  130                                  | SPI_PUSHR_TXDATA( pushNum )
//  131                                  | (isEndQueue << SPI_PUSHR_EOQ_SHIFT)
//  132                                  );
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
        LDR.N    R1,??DataTable7_18  ;; 0x4002c034
        STR      R0,[R1, #+0]
//  133 }
        POP      {R4}
        BX       LR               ;; return
//  134 
//  135 
//  136 // ========================================================================== //

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  137 uint8 b_DSPI_PoP_PoP(void * popArray,uint8 popArrayCounter,uint8 * popCounter,uint8 CTARn)
//  138 {
b_DSPI_PoP_PoP:
        PUSH     {R4-R6}
//  139     // ½ÓÊÕÎÊÌâ //
//  140     uint8 readCounter = 0;//¶ÁÈ¡¼ÆÊý
        MOVS     R5,#+0
//  141     readCounter = Flash_SPI_PTR->SR;
        LDR.N    R4,??DataTable7_11  ;; 0x4002c02c
        LDR      R4,[R4, #+0]
        MOVS     R5,R4
//  142     readCounter = (readCounter & SPI_SR_RXCTR_MASK) >> SPI_SR_RXCTR_SHIFT;
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LSRS     R5,R5,#+4
//  143     if(readCounter > popArrayCounter){return 'F';}//ÏÞ·ù
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R1,R5
        BCS.N    ??b_DSPI_PoP_PoP_0
        MOVS     R0,#+70
        B.N      ??b_DSPI_PoP_PoP_1
//  144     //popArrayCounter--;//ÒòÎªÊý×éÐÞ¼ôpopArrayCounter
//  145     uint16 time = 60000;
??b_DSPI_PoP_PoP_0:
        MOVW     R4,#+60000
//  146     time = 0;//ÎªÁË½ÓÊÜ½øÐÐÐÞ¼ô
        MOVS     R1,#+0
        MOVS     R4,R1
//  147     popArrayCounter = 0;//³£ÏµÊýÐÞ¼ô
        MOVS     R1,#+0
//  148     do
//  149     {
//  150         time++;
??b_DSPI_PoP_PoP_2:
        ADDS     R4,R4,#+1
//  151         if(CTARn)
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+0
        BEQ.N    ??b_DSPI_PoP_PoP_3
//  152         {//1
//  153             ((uint16*)(popArray))[popArrayCounter] = Flash_SPI_PTR->POPR;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R5,??DataTable7_19  ;; 0x4002c038
        LDR      R5,[R5, #+0]
        STRH     R5,[R0, R1, LSL #+1]
        B.N      ??b_DSPI_PoP_PoP_4
//  154         }
//  155         else
//  156         {//0 
//  157             ((uint8*)(popArray))[popArrayCounter] = Flash_SPI_PTR->POPR;
??b_DSPI_PoP_PoP_3:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R5,??DataTable7_19  ;; 0x4002c038
        LDR      R5,[R5, #+0]
        STRB     R5,[R1, R0]
//  158         }
//  159         popArrayCounter++;
??b_DSPI_PoP_PoP_4:
        ADDS     R1,R1,#+1
//  160         readCounter = ((Flash_SPI_PTR->SR & SPI_SR_RXCTR_MASK) >> SPI_SR_RXCTR_SHIFT);
        LDR.N    R5,??DataTable7_11  ;; 0x4002c02c
        LDR      R5,[R5, #+0]
        UBFX     R5,R5,#+4,#+4
//  161         if(0 == readCounter){Flash_SPI_PTR->SR |= SPI_SR_RFDF_MASK;}
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.N    ??b_DSPI_PoP_PoP_5
        LDR.N    R5,??DataTable7_11  ;; 0x4002c02c
        LDR      R5,[R5, #+0]
        ORRS     R5,R5,#0x20000
        LDR.N    R6,??DataTable7_11  ;; 0x4002c02c
        STR      R5,[R6, #+0]
//  162     }
//  163     while(Flash_SPI_PTR->SR & SPI_SR_RFDF_MASK);
??b_DSPI_PoP_PoP_5:
        LDR.N    R5,??DataTable7_11  ;; 0x4002c02c
        LDR      R5,[R5, #+0]
        LSLS     R5,R5,#+14
        BMI.N    ??b_DSPI_PoP_PoP_2
//  164     (*popCounter) = time;//·µ»Øµ¯³ö¸öÊý
        STRB     R4,[R2, #+0]
//  165     return 'T';
        MOVS     R0,#+84
??b_DSPI_PoP_PoP_1:
        POP      {R4-R6}
        BX       LR               ;; return
//  166 }
//  167 // 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  168 uint8 b_DSPI_PoP(void * popArray,uint8 popArrayCounter,uint8 * popCounter,uint8 CTARn)
//  169 {
b_DSPI_PoP:
        PUSH     {R4-R6}
//  170     // ½ÓÊÕÎÊÌâ //
//  171     uint16 time = 60000;
        MOVW     R4,#+60000
//  172     while(Flash_SPI_PTR->SR & SPI_SR_TXRXS_MASK)
??b_DSPI_PoP_0:
        LDR.N    R5,??DataTable7_11  ;; 0x4002c02c
        LDR      R5,[R5, #+0]
        LSLS     R5,R5,#+1
        BPL.N    ??b_DSPI_PoP_1
//  173     {
//  174         if(!(time--)){return 'F';}
        MOVS     R5,R4
        SUBS     R4,R5,#+1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BNE.N    ??b_DSPI_PoP_0
        MOVS     R0,#+70
        B.N      ??b_DSPI_PoP_2
//  175     }
//  176     uint8 readCounter = 0;//¶ÁÈ¡¼ÆÊý
??b_DSPI_PoP_1:
        MOVS     R5,#+0
//  177     readCounter = Flash_SPI_PTR->SR;
        LDR.N    R4,??DataTable7_11  ;; 0x4002c02c
        LDR      R4,[R4, #+0]
        MOVS     R5,R4
//  178     readCounter = (readCounter & SPI_SR_RXCTR_MASK) >> SPI_SR_RXCTR_SHIFT;
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LSRS     R5,R5,#+4
//  179     if(readCounter > popArrayCounter){return 'F';}//ÏÞ·ù
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R1,R5
        BCS.N    ??b_DSPI_PoP_3
        MOVS     R0,#+70
        B.N      ??b_DSPI_PoP_2
//  180     //popArrayCounter--;//ÒòÎªÊý×éÐÞ¼ôpopArrayCounter
//  181     time = 0;//ÎªÁË½ÓÊÜ½øÐÐÐÞ¼ô
??b_DSPI_PoP_3:
        MOVS     R4,#+0
//  182     popArrayCounter = 0;//³£ÏµÊýÐÞ¼ô
        MOVS     R1,#+0
//  183     do
//  184     {
//  185         time++;
??b_DSPI_PoP_4:
        ADDS     R4,R4,#+1
//  186         if(CTARn)
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+0
        BEQ.N    ??b_DSPI_PoP_5
//  187         {//1
//  188             ((uint16*)(popArray))[popArrayCounter] = Flash_SPI_PTR->POPR;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R5,??DataTable7_19  ;; 0x4002c038
        LDR      R5,[R5, #+0]
        STRH     R5,[R0, R1, LSL #+1]
        B.N      ??b_DSPI_PoP_6
//  189         }
//  190         else
//  191         {//0 
//  192             ((uint8*)(popArray))[popArrayCounter] = Flash_SPI_PTR->POPR;
??b_DSPI_PoP_5:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R5,??DataTable7_19  ;; 0x4002c038
        LDR      R5,[R5, #+0]
        STRB     R5,[R1, R0]
//  193         }
//  194         popArrayCounter++;
??b_DSPI_PoP_6:
        ADDS     R1,R1,#+1
//  195         readCounter = ((Flash_SPI_PTR->SR & SPI_SR_RXCTR_MASK) >> SPI_SR_RXCTR_SHIFT);
        LDR.N    R5,??DataTable7_11  ;; 0x4002c02c
        LDR      R5,[R5, #+0]
        UBFX     R5,R5,#+4,#+4
//  196         if(0 == readCounter){Flash_SPI_PTR->SR |= SPI_SR_RFDF_MASK;}
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.N    ??b_DSPI_PoP_7
        LDR.N    R5,??DataTable7_11  ;; 0x4002c02c
        LDR      R5,[R5, #+0]
        ORRS     R5,R5,#0x20000
        LDR.N    R6,??DataTable7_11  ;; 0x4002c02c
        STR      R5,[R6, #+0]
//  197     }
//  198     while(Flash_SPI_PTR->SR & SPI_SR_RFDF_MASK);
??b_DSPI_PoP_7:
        LDR.N    R5,??DataTable7_11  ;; 0x4002c02c
        LDR      R5,[R5, #+0]
        LSLS     R5,R5,#+14
        BMI.N    ??b_DSPI_PoP_4
//  199     (*popCounter) = time;//·µ»Øµ¯³ö¸öÊý
        STRB     R4,[R2, #+0]
//  200     return 'T';
        MOVS     R0,#+84
??b_DSPI_PoP_2:
        POP      {R4-R6}
        BX       LR               ;; return
//  201 }
//  202 
//  203 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  204 uint8 b_DSPI_ClrRx()
//  205 {
//  206     uint16 time = 60000;
b_DSPI_ClrRx:
        MOVW     R0,#+60000
//  207     while(Flash_SPI_PTR->SR & SPI_SR_TXRXS_MASK)
??b_DSPI_ClrRx_0:
        LDR.N    R1,??DataTable7_11  ;; 0x4002c02c
        LDR      R1,[R1, #+0]
        LSLS     R1,R1,#+1
        BPL.N    ??b_DSPI_ClrRx_1
//  208     {
//  209         if(!(time--)){return 'F';}
        MOVS     R1,R0
        SUBS     R0,R1,#+1
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+0
        BNE.N    ??b_DSPI_ClrRx_0
        MOVS     R0,#+70
        B.N      ??b_DSPI_ClrRx_2
//  210     }
//  211     Flash_SPI_PTR->SR |= SPI_SR_RFDF_MASK;
??b_DSPI_ClrRx_1:
        LDR.N    R0,??DataTable7_11  ;; 0x4002c02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x20000
        LDR.N    R1,??DataTable7_11  ;; 0x4002c02c
        STR      R0,[R1, #+0]
//  212     Flash_SPI_PTR->MCR |= (SPI_MCR_CLR_RXF_MASK);
        LDR.N    R0,??DataTable7_10  ;; 0x4002c000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x400
        LDR.N    R1,??DataTable7_10  ;; 0x4002c000
        STR      R0,[R1, #+0]
//  213     return 'T';
        MOVS     R0,#+84
??b_DSPI_ClrRx_2:
        BX       LR               ;; return
//  214 }
//  215 // ========================================================================== //
//  216 // Flash³õÊ¼»¯
//  217 // Ð´Ê¹ÄÜ

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  218 uint16 g_Tx[] = {0xFF,0xFF,0xFe,0xFe,0xFF,0xFF,0xFF,0xFF};
g_Tx:
        DATA
        DC16 255, 255, 254, 254, 255, 255, 255, 255

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  219 uint16 g_Tx_Tx[] = {0xFF,0xFF,0xFe,0xFe,0xFF,0xFF,0xFF,0xFF};
g_Tx_Tx:
        DATA
        DC16 255, 255, 254, 254, 255, 255, 255, 255

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  220 uint8 g_RxCounter = 0;
g_RxCounter:
        DS8 1
//  221 

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  222 uint16 g16_1 = 0;
g16_1:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  223 uint16 g16_2 = 0;
g16_2:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  224 uint16 g16_3 = 0;
g16_3:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  225 uint16 g16_4 = 0;
g16_4:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  226 uint16 g16_5 = 0;
g16_5:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  227 uint16 g16_6 = 0;
g16_6:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  228 uint16 g16_7 = 0;
g16_7:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  229 uint16 g16_8 = 0;
g16_8:
        DS8 2

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  230 uint8 b_Flash_Init()
//  231 {
b_Flash_Init:
        PUSH     {R5-R7,LR}
//  232     if('F' == b_DSPI_Init()){return 'F';}
        BL       b_DSPI_Init
        CMP      R0,#+70
        BNE.N    ??b_Flash_Init_0
        MOVS     R0,#+70
        B.N      ??b_Flash_Init_1
//  233     // ==================== //
//  234     //uint8 error_occur = 0;//´íÎó¼ÆÊý
//  235     do /* È·ÈÏÐ¾Æ¬ÐÍºÅ */
//  236     {
//  237         //v_DSPI_SetFrameSize(8);
//  238         uint8 Tx[] = {0x9F,0xFF,0xFF,0xFF};
??b_Flash_Init_0:
        ADD      R0,SP,#+8
        LDR.N    R1,??DataTable7_20
        LDR      R2,[R1, #0]
        STR      R2,[R0, #+0]
//  239         uint8 RxCounter = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+4]
//  240         v_DSPI_PushTx(Tx[0],1,1,0,CATR0);
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+1
        LDRB     R0,[SP, #+8]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       v_DSPI_PushTx
//  241         v_DSPI_PushTx(Tx[1],1,0,0,CATR0);
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOVS     R1,#+1
        LDRB     R0,[SP, #+9]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       v_DSPI_PushTx
//  242         v_DSPI_PushTx(Tx[2],1,0,0,CATR0);
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOVS     R1,#+1
        LDRB     R0,[SP, #+10]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       v_DSPI_PushTx
//  243         v_DSPI_PushTx(Tx[3],0,0,1,CATR0);//´«ËÍ¿ªÊ¼
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+1
        MOVS     R2,#+0
        MOVS     R1,#+0
        LDRB     R0,[SP, #+11]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       v_DSPI_PushTx
//  244         if('F' == b_DSPI_PopRx(Tx,&RxCounter,Rec_u8)){return 'F';}
        MOVS     R3,#+0
        ADD      R2,SP,#+4
        MOVS     R1,#+4
        ADD      R0,SP,#+8
        BL       b_DSPI_PoP
        CMP      R0,#+70
        BNE.N    ??b_Flash_Init_2
        MOVS     R0,#+70
        B.N      ??b_Flash_Init_1
//  245         if( (sizeof(Tx)/sizeof(Tx[0])) != RxCounter){/*error_occur = 1;*/return 'F';}
??b_Flash_Init_2:
        LDRB     R0,[SP, #+4]
        CMP      R0,#+4
        BEQ.N    ??b_Flash_Init_3
        MOVS     R0,#+70
        B.N      ??b_Flash_Init_1
//  246         if(0xEF != Tx[1]){return 'F';}
??b_Flash_Init_3:
        LDRB     R0,[SP, #+9]
        CMP      R0,#+239
        BEQ.N    ??b_Flash_Init_4
        MOVS     R0,#+70
        B.N      ??b_Flash_Init_1
//  247         if(0x40 != Tx[2]){return 'F';}
??b_Flash_Init_4:
        LDRB     R0,[SP, #+10]
        CMP      R0,#+64
        BEQ.N    ??b_Flash_Init_5
        MOVS     R0,#+70
        B.N      ??b_Flash_Init_1
//  248         if(0x17 != Tx[3]){return 'F';}
??b_Flash_Init_5:
        LDRB     R0,[SP, #+11]
        CMP      R0,#+23
        BEQ.N    ??b_Flash_Init_6
        MOVS     R0,#+70
        B.N      ??b_Flash_Init_1
//  249         return 'T';
??b_Flash_Init_6:
        MOVS     R0,#+84
??b_Flash_Init_1:
        POP      {R1-R3,PC}       ;; return
//  250     }
//  251     while(0);
//  252     do // == ×´Ì¬Î»¿ØÖÆ == //
//  253     {
//  254         break;
//  255         v_DSPI_PushTx(0x06,0,1,1,CATR0); // Ð´¼Ä´æÆ÷Ê¹ÄÜ
//  256         uint8 Tx[] = {0xFF,0xFF};
//  257         uint8 RxCounter = 0;
//  258         if('F' == b_DSPI_ClrRx()){return 'F';}
//  259         // ¼Ä´æÆ÷ 1
//  260         v_DSPI_PushTx(0x35,1,1,0,CATR0); // ¶Á¼Ä´æÆ÷
//  261         v_DSPI_PushTx(0xFF,0,0,1,CATR0);
//  262         if('F' == b_DSPI_PopRx(Tx,&RxCounter,Rec_u8)){return 'F';}
//  263         if(2 != RxCounter){return 'F';}
//  264         if(Tx[1]){return 'F';}
//  265         // ¼Ä´æÆ÷ 2
//  266         v_DSPI_PushTx(0x05,1,1,0,CATR0); // ¶Á¼Ä´æÆ÷
//  267         v_DSPI_PushTx(0xFF,0,0,1,CATR0);
//  268         if('F' == b_DSPI_PopRx(Tx,&RxCounter,Rec_u8)){return 'F';}
//  269         if(2 != RxCounter){return 'F';}
//  270         if(!(Tx[1] & 0x02)){return 'F';}
//  271         v_DSPI_PushTx(0x04,0,1,1,CATR0); // Ð´¼Ä´æÆ÷ÎÞÐ§
//  272         if('F' == b_DSPI_ClrRx()){return 'F';}
//  273     }
//  274     while(0);
//  275     do /* ²âÊÔ²É¼¯³ÌÐò */
//  276     {
//  277         //break;
//  278        // uint16 Tx[] = {0xFF,0xFF,0xFF,0xFF};
//  279        // uint8 RxCounter = 0;
//  280      //   if('F' == b_Flash_EnsureWillWrite()){return 'F';} // È·ÈÏÇå³ý
//  281      //   v_DSPI_PushTx(0x4400,1,1,0,CATR1);
//  282      //   v_DSPI_PushTx(0x3000,0,0,1,CATR1);
//  283      //   if('F' == b_DSPI_ClrRx()){return 'F';}
//  284      //   if('F' == b_Flash_EnsureRest()){return 'F';} // È·ÈÏ¿ÕÏÐ
//  285       //  if('F' == b_Flash_EnsureWillWrite()){return 'F';} // È·ÈÏÇå³ý
//  286     /*
//  287       if('F' == b_Flash_EnsureWillWrite()){return 'F';} // È·ÈÏÇå³ý
//  288        
//  289         v_DSPI_PushTx(0x4200,1,1,0,CATR1);
//  290         v_DSPI_PushTx(0x3001,1,0,0,CATR1);
//  291         v_DSPI_PushTx(0x1234,1,0,0,CATR1);
//  292         v_DSPI_PushTx(0x4321,1,0,1,CATR1);
//  293         //while( ((Flash_SPI_PTR->SR) & SPI_SR_TXRXS_MASK) );
//  294         v_DSPI_PushTx(0x4200,1,0,0,CATR1);
//  295         v_DSPI_PushTx(0x3001,1,0,0,CATR1);
//  296         v_DSPI_PushTx(0x1234,1,0,0,CATR1);
//  297         v_DSPI_PushTx(0x5678,0,0,1,CATR1);
//  298        // if('F' == b_DSPI_ClrRx()){return 'F';}
//  299         if('F' == b_Flash_EnsureRest()){return 'F';} // È·ÈÏ¿ÕÏÐ
//  300         if('F' == b_Flash_EnsureWillWrite()){return 'F';} // È·ÈÏÇå³ý
//  301         */
//  302         v_DSPI_PushTx(0x4800,1,0,0,CATR1);     
//  303         v_DSPI_PushTx(0x3000,1,0,0,CATR1);
//  304         v_DSPI_PushTx(0xF111,1,0,0,CATR1);
//  305         v_DSPI_PushTx(0xF111,1,0,1,CATR1);
//  306         while( ((Flash_SPI_PTR->SR) & SPI_SR_TXRXS_MASK) );
//  307         Flash_SPI_PTR->SR |= SPI_SR_EOQF_MASK;
//  308         g16_1 = Flash_SPI_PTR->POPR;
//  309         g16_2 = Flash_SPI_PTR->POPR;
//  310         g16_3 = Flash_SPI_PTR->POPR;
//  311         g16_4 = Flash_SPI_PTR->POPR;
//  312         
//  313         
//  314         v_DSPI_PushTx(0xF111,1,0,0,CATR1);
//  315         v_DSPI_PushTx(0xF111,1,0,0,CATR1);
//  316         v_DSPI_PushTx(0xF111,1,0,0,CATR1);
//  317         v_DSPI_PushTx(0xF111,0,0,1,CATR1);
//  318         while( ((Flash_SPI_PTR->SR) & SPI_SR_TXRXS_MASK) );
//  319         Flash_SPI_PTR->SR |= SPI_SR_EOQF_MASK;
//  320         g16_5 = Flash_SPI_PTR->POPR;
//  321         g16_6 = Flash_SPI_PTR->POPR;
//  322         g16_7 = Flash_SPI_PTR->POPR;
//  323         g16_8 = Flash_SPI_PTR->POPR;
//  324        // if('F' == b_DSPI_PoP_PoP_Rx(g_Tx_Tx,&g_RxCounter,Rec_u16)){return 'F';}
//  325         
//  326        // if('F' == b_Flash_EnsureRest()){return 'F';} // È·ÈÏ¿ÕÏÐ
//  327        // if('F' == b_Flash_EnsureWillWrite()){return 'F';} // È·ÈÏÇå³ý
//  328         
//  329         //v_DSPI_SetFrameSize(8);
//  330     }
//  331     while(0);
//  332     //if('F' == b_Flash_Write(0,0,0)){return 'F';}
//  333     return 'T';
//  334 }
//  335 
//  336 /*
//  337 Status Bits
//  338 15      suspend status
//  339 14      complement protect
//  340 13      security register lock bits
//  341 12      
//  342 11      
//  343 10      
//  344 9       quad enable
//  345 8       status regisrer protect 1
//  346 7       status register protect 0
//  347 6       sector protect
//  348 5       top/bottom protect
//  349 4       block protect bits
//  350 3
//  351 2
//  352 1       write enable latch
//  353 0       erase or write in progress
//  354 */
//  355 
//  356 // ========================================================================== //
//  357 // µØÖ·ÊäÈë£º000000h ¨C 7F FFFF h
//  358 // 1 Block => 64K // 128 Blocks => 8M
//  359 // 25MHz => 40ns*8*2080 => 665600ns => 665.6 us => 0.6656 ms => 256 bytes
//  360 // ========================================================================== //
//  361 // È·ÈÏ½«Òª¿ÉÒÔ¶ÁÈ¡
//  362 // ¹¦ÄÜ´úÂë

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  363 uint8 b_Flash_EnsureWillWrite()
//  364 {
b_Flash_EnsureWillWrite:
        PUSH     {R4,R5,LR}
        SUB      SP,SP,#+12
//  365     uint16 time = 60000;
        MOVW     R4,#+60000
//  366     uint8 Tx[] = {0,0xFF};
        LDR.N    R0,??DataTable7_21
        LDRH     R0,[R0, #+0]
        STRH     R0,[SP, #+6]
//  367     uint8 RxCounter = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+4]
//  368     uint8 Bit_Much = (Flash_SPI_PTR->CTAR[0] & SPI_CTAR_FMSZ_MASK)>>SPI_CTAR_FMSZ_SHIFT;
        LDR.N    R0,??DataTable7_14  ;; 0x4002c00c
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+27
        ANDS     R5,R0,#0xF
//  369     do
//  370     {
//  371         
//  372         v_DSPI_PushTx(0x06,0,1,1,CTAR0); // Ð´¼Ä´æÆ÷Ê¹ÄÜ
??b_Flash_EnsureWillWrite_0:
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+0
        MOVS     R0,#+6
        BL       v_DSPI_PushTx
//  373         if('F' == b_DSPI_ClrRx()){return 'F';}
        BL       b_DSPI_ClrRx
        CMP      R0,#+70
        BNE.N    ??b_Flash_EnsureWillWrite_1
        MOVS     R0,#+70
        B.N      ??b_Flash_EnsureWillWrite_2
//  374         v_DSPI_PushTx(0x05,1,1,0,CTAR0); // 
??b_Flash_EnsureWillWrite_1:
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+1
        MOVS     R0,#+5
        BL       v_DSPI_PushTx
//  375         v_DSPI_PushTx(0xFF,0,0,1,CTAR0); // 
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+1
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,#+255
        BL       v_DSPI_PushTx
//  376         if('F' == b_DSPI_PopRx(Tx,&RxCounter,Rec_u8)){return 'F';}
        MOVS     R3,#+0
        ADD      R2,SP,#+4
        MOVS     R1,#+2
        ADD      R0,SP,#+6
        BL       b_DSPI_PoP
        CMP      R0,#+70
        BNE.N    ??b_Flash_EnsureWillWrite_3
        MOVS     R0,#+70
        B.N      ??b_Flash_EnsureWillWrite_2
//  377         if(!(time--)){return 'F';}
??b_Flash_EnsureWillWrite_3:
        MOVS     R0,R4
        SUBS     R4,R0,#+1
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+0
        BNE.N    ??b_Flash_EnsureWillWrite_4
        MOVS     R0,#+70
        B.N      ??b_Flash_EnsureWillWrite_2
//  378      }
//  379      while(!(Tx[1] & 0x02)); // 1Ôò¿ÉÒÔÍË³ö
??b_Flash_EnsureWillWrite_4:
        LDRB     R0,[SP, #+7]
        LSLS     R0,R0,#+30
        BPL.N    ??b_Flash_EnsureWillWrite_0
//  380      Flash_SPI_PTR->CTAR[0] |= SPI_CTAR_FMSZ(Bit_Much);
        LDR.N    R0,??DataTable7_14  ;; 0x4002c00c
        LDR      R0,[R0, #+0]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LSLS     R1,R5,#+27
        ANDS     R1,R1,#0x78000000
        ORRS     R0,R1,R0
        LDR.N    R1,??DataTable7_14  ;; 0x4002c00c
        STR      R0,[R1, #+0]
//  381      return 'T';
        MOVS     R0,#+84
??b_Flash_EnsureWillWrite_2:
        POP      {R1-R5,PC}       ;; return
//  382 }
//  383 
//  384 
//  385 // ========================================================================== //
//  386 //
//  387 // ¹¦ÄÜ´úÂë

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  388 uint8 b_Flash_EnsureRest()
//  389 {    
b_Flash_EnsureRest:
        PUSH     {R4,R5,LR}
        SUB      SP,SP,#+12
//  390     uint16 time = 60000;
        MOVW     R4,#+60000
//  391     uint8 Tx[] = {0,0};            
        MOVS     R0,#+0
        STRH     R0,[SP, #+6]
//  392     uint8 RxCounter = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+4]
//  393     Flash_SPI_PTR->MCR |= (SPI_MCR_CLR_TXF_MASK);
        LDR.N    R0,??DataTable7_10  ;; 0x4002c000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x800
        LDR.N    R1,??DataTable7_10  ;; 0x4002c000
        STR      R0,[R1, #+0]
//  394     uint8 Bit_Much = (Flash_SPI_PTR->CTAR[0] & SPI_CTAR_FMSZ_MASK)>>SPI_CTAR_FMSZ_SHIFT;
        LDR.N    R0,??DataTable7_14  ;; 0x4002c00c
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+27
        ANDS     R5,R0,#0xF
//  395     do
//  396     {
//  397         //v_DSPI_SetFrameSize(8);
//  398         v_DSPI_PushTx(0x05,1,1,0,CTAR0); // 
??b_Flash_EnsureRest_0:
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+1
        MOVS     R0,#+5
        BL       v_DSPI_PushTx
//  399         v_DSPI_PushTx(0xFF,0,0,1,CTAR0); // 
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+1
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,#+255
        BL       v_DSPI_PushTx
//  400         if('F' == b_DSPI_PopRx(Tx,&RxCounter,Rec_u8)){return 'F';}
        MOVS     R3,#+0
        ADD      R2,SP,#+4
        MOVS     R1,#+2
        ADD      R0,SP,#+6
        BL       b_DSPI_PoP
        CMP      R0,#+70
        BNE.N    ??b_Flash_EnsureRest_1
        MOVS     R0,#+70
        B.N      ??b_Flash_EnsureRest_2
//  401         if(!(time--)){return 'F';}
??b_Flash_EnsureRest_1:
        MOVS     R0,R4
        SUBS     R4,R0,#+1
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+0
        BNE.N    ??b_Flash_EnsureRest_3
        MOVS     R0,#+70
        B.N      ??b_Flash_EnsureRest_2
//  402     }
//  403     while(Tx[1] & 0x01);//µ±²»Ã¦Ê±Ìø³öÑ­»·
??b_Flash_EnsureRest_3:
        LDRB     R0,[SP, #+7]
        LSLS     R0,R0,#+31
        BMI.N    ??b_Flash_EnsureRest_0
//  404     Flash_SPI_PTR->CTAR[0] |= SPI_CTAR_FMSZ(Bit_Much);
        LDR.N    R0,??DataTable7_14  ;; 0x4002c00c
        LDR      R0,[R0, #+0]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LSLS     R1,R5,#+27
        ANDS     R1,R1,#0x78000000
        ORRS     R0,R1,R0
        LDR.N    R1,??DataTable7_14  ;; 0x4002c00c
        STR      R0,[R1, #+0]
//  405     return 'T';
        MOVS     R0,#+84
??b_Flash_EnsureRest_2:
        POP      {R1-R5,PC}       ;; return
//  406 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_1:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_2:
        DC32     0x4004d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_3:
        DC32     0x4004d004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_4:
        DC32     0x4004d008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_5:
        DC32     0x4004d00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_6:
        DC32     0x4004d028

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_7:
        DC32     0x4004d02c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_8:
        DC32     0x400ff114

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_9:
        DC32     0x400ff100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_10:
        DC32     0x4002c000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_11:
        DC32     0x4002c02c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_12:
        DC32     0x1a0a0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_13:
        DC32     0xc73f0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_14:
        DC32     0x4002c00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_15:
        DC32     0xbe570042

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_16:
        DC32     0x4002c010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_17:
        DC32     0xfe570042

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_18:
        DC32     0x4002c034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_19:
        DC32     0x4002c038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_20:
        DC32     `?<Constant {159, 255, 255, 255}>`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_21:
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
`?<Constant {0, 255}>`:
        DATA
        DC8 0, 255

        SECTION `.rodata`:CONST:REORDER:NOROOT(1)
        DATA
        DC8 0, 0

        END
// 
//    17 bytes in section .bss
//    32 bytes in section .data
//     8 bytes in section .rodata
// 1 148 bytes in section .text
// 
// 1 148 bytes of CODE  memory
//     8 bytes of CONST memory
//    49 bytes of DATA  memory
//
//Errors: none
//Warnings: 2
