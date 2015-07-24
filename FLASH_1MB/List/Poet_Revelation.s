///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     11/Jul/2015  22:04:19 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\Ë³°µÈýºÅ-»ªÄÏÈ /
//                    ü×îºóÆßÌì-7.11\ShunAn_Panel\Poet_Revelation.c           /
//    Command line =  D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\Ë³°µÈýºÅ-»ªÄÏÈ /
//                    ü×îºóÆßÌì-7.11\ShunAn_Panel\Poet_Revelation.c -D IAR    /
//                    -D TWR_K60F120M -lCN D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýº /
//                    Å\´úÂë\Ë³°µÈýºÅ-»ªÄÏÈü×îºóÆßÌì-7.11\FLASH_1MB\List\     /
//                    -lB D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\Ë³°µÈýºÅ-» /
//                    ªÄÏÈü×îºóÆßÌì-7.11\FLASH_1MB\List\ -o                   /
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
//                    ü×îºóÆßÌì-7.11\FLASH_1MB\List\Poet_Revelation.s         /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN C6x8
        EXTERN __aeabi_f2d
        EXTERN __aeabi_memcpy4
        EXTERN m_ImageBeholder_Data
        EXTERN sprintf

        PUBLIC m_ColorOLED_pins
        PUBLIC m_MonoOLED_pins
        PUBLIC v_65kcolor2Mono
        PUBLIC v_ColorRev_6x8str
        PUBLIC v_ColorRev_Beholder_60_185_Output
        PUBLIC v_ColorRev_ImageOutput
        PUBLIC v_ColorRev_PutPoint
        PUBLIC v_ColorRevelation_Init
        PUBLIC v_MonoRev_6x8Str
        PUBLIC v_MonoRev_Fill
        PUBLIC v_MonoRev_Number
        PUBLIC v_MonoRev_PutPixel
        PUBLIC v_MonoRevelation_Init
        PUBLIC v_MonoShow_BlackBar
        PUBLIC v_MonoShow_BlackCutBar
        PUBLIC v_MonoShow_BlackRtAngle
        PUBLIC v_MonoShow_BlackTurning
        PUBLIC v_MonoShow_Buzzer
        PUBLIC v_MonoShow_OutOfTheRtAngle
        PUBLIC v_MonoShow_isLonly
        PUBLIC v_Revelation_WriteBytes
        PUBLIC v_shudderBeforeReve_Init


        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "%g"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "0x%X">`:
        DATA
        DC8 "0x%X"
        DC8 0, 0, 0
// D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\Ë³°µÈýºÅ-»ªÄÏÈü×îºóÆßÌì-7.11\ShunAn_Panel\Poet_Revelation.c
//    1 #include "arm_cm4.h"
//    2 #include "MK60F15.h"
//    3 #include "ShunAn_Lib.h"
//    4 #include "start_ShunAn.h"
//    5 #include "BlessedAlien.h"
//    6 
//    7 #include "Poet_Revelation.h"
//    8 
//    9 #include "Poet_ImageBeholder.h"
//   10 
//   11 #include <stdio.h>
//   12 

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//   13 const s_Revelation_PinSet m_MonoOLED_pins =//m_MonoOLED_pins
m_MonoOLED_pins:
        DATA
        DC32 400FF000H, 13, 400FF080H, 0, 400FF000H, 15, 400FF000H, 17
        DC32 400FF000H, 16
//   14 {.RES_Port = PTA_BASE_PTR,
//   15 .RES_Pin = 13,
//   16 
//   17 .CS_Port = PTC_BASE_PTR,
//   18 .CS_Pin = 0,//C0
//   19 
//   20 .SCLK_Port = PTA_BASE_PTR,
//   21 .SCLK_Pin = 15,
//   22 .SDATA_Port = PTA_BASE_PTR,
//   23 .SDATA_Pin = 17,
//   24 .SDC_Port = PTA_BASE_PTR,
//   25 .SDC_Pin = 16,};//

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//   26 const s_Revelation_PinSet m_ColorOLED_pins =//m_ColorOLED_pins
m_ColorOLED_pins:
        DATA
        DC32 400FF000H, 13, 400FF000H, 14, 400FF000H, 15, 400FF000H, 17
        DC32 400FF000H, 16
//   27 {.RES_Port = PTA_BASE_PTR,
//   28 .RES_Pin = 13,
//   29 
//   30 .CS_Port = PTA_BASE_PTR,
//   31 .CS_Pin = 14,//A14
//   32 
//   33 .SCLK_Port = PTA_BASE_PTR,
//   34 .SCLK_Pin = 15,
//   35 .SDATA_Port = PTA_BASE_PTR,
//   36 .SDATA_Pin = 17,
//   37 .SDC_Port = PTA_BASE_PTR,
//   38 .SDC_Pin = 16,};//
//   39 
//   40 
//   41 
//   42 
//   43 #define de_colorReve_ClearWindow()              do\ 
//   44                                                 {\ 
//   45                                                     color_OLED_WrCmd(0x25);\ 
//   46                                                     color_OLED_WrCmd(0);\ 
//   47                                                     color_OLED_WrCmd(0);\ 
//   48                                                     color_OLED_WrCmd(95);\ 
//   49                                                     color_OLED_WrCmd(63);\ 
//   50                                                 }while(0)
//   51                                                   
//   52                                                   
//   53 #define de_colorReve_ClearRect(x0,y0,xt,yt)     do\ 
//   54                                                 {\ 
//   55                                                     color_OLED_WrCmd(0x25);\ 
//   56                                                     color_OLED_WrCmd(x0);\ 
//   57                                                     color_OLED_WrCmd(y0);\ 
//   58                                                     color_OLED_WrCmd(xt);\ 
//   59                                                     color_OLED_WrCmd(yt);\ 
//   60                                                 }while(0)
//   61 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   62 void v_shudderBeforeReve_Init(void)
//   63 {
v_shudderBeforeReve_Init:
        PUSH     {R7,LR}
//   64     SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK | SIM_SCGC5_PORTC_MASK;
        LDR.W    R0,??DataTable11  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0xA00
        LDR.W    R1,??DataTable11  ;; 0x40048038
        STR      R0,[R1, #+0]
//   65     PORTA_PCR13  |= PORT_PCR_MUX(1);
        LDR.W    R0,??DataTable11_1  ;; 0x40049034
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.W    R1,??DataTable11_1  ;; 0x40049034
        STR      R0,[R1, #+0]
//   66     PORTA_PCR15  |= PORT_PCR_MUX(1);
        LDR.W    R0,??DataTable11_2  ;; 0x4004903c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.W    R1,??DataTable11_2  ;; 0x4004903c
        STR      R0,[R1, #+0]
//   67     PORTA_PCR16  |= PORT_PCR_MUX(1);
        LDR.W    R0,??DataTable11_3  ;; 0x40049040
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.W    R1,??DataTable11_3  ;; 0x40049040
        STR      R0,[R1, #+0]
//   68     PORTA_PCR17  |= PORT_PCR_MUX(1);
        LDR.W    R0,??DataTable11_4  ;; 0x40049044
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.W    R1,??DataTable11_4  ;; 0x40049044
        STR      R0,[R1, #+0]
//   69     PORTA_PCR14  |= PORT_PCR_MUX(1);
        LDR.W    R0,??DataTable11_5  ;; 0x40049038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.W    R1,??DataTable11_5  ;; 0x40049038
        STR      R0,[R1, #+0]
//   70     PORTC_PCR0  |= PORT_PCR_MUX(1);
        LDR.W    R0,??DataTable11_6  ;; 0x4004b000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.W    R1,??DataTable11_6  ;; 0x4004b000
        STR      R0,[R1, #+0]
//   71 //    PORTB_PCR18  |= PORT_PCR_MUX(7);
//   72 //    PORTB_PCR1   |= PORT_PCR_MUX(1);
//   73     RevelationPortPin_Init(m_ColorOLED_pins.SDC_Port,m_ColorOLED_pins.SDC_Pin);
        LDR.W    R0,??DataTable11_7
        LDR      R0,[R0, #+32]
        LDR      R0,[R0, #+20]
        MOVS     R1,#+1
        LDR.W    R2,??DataTable11_7
        LDR      R2,[R2, #+36]
        LSLS     R1,R1,R2
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable11_7
        LDR      R1,[R1, #+32]
        STR      R0,[R1, #+20]
//   74     RevelationPortPin_Init(m_ColorOLED_pins.SCLK_Port,m_ColorOLED_pins.SCLK_Pin);
        LDR.W    R0,??DataTable11_7
        LDR      R0,[R0, #+16]
        LDR      R0,[R0, #+20]
        MOVS     R1,#+1
        LDR.W    R2,??DataTable11_7
        LDR      R2,[R2, #+20]
        LSLS     R1,R1,R2
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable11_7
        LDR      R1,[R1, #+16]
        STR      R0,[R1, #+20]
//   75     RevelationPortPin_Init(m_ColorOLED_pins.SDATA_Port,m_ColorOLED_pins.SDATA_Pin);
        LDR.W    R0,??DataTable11_7
        LDR      R0,[R0, #+24]
        LDR      R0,[R0, #+20]
        MOVS     R1,#+1
        LDR.W    R2,??DataTable11_7
        LDR      R2,[R2, #+28]
        LSLS     R1,R1,R2
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable11_7
        LDR      R1,[R1, #+24]
        STR      R0,[R1, #+20]
//   76     RevelationPortPin_Init(m_ColorOLED_pins.RES_Port,m_ColorOLED_pins.RES_Pin);
        LDR.W    R0,??DataTable11_7
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+20]
        MOVS     R1,#+1
        LDR.W    R2,??DataTable11_7
        LDR      R2,[R2, #+4]
        LSLS     R1,R1,R2
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable11_7
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+20]
//   77     
//   78     RevelationPortPin_Init(m_ColorOLED_pins.CS_Port,m_ColorOLED_pins.CS_Pin);
        LDR.W    R0,??DataTable11_7
        LDR      R0,[R0, #+8]
        LDR      R0,[R0, #+20]
        MOVS     R1,#+1
        LDR.W    R2,??DataTable11_7
        LDR      R2,[R2, #+12]
        LSLS     R1,R1,R2
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable11_7
        LDR      R1,[R1, #+8]
        STR      R0,[R1, #+20]
//   79     RevelationPortPin_Init(m_MonoOLED_pins.CS_Port,m_MonoOLED_pins.CS_Pin);
        LDR.W    R0,??DataTable11_9
        LDR      R0,[R0, #+8]
        LDR      R0,[R0, #+20]
        MOVS     R1,#+1
        LDR.W    R2,??DataTable11_9
        LDR      R2,[R2, #+12]
        LSLS     R1,R1,R2
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable11_9
        LDR      R1,[R1, #+8]
        STR      R0,[R1, #+20]
//   80 //    bin_CS_Init;
//   81     // ÅäÖÃÐÅÏ¢
//   82 //    bin_CS_turn_1;
//   83     //CLK_turn_1;
//   84     Revelation_CLK_1(m_ColorOLED_pins);
        LDR.W    R0,??DataTable11_7
        LDR      R0,[R0, #+16]
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        LDR.W    R2,??DataTable11_7
        LDR      R2,[R2, #+20]
        LSLS     R1,R1,R2
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable11_7
        LDR      R1,[R1, #+16]
        STR      R0,[R1, #+0]
//   85     Revelation_DATA_1(m_ColorOLED_pins);
        LDR.W    R0,??DataTable11_7
        LDR      R0,[R0, #+24]
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        LDR.W    R2,??DataTable11_7
        LDR      R2,[R2, #+28]
        LSLS     R1,R1,R2
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable11_7
        LDR      R1,[R1, #+24]
        STR      R0,[R1, #+0]
//   86     Revelation_REST_0(m_ColorOLED_pins);
        LDR.W    R0,??DataTable11_7
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        LDR.W    R2,??DataTable11_7
        LDR      R2,[R2, #+4]
        LSLS     R1,R1,R2
        BICS     R0,R0,R1
        LDR.W    R1,??DataTable11_7
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+0]
//   87     Revelation_DC_1(m_ColorOLED_pins);
        LDR.W    R0,??DataTable11_7
        LDR      R0,[R0, #+32]
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        LDR.W    R2,??DataTable11_7
        LDR      R2,[R2, #+36]
        LSLS     R1,R1,R2
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable11_7
        LDR      R1,[R1, #+32]
        STR      R0,[R1, #+0]
//   88     
//   89     Revelation_CS_1(m_ColorOLED_pins);
        LDR.W    R0,??DataTable11_7
        LDR      R0,[R0, #+8]
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        LDR.W    R2,??DataTable11_7
        LDR      R2,[R2, #+12]
        LSLS     R1,R1,R2
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable11_7
        LDR      R1,[R1, #+8]
        STR      R0,[R1, #+0]
//   90     Revelation_CS_1(m_MonoOLED_pins);
        LDR.W    R0,??DataTable11_9
        LDR      R0,[R0, #+8]
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        LDR.W    R2,??DataTable11_9
        LDR      R2,[R2, #+12]
        LSLS     R1,R1,R2
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable11_9
        LDR      R1,[R1, #+8]
        STR      R0,[R1, #+0]
//   91     
//   92     for(unsigned short int i = 0;i<1000;i++);//ÑÓÊ±
        MOVS     R0,#+0
        B.N      ??v_shudderBeforeReve_Init_0
??v_shudderBeforeReve_Init_1:
        ADDS     R0,R0,#+1
??v_shudderBeforeReve_Init_0:
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+1000
        BLT.N    ??v_shudderBeforeReve_Init_1
//   93     //DELAY_MS(50);
//   94     Revelation_REST_1(m_ColorOLED_pins);
        LDR.W    R0,??DataTable11_7
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        LDR.W    R2,??DataTable11_7
        LDR      R2,[R2, #+4]
        LSLS     R1,R1,R2
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable11_7
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+0]
//   95     
//   96     //Revelation_CS_1(m_MonoOLED_pins);
//   97 //    Revelation_CS_0(m_ColorOLED_pins);
//   98     v_ColorRevelation_Init();
        BL       v_ColorRevelation_Init
//   99     //Revelation_CS_1(m_MonoOLED_pins);
//  100 //    Revelation_CS_1(m_ColorOLED_pins);
//  101 //    Revelation_CS_0(m_MonoOLED_pins);
//  102     v_MonoRevelation_Init();
        BL       v_MonoRevelation_Init
//  103 //    Revelation_CS_1(m_MonoOLED_pins);
//  104     
//  105 }
        POP      {R0,PC}          ;; return
//  106 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  107 void v_ColorRevelation_Init(void)
//  108 {
v_ColorRevelation_Init:
        PUSH     {R3-R5,LR}
//  109     Revelation_CS_0(m_ColorOLED_pins);
        LDR.W    R0,??DataTable11_7
        LDR      R0,[R0, #+8]
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        LDR.W    R2,??DataTable11_7
        LDR      R2,[R2, #+12]
        LSLS     R1,R1,R2
        BICS     R0,R0,R1
        LDR.W    R1,??DataTable11_7
        LDR      R1,[R1, #+8]
        STR      R0,[R1, #+0]
//  110     color_OLED_WrCmd(0xAD);color_OLED_WrCmd(0x8E);//Select external VCC supply
        MOVS     R2,#+0
        MOVS     R1,#+173
        LDR.W    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
        MOVS     R2,#+0
        MOVS     R1,#+142
        LDR.W    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
//  111     
//  112     color_OLED_WrCmd(0xAE);//Display OFF
        MOVS     R2,#+0
        MOVS     R1,#+174
        LDR.W    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
//  113     
//  114     color_OLED_WrCmd(0x81);color_OLED_WrCmd(255);//A
        MOVS     R2,#+0
        MOVS     R1,#+129
        LDR.W    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
        MOVS     R2,#+0
        MOVS     R1,#+255
        LDR.W    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
//  115     color_OLED_WrCmd(0x82);color_OLED_WrCmd(255);//B
        MOVS     R2,#+0
        MOVS     R1,#+130
        LDR.W    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
        MOVS     R2,#+0
        MOVS     R1,#+255
        LDR.W    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
//  116     color_OLED_WrCmd(0x83);color_OLED_WrCmd(255);//C
        MOVS     R2,#+0
        MOVS     R1,#+131
        LDR.W    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
        MOVS     R2,#+0
        MOVS     R1,#+255
        LDR.W    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
//  117     color_OLED_WrCmd(0x87);color_OLED_WrCmd(0x06);//Master Current Set
        MOVS     R2,#+0
        MOVS     R1,#+135
        LDR.W    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
        MOVS     R2,#+0
        MOVS     R1,#+6
        LDR.W    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
//  118     color_OLED_WrCmd(0x8A);color_OLED_WrCmd(0xFF);//Pre-charge Speed
        MOVS     R2,#+0
        MOVS     R1,#+138
        LDR.W    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
        MOVS     R2,#+0
        MOVS     R1,#+255
        LDR.W    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
//  119     color_OLED_WrCmd(0x8B);color_OLED_WrCmd(0xFF);//
        MOVS     R2,#+0
        MOVS     R1,#+139
        LDR.W    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
        MOVS     R2,#+0
        MOVS     R1,#+255
        LDR.W    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
//  120     color_OLED_WrCmd(0x8C);color_OLED_WrCmd(0xFF);//
        MOVS     R2,#+0
        MOVS     R1,#+140
        LDR.W    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
        MOVS     R2,#+0
        MOVS     R1,#+255
        LDR.W    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
//  121     
//  122     color_OLED_WrCmd(0xA1);color_OLED_WrCmd(0);//Start Line
        MOVS     R2,#+0
        MOVS     R1,#+161
        LDR.W    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
        MOVS     R2,#+0
        MOVS     R1,#+0
        LDR.W    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
//  123     color_OLED_WrCmd(0xA2);color_OLED_WrCmd(0);//vertical offset
        MOVS     R2,#+0
        MOVS     R1,#+162
        LDR.W    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
        MOVS     R2,#+0
        MOVS     R1,#+0
        LDR.W    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
//  124     color_OLED_WrCmd(0xA8);color_OLED_WrCmd(0x3F);//Mutil Ratio
        MOVS     R2,#+0
        MOVS     R1,#+168
        LDR.W    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
        MOVS     R2,#+0
        MOVS     R1,#+63
        LDR.W    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
//  125     
//  126     color_OLED_WrCmd(0xA0);color_OLED_WrCmd(0x62);//Set driver remap and color depth
        MOVS     R2,#+0
        MOVS     R1,#+160
        LDR.W    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
        MOVS     R2,#+0
        MOVS     R1,#+98
        LDR.W    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
//  127     
//  128     color_OLED_WrCmd(0xB9);//Enable Linear Gray Scale Table
        MOVS     R2,#+0
        MOVS     R1,#+185
        LDR.W    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
//  129     
//  130     color_OLED_WrCmd(0xB1);color_OLED_WrCmd(0xFF);//period adjustment
        MOVS     R2,#+0
        MOVS     R1,#+177
        LDR.W    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
        MOVS     R2,#+0
        MOVS     R1,#+255
        LDR.W    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
//  131     color_OLED_WrCmd(0xB3);color_OLED_WrCmd(0xF0);//Display Clock Divider / Oscillator Frequency
        MOVS     R2,#+0
        MOVS     R1,#+179
        LDR.W    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
        MOVS     R2,#+0
        MOVS     R1,#+240
        LDR.W    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
//  132     color_OLED_WrCmd(0xBB);color_OLED_WrCmd(0x3E);//Set COM deselect voltage level
        MOVS     R2,#+0
        MOVS     R1,#+187
        LDR.W    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
        MOVS     R2,#+0
        MOVS     R1,#+62
        LDR.W    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
//  133     
//  134     color_OLED_WrCmd(0xBE);color_OLED_WrCmd(0x3E);//Set COM deselect voltage level
        MOVS     R2,#+0
        MOVS     R1,#+190
        LDR.W    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
        MOVS     R2,#+0
        MOVS     R1,#+62
        LDR.W    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
//  135     
//  136     color_OLED_WrCmd(0xA4);//Normal 
        MOVS     R2,#+0
        MOVS     R1,#+164
        LDR.W    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
//  137     //Çå³ýÈ«ÆÁ
//  138     
//  139     color_OLED_WrCmd(0x2E);//Stop Scrolling
        MOVS     R2,#+0
        MOVS     R1,#+46
        LDR.W    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
//  140     color_OLED_WrCmd(0xAF);//Display On
        MOVS     R2,#+0
        MOVS     R1,#+175
        LDR.W    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
//  141     
//  142     /*------------------------Color-³õÊ¼»¯½áÊø--------------------------------*/
//  143     s_color color_set;
//  144     for(uint8 loop = 0;loop < 96;loop++)
        MOVS     R4,#+0
        B.N      ??v_ColorRevelation_Init_0
//  145     {
//  146         for(uint8 inter = 0;inter < 64;inter++)
//  147         {
//  148             color_set.A_Blue_31 = 0;
??v_ColorRevelation_Init_1:
        MOVS     R0,#+0
        STRB     R0,[SP, #+2]
//  149             color_set.B_Green_63 = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
//  150             color_set.C_Red_31 = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//  151             v_ColorRev_PutPoint(loop,inter,&color_set);
        ADD      R2,SP,#+0
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       v_ColorRev_PutPoint
//  152         }
        ADDS     R5,R5,#+1
??v_ColorRevelation_Init_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+64
        BLT.N    ??v_ColorRevelation_Init_1
        ADDS     R4,R4,#+1
??v_ColorRevelation_Init_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+96
        BGE.N    ??v_ColorRevelation_Init_3
        MOVS     R5,#+0
        B.N      ??v_ColorRevelation_Init_2
//  153     }
//  154     Revelation_CS_1(m_ColorOLED_pins);
??v_ColorRevelation_Init_3:
        LDR.W    R0,??DataTable11_7
        LDR      R0,[R0, #+8]
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        LDR.W    R2,??DataTable11_7
        LDR      R2,[R2, #+12]
        LSLS     R1,R1,R2
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable11_7
        LDR      R1,[R1, #+8]
        STR      R0,[R1, #+0]
//  155 }
        POP      {R0,R4,R5,PC}    ;; return
//  156 
//  157 
//  158 //============================================================================//

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  159 void v_MonoRevelation_Init(void)        
//  160 {
v_MonoRevelation_Init:
        PUSH     {R7,LR}
//  161     Revelation_CS_0(m_MonoOLED_pins);
        LDR.W    R0,??DataTable11_9
        LDR      R0,[R0, #+8]
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        LDR.W    R2,??DataTable11_9
        LDR      R2,[R2, #+12]
        LSLS     R1,R1,R2
        BICS     R0,R0,R1
        LDR.W    R1,??DataTable11_9
        LDR      R1,[R1, #+8]
        STR      R0,[R1, #+0]
//  162     Mono_OLED_WrCmd(0xae);//--turn off oled panel
        MOVS     R2,#+0
        MOVS     R1,#+174
        LDR.W    R0,??DataTable11_9
        BL       v_Revelation_WriteBytes
//  163     Mono_OLED_WrCmd(0x00);//---set low column address
        MOVS     R2,#+0
        MOVS     R1,#+0
        LDR.W    R0,??DataTable11_9
        BL       v_Revelation_WriteBytes
//  164     Mono_OLED_WrCmd(0x10);//---set high column address
        MOVS     R2,#+0
        MOVS     R1,#+16
        LDR.W    R0,??DataTable11_9
        BL       v_Revelation_WriteBytes
//  165     Mono_OLED_WrCmd(0x40);//--set start line address  Set Mapping RAM Display Start Line (0x00~0x3F)
        MOVS     R2,#+0
        MOVS     R1,#+64
        LDR.W    R0,??DataTable11_9
        BL       v_Revelation_WriteBytes
//  166     Mono_OLED_WrCmd(0x81);//--set contrast control register
        MOVS     R2,#+0
        MOVS     R1,#+129
        LDR.W    R0,??DataTable11_9
        BL       v_Revelation_WriteBytes
//  167     Mono_OLED_WrCmd(0xcf); // Set SEG Output Current Brightness
        MOVS     R2,#+0
        MOVS     R1,#+207
        LDR.W    R0,??DataTable11_9
        BL       v_Revelation_WriteBytes
//  168     Mono_OLED_WrCmd(0xa1);//--Set SEG/Column Mapping     0xa0×óÓÒ·´ÖÃ 0xa1Õý³£
        MOVS     R2,#+0
        MOVS     R1,#+161
        LDR.W    R0,??DataTable11_9
        BL       v_Revelation_WriteBytes
//  169     Mono_OLED_WrCmd(0xc8);//Set COM/Row Scan Direction   0xc0ÉÏÏÂ·´ÖÃ 0xc8Õý³£
        MOVS     R2,#+0
        MOVS     R1,#+200
        LDR.W    R0,??DataTable11_9
        BL       v_Revelation_WriteBytes
//  170     Mono_OLED_WrCmd(0xa6);//--set normal display
        MOVS     R2,#+0
        MOVS     R1,#+166
        LDR.W    R0,??DataTable11_9
        BL       v_Revelation_WriteBytes
//  171     Mono_OLED_WrCmd(0xa8);//--set multiplex ratio(1 to 64)
        MOVS     R2,#+0
        MOVS     R1,#+168
        LDR.W    R0,??DataTable11_9
        BL       v_Revelation_WriteBytes
//  172     Mono_OLED_WrCmd(0x3f);//--1/64 duty
        MOVS     R2,#+0
        MOVS     R1,#+63
        LDR.W    R0,??DataTable11_9
        BL       v_Revelation_WriteBytes
//  173     Mono_OLED_WrCmd(0xd3);//-set display offset	Shift Mapping RAM Counter (0x00~0x3F)
        MOVS     R2,#+0
        MOVS     R1,#+211
        LDR.W    R0,??DataTable11_9
        BL       v_Revelation_WriteBytes
//  174     Mono_OLED_WrCmd(0x00);//-not offset
        MOVS     R2,#+0
        MOVS     R1,#+0
        LDR.W    R0,??DataTable11_9
        BL       v_Revelation_WriteBytes
//  175     Mono_OLED_WrCmd(0xd5);//--set display clock divide ratio/oscillator frequency
        MOVS     R2,#+0
        MOVS     R1,#+213
        LDR.W    R0,??DataTable11_9
        BL       v_Revelation_WriteBytes
//  176     Mono_OLED_WrCmd(0x80);//--set divide ratio, Set Clock as 100 Frames/Sec
        MOVS     R2,#+0
        MOVS     R1,#+128
        LDR.W    R0,??DataTable11_9
        BL       v_Revelation_WriteBytes
//  177     Mono_OLED_WrCmd(0xd9);//--set pre-charge period
        MOVS     R2,#+0
        MOVS     R1,#+217
        LDR.W    R0,??DataTable11_9
        BL       v_Revelation_WriteBytes
//  178     Mono_OLED_WrCmd(0xf1);//Set Pre-Charge as 15 Clocks & Discharge as 1 Clock
        MOVS     R2,#+0
        MOVS     R1,#+241
        LDR.W    R0,??DataTable11_9
        BL       v_Revelation_WriteBytes
//  179     Mono_OLED_WrCmd(0xda);//--set com pins hardware configuration
        MOVS     R2,#+0
        MOVS     R1,#+218
        LDR.W    R0,??DataTable11_9
        BL       v_Revelation_WriteBytes
//  180     Mono_OLED_WrCmd(0x12);
        MOVS     R2,#+0
        MOVS     R1,#+18
        LDR.W    R0,??DataTable11_9
        BL       v_Revelation_WriteBytes
//  181     Mono_OLED_WrCmd(0xdb);//--set vcomh
        MOVS     R2,#+0
        MOVS     R1,#+219
        LDR.W    R0,??DataTable11_9
        BL       v_Revelation_WriteBytes
//  182     Mono_OLED_WrCmd(0x40);//Set VCOM Deselect Level
        MOVS     R2,#+0
        MOVS     R1,#+64
        LDR.W    R0,??DataTable11_9
        BL       v_Revelation_WriteBytes
//  183     Mono_OLED_WrCmd(0x20);//-Set Page Addressing Mode (0x00/0x01/0x02)
        MOVS     R2,#+0
        MOVS     R1,#+32
        LDR.W    R0,??DataTable11_9
        BL       v_Revelation_WriteBytes
//  184     Mono_OLED_WrCmd(0x02);//
        MOVS     R2,#+0
        MOVS     R1,#+2
        LDR.W    R0,??DataTable11_9
        BL       v_Revelation_WriteBytes
//  185     Mono_OLED_WrCmd(0x8d);//--set Charge Pump enable/disable
        MOVS     R2,#+0
        MOVS     R1,#+141
        LDR.W    R0,??DataTable11_9
        BL       v_Revelation_WriteBytes
//  186     Mono_OLED_WrCmd(0x14);//--set(0x10) disable
        MOVS     R2,#+0
        MOVS     R1,#+20
        LDR.W    R0,??DataTable11_9
        BL       v_Revelation_WriteBytes
//  187     Mono_OLED_WrCmd(0xa4);// Disable Entire Display On (0xa4/0xa5)
        MOVS     R2,#+0
        MOVS     R1,#+164
        LDR.W    R0,??DataTable11_9
        BL       v_Revelation_WriteBytes
//  188     Mono_OLED_WrCmd(0xa6);// Disable Inverse Display On (0xa6/a7) 
        MOVS     R2,#+0
        MOVS     R1,#+166
        LDR.W    R0,??DataTable11_9
        BL       v_Revelation_WriteBytes
//  189     Mono_OLED_WrCmd(0xaf);//--turn on oled panel
        MOVS     R2,#+0
        MOVS     R1,#+175
        LDR.W    R0,??DataTable11_9
        BL       v_Revelation_WriteBytes
//  190     
//  191     v_MonoRev_Fill(0x00);  //³õÊ¼ÇåÆÁ
        MOVS     R0,#+0
        BL       v_MonoRev_Fill
//  192     
//  193     Mono_OLED_WrCmd(0xb0+0);                         // ÉèÖÃÄ¿±êÒ³µØÖ·£¨yÖá£©
        MOVS     R2,#+0
        MOVS     R1,#+176
        LDR.W    R0,??DataTable11_9
        BL       v_Revelation_WriteBytes
//  194     Mono_OLED_WrCmd(((0&0xf0)>>4)|0x10);             // High
        MOVS     R2,#+0
        MOVS     R1,#+16
        LDR.W    R0,??DataTable11_9
        BL       v_Revelation_WriteBytes
//  195     Mono_OLED_WrCmd(0&0x0f);                         // Low
        MOVS     R2,#+0
        MOVS     R1,#+0
        LDR.W    R0,??DataTable11_9
        BL       v_Revelation_WriteBytes
//  196     Revelation_CS_1(m_MonoOLED_pins);
        LDR.W    R0,??DataTable11_9
        LDR      R0,[R0, #+8]
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        LDR.W    R2,??DataTable11_9
        LDR      R2,[R2, #+12]
        LSLS     R1,R1,R2
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable11_9
        LDR      R1,[R1, #+8]
        STR      R0,[R1, #+0]
//  197 } 
        POP      {R0,PC}          ;; return
//  198 
//  199 
//  200 //============================================================================//
//  201 //Revelation

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  202 void v_Revelation_WriteBytes(const s_Revelation_PinSet * owner,uint8 data,uint8 data_command_choose)
//  203 {
v_Revelation_WriteBytes:
        PUSH     {R4,R5,LR}
        SUB      SP,SP,#+44
        MOVS     R3,R0
        MOVS     R4,R1
        MOVS     R5,R2
//  204 //    bin_CS_turn_0;
//  205     s_Revelation_PinSet Temp = * owner;
        ADD      R0,SP,#+0
        MOVS     R1,R3
        MOVS     R2,#+40
        BL       __aeabi_memcpy4
//  206     uint8 loop = 8;
        MOVS     R0,#+8
//  207     if(data_command_choose)//Data=>1//Command=>0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??v_Revelation_WriteBytes_0
//  208     {
//  209         Revelation_DC_1(Temp);//DC=0//DC=1
        LDR      R1,[SP, #+32]
        LDR      R1,[R1, #+0]
        MOVS     R2,#+1
        LDR      R3,[SP, #+36]
        LSLS     R2,R2,R3
        ORRS     R1,R2,R1
        LDR      R2,[SP, #+32]
        STR      R1,[R2, #+0]
        B.N      ??v_Revelation_WriteBytes_1
//  210     }
//  211     else
//  212     {
//  213         Revelation_DC_0(Temp);//DC=0//DC=1
??v_Revelation_WriteBytes_0:
        LDR      R1,[SP, #+32]
        LDR      R1,[R1, #+0]
        MOVS     R2,#+1
        LDR      R3,[SP, #+36]
        LSLS     R2,R2,R3
        BICS     R1,R1,R2
        LDR      R2,[SP, #+32]
        STR      R1,[R2, #+0]
//  214     }
//  215     Revelation_CLK_0(Temp);//CLK/D0=0
??v_Revelation_WriteBytes_1:
        LDR      R1,[SP, #+16]
        LDR      R1,[R1, #+0]
        MOVS     R2,#+1
        LDR      R3,[SP, #+20]
        LSLS     R2,R2,R3
        BICS     R1,R1,R2
        LDR      R2,[SP, #+16]
        STR      R1,[R2, #+0]
        B.N      ??v_Revelation_WriteBytes_2
//  216     while(loop --)
//  217     {
//  218         if(data&0x80){Revelation_DATA_1(Temp);}//SDA/D1=1
//  219         else{Revelation_DATA_0(Temp);}//SDA/D1=0
??v_Revelation_WriteBytes_3:
        LDR      R1,[SP, #+24]
        LDR      R1,[R1, #+0]
        MOVS     R2,#+1
        LDR      R3,[SP, #+28]
        LSLS     R2,R2,R3
        BICS     R1,R1,R2
        LDR      R2,[SP, #+24]
        STR      R1,[R2, #+0]
//  220         Revelation_CLK_1(Temp);//SCL//CLK/D0=1
??v_Revelation_WriteBytes_4:
        LDR      R1,[SP, #+16]
        LDR      R1,[R1, #+0]
        MOVS     R2,#+1
        LDR      R3,[SP, #+20]
        LSLS     R2,R2,R3
        ORRS     R1,R2,R1
        LDR      R2,[SP, #+16]
        STR      R1,[R2, #+0]
//  221         Revelation_CLK_0(Temp);//SCL//CLK/D0=0    
        LDR      R1,[SP, #+16]
        LDR      R1,[R1, #+0]
        MOVS     R2,#+1
        LDR      R3,[SP, #+20]
        LSLS     R2,R2,R3
        BICS     R1,R1,R2
        LDR      R2,[SP, #+16]
        STR      R1,[R2, #+0]
//  222         data<<=1;    
        LSLS     R4,R4,#+1
??v_Revelation_WriteBytes_2:
        MOVS     R1,R0
        SUBS     R0,R1,#+1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??v_Revelation_WriteBytes_5
        LSLS     R1,R4,#+24
        BPL.N    ??v_Revelation_WriteBytes_3
        LDR      R1,[SP, #+24]
        LDR      R1,[R1, #+0]
        MOVS     R2,#+1
        LDR      R3,[SP, #+28]
        LSLS     R2,R2,R3
        ORRS     R1,R2,R1
        LDR      R2,[SP, #+24]
        STR      R1,[R2, #+0]
        B.N      ??v_Revelation_WriteBytes_4
//  223     }
//  224 //    bin_CS_turn_1;
//  225 }
??v_Revelation_WriteBytes_5:
        ADD      SP,SP,#+44
        POP      {R4,R5,PC}       ;; return
//  226 
//  227 
//  228 //============================================================================//
//  229 //»­µã

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  230 void v_ColorRev_PutPoint(uint8 x,uint8 y,s_color * color)
//  231 {
v_ColorRev_PutPoint:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  232     Revelation_CS_0(m_ColorOLED_pins);
        LDR.W    R0,??DataTable11_7
        LDR      R0,[R0, #+8]
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        LDR.W    R2,??DataTable11_7
        LDR      R2,[R2, #+12]
        LSLS     R1,R1,R2
        BICS     R0,R0,R1
        LDR.W    R1,??DataTable11_7
        LDR      R1,[R1, #+8]
        STR      R0,[R1, #+0]
//  233     color_OLED_WrCmd(0x15);color_OLED_WrCmd(x);color_OLED_WrCmd(95);//Setup Column
        MOVS     R2,#+0
        MOVS     R1,#+21
        LDR.W    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
        MOVS     R2,#+0
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
        MOVS     R2,#+0
        MOVS     R1,#+95
        LDR.W    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
//  234     color_OLED_WrCmd(0x75);color_OLED_WrCmd(y);color_OLED_WrCmd(63);//Setup Row
        MOVS     R2,#+0
        MOVS     R1,#+117
        LDR.W    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
        MOVS     R2,#+0
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
        MOVS     R2,#+0
        MOVS     R1,#+63
        LDR.W    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
//  235     color_OLED_WrDat((color->C_Red_31 << 3)|(color->B_Green_63 >> 3));
        MOVS     R2,#+1
        LDRB     R0,[R6, #+0]
        LDRB     R1,[R6, #+1]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSRS     R1,R1,#+3
        ORRS     R1,R1,R0, LSL #+3
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
//  236     color_OLED_WrDat((color->B_Green_63 << 5)|(color->A_Blue_31));//color
        MOVS     R2,#+1
        LDRB     R0,[R6, #+1]
        LDRB     R1,[R6, #+2]
        ORRS     R1,R1,R0, LSL #+5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
//  237     Revelation_CS_1(m_ColorOLED_pins);
        LDR.W    R0,??DataTable11_7
        LDR      R0,[R0, #+8]
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        LDR.W    R2,??DataTable11_7
        LDR      R2,[R2, #+12]
        LSLS     R1,R1,R2
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable11_7
        LDR      R1,[R1, #+8]
        STR      R0,[R1, #+0]
//  238 }
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  239 void v_MonoRev_PutPixel(uint8 x,uint8 y)
//  240 {
v_MonoRev_PutPixel:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//  241     Revelation_CS_0(m_MonoOLED_pins);
        LDR.W    R0,??DataTable11_9
        LDR      R0,[R0, #+8]
        LDR      R0,[R0, #+0]
        MOVS     R2,#+1
        LDR.W    R3,??DataTable11_9
        LDR      R3,[R3, #+12]
        LSLS     R2,R2,R3
        BICS     R0,R0,R2
        LDR.W    R2,??DataTable11_9
        LDR      R2,[R2, #+8]
        STR      R0,[R2, #+0]
//  242     uint8 data1;  //data1µ±Ç°µãµÄÊý¾Ý 
//  243     data1 = 0x01<<(y%8); 	
        MOVS     R0,#+1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R2,#+8
        SDIV     R3,R1,R2
        MLS      R3,R3,R2,R1
        LSLS     R5,R0,R3
//  244     Mono_OLED_WrCmd(0xb0+(y>>3));//ÉèÖÃÒ³ºÅ£¬yÓÒÒÆ3Î»Ïàµ±ÓÚ³ýÒÔ8£¬¼´ÓÉÐÐºÅµÃ³öÒ³ºÅ
        MOVS     R2,#+0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSRS     R0,R1,#+3
        SUBS     R1,R0,#+80
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable11_9
        BL       v_Revelation_WriteBytes
//  245     Mono_OLED_WrCmd(((x&0xf0)>>4)|0x10);//ÉèÖÃÁÐºÅµÄ¸ß4Î»
        MOVS     R2,#+0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSRS     R0,R4,#+4
        ORRS     R1,R0,#0x10
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable11_9
        BL       v_Revelation_WriteBytes
//  246     Mono_OLED_WrCmd(x&0x0f);//ÉèÖÃÁÐºÅµÄµÍ4Î»
        MOVS     R2,#+0
        ANDS     R1,R4,#0xF
        LDR.W    R0,??DataTable11_9
        BL       v_Revelation_WriteBytes
//  247     Mono_OLED_WrDat(data1); 	 
        MOVS     R2,#+1
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable11_9
        BL       v_Revelation_WriteBytes
//  248     Revelation_CS_1(m_MonoOLED_pins);
        LDR.W    R0,??DataTable11_9
        LDR      R0,[R0, #+8]
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        LDR.W    R2,??DataTable11_9
        LDR      R2,[R2, #+12]
        LSLS     R1,R1,R2
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable11_9
        LDR      R1,[R1, #+8]
        STR      R0,[R1, #+0]
//  249 }
        POP      {R0,R4,R5,PC}    ;; return
//  250 //============================================================================//
//  251 //»Ò½×

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  252 void v_65kcolor2Mono(uint8 MonoValue,s_color * color)
//  253 {
//  254     //256 => 64
//  255     //0   => 0
//  256     MonoValue = (uint8)(-((float)MonoValue*(float)MonoValue)/1024.f + ((float)MonoValue)/2.f);//¸ß¹âÑ¹Ëõ
v_65kcolor2Mono:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        VMOV     S0,R0
        VCVT.F32.U32 S0,S0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        VMOV     S1,R0
        VCVT.F32.U32 S1,S1
        VNMUL.F32 S0,S0,S1
        VLDR.W   S1,??DataTable8  ;; 0x44800000
        VDIV.F32 S0,S0,S1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        VMOV     S1,R0
        VCVT.F32.U32 S1,S1
        VMOV.F32 S2,#2.0
        VDIV.F32 S1,S1,S2
        VADD.F32 S0,S0,S1
        VCVT.S32.F32 S0,S0
        VMOV     R0,S0
//  257     color->C_Red_31 = MonoValue >> 1;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R2,R0,#+1
        STRB     R2,[R1, #+0]
//  258     color->B_Green_63 = MonoValue;
        STRB     R0,[R1, #+1]
//  259     color->A_Blue_31 = MonoValue >> 1;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+1
        STRB     R0,[R1, #+2]
//  260 }
        BX       LR               ;; return
//  261 
//  262 
//  263 //============================================================================//
//  264 //»Ò½×ÇåÆÁ

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  265 void v_MonoRev_Fill(uint8 bmp_data)
//  266 {
v_MonoRev_Fill:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
//  267     Revelation_CS_0(m_MonoOLED_pins);
        LDR.W    R0,??DataTable11_9
        LDR      R0,[R0, #+8]
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        LDR.W    R2,??DataTable11_9
        LDR      R2,[R2, #+12]
        LSLS     R1,R1,R2
        BICS     R0,R0,R1
        LDR.W    R1,??DataTable11_9
        LDR      R1,[R1, #+8]
        STR      R0,[R1, #+0]
//  268     uint8 y,x;	
//  269     for(y=0;y<8;y++)
        MOVS     R5,#+0
        B.N      ??v_MonoRev_Fill_0
//  270     {
//  271         Mono_OLED_WrCmd(0xb0+y);
//  272         Mono_OLED_WrCmd(0x01);
//  273         Mono_OLED_WrCmd(0x10);
//  274         for(x=0;x < DE_MonoReve_X_WIDTH;x++)
//  275         {
//  276             Mono_OLED_WrDat(bmp_data);
??v_MonoRev_Fill_1:
        MOVS     R2,#+1
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable11_9
        BL       v_Revelation_WriteBytes
//  277         }
        ADDS     R6,R6,#+1
??v_MonoRev_Fill_2:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+128
        BLT.N    ??v_MonoRev_Fill_1
        ADDS     R5,R5,#+1
??v_MonoRev_Fill_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+8
        BGE.N    ??v_MonoRev_Fill_3
        MOVS     R2,#+0
        SUBS     R1,R5,#+80
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable11_9
        BL       v_Revelation_WriteBytes
        MOVS     R2,#+0
        MOVS     R1,#+1
        LDR.W    R0,??DataTable11_9
        BL       v_Revelation_WriteBytes
        MOVS     R2,#+0
        MOVS     R1,#+16
        LDR.W    R0,??DataTable11_9
        BL       v_Revelation_WriteBytes
        MOVS     R6,#+0
        B.N      ??v_MonoRev_Fill_2
//  278     }
//  279     Revelation_CS_1(m_MonoOLED_pins);
??v_MonoRev_Fill_3:
        LDR.W    R0,??DataTable11_9
        LDR      R0,[R0, #+8]
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        LDR.W    R2,??DataTable11_9
        LDR      R2,[R2, #+12]
        LSLS     R1,R1,R2
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable11_9
        LDR      R1,[R1, #+8]
        STR      R0,[R1, #+0]
//  280 }
        POP      {R4-R6,PC}       ;; return
//  281 
//  282 
//  283 //============================================================================//
//  284 //»Ò½×Êä³ö×Ö·û´®

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  285 void v_MonoRev_6x8Str(uint8 x,uint8 y,char ch[],uint8 isUnderline)
//  286 {
v_MonoRev_6x8Str:
        PUSH     {R4-R10,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
//  287     Revelation_CS_0(m_MonoOLED_pins);
        LDR.W    R0,??DataTable11_9
        LDR      R0,[R0, #+8]
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        LDR.W    R2,??DataTable11_9
        LDR      R2,[R2, #+12]
        LSLS     R1,R1,R2
        BICS     R0,R0,R1
        LDR.W    R1,??DataTable11_9
        LDR      R1,[R1, #+8]
        STR      R0,[R1, #+0]
//  288     uint8 c=0,i=0,j=0;
        MOVS     R8,#+0
        MOVS     R9,#+0
        MOVS     R10,#+0
        B.N      ??v_MonoRev_6x8Str_0
//  289     while (ch[j]!='\0')
//  290     {    
//  291         c =ch[j]-32;
//  292         if(x>126){x=0;y++;} // MOD(126,6) = 0
//  293         /////
//  294         Mono_OLED_WrCmd(0xb0+y);
//  295         Mono_OLED_WrCmd(((x&0xf0)>>4)|0x10);
//  296         Mono_OLED_WrCmd(x&0x0f);  
//  297         /////
//  298         if(1 == isUnderline)
//  299         {
//  300             for(i=0;i<6;i++){Mono_OLED_WrDat(C6x8[c][i] | 0x80);}
//  301         }
//  302         else
//  303         {
//  304             for(i=0;i<6;i++){Mono_OLED_WrDat(C6x8[c][i]);}
??v_MonoRev_6x8Str_1:
        MOVS     R2,#+1
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        MOVS     R0,#+6
        LDR.W    R1,??DataTable11_10
        MLA      R0,R0,R8,R1
        LDRB     R1,[R9, R0]
        LDR.W    R0,??DataTable11_9
        BL       v_Revelation_WriteBytes
        ADDS     R9,R9,#+1
??v_MonoRev_6x8Str_2:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+6
        BLT.N    ??v_MonoRev_6x8Str_1
//  305         }
//  306         
//  307         x+=6;
??v_MonoRev_6x8Str_3:
        ADDS     R4,R4,#+6
//  308         j++;
        ADDS     R10,R10,#+1
??v_MonoRev_6x8Str_0:
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        LDRB     R0,[R10, R6]
        CMP      R0,#+0
        BEQ.N    ??v_MonoRev_6x8Str_4
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        LDRB     R0,[R10, R6]
        SUBS     R8,R0,#+32
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+127
        BLT.N    ??v_MonoRev_6x8Str_5
        MOVS     R4,#+0
        ADDS     R5,R5,#+1
??v_MonoRev_6x8Str_5:
        MOVS     R2,#+0
        SUBS     R1,R5,#+80
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable11_9
        BL       v_Revelation_WriteBytes
        MOVS     R2,#+0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSRS     R0,R4,#+4
        ORRS     R1,R0,#0x10
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable11_9
        BL       v_Revelation_WriteBytes
        MOVS     R2,#+0
        ANDS     R1,R4,#0xF
        LDR.W    R0,??DataTable11_9
        BL       v_Revelation_WriteBytes
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+1
        BNE.N    ??v_MonoRev_6x8Str_6
        MOVS     R9,#+0
??v_MonoRev_6x8Str_7:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+6
        BGE.N    ??v_MonoRev_6x8Str_3
        MOVS     R2,#+1
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        MOVS     R0,#+6
        LDR.W    R1,??DataTable11_10
        MLA      R0,R0,R8,R1
        LDRB     R0,[R9, R0]
        ORRS     R1,R0,#0x80
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable11_9
        BL       v_Revelation_WriteBytes
        ADDS     R9,R9,#+1
        B.N      ??v_MonoRev_6x8Str_7
??v_MonoRev_6x8Str_6:
        MOVS     R9,#+0
        B.N      ??v_MonoRev_6x8Str_2
//  309     }
//  310     Revelation_CS_1(m_MonoOLED_pins);
??v_MonoRev_6x8Str_4:
        LDR.W    R0,??DataTable11_9
        LDR      R0,[R0, #+8]
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        LDR.W    R2,??DataTable11_9
        LDR      R2,[R2, #+12]
        LSLS     R1,R1,R2
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable11_9
        LDR      R1,[R1, #+8]
        STR      R0,[R1, #+0]
//  311 }
        POP      {R4-R10,PC}      ;; return
//  312 //Êä³ö²ÊÉ«Str

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  313 void v_ColorRev_6x8str(uint16 X,uint16 Y,s_color * color,char ch[])
//  314 {
v_ColorRev_6x8str:
        PUSH     {R4-R10,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
//  315     Revelation_CS_0(m_ColorOLED_pins);
        LDR.W    R0,??DataTable11_7
        LDR      R0,[R0, #+8]
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        LDR.N    R2,??DataTable11_7
        LDR      R2,[R2, #+12]
        LSLS     R1,R1,R2
        BICS     R0,R0,R1
        LDR.N    R1,??DataTable11_7
        LDR      R1,[R1, #+8]
        STR      R0,[R1, #+0]
//  316     uint8 char_Num = 0; // ÏÔÊ¾¸öÊýÊýÁ¿
        MOVS     R9,#+0
//  317     for(uint8 Line_show = 0;Line_show < 8;Line_show++) // ÐÐÏÔÊ¾ - 8
        MOVS     R8,#+0
        B.N      ??v_ColorRev_6x8str_0
//  318     {
//  319         /////
//  320         color_OLED_WrCmd(0x15);color_OLED_WrCmd(X);color_OLED_WrCmd(95);//Setup Column
//  321         color_OLED_WrCmd(0x75);color_OLED_WrCmd(Y + Line_show);color_OLED_WrCmd(63);//Setup Row
//  322         /////
//  323         while('\0' != ch[char_Num]) // ¼ì²âÊÇ·ñµ½×îºó
//  324         {
//  325             for(uint8 loop = 0;loop < 6;loop++) // ÁÐ¿ØÖÆ - 6
//  326             {
//  327                 uint8 c = ch[char_Num] - 32;
//  328                 if(0 != (C6x8[c][loop]&(1<<(7-Line_show)))) // ÈôÎªÕæÔòÎª¿Õ£¬ÈôÎª¼ÙÔòÎªÊµÔÚ
//  329                 {
//  330                     color_OLED_WrDat((color->C_Red_31 << 3)|(color->B_Green_63 >> 3));
//  331                     color_OLED_WrDat((color->B_Green_63 << 5)|(color->A_Blue_31));//color
//  332                 }
//  333                 else
//  334                 {
//  335                     color_OLED_WrDat(0);
//  336                     color_OLED_WrDat(0);//black color
//  337                 }
//  338             }
//  339             char_Num ++; // ×Ö·ûÒÆ¶¯
//  340         }
//  341         char_Num = 0; // »Ø¸´×îÔç×Ö·û
??v_ColorRev_6x8str_1:
        MOVS     R9,#+0
        ADDS     R8,R8,#+1
??v_ColorRev_6x8str_0:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+8
        BGE.N    ??v_ColorRev_6x8str_2
        MOVS     R2,#+0
        MOVS     R1,#+21
        LDR.N    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
        MOVS     R2,#+0
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
        MOVS     R2,#+0
        MOVS     R1,#+95
        LDR.N    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
        MOVS     R2,#+0
        MOVS     R1,#+117
        LDR.N    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
        MOVS     R2,#+0
        ADDS     R1,R8,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
        MOVS     R2,#+0
        MOVS     R1,#+63
        LDR.N    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
        B.N      ??v_ColorRev_6x8str_3
??v_ColorRev_6x8str_4:
        ADDS     R9,R9,#+1
??v_ColorRev_6x8str_3:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        LDRB     R0,[R9, R7]
        CMP      R0,#+0
        BEQ.N    ??v_ColorRev_6x8str_1
        MOVS     R10,#+0
        B.N      ??v_ColorRev_6x8str_5
??v_ColorRev_6x8str_6:
        MOVS     R2,#+1
        MOVS     R1,#+0
        LDR.N    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
        MOVS     R2,#+1
        MOVS     R1,#+0
        LDR.N    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
??v_ColorRev_6x8str_7:
        ADDS     R10,R10,#+1
??v_ColorRev_6x8str_5:
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        CMP      R10,#+6
        BGE.N    ??v_ColorRev_6x8str_4
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        LDRB     R0,[R9, R7]
        SUBS     R0,R0,#+32
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R1,#+6
        LDR.N    R2,??DataTable11_10
        MLA      R0,R1,R0,R2
        LDRB     R0,[R10, R0]
        MOVS     R1,#+1
        RSBS     R2,R8,#+7
        LSLS     R1,R1,R2
        TST      R0,R1
        BEQ.N    ??v_ColorRev_6x8str_6
        MOVS     R2,#+1
        LDRB     R0,[R6, #+0]
        LDRB     R1,[R6, #+1]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSRS     R1,R1,#+3
        ORRS     R1,R1,R0, LSL #+3
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
        MOVS     R2,#+1
        LDRB     R0,[R6, #+1]
        LDRB     R1,[R6, #+2]
        ORRS     R1,R1,R0, LSL #+5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
        B.N      ??v_ColorRev_6x8str_7
//  342     }
//  343     Revelation_CS_1(m_ColorOLED_pins);
??v_ColorRev_6x8str_2:
        LDR.N    R0,??DataTable11_7
        LDR      R0,[R0, #+8]
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        LDR.N    R2,??DataTable11_7
        LDR      R2,[R2, #+12]
        LSLS     R1,R1,R2
        ORRS     R0,R1,R0
        LDR.N    R1,??DataTable11_7
        LDR      R1,[R1, #+8]
        STR      R0,[R1, #+0]
//  344 }
        POP      {R4-R10,PC}      ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8:
        DC32     0x44800000
//  345 
//  346 
//  347 //Êä³ö²ÊÉ«Image

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  348 void v_ColorRev_ImageOutput(uint8 color[][64])
//  349 {
v_ColorRev_ImageOutput:
        PUSH     {R4-R6,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
//  350     Revelation_CS_0(m_ColorOLED_pins);
        LDR.N    R0,??DataTable11_7
        LDR      R0,[R0, #+8]
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        LDR.N    R2,??DataTable11_7
        LDR      R2,[R2, #+12]
        LSLS     R1,R1,R2
        BICS     R0,R0,R1
        LDR.N    R1,??DataTable11_7
        LDR      R1,[R1, #+8]
        STR      R0,[R1, #+0]
//  351     s_color RGBcolor;
//  352     for(uint8 Line_show = 0;Line_show < DE_ColorReve_Y_WIDTH;Line_show++) // ÐÐÏÔÊ¾ - 8
        MOVS     R5,#+0
        B.N      ??v_ColorRev_ImageOutput_0
//  353     {
//  354         /////
//  355         color_OLED_WrCmd(0x15);color_OLED_WrCmd(0);color_OLED_WrCmd(95);//Setup Column
//  356         color_OLED_WrCmd(0x75);color_OLED_WrCmd(Line_show);color_OLED_WrCmd(63);//Setup Row
//  357         /////
//  358         for(uint8 X_show = 0;X_show < DE_ColorReve_X_WIDTH;X_show++)
//  359         {
//  360             v_65kcolor2Mono(color[X_show][Line_show],&RGBcolor);
??v_ColorRev_ImageOutput_1:
        ADD      R1,SP,#+0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R0,#+64
        MLA      R0,R0,R6,R4
        LDRB     R0,[R5, R0]
        BL       v_65kcolor2Mono
//  361             color_OLED_WrDat((RGBcolor.C_Red_31 << 3)|(RGBcolor.B_Green_63 >> 3));
        MOVS     R2,#+1
        LDRB     R0,[SP, #+0]
        LDRB     R1,[SP, #+1]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSRS     R1,R1,#+3
        ORRS     R1,R1,R0, LSL #+3
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
//  362             color_OLED_WrDat((RGBcolor.B_Green_63 << 5)|(RGBcolor.A_Blue_31));//color
        MOVS     R2,#+1
        LDRB     R0,[SP, #+1]
        LDRB     R1,[SP, #+2]
        ORRS     R1,R1,R0, LSL #+5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
//  363         }
        ADDS     R6,R6,#+1
??v_ColorRev_ImageOutput_2:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+96
        BLT.N    ??v_ColorRev_ImageOutput_1
        ADDS     R5,R5,#+1
??v_ColorRev_ImageOutput_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+64
        BGE.N    ??v_ColorRev_ImageOutput_3
        MOVS     R2,#+0
        MOVS     R1,#+21
        LDR.N    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
        MOVS     R2,#+0
        MOVS     R1,#+0
        LDR.N    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
        MOVS     R2,#+0
        MOVS     R1,#+95
        LDR.N    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
        MOVS     R2,#+0
        MOVS     R1,#+117
        LDR.N    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
        MOVS     R2,#+0
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
        MOVS     R2,#+0
        MOVS     R1,#+63
        LDR.N    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
        MOVS     R6,#+0
        B.N      ??v_ColorRev_ImageOutput_2
//  364     }
//  365     Revelation_CS_1(m_ColorOLED_pins);
??v_ColorRev_ImageOutput_3:
        LDR.N    R0,??DataTable11_7
        LDR      R0,[R0, #+8]
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        LDR.N    R2,??DataTable11_7
        LDR      R2,[R2, #+12]
        LSLS     R1,R1,R2
        ORRS     R0,R1,R0
        LDR.N    R1,??DataTable11_7
        LDR      R1,[R1, #+8]
        STR      R0,[R1, #+0]
//  366 }
        POP      {R0,R1,R4-R6,PC}  ;; return
//  367 
//  368 
//  369 //============================================================================//

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  370 void v_MonoRev_Number(uint8 x,uint8 y,float number,uint8 numCounting)
//  371 {
v_MonoRev_Number:
        PUSH     {R4,R5,LR}
        SUB      SP,SP,#+28
        MOVS     R4,R0
        MOVS     R5,R1
//  372     char numStr[21];
//  373     if(10 == numCounting)
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+10
        BNE.N    ??v_MonoRev_Number_0
//  374     {
//  375         sprintf(numStr,"%g",number);
        VMOV     R0,S0
        BL       __aeabi_f2d
        MOVS     R2,R0
        MOVS     R3,R1
        ADR.N    R1,??DataTable11_8  ;; 0x25, 0x67, 0x00, 0x00
        ADD      R0,SP,#+0
        BL       sprintf
//  376     }
//  377     else if(16 == numCounting)
//  378     {
//  379         sprintf(numStr,"0x%X",(uint8)number);
//  380     }
//  381     else
//  382     {
//  383         return;
//  384     }
//  385     
//  386     v_MonoRev_6x8Str(x,y,numStr,0);
??v_MonoRev_Number_1:
        MOVS     R3,#+0
        ADD      R2,SP,#+0
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       v_MonoRev_6x8Str
//  387 }
??v_MonoRev_Number_2:
        ADD      SP,SP,#+28
        POP      {R4,R5,PC}       ;; return
??v_MonoRev_Number_0:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+16
        BNE.N    ??v_MonoRev_Number_3
        VCVT.S32.F32 S0,S0
        VMOV     R2,S0
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR.N    R1,??DataTable11_11
        ADD      R0,SP,#+0
        BL       sprintf
        B.N      ??v_MonoRev_Number_1
??v_MonoRev_Number_3:
        B.N      ??v_MonoRev_Number_2
//  388 
//  389 
//  390 //============================================================================//
//  391 //ÌØÊâ¹¦ÄÜº¯Êý

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  392 void v_ColorRev_Beholder_60_185_Output()
//  393 {
v_ColorRev_Beholder_60_185_Output:
        PUSH     {R4,R5,LR}
        SUB      SP,SP,#+468
        SUB      SP,SP,#+5120
//  394     Revelation_CS_0(m_ColorOLED_pins);
        LDR.N    R0,??DataTable11_7
        LDR      R0,[R0, #+8]
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        LDR.N    R2,??DataTable11_7
        LDR      R2,[R2, #+12]
        LSLS     R1,R1,R2
        BICS     R0,R0,R1
        LDR.N    R1,??DataTable11_7
        LDR      R1,[R1, #+8]
        STR      R0,[R1, #+0]
//  395     s_color RGBcolor;
//  396     uint8 color_Message[60][93];
//  397     
//  398     for(uint8 Line_show = 0;Line_show < 60;Line_show++) // ÐÐÏÔÊ¾ - 8
        MOVS     R0,#+0
        B.N      ??v_ColorRev_Beholder_60_185_Output_0
//  399     {//Êý¾ÝÔÝ´æ
//  400         for(uint8 X_show = 0;X_show < 93;X_show++)
//  401         {
//  402             color_Message[Line_show][X_show] = m_ImageBeholder_Data[Line_show][X_show * 2];
??v_ColorRev_Beholder_60_185_Output_1:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R2,#+93
        ADD      R3,SP,#+4
        MLA      R2,R2,R0,R3
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R3,#+185
        LDR.N    R4,??DataTable11_12
        MLA      R3,R3,R0,R4
        LDRB     R3,[R3, R1, LSL #+1]
        STRB     R3,[R1, R2]
//  403         }
        ADDS     R1,R1,#+1
??v_ColorRev_Beholder_60_185_Output_2:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+93
        BLT.N    ??v_ColorRev_Beholder_60_185_Output_1
        ADDS     R0,R0,#+1
??v_ColorRev_Beholder_60_185_Output_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+60
        BGE.N    ??v_ColorRev_Beholder_60_185_Output_3
        MOVS     R1,#+0
        B.N      ??v_ColorRev_Beholder_60_185_Output_2
//  404     }
//  405     
//  406     for(uint8 Line_show = 0;Line_show < 60;Line_show++) // ÐÐÏÔÊ¾ - 8
??v_ColorRev_Beholder_60_185_Output_3:
        MOVS     R4,#+0
        B.N      ??v_ColorRev_Beholder_60_185_Output_4
//  407     {
//  408         /////
//  409         color_OLED_WrCmd(0x15);color_OLED_WrCmd(2);color_OLED_WrCmd(95);//Setup Column
//  410         color_OLED_WrCmd(0x75);color_OLED_WrCmd(Line_show);color_OLED_WrCmd(63);//Setup Row
//  411         /////
//  412         for(uint8 X_show = 0;X_show < 93;X_show++)
//  413         {
//  414             v_65kcolor2Mono(color_Message[Line_show][X_show],&RGBcolor);
??v_ColorRev_Beholder_60_185_Output_5:
        ADD      R1,SP,#+0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,#+93
        ADD      R2,SP,#+4
        MLA      R0,R0,R4,R2
        LDRB     R0,[R5, R0]
        BL       v_65kcolor2Mono
//  415             color_OLED_WrDat((RGBcolor.C_Red_31 << 3)|(RGBcolor.B_Green_63 >> 3));
        MOVS     R2,#+1
        LDRB     R0,[SP, #+0]
        LDRB     R1,[SP, #+1]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSRS     R1,R1,#+3
        ORRS     R1,R1,R0, LSL #+3
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
//  416             color_OLED_WrDat((RGBcolor.B_Green_63 << 5)|(RGBcolor.A_Blue_31));//color
        MOVS     R2,#+1
        LDRB     R0,[SP, #+1]
        LDRB     R1,[SP, #+2]
        ORRS     R1,R1,R0, LSL #+5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
//  417         }
        ADDS     R5,R5,#+1
??v_ColorRev_Beholder_60_185_Output_6:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+93
        BLT.N    ??v_ColorRev_Beholder_60_185_Output_5
        ADDS     R4,R4,#+1
??v_ColorRev_Beholder_60_185_Output_4:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+60
        BGE.N    ??v_ColorRev_Beholder_60_185_Output_7
        MOVS     R2,#+0
        MOVS     R1,#+21
        LDR.N    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
        MOVS     R2,#+0
        MOVS     R1,#+2
        LDR.N    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
        MOVS     R2,#+0
        MOVS     R1,#+95
        LDR.N    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
        MOVS     R2,#+0
        MOVS     R1,#+117
        LDR.N    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
        MOVS     R2,#+0
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
        MOVS     R2,#+0
        MOVS     R1,#+63
        LDR.N    R0,??DataTable11_7
        BL       v_Revelation_WriteBytes
        MOVS     R5,#+0
        B.N      ??v_ColorRev_Beholder_60_185_Output_6
//  418     }
//  419     Revelation_CS_1(m_ColorOLED_pins);
??v_ColorRev_Beholder_60_185_Output_7:
        LDR.N    R0,??DataTable11_7
        LDR      R0,[R0, #+8]
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        LDR.N    R2,??DataTable11_7
        LDR      R2,[R2, #+12]
        LSLS     R1,R1,R2
        ORRS     R0,R1,R0
        LDR.N    R1,??DataTable11_7
        LDR      R1,[R1, #+8]
        STR      R0,[R1, #+0]
//  420 }
        ADD      SP,SP,#+468
        ADD      SP,SP,#+5120
        POP      {R4,R5,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_1:
        DC32     0x40049034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_2:
        DC32     0x4004903c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_3:
        DC32     0x40049040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_4:
        DC32     0x40049044

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_5:
        DC32     0x40049038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_6:
        DC32     0x4004b000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_7:
        DC32     m_ColorOLED_pins

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_8:
        DC8      0x25, 0x67, 0x00, 0x00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_9:
        DC32     m_MonoOLED_pins

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_10:
        DC32     C6x8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_11:
        DC32     `?<Constant "0x%X">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_12:
        DC32     m_ImageBeholder_Data
