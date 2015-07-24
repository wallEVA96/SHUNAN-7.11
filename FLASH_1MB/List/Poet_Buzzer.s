///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     20/Jul/2015  04:53:23 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\������\��˼��������С��\˳������\����\˳������-����� /
//                    ��������-7.11\ShunAn_Panel\Poet_Buzzer.c               /
//    Command line =  D:\������\��˼��������С��\˳������\����\˳������-����� /
//                    ��������-7.11\ShunAn_Panel\Poet_Buzzer.c -D IAR -D     /
//                    TWR_K60F120M -lCN D:\������\��˼��������С��\˳������\� /
//                    ���\˳������-�������������-7.11\FLASH_1MB\List\ -lB    /
//                    D:\������\��˼��������С��\˳������\����\˳������-����� /
//                    ��������-7.11\FLASH_1MB\List\ -o                       /
//                    D:\������\��˼��������С��\˳������\����\˳������-����� /
//                    ��������-7.11\FLASH_1MB\Obj\ --no_cse --no_unroll      /
//                    --no_inline --no_code_motion --no_tbaa --no_clustering  /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=VFPv4_sp --dlib_config         /
//                    "C:\Program Files (x86)\IAR Systems\Embedded Workbench  /
//                    6.5\arm\INC\c\DLib_Config_Normal.h" -I                  /
//                    D:\������\��˼��������С��\˳������\����\˳������-����� /
//                    ��������-7.11\ -I D:\������\��˼��������С��\˳������\ /
//                    ����\˳������-�������������-7.11\Library\ -I           /
//                    D:\������\��˼��������С��\˳������\����\˳������-����� /
//                    ��������-7.11\Library\BlessedAlien\ -I                 /
//                    D:\������\��˼��������С��\˳������\����\˳������-����� /
//                    ��������-7.11\ShunAn_Panel\ -Ol --use_c++_inline       /
//    List file    =  D:\������\��˼��������С��\˳������\����\˳������-����� /
//                    ��������-7.11\FLASH_1MB\List\Poet_Buzzer.s             /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN m_system
        EXTERN u8_ExInterface7_get

        PUBLIC b_GetLightChaserStatus
        PUBLIC v_BuzzerBeepSet
        PUBLIC v_Buzzer_Init
        PUBLIC v_Buzzer_OutPut
        PUBLIC v_LightingChaser_Init

