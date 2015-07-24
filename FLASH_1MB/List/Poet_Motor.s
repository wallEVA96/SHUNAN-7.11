///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     20/Jul/2015  16:55:45 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\Ë³°µÈýºÅ-»ªÄÏÈ /
//                    ü×îºóÆßÌì-7.11\ShunAn_Panel\Poet_Motor.c                /
//    Command line =  D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\Ë³°µÈýºÅ-»ªÄÏÈ /
//                    ü×îºóÆßÌì-7.11\ShunAn_Panel\Poet_Motor.c -D IAR -D      /
//                    TWR_K60F120M -lCN D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´ /
//                    úÂë\Ë³°µÈýºÅ-»ªÄÏÈü×îºóÆßÌì-7.11\FLASH_1MB\List\ -lB    /
//                    D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\Ë³°µÈýºÅ-»ªÄÏÈ /
//                    ü×îºóÆßÌì-7.11\FLASH_1MB\List\ -o                       /
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
//                    ü×îºóÆßÌì-7.11\FLASH_1MB\List\Poet_Motor.s              /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_d2f
        EXTERN __aeabi_ddiv
        EXTERN __aeabi_f2d
        EXTERN m_Control
        EXTERN n_GetServoGraduated
        EXTERN number_ServoGraduated

        PUBLIC b_GetCurrent
        PUBLIC b_GetMotor_electric
        PUBLIC m_self_Motor_Para
        PUBLIC n_GetMotor_speed
        PUBLIC v_SetCurrentStart
        PUBLIC v_ele_set2pwm
        PUBLIC v_leftMotor_pwmOut
        PUBLIC v_motor_Init
        PUBLIC v_rightMotor_pwmOut
        PUBLIC v_speed_Give
        PUBLIC v_speed_Give_UsedsmallChange
        PUBLIC v_speed_Test
        PUBLIC v_speed_set2pwm

// D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\Ë³°µÈýºÅ-»ªÄÏÈü×îºóÆßÌì-7.11\ShunAn_Panel\Poet_Motor.c
//    1 #include "arm_cm4.h"
//    2 #include "MK60F15.h"
//    3 #include "ShunAn_Lib.h"
//    4 #include "start_ShunAn.h"
//    5 
//    6 #include "Poet_Motor.h"
//    7 #include "Pendulum_EndlessFormsMostBeautiful.h"
//    8 #include "Poet_Servo.h"
//    9 //============================================================================//
//   10 // v_motor_Init µç»ú³õÊ¼»¯
//   11 //µÚÒ»´ú°å×ÓË³Ðò C16 C8 C9 C17 AD0 AD1 C10 C18 C19 C11
//   12 //              DL  CL  BL AL 36  35  DR  CR   BR  AR
//   13 
//   14 #define MOTOR_def_PWM_com                       FTM3_BASE_PTR
//   15 #define DE_number_pwm_mod                       (37500)//1kHz
//   16 //(3750 * 2)//1.19//4k
//   17 // 3.26k => ÎÈ¶¨
//   18 // 1.119k => ¹¦ÂÊ¸ß
//   19 //============================================================================//

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   20 self_Motor_Para m_self_Motor_Para;//Ë½ÓÐÄÚ²¿ÎÄ¼þ
m_self_Motor_Para:
        DS8 24

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   21 void v_motor_Init()
//   22 {
v_motor_Init:
        PUSH     {R7,LR}