//  421 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  422 void v_MonoShow_Buzzer(char ch)
//  423 {
v_MonoShow_Buzzer:
        PUSH     {R0,LR}
//  424     v_MonoRev_6x8Str(121,0,&ch,0);//Õ¹Ê¾×Ö·û
        MOVS     R3,#+0
        ADD      R2,SP,#+0
        MOVS     R1,#+0
        MOVS     R0,#+121
        BL       v_MonoRev_6x8Str
//  425 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  426 void v_MonoShow_isLonly(char ch)
//  427 {
v_MonoShow_isLonly:
        PUSH     {R0,LR}
//  428     v_MonoRev_6x8Str(121,1,&ch,0);//Õ¹Ê¾×Ö·û
        MOVS     R3,#+0
        ADD      R2,SP,#+0
        MOVS     R1,#+1
        MOVS     R0,#+121
        BL       v_MonoRev_6x8Str
//  429 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  430 void v_MonoShow_BlackBar(char ch)
//  431 {
v_MonoShow_BlackBar:
        PUSH     {R0,LR}
//  432     v_MonoRev_6x8Str(121,3,&ch,0);//Õ¹Ê¾×Ö·û
        MOVS     R3,#+0
        ADD      R2,SP,#+0
        MOVS     R1,#+3
        MOVS     R0,#+121
        BL       v_MonoRev_6x8Str
