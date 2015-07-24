///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     27/Nov/2014  19:27:57 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\MK60FX512VLQ15 /
//                    \ShunAn_Panel\SixAxes_mpu6050.c                         /
//    Command line =  D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\MK60FX512VLQ15 /
//                    \ShunAn_Panel\SixAxes_mpu6050.c -D IAR -D TWR_K60F120M  /
//                    -lCN D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\MK60FX512 /
//                    VLQ15\FLASH_1MB\List\ -lB D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³ /
//                    °µÈýºÅ\´úÂë\MK60FX512VLQ15\FLASH_1MB\List\ -o           /
//                    D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\MK60FX512VLQ15 /
//                    \FLASH_1MB\Obj\ --no_cse --no_unroll --no_inline        /
//                    --no_code_motion --no_tbaa --no_clustering              /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=None --dlib_config             /
//                    "C:\Program Files (x86)\IAR Systems\Embedded Workbench  /
//                    6.5\arm\INC\c\DLib_Config_Normal.h" -I                  /
//                    D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\MK60FX512VLQ15 /
//                    \ -I D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\MK60FX512 /
//                    VLQ15\Library\ -I D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´ /
//                    úÂë\MK60FX512VLQ15\Library\BlessedAlien\ -I             /
//                    D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\MK60FX512VLQ15 /
//                    \ShunAn_Panel\ -Ol --use_c++_inline                     /
//    List file    =  D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\MK60FX512VLQ15 /
//                    \FLASH_1MB\List\SixAxes_mpu6050.s                       /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN u8_IIC_ReadReg
        EXTERN u8_IIC_WriteReg
        EXTERN v_IIC_Init
        EXTERN v_Uart_TxInt16

        PUBLIC u8_GetAccel
        PUBLIC u8_GetGyro
        PUBLIC u8_TxMotionData
        PUBLIC u8_mpu6050_RegInit

// D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\MK60FX512VLQ15\ShunAn_Panel\SixAxes_mpu6050.c
//    1 #include "arm_cm4.h"
//    2 #include "MK60F15.h"
//    3 #include "ShunAn_Lib.h"
//    4 #include "start_ShunAn.h"
//    5 
//    6 #include "SixAxes_mpu6050.h"
//    7 
//    8 #include "IIC.h"
//    9 #include "Bluetooth.h"
//   10 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   11 uint8 u8_mpu6050_RegInit(motionUnit * mpu)
//   12 {
u8_mpu6050_RegInit:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
//   13     v_IIC_Init(); // IIC³õÊ¼»¯
        BL       v_IIC_Init
//   14     uint8 returnNum = 0; // ·µ»ØÊýÔÝ´æ
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//   15     if('F' == u8_IIC_ReadReg(I2C0_BASE_PTR,0x68,&returnNum,117)){return 'F';}; // ±ê¶¨MPU6050
        MOVS     R3,#+117
        ADD      R2,SP,#+0
        MOVS     R1,#+104
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       u8_IIC_ReadReg
        CMP      R0,#+70
        BNE.N    ??u8_mpu6050_RegInit_0
        MOVS     R0,#+70
        B.N      ??u8_mpu6050_RegInit_1
