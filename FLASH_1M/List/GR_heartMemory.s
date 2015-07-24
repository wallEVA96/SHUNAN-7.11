///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     16/Aug/2014  22:11:13 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\pc\Desktop\������������\����������� -         /
//                    TM4123G\����\ң����\ShunAn2\GR_heartMemory.c            /
//    Command line =  "C:\Users\pc\Desktop\������������\����������� -        /
//                    TM4123G\����\ң����\ShunAn2\GR_heartMemory.c" -D IAR    /
//                    -D ShunAn2 -lCN "C:\Users\pc\Desktop\������������\����� /
//                    ������ - TM4123G\����\ң����\FLASH_1M\List\" -lB       /
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
//                    TM4123G\����\ң����\FLASH_1M\List\GR_heartMemory.s      /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN Con
        EXTERN Give
        EXTERN Trk

        PUBLIC Save2Data
        PUBLIC wr_Data_cut

// C:\Users\pc\Desktop\������������\����������� - TM4123G\����\ң����\ShunAn2\GR_heartMemory.c
//    1 #include "GR_heartMemory.h"
//    2 #include "GodRecognitionx11_12.h"
//    3 #include "GR_Bluetoothx11_12.h"
//    4 #include "MK60F15.h"
//    5 /* �������ʣ��뷢�ʼ���591194323@qq.com */
//    6 
//    7 /*
//    8 uint8  ��� geiding D                   \\�������ڵ�λ\ 
//    9 uint16 ��� geiding shiji D PWM                   \\ 
//   10 uint32 ��ǰʱ��\��ǰ·��             \\ 
//   11 uint8  ����״̬                     \\ 
//   12 uint16 ƫ��\ƫ��仯��\��ֵ          \\ 
//   13 25 Bytes
//   14 10ms - 20s
//   15 */
//   16 // ������� 50k bytes

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   17 RAM_operation Save2Data = {0};
Save2Data:
        DS8 25012

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   18 void wr_Data_cut( timeChoose t_1or10 )
//   19 {
//   20     // ʱ�����
//   21     Save2Data.time_counter ++;
wr_Data_cut:
        LDR.N    R1,??wr_Data_cut_0
        LDRB     R1,[R1, #+0]
        ADDS     R1,R1,#+1
        LDR.N    R2,??wr_Data_cut_0
        STRB     R1,[R2, #+0]
//   22     if( t_1or10 == Save2Data.time_counter )
        LDR.N    R1,??wr_Data_cut_0
        LDRB     R1,[R1, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,R1
        BNE.N    ??wr_Data_cut_1
//   23     {
//   24         Save2Data.time_counter = 0;
        LDR.N    R0,??wr_Data_cut_0
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//   25     }
//   26     else
//   27     {
//   28         return;
//   29     }
//   30     // ���ݴ���
//   31     if( Save2Data.save_status & 0x80 ){return;} // �������־λ
        LDR.N    R0,??wr_Data_cut_0
        LDRB     R0,[R0, #+1]
        LSLS     R0,R0,#+24
        BMI.N    ??wr_Data_cut_2
//   32     if( Save2Data.save_status & 0x01 )  // ���������־
        LDR.N    R0,??wr_Data_cut_0
        LDRB     R0,[R0, #+1]
        LSLS     R0,R0,#+31
        BPL.W    ??wr_Data_cut_3
//   33     {
//   34         Save2Data.CCD1_cen[Save2Data.currentWrite]        = Trk.cen1[Trk.currentCen1];
        LDR.N    R0,??wr_Data_cut_0+0x4
        LDRH     R0,[R0, #+810]
        LDR.N    R1,??wr_Data_cut_0+0x4
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+410]
        MOVW     R1,#+17012
        LDR.N    R2,??wr_Data_cut_0
        LDR      R2,[R2, #+8]
        LDR.N    R3,??wr_Data_cut_0
        ADDS     R2,R3,R2, LSL #+1
        STRH     R0,[R1, R2]
//   35         Save2Data.CCD1_CenRate[Save2Data.currentWrite]    = Give.CenRate1;
        MOVW     R0,#+21012
        LDR.N    R1,??wr_Data_cut_0
        LDR      R1,[R1, #+8]
        LDR.N    R2,??wr_Data_cut_0
        ADDS     R1,R2,R1, LSL #+1
        LDR.N    R2,??wr_Data_cut_0+0x8
        LDRH     R2,[R2, #+14]
        STRH     R2,[R0, R1]
//   36         Save2Data.CCD2_cen[Save2Data.currentWrite]        = Trk.cen2[Trk.currentCen2];
        LDR.N    R0,??wr_Data_cut_0+0x4
        LDRH     R0,[R0, #+1642]
        LDR.N    R1,??wr_Data_cut_0+0x4
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+1242]
        MOVW     R1,#+19012
        LDR.N    R2,??wr_Data_cut_0
        LDR      R2,[R2, #+8]
        LDR.N    R3,??wr_Data_cut_0
        ADDS     R2,R3,R2, LSL #+1
        STRH     R0,[R1, R2]
//   37         Save2Data.CCD2_CenRate[Save2Data.currentWrite]    = Give.CenRate2;
        MOVW     R0,#+23012
        LDR.N    R1,??wr_Data_cut_0
        LDR      R1,[R1, #+8]
        LDR.N    R2,??wr_Data_cut_0
        ADDS     R1,R2,R1, LSL #+1
        LDR.N    R2,??wr_Data_cut_0+0x8
        LDRH     R2,[R2, #+16]
        STRH     R2,[R0, R1]
//   38         
//   39         switch( Give.motorDir )
        LDR.N    R0,??wr_Data_cut_0+0x8
        LDRB     R0,[R0, #+46]
        CMP      R0,#+0
        BEQ.N    ??wr_Data_cut_4
        CMP      R0,#+2
        BEQ.N    ??wr_Data_cut_5
        BCC.N    ??wr_Data_cut_6
        B.N      ??wr_Data_cut_7
//   40         {
//   41             case 0:
//   42                 Save2Data.Motor_Give[Save2Data.currentWrite]            = 0;
??wr_Data_cut_4:
        LDR.N    R0,??wr_Data_cut_0
        LDR      R0,[R0, #+8]
        LDR.N    R1,??wr_Data_cut_0
        ADDS     R0,R1,R0, LSL #+1
        MOVS     R1,#+0
        STRH     R1,[R0, #+4012]
//   43                 Save2Data.Motor_Fuzzy_Give[Save2Data.currentWrite]      = 0;
        MOVW     R0,#+6012
        LDR.N    R1,??wr_Data_cut_0
        LDR      R1,[R1, #+8]
        LDR.N    R2,??wr_Data_cut_0
        ADDS     R1,R2,R1, LSL #+1
        MOVS     R2,#+0
        STRH     R2,[R0, R1]
//   44                 Save2Data.Motor_PWM[Save2Data.currentWrite]             = Give.motorPWM;
        MOVW     R0,#+10012
        LDR.N    R1,??wr_Data_cut_0
        LDR      R1,[R1, #+8]
        LDR.N    R2,??wr_Data_cut_0
        ADDS     R1,R2,R1, LSL #+1
        LDR.N    R2,??wr_Data_cut_0+0x8
        LDRH     R2,[R2, #+44]
        STRH     R2,[R0, R1]
//   45             break;
        B.N      ??wr_Data_cut_7
??wr_Data_cut_1:
        B.N      ??wr_Data_cut_8
??wr_Data_cut_2:
        B.N      ??wr_Data_cut_8
//   46             case 1:// ��ת
//   47                 Save2Data.Motor_Give[Save2Data.currentWrite]            = Give.motorOrgSpeed;
??wr_Data_cut_6:
        LDR.N    R0,??wr_Data_cut_0
        LDR      R0,[R0, #+8]
        LDR.N    R1,??wr_Data_cut_0
        ADDS     R0,R1,R0, LSL #+1
        LDR.N    R1,??wr_Data_cut_0+0x8
        LDRH     R1,[R1, #+34]
        STRH     R1,[R0, #+4012]
//   48                 Save2Data.Motor_Fuzzy_Give[Save2Data.currentWrite]      = Give.motorDSpeed;
        MOVW     R0,#+6012
        LDR.N    R1,??wr_Data_cut_0
        LDR      R1,[R1, #+8]
        LDR.N    R2,??wr_Data_cut_0
        ADDS     R1,R2,R1, LSL #+1
        LDR.N    R2,??wr_Data_cut_0+0x8
        LDRH     R2,[R2, #+36]
        STRH     R2,[R0, R1]
//   49                 Save2Data.Motor_PWM[Save2Data.currentWrite]             = Give.motorPWM;
        MOVW     R0,#+10012
        LDR.N    R1,??wr_Data_cut_0
        LDR      R1,[R1, #+8]
        LDR.N    R2,??wr_Data_cut_0
        ADDS     R1,R2,R1, LSL #+1
        LDR.N    R2,??wr_Data_cut_0+0x8
        LDRH     R2,[R2, #+44]
        STRH     R2,[R0, R1]
//   50             break;
        B.N      ??wr_Data_cut_7
//   51             case 2:// ��ת
//   52                 Save2Data.Motor_Give[Save2Data.currentWrite]            = Give.motorOrgSpeed | 0x8000;
??wr_Data_cut_5:
        LDR.N    R0,??wr_Data_cut_0
        LDR      R0,[R0, #+8]
        LDR.N    R1,??wr_Data_cut_0
        ADDS     R0,R1,R0, LSL #+1
        LDR.N    R1,??wr_Data_cut_0+0x8
        LDRH     R1,[R1, #+34]
        ORRS     R1,R1,#0x8000
        STRH     R1,[R0, #+4012]
//   53                 Save2Data.Motor_Fuzzy_Give[Save2Data.currentWrite]      = Give.motorDSpeed | 0x8000;
        MOVW     R0,#+6012
        LDR.N    R1,??wr_Data_cut_0
        LDR      R1,[R1, #+8]
        LDR.N    R2,??wr_Data_cut_0
        ADDS     R1,R2,R1, LSL #+1
        LDR.N    R2,??wr_Data_cut_0+0x8
        LDRH     R2,[R2, #+36]
        ORRS     R2,R2,#0x8000
        STRH     R2,[R0, R1]
//   54                 Save2Data.Motor_PWM[Save2Data.currentWrite]             = Give.motorPWM | 0x8000;
        MOVW     R0,#+10012
        LDR.N    R1,??wr_Data_cut_0
        LDR      R1,[R1, #+8]
        LDR.N    R2,??wr_Data_cut_0
        ADDS     R1,R2,R1, LSL #+1
        LDR.N    R2,??wr_Data_cut_0+0x8
        LDRH     R2,[R2, #+44]
        ORRS     R2,R2,#0x8000
        STRH     R2,[R0, R1]
//   55             break;
//   56         }
//   57         
//   58               
//   59       //Save2Data.Motor_Speed[Save2Data.currentWrite]     = ;// ������
//   60     
//   61         Save2Data.Server_Dir[Save2Data.currentWrite]            = Give.serverOrgPWM;////ԭʼ
??wr_Data_cut_7:
        LDR.N    R0,??wr_Data_cut_0
        LDR      R0,[R0, #+8]
        LDR.N    R1,??wr_Data_cut_0
        ADDS     R0,R0,R1
        LDR.N    R1,??wr_Data_cut_0+0x8
        LDRB     R1,[R1, #+26]
        STRB     R1,[R0, #+2012]
//   62         Save2Data.Server_Diff_Dir[Save2Data.currentWrite]       = Give.serverDPWM;////���յĶ������΢��֮��ĸ���PWM
        LDR.N    R0,??wr_Data_cut_0
        LDR      R0,[R0, #+8]
        LDR.N    R1,??wr_Data_cut_0
        ADDS     R0,R0,R1
        LDR.N    R1,??wr_Data_cut_0+0x8
        LDRB     R1,[R1, #+27]
        STRB     R1,[R0, #+3012]
//   63         
//   64         Save2Data.Special_Status[Save2Data.currentWrite]  = Trk.SpecialStatus;
        MOVW     R0,#+12012
        LDR.N    R1,??wr_Data_cut_0
        LDR      R1,[R1, #+8]
        LDR.N    R2,??wr_Data_cut_0
        ADDS     R1,R1,R2
        LDR.N    R2,??wr_Data_cut_0+0x4
        LDRB     R2,[R2, #+1692]
        STRB     R2,[R0, R1]
//   65     
//   66         Save2Data.TotalRoad[Save2Data.currentWrite]       = Con.TotalRoad;
        MOVW     R0,#+13012
        LDR.N    R1,??wr_Data_cut_0
        LDR      R1,[R1, #+8]
        LDR.N    R2,??wr_Data_cut_0
        ADDS     R1,R2,R1, LSL #+2
        LDR.N    R2,??wr_Data_cut_0+0xC
        LDR      R2,[R2, #+4]
        STR      R2,[R0, R1]
//   67         //Save2Data.TotalTime[Save2Data.currentWrite]       = Con.TotalTime;
//   68     
//   69         if(Save2Data.maxWriteCount == Save2Data.currentWrite)
        LDR.N    R0,??wr_Data_cut_0
        LDR      R0,[R0, #+4]
        LDR.N    R1,??wr_Data_cut_0
        LDR      R1,[R1, #+8]
        CMP      R0,R1
        BNE.N    ??wr_Data_cut_9
//   70         {
//   71             Save2Data.save_status |= 0x80;      // ����־λ
        LDR.N    R0,??wr_Data_cut_0
        LDRB     R0,[R0, #+1]
        ORRS     R0,R0,#0x80
        LDR.N    R1,??wr_Data_cut_0
        STRB     R0,[R1, #+1]
//   72         }
//   73         Save2Data.currentWrite ++;
??wr_Data_cut_9:
        LDR.N    R0,??wr_Data_cut_0
        LDR      R0,[R0, #+8]
        ADDS     R0,R0,#+1
        LDR.N    R1,??wr_Data_cut_0
        STR      R0,[R1, #+8]
//   74     }
//   75 }
??wr_Data_cut_3:
??wr_Data_cut_8:
        BX       LR               ;; return
        DATA
??wr_Data_cut_0:
        DC32     Save2Data
        DC32     Trk
        DC32     Give
        DC32     Con

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//   76 
//   77 // ���ݱ���
//   78 /*
//   79 void convData2Com( void )
//   80 {
//   81 */
//   82     /** ��־���������������Ӧ���� **/
//   83 /*
//   84 ˫����ͣ������Э��
//   85 ��һ�У����ʱ�䣨uint8��
//   86 �ڶ��У�����洢������uint16��
//   87 �����飺�����ٶȣ�uint16 Motor_Give��
//   88 �����飺ģ�������ٶȣ�uint16 Motor_Fuzzy_Give��
//   89 �����飺ʵ���ٶȣ�uint16 Motor_Speed��
//   90 �����飺���PWM��uint16 Motor_Speed����uint16 + ���λ��־λ��
//   91 �����飺CCD_1��ֵ��uint16 CCD1_cen��
//   92 �ڰ��飺CCD_2��ֵ��uint16 CCD2_cen��
//   93 �ھ��飺CCD1��������仯�ʣ�uint16 CCD1_CenRate��
//   94 ��ʮ�飺CCD2��������仯�ʣ�uint16 CCD2_CenRate��
//   95 ��ʮһ�飺��·�̣�uint32 TotalRoad��
//   96 ��ʮ���飺������uint8 Server_Dir��
//   97 ��ʮ���飺΢�ֶ�����uint8 Server_Diff_Dir��
//   98 ��ʮ���飺״̬��uint8 Special_Status��
//   99 ��ʮ���飺����x�ᣨuint8 Gyroscope_x��
//  100 ��ʮ���飺����y�ᣨuint8 Gyroscope_y��
//  101 *//*
//  102     uint16 loopForWhile = 0;
//  103     __v_Uart_TxInt16_(Save2Data.time_counter);
//  104     __v_Uart_TxInt16_(2000);
//  105     for(loopForWhile = 0;loopForWhile<2000;loopForWhile++)
//  106     {
//  107         __v_Uart_TxInt16_(Motor_Give[loopForWhile]);//�����ٶ�
//  108     }
//  109     for(loopForWhile = 0;loopForWhile<2000;loopForWhile++)
//  110     {
//  111         __v_Uart_TxInt16_(Motor_Fuzzy_Give[loopForWhile]);//ģ�������ٶ�
//  112     }
//  113     for(loopForWhile = 0;loopForWhile<2000;loopForWhile++)
//  114     {
//  115         __v_Uart_TxInt16_(Motor_Speed[loopForWhile]);//ʵ���ٶ�
//  116     }
//  117     for(loopForWhile = 0;loopForWhile<2000;loopForWhile++)
//  118     {
//  119         __v_Uart_TxInt16_(Motor_PWM[loopForWhile]);//���PWM
//  120     }
//  121     for(loopForWhile = 0;loopForWhile<2000;loopForWhile++)
//  122     {
//  123         __v_Uart_TxInt16_(CCD1_cen[loopForWhile]);//CCD_1��ֵ
//  124     }
//  125     for(loopForWhile = 0;loopForWhile<2000;loopForWhile++)
//  126     {
//  127         __v_Uart_TxInt16_(CCD2_cen[loopForWhile]);//CCD_2��ֵ
//  128     }
//  129     for(loopForWhile = 0;loopForWhile<2000;loopForWhile++)
//  130     {
//  131         __v_Uart_TxInt16_(CCD1_CenRate[loopForWhile]);//CCD_1��ֵ����仯��
//  132     }
//  133     for(loopForWhile = 0;loopForWhile<2000;loopForWhile++)
//  134     {
//  135         __v_Uart_TxInt16_(CCD2_CenRate[loopForWhile]);//CCD_2��ֵ����仯��
//  136     }
//  137     for(loopForWhile = 0;loopForWhile<2000;loopForWhile++)
//  138     {
//  139         __v_Uart_TxInt32_(TotalRoad[loopForWhile]);//CCD_2��ֵ����仯��
//  140     }
//  141     for(loopForWhile = 0;loopForWhile<2000;loopForWhile++)
//  142     {
//  143         __v_Uart_TxOne_(Server_Dir[loopForWhile]);//����
//  144     }
//  145     for(loopForWhile = 0;loopForWhile<2000;loopForWhile++)
//  146     {
//  147         __v_Uart_TxOne_(Server_Diff_Dir[loopForWhile]);//΢�ֶ���
//  148     }
//  149     for(loopForWhile = 0;loopForWhile<2000;loopForWhile++)
//  150     {
//  151         __v_Uart_TxOne_(Special_Status[loopForWhile]);//״̬
//  152     }
//  153     for(loopForWhile = 0;loopForWhile<2000;loopForWhile++)
//  154     {
//  155         __v_Uart_TxOne_(Gyroscope_x[loopForWhile]);//����x��
//  156     }
//  157     for(loopForWhile = 0;loopForWhile<2000;loopForWhile++)
//  158     {
//  159         __v_Uart_TxOne_(Gyroscope_y[loopForWhile]);//����y��
//  160     }
//  161 }*/
// 
// 25 012 bytes in section .bss
//    480 bytes in section .text
// 
//    480 bytes of CODE memory
// 25 012 bytes of DATA memory
//
//Errors: none
//Warnings: none
