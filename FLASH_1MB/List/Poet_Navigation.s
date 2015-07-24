///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     09/Jul/2015  14:11:50 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\¥¥◊˜ “\∑…Àºø®∂˚÷«ƒ‹–°≥µ\À≥∞µ»˝∫≈\¥˙¬Î\À≥∞µ»˝∫≈-∆‘¥- /
//                    µ⁄“ª¥˙∞Â\ShunAn_Panel\Poet_Navigation.c                 /
//    Command line =  D:\¥¥◊˜ “\∑…Àºø®∂˚÷«ƒ‹–°≥µ\À≥∞µ»˝∫≈\¥˙¬Î\À≥∞µ»˝∫≈-∆‘¥- /
//                    µ⁄“ª¥˙∞Â\ShunAn_Panel\Poet_Navigation.c -D IAR -D       /
//                    TWR_K60F120M -lCN D:\¥¥◊˜ “\∑…Àºø®∂˚÷«ƒ‹–°≥µ\À≥∞µ»˝∫≈\¥ /
//                    ˙¬Î\À≥∞µ»˝∫≈-∆‘¥-µ⁄“ª¥˙∞Â\FLASH_1MB\List\ -lB          /
//                    D:\¥¥◊˜ “\∑…Àºø®∂˚÷«ƒ‹–°≥µ\À≥∞µ»˝∫≈\¥˙¬Î\À≥∞µ»˝∫≈-∆‘¥- /
//                    µ⁄“ª¥˙∞Â\FLASH_1MB\List\ -o                             /
//                    D:\¥¥◊˜ “\∑…Àºø®∂˚÷«ƒ‹–°≥µ\À≥∞µ»˝∫≈\¥˙¬Î\À≥∞µ»˝∫≈-∆‘¥- /
//                    µ⁄“ª¥˙∞Â\FLASH_1MB\Obj\ --no_cse --no_unroll            /
//                    --no_inline --no_code_motion --no_tbaa --no_clustering  /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=VFPv4_sp --dlib_config         /
//                    "C:\Program Files (x86)\IAR Systems\Embedded Workbench  /
//                    6.5\arm\INC\c\DLib_Config_Normal.h" -I                  /
//                    D:\¥¥◊˜ “\∑…Àºø®∂˚÷«ƒ‹–°≥µ\À≥∞µ»˝∫≈\¥˙¬Î\À≥∞µ»˝∫≈-∆‘¥- /
//                    µ⁄“ª¥˙∞Â\ -I D:\¥¥◊˜ “\∑…Àºø®∂˚÷«ƒ‹–°≥µ\À≥∞µ»˝∫≈\¥˙¬Î\À /
//                    ≥∞µ»˝∫≈-∆‘¥-µ⁄“ª¥˙∞Â\Library\ -I                       /
//                    D:\¥¥◊˜ “\∑…Àºø®∂˚÷«ƒ‹–°≥µ\À≥∞µ»˝∫≈\¥˙¬Î\À≥∞µ»˝∫≈-∆‘¥- /
//                    µ⁄“ª¥˙∞Â\Library\BlessedAlien\ -I                       /
//                    D:\¥¥◊˜ “\∑…Àºø®∂˚÷«ƒ‹–°≥µ\À≥∞µ»˝∫≈\¥˙¬Î\À≥∞µ»˝∫≈-∆‘¥- /
//                    µ⁄“ª¥˙∞Â\ShunAn_Panel\ -Ol --use_c++_inline             /
//    List file    =  D:\¥¥◊˜ “\∑…Àºø®∂˚÷«ƒ‹–°≥µ\À≥∞µ»˝∫≈\¥˙¬Î\À≥∞µ»˝∫≈-∆‘¥- /
//                    µ⁄“ª¥˙∞Â\FLASH_1MB\List\Poet_Navigation.s               /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN u8_IIC_ReadReg
        EXTERN u8_IIC_WriteReg

        PUBLIC b_Accel_Init
        PUBLIC b_Gyro_Init
        PUBLIC b_Navigation_Init
        PUBLIC b_getAccelVar
        PUBLIC b_getGyroVar

