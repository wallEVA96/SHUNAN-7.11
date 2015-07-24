///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     16/Aug/2014  22:11:13 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\pc\Desktop\������������\����������� -         /
//                    TM4123G\����\ң����\ShunAn2\GR_Gyroscope.c              /
//    Command line =  "C:\Users\pc\Desktop\������������\����������� -        /
//                    TM4123G\����\ң����\ShunAn2\GR_Gyroscope.c" -D IAR -D   /
//                    ShunAn2 -lCN "C:\Users\pc\Desktop\������������\������� /
//                    ���� - TM4123G\����\ң����\FLASH_1M\List\" -lB          /
//                    "C:\Users\pc\Desktop\������������\����������� -        /
//                    TM4123G\����\ң����\FLASH_1M\List\" -o                  /
//                    "C:\Users\pc\Desktop\������������\����������� -        /
//                    TM4123G\����\ң����\FLASH_1M\Obj\" --no_cse             /
//                    --no_unroll --no_inline --no_code_motion --no_tbaa      /
//                    --no_clustering --no_scheduling --debug                 /
//                    --endian=little --cpu=Cortex-M4 -e --fpu=None           /
//                    --dlib_config "C:\Program Files (x86)\IAR               /
//                    Systems\Embedded Workbench                              /
//                    6.5\arm\INC\c\DLib_Config_Normal.h" -I                  /
//                    "C:\Users\pc\Desktop\������������\����������� -        /
//                    TM4123G\����\ң����\ShunAn2\" -I                        /
//                    "C:\Users\pc\Desktop\������������\����������� -        /
//                    TM4123G\����\ң����\Library\" -I                        /
//                    "C:\Users\pc\Desktop\������������\����������� -        /
//                    TM4123G\����\ң����\Library\BlessedAlien\" -Ol          /
//                    --use_c++_inline                                        /
//    List file    =  C:\Users\pc\Desktop\������������\����������� -         /
//                    TM4123G\����\ң����\FLASH_1M\List\GR_Gyroscope.s        /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        PUBLIC GR_AccelerometerInit
        PUBLIC GR_GyroscopeInit
        PUBLIC SampleOncePTB4

// C:\Users\pc\Desktop\������������\����������� - TM4123G\����\ң����\ShunAn2\GR_Gyroscope.c
//    1 #include "GR_Gyroscope.h"
//    2 #include "MK60F15.h"
//    3 
//    4 //������AD�ڳ�ʼ��

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    5 void GR_GyroscopeInit(void)
//    6 {
//    7   SIM_SCGC3 |= 0x08000000u;//ʹ��ADC1ģ��ʱ�� 
GR_GyroscopeInit:
        LDR.N    R0,??DataTable1  ;; 0x40048030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8000000
        LDR.N    R1,??DataTable1  ;; 0x40048030
        STR      R0,[R1, #+0]
//    8   SIM_SCGC5 |= 0x00000400u;//ʹ��PORTBʱ�� 
        LDR.N    R0,??DataTable1_1  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x400
        LDR.N    R1,??DataTable1_1  ;; 0x40048038
        STR      R0,[R1, #+0]
//    9   //------------------------------������---------------------------------
//   10   PORTB_PCR4 |= 0x0u;//���Ÿ���ѡ��ģ������
        LDR.N    R0,??DataTable1_2  ;; 0x4004a010
        LDR.N    R1,??DataTable1_2  ;; 0x4004a010
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
//   11   //------------------------------���ٶȼ�---------------------------------
//   12 
//   13 
//   14 }
        BX       LR               ;; return
//   15 
//   16 //���ٶȼ�AD�ڳ�ʼ��

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   17 void GR_AccelerometerInit(void)
//   18 {
//   19   
//   20 }
GR_AccelerometerInit:
        BX       LR               ;; return
//   21 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   22 unsigned char SampleOncePTB4(void)
//   23 {
//   24   unsigned char result = 0;
SampleOncePTB4:
        MOVS     R0,#+0
//   25   ADC1_CFG1 |= 0x00000030u;//ADC1����Ϊ����ʱ��Ƶ��/2��������ʱ�䣬8λ����
        LDR.N    R1,??DataTable1_3  ;; 0x400bb008
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x30
        LDR.N    R2,??DataTable1_3  ;; 0x400bb008
        STR      R1,[R2, #+0]
//   26   ADC1_CFG2 |= 0x00000004u;//ADC1����Ϊaͨ������ֹ�첽ʱ�ӣ���������ת���������ʱ��
        LDR.N    R1,??DataTable1_4  ;; 0x400bb00c
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x4
        LDR.N    R2,??DataTable1_4  ;; 0x400bb00c
        STR      R1,[R2, #+0]
//   27   ADC1_SC1A = 0x0000000Au;//ADC1����Ϊ��ֹ�жϣ����˲�����ͨ��10����������Ĵ���д���ͻῪʼת��
        LDR.N    R1,??DataTable1_5  ;; 0x400bb000
        MOVS     R2,#+10
        STR      R2,[R1, #+0]
//   28   while ((ADC1_SC1A & ADC_SC1_COCO_MASK ) != ADC_SC1_COCO_MASK);//�ȴ�����ת�����   
??SampleOncePTB4_0:
        LDR.N    R0,??DataTable1_5  ;; 0x400bb000
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??SampleOncePTB4_0
//   29   result = ADC1_RA;
        LDR.N    R0,??DataTable1_6  ;; 0x400bb010
        LDR      R0,[R0, #+0]
//   30   return result;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
//   31 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     0x40048030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     0x4004a010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     0x400bb008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DC32     0x400bb00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_5:
        DC32     0x400bb000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_6:
        DC32     0x400bb010

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
// 112 bytes in section .text
// 
// 112 bytes of CODE memory
//
//Errors: none
//Warnings: none