//   16     if(0x68 != returnNum){return 'F';}; // È·ÈÏMPU6050µÄÐòÁÐºÅ
??u8_mpu6050_RegInit_0:
        LDRB     R0,[SP, #+0]
        CMP      R0,#+104
        BEQ.N    ??u8_mpu6050_RegInit_2
        MOVS     R0,#+70
        B.N      ??u8_mpu6050_RegInit_1
//   17     if('F' == u8_IIC_WriteReg(I2C0_BASE_PTR,0x68,0    , 107)){return 'F';}; // ÅäÖÃÕñµ´
??u8_mpu6050_RegInit_2:
        MOVS     R3,#+107
        MOVS     R2,#+0
        MOVS     R1,#+104
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       u8_IIC_WriteReg
        CMP      R0,#+70
        BNE.N    ??u8_mpu6050_RegInit_3
        MOVS     R0,#+70
        B.N      ??u8_mpu6050_RegInit_1
//   18     if('F' == u8_IIC_WriteReg(I2C0_BASE_PTR,0x68,0    ,0x19)){return 'F';}; // ÅäÖÃÍÓÂÝÒÇÊä³ö 7
??u8_mpu6050_RegInit_3:
        MOVS     R3,#+25
        MOVS     R2,#+0
        MOVS     R1,#+104
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       u8_IIC_WriteReg
        CMP      R0,#+70
        BNE.N    ??u8_mpu6050_RegInit_4
        MOVS     R0,#+70
        B.N      ??u8_mpu6050_RegInit_1
//   19     if('F' == u8_IIC_WriteReg(I2C0_BASE_PTR,0x68,0    ,0x1A)){return 'F';}; // ÅäÖÃµÍÍ¨ÂË²¨ 6
??u8_mpu6050_RegInit_4:
        MOVS     R3,#+26
        MOVS     R2,#+0
        MOVS     R1,#+104
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       u8_IIC_WriteReg
        CMP      R0,#+70
        BNE.N    ??u8_mpu6050_RegInit_5
        MOVS     R0,#+70
        B.N      ??u8_mpu6050_RegInit_1
//   20     if('F' == u8_IIC_WriteReg(I2C0_BASE_PTR,0x68,0    ,0x1B)){return 'F';}; // ÅäÖÃGyro
??u8_mpu6050_RegInit_5:
        MOVS     R3,#+27
        MOVS     R2,#+0
        MOVS     R1,#+104
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       u8_IIC_WriteReg
        CMP      R0,#+70
        BNE.N    ??u8_mpu6050_RegInit_6
        MOVS     R0,#+70
        B.N      ??u8_mpu6050_RegInit_1
//   21     if('F' == u8_IIC_WriteReg(I2C0_BASE_PTR,0x68,0    ,0x1C)){return 'F';}; // ÅäÖÃAccel
??u8_mpu6050_RegInit_6:
        MOVS     R3,#+28
        MOVS     R2,#+0
        MOVS     R1,#+104
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       u8_IIC_WriteReg
        CMP      R0,#+70
        BNE.N    ??u8_mpu6050_RegInit_7
        MOVS     R0,#+70
        B.N      ??u8_mpu6050_RegInit_1
//   22     mpu->Accel_Var.x = 0;
??u8_mpu6050_RegInit_7:
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
//   23     mpu->Accel_Var.y = 0;
        MOVS     R0,#+0
        STRH     R0,[R4, #+2]
//   24     mpu->Accel_Var.z = 0;
        MOVS     R0,#+0
        STRH     R0,[R4, #+4]
//   25     mpu->Gyro_Var.x = 0;
        MOVS     R0,#+0
        STRH     R0,[R4, #+6]
//   26     mpu->Gyro_Var.y = 0;
        MOVS     R0,#+0
        STRH     R0,[R4, #+8]
//   27     mpu->Gyro_Var.z = 0;
        MOVS     R0,#+0
        STRH     R0,[R4, #+10]
//   28     return 'T';
        MOVS     R0,#+84
??u8_mpu6050_RegInit_1:
        POP      {R1,R2,R4,PC}    ;; return
//   29 }
//   30 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   31 uint8 u8_GetAccel(motionUnit * getAccel)
//   32 {
u8_GetAccel:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
//   33     uint8 temp_H = 0; uint8 temp_L = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//   34     if(('F' == u8_IIC_ReadReg(I2C0_BASE_PTR,0x68,&temp_H,59))||('F' == u8_IIC_ReadReg(I2C0_BASE_PTR,0x68,&temp_L,60)))
        MOVS     R3,#+59
        ADD      R2,SP,#+1
        MOVS     R1,#+104
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       u8_IIC_ReadReg
        CMP      R0,#+70
        BEQ.N    ??u8_GetAccel_0
        MOVS     R3,#+60
        ADD      R2,SP,#+0
        MOVS     R1,#+104
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       u8_IIC_ReadReg
        CMP      R0,#+70
        BNE.N    ??u8_GetAccel_1
//   35     {return 'F';}
??u8_GetAccel_0:
        MOVS     R0,#+70
        B.N      ??u8_GetAccel_2
//   36     getAccel->Accel_Var.x = ((temp_H << 8)|temp_L);
??u8_GetAccel_1:
        LDRB     R0,[SP, #+1]
        LDRB     R1,[SP, #+0]
        ORRS     R0,R1,R0, LSL #+8
        STRH     R0,[R4, #+0]
//   37     temp_H = 0; temp_L = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//   38     if(('F' == u8_IIC_ReadReg(I2C0_BASE_PTR,0x68,&temp_H,61))||('F' == u8_IIC_ReadReg(I2C0_BASE_PTR,0x68,&temp_L,62)))
        MOVS     R3,#+61
        ADD      R2,SP,#+1
        MOVS     R1,#+104
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       u8_IIC_ReadReg
        CMP      R0,#+70
        BEQ.N    ??u8_GetAccel_3
        MOVS     R3,#+62
        ADD      R2,SP,#+0
        MOVS     R1,#+104
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       u8_IIC_ReadReg
        CMP      R0,#+70
        BNE.N    ??u8_GetAccel_4
//   39     {return 'F';}
??u8_GetAccel_3:
        MOVS     R0,#+70
        B.N      ??u8_GetAccel_2
//   40     getAccel->Accel_Var.y = ((temp_H << 8)|temp_L);
??u8_GetAccel_4:
        LDRB     R0,[SP, #+1]
        LDRB     R1,[SP, #+0]
        ORRS     R0,R1,R0, LSL #+8
        STRH     R0,[R4, #+2]
//   41     temp_H = 0; temp_L = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//   42     if(('F' == u8_IIC_ReadReg(I2C0_BASE_PTR,0x68,&temp_H,63))||('F' == u8_IIC_ReadReg(I2C0_BASE_PTR,0x68,&temp_L,64)))
        MOVS     R3,#+63
        ADD      R2,SP,#+1
        MOVS     R1,#+104
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       u8_IIC_ReadReg
        CMP      R0,#+70
        BEQ.N    ??u8_GetAccel_5
        MOVS     R3,#+64
        ADD      R2,SP,#+0
        MOVS     R1,#+104
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       u8_IIC_ReadReg
        CMP      R0,#+70
        BNE.N    ??u8_GetAccel_6
//   43     {return 'F';}
??u8_GetAccel_5:
        MOVS     R0,#+70
        B.N      ??u8_GetAccel_2
//   44     getAccel->Accel_Var.z = ((temp_H << 8)|temp_L);
??u8_GetAccel_6:
        LDRB     R0,[SP, #+1]
        LDRB     R1,[SP, #+0]
        ORRS     R0,R1,R0, LSL #+8
        STRH     R0,[R4, #+4]
//   45     return 'T';
        MOVS     R0,#+84
??u8_GetAccel_2:
        POP      {R1,R2,R4,PC}    ;; return
//   46 }
//   47 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   48 uint8 u8_GetGyro(motionUnit * getGyro)
//   49 {
u8_GetGyro:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
//   50     uint8 temp_H = 0; uint8 temp_L = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//   51     if(('F' == u8_IIC_ReadReg(I2C0_BASE_PTR,0x68,&temp_H,67))||('F' == u8_IIC_ReadReg(I2C0_BASE_PTR,0x68,&temp_L,68)))
        MOVS     R3,#+67
        ADD      R2,SP,#+1
        MOVS     R1,#+104
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       u8_IIC_ReadReg
        CMP      R0,#+70
        BEQ.N    ??u8_GetGyro_0
        MOVS     R3,#+68
        ADD      R2,SP,#+0
        MOVS     R1,#+104
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       u8_IIC_ReadReg
        CMP      R0,#+70
        BNE.N    ??u8_GetGyro_1
//   52     {return 'F';}
??u8_GetGyro_0:
        MOVS     R0,#+70
        B.N      ??u8_GetGyro_2
//   53     getGyro->Gyro_Var.x = ((temp_H << 8)|temp_L);
??u8_GetGyro_1:
        LDRB     R0,[SP, #+1]
        LDRB     R1,[SP, #+0]
        ORRS     R0,R1,R0, LSL #+8
        STRH     R0,[R4, #+6]
//   54     temp_H = 0; temp_L = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//   55     if(('F' == u8_IIC_ReadReg(I2C0_BASE_PTR,0x68,&temp_H,69))||('F' == u8_IIC_ReadReg(I2C0_BASE_PTR,0x68,&temp_L,70)))
        MOVS     R3,#+69
        ADD      R2,SP,#+1
        MOVS     R1,#+104
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       u8_IIC_ReadReg
        CMP      R0,#+70
        BEQ.N    ??u8_GetGyro_3
        MOVS     R3,#+70
        ADD      R2,SP,#+0
        MOVS     R1,#+104
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       u8_IIC_ReadReg
        CMP      R0,#+70
        BNE.N    ??u8_GetGyro_4
//   56     {return 'F';}
??u8_GetGyro_3:
        MOVS     R0,#+70
        B.N      ??u8_GetGyro_2
//   57     getGyro->Gyro_Var.y = ((temp_H << 8)|temp_L);
??u8_GetGyro_4:
        LDRB     R0,[SP, #+1]
        LDRB     R1,[SP, #+0]
        ORRS     R0,R1,R0, LSL #+8
        STRH     R0,[R4, #+8]
//   58     temp_H = 0; temp_L = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//   59     if(('F' == u8_IIC_ReadReg(I2C0_BASE_PTR,0x68,&temp_H,71))||('F' == u8_IIC_ReadReg(I2C0_BASE_PTR,0x68,&temp_L,72)))
        MOVS     R3,#+71
        ADD      R2,SP,#+1
        MOVS     R1,#+104
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       u8_IIC_ReadReg
        CMP      R0,#+70
        BEQ.N    ??u8_GetGyro_5
        MOVS     R3,#+72
        ADD      R2,SP,#+0
        MOVS     R1,#+104
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       u8_IIC_ReadReg
        CMP      R0,#+70
        BNE.N    ??u8_GetGyro_6
//   60     {return 'F';}
??u8_GetGyro_5:
        MOVS     R0,#+70
        B.N      ??u8_GetGyro_2
//   61     getGyro->Gyro_Var.z = ((temp_H << 8)|temp_L);
??u8_GetGyro_6:
        LDRB     R0,[SP, #+1]
        LDRB     R1,[SP, #+0]
        ORRS     R0,R1,R0, LSL #+8
        STRH     R0,[R4, #+10]
//   62     return 'T';
        MOVS     R0,#+84
??u8_GetGyro_2:
        POP      {R1,R2,R4,PC}    ;; return
//   63 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     0x40066000
//   64 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   65 uint8 u8_TxMotionData(motionUnit * mpu6050)
//   66 {
u8_TxMotionData:
        PUSH     {R4,LR}
        MOVS     R4,R0
//   67     v_Uart_TxInt16(0xFEA0); // ÆðÊ¼Î»
        MOVW     R0,#+65184
        BL       v_Uart_TxInt16
//   68     v_Uart_TxInt16(mpu6050->Gyro_Var.x);
        LDRH     R0,[R4, #+6]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       v_Uart_TxInt16
//   69     v_Uart_TxInt16(mpu6050->Gyro_Var.y);
        LDRH     R0,[R4, #+8]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       v_Uart_TxInt16
//   70     v_Uart_TxInt16(mpu6050->Gyro_Var.z);
        LDRH     R0,[R4, #+10]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       v_Uart_TxInt16
//   71     v_Uart_TxInt16(mpu6050->Accel_Var.x);
        LDRH     R0,[R4, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       v_Uart_TxInt16
//   72     v_Uart_TxInt16(mpu6050->Accel_Var.y);
        LDRH     R0,[R4, #+2]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       v_Uart_TxInt16
//   73     v_Uart_TxInt16(mpu6050->Accel_Var.z);
        LDRH     R0,[R4, #+4]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       v_Uart_TxInt16
//   74     return 'T';
        MOVS     R0,#+84
        POP      {R4,PC}          ;; return
//   75 }

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
// 648 bytes in section .text
// 
// 648 bytes of CODE memory
//
//Errors: none
//Warnings: none