// D:\¥¥◊˜ “\∑…Àºø®∂˚÷«ƒ‹–°≥µ\À≥∞µ»˝∫≈\¥˙¬Î\À≥∞µ»˝∫≈-∆‘¥-µ⁄“ª¥˙∞Â\ShunAn_Panel\Poet_Navigation.c
//    1 #include "arm_cm4.h"
//    2 #include "MK60F15.h"
//    3 #include "ShunAn_Lib.h"
//    4 #include "start_ShunAn.h"
//    5 
//    6 #include "IIC.h"
//    7 
//    8 #include "Poet_Navigation.h"
//    9 //======================================================================================================//
//   10 //======================================================================================================//
//   11 //======================================================================================================//
//   12 //======================================================================================================//
//   13 // º”ÀŸ∂»µƒ ¿ΩÁ
//   14 //============================================================================//
//   15 // FXLS8471QR1 - º”ÀŸ∂»º∆
//   16 // 6.1∫≈’˝ Ω∏¸–¬

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   17 uint8 b_Accel_Init()
//   18 {
b_Accel_Init:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
//   19     // ƒ£øÈ”Î“˝Ω≈ø™∆Ù
//   20     SIM_SCGC4 |= SIM_SCGC4_IIC0_MASK; // SIM_SCGC4_IIC0_MASK
        LDR.W    R0,??DataTable4  ;; 0x40048034
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40
        LDR.W    R1,??DataTable4  ;; 0x40048034
        STR      R0,[R1, #+0]
//   21     SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
        LDR.W    R0,??DataTable4_1  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x400
        LDR.W    R1,??DataTable4_1  ;; 0x40048038
        STR      R0,[R1, #+0]
//   22     PORTB_BASE_PTR->PCR[0] = 0x00000200u; // SCL
        LDR.W    R0,??DataTable4_2  ;; 0x4004a000
        MOV      R1,#+512
        STR      R1,[R0, #+0]
//   23     PORTB_BASE_PTR->PCR[1] = 0x00000200u; // SDA
        LDR.W    R0,??DataTable4_3  ;; 0x4004a004
        MOV      R1,#+512
        STR      R1,[R0, #+0]
//   24     
//   25     I2C0_BASE_PTR->F = 0; //0x16; // 75MHz ∑÷∆µ45 0x21 => 400kHz
        LDR.W    R0,??DataTable4_4  ;; 0x40066001
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//   26     I2C0_BASE_PTR->C1 = I2C_C1_IICEN_MASK; // ø™∆ÙIICƒ£ Ω
        LDR.W    R0,??DataTable4_5  ;; 0x40066002
        MOVS     R1,#+128
        STRB     R1,[R0, #+0]
//   27     
//   28     I2C_MemMapPtr iic_num = I2C0_BASE_PTR;
        LDR.W    R4,??DataTable4_6  ;; 0x40066000
//   29     // ≥ı ºªØπ˝≥Ã
//   30     uint8 returnNum = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//   31     // ====================================================================== //
//   32     /* ƒø±Í»∑»œ */
//   33     if('F' == u8_IIC_ReadReg(iic_num ,ACCELreg_IIC_ADDR_LOW_1E ,&returnNum , ACCELreg_WHO_AM_I_0D)){return 'F';}; // ±Í∂®º”ÀŸ∂»º∆
        MOVS     R3,#+13
        ADD      R2,SP,#+0
        MOVS     R1,#+30
        MOVS     R0,R4
        BL       u8_IIC_ReadReg
        CMP      R0,#+70
        BNE.N    ??b_Accel_Init_0
        MOVS     R0,#+70
        B.N      ??b_Accel_Init_1
//   34     if(ACCEL_WHOAMI_VAR != returnNum){return 'F';} // ƒø±Í»∑»œ
??b_Accel_Init_0:
        LDRB     R0,[SP, #+0]
        CMP      R0,#+106
        BEQ.N    ??b_Accel_Init_2
        MOVS     R0,#+70
        B.N      ??b_Accel_Init_1
//   35     // ====================================================================== //
//   36     /* FIFO ≈‰÷√ */
//   37     if('F' == u8_IIC_WriteReg(iic_num ,ACCELreg_IIC_ADDR_LOW_1E ,0 , 0x09)){return 'F';}; //  //
??b_Accel_Init_2:
        MOVS     R3,#+9
        MOVS     R2,#+0
        MOVS     R1,#+30
        MOVS     R0,R4
        BL       u8_IIC_WriteReg
        CMP      R0,#+70
        BNE.N    ??b_Accel_Init_3
        MOVS     R0,#+70
        B.N      ??b_Accel_Init_1
//   38     if('F' == u8_IIC_ReadReg(iic_num ,ACCELreg_IIC_ADDR_LOW_1E ,&returnNum , 0x09)){return 'F';}; // ±Í∂®º”ÀŸ∂»º∆
??b_Accel_Init_3:
        MOVS     R3,#+9
        ADD      R2,SP,#+0
        MOVS     R1,#+30
        MOVS     R0,R4
        BL       u8_IIC_ReadReg
        CMP      R0,#+70
        BNE.N    ??b_Accel_Init_4
        MOVS     R0,#+70
        B.N      ??b_Accel_Init_1
//   39     if(0 != returnNum){return 'F';} //
??b_Accel_Init_4:
        LDRB     R0,[SP, #+0]
        CMP      R0,#+0
        BEQ.N    ??b_Accel_Init_5
        MOVS     R0,#+70
        B.N      ??b_Accel_Init_1
//   40     // ====================================================================== //
//   41     /* ¥´∏–∆˜ ˝æ›≈‰÷√ */ // ctrl 0x0E
//   42     returnNum = 0;
??b_Accel_Init_5:
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//   43     if('F' == u8_IIC_WriteReg(iic_num ,ACCELreg_IIC_ADDR_LOW_1E ,0|0 , 0x0E)){return 'F';}; // πÿ±’¬À≤® // ◊Ó¥Û¡ø≥Ã
        MOVS     R3,#+14
        MOVS     R2,#+0
        MOVS     R1,#+30
        MOVS     R0,R4
        BL       u8_IIC_WriteReg
        CMP      R0,#+70
        BNE.N    ??b_Accel_Init_6
        MOVS     R0,#+70
        B.N      ??b_Accel_Init_1
//   44     if('F' == u8_IIC_ReadReg(iic_num ,ACCELreg_IIC_ADDR_LOW_1E ,&returnNum , 0x0E)){return 'F';}; // ±Í∂®º”ÀŸ∂»º∆
??b_Accel_Init_6:
        MOVS     R3,#+14
        ADD      R2,SP,#+0
        MOVS     R1,#+30
        MOVS     R0,R4
        BL       u8_IIC_ReadReg
        CMP      R0,#+70
        BNE.N    ??b_Accel_Init_7
        MOVS     R0,#+70
        B.N      ??b_Accel_Init_1
//   45     if(0 != returnNum){return 'F';} //
??b_Accel_Init_7:
        LDRB     R0,[SP, #+0]
        CMP      R0,#+0
        BEQ.N    ??b_Accel_Init_8
        MOVS     R0,#+70
        B.N      ??b_Accel_Init_1
//   46     // ====================================================================== //
//   47     /* ∏ﬂÕ®¬À≤® */
//   48     if('F' == u8_IIC_WriteReg(iic_num ,ACCELreg_IIC_ADDR_LOW_1E ,0 , 0x0F)){return 'F';};
??b_Accel_Init_8:
        MOVS     R3,#+15
        MOVS     R2,#+0
        MOVS     R1,#+30
        MOVS     R0,R4
        BL       u8_IIC_WriteReg
        CMP      R0,#+70
        BNE.N    ??b_Accel_Init_9
        MOVS     R0,#+70
        B.N      ??b_Accel_Init_1
//   49     if('F' == u8_IIC_ReadReg(iic_num ,ACCELreg_IIC_ADDR_LOW_1E ,&returnNum , 0x0F)){return 'F';}; // ±Í∂®º”ÀŸ∂»º∆
??b_Accel_Init_9:
        MOVS     R3,#+15
        ADD      R2,SP,#+0
        MOVS     R1,#+30
        MOVS     R0,R4
        BL       u8_IIC_ReadReg
        CMP      R0,#+70
        BNE.N    ??b_Accel_Init_10
        MOVS     R0,#+70
        B.N      ??b_Accel_Init_1
//   50     if(0 != returnNum){return 'F';} //    
??b_Accel_Init_10:
        LDRB     R0,[SP, #+0]
        CMP      R0,#+0
        BEQ.N    ??b_Accel_Init_11
        MOVS     R0,#+70
        B.N      ??b_Accel_Init_1
//   51     
//   52     // ====================================================================== //
//   53     /* –æ∆¨øÿ÷∆ */ // ctrl 0x2A -> 0x2E
//   54     if('F' == u8_IIC_WriteReg(iic_num ,ACCELreg_IIC_ADDR_LOW_1E ,(1<<3)|3 , 0x2A)){return 'F';}; //  // 
??b_Accel_Init_11:
        MOVS     R3,#+42
        MOVS     R2,#+11
        MOVS     R1,#+30
        MOVS     R0,R4
        BL       u8_IIC_WriteReg
        CMP      R0,#+70
        BNE.N    ??b_Accel_Init_12
        MOVS     R0,#+70
        B.N      ??b_Accel_Init_1
//   55     if('F' == u8_IIC_ReadReg(iic_num ,ACCELreg_IIC_ADDR_LOW_1E ,&returnNum , 0x2A)){return 'F';}; // ±Í∂®º”ÀŸ∂»º∆
??b_Accel_Init_12:
        MOVS     R3,#+42
        ADD      R2,SP,#+0
        MOVS     R1,#+30
        MOVS     R0,R4
        BL       u8_IIC_ReadReg
        CMP      R0,#+70
        BNE.N    ??b_Accel_Init_13
        MOVS     R0,#+70
        B.N      ??b_Accel_Init_1
//   56     if(3 != returnNum){return 'F';} //    
??b_Accel_Init_13:
        LDRB     R0,[SP, #+0]
        CMP      R0,#+3
        BEQ.N    ??b_Accel_Init_14
        MOVS     R0,#+70
        B.N      ??b_Accel_Init_1
//   57     if('F' == u8_IIC_WriteReg(iic_num ,ACCELreg_IIC_ADDR_LOW_1E ,0 , 0x2B)){return 'F';}; //  //
??b_Accel_Init_14:
        MOVS     R3,#+43
        MOVS     R2,#+0
        MOVS     R1,#+30
        MOVS     R0,R4
        BL       u8_IIC_WriteReg
        CMP      R0,#+70
        BNE.N    ??b_Accel_Init_15
        MOVS     R0,#+70
        B.N      ??b_Accel_Init_1
//   58     if('F' == u8_IIC_ReadReg(iic_num ,ACCELreg_IIC_ADDR_LOW_1E ,&returnNum , 0x2B)){return 'F';}; // ±Í∂®º”ÀŸ∂»º∆
??b_Accel_Init_15:
        MOVS     R3,#+43
        ADD      R2,SP,#+0
        MOVS     R1,#+30
        MOVS     R0,R4
        BL       u8_IIC_ReadReg
        CMP      R0,#+70
        BNE.N    ??b_Accel_Init_16
        MOVS     R0,#+70
        B.N      ??b_Accel_Init_1
//   59     if(0 != returnNum){return 'F';} //
??b_Accel_Init_16:
        LDRB     R0,[SP, #+0]
        CMP      R0,#+0
        BEQ.N    ??b_Accel_Init_17
        MOVS     R0,#+70
        B.N      ??b_Accel_Init_1
//   60     /*
//   61     if('F' == u8_IIC_WriteReg(iic_num ,ACCELreg_IIC_ADDR_LOW_1E ,0 , 0x2C)){return 'F';}; //  // 
//   62     if('F' == u8_IIC_WriteReg(iic_num ,ACCELreg_IIC_ADDR_LOW_1E ,0 , 0x2D)){return 'F';}; //  // 
//   63     if('F' == u8_IIC_WriteReg(iic_num ,ACCELreg_IIC_ADDR_LOW_1E ,0 , 0x2E)){return 'F';}; //  // 
//   64     */
//   65     
//   66 
//   67     // 
//   68     return 'T';
??b_Accel_Init_17:
        MOVS     R0,#+84
??b_Accel_Init_1:
        POP      {R1,R2,R4,PC}    ;; return
//   69 }
//   70 
//   71 // 88us

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   72 uint8 b_getAccelVar(s_Navigation * Navigation_ptr)
//   73 {
b_getAccelVar:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
//   74     uint8 temp_H = 0; uint8 temp_L = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//   75     if(('F' == u8_IIC_ReadReg(I2C0_BASE_PTR,ACCELreg_IIC_ADDR_LOW_1E,&temp_H,0x01))||
//   76        ('F' == u8_IIC_ReadReg(I2C0_BASE_PTR,ACCELreg_IIC_ADDR_LOW_1E,&temp_L,0x02)))
        MOVS     R3,#+1
        ADD      R2,SP,#+1
        MOVS     R1,#+30
        LDR.W    R0,??DataTable4_6  ;; 0x40066000
        BL       u8_IIC_ReadReg
        CMP      R0,#+70
        BEQ.N    ??b_getAccelVar_0
        MOVS     R3,#+2
        ADD      R2,SP,#+0
        MOVS     R1,#+30
        LDR.W    R0,??DataTable4_6  ;; 0x40066000
        BL       u8_IIC_ReadReg
        CMP      R0,#+70
        BNE.N    ??b_getAccelVar_1
//   77     {return 'F';}
??b_getAccelVar_0:
        MOVS     R0,#+70
        B.N      ??b_getAccelVar_2
//   78     Navigation_ptr->s_Accel.x = ((temp_H << 8)|temp_L);
??b_getAccelVar_1:
        LDRB     R0,[SP, #+1]
        LDRB     R1,[SP, #+0]
        ORRS     R0,R1,R0, LSL #+8
        STRH     R0,[R4, #+0]
//   79     Navigation_ptr->s_Accel.x /= 4;
        LDRSH    R0,[R4, #+0]
        MOVS     R1,#+4
        SDIV     R0,R0,R1
        STRH     R0,[R4, #+0]
//   80     temp_H = 0; temp_L = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//   81     if(('F' == u8_IIC_ReadReg(I2C0_BASE_PTR,ACCELreg_IIC_ADDR_LOW_1E,&temp_H,0x03))||
//   82        ('F' == u8_IIC_ReadReg(I2C0_BASE_PTR,ACCELreg_IIC_ADDR_LOW_1E,&temp_L,0x04)))
        MOVS     R3,#+3
        ADD      R2,SP,#+1
        MOVS     R1,#+30
        LDR.W    R0,??DataTable4_6  ;; 0x40066000
        BL       u8_IIC_ReadReg
        CMP      R0,#+70
        BEQ.N    ??b_getAccelVar_3
        MOVS     R3,#+4
        ADD      R2,SP,#+0
        MOVS     R1,#+30
        LDR.W    R0,??DataTable4_6  ;; 0x40066000
        BL       u8_IIC_ReadReg
        CMP      R0,#+70
        BNE.N    ??b_getAccelVar_4
//   83     {return 'F';}
??b_getAccelVar_3:
        MOVS     R0,#+70
        B.N      ??b_getAccelVar_2
//   84     Navigation_ptr->s_Accel.y = ((temp_H << 8)|temp_L);
??b_getAccelVar_4:
        LDRB     R0,[SP, #+1]
        LDRB     R1,[SP, #+0]
        ORRS     R0,R1,R0, LSL #+8
        STRH     R0,[R4, #+2]
//   85     Navigation_ptr->s_Accel.y /= 4;
        LDRSH    R0,[R4, #+2]
        MOVS     R1,#+4
        SDIV     R0,R0,R1
        STRH     R0,[R4, #+2]
//   86     temp_H = 0; temp_L = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//   87     if(('F' == u8_IIC_ReadReg(I2C0_BASE_PTR,ACCELreg_IIC_ADDR_LOW_1E,&temp_H,0x05))||
//   88        ('F' == u8_IIC_ReadReg(I2C0_BASE_PTR,ACCELreg_IIC_ADDR_LOW_1E,&temp_L,0x06)))
        MOVS     R3,#+5
        ADD      R2,SP,#+1
        MOVS     R1,#+30
        LDR.W    R0,??DataTable4_6  ;; 0x40066000
        BL       u8_IIC_ReadReg
        CMP      R0,#+70
        BEQ.N    ??b_getAccelVar_5
        MOVS     R3,#+6
        ADD      R2,SP,#+0
        MOVS     R1,#+30
        LDR.W    R0,??DataTable4_6  ;; 0x40066000
        BL       u8_IIC_ReadReg
        CMP      R0,#+70
        BNE.N    ??b_getAccelVar_6
//   89     {return 'F';}
??b_getAccelVar_5:
        MOVS     R0,#+70
        B.N      ??b_getAccelVar_2
//   90     Navigation_ptr->s_Accel.z = ((temp_H << 8)|temp_L);
??b_getAccelVar_6:
        LDRB     R0,[SP, #+1]
        LDRB     R1,[SP, #+0]
        ORRS     R0,R1,R0, LSL #+8
        STRH     R0,[R4, #+4]
//   91     Navigation_ptr->s_Accel.z /= 4;
        LDRSH    R0,[R4, #+4]
        MOVS     R1,#+4
        SDIV     R0,R0,R1
        STRH     R0,[R4, #+4]
//   92     return 'T';
        MOVS     R0,#+84
??b_getAccelVar_2:
        POP      {R1,R2,R4,PC}    ;; return
//   93 }
//   94 
//   95 //======================================================================================================//
//   96 //======================================================================================================//
//   97 //======================================================================================================//
//   98 //======================================================================================================//
//   99 // Õ”¬›µƒ ¿ΩÁ
//  100 //======================================================================================================//
//  101 /* b_Gyro_Init */ 
//  102 #define DEreg_GYRO_WHO_AM_I_0F                          0x0F
//  103 #define DEreg_GYRO_CTRL1_20                             0x20
//  104 #define DEreg_GYRO_CTRL2_21                             0x21
//  105 #define DEreg_GYRO_CTRL3_22                             0x22
//  106 #define DEreg_GYRO_CTRL4_23                             0x23
//  107 #define DEreg_GYRO_CTRL5_24                             0x24
//  108 
//  109 #define DEreg_GYRO_OutxL_28                             0x28
//  110 #define DEreg_GYRO_OutxH_29                             0x29
//  111 #define DEreg_GYRO_OutyL_30                             0x2A
//  112 #define DEreg_GYRO_OutyH_31                             0x2B
//  113 #define DEreg_GYRO_OutzL_32                             0x2C
//  114 #define DEreg_GYRO_OutzH_33                             0x2D
//  115 
//  116 #define DEadr_GYRO_ADDR_LOW_6A                          0x6A // CS == 1 // _HIGH => CS + 1
//  117 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  118 uint8 b_Gyro_Init()
//  119 {
b_Gyro_Init:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
//  120     // ƒ£øÈ”Î“˝Ω≈ø™∆Ù
//  121     SIM_SCGC4 |= SIM_SCGC4_IIC0_MASK; // SIM_SCGC4_IIC0_MASK
        LDR.W    R0,??DataTable4  ;; 0x40048034
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40
        LDR.W    R1,??DataTable4  ;; 0x40048034
        STR      R0,[R1, #+0]
//  122     SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
        LDR.W    R0,??DataTable4_1  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x400
        LDR.W    R1,??DataTable4_1  ;; 0x40048038
        STR      R0,[R1, #+0]
//  123     PORTB_BASE_PTR->PCR[0] = 0x00000200u; // SCL
        LDR.N    R0,??DataTable4_2  ;; 0x4004a000
        MOV      R1,#+512
        STR      R1,[R0, #+0]
//  124     PORTB_BASE_PTR->PCR[1] = 0x00000200u; // SDA
        LDR.N    R0,??DataTable4_3  ;; 0x4004a004
        MOV      R1,#+512
        STR      R1,[R0, #+0]
//  125     
//  126     I2C0_BASE_PTR->F = 0; //0x16; // 75MHz ∑÷∆µ45
        LDR.N    R0,??DataTable4_4  ;; 0x40066001
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  127     I2C0_BASE_PTR->C1 = I2C_C1_IICEN_MASK; // ø™∆ÙIICƒ£ Ω
        LDR.N    R0,??DataTable4_5  ;; 0x40066002
        MOVS     R1,#+128
        STRB     R1,[R0, #+0]
//  128     
//  129     I2C_MemMapPtr iic_num = I2C0_BASE_PTR;
        LDR.N    R4,??DataTable4_6  ;; 0x40066000
//  130     // ≥ı ºªØπ˝≥Ã
//  131     uint8 returnNum = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//  132     
//  133     // ======================================= //
//  134     if('F' == u8_IIC_ReadReg(iic_num ,DEadr_GYRO_ADDR_LOW_6A ,&returnNum , DEreg_GYRO_WHO_AM_I_0F))
        MOVS     R3,#+15
        ADD      R2,SP,#+0
        MOVS     R1,#+106
        MOVS     R0,R4
        BL       u8_IIC_ReadReg
        CMP      R0,#+70
        BNE.N    ??b_Gyro_Init_0
//  135     {return 'F';} // ±Í∂®º”ÀŸ∂»º∆
        MOVS     R0,#+70
        B.N      ??b_Gyro_Init_1
//  136     if(0xD7 != returnNum){return 'F';} // ƒø±Í»∑»œ
??b_Gyro_Init_0:
        LDRB     R0,[SP, #+0]
        CMP      R0,#+215
        BEQ.N    ??b_Gyro_Init_2
        MOVS     R0,#+70
        B.N      ??b_Gyro_Init_1
//  137     // ======================================= //
//  138     if('F' == u8_IIC_WriteReg(iic_num ,DEadr_GYRO_ADDR_LOW_6A , 0x0F , DEreg_GYRO_CTRL1_20))
??b_Gyro_Init_2:
        MOVS     R3,#+32
        MOVS     R2,#+15
        MOVS     R1,#+106
        MOVS     R0,R4
        BL       u8_IIC_WriteReg
        CMP      R0,#+70
        BNE.N    ??b_Gyro_Init_3
//  139     {return 'F';} // øÿ÷∆1
        MOVS     R0,#+70
        B.N      ??b_Gyro_Init_1
//  140     returnNum = 0;
??b_Gyro_Init_3:
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//  141     if('F' == u8_IIC_ReadReg(iic_num ,DEadr_GYRO_ADDR_LOW_6A ,&returnNum , DEreg_GYRO_CTRL1_20)){return 'F';} //  ‰≥ˆøÿ÷∆
        MOVS     R3,#+32
        ADD      R2,SP,#+0
        MOVS     R1,#+106
        MOVS     R0,R4
        BL       u8_IIC_ReadReg
        CMP      R0,#+70
        BNE.N    ??b_Gyro_Init_4
        MOVS     R0,#+70
        B.N      ??b_Gyro_Init_1
//  142     if(0x0F != returnNum){return 'F';} // ƒø±Í»∑»œ
??b_Gyro_Init_4:
        LDRB     R0,[SP, #+0]
        CMP      R0,#+15
        BEQ.N    ??b_Gyro_Init_5
        MOVS     R0,#+70
        B.N      ??b_Gyro_Init_1
//  143     // ======================================= //
//  144     if('F' == u8_IIC_WriteReg(iic_num ,DEadr_GYRO_ADDR_LOW_6A , 0x29 , DEreg_GYRO_CTRL2_21))
??b_Gyro_Init_5:
        MOVS     R3,#+33
        MOVS     R2,#+41
        MOVS     R1,#+106
        MOVS     R0,R4
        BL       u8_IIC_WriteReg
        CMP      R0,#+70
        BNE.N    ??b_Gyro_Init_6
//  145     {return 'F';} // øÿ÷∆2
        MOVS     R0,#+70
        B.N      ??b_Gyro_Init_1
//  146     returnNum = 0;
??b_Gyro_Init_6:
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//  147     if('F' == u8_IIC_ReadReg(iic_num ,DEadr_GYRO_ADDR_LOW_6A ,&returnNum , DEreg_GYRO_CTRL2_21)){return 'F';} //  ‰≥ˆøÿ÷∆
        MOVS     R3,#+33
        ADD      R2,SP,#+0
        MOVS     R1,#+106
        MOVS     R0,R4
        BL       u8_IIC_ReadReg
        CMP      R0,#+70
        BNE.N    ??b_Gyro_Init_7
        MOVS     R0,#+70
        B.N      ??b_Gyro_Init_1
//  148     if(0x29 != returnNum){return 'F';} // ƒø±Í»∑»œ
??b_Gyro_Init_7:
        LDRB     R0,[SP, #+0]
        CMP      R0,#+41
        BEQ.N    ??b_Gyro_Init_8
        MOVS     R0,#+70
        B.N      ??b_Gyro_Init_1
//  149     // ======================================= //
//  150     if('F' == u8_IIC_WriteReg(iic_num ,DEadr_GYRO_ADDR_LOW_6A , 0x20 , DEreg_GYRO_CTRL4_23))
??b_Gyro_Init_8:
        MOVS     R3,#+35
        MOVS     R2,#+32
        MOVS     R1,#+106
        MOVS     R0,R4
        BL       u8_IIC_WriteReg
        CMP      R0,#+70
        BNE.N    ??b_Gyro_Init_9
//  151     {return 'F';} // øÿ÷∆4
        MOVS     R0,#+70
        B.N      ??b_Gyro_Init_1
//  152     returnNum = 0;
??b_Gyro_Init_9:
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//  153     if('F' == u8_IIC_ReadReg(iic_num ,DEadr_GYRO_ADDR_LOW_6A ,&returnNum , DEreg_GYRO_CTRL4_23)){return 'F';} // ∑˘÷µøÿ÷∆
        MOVS     R3,#+35
        ADD      R2,SP,#+0
        MOVS     R1,#+106
        MOVS     R0,R4
        BL       u8_IIC_ReadReg
        CMP      R0,#+70
        BNE.N    ??b_Gyro_Init_10
        MOVS     R0,#+70
        B.N      ??b_Gyro_Init_1
//  154     if(0x20 != returnNum){return 'F';} // ƒø±Í»∑»œ
??b_Gyro_Init_10:
        LDRB     R0,[SP, #+0]
        CMP      R0,#+32
        BEQ.N    ??b_Gyro_Init_11
        MOVS     R0,#+70
        B.N      ??b_Gyro_Init_1
//  155     // ======================================= //
//  156     if('F' == u8_IIC_WriteReg(iic_num ,DEadr_GYRO_ADDR_LOW_6A , 0x00 , DEreg_GYRO_CTRL5_24))
??b_Gyro_Init_11:
        MOVS     R3,#+36
        MOVS     R2,#+0
        MOVS     R1,#+106
        MOVS     R0,R4
        BL       u8_IIC_WriteReg
        CMP      R0,#+70
        BNE.N    ??b_Gyro_Init_12
//  157     {return 'F';} // øÿ÷∆5
        MOVS     R0,#+70
        B.N      ??b_Gyro_Init_1
//  158     returnNum = 0;
??b_Gyro_Init_12:
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//  159     if('F' == u8_IIC_ReadReg(iic_num ,DEadr_GYRO_ADDR_LOW_6A ,&returnNum , DEreg_GYRO_CTRL5_24)){return 'F';} // ∑˘÷µøÿ÷∆
        MOVS     R3,#+36
        ADD      R2,SP,#+0
        MOVS     R1,#+106
        MOVS     R0,R4
        BL       u8_IIC_ReadReg
        CMP      R0,#+70
        BNE.N    ??b_Gyro_Init_13
        MOVS     R0,#+70
        B.N      ??b_Gyro_Init_1
//  160     if(0x00 != returnNum){return 'F';} // ƒø±Í»∑»œ
??b_Gyro_Init_13:
        LDRB     R0,[SP, #+0]
        CMP      R0,#+0
        BEQ.N    ??b_Gyro_Init_14
        MOVS     R0,#+70
        B.N      ??b_Gyro_Init_1
//  161     // ======================================= //
//  162     
//  163     return 'T';
??b_Gyro_Init_14:
        MOVS     R0,#+84
??b_Gyro_Init_1:
        POP      {R1,R2,R4,PC}    ;; return
//  164 }
//  165 
//  166 // 0x16 17500 us / 50 => 350 us
//  167 // 0x12 11101 us
//  168 // 0x10 8450  us
//  169 // 0x02 5000  us
//  170 // 0x00 4500  us

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  171 uint8 b_getGyroVar(s_Gyro * Gyro_ptr)
//  172 {
b_getGyroVar:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
//  173     uint8 temp_H = 0; uint8 temp_L = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//  174     if(('F' == u8_IIC_ReadReg(I2C0_BASE_PTR,DEadr_GYRO_ADDR_LOW_6A,&temp_H,DEreg_GYRO_OutxH_29))||
//  175        ('F' == u8_IIC_ReadReg(I2C0_BASE_PTR,DEadr_GYRO_ADDR_LOW_6A,&temp_L,DEreg_GYRO_OutxL_28)))
        MOVS     R3,#+41
        ADD      R2,SP,#+1
        MOVS     R1,#+106
        LDR.N    R0,??DataTable4_6  ;; 0x40066000
        BL       u8_IIC_ReadReg
        CMP      R0,#+70
        BEQ.N    ??b_getGyroVar_0
        MOVS     R3,#+40
        ADD      R2,SP,#+0
        MOVS     R1,#+106
        LDR.N    R0,??DataTable4_6  ;; 0x40066000
        BL       u8_IIC_ReadReg
        CMP      R0,#+70
        BNE.N    ??b_getGyroVar_1
//  176     {return 'F';}
??b_getGyroVar_0:
        MOVS     R0,#+70
        B.N      ??b_getGyroVar_2
//  177     Gyro_ptr->x = ((temp_H << 8)|temp_L);
??b_getGyroVar_1:
        LDRB     R0,[SP, #+1]
        LDRB     R1,[SP, #+0]
        ORRS     R0,R1,R0, LSL #+8
        STRH     R0,[R4, #+0]
//  178     temp_H = 0; temp_L = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//  179     if(('F' == u8_IIC_ReadReg(I2C0_BASE_PTR,DEadr_GYRO_ADDR_LOW_6A,&temp_H,DEreg_GYRO_OutyH_31))||
//  180        ('F' == u8_IIC_ReadReg(I2C0_BASE_PTR,DEadr_GYRO_ADDR_LOW_6A,&temp_L,DEreg_GYRO_OutyL_30)))
        MOVS     R3,#+43
        ADD      R2,SP,#+1
        MOVS     R1,#+106
        LDR.N    R0,??DataTable4_6  ;; 0x40066000
        BL       u8_IIC_ReadReg
        CMP      R0,#+70
        BEQ.N    ??b_getGyroVar_3
        MOVS     R3,#+42
        ADD      R2,SP,#+0
        MOVS     R1,#+106
        LDR.N    R0,??DataTable4_6  ;; 0x40066000
        BL       u8_IIC_ReadReg
        CMP      R0,#+70
        BNE.N    ??b_getGyroVar_4
//  181     {return 'F';}
??b_getGyroVar_3:
        MOVS     R0,#+70
        B.N      ??b_getGyroVar_2
//  182     Gyro_ptr->y = ((temp_H << 8)|temp_L);
??b_getGyroVar_4:
        LDRB     R0,[SP, #+1]
        LDRB     R1,[SP, #+0]
        ORRS     R0,R1,R0, LSL #+8
        STRH     R0,[R4, #+2]
//  183     temp_H = 0; temp_L = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//  184     if(('F' == u8_IIC_ReadReg(I2C0_BASE_PTR,DEadr_GYRO_ADDR_LOW_6A,&temp_H,DEreg_GYRO_OutzH_33))||
//  185        ('F' == u8_IIC_ReadReg(I2C0_BASE_PTR,DEadr_GYRO_ADDR_LOW_6A,&temp_L,DEreg_GYRO_OutzL_32)))
        MOVS     R3,#+45
        ADD      R2,SP,#+1
        MOVS     R1,#+106
        LDR.N    R0,??DataTable4_6  ;; 0x40066000
        BL       u8_IIC_ReadReg
        CMP      R0,#+70
        BEQ.N    ??b_getGyroVar_5
        MOVS     R3,#+44
        ADD      R2,SP,#+0
        MOVS     R1,#+106
        LDR.N    R0,??DataTable4_6  ;; 0x40066000
        BL       u8_IIC_ReadReg
        CMP      R0,#+70
        BNE.N    ??b_getGyroVar_6
//  186     {return 'F';}
??b_getGyroVar_5:
        MOVS     R0,#+70
        B.N      ??b_getGyroVar_2
//  187     Gyro_ptr->z = ((temp_H << 8)|temp_L);
??b_getGyroVar_6:
        LDRB     R0,[SP, #+1]
        LDRB     R1,[SP, #+0]
        ORRS     R0,R1,R0, LSL #+8
        STRH     R0,[R4, #+4]
//  188     
//  189     //Gyro_ptr->x = Gyro_ptr->x;// >> 1;
//  190     //Gyro_ptr->y = Gyro_ptr->y;// >> 1;
//  191     //Gyro_ptr->z = Gyro_ptr->z;// >> 1;
//  192     return 'T';
        MOVS     R0,#+84
??b_getGyroVar_2:
        POP      {R1,R2,R4,PC}    ;; return
//  193 }
//  194 
//  195 
//  196 
//  197 /*πﬂ–‘µº∫Ω*/
//  198 //Ω«ÀŸ∂» => œ‡∂‘πﬂ–‘ø’º‰µƒΩ«ÀŸ∂»
//  199 //º”ÀŸ∂» => æ¯∂‘º”ÀŸ∂»
//  200 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  201 uint8 b_Navigation_Init()
//  202 {
b_Navigation_Init:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
//  203     //µº∫Ω¥´∏–∆˜≥ı ºªØ
//  204     SIM_SCGC4 |= SIM_SCGC4_IIC0_MASK; // SIM_SCGC4_IIC0_MASK
        LDR.N    R0,??DataTable4  ;; 0x40048034
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40
        LDR.N    R1,??DataTable4  ;; 0x40048034
        STR      R0,[R1, #+0]
//  205     SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK; // “˝Ω≈
        LDR.N    R0,??DataTable4_1  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x400
        LDR.N    R1,??DataTable4_1  ;; 0x40048038
        STR      R0,[R1, #+0]
//  206     PORTB_BASE_PTR->PCR[0] = 0x00000200u; // SCL
        LDR.N    R0,??DataTable4_2  ;; 0x4004a000
        MOV      R1,#+512
        STR      R1,[R0, #+0]
//  207     PORTB_BASE_PTR->PCR[1] = 0x00000200u; // SDA
        LDR.N    R0,??DataTable4_3  ;; 0x4004a004
        MOV      R1,#+512
        STR      R1,[R0, #+0]
//  208     //÷–∂œ≈‰÷√
//  209     
//  210     PORTB_BASE_PTR->PCR[2] = PORT_PCR_MUX(1);//GPIO
        LDR.N    R0,??DataTable4_7  ;; 0x4004a008
        MOV      R1,#+256
        STR      R1,[R0, #+0]
//  211     PORTB_BASE_PTR->PCR[3] = PORT_PCR_MUX(1);//GPIO
        LDR.N    R0,??DataTable4_8  ;; 0x4004a00c
        MOV      R1,#+256
        STR      R1,[R0, #+0]
//  212     PORTB_BASE_PTR->PCR[4] = PORT_PCR_MUX(1);//GPIO
        LDR.N    R0,??DataTable4_9  ;; 0x4004a010
        MOV      R1,#+256
        STR      R1,[R0, #+0]
//  213     PORTB_BASE_PTR->PCR[5] = PORT_PCR_MUX(1);//GPIO
        LDR.N    R0,??DataTable4_10  ;; 0x4004a014
        MOV      R1,#+256
        STR      R1,[R0, #+0]
//  214     
//  215     PTB_BASE_PTR->PDDR &=~ (1 << 2);
        LDR.N    R0,??DataTable4_11  ;; 0x400ff054
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x4
        LDR.N    R1,??DataTable4_11  ;; 0x400ff054
        STR      R0,[R1, #+0]
//  216     PTB_BASE_PTR->PDDR &=~ (1 << 3);
        LDR.N    R0,??DataTable4_11  ;; 0x400ff054
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x8
        LDR.N    R1,??DataTable4_11  ;; 0x400ff054
        STR      R0,[R1, #+0]
//  217     PTB_BASE_PTR->PDDR &=~ (1 << 4);
        LDR.N    R0,??DataTable4_11  ;; 0x400ff054
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x10
        LDR.N    R1,??DataTable4_11  ;; 0x400ff054
        STR      R0,[R1, #+0]
//  218     PTB_BASE_PTR->PDDR &=~ (1 << 5);
        LDR.N    R0,??DataTable4_11  ;; 0x400ff054
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x20
        LDR.N    R1,??DataTable4_11  ;; 0x400ff054
        STR      R0,[R1, #+0]
//  219     
//  220     I2C0_BASE_PTR->F = 0x16; //0x16; // 75MHz ∑÷∆µ45
        LDR.N    R0,??DataTable4_4  ;; 0x40066001
        MOVS     R1,#+22
        STRB     R1,[R0, #+0]
//  221     I2C0_BASE_PTR->C1 = I2C_C1_IICEN_MASK; // ø™∆ÙIICƒ£ Ω
        LDR.N    R0,??DataTable4_5  ;; 0x40066002
        MOVS     R1,#+128
        STRB     R1,[R0, #+0]
//  222     
//  223     const I2C_MemMapPtr iic_num = I2C0_BASE_PTR; // ∑Ω±„∏¸∏ƒ
        LDR.N    R4,??DataTable4_6  ;; 0x40066000
//  224     // ≥ı ºªØπ˝≥Ã
//  225     uint8 returnNum = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//  226     
//  227     // ====================================================================== //
//  228     /* ƒø±Í»∑»œ */
//  229     if('F' == u8_IIC_ReadReg(iic_num ,ACCELreg_IIC_ADDR_LOW_1E ,&returnNum , ACCELreg_WHO_AM_I_0D))
        MOVS     R3,#+13
        ADD      R2,SP,#+0
        MOVS     R1,#+30
        MOVS     R0,R4
        BL       u8_IIC_ReadReg
        CMP      R0,#+70
        BNE.N    ??b_Navigation_Init_0
//  230     {return 'F';}; // »∑∂®º”ÀŸ∂»º∆
        MOVS     R0,#+70
        B.N      ??b_Navigation_Init_1
//  231     if(ACCEL_WHOAMI_VAR != returnNum){return 'F';} // ƒø±Í»∑»œ
??b_Navigation_Init_0:
        LDRB     R0,[SP, #+0]
        CMP      R0,#+106
        BEQ.N    ??b_Navigation_Init_2
        MOVS     R0,#+70
        B.N      ??b_Navigation_Init_1
//  232     if('F' == u8_IIC_ReadReg(iic_num ,DEadr_GYRO_ADDR_LOW_6A ,&returnNum , DEreg_GYRO_WHO_AM_I_0F))
??b_Navigation_Init_2:
        MOVS     R3,#+15
        ADD      R2,SP,#+0
        MOVS     R1,#+106
        MOVS     R0,R4
        BL       u8_IIC_ReadReg
        CMP      R0,#+70
        BNE.N    ??b_Navigation_Init_3
//  233     {return 'F';} // »∑∂®Õ”¬›“«
        MOVS     R0,#+70
        B.N      ??b_Navigation_Init_1
//  234     if(0xD7 != returnNum){return 'F';} // ƒø±Í»∑»œ
??b_Navigation_Init_3:
        LDRB     R0,[SP, #+0]
        CMP      R0,#+215
        BEQ.N    ??b_Navigation_Init_4
        MOVS     R0,#+70
        B.N      ??b_Navigation_Init_1
//  235     
//  236     
//  237     // ====================================================================== //
//  238     /* ∂‘ºƒ¥Ê∆˜Ω¯––∏¸∏ƒ */ // “™ø™∆ÙLowODR
//  239     if('F' == u8_IIC_WriteReg(iic_num ,DEadr_GYRO_ADDR_LOW_6A , 0xCF , DEreg_GYRO_CTRL1_20))
??b_Navigation_Init_4:
        MOVS     R3,#+32
        MOVS     R2,#+207
        MOVS     R1,#+106
        MOVS     R0,R4
        BL       u8_IIC_WriteReg
        CMP      R0,#+70
        BNE.N    ??b_Navigation_Init_5
//  240     {return 'F';} // øÿ÷∆»∑∂® = 20msøÿ÷∆÷‹∆⁄£¨π —°‘ÒODR = 50Hz => Cut-Off 16.6Hz
        MOVS     R0,#+70
        B.N      ??b_Navigation_Init_1
//  241     if('F' == u8_IIC_WriteReg(iic_num ,DEadr_GYRO_ADDR_LOW_6A , 0x29 , DEreg_GYRO_CTRL2_21))
??b_Navigation_Init_5:
        MOVS     R3,#+33
        MOVS     R2,#+41
        MOVS     R1,#+106
        MOVS     R0,R4
        BL       u8_IIC_WriteReg
        CMP      R0,#+70
        BNE.N    ??b_Navigation_Init_6
//  242     {return 'F';} // Normal Mode // ∏ﬂÕ®¬À≤®Ωÿ÷π∆µ¬ £∫0.005 Hz
        MOVS     R0,#+70
        B.N      ??b_Navigation_Init_1
//  243     if('F' == u8_IIC_WriteReg(iic_num ,DEadr_GYRO_ADDR_LOW_6A , 0x08 , DEreg_GYRO_CTRL3_22))
??b_Navigation_Init_6:
        MOVS     R3,#+34
        MOVS     R2,#+8
        MOVS     R1,#+106
        MOVS     R0,R4
        BL       u8_IIC_WriteReg
        CMP      R0,#+70
        BNE.N    ??b_Navigation_Init_7
//  244     {return 'F';} // Date Ready on DRDY/INT2 pin.
        MOVS     R0,#+70
        B.N      ??b_Navigation_Init_1
//  245     //if('F' == u8_IIC_WriteReg(iic_num ,DEadr_GYRO_ADDR_LOW_6A , 0x00 , DEreg_GYRO_CTRL4_23))
//  246     //{return 'F';} //
//  247     if('F' == u8_IIC_WriteReg(iic_num ,DEadr_GYRO_ADDR_LOW_6A , 0x10 , DEreg_GYRO_CTRL5_24))
??b_Navigation_Init_7:
        MOVS     R3,#+36
        MOVS     R2,#+16
        MOVS     R1,#+106
        MOVS     R0,R4
        BL       u8_IIC_WriteReg
        CMP      R0,#+70
        BNE.N    ??b_Navigation_Init_8
//  248     {return 'F';} // Œ¥≈‰÷√∫√
        MOVS     R0,#+70
        B.N      ??b_Navigation_Init_1
//  249     if('F' == u8_IIC_WriteReg(iic_num ,DEadr_GYRO_ADDR_LOW_6A , 0x01 , 0x39))
??b_Navigation_Init_8:
        MOVS     R3,#+57
        MOVS     R2,#+1
        MOVS     R1,#+106
        MOVS     R0,R4
        BL       u8_IIC_WriteReg
        CMP      R0,#+70
        BNE.N    ??b_Navigation_Init_9
//  250     {return 'F';} // µÕÀŸ πƒ‹
        MOVS     R0,#+70
        B.N      ??b_Navigation_Init_1
//  251     
//  252     
//  253     
//  254     return 'T';
??b_Navigation_Init_9:
        MOVS     R0,#+84
??b_Navigation_Init_1:
        POP      {R1,R2,R4,PC}    ;; return
//  255 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     0x40048034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     0x4004a000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     0x4004a004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     0x40066001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     0x40066002

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_6:
        DC32     0x40066000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_7:
        DC32     0x4004a008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_8:
        DC32     0x4004a00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_9:
        DC32     0x4004a010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_10:
        DC32     0x4004a014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_11:
        DC32     0x400ff054

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
// 1 536 bytes in section .text
// 
// 1 536 bytes of CODE memory
//
//Errors: none
//Warnings: none