//   23     m_self_Motor_Para.L_counter = 0;
        LDR.W    R0,??DataTable8_1
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
//   24     m_self_Motor_Para.R_counter = 0;
        LDR.W    R0,??DataTable8_1
        MOVS     R1,#+0
        STR      R1,[R0, #+20]
//   25     m_self_Motor_Para.L_e = 0;
        LDR.W    R0,??DataTable8_1
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
//   26     m_self_Motor_Para.R_e = 0;
        LDR.W    R0,??DataTable8_1
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
//   27     //ADC1_SE16
//   28     //ADC0_SE16
//   29     //Left
//   30     //D//C16 => IO
//   31     //C//C8  => FTM3 CH4
//   32     //B//C9  => FTM3 CH5
//   33     //A//C17 => IO
//   34     /**************************************************************************/
//   35     // µçÁ÷¼ì²â³õÊ¼»¯ // ÐèÒªÁ½¸ö
//   36     SIM_SCGC6 |= SIM_SCGC6_ADC0_MASK;//Ê¹ÄÜADC0Ä£¿éÊ±ÖÓ 
        LDR.W    R0,??DataTable8_2  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8000000
        LDR.W    R1,??DataTable8_2  ;; 0x4004803c
        STR      R0,[R1, #+0]
//   37     SIM_SCGC3 |= SIM_SCGC3_ADC1_MASK;//Ê¹ÄÜADC1Ä£¿éÊ±ÖÓ 
        LDR.W    R0,??DataTable8_3  ;; 0x40048030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8000000
        LDR.W    R1,??DataTable8_3  ;; 0x40048030
        STR      R0,[R1, #+0]
//   38     //1 => 16
//   39     //0 => 16
//   40     //SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK;//Ê¹ÄÜPORTCÊ±ÖÓ 
//   41     //PORTB_PCR7 |= PORT_PCR_MUX(0);//Òý½Å¸´ÓÃÑ¡ÔñÄ£ÄâÊäÈë
//   42     /**************************************************************************/
//   43     // ËÙ¶È¼ì²â³õÊ¼»¯  // Ê¹ÄÜÕý½»½âÂë // ÐèÒªÁ½¸ö
//   44     
//   45     SIM_SCGC6 |= SIM_SCGC6_FTM1_MASK;
        LDR.W    R0,??DataTable8_2  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000000
        LDR.W    R1,??DataTable8_2  ;; 0x4004803c
        STR      R0,[R1, #+0]
//   46     SIM_SCGC3 |= SIM_SCGC3_FTM2_MASK;//
        LDR.W    R0,??DataTable8_3  ;; 0x40048030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000000
        LDR.W    R1,??DataTable8_3  ;; 0x40048030
        STR      R0,[R1, #+0]
//   47     
//   48     SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;//Ê¹ÄÜPORTAÊ±ÖÓ 
        LDR.W    R0,??DataTable8_4  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x200
        LDR.W    R1,??DataTable8_4  ;; 0x40048038
        STR      R0,[R1, #+0]
//   49     PORTA_BASE_PTR->PCR[8] |= PORT_PCR_MUX(6);//Òý½Å¸´ÓÃÑ¡ÔñÕý½»½âÂë
        LDR.W    R0,??DataTable8_5  ;; 0x40049020
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x600
        LDR.W    R1,??DataTable8_5  ;; 0x40049020
        STR      R0,[R1, #+0]
//   50     PORTA_BASE_PTR->PCR[9] |= PORT_PCR_MUX(6);//Òý½Å¸´ÓÃÑ¡ÔñÕý½»½âÂë
        LDR.W    R0,??DataTable8_6  ;; 0x40049024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x600
        LDR.W    R1,??DataTable8_6  ;; 0x40049024
        STR      R0,[R1, #+0]
//   51     PORTA_BASE_PTR->PCR[10] |= PORT_PCR_MUX(6);//Òý½Å¸´ÓÃÑ¡ÔñÕý½»½âÂë
        LDR.W    R0,??DataTable8_7  ;; 0x40049028
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x600
        LDR.W    R1,??DataTable8_7  ;; 0x40049028
        STR      R0,[R1, #+0]
//   52     PORTA_BASE_PTR->PCR[11] |= PORT_PCR_MUX(6);//Òý½Å¸´ÓÃÑ¡ÔñÕý½»½âÂë
        LDR.W    R0,??DataTable8_8  ;; 0x4004902c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x600
        LDR.W    R1,??DataTable8_8  ;; 0x4004902c
        STR      R0,[R1, #+0]
//   53     
//   54     FTM1_BASE_PTR->MOD = 0xFFFF;//ÉèÖÃÉÏÏÞ£¬ÆäÊµÃ»É¶ÓÃ
        LDR.W    R0,??DataTable8_9  ;; 0x40039008
        MOVW     R1,#+65535
        STR      R1,[R0, #+0]
//   55     FTM1_BASE_PTR->MODE |= FTM_MODE_FTMEN_MASK
//   56                          | FTM_MODE_WPDIS_MASK;//Ê¹ÄÜFTM£¬½ûÖ¹Ð´
        LDR.W    R0,??DataTable8_10  ;; 0x40039054
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x5
        LDR.W    R1,??DataTable8_10  ;; 0x40039054
        STR      R0,[R1, #+0]
//   57     FTM1_BASE_PTR->QDCTRL |= FTM_QDCTRL_QUADMODE_MASK 
//   58                            | FTM_QDCTRL_QUADEN_MASK
//   59                            | FTM_QDCTRL_QUADIR_MASK;//Ê¹ÄÜÕý½»½âÂë
        LDR.W    R0,??DataTable8_11  ;; 0x40039080
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0xD
        LDR.W    R1,??DataTable8_11  ;; 0x40039080
        STR      R0,[R1, #+0]
//   60     FTM1_BASE_PTR->CNTIN = 0;//ÉèÖÃ×îµÍÎ»
        LDR.W    R0,??DataTable8_12  ;; 0x4003904c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   61     FTM1_BASE_PTR->CNT = 0;//³õÊ¼ÇåÁã
        LDR.W    R0,??DataTable8_13  ;; 0x40039004
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   62     
//   63     FTM2_BASE_PTR->MOD = 0xFFFF;//ÉèÖÃÉÏÏÞ£¬ÆäÊµÃ»É¶ÓÃ
        LDR.W    R0,??DataTable8_14  ;; 0x400b8008
        MOVW     R1,#+65535
        STR      R1,[R0, #+0]
//   64     FTM2_BASE_PTR->MODE |= FTM_MODE_FTMEN_MASK
//   65                          | FTM_MODE_WPDIS_MASK;//Ê¹ÄÜFTM£¬½ûÖ¹Ð´
        LDR.W    R0,??DataTable8_15  ;; 0x400b8054
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x5
        LDR.W    R1,??DataTable8_15  ;; 0x400b8054
        STR      R0,[R1, #+0]
//   66     FTM2_BASE_PTR->QDCTRL |= FTM_QDCTRL_QUADMODE_MASK 
//   67                            | FTM_QDCTRL_QUADEN_MASK
//   68                            | FTM_QDCTRL_QUADIR_MASK;//Ê¹ÄÜÕý½»½âÂë
        LDR.W    R0,??DataTable9  ;; 0x400b8080
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0xD
        LDR.W    R1,??DataTable9  ;; 0x400b8080
        STR      R0,[R1, #+0]
//   69     FTM2_BASE_PTR->CNTIN = 0;//ÉèÖÃ×îµÍÎ»
        LDR.W    R0,??DataTable9_1  ;; 0x400b804c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   70     FTM2_BASE_PTR->CNT = 0;//³õÊ¼ÇåÁã
        LDR.W    R0,??DataTable9_2  ;; 0x400b8004
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   71     
//   72     /**************************************************************************/
//   73     // ×óµç»úÊä³ö³õÊ¼»¯
//   74     SIM_SCGC3 |= SIM_SCGC3_FTM3_MASK;//Ê¹ÄÜFTM0Ê±ÖÓ
        LDR.W    R0,??DataTable8_3  ;; 0x40048030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000000
        LDR.W    R1,??DataTable8_3  ;; 0x40048030
        STR      R0,[R1, #+0]
//   75     SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK;//Ê¹ÄÜPORTCÊ±ÖÓ 
        LDR.W    R0,??DataTable8_4  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x800
        LDR.W    R1,??DataTable8_4  ;; 0x40048038
        STR      R0,[R1, #+0]
//   76     // FTM Êä³ö¶Ë¿Ú
//   77     PORTC_BASE_PTR->PCR[8] |= PORT_PCR_MUX(3);//Òý½Å¸´ÓÃÑ¡ÔñALT3(FTM)
        LDR.W    R0,??DataTable9_4  ;; 0x4004b020
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x300
        LDR.W    R1,??DataTable9_4  ;; 0x4004b020
        STR      R0,[R1, #+0]
//   78     PORTC_BASE_PTR->PCR[9] |= PORT_PCR_MUX(3);//Òý½Å¸´ÓÃÑ¡ÔñALT3(FTM)
        LDR.W    R0,??DataTable9_5  ;; 0x4004b024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x300
        LDR.W    R1,??DataTable9_5  ;; 0x4004b024
        STR      R0,[R1, #+0]
//   79     PORTC_BASE_PTR->PCR[10] |= PORT_PCR_MUX(3);//Òý½Å¸´ÓÃÑ¡ÔñALT3(FTM)
        LDR.W    R0,??DataTable9_6  ;; 0x4004b028
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x300
        LDR.W    R1,??DataTable9_6  ;; 0x4004b028
        STR      R0,[R1, #+0]
//   80     PORTC_BASE_PTR->PCR[11] |= PORT_PCR_MUX(3);//Òý½Å¸´ÓÃÑ¡ÔñALT3(FTM)
        LDR.W    R0,??DataTable9_7  ;; 0x4004b02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x300
        LDR.W    R1,??DataTable9_7  ;; 0x4004b02c
        STR      R0,[R1, #+0]
//   81     
//   82     PORTC_BASE_PTR->PCR[16] |= PORT_PCR_MUX(1);//Òý½Å¸´ÓÃÑ¡ÔñALT3()
        LDR.W    R0,??DataTable9_8  ;; 0x4004b040
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.W    R1,??DataTable9_8  ;; 0x4004b040
        STR      R0,[R1, #+0]
//   83     PORTC_BASE_PTR->PCR[17] |= PORT_PCR_MUX(1);//Òý½Å¸´ÓÃÑ¡ÔñALT3()
        LDR.W    R0,??DataTable9_9  ;; 0x4004b044
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.W    R1,??DataTable9_9  ;; 0x4004b044
        STR      R0,[R1, #+0]
//   84     PORTC_BASE_PTR->PCR[18] |= PORT_PCR_MUX(1);//Òý½Å¸´ÓÃÑ¡ÔñALT3()
        LDR.W    R0,??DataTable9_10  ;; 0x4004b048
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.W    R1,??DataTable9_10  ;; 0x4004b048
        STR      R0,[R1, #+0]
//   85     PORTC_BASE_PTR->PCR[19] |= PORT_PCR_MUX(1);//Òý½Å¸´ÓÃÑ¡ÔñALT3()
        LDR.W    R0,??DataTable9_11  ;; 0x4004b04c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.W    R1,??DataTable9_11  ;; 0x4004b04c
        STR      R0,[R1, #+0]
//   86     
//   87     PTC_BASE_PTR->PDDR |= (1 << 16);
        LDR.W    R0,??DataTable9_12  ;; 0x400ff094
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000
        LDR.W    R1,??DataTable9_12  ;; 0x400ff094
        STR      R0,[R1, #+0]
//   88     PTC_BASE_PTR->PDDR |= (1 << 17);
        LDR.W    R0,??DataTable9_12  ;; 0x400ff094
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x20000
        LDR.W    R1,??DataTable9_12  ;; 0x400ff094
        STR      R0,[R1, #+0]
//   89     PTC_BASE_PTR->PDDR |= (1 << 18);
        LDR.W    R0,??DataTable9_12  ;; 0x400ff094
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40000
        LDR.W    R1,??DataTable9_12  ;; 0x400ff094
        STR      R0,[R1, #+0]
//   90     PTC_BASE_PTR->PDDR |= (1 << 19);
        LDR.W    R0,??DataTable9_12  ;; 0x400ff094
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80000
        LDR.W    R1,??DataTable9_12  ;; 0x400ff094
        STR      R0,[R1, #+0]
//   91     
//   92     PTC_BASE_PTR->PDOR &=~(1 << 16);
        LDR.W    R0,??DataTable9_13  ;; 0x400ff080
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x10000
        LDR.W    R1,??DataTable9_13  ;; 0x400ff080
        STR      R0,[R1, #+0]
//   93     PTC_BASE_PTR->PDOR &=~(1 << 17);
        LDR.W    R0,??DataTable9_13  ;; 0x400ff080
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x20000
        LDR.W    R1,??DataTable9_13  ;; 0x400ff080
        STR      R0,[R1, #+0]
//   94     PTC_BASE_PTR->PDOR &=~(1 << 18);
        LDR.W    R0,??DataTable9_13  ;; 0x400ff080
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x40000
        LDR.W    R1,??DataTable9_13  ;; 0x400ff080
        STR      R0,[R1, #+0]
//   95     PTC_BASE_PTR->PDOR &=~(1 << 19);
        LDR.W    R0,??DataTable9_13  ;; 0x400ff080
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x80000
        LDR.W    R1,??DataTable9_13  ;; 0x400ff080
        STR      R0,[R1, #+0]
//   96     /**************************************************************************/
//   97     // ÌØÐÔÉè¶¨
//   98     MOTOR_def_PWM_com->CONTROLS[4].CnSC &=~FTM_CnSC_ELSA_MASK;  // MSnB:MSnA = 1x       ±ßÑØ¶ÔÆëPWM
        LDR.W    R0,??DataTable9_14  ;; 0x400b902c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x4
        LDR.W    R1,??DataTable9_14  ;; 0x400b902c
        STR      R0,[R1, #+0]
//   99     MOTOR_def_PWM_com->CONTROLS[4].CnSC = FTM_CnSC_MSB_MASK     // ELSnB:ELSnA = 10     ÏÈ¸ßºóµÍ
//  100                                         | FTM_CnSC_ELSB_MASK;   // ELSnB:ELSnA = 11     ÏÈµÍºó¸ß
        LDR.W    R0,??DataTable9_14  ;; 0x400b902c
        MOVS     R1,#+40
        STR      R1,[R0, #+0]
//  101     MOTOR_def_PWM_com->CONTROLS[5].CnSC &=~FTM_CnSC_ELSA_MASK;  // MSnB:MSnA = 1x       ±ßÑØ¶ÔÆëPWM
        LDR.W    R0,??DataTable9_15  ;; 0x400b9034
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x4
        LDR.W    R1,??DataTable9_15  ;; 0x400b9034
        STR      R0,[R1, #+0]
//  102     MOTOR_def_PWM_com->CONTROLS[5].CnSC = FTM_CnSC_MSB_MASK     // ELSnB:ELSnA = 10     ÏÈ¸ßºóµÍ
//  103                                         | FTM_CnSC_ELSB_MASK;   // ELSnB:ELSnA = 11     ÏÈµÍºó¸ß
        LDR.W    R0,??DataTable9_15  ;; 0x400b9034
        MOVS     R1,#+40
        STR      R1,[R0, #+0]
//  104     MOTOR_def_PWM_com->CONTROLS[6].CnSC &=~FTM_CnSC_ELSA_MASK;  // MSnB:MSnA = 1x       ±ßÑØ¶ÔÆëPWM
        LDR.W    R0,??DataTable9_16  ;; 0x400b903c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x4
        LDR.W    R1,??DataTable9_16  ;; 0x400b903c
        STR      R0,[R1, #+0]
//  105     MOTOR_def_PWM_com->CONTROLS[6].CnSC = FTM_CnSC_MSB_MASK     // ELSnB:ELSnA = 10     ÏÈ¸ßºóµÍ
//  106                                         | FTM_CnSC_ELSB_MASK;   // ELSnB:ELSnA = 11     ÏÈµÍºó¸ß
        LDR.W    R0,??DataTable9_16  ;; 0x400b903c
        MOVS     R1,#+40
        STR      R1,[R0, #+0]
//  107     MOTOR_def_PWM_com->CONTROLS[7].CnSC &=~FTM_CnSC_ELSA_MASK;  // MSnB:MSnA = 1x       ±ßÑØ¶ÔÆëPWM
        LDR.W    R0,??DataTable9_17  ;; 0x400b9044
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x4
        LDR.W    R1,??DataTable9_17  ;; 0x400b9044
        STR      R0,[R1, #+0]
//  108     MOTOR_def_PWM_com->CONTROLS[7].CnSC = FTM_CnSC_MSB_MASK     // ELSnB:ELSnA = 10     ÏÈ¸ßºóµÍ
//  109                                         | FTM_CnSC_ELSB_MASK;   // ELSnB:ELSnA = 11     ÏÈµÍºó¸ß    
        LDR.W    R0,??DataTable9_17  ;; 0x400b9044
        MOVS     R1,#+40
        STR      R1,[R0, #+0]
//  110     /**************************************************************************/
//  111     MOTOR_def_PWM_com->SC = 0 | FTM_SC_PS(1) | FTM_SC_CLKS(1);                //ÉÏÉýÑØ¼ÆÊýÄ£Ê½¡¢·ÖÆµÏµÊýÎª2^3(300Hz)2^5(75Hz)¡¢Ê±ÖÓÑ¡ÔñÎªbus Ê±ÖÓ¡¢½ûÖ¹ÖÐ¶Ï
        LDR.W    R0,??DataTable9_18  ;; 0x400b9000
        MOVS     R1,#+9
        STR      R1,[R0, #+0]
//  112     MOTOR_def_PWM_com->MOD = DE_number_pwm_mod;//Ä£Êý, EPWMµÄÖÜÆÚÎª £ºMOD - CNTIN + 0x0001 // 46875
        LDR.W    R0,??DataTable9_19  ;; 0x400b9008
        MOVW     R1,#+37500
        STR      R1,[R0, #+0]
//  113     MOTOR_def_PWM_com->CONTROLS[4].CnV = 0;//Âö³å¿í¶È£º(CnV - CNTIN)
        LDR.W    R0,??DataTable9_20  ;; 0x400b9030
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  114     MOTOR_def_PWM_com->CONTROLS[5].CnV = 0;//Âö³å¿í¶È£º(CnV - CNTIN)
        LDR.W    R0,??DataTable9_21  ;; 0x400b9038
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  115     MOTOR_def_PWM_com->CONTROLS[6].CnV = 0;//Âö³å¿í¶È£º(CnV - CNTIN)
        LDR.W    R0,??DataTable9_22  ;; 0x400b9040
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  116     MOTOR_def_PWM_com->CONTROLS[7].CnV = 0;//Âö³å¿í¶È£º(CnV - CNTIN)
        LDR.W    R0,??DataTable9_23  ;; 0x400b9048
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  117     MOTOR_def_PWM_com->CNT = 0;//¼ÆÊýÆ÷¡£Ö»ÓÐµÍ16Î»¿ÉÓÃ£¨Ð´ÈÎºÎÖµµ½´Ë¼Ä´æÆ÷£¬¶¼»á¼ÓÔØ CNTIN µÄÖµ£©
        LDR.W    R0,??DataTable9_24  ;; 0x400b9004
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  118     //========================================================================//
//  119     v_leftMotor_pwmOut(0,3);//ÄÜºÄÖÆ¶¯
        MOVS     R1,#+3
        MOVS     R0,#+0
        BL       v_leftMotor_pwmOut
//  120     v_rightMotor_pwmOut(0,3);//ÄÜºÄÖÆ¶¯
        MOVS     R1,#+3
        MOVS     R0,#+0
        BL       v_rightMotor_pwmOut
//  121     return;
        POP      {R0,PC}          ;; return
//  122 }
//  123 
//  124 //============================================================================//
//  125 // b_GetMotor_electric »ñÈ¡µçÁ÷

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  126 uint8 b_GetMotor_electric(ADC_MemMapPtr ADCx_PTR ,uint8 PinNumber ,uint16 * result)
//  127 {
//  128     //75MHz / 2 => 37.5MHz => 4.6875MHz
//  129     ADCx_PTR->CFG1 |= ADC_CFG1_ADIV(3)|ADC_CFG1_MODE(3)|ADC_CFG1_ADICLK(1)|ADC_CFG1_ADLSMP_MASK;////ADC1ÉèÖÃÎª×ÜÏßÊ±ÖÓÆµÂÊ/2£¬³¤²ÉÑùÊ±¼ä£¬8 / 12 / 10 / 16
b_GetMotor_electric:
        LDR      R3,[R0, #+8]
        ORRS     R3,R3,#0x7D
        STR      R3,[R0, #+8]
//  130     ADCx_PTR->CFG2 |= 0x00000004u;//ADC1ÉèÖÃÎªaÍ¨µÀ£¬½ûÖ¹Òì²½Ê±ÖÓ£¬¸ßËÙÐòÁÐ×ª»»£¬×î³¤²ÉÑùÊ±¼ä
        LDR      R3,[R0, #+12]
        ORRS     R3,R3,#0x4
        STR      R3,[R0, #+12]
//  131     
//  132     ADCx_PTR->SC3 = ADC_SC3_AVGS(3) | ADC_SC3_AVGE_MASK;
        MOVS     R3,#+7
        STR      R3,[R0, #+36]
//  133     ADCx_PTR->SC1[0] = PinNumber;//ADC1ÉèÖÃÎª½ûÖ¹ÖÐ¶Ï£¬µ¥¶Ë²ÉÑù£¬Í¨µÀ4a²ÉÑù£¬Õâ¸ö¼Ä´æÆ÷Ð´Èëºó¾Í»á¿ªÊ¼×ª»»
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        STR      R1,[R0, #+0]
//  134     uint32 delay = 120000;//ÓÃÓÚ°²È«
        LDR.W    R1,??DataTable9_25  ;; 0x1d4c0
//  135     while (((ADCx_PTR->SC1[0] & ADC_SC1_COCO_MASK ) != ADC_SC1_COCO_MASK)&&(--delay)){};//µÈ´ýµ¥´Î×ª»»Íê³É   
??b_GetMotor_electric_0:
        LDR      R3,[R0, #+0]
        LSLS     R3,R3,#+24
        BMI.N    ??b_GetMotor_electric_1
        SUBS     R1,R1,#+1
        CMP      R1,#+0
        BNE.N    ??b_GetMotor_electric_0
//  136     if(0 == delay){return 'F';}//°²È«´¦Àí
??b_GetMotor_electric_1:
        CMP      R1,#+0
        BNE.N    ??b_GetMotor_electric_2
        MOVS     R0,#+70
        B.N      ??b_GetMotor_electric_3
//  137     (*result) = ADCx_PTR->R[0];
??b_GetMotor_electric_2:
        LDR      R0,[R0, #+16]
        STRH     R0,[R2, #+0]
//  138     return 'T';
        MOVS     R0,#+84
??b_GetMotor_electric_3:
        BX       LR               ;; return
//  139 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  140 void v_SetCurrentStart()
//  141 {
//  142     MOTOR_def_Left_I_AD_com->CFG1 |= ADC_CFG1_ADIV(3)|ADC_CFG1_MODE(3)|ADC_CFG1_ADICLK(1)|ADC_CFG1_ADLSMP_MASK;////ADC1ÉèÖÃÎª×ÜÏßÊ±ÖÓÆµÂÊ/2£¬³¤²ÉÑùÊ±¼ä£¬8 / 12 / 10 / 16
v_SetCurrentStart:
        LDR.W    R0,??DataTable9_26  ;; 0x400bb008
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x7D
        LDR.W    R1,??DataTable9_26  ;; 0x400bb008
        STR      R0,[R1, #+0]
//  143     MOTOR_def_Left_I_AD_com->CFG2 |= 0x00000004u;//ADC1ÉèÖÃÎªaÍ¨µÀ£¬½ûÖ¹Òì²½Ê±ÖÓ£¬¸ßËÙÐòÁÐ×ª»»£¬×î³¤²ÉÑùÊ±¼ä
        LDR.W    R0,??DataTable9_27  ;; 0x400bb00c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.W    R1,??DataTable9_27  ;; 0x400bb00c
        STR      R0,[R1, #+0]
//  144     MOTOR_def_Left_I_AD_com->SC3 = ADC_SC3_AVGS(3) | ADC_SC3_AVGE_MASK;
        LDR.W    R0,??DataTable9_28  ;; 0x400bb024
        MOVS     R1,#+7
        STR      R1,[R0, #+0]
//  145     MOTOR_def_Right_I_AD_com->CFG1 |= ADC_CFG1_ADIV(3)|ADC_CFG1_MODE(3)|ADC_CFG1_ADICLK(1)|ADC_CFG1_ADLSMP_MASK;////ADC1ÉèÖÃÎª×ÜÏßÊ±ÖÓÆµÂÊ/2£¬³¤²ÉÑùÊ±¼ä£¬8 / 12 / 10 / 16
        LDR.W    R0,??DataTable9_29  ;; 0x4003b008
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x7D
        LDR.W    R1,??DataTable9_29  ;; 0x4003b008
        STR      R0,[R1, #+0]
//  146     MOTOR_def_Right_I_AD_com->CFG2 |= 0x00000004u;//ADC1ÉèÖÃÎªaÍ¨µÀ£¬½ûÖ¹Òì²½Ê±ÖÓ£¬¸ßËÙÐòÁÐ×ª»»£¬×î³¤²ÉÑùÊ±¼ä
        LDR.W    R0,??DataTable9_30  ;; 0x4003b00c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.W    R1,??DataTable9_30  ;; 0x4003b00c
        STR      R0,[R1, #+0]
//  147     MOTOR_def_Right_I_AD_com->SC3 = ADC_SC3_AVGS(3) | ADC_SC3_AVGE_MASK;
        LDR.W    R0,??DataTable9_31  ;; 0x4003b024
        MOVS     R1,#+7
        STR      R1,[R0, #+0]
//  148     
//  149     MOTOR_def_Left_I_AD_com->SC1[0] = 16;//ADC1ÉèÖÃÎª½ûÖ¹ÖÐ¶Ï£¬µ¥¶Ë²ÉÑù£¬Í¨µÀ4a²ÉÑù£¬Õâ¸ö¼Ä´æÆ÷Ð´Èëºó¾Í»á¿ªÊ¼×ª»»
        LDR.W    R0,??DataTable9_32  ;; 0x400bb000
        MOVS     R1,#+16
        STR      R1,[R0, #+0]
//  150     MOTOR_def_Right_I_AD_com->SC1[0] = 16;//ADC1ÉèÖÃÎª½ûÖ¹ÖÐ¶Ï£¬µ¥¶Ë²ÉÑù£¬Í¨µÀ4a²ÉÑù£¬Õâ¸ö¼Ä´æÆ÷Ð´Èëºó¾Í»á¿ªÊ¼×ª»»
        LDR.W    R0,??DataTable9_33  ;; 0x4003b000
        MOVS     R1,#+16
        STR      R1,[R0, #+0]
//  151 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  152 uint8 b_GetCurrent(uint16 * left,uint16 * right)
//  153 {
//  154     uint32 delay = 120000;//ÓÃÓÚ°²È«
b_GetCurrent:
        LDR.W    R2,??DataTable9_25  ;; 0x1d4c0
//  155     while (((MOTOR_def_Left_I_AD_com->SC1[0] & ADC_SC1_COCO_MASK ) != ADC_SC1_COCO_MASK)&&(--delay)){};//µÈ´ýµ¥´Î×ª»»Íê³É   
??b_GetCurrent_0:
        LDR.W    R3,??DataTable9_32  ;; 0x400bb000
        LDR      R3,[R3, #+0]
        LSLS     R3,R3,#+24
        BMI.N    ??b_GetCurrent_1
        SUBS     R2,R2,#+1
        CMP      R2,#+0
        BNE.N    ??b_GetCurrent_0
//  156     if(0 == delay){return 'F';}//°²È«´¦Àí
??b_GetCurrent_1:
        CMP      R2,#+0
        BNE.N    ??b_GetCurrent_2
        MOVS     R0,#+70
        B.N      ??b_GetCurrent_3
//  157     (*left) = MOTOR_def_Left_I_AD_com->R[0];//×ó±ß
??b_GetCurrent_2:
        LDR.W    R2,??DataTable9_34  ;; 0x400bb010
        LDR      R2,[R2, #+0]
        STRH     R2,[R0, #+0]
//  158     
//  159     delay = 120000;//ÓÃÓÚ°²È«
        LDR.W    R2,??DataTable9_25  ;; 0x1d4c0
//  160     while (((MOTOR_def_Right_I_AD_com->SC1[0] & ADC_SC1_COCO_MASK ) != ADC_SC1_COCO_MASK)&&(--delay)){};//µÈ´ýµ¥´Î×ª»»Íê³É   
??b_GetCurrent_4:
        LDR.W    R0,??DataTable9_33  ;; 0x4003b000
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BMI.N    ??b_GetCurrent_5
        SUBS     R2,R2,#+1
        CMP      R2,#+0
        BNE.N    ??b_GetCurrent_4
//  161     if(0 == delay){return 'F';}//°²È«´¦Àí
??b_GetCurrent_5:
        CMP      R2,#+0
        BNE.N    ??b_GetCurrent_6
        MOVS     R0,#+70
        B.N      ??b_GetCurrent_3
//  162     (*right) = MOTOR_def_Right_I_AD_com->R[0];//ÓÒ±ß
??b_GetCurrent_6:
        LDR.W    R0,??DataTable9_35  ;; 0x4003b010
        LDR      R0,[R0, #+0]
        STRH     R0,[R1, #+0]
//  163     
//  164     return 'T';
        MOVS     R0,#+84
??b_GetCurrent_3:
        BX       LR               ;; return
//  165 }
//  166 /*
//  167 µçÁ÷»·ÒòÎª²ÉÑù²»¼°Ê±·ÅÆúÊ¹ÓÃ
//  168 */
//  169 
//  170 //============================================================================//
//  171 // n_GetMotor_speed »ñÈ¡×ªËÙ

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  172 sint16 n_GetMotor_speed(FTM_MemMapPtr FTMx_PTR)
//  173 {
//  174     sint16 result;
//  175     result = FTMx_PTR->CNT;
n_GetMotor_speed:
        LDR      R1,[R0, #+4]
//  176     FTMx_PTR->CNT = 0;
        MOVS     R2,#+0
        STR      R2,[R0, #+4]
//  177     return result;
        MOVS     R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BX       LR               ;; return
//  178 }
//  179 
//  180 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  181 void v_leftMotor_pwmOut(uint16 left_pwm_duty,uint16 left_dir)//µç»úÊä³ö
//  182 {
v_leftMotor_pwmOut:
        PUSH     {R4,LR}
        MOVS     R4,R1
//  183     //µÚÒ»´ú°å×ÓË³Ðò C16 C8 C9 C17 AD0 AD1 C10 C18 C19 C11
//  184     //              DL  CL  BL AL 36  35  DR  CR   BR  AR
//  185     //============================//
//  186     PTC_BASE_PTR->PDOR &=~(1 << 16);
        LDR.W    R1,??DataTable9_13  ;; 0x400ff080
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x10000
        LDR.W    R2,??DataTable9_13  ;; 0x400ff080
        STR      R1,[R2, #+0]
//  187     PTC_BASE_PTR->PDOR &=~(1 << 17);
        LDR.W    R1,??DataTable9_13  ;; 0x400ff080
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x20000
        LDR.W    R2,??DataTable9_13  ;; 0x400ff080
        STR      R1,[R2, #+0]
//  188     //============================//
//  189     unsigned short int PWMtemp = 0;//3750ÎªÂúÕ¼¿Õ±È
        MOVS     R1,#+0
//  190     float float_temp = 0.0f;
        VLDR.W   S0,??DataTable5  ;; 0x0
//  191     if(left_pwm_duty > 1000){left_pwm_duty = 1000;}//ÏÞ·ù·ÀÖ¹´íÎó
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+1000
        BLE.N    ??v_leftMotor_pwmOut_0
        MOV      R0,#+1000
//  192     float_temp = (float)left_pwm_duty;
??v_leftMotor_pwmOut_0:
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        VMOV     S0,R0
        VCVT.F32.U32 S0,S0
//  193     float_temp = float_temp * (float)DE_number_pwm_mod / 1000.0;//»ñÈ¡ºÏÊÊPWM
        VLDR.W   S1,??DataTable5_1  ;; 0x47127c00
        VMUL.F32 S0,S0,S1
        VMOV     R0,S0
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable9_36  ;; 0x408f4000
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        VMOV     S0,R0
//  194     PWMtemp = (unsigned short int)float_temp;
        VCVT.S32.F32 S0,S0
        VMOV     R1,S0
//  195     //============================//
//  196     switch(left_dir)
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+0
        BEQ.N    ??v_leftMotor_pwmOut_1
        CMP      R4,#+2
        BEQ.N    ??v_leftMotor_pwmOut_2
        BCC.N    ??v_leftMotor_pwmOut_3
        CMP      R4,#+3
        BEQ.N    ??v_leftMotor_pwmOut_4
        B.N      ??v_leftMotor_pwmOut_5
//  197     {
//  198     case 0://¹Ü×ÓÈ«¹Ø±Õ
//  199         //PTC_BASE_PTR->PDOR &=~(1 << 16);
//  200         //PTC_BASE_PTR->PDOR &=~(1 << 17);
//  201         MOTOR_def_PWM_com->CONTROLS[4].CnV = 0;//
??v_leftMotor_pwmOut_1:
        LDR.W    R0,??DataTable9_20  ;; 0x400b9030
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  202         MOTOR_def_PWM_com->CONTROLS[5].CnV = 0;//
        LDR.W    R0,??DataTable9_21  ;; 0x400b9038
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  203         break;
        B.N      ??v_leftMotor_pwmOut_5
//  204     case 2:
//  205         MOTOR_def_PWM_com->CONTROLS[4].CnV = PWMtemp;//CL C8
??v_leftMotor_pwmOut_2:
        LDR.W    R0,??DataTable9_20  ;; 0x400b9030
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        STR      R1,[R0, #+0]
//  206         MOTOR_def_PWM_com->CONTROLS[5].CnV = 0;//BL
        LDR.W    R0,??DataTable9_21  ;; 0x400b9038
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  207         PTC_BASE_PTR->PDOR &=~(1 << 16);//DL
        LDR.W    R0,??DataTable9_13  ;; 0x400ff080
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x10000
        LDR.W    R1,??DataTable9_13  ;; 0x400ff080
        STR      R0,[R1, #+0]
//  208         PTC_BASE_PTR->PDOR |= (1 << 17);//AL
        LDR.W    R0,??DataTable9_13  ;; 0x400ff080
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x20000
        LDR.W    R1,??DataTable9_13  ;; 0x400ff080
        STR      R0,[R1, #+0]
//  209         break;
        B.N      ??v_leftMotor_pwmOut_5
//  210     case 1:
//  211         MOTOR_def_PWM_com->CONTROLS[4].CnV = 0;//
??v_leftMotor_pwmOut_3:
        LDR.W    R0,??DataTable9_20  ;; 0x400b9030
        MOVS     R2,#+0
        STR      R2,[R0, #+0]
//  212         MOTOR_def_PWM_com->CONTROLS[5].CnV = PWMtemp;//BL C9
        LDR.W    R0,??DataTable9_21  ;; 0x400b9038
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        STR      R1,[R0, #+0]
//  213         PTC_BASE_PTR->PDOR |= (1 << 16);//DL
        LDR.W    R0,??DataTable9_13  ;; 0x400ff080
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000
        LDR.W    R1,??DataTable9_13  ;; 0x400ff080
        STR      R0,[R1, #+0]
//  214         PTC_BASE_PTR->PDOR &=~(1 << 17);//AL
        LDR.W    R0,??DataTable9_13  ;; 0x400ff080
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x20000
        LDR.W    R1,??DataTable9_13  ;; 0x400ff080
        STR      R0,[R1, #+0]
//  215         break;
        B.N      ??v_leftMotor_pwmOut_5
//  216     case 3://ÄÜºÄÖÆ¶¯
//  217         MOTOR_def_PWM_com->CONTROLS[4].CnV = 0;//
??v_leftMotor_pwmOut_4:
        LDR.W    R0,??DataTable9_20  ;; 0x400b9030
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  218         MOTOR_def_PWM_com->CONTROLS[5].CnV = 0;//
        LDR.W    R0,??DataTable9_21  ;; 0x400b9038
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  219         PTC_BASE_PTR->PDOR |= (1 << 16);
        LDR.W    R0,??DataTable9_13  ;; 0x400ff080
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000
        LDR.W    R1,??DataTable9_13  ;; 0x400ff080
        STR      R0,[R1, #+0]
//  220         PTC_BASE_PTR->PDOR |= (1 << 17);
        LDR.W    R0,??DataTable9_13  ;; 0x400ff080
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x20000
        LDR.W    R1,??DataTable9_13  ;; 0x400ff080
        STR      R0,[R1, #+0]
//  221         break;
//  222     }
//  223     return;
??v_leftMotor_pwmOut_5:
        POP      {R4,PC}          ;; return
//  224 }
//  225 
//  226 
//  227 //============================================================================//
//  228 // v_motor_pwm_out »ñÈ¡×ªËÙ// ÊäÈë²ÎÊý£º×ópwmÕ¼¿Õ±È£¨Ç§¾«¶È£©£¬×óµ¼Í¨·½Ïò£¬ÓÒpwmÕ¼¿Õ±È£¨Ç§¾«¶È£©£¬ÓÒµ¼Í¨·½Ïò

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  229 void v_rightMotor_pwmOut(uint16 left_pwm_duty,uint16 left_dir)//µç»úÊä³ö
//  230 {
v_rightMotor_pwmOut:
        PUSH     {R4,LR}
        MOVS     R4,R1
//  231     //µÚÒ»´ú°å×ÓË³Ðò C16 C8 C9 C17 AD0 AD1 C10 C18 C19 C11
//  232     //              DL  CL  BL AL 36  35  DR  CR   BR  AR
//  233     //============================//
//  234     PTC_BASE_PTR->PDOR &=~(1 << 18);
        LDR.W    R1,??DataTable9_13  ;; 0x400ff080
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x40000
        LDR.W    R2,??DataTable9_13  ;; 0x400ff080
        STR      R1,[R2, #+0]
//  235     PTC_BASE_PTR->PDOR &=~(1 << 19);
        LDR.W    R1,??DataTable9_13  ;; 0x400ff080
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x80000
        LDR.W    R2,??DataTable9_13  ;; 0x400ff080
        STR      R1,[R2, #+0]
//  236     //============================//
//  237     unsigned short int PWMtemp = 0;//3750ÎªÂúÕ¼¿Õ±È
        MOVS     R1,#+0
//  238     float float_temp = 0.0f;
        VLDR.W   S0,??DataTable5  ;; 0x0
//  239     if(left_pwm_duty > 1000){left_pwm_duty = 1000;}//ÏÞ·ù·ÀÖ¹´íÎó
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+1000
        BLE.N    ??v_rightMotor_pwmOut_0
        MOV      R0,#+1000
//  240     float_temp = (float)left_pwm_duty;
??v_rightMotor_pwmOut_0:
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        VMOV     S0,R0
        VCVT.F32.U32 S0,S0
//  241     float_temp = float_temp * (float)DE_number_pwm_mod / 1000.0;//»ñÈ¡ºÏÊÊPWM
        VLDR.W   S1,??DataTable5_1  ;; 0x47127c00
        VMUL.F32 S0,S0,S1
        VMOV     R0,S0
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable9_36  ;; 0x408f4000
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        VMOV     S0,R0
//  242     PWMtemp = (unsigned short int)float_temp;
        VCVT.S32.F32 S0,S0
        VMOV     R1,S0
//  243     //============================//
//  244     switch(left_dir)
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+0
        BEQ.N    ??v_rightMotor_pwmOut_1
        CMP      R4,#+2
        BEQ.N    ??v_rightMotor_pwmOut_2
        BCC.N    ??v_rightMotor_pwmOut_3
        CMP      R4,#+3
        BEQ.N    ??v_rightMotor_pwmOut_4
        B.N      ??v_rightMotor_pwmOut_5
//  245     {
//  246     case 0://¹Ü×ÓÈ«¹Ø±Õ
//  247         MOTOR_def_PWM_com->CONTROLS[6].CnV = 0;//
??v_rightMotor_pwmOut_1:
        LDR.W    R0,??DataTable9_22  ;; 0x400b9040
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  248         MOTOR_def_PWM_com->CONTROLS[7].CnV = 0;//
        LDR.W    R0,??DataTable9_23  ;; 0x400b9048
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  249         break;
        B.N      ??v_rightMotor_pwmOut_5
//  250     case 2:
//  251         MOTOR_def_PWM_com->CONTROLS[6].CnV = PWMtemp;//DR C10
??v_rightMotor_pwmOut_2:
        LDR.W    R0,??DataTable9_22  ;; 0x400b9040
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        STR      R1,[R0, #+0]
//  252         MOTOR_def_PWM_com->CONTROLS[7].CnV = 0;//AR C19
        LDR.W    R0,??DataTable9_23  ;; 0x400b9048
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  253         PTC_BASE_PTR->PDOR &=~(1 << 18);//CR
        LDR.W    R0,??DataTable9_13  ;; 0x400ff080
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x40000
        LDR.W    R1,??DataTable9_13  ;; 0x400ff080
        STR      R0,[R1, #+0]
//  254         PTC_BASE_PTR->PDOR |= (1 << 19);//BR
        LDR.W    R0,??DataTable9_13  ;; 0x400ff080
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80000
        LDR.W    R1,??DataTable9_13  ;; 0x400ff080
        STR      R0,[R1, #+0]
//  255         break;
        B.N      ??v_rightMotor_pwmOut_5
//  256     case 1:
//  257         MOTOR_def_PWM_com->CONTROLS[6].CnV = 0;//
??v_rightMotor_pwmOut_3:
        LDR.W    R0,??DataTable9_22  ;; 0x400b9040
        MOVS     R2,#+0
        STR      R2,[R0, #+0]
//  258         MOTOR_def_PWM_com->CONTROLS[7].CnV = PWMtemp;//AR C19
        LDR.W    R0,??DataTable9_23  ;; 0x400b9048
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        STR      R1,[R0, #+0]
//  259         PTC_BASE_PTR->PDOR |= (1 << 18);//CR
        LDR.W    R0,??DataTable9_13  ;; 0x400ff080
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40000
        LDR.W    R1,??DataTable9_13  ;; 0x400ff080
        STR      R0,[R1, #+0]
//  260         PTC_BASE_PTR->PDOR &=~(1 << 19);//BR
        LDR.W    R0,??DataTable9_13  ;; 0x400ff080
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x80000
        LDR.W    R1,??DataTable9_13  ;; 0x400ff080
        STR      R0,[R1, #+0]
//  261         break;
        B.N      ??v_rightMotor_pwmOut_5
//  262     case 3://ÄÜºÄÖÆ¶¯
//  263         MOTOR_def_PWM_com->CONTROLS[6].CnV = 0;//
??v_rightMotor_pwmOut_4:
        LDR.W    R0,??DataTable9_22  ;; 0x400b9040
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  264         MOTOR_def_PWM_com->CONTROLS[7].CnV = 0;//
        LDR.W    R0,??DataTable9_23  ;; 0x400b9048
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  265         PTC_BASE_PTR->PDOR |= (1 << 18);
        LDR.W    R0,??DataTable9_13  ;; 0x400ff080
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40000
        LDR.W    R1,??DataTable9_13  ;; 0x400ff080
        STR      R0,[R1, #+0]
//  266         PTC_BASE_PTR->PDOR |= (1 << 19);
        LDR.W    R0,??DataTable9_13  ;; 0x400ff080
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80000
        LDR.W    R1,??DataTable9_13  ;; 0x400ff080
        STR      R0,[R1, #+0]
//  267         break;
//  268     }
//  269     return;
??v_rightMotor_pwmOut_5:
        POP      {R4,PC}          ;; return
//  270 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DC32     0x47127c00
//  271 
//  272 /*
//  273 void v_DAC_Init ( DAC_MemMapPtr dacN )
//  274 {
//  275     if(DAC0_BASE_PTR == dacN){SIM_SCGC2 |= SIM_SCGC2_DAC0_MASK;}
//  276     else if(DAC1_BASE_PTR == dacN){SIM_SCGC2 |= SIM_SCGC2_DAC1_MASK;}
//  277     
//  278     dacN -> C0 = ( 0 
//  279                         | DAC_C0_DACEN_MASK             // ¿ªÆôDACÄ£¿é
//  280                         | 0x40                     // Reference Source Select
//  281                         | DAC_C0_DACTRGSEL_MASK         // Èí¼þ´¥·¢ÆôÓÃ
//  282                         );
//  283     
//  284     dacN -> C1 = 0;
//  285 }
//  286 
//  287 void v_DAC_SetVar( DAC_MemMapPtr dacN , uint16 DACvar )
//  288 {
//  289     dacN-> DAT[0].DATL =  DACvar & 0x00FF;
//  290     dacN-> DAT[0].DATH = (DACvar & 0x0F00) >> 8;
//  291 }
//  292 */
//  293 /*
//  294 vL - vR => Õâ¸öÊÇËÙ¶È²î
//  295 µÚÒ»´Î             0  0   => 0
//  296 µÚ¶þ´Î¿ÉÄÜ         10 20  => 10
//  297                    5+  -5
//  298                   20 10 => -10
//  299                 ÈçÈôËÙ¶È²î±ä»¯½Ï´ó£¬ÄÇÃ´~
//  300 */

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  301 void v_speed_set2pwm(sint16 leftSpeed,sint16 rightSpeed,uint8 speedMode)
//  302 {//1 => ÓÒ//10 => ×ó//3 => Ë«
v_speed_set2pwm:
        PUSH     {R4,LR}
//  303     float speed_P = (float)m_Control.Motor_ControlPara_P_Number;//124.f;//×îºó²ÎÊý6.5f//122
        LDR.W    R2,??DataTable9_37
        VLDR     S0,[R2, #+148]
//  304     float speed_I = (float)m_Control.Motor_ControlPara_I_Number;//5.f;
        LDR.W    R2,??DataTable9_37
        VLDR     S1,[R2, #+152]
//  305     float speed_D = (float)m_Control.Motor_ControlPara_D_Number;//30.f;//60
        LDR.W    R2,??DataTable9_37
        VLDR     S2,[R2, #+156]
//  306             //1.3fÊ±¿Ì£¬Ö±µÀºÜÎÈ¶¨£¬µ«ÊÇ¹ýÍäÈ´»áÓÐÒ»¶¨µÄÕñµ´
//  307             
//  308     float Left_OutPWM = 0.f;
        VLDR.W   S3,??DataTable7  ;; 0x0
//  309     float Right_OutPWM = 0.f;
        VLDR.W   S4,??DataTable7  ;; 0x0
//  310             
//  311     sint16 v_e_L = leftSpeed - m_Control.LeftMotorSpeed;
        LDR.W    R2,??DataTable9_37
        LDRH     R2,[R2, #+48]
        SUBS     R0,R0,R2
//  312     sint16 v_e_R = rightSpeed - m_Control.RightMotorSpeed;
        LDR.W    R2,??DataTable9_37
        LDRH     R2,[R2, #+50]
        SUBS     R1,R1,R2
//  313     
//  314     static sint32 v_e_Counter_L = 0;
//  315     static sint32 v_e_Counter_R = 0;
//  316             
//  317     sint32 v_e_Counter_MayBeNotChange = (v_e_Counter_L + v_e_L + v_e_Counter_R + v_e_R)/2;
        LDR.W    R2,??DataTable9_38
        LDR      R2,[R2, #+0]
        SXTAH    R2,R2,R0
        LDR.W    R3,??DataTable9_39
        LDR      R3,[R3, #+0]
        ADDS     R2,R3,R2
        SXTAH    R2,R2,R1
        MOVS     R3,#+2
        SDIV     R2,R2,R3
        VMOV     S5,R2
//  318             
//  319     sint16 v_e = (v_e_L + v_e_R)/2;
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        SXTAH    R2,R1,R0
        MOVS     R3,#+2
        SDIV     R2,R2,R3
//  320     
//  321     float I_endless = (float)v_e_Counter_MayBeNotChange * speed_I;
        VCVT.F32.S32 S5,S5
        VMUL.F32 S6,S5,S1
//  322     if((I_endless > 960)&&(v_e > 0)){v_e_Counter_MayBeNotChange = (v_e_Counter_L  + v_e_Counter_R)/2;}
        VLDR.W   S5,??DataTable7_1  ;; 0x44700001
        VCMP.F32 S6,S5
        FMSTAT   
        BLT.N    ??v_speed_set2pwm_0
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        CMP      R2,#+1
        BLT.N    ??v_speed_set2pwm_0
        LDR.W    R3,??DataTable9_38
        LDR      R3,[R3, #+0]
        LDR.W    R4,??DataTable9_39
        LDR      R4,[R4, #+0]
        ADDS     R3,R4,R3
        MOVS     R4,#+2
        SDIV     R3,R3,R4
        VMOV     S5,R3
        B.N      ??v_speed_set2pwm_1
//  323     else{v_e_Counter_L = v_e_Counter_L + v_e_L;v_e_Counter_R = v_e_Counter_R + v_e_R;}
??v_speed_set2pwm_0:
        LDR.W    R3,??DataTable9_38
        LDR      R3,[R3, #+0]
        SXTAH    R3,R3,R0
        LDR.W    R4,??DataTable9_38
        STR      R3,[R4, #+0]
        LDR.W    R3,??DataTable9_39
        LDR      R3,[R3, #+0]
        SXTAH    R3,R3,R1
        LDR.W    R4,??DataTable9_39
        STR      R3,[R4, #+0]
//  324     if((I_endless < -960)&&(v_e < 0)){v_e_Counter_MayBeNotChange = (v_e_Counter_L + v_e_Counter_R)/2;}
??v_speed_set2pwm_1:
        VLDR.W   S2,??DataTable7_2  ;; 0xc4700000
        VCMP.F32 S6,S2
        FMSTAT   
        BPL.N    ??v_speed_set2pwm_2
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        CMP      R2,#+0
        BPL.N    ??v_speed_set2pwm_2
        LDR.W    R0,??DataTable9_38
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable9_39
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        VMOV     S5,R0
        B.N      ??v_speed_set2pwm_3
//  325     else{v_e_Counter_L = v_e_Counter_L + v_e_L;v_e_Counter_R = v_e_Counter_R + v_e_R;}
??v_speed_set2pwm_2:
        LDR.W    R3,??DataTable9_38
        LDR      R3,[R3, #+0]
        SXTAH    R0,R3,R0
        LDR.W    R3,??DataTable9_38
        STR      R0,[R3, #+0]
        LDR.W    R0,??DataTable9_39
        LDR      R0,[R0, #+0]
        SXTAH    R0,R0,R1
        LDR.W    R1,??DataTable9_39
        STR      R0,[R1, #+0]
//  326     
//  327     sint32 v_e_counter = (v_e_Counter_L + v_e_Counter_R)/2;
??v_speed_set2pwm_3:
        LDR.W    R0,??DataTable9_38
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable9_39
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        VMOV     S2,R0
//  328     /*
//  329     if(m_Control.LeftMotorSpeed < m_Control.RightMotorSpeed)
//  330     {
//  331         if((L_I_endless > 960)&&(0 == add_for_Int_Left)&&(add_for_Int_Right < 0)){add_for_Int_Left = add_for_Int_Right;}
//  332         if((L_I_endless <-960)&&(0 == add_for_Int_Left)&&(add_for_Int_Right > 0)){add_for_Int_Left = add_for_Int_Right;} 
//  333     }
//  334     if(m_Control.LeftMotorSpeed > m_Control.RightMotorSpeed)
//  335     {
//  336         if((R_I_endless > 960)&&(0 == add_for_Int_Right)&&(add_for_Int_Left < 0)){add_for_Int_Right = add_for_Int_Left;}
//  337         if((R_I_endless <-960)&&(0 == add_for_Int_Right)&&(add_for_Int_Left > 0)){add_for_Int_Right = add_for_Int_Left;}
//  338     }
//  339     */
//  340             
//  341             float OutPWM = v_e * speed_P + v_e_counter * speed_I;
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        VMOV     S3,R2
        VCVT.F32.S32 S3,S3
        VMUL.F32 S3,S3,S0
        VCVT.F32.S32 S0,S2
        VMLA.F32 S3,S0,S1
//  342             Left_OutPWM = OutPWM;
//  343             Right_OutPWM = OutPWM;
        VMOV.F32 S4,S3
//  344             
//  345             if(Left_OutPWM > 950.f){Left_OutPWM = 950.f;}
        VLDR.W   S0,??DataTable7_3  ;; 0x446d8001
        VCMP.F32 S3,S0
        FMSTAT   
        BLT.N    ??v_speed_set2pwm_4
        VLDR.W   S3,??DataTable7_4  ;; 0x446d8000
//  346             if(Left_OutPWM < -950.f){Left_OutPWM = -950.f;}
??v_speed_set2pwm_4:
        VLDR.W   S0,??DataTable7_5  ;; 0xc46d8000
        VCMP.F32 S3,S0
        FMSTAT   
        BPL.N    ??v_speed_set2pwm_5
        VLDR.W   S3,??DataTable7_5  ;; 0xc46d8000
//  347             
//  348             if(Right_OutPWM > 950.f){Right_OutPWM = 950.f;}
??v_speed_set2pwm_5:
        VLDR.W   S0,??DataTable7_3  ;; 0x446d8001
        VCMP.F32 S4,S0
        FMSTAT   
        BLT.N    ??v_speed_set2pwm_6
        VLDR.W   S4,??DataTable7_4  ;; 0x446d8000
//  349             if(Right_OutPWM < -950.f){Right_OutPWM = -950.f;}
??v_speed_set2pwm_6:
        VLDR.W   S0,??DataTable7_5  ;; 0xc46d8000
        VCMP.F32 S4,S0
        FMSTAT   
        BPL.N    ??v_speed_set2pwm_7
        VLDR.W   S4,??DataTable7_5  ;; 0xc46d8000
//  350             
//  351             m_Control.LeftMotorPWM = (sint16)Left_OutPWM;
??v_speed_set2pwm_7:
        VCVT.S32.F32 S0,S3
        VMOV     R0,S0
        LDR.W    R1,??DataTable9_37
        STRH     R0,[R1, #+60]
//  352             m_Control.RightMotorPWM = (sint16)Right_OutPWM;
        VCVT.S32.F32 S0,S4
        VMOV     R0,S0
        LDR.W    R1,??DataTable9_37
        STRH     R0,[R1, #+62]
//  353             
//  354             float LeftRightRatio = //ÓÒ×ªÎªÕý
//  355             (n_GetServoGraduated(m_Control.ServoAngle) -number_ServoGraduated/2)/(float)(number_ServoGraduated/2);//-200~200
        LDR.W    R0,??DataTable9_37
        LDRH     R0,[R0, #+40]
        BL       n_GetServoGraduated
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LDR.W    R1,??DataTable9_40
        LDRH     R1,[R1, #+0]
        MOVS     R2,#+2
        SDIV     R1,R1,R2
        SUBS     R0,R0,R1
        VMOV     S0,R0
        VCVT.F32.S32 S0,S0
        LDR.W    R0,??DataTable9_40
        LDRH     R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        VMOV     S1,R0
        VCVT.F32.S32 S1,S1
        VDIV.F32 S0,S0,S1
//  356             
//  357             m_Control.RightMotorPWM -= LeftRightRatio * 400;
        LDR.W    R0,??DataTable9_37
        LDRSH    R0,[R0, #+62]
        VMOV     S1,R0
        VCVT.F32.S32 S1,S1
        VLDR.W   S2,??DataTable8  ;; 0x43c80000
        VMLS.F32 S1,S0,S2
        VCVT.S32.F32 S1,S1
        VMOV     R0,S1
        LDR.W    R1,??DataTable9_37
        STRH     R0,[R1, #+62]
//  358             m_Control.LeftMotorPWM += LeftRightRatio * 400;
        LDR.W    R0,??DataTable9_37
        LDRSH    R0,[R0, #+60]
        VMOV     S1,R0
        VCVT.F32.S32 S1,S1
        VLDR.W   S2,??DataTable8  ;; 0x43c80000
        VMLA.F32 S1,S0,S2
        VCVT.S32.F32 S0,S1
        VMOV     R0,S0
        LDR.W    R1,??DataTable9_37
        STRH     R0,[R1, #+60]
//  359     if(m_Control.LeftMotorPWM > 970){m_Control.LeftMotorPWM = 970;}
        LDR.W    R0,??DataTable9_37
        LDRSH    R0,[R0, #+60]
        MOVW     R1,#+971
        CMP      R0,R1
        BLT.N    ??v_speed_set2pwm_8
        LDR.W    R0,??DataTable9_37
        MOVW     R1,#+970
        STRH     R1,[R0, #+60]
//  360     if(m_Control.LeftMotorPWM < -970){m_Control.LeftMotorPWM = -970;}
??v_speed_set2pwm_8:
        LDR.W    R0,??DataTable9_37
        LDRSH    R0,[R0, #+60]
        LDR.W    R1,??DataTable9_41  ;; 0xfffffc36
        CMP      R0,R1
        BGE.N    ??v_speed_set2pwm_9
        LDR.W    R0,??DataTable9_37
        LDR.W    R1,??DataTable9_41  ;; 0xfffffc36
        STRH     R1,[R0, #+60]
//  361     if(m_Control.RightMotorPWM > 970){m_Control.RightMotorPWM = 970;}
??v_speed_set2pwm_9:
        LDR.W    R0,??DataTable9_37
        LDRSH    R0,[R0, #+62]
        MOVW     R1,#+971
        CMP      R0,R1
        BLT.N    ??v_speed_set2pwm_10
        LDR.W    R0,??DataTable9_37
        MOVW     R1,#+970
        STRH     R1,[R0, #+62]
//  362     if(m_Control.RightMotorPWM < -970){m_Control.RightMotorPWM = -970;}
??v_speed_set2pwm_10:
        LDR.W    R0,??DataTable9_37
        LDRSH    R0,[R0, #+62]
        LDR.W    R1,??DataTable9_41  ;; 0xfffffc36
        CMP      R0,R1
        BGE.N    ??v_speed_set2pwm_11
        LDR.W    R0,??DataTable9_37
        LDR.W    R1,??DataTable9_41  ;; 0xfffffc36
        STRH     R1,[R0, #+62]
//  363     /*
//  364     m_self_Motor_Para.L_e_Last = m_self_Motor_Para.L_e;
//  365     m_self_Motor_Para.R_e_Last = m_self_Motor_Para.R_e;
//  366             
//  367     m_self_Motor_Para.L_e = (leftSpeed - m_Control.LeftMotorSpeed);
//  368     m_self_Motor_Para.R_e = (rightSpeed -m_Control.RightMotorSpeed);
//  369       
//  370     
//  371     sint16 add_for_Int_Left = m_self_Motor_Para.L_e;//±¥ºÍÏÞÖÆ
//  372     sint16 add_for_Int_Right = m_self_Motor_Para.R_e;
//  373     
//  374     float L_I_endless = (float)m_self_Motor_Para.L_counter * speed_I;//·ù¶ÈÏÞÖÆ
//  375     float R_I_endless = (float)m_self_Motor_Para.R_counter * speed_I;
//  376     
//  377     
//  378     if((L_I_endless > 960)&&(add_for_Int_Left > 0)){add_for_Int_Left = 0;}
//  379     if((L_I_endless < -960)&&(add_for_Int_Left < 0)){add_for_Int_Left = 0;}
//  380     if((R_I_endless > 960)&&(add_for_Int_Right > 0)){add_for_Int_Right = 0;}
//  381     if((R_I_endless < -960)&&(add_for_Int_Right < 0)){add_for_Int_Right = 0;}
//  382     
//  383         if(m_Control.LeftMotorSpeed < m_Control.RightMotorSpeed)
//  384         {
//  385             if((L_I_endless > 960)&&(0 == add_for_Int_Left)&&(add_for_Int_Right < 0)){add_for_Int_Left = add_for_Int_Right;}
//  386             if((L_I_endless <-960)&&(0 == add_for_Int_Left)&&(add_for_Int_Right > 0)){add_for_Int_Left = add_for_Int_Right;} 
//  387         }
//  388         if(m_Control.LeftMotorSpeed > m_Control.RightMotorSpeed)
//  389         {
//  390             if((R_I_endless > 960)&&(0 == add_for_Int_Right)&&(add_for_Int_Left < 0)){add_for_Int_Right = add_for_Int_Left;}
//  391             if((R_I_endless <-960)&&(0 == add_for_Int_Right)&&(add_for_Int_Left > 0)){add_for_Int_Right = add_for_Int_Left;}
//  392         }
//  393     
//  394     float add_ratio = 1.f;
//  395     if(__F_ABS(L_I_endless) >= 50.f)
//  396     {
//  397         add_ratio = 0.4;
//  398     }
//  399     m_self_Motor_Para.L_counter += add_ratio*add_for_Int_Left;
//  400     
//  401     add_ratio = 1.f;
//  402     if(__F_ABS(R_I_endless) >= 50.f)
//  403     {
//  404         add_ratio = 0.4;
//  405     }
//  406     m_self_Motor_Para.R_counter += add_ratio*add_for_Int_Right;
//  407     
//  408     float Left_OutPWM = 0.f;
//  409     float Right_OutPWM = 0.f;
//  410     
//  411     L_I_endless = (float)m_self_Motor_Para.L_counter * speed_I;//·ù¶ÈÏÞÖÆ
//  412     L_I_endless = (L_I_endless > 999.f)?999.f:L_I_endless;
//  413     L_I_endless = (L_I_endless < -999.f)?-999.f:L_I_endless;
//  414     
//  415     R_I_endless = (float)m_self_Motor_Para.R_counter * speed_I;
//  416     R_I_endless = (R_I_endless > 999.f)?999.f:R_I_endless;
//  417     R_I_endless = (R_I_endless < -999.f)?-999.f:R_I_endless;
//  418     
//  419     
//  420     Left_OutPWM  = ((float)m_self_Motor_Para.L_e * speed_P + L_I_endless + speed_D*(m_self_Motor_Para.L_e - m_self_Motor_Para.L_e_Last));
//  421     Right_OutPWM = ((float)m_self_Motor_Para.R_e * speed_P + R_I_endless + speed_D*(m_self_Motor_Para.R_e - m_self_Motor_Para.R_e_Last));
//  422             
//  423     if(Left_OutPWM > 999.f){Left_OutPWM = 999.f;}
//  424     if(Left_OutPWM < -999.f){Left_OutPWM = -999.f;}
//  425             
//  426     if(Right_OutPWM > 999.f){Right_OutPWM = 999.f;}
//  427     if(Right_OutPWM < -999.f){Right_OutPWM = -999.f;}
//  428             
//  429 
//  430     sint16 s16_Left_OutPWM = 0;
//  431     sint16 s16_Right_OutPWM = 0;
//  432     s16_Left_OutPWM = (sint16)Left_OutPWM;
//  433     s16_Right_OutPWM = (sint16)Right_OutPWM;
//  434     sint16 s16_Left_OutPWM_gaia = s16_Left_OutPWM;
//  435     sint16 s16_Right_OutPWM_gaia = s16_Right_OutPWM;
//  436     if(s16_Left_OutPWM > 970){s16_Left_OutPWM = 970;}
//  437     if(s16_Left_OutPWM < -970){s16_Left_OutPWM = -970;}
//  438     if(s16_Right_OutPWM > 970){s16_Right_OutPWM = 970;}
//  439     if(s16_Right_OutPWM < -970){s16_Right_OutPWM = -970;}
//  440     
//  441     //========================================================================//
//  442     m_Control.LeftMotorPWM = s16_Left_OutPWM;
//  443     m_Control.RightMotorPWM = s16_Right_OutPWM;
//  444     */
//  445     
//  446     if(m_Control.LeftMotorPWM > 0){v_leftMotor_pwmOut(m_Control.LeftMotorPWM,1);}
??v_speed_set2pwm_11:
        LDR.W    R0,??DataTable9_37
        LDRSH    R0,[R0, #+60]
        CMP      R0,#+1
        BLT.N    ??v_speed_set2pwm_12
        MOVS     R1,#+1
        LDR.W    R0,??DataTable9_37
        LDRH     R0,[R0, #+60]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       v_leftMotor_pwmOut
        B.N      ??v_speed_set2pwm_13
//  447     else if(m_Control.LeftMotorPWM < 0){v_leftMotor_pwmOut(-m_Control.LeftMotorPWM,2);}
??v_speed_set2pwm_12:
        LDR.W    R0,??DataTable9_37
        LDRSH    R0,[R0, #+60]
        CMP      R0,#+0
        BPL.N    ??v_speed_set2pwm_14
        MOVS     R1,#+2
        LDR.W    R0,??DataTable9_37
        LDRSH    R0,[R0, #+60]
        RSBS     R0,R0,#+0
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       v_leftMotor_pwmOut
        B.N      ??v_speed_set2pwm_13
//  448     else{v_leftMotor_pwmOut(m_Control.LeftMotorPWM,3);}
??v_speed_set2pwm_14:
        MOVS     R1,#+3
        LDR.W    R0,??DataTable9_37
        LDRH     R0,[R0, #+60]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       v_leftMotor_pwmOut
//  449     
//  450     
//  451     if(m_Control.RightMotorPWM > 0){v_rightMotor_pwmOut(m_Control.RightMotorPWM,1);}
??v_speed_set2pwm_13:
        LDR.W    R0,??DataTable9_37
        LDRSH    R0,[R0, #+62]
        CMP      R0,#+1
        BLT.N    ??v_speed_set2pwm_15
        MOVS     R1,#+1
        LDR.W    R0,??DataTable9_37
        LDRH     R0,[R0, #+62]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       v_rightMotor_pwmOut
        B.N      ??v_speed_set2pwm_16
//  452     else if(m_Control.RightMotorPWM < 0){v_rightMotor_pwmOut(-m_Control.RightMotorPWM,2);}
??v_speed_set2pwm_15:
        LDR.W    R0,??DataTable9_37
        LDRSH    R0,[R0, #+62]
        CMP      R0,#+0
        BPL.N    ??v_speed_set2pwm_17
        MOVS     R1,#+2
        LDR.W    R0,??DataTable9_37
        LDRSH    R0,[R0, #+62]
        RSBS     R0,R0,#+0
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       v_rightMotor_pwmOut
        B.N      ??v_speed_set2pwm_16
//  453     else{v_rightMotor_pwmOut(m_Control.RightMotorPWM,3);}
??v_speed_set2pwm_17:
        MOVS     R1,#+3
        LDR.W    R0,??DataTable9_37
        LDRH     R0,[R0, #+62]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       v_rightMotor_pwmOut
//  454 }
??v_speed_set2pwm_16:
        POP      {R4,PC}          ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??v_e_Counter_L:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??v_e_Counter_R:
        DS8 4
//  455 
//  456 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  457 void v_ele_set2pwm(sint16 leftPWM,sint16 rightPWM)
//  458 {
//  459     
//  460 }
v_ele_set2pwm:
        BX       LR               ;; return
//  461 
//  462 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  463 void v_speed_Test(sint16 speed)//µç»ú²âÊÔ
//  464 {
v_speed_Test:
        PUSH     {R7,LR}
//  465     m_Control.LeftGiveSpd = speed;
        LDR.W    R1,??DataTable9_37
        STRH     R0,[R1, #+42]
//  466     v_speed_set2pwm(speed,speed,10);
        MOVS     R2,#+10
        MOVS     R1,R0
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       v_speed_set2pwm
//  467 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DC32     0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_1:
        DC32     0x44700001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_2:
        DC32     0xc4700000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_3:
        DC32     0x446d8001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_4:
        DC32     0x446d8000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_5:
        DC32     0xc46d8000
//  468 
//  469 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  470 void v_speed_Give(sint16 speed)
//  471 {//ËÙ¶È¸ø¶¨´úÂë
v_speed_Give:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//  472      //= speed * 2 - 10;//ÕâÀïÖØÐÂÐÞÕý
//  473   
//  474     float LeftRightRatio = //
//  475          (n_GetServoGraduated(m_Control.ServoAngle) -number_ServoGraduated/2)
//  476         /(float)(number_ServoGraduated/2);//-1.f~1.f//<0.f×ó×ª .0.fÓÒ×ª
        LDR.W    R0,??DataTable9_37
        LDRH     R0,[R0, #+40]
        BL       n_GetServoGraduated
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LDR.W    R1,??DataTable9_40
        LDRH     R1,[R1, #+0]
        MOVS     R2,#+2
        SDIV     R1,R1,R2
        SUBS     R0,R0,R1
        VMOV     S0,R0
        VCVT.F32.S32 S0,S0
        LDR.W    R0,??DataTable9_40
        LDRH     R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        VMOV     S1,R0
        VCVT.F32.S32 S1,S1
        VDIV.F32 S0,S0,S1
//  477     
//  478     
//  479     m_Control.LimitedSlipDiffSpd = (speed*2 - 10);//*( __F_ABS((float)((float)m_Control.LeftRightRatio - 200.f)/200.f));//*((float)(__F_ABS((float)m_Control.LeftRightRatio - 200.f))/200.f) + 20.f;
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LSLS     R0,R4,#+1
        SUBS     R0,R0,#+10
        LDR.W    R1,??DataTable9_37
        STRH     R0,[R1, #+46]
//  480                                                 //200   0
//  481                                                 //speed * 2 - 2      
//  482                                                 //speed * 2 - 10
//  483     if(m_Control.LimitedSlipDiffSpd > speed*2){m_Control.LimitedSlipDiffSpd = speed*2;}
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LSLS     R0,R4,#+1
        LDR.W    R1,??DataTable9_37
        LDRH     R1,[R1, #+46]
        CMP      R0,R1
        BGE.N    ??v_speed_Give_0
        LDR.W    R0,??DataTable9_37
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LSLS     R1,R4,#+1
        STRH     R1,[R0, #+46]
//  484     if(m_Control.LimitedSlipDiffSpd < 10){m_Control.LimitedSlipDiffSpd = 10;}
??v_speed_Give_0:
        LDR.W    R0,??DataTable9_37
        LDRH     R0,[R0, #+46]
        CMP      R0,#+10
        BGE.N    ??v_speed_Give_1
        LDR.W    R0,??DataTable9_37
        MOVS     R1,#+10
        STRH     R1,[R0, #+46]
//  485     //ÒÔÏÂÎª»úÐµ²îËÙ
//  486     sint16 speed_average = (m_Control.LeftMotorSpeed + m_Control.RightMotorSpeed) / 2;//Êµ¼ÊËÙ¶ÈµÄ¾ùÖµ
??v_speed_Give_1:
        LDR.W    R0,??DataTable9_37
        LDRSH    R0,[R0, #+48]
        LDR.W    R1,??DataTable9_37
        LDRSH    R1,[R1, #+50]
        ADDS     R0,R1,R0
        MOVS     R1,#+2
        SDIV     R0,R0,R1
//  487     sint16 error_beWith = speed - speed_average;//¸ø¶¨ËÙ¶ÈÓëÊµ¼ÊËÙ¶È¾ùÖµµÄÆ«²î
        SUBS     R0,R4,R0
//  488     
//  489     sint16 Last_LeftGiveSpd = m_Control.LeftGiveSpd;
        LDR.W    R1,??DataTable9_37
        LDRSH    R1,[R1, #+42]
//  490     sint16 Last_RightGiveSpd = m_Control.RightGiveSpd;//¼ÇÂ¼ÊýÖµ
        LDR.W    R2,??DataTable9_37
        LDRSH    R2,[R2, #+44]
//  491     
//  492     if(m_Control.LeftMotorSpeed < m_Control.RightMotorSpeed)//ÒýÈëÇáÎ¢µÄµÍÍ¨ÂË²¨
        LDR.W    R3,??DataTable9_37
        LDRSH    R3,[R3, #+48]
        LDR.W    R5,??DataTable9_37
        LDRSH    R5,[R5, #+50]
        CMP      R3,R5
        BGE.N    ??v_speed_Give_2
//  493     {
//  494         m_Control.LeftGiveSpd = m_Control.LeftMotorSpeed;
        LDR.W    R0,??DataTable9_37
        LDR.W    R1,??DataTable9_37
        LDRH     R1,[R1, #+48]
        STRH     R1,[R0, #+42]
//  495         m_Control.RightGiveSpd = 2 * speed - m_Control.LeftGiveSpd;
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LDR.W    R0,??DataTable9_37
        LDRSH    R0,[R0, #+42]
        RSBS     R0,R0,R4, LSL #+1
        LDR.W    R1,??DataTable9_37
        STRH     R0,[R1, #+44]
        B.N      ??v_speed_Give_3
//  496     }
//  497     else
//  498     {
//  499         m_Control.RightGiveSpd = m_Control.RightMotorSpeed;
??v_speed_Give_2:
        LDR.W    R0,??DataTable9_37
        LDR.W    R1,??DataTable9_37
        LDRH     R1,[R1, #+50]
        STRH     R1,[R0, #+44]
//  500         m_Control.LeftGiveSpd = 2 * speed - m_Control.RightGiveSpd;
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LDR.W    R0,??DataTable9_37
        LDRSH    R0,[R0, #+44]
        RSBS     R0,R0,R4, LSL #+1
        LDR.W    R1,??DataTable9_37
        STRH     R0,[R1, #+42]
//  501     }
//  502 
//  503     if((__ABS(m_Control.LeftGiveSpd - m_Control.RightGiveSpd) >= m_Control.LimitedSlipDiffSpd)||((m_Control.LeftGiveSpd < 5)||(m_Control.RightGiveSpd < 5)))
??v_speed_Give_3:
        LDR.W    R0,??DataTable9_37
        LDRSH    R0,[R0, #+42]
        LDR.W    R1,??DataTable9_37
        LDRSH    R1,[R1, #+44]
        SUBS     R0,R0,R1
        CMP      R0,#+0
        BPL.N    ??v_speed_Give_4
        LDR.W    R0,??DataTable9_37
        LDRSH    R0,[R0, #+44]
        LDR.N    R1,??DataTable9_37
        LDRSH    R1,[R1, #+42]
        SUBS     R0,R0,R1
        B.N      ??v_speed_Give_5
??v_speed_Give_4:
        LDR.N    R0,??DataTable9_37
        LDRSH    R0,[R0, #+42]
        LDR.N    R1,??DataTable9_37
        LDRSH    R1,[R1, #+44]
        SUBS     R0,R0,R1
??v_speed_Give_5:
        LDR.N    R1,??DataTable9_37
        LDRH     R1,[R1, #+46]
        CMP      R0,R1
        BGE.N    ??v_speed_Give_6
        LDR.N    R0,??DataTable9_37
        LDRSH    R0,[R0, #+42]
        CMP      R0,#+5
        BLT.N    ??v_speed_Give_6
        LDR.N    R0,??DataTable9_37
        LDRSH    R0,[R0, #+44]
        CMP      R0,#+5
        BGE.N    ??v_speed_Give_7
//  504     {//ÏÞÖÆ·ù¶È
//  505         if(m_Control.LeftGiveSpd > m_Control.RightGiveSpd)
??v_speed_Give_6:
        LDR.N    R0,??DataTable9_37
        LDRSH    R0,[R0, #+44]
        LDR.N    R1,??DataTable9_37
        LDRSH    R1,[R1, #+42]
        CMP      R0,R1
        BGE.N    ??v_speed_Give_8
//  506         {
//  507             m_Control.LeftGiveSpd = speed + m_Control.LimitedSlipDiffSpd / 2;
        LDR.N    R0,??DataTable9_37
        LDRH     R0,[R0, #+46]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        ADDS     R0,R0,R4
        LDR.N    R1,??DataTable9_37
        STRH     R0,[R1, #+42]
//  508             m_Control.RightGiveSpd = speed - m_Control.LimitedSlipDiffSpd / 2;
        LDR.N    R0,??DataTable9_37
        LDRH     R0,[R0, #+46]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        SUBS     R0,R4,R0
        LDR.N    R1,??DataTable9_37
        STRH     R0,[R1, #+44]
        B.N      ??v_speed_Give_7
//  509         }
//  510         else
//  511         {
//  512             m_Control.LeftGiveSpd = speed - m_Control.LimitedSlipDiffSpd / 2;
??v_speed_Give_8:
        LDR.N    R0,??DataTable9_37
        LDRH     R0,[R0, #+46]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        SUBS     R0,R4,R0
        LDR.N    R1,??DataTable9_37
        STRH     R0,[R1, #+42]
//  513             m_Control.RightGiveSpd = speed + m_Control.LimitedSlipDiffSpd / 2;
        LDR.N    R0,??DataTable9_37
        LDRH     R0,[R0, #+46]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        ADDS     R0,R0,R4
        LDR.N    R1,??DataTable9_37
        STRH     R0,[R1, #+44]
//  514         }
//  515     }
//  516     //Ôö¼ÓµÍÍ¨ÂË²¨
//  517     
//  518     v_speed_set2pwm(m_Control.LeftGiveSpd,m_Control.RightGiveSpd,3);
??v_speed_Give_7:
        MOVS     R2,#+3
        LDR.N    R0,??DataTable9_37
        LDRSH    R1,[R0, #+44]
        LDR.N    R0,??DataTable9_37
        LDRSH    R0,[R0, #+42]
        BL       v_speed_set2pwm
//  519 }
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8:
        DC32     0x43c80000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_1:
        DC32     m_self_Motor_Para

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_2:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_3:
        DC32     0x40048030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_4:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_5:
        DC32     0x40049020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_6:
        DC32     0x40049024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_7:
        DC32     0x40049028

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_8:
        DC32     0x4004902c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_9:
        DC32     0x40039008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_10:
        DC32     0x40039054

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_11:
        DC32     0x40039080

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_12:
        DC32     0x4003904c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_13:
        DC32     0x40039004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_14:
        DC32     0x400b8008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_15:
        DC32     0x400b8054
//  520 
//  521 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  522 void v_speed_Give_UsedsmallChange(sint16 speed)
//  523 {
v_speed_Give_UsedsmallChange:
        PUSH     {R4,LR}
        VPUSH    {D8}
        MOVS     R4,R0
//  524     m_Control.LimitedSlipDiffSpd = speed * 2 - 10;
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LSLS     R0,R4,#+1
        SUBS     R0,R0,#+10
        LDR.N    R1,??DataTable9_37
        STRH     R0,[R1, #+46]
//  525   
//  526     float LeftRightRatio = //
//  527          (n_GetServoGraduated(m_Control.ServoAngle) -number_ServoGraduated/2)
//  528         /(float)(number_ServoGraduated/2);//-1.f~1.f//<0.f×ó×ª .0.fÓÒ×ª
        LDR.N    R0,??DataTable9_37
        LDRH     R0,[R0, #+40]
        BL       n_GetServoGraduated
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LDR.N    R1,??DataTable9_40
        LDRH     R1,[R1, #+0]
        MOVS     R2,#+2
        SDIV     R1,R1,R2
        SUBS     R0,R0,R1
        VMOV     S0,R0
        VCVT.F32.S32 S0,S0
        LDR.N    R0,??DataTable9_40
        LDRH     R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        VMOV     S1,R0
        VCVT.F32.S32 S1,S1
        VDIV.F32 S16,S0,S1
//  529     
//  530     m_Control.LeftRightRatio = n_GetServoGraduated(m_Control.ServoAngle);//¸ø¶¨×ªËÙÂÊ        
        LDR.N    R0,??DataTable9_37
        LDRH     R0,[R0, #+40]
        BL       n_GetServoGraduated
        LDR.N    R1,??DataTable9_37
        STRH     R0,[R1, #+12]
//  531     //ÒÔÏÂÎª»úÐµ²îËÙ
//  532     sint16 speed_average = (m_Control.LeftMotorSpeed + m_Control.RightMotorSpeed) / 2;//Êµ¼ÊËÙ¶ÈµÄ¾ùÖµ
        LDR.N    R0,??DataTable9_37
        LDRSH    R0,[R0, #+48]
        LDR.N    R1,??DataTable9_37
        LDRSH    R1,[R1, #+50]
        ADDS     R0,R1,R0
        MOVS     R1,#+2
        SDIV     R0,R0,R1
//  533     sint16 error_beWith = speed - speed_average;//¸ø¶¨ËÙ¶ÈÓëÊµ¼ÊËÙ¶È¾ùÖµµÄÆ«²î
        SUBS     R0,R4,R0
//  534     
//  535     float smallChange = //×óÓÒÂÖËÙ¶ÈÏà²î=>ÕâÀïÎªÕý·´À¡//1-×óÂÖËÙ¶È±ÈÓÒÂÖ´ó
//  536     (float)(m_Control.LeftMotorSpeed - m_Control.RightMotorSpeed)/(float)(m_Control.LeftMotorSpeed + m_Control.RightMotorSpeed);
        LDR.N    R1,??DataTable9_37
        LDRSH    R1,[R1, #+48]
        LDR.N    R2,??DataTable9_37
        LDRSH    R2,[R2, #+50]
        SUBS     R1,R1,R2
        VMOV     S0,R1
        VCVT.F32.S32 S0,S0
        LDR.N    R1,??DataTable9_37
        LDRSH    R1,[R1, #+48]
        LDR.N    R2,??DataTable9_37
        LDRSH    R2,[R2, #+50]
        ADDS     R1,R2,R1
        VMOV     S1,R1
        VCVT.F32.S32 S1,S1
        VDIV.F32 S0,S0,S1
//  537     if(smallChange > 1.f){smallChange = 1.f;}
        VLDR.W   S1,??DataTable9_3  ;; 0x3f800001
        VCMP.F32 S0,S1
        FMSTAT   
        BLT.N    ??v_speed_Give_UsedsmallChange_0
        VMOV.F32 S0,#1.0
//  538     if(smallChange <-1.f){smallChange =-1.f;}
??v_speed_Give_UsedsmallChange_0:
        VMOV.F32 S1,#-1.0
        VCMP.F32 S0,S1
        FMSTAT   
        BPL.N    ??v_speed_Give_UsedsmallChange_1
        VMOV.F32 S0,#-1.0
//  539     smallChange = (smallChange + 1.f)/2.f;//0.f-2.f => 0.5f - 1.fÕâ¸öÇø¼äÊÇ×óÂÖ¿ì / ·ñÔò¾ÍÊÇÓÒÂÖ¿ì
??v_speed_Give_UsedsmallChange_1:
        VMOV.F32 S1,#1.0
        VADD.F32 S0,S0,S1
        VMOV.F32 S1,#2.0
        VDIV.F32 S0,S0,S1
//  540     m_Control.LeftGiveSpd  = m_Control.LeftMotorSpeed + smallChange*error_beWith*2.f;
        LDR.N    R1,??DataTable9_37
        LDRSH    R1,[R1, #+48]
        VMOV     S1,R1
        VCVT.F32.S32 S1,S1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        VMOV     S2,R0
        VCVT.F32.S32 S2,S2
        VMUL.F32 S2,S2,S0
        VMOV.F32 S3,#2.0
        VMLA.F32 S1,S2,S3
        VCVT.S32.F32 S1,S1
        VMOV     R1,S1
        LDR.N    R2,??DataTable9_37
        STRH     R1,[R2, #+42]
//  541     m_Control.RightGiveSpd = m_Control.RightMotorSpeed + (1.f-smallChange)*error_beWith*2.f;
        LDR.N    R1,??DataTable9_37
        LDRSH    R1,[R1, #+50]
        VMOV     S1,R1
        VCVT.F32.S32 S1,S1
        VMOV.F32 S2,#1.0
        VSUB.F32 S0,S2,S0
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        VMOV     S2,R0
        VCVT.F32.S32 S2,S2
        VMUL.F32 S0,S0,S2
        VMOV.F32 S2,#2.0
        VMLA.F32 S1,S0,S2
        VCVT.S32.F32 S0,S1
        VMOV     R0,S0
        LDR.N    R1,??DataTable9_37
        STRH     R0,[R1, #+44]
//  542     
//  543     if((__ABS(m_Control.LeftGiveSpd - m_Control.RightGiveSpd) >= m_Control.LimitedSlipDiffSpd)||((m_Control.LeftGiveSpd < 5)||(m_Control.RightGiveSpd < 5)))
        LDR.N    R0,??DataTable9_37
        LDRSH    R0,[R0, #+42]
        LDR.N    R1,??DataTable9_37
        LDRSH    R1,[R1, #+44]
        SUBS     R0,R0,R1
        CMP      R0,#+0
        BPL.N    ??v_speed_Give_UsedsmallChange_2
        LDR.N    R0,??DataTable9_37
        LDRSH    R0,[R0, #+44]
        LDR.N    R1,??DataTable9_37
        LDRSH    R1,[R1, #+42]
        SUBS     R0,R0,R1
        B.N      ??v_speed_Give_UsedsmallChange_3
??v_speed_Give_UsedsmallChange_2:
        LDR.N    R0,??DataTable9_37
        LDRSH    R0,[R0, #+42]
        LDR.N    R1,??DataTable9_37
        LDRSH    R1,[R1, #+44]
        SUBS     R0,R0,R1
??v_speed_Give_UsedsmallChange_3:
        LDR.N    R1,??DataTable9_37
        LDRH     R1,[R1, #+46]
        CMP      R0,R1
        BGE.N    ??v_speed_Give_UsedsmallChange_4
        LDR.N    R0,??DataTable9_37
        LDRSH    R0,[R0, #+42]
        CMP      R0,#+5
        BLT.N    ??v_speed_Give_UsedsmallChange_4
        LDR.N    R0,??DataTable9_37
        LDRSH    R0,[R0, #+44]
        CMP      R0,#+5
        BGE.N    ??v_speed_Give_UsedsmallChange_5
//  544     {//ÏÞÖÆ·ù¶È
//  545         if(m_Control.LeftGiveSpd > m_Control.RightGiveSpd)
??v_speed_Give_UsedsmallChange_4:
        LDR.N    R0,??DataTable9_37
        LDRSH    R0,[R0, #+44]
        LDR.N    R1,??DataTable9_37
        LDRSH    R1,[R1, #+42]
        CMP      R0,R1
        BGE.N    ??v_speed_Give_UsedsmallChange_6
//  546         {
//  547             m_Control.LeftGiveSpd = speed + m_Control.LimitedSlipDiffSpd / 2;
        LDR.N    R0,??DataTable9_37
        LDRH     R0,[R0, #+46]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        ADDS     R0,R0,R4
        LDR.N    R1,??DataTable9_37
        STRH     R0,[R1, #+42]
//  548             m_Control.RightGiveSpd = speed - m_Control.LimitedSlipDiffSpd / 2;
        LDR.N    R0,??DataTable9_37
        LDRH     R0,[R0, #+46]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        SUBS     R0,R4,R0
        LDR.N    R1,??DataTable9_37
        STRH     R0,[R1, #+44]
        B.N      ??v_speed_Give_UsedsmallChange_5
//  549         }
//  550         else
//  551         {
//  552             m_Control.LeftGiveSpd = speed - m_Control.LimitedSlipDiffSpd / 2;
??v_speed_Give_UsedsmallChange_6:
        LDR.N    R0,??DataTable9_37
        LDRH     R0,[R0, #+46]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        SUBS     R0,R4,R0
        LDR.N    R1,??DataTable9_37
        STRH     R0,[R1, #+42]
//  553             m_Control.RightGiveSpd = speed + m_Control.LimitedSlipDiffSpd / 2;
        LDR.N    R0,??DataTable9_37
        LDRH     R0,[R0, #+46]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        ADDS     R0,R0,R4
        LDR.N    R1,??DataTable9_37
        STRH     R0,[R1, #+44]
//  554         }
//  555     }
//  556     
//  557     v_speed_set2pwm(m_Control.LeftGiveSpd,m_Control.RightGiveSpd,3);
??v_speed_Give_UsedsmallChange_5:
        MOVS     R2,#+3
        LDR.N    R0,??DataTable9_37
        LDRSH    R1,[R0, #+44]
        LDR.N    R0,??DataTable9_37
        LDRSH    R0,[R0, #+42]
        BL       v_speed_set2pwm
//  558 }
        VPOP     {D8}
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9:
        DC32     0x400b8080

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_1:
        DC32     0x400b804c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_2:
        DC32     0x400b8004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_3:
        DC32     0x3f800001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_4:
        DC32     0x4004b020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_5:
        DC32     0x4004b024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_6:
        DC32     0x4004b028

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_7:
        DC32     0x4004b02c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_8:
        DC32     0x4004b040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_9:
        DC32     0x4004b044

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_10:
        DC32     0x4004b048

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_11:
        DC32     0x4004b04c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_12:
        DC32     0x400ff094

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_13:
        DC32     0x400ff080

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_14:
        DC32     0x400b902c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_15:
        DC32     0x400b9034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_16:
        DC32     0x400b903c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_17:
        DC32     0x400b9044

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_18:
        DC32     0x400b9000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_19:
        DC32     0x400b9008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_20:
        DC32     0x400b9030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_21:
        DC32     0x400b9038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_22:
        DC32     0x400b9040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_23:
        DC32     0x400b9048

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_24:
        DC32     0x400b9004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_25:
        DC32     0x1d4c0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_26:
        DC32     0x400bb008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_27:
        DC32     0x400bb00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_28:
        DC32     0x400bb024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_29:
        DC32     0x4003b008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_30:
        DC32     0x4003b00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_31:
        DC32     0x4003b024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_32:
        DC32     0x400bb000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_33:
        DC32     0x4003b000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_34:
        DC32     0x400bb010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_35:
        DC32     0x4003b010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_36:
        DC32     0x408f4000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_37:
        DC32     m_Control

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_38:
        DC32     ??v_e_Counter_L

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_39:
        DC32     ??v_e_Counter_R

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_40:
        DC32     number_ServoGraduated

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_41:
        DC32     0xfffffc36

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  559 
//  560 
//  561     //m_Control.LeftGiveSpd = (sint16)((float)(m_Control.LeftMotorSpeed) + ((float)error_beWith *(1.f - ratio)*2.f));
//  562     //m_Control.RightGiveSpd = (sint16)((float)(m_Control.RightMotorSpeed) + ((float)error_beWith * ratio * 2.f));
//  563 
//  564     
//  565     /*
//  566     float ratio = (float)(m_Control.LeftMotorSpeed - m_Control.RightMotorSpeed)//²î±ÈºÍ
//  567                  /(float)(2 * speed);//=>·ÖÄ¸½Ó½üÓÚ2*speed
//  568     //¸ù¾Ý×ªËÙ²î·ÖÅä×ªËÙ£¬½«×ªËÙ·ÖÅä¸ü¶à¸ø×ªËÙ¿ìµÄÂÖ×ÓÉÏ => Êµ¼ÊÉÏ¿ÉÒÔ²»ÓÃÏÞ»¬²îËÙÆ÷
//  569 //    float ratio_mark = (__F_ABS(ratio) / ratio);
//  570 //    ratio = ratio_mark * (2*__F_ABS(ratio) - ratio*ratio);//x^3
//  571     //ratio = ratio * ratio; => »á³öÏÖÎª0µÄÇé¿ö
//  572     //ÕâÀïÄÜ±íÕ÷×óÓÒÂÖ×ªËÙÆ«²î => ·ÖÅäËÙ¶ÈµÄ²îÖµ
//  573     //-1±íÕ÷×ªËÙ¸üÇãÏòÓÚ×óÂÖ//1±íÕ÷×ªËÙ¸üÇãÏòÓÚÓÒÂÖ
//  574     ratio = (ratio + 1.f)/2.f;//¹éÒ»»¯//0 ~ 1
//  575     if(ratio > 1.f){ratio = 1.f;}
//  576     if(ratio < 0.f){ratio = 0.f;}
//  577     //ÔÚÕâ¸ö»ù´¡ÉÏ¸ü¸Ä²îËÙ
//  578     
//  579     sint16 Last_LeftGiveSpd = m_Control.LeftGiveSpd;
//  580     sint16 Last_RightGiveSpd = m_Control.RightGiveSpd;//¼ÇÂ¼ÊýÖµ
//  581     
//  582     m_Control.LeftGiveSpd = (sint16)((float)(m_Control.LeftMotorSpeed) + ((float)error_beWith *(1.f - ratio)*2.f));
//  583     m_Control.RightGiveSpd = (sint16)((float)(m_Control.RightMotorSpeed) + ((float)error_beWith * ratio * 2.f));
//  584     */
// 
//    32 bytes in section .bss
// 3 582 bytes in section .text
// 
// 3 582 bytes of CODE memory
//    32 bytes of DATA memory
//
//Errors: none
//Warnings: 6