//  433 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  434 void v_MonoShow_BlackRtAngle(char ch)
//  435 {
v_MonoShow_BlackRtAngle:
        PUSH     {R0,LR}
//  436     v_MonoRev_6x8Str(121,2,&ch,0);//Õ¹Ê¾×Ö·û
        MOVS     R3,#+0
        ADD      R2,SP,#+0
        MOVS     R1,#+2
        MOVS     R0,#+121
        BL       v_MonoRev_6x8Str
//  437 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  438 void v_MonoShow_BlackTurning(char ch)
//  439 {
v_MonoShow_BlackTurning:
        PUSH     {R0,LR}
//  440     v_MonoRev_6x8Str(121,7,&ch,0);//Õ¹Ê¾×Ö·û
        MOVS     R3,#+0
        ADD      R2,SP,#+0
        MOVS     R1,#+7
        MOVS     R0,#+121
        BL       v_MonoRev_6x8Str
//  441 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  442 void v_MonoShow_BlackCutBar(char ch)
//  443 {
v_MonoShow_BlackCutBar:
        PUSH     {R0,LR}
//  444     v_MonoRev_6x8Str(111,7,&ch,0);
        MOVS     R3,#+0
        ADD      R2,SP,#+0
        MOVS     R1,#+7
        MOVS     R0,#+111
        BL       v_MonoRev_6x8Str
//  445 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  446 void v_MonoShow_OutOfTheRtAngle(char ch)
//  447 {
v_MonoShow_OutOfTheRtAngle:
        PUSH     {R0,LR}
//  448     v_MonoRev_6x8Str(101,7,&ch,0);
        MOVS     R3,#+0
        ADD      R2,SP,#+0
        MOVS     R1,#+7
        MOVS     R0,#+101
        BL       v_MonoRev_6x8Str
//  449 }
        POP      {R0,PC}          ;; return

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
//    92 bytes in section .rodata
// 3 528 bytes in section .text
// 
// 3 528 bytes of CODE  memory
//    92 bytes of CONST memory
//
//Errors: none
//Warnings: none