// D:\������\��˼��������С��\˳������\����\˳������-�������������-7.11\ShunAn_Panel\Poet_Buzzer.c
//    1 #include "arm_cm4.h"
//    2 #include "MK60F15.h"
//    3 #include "ShunAn_Lib.h"
//    4 #include "start_ShunAn.h"
//    5 
//    6 #include "Poet_Buzzer.h"
//    7 #include "Poet_InputInterface.h"
//    8 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    9 void v_Buzzer_Init()//��������ʼ��
//   10 {
//   11     SIM_SCGC6 |= SIM_SCGC6_FTM0_MASK;//ʹ��FTM3ʱ��
v_Buzzer_Init:
        LDR.N    R0,??DataTable4  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000000
        LDR.N    R1,??DataTable4  ;; 0x4004803c
        STR      R0,[R1, #+0]
//   12     SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;//ʹ��PORTEʱ�� 
        LDR.N    R0,??DataTable4_1  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x200
        LDR.N    R1,??DataTable4_1  ;; 0x40048038
        STR      R0,[R1, #+0]
//   13     PORTA_PCR7 = 0x00000100u;//���Ÿ���ѡ��ALT1()
        LDR.N    R0,??DataTable4_2  ;; 0x4004901c
        MOV      R1,#+256
        STR      R1,[R0, #+0]
//   14     PTA_BASE_PTR->PDDR |= (1 << 7);
        LDR.N    R0,??DataTable4_3  ;; 0x400ff014
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.N    R1,??DataTable4_3  ;; 0x400ff014
        STR      R0,[R1, #+0]
//   15     PTA_BASE_PTR->PDOR |= (1 << 7);
        LDR.N    R0,??DataTable4_4  ;; 0x400ff000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.N    R1,??DataTable4_4  ;; 0x400ff000
        STR      R0,[R1, #+0]
//   16     /*
//   17     FTM0_C4SC &= ~FTM_CnSC_ELSA_MASK;                  // MSnB:MSnA = 1x       ���ض���PWM
//   18     FTM0_C4SC = FTM_CnSC_MSB_MASK | FTM_CnSC_ELSB_MASK;// ELSnB:ELSnA = 10     �ȸߺ��
//   19                                                          // ELSnB:ELSnA = 11     �ȵͺ��
//   20     // �趨Ϊ 100Hz
//   21     FTM0_SC = 0 | FTM_SC_PS(5) | FTM_SC_CLKS(1);                //�����ؼ���ģʽ����Ƶϵ��Ϊ2^3(300Hz)2^5(75Hz)��ʱ��ѡ��Ϊbus ʱ�ӡ���ֹ�ж�
//   22     // 75 / 16 = 4687500 Hz
//   23     FTM0_MOD = 46874;//ģ��, EPWM������Ϊ ��MOD - CNTIN + 0x0001 // 46875
//   24     FTM0_CNTIN = 0;//�����ȣ�(CnV - CNTIN)
//   25     FTM0_C4V = 46874;//�����ȣ�(CnV - CNTIN)
//   26     FTM0_CNT = 0;//��������ֻ�е�16λ���ã�д�κ�ֵ���˼Ĵ������������ CNTIN ��ֵ��
//   27     */
//   28 }
        BX       LR               ;; return
//   29 
//   30 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   31 void v_Buzzer_OutPut(uint8 dir)//���������
//   32 {
//   33     if(1 == dir)
v_Buzzer_OutPut:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??v_Buzzer_OutPut_0
//   34     {
//   35         PTA_BASE_PTR->PDOR &=~(1 << 7);
        LDR.N    R0,??DataTable4_4  ;; 0x400ff000
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x80
        LDR.N    R1,??DataTable4_4  ;; 0x400ff000
        STR      R0,[R1, #+0]
        B.N      ??v_Buzzer_OutPut_1
//   36         //FTM0_C4V = 0;
//   37     }
//   38     else
//   39     {
//   40         PTA_BASE_PTR->PDOR |= (1 << 7);
??v_Buzzer_OutPut_0:
        LDR.N    R0,??DataTable4_4  ;; 0x400ff000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.N    R1,??DataTable4_4  ;; 0x400ff000
        STR      R0,[R1, #+0]
//   41         //FTM0_C4V = 46874;
//   42     }
//   43 }
??v_Buzzer_OutPut_1:
        BX       LR               ;; return
//   44 
//   45 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   46 void v_BuzzerBeepSet(unsigned long int lastingTime)
//   47 {
v_BuzzerBeepSet:
        PUSH     {R4,LR}
        MOVS     R4,R0
//   48     if(1 == switch_2)
        BL       u8_ExInterface7_get
        CMP      R0,#+1
        BNE.N    ??v_BuzzerBeepSet_0
//   49     {
//   50         m_system.BuzzerBeep_time = m_system.timer;//����ǰʱ�丳ֵ��������ʱ��
        LDR.N    R0,??DataTable4_5
        LDR.N    R1,??DataTable4_5
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+8]
//   51         m_system.BuzzerBeep_LastingTime = lastingTime;
        LDR.N    R0,??DataTable4_5
        STR      R4,[R0, #+12]
//   52     }
//   53 }
??v_BuzzerBeepSet_0:
        POP      {R4,PC}          ;; return
//   54 
//   55 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   56 PUBLIC void v_LightingChaser_Init()
//   57 {
//   58     //E8
//   59     SIM_SCGC5 |= SIM_SCGC5_PORTE_MASK;//ʹ��PORTA��Bʱ��
v_LightingChaser_Init:
        LDR.N    R0,??DataTable4_1  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000
        LDR.N    R1,??DataTable4_1  ;; 0x40048038
        STR      R0,[R1, #+0]
//   60     PORTE_PCR7 = PORT_PCR_MUX(1) | PORT_PCR_IRQC(11);//���Ÿ���ѡ����ͨIO()
        LDR.N    R0,??DataTable4_6  ;; 0x4004d01c
        LDR.N    R1,??DataTable4_7  ;; 0xb0100
        STR      R1,[R0, #+0]
//   61     
//   62     //GPIOE_PDDR &= ~(1<<7);
//   63     GPIOE_PDDR &= ~(1<<7);//����ѡ�����뷽��()
        LDR.N    R0,??DataTable4_8  ;; 0x400ff114
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x80
        LDR.N    R1,??DataTable4_8  ;; 0x400ff114
        STR      R0,[R1, #+0]
//   64     //GPIOE_PDDR &= ~(1<<9);
//   65 }
        BX       LR               ;; return
//   66 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   67 PUBLIC uint8 b_GetLightChaserStatus()
//   68 {
//   69     if(0 != (PORTE_PCR7 & PORT_PCR_ISF_MASK))//��⵽�������
b_GetLightChaserStatus:
        LDR.N    R0,??DataTable4_6  ;; 0x4004d01c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+7
        BPL.N    ??b_GetLightChaserStatus_0
//   70     {
//   71         PORTE_PCR7 |= PORT_PCR_ISF_MASK;//���
        LDR.N    R0,??DataTable4_6  ;; 0x4004d01c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000000
        LDR.N    R1,??DataTable4_6  ;; 0x4004d01c
        STR      R0,[R1, #+0]
//   72         return 1;
        MOVS     R0,#+1
        B.N      ??b_GetLightChaserStatus_1
//   73     }
//   74     return 0;
??b_GetLightChaserStatus_0:
        MOVS     R0,#+0
??b_GetLightChaserStatus_1:
        BX       LR               ;; return
//   75 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     0x4004901c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     0x400ff014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     0x400ff000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     m_system

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_6:
        DC32     0x4004d01c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_7:
        DC32     0xb0100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_8:
        DC32     0x400ff114

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
// 214 bytes in section .text
// 
// 214 bytes of CODE memory
//
//Errors: none
//Warnings: none
