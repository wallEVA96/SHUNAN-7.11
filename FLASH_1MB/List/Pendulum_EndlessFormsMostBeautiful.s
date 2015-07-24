///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     20/Jul/2015  17:10:45 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\Ë³°µÈýºÅ-»ªÄÏÈ /
//                    ü×îºóÆßÌì-7.11\ShunAn_Panel\Pendulum_EndlessFormsMostBe /
//                    autiful.c                                               /
//    Command line =  D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\Ë³°µÈýºÅ-»ªÄÏÈ /
//                    ü×îºóÆßÌì-7.11\ShunAn_Panel\Pendulum_EndlessFormsMostBe /
//                    autiful.c -D IAR -D TWR_K60F120M -lCN                   /
//                    D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\Ë³°µÈýºÅ-»ªÄÏÈ /
//                    ü×îºóÆßÌì-7.11\FLASH_1MB\List\ -lB                      /
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
//                    ü×îºóÆßÌì-7.11\FLASH_1MB\List\Pendulum_EndlessFormsMost /
//                    Beautiful.s                                             /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN SquareRootBedivFloat
        EXTERN SquareRootFloat
        EXTERN __aeabi_cdrcmple
        EXTERN __aeabi_d2f
        EXTERN __aeabi_d2iz
        EXTERN __aeabi_dadd
        EXTERN __aeabi_dmul
        EXTERN __aeabi_dsub
        EXTERN __aeabi_f2d
        EXTERN __aeabi_i2d
        EXTERN __aeabi_ui2d
        EXTERN b_GetLightChaserStatus
        EXTERN m_ImageBeholder_Data
        EXTERN m_ModeMachine
        EXTERN m_system
        EXTERN n_GetMotor_speed
        EXTERN n_GetServoAngle
        EXTERN n_GetServoGraduated
        EXTERN vPtr_CheckLightingChaser
        EXTERN v_BuzzerBeepSet
        EXTERN v_ColorRev_PutPoint

        PUBLIC b_getCurve_Point
        PUBLIC b_solve8x8_Ax_b
        PUBLIC f_Get3pointsCurve
        PUBLIC m_CarRunningMode
        PUBLIC m_Control
        PUBLIC m_ImageAbstract
        PUBLIC m_ImageTesting
        PUBLIC n_getSteerByWire
        PUBLIC n_getSteerMiddleLine_UsedAverage
        PUBLIC u16_RevePanel
        PUBLIC v_ImageAbstractEnhanced
        PUBLIC v_ImageCut
        PUBLIC v_ImageCutInformationShow
        PUBLIC v_ImageMixis
        PUBLIC v_ImageOptimalization
        PUBLIC v_LoadingControlPara
        PUBLIC v_motor_doneFunc

// D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\Ë³°µÈýºÅ-»ªÄÏÈü×îºóÆßÌì-7.11\ShunAn_Panel\Pendulum_EndlessFormsMostBeautiful.c
//    1 #include "arm_cm4.h"
//    2 #include "MK60F15.h"
//    3 #include "ShunAn_Lib.h"
//    4 #include "start_ShunAn.h"
//    5 #include "ThePoet_ThePendulum.h"
//    6 #include "Pendulum_EndlessFormsMostBeautiful.h"
//    7 
//    8 #include "Poet_ImageBeholder.h"//ÉãÏñÍ·
//    9 #include "Poet_Revelation.h"//
//   10 
//   11 #include "Poet_Buzzer.h"
//   12 
//   13 #include "Poet_InputInterface.h"
//   14 #include "Poet_Motor.h"
//   15 
//   16 #include "Poet_Servo.h"

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   17 s_CarRunningMode m_CarRunningMode;
m_CarRunningMode:
        DS8 16

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   18 s_Control m_Control = {0};//¿ØÖÆ²ÎÊý¶¨Òå
m_Control:
        DS8 224

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   19 s_ImageAbstract m_ImageAbstract = {0};//Í¼Ïñ´¦Àí
m_ImageAbstract:
        DS8 560

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   20 unsigned short int u16_RevePanel[96][60];////Í¼ÏñÊý×é
u16_RevePanel:
        DS8 11520
//   21 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   22 s_ImageTesting m_ImageTesting;
m_ImageTesting:
        DS8 140
//   23 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   24 void v_motor_doneFunc(void)
//   25 {//ÕâÀïÉæ¼°µ½ÖÐ¶Ï²Ù×÷£¬ÐèÒªÇåÖÐ¶Ï
v_motor_doneFunc:
        PUSH     {R7,LR}
//   26     //ÕâÀï
//   27     PIT_Flag_Clear(PIT1);//ÇåÖÐ¶Ï
        LDR.W    R0,??DataTable4_1  ;; 0x4003711c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.W    R1,??DataTable4_1  ;; 0x4003711c
        STR      R0,[R1, #+0]
//   28     m_Control.motor_control_time ++;//¿ØÖÆÊ±¼ä×Ô¼Ó
        LDR.W    R0,??DataTable4_2
        LDR      R0,[R0, #+124]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable4_2
        STR      R0,[R1, #+124]
//   29     
//   30     m_Control.LightChaserLogic_time_cut_1 = m_Control.LightChaserLogic;
        LDR.W    R0,??DataTable4_2
        LDR.W    R1,??DataTable4_2
        LDRB     R1,[R1, #+7]
        STRB     R1,[R0, #+6]
//   31     m_Control.LightChaserLogic = b_GetLightChaserStatus();
        BL       b_GetLightChaserStatus
        LDR.W    R1,??DataTable4_2
        STRB     R0,[R1, #+7]
//   32     
//   33     if(0 != vPtr_CheckLightingChaser){vPtr_CheckLightingChaser();}
        LDR.W    R0,??DataTable4_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??v_motor_doneFunc_0
        LDR.W    R0,??DataTable4_3
        LDR      R0,[R0, #+0]
        BLX      R0
//   34     if(!(m_Control.motor_control_time % 5))//ÏÞÖÆ¿ØÖÆÖÜÆÚÎª4msÒ»¿ØÖÆ
??v_motor_doneFunc_0:
        LDR.W    R0,??DataTable4_2
        LDR      R0,[R0, #+124]
        MOVS     R1,#+5
        UDIV     R2,R0,R1
        MLS      R0,R1,R2,R0
        CMP      R0,#+0
        BNE.W    ??v_motor_doneFunc_1
//   35     {//10 msÒ»´Î
//   36         m_Control.LeftMotorSpeed_n_cut_1 = m_Control.LeftMotorSpeed;//ÒÔÏÂÎª²ÎÊý»ñÈ¡
        LDR.W    R0,??DataTable4_2
        LDR.W    R1,??DataTable4_2
        LDRH     R1,[R1, #+48]
        STRH     R1,[R0, #+52]
//   37         m_Control.RightMotorSpeed_n_cut_1 = m_Control.RightMotorSpeed;
        LDR.W    R0,??DataTable4_2
        LDR.W    R1,??DataTable4_2
        LDRH     R1,[R1, #+50]
        STRH     R1,[R0, #+54]
//   38         m_Control.LeftMotorSpeed = n_GetMotor_speed(MOTOR_def_Left_speed_QD_com);//×ªËÙ»ñÈ¡
        LDR.W    R0,??DataTable4_4  ;; 0x40039000
        BL       n_GetMotor_speed
        LDR.W    R1,??DataTable4_2
        STRH     R0,[R1, #+48]
//   39         m_Control.RightMotorSpeed = -n_GetMotor_speed(MOTOR_def_Right_speed_QD_com);
        LDR.W    R0,??DataTable4_5  ;; 0x400b8000
        BL       n_GetMotor_speed
        RSBS     R0,R0,#+0
        LDR.W    R1,??DataTable4_2
        STRH     R0,[R1, #+50]
//   40         m_Control.ServoAngle = n_GetServoAngle();//»ñÈ¡µ±Ç°¶æ»úÊýÖµ
        BL       n_GetServoAngle
        LDR.W    R1,??DataTable4_2
        STRH     R0,[R1, #+40]
//   41         
//   42         if((0 == m_Control.start_motorRunning_flag)//¼ÆËãµ±Ç°µÄ
//   43         &&((m_Control.runningEnd_time > m_system.timer)&&(m_system.timer > m_Control.starting_time)))
        LDR.W    R0,??DataTable4_2
        LDRB     R0,[R0, #+14]
        CMP      R0,#+0
        BNE.W    ??v_motor_doneFunc_1
        LDR.W    R0,??DataTable4_6
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable4_2
        LDR      R1,[R1, #+24]
        CMP      R0,R1
        BCS.W    ??v_motor_doneFunc_1
        LDR.W    R0,??DataTable4_2
        LDR      R0,[R0, #+28]
        LDR.W    R1,??DataTable4_6
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BCS.W    ??v_motor_doneFunc_1
//   44         {
//   45             //v_leftMotor_pwmOut(500,1);
//   46             //v_rightMotor_pwmOut(500,1);
//   47             m_Control.LeftRightRatio = n_GetServoGraduated(m_Control.ServoAngle);//¸ø¶¨×ªËÙÂÊ  
        LDR.W    R0,??DataTable4_2
        LDRH     R0,[R0, #+40]
        BL       n_GetServoGraduated
        LDR.W    R1,??DataTable4_2
        STRH     R0,[R1, #+12]
//   48             
//   49             float Ratio = (__F_ABS((float)((float)m_Control.ServoDeg - 100.f)/100.f));//0-100
        LDR.W    R0,??DataTable4_2
        LDRSH    R0,[R0, #+32]
        VMOV     S0,R0
        VCVT.F32.S32 S0,S0
        VLDR.W   S1,??DataTable0  ;; 0xc2c80000
        VADD.F32 S0,S0,S1
        VLDR.W   S1,??DataTable0_1  ;; 0x42c80000
        VDIV.F32 S0,S0,S1
        VCMP.F32 S0,#0.0
        FMSTAT   
        BPL.N    ??v_motor_doneFunc_2
        LDR.W    R0,??DataTable4_2
        LDRSH    R0,[R0, #+32]
        VMOV     S0,R0
        VCVT.F32.S32 S0,S0
        VLDR.W   S1,??DataTable0  ;; 0xc2c80000
        VADD.F32 S0,S0,S1
        VLDR.W   S1,??DataTable0  ;; 0xc2c80000
        VDIV.F32 S0,S0,S1
        B.N      ??v_motor_doneFunc_3
??v_motor_doneFunc_2:
        LDR.W    R0,??DataTable4_2
        LDRSH    R0,[R0, #+32]
        VMOV     S0,R0
        VCVT.F32.S32 S0,S0
        VLDR.W   S1,??DataTable0  ;; 0xc2c80000
        VADD.F32 S0,S0,S1
        VLDR.W   S1,??DataTable0_1  ;; 0x42c80000
        VDIV.F32 S0,S0,S1
//   50             Ratio = Ratio * 100.f;
??v_motor_doneFunc_3:
        VLDR.W   S1,??DataTable0_1  ;; 0x42c80000
        VMUL.F32 S0,S0,S1
//   51             //low = 10000*a - 2a*low*100 + high
//   52             //a = (low-high)/(10000-2*100*low)
//   53             /*float a = (m_Control.speed_min-m_Control.speed_max)/(10000-2*100*m_Control.speed_min);
//   54             float b = - m_Control.speed_min * 2 * a;
//   55             float c = m_Control.speed_max;*/
//   56             
//   57             if(Ratio < 25)
        VMOV.F32 S1,#25.0
        VCMP.F32 S0,S1
        FMSTAT   
        BPL.N    ??v_motor_doneFunc_4
//   58             {//Max - Min
//   59                 float K = (m_Control.speed_max - m_Control.speed_cut)/(0-25);
        LDR.W    R0,??DataTable4_2
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable4_2
        LDRH     R1,[R1, #+2]
        SUBS     R0,R0,R1
        MVNS     R1,#+24
        SDIV     R0,R0,R1
        VMOV     S1,R0
        VCVT.F32.S32 S1,S1
//   60                 float B = m_Control.speed_cut - K*25;
        LDR.W    R0,??DataTable4_2
        LDRH     R0,[R0, #+2]
        VMOV     S2,R0
        VCVT.F32.U32 S2,S2
        VMOV.F32 S3,#25.0
        VMLS.F32 S2,S1,S3
//   61                 m_Control.GiveSpeed = K*Ratio + B;
        VMLA.F32 S2,S1,S0
        VCVT.S32.F32 S0,S2
        VMOV     R0,S0
        LDR.W    R1,??DataTable4_2
        STRH     R0,[R1, #+108]
        B.N      ??v_motor_doneFunc_5
//   62             }
//   63             else
//   64             {
//   65                 float K = (m_Control.speed_cut - m_Control.speed_min)/(25-100);
??v_motor_doneFunc_4:
        LDR.W    R0,??DataTable4_2
        LDRH     R0,[R0, #+2]
        LDR.W    R1,??DataTable4_2
        LDRH     R1,[R1, #+4]
        SUBS     R0,R0,R1
        MVNS     R1,#+74
        SDIV     R0,R0,R1
        VMOV     S1,R0
        VCVT.F32.S32 S1,S1
//   66                 float B = m_Control.speed_min - K*100;
        LDR.W    R0,??DataTable4_2
        LDRH     R0,[R0, #+4]
        VMOV     S2,R0
        VCVT.F32.U32 S2,S2
        VLDR.W   S3,??DataTable0_1  ;; 0x42c80000
        VMLS.F32 S2,S1,S3
//   67                 m_Control.GiveSpeed = K*Ratio + B;
        VMLA.F32 S2,S1,S0
        VCVT.S32.F32 S0,S2
        VMOV     R0,S0
        LDR.W    R1,??DataTable4_2
        STRH     R0,[R1, #+108]
//   68             }
//   69             
//   70             //m_Control.GiveSpeed = GR_MotorSpeed3[(unsigned int)Ratio];//m_Control.speed_min;//a*Ratio*Ratio + b*Ratio + c;
//   71             //if(m_Control.GiveSpeed > 220){m_Control.GiveSpeed = 220;}
//   72                 ///(uint16)((1.f-Ratio*Ratio)*(m_Control.speed_max-m_Control.speed_min) + m_Control.speed_min);
//   73             if((20 == m_Control.servo_imageYstopLine)||(1 == m_ImageAbstract.RtAngle_isLasting))
??v_motor_doneFunc_5:
        LDR.W    R0,??DataTable4_2
        LDRB     R0,[R0, #+132]
        CMP      R0,#+20
        BEQ.N    ??v_motor_doneFunc_6
        LDR.W    R0,??DataTable4_7
        LDRB     R0,[R0, #+480]
        CMP      R0,#+1
        BNE.N    ??v_motor_doneFunc_7
//   74             {m_Control.GiveSpeed = m_Control.speed_min;}
??v_motor_doneFunc_6:
        LDR.W    R0,??DataTable4_2
        LDR.W    R1,??DataTable4_2
        LDRH     R1,[R1, #+4]
        STRH     R1,[R0, #+108]
//   75             m_Control.v_MotorControlSpeed((sint16)(m_Control.GiveSpeed));
??v_motor_doneFunc_7:
        LDR.W    R0,??DataTable4_2
        LDRSH    R0,[R0, #+108]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDR.W    R1,??DataTable4_2
        LDR      R1,[R1, #+220]
        BLX      R1
//   76             //v_speed_Give((sint16)(m_Control.GiveSpeed / 10.f));
//   77         }//µç»ú¿ØÖÆÖÁ´Ë½áÊø
//   78     }
//   79     
//   80 }
??v_motor_doneFunc_1:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0:
        DC32     0xc2c80000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_1:
        DC32     0x42c80000
//   81 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   82 void v_ImageCutInformationShow(uint8 mode)//===== -Í¼ÏñÕ¹Ê¾- =====//
//   83 {
v_ImageCutInformationShow:
        PUSH     {R4,R5,LR}
        SUB      SP,SP,#+20
        MOVS     R4,R0
//   84     //if(0 == m_ImageAbstract.isImageInformationShowing)
//   85     //{
//   86     //    return;//Èç¹û²»Õ¹Ê¾ÔòÍË³ö
//   87     //}
//   88     //if(0 == m_ImageAbstract.DataShowOK_flag)
//   89     //{return;}
//   90     s_color Red;
//   91     Red.A_Blue_31 = 0;Red.B_Green_63 = 0;Red.C_Red_31 = 31;
        MOVS     R0,#+0
        STRB     R0,[SP, #+2]
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
        MOVS     R0,#+31
        STRB     R0,[SP, #+0]
//   92     s_color Green;
//   93     Green.A_Blue_31 = 0;Green.B_Green_63 = 63;Green.C_Red_31 = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+14]
        MOVS     R0,#+63
        STRB     R0,[SP, #+13]
        MOVS     R0,#+0
        STRB     R0,[SP, #+12]
//   94     s_color Black;
//   95     Black.A_Blue_31 = 0;Black.B_Green_63 = 0;Black.C_Red_31 = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+10]
        MOVS     R0,#+0
        STRB     R0,[SP, #+9]
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
//   96     s_color Blue;
//   97     Blue.A_Blue_31 = 31;Blue.B_Green_63 = 0;Blue.C_Red_31 = 0;
        MOVS     R0,#+31
        STRB     R0,[SP, #+6]
        MOVS     R0,#+0
        STRB     R0,[SP, #+5]
        MOVS     R0,#+0
        STRB     R0,[SP, #+4]
//   98     
//   99     for(uint8 loop = m_ImageAbstract.Show_Start_Y_Position;loop < m_ImageAbstract.Show_Last_Y_Position;loop++)
        LDR.W    R0,??DataTable4_7
        LDRB     R5,[R0, #+481]
        B.N      ??v_ImageCutInformationShow_0
//  100     {
//  101         if(255 != m_ImageAbstract.Right_UpBlack2White[loop])
??v_ImageCutInformationShow_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR.W    R0,??DataTable4_7
        ADDS     R0,R5,R0
        LDRB     R0,[R0, #+284]
        CMP      R0,#+255
        BEQ.N    ??v_ImageCutInformationShow_2
//  102         {
//  103             v_ColorRev_PutPoint(m_ImageAbstract.Right_UpBlack2White[loop]/2,loop,&Blue);
        ADD      R2,SP,#+4
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR.W    R0,??DataTable4_7
        ADDS     R0,R5,R0
        LDRB     R0,[R0, #+284]
        MOVS     R3,#+2
        SDIV     R0,R0,R3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       v_ColorRev_PutPoint
//  104         }
//  105         if(255 != m_ImageAbstract.Left_UpBlack2White[loop])
??v_ImageCutInformationShow_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR.W    R0,??DataTable4_7
        ADDS     R0,R5,R0
        LDRB     R0,[R0, #+224]
        CMP      R0,#+255
        BEQ.N    ??v_ImageCutInformationShow_3
//  106         {
//  107             v_ColorRev_PutPoint(m_ImageAbstract.Left_UpBlack2White[loop]/2,loop,&Green);
        ADD      R2,SP,#+12
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR.W    R0,??DataTable4_7
        ADDS     R0,R5,R0
        LDRB     R0,[R0, #+224]
        MOVS     R3,#+2
        SDIV     R0,R0,R3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       v_ColorRev_PutPoint
//  108         }
//  109         if(255 != m_ImageAbstract.Right[loop])
??v_ImageCutInformationShow_3:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR.W    R0,??DataTable4_7
        ADDS     R0,R5,R0
        LDRB     R0,[R0, #+104]
        CMP      R0,#+255
        BEQ.N    ??v_ImageCutInformationShow_4
//  110         {
//  111             v_ColorRev_PutPoint(m_ImageAbstract.Right[loop]/2,loop,&Blue);
        ADD      R2,SP,#+4
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR.W    R0,??DataTable4_7
        ADDS     R0,R5,R0
        LDRB     R0,[R0, #+104]
        MOVS     R3,#+2
        SDIV     R0,R0,R3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       v_ColorRev_PutPoint
//  112         }
//  113         if(255 != m_ImageAbstract.Left[loop])
??v_ImageCutInformationShow_4:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR.W    R0,??DataTable4_7
        ADDS     R0,R5,R0
        LDRB     R0,[R0, #+44]
        CMP      R0,#+255
        BEQ.N    ??v_ImageCutInformationShow_5
//  114         {
//  115             v_ColorRev_PutPoint(m_ImageAbstract.Left[loop]/2,loop,&Green);
        ADD      R2,SP,#+12
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR.W    R0,??DataTable4_7
        ADDS     R0,R5,R0
        LDRB     R0,[R0, #+44]
        MOVS     R3,#+2
        SDIV     R0,R0,R3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       v_ColorRev_PutPoint
//  116         }
//  117         if(255 != m_ImageAbstract.Central[loop])
??v_ImageCutInformationShow_5:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR.W    R0,??DataTable4_7
        ADDS     R0,R5,R0
        LDRB     R0,[R0, #+164]
        CMP      R0,#+255
        BEQ.N    ??v_ImageCutInformationShow_6
//  118         {
//  119             v_ColorRev_PutPoint(m_ImageAbstract.Central[loop]/2,loop,&Red);
        ADD      R2,SP,#+0
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR.W    R0,??DataTable4_7
        ADDS     R0,R5,R0
        LDRB     R0,[R0, #+164]
        MOVS     R3,#+2
        SDIV     R0,R0,R3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       v_ColorRev_PutPoint
//  120         }
//  121         //v_ColorRev_PutPoint((uint8)m_Control.image_control_n,loop,&Blue);
//  122     }
??v_ImageCutInformationShow_6:
        ADDS     R5,R5,#+1
??v_ImageCutInformationShow_0:
        LDR.W    R0,??DataTable4_7
        LDRB     R0,[R0, #+482]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,R0
        BCC.N    ??v_ImageCutInformationShow_1
//  123     if(1 == mode){return;}
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.W    ??v_ImageCutInformationShow_7
//  124     for(uint8 loop = 0;loop < 90;loop++)
??v_ImageCutInformationShow_8:
        MOVS     R4,#+0
        B.N      ??v_ImageCutInformationShow_9
//  125     {
//  126         if(loop<45)
//  127         {
//  128             v_ColorRev_PutPoint(m_ImageAbstract.LastFrame_CentralPos/2,loop,&Blue);
//  129         }
//  130         else
//  131         {
//  132             v_ColorRev_PutPoint(m_ImageAbstract.LastFrame_CentralPos/2,loop,&Red);
??v_ImageCutInformationShow_10:
        ADD      R2,SP,#+0
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable4_7
        LDRB     R0,[R0, #+468]
        MOVS     R3,#+2
        SDIV     R0,R0,R3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       v_ColorRev_PutPoint
//  133         }
??v_ImageCutInformationShow_11:
        ADDS     R4,R4,#+1
??v_ImageCutInformationShow_9:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+90
        BGE.N    ??v_ImageCutInformationShow_12
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+45
        BGE.N    ??v_ImageCutInformationShow_10
        ADD      R2,SP,#+4
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable4_7
        LDRB     R0,[R0, #+468]
        MOVS     R3,#+2
        SDIV     R0,R0,R3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       v_ColorRev_PutPoint
        B.N      ??v_ImageCutInformationShow_11
//  134         
//  135     }
//  136     for(uint8 loop = 0;loop < 60;loop++)
??v_ImageCutInformationShow_12:
        MOVS     R4,#+0
        B.N      ??v_ImageCutInformationShow_13
//  137     {
//  138         //v_ColorRev_PutPoint(m_ImageAbstract.LastFrame_CentralPos,loop,&Blue);
//  139         v_ColorRev_PutPoint(loop,m_ImageAbstract.Last_Y_Position,&Black);
??v_ImageCutInformationShow_14:
        ADD      R2,SP,#+8
        LDR.W    R0,??DataTable4_7
        LDRB     R1,[R0, #+465]
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       v_ColorRev_PutPoint
//  140         //if((loop < 20)&&(loop > 40))
//  141         //{
//  142         //    //v_ColorRev_PutPoint(loop,m_Control.servo_imageYstopLine,&Black);
//  143         //    v_ColorRev_PutPoint(loop,m_ImageAbstract.Last_Y_Position,&Blue);
//  144         //}
//  145     }
        ADDS     R4,R4,#+1
??v_ImageCutInformationShow_13:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+60
        BLT.N    ??v_ImageCutInformationShow_14
//  146     //m_ImageAbstract.DataShowOK_flag = 0;//Ïû³ý±êÖ¾Î»
//  147     if(255 != m_ImageAbstract.LonlyLine_ShutDown_Y)
        LDR.W    R0,??DataTable4_7
        LDRB     R0,[R0, #+553]
        CMP      R0,#+255
        BEQ.N    ??v_ImageCutInformationShow_15
//  148     {
//  149         for(uint8 inter = 0;inter < 96;inter ++)
        MOVS     R4,#+0
        B.N      ??v_ImageCutInformationShow_16
//  150         {
//  151             v_ColorRev_PutPoint(inter,m_ImageAbstract.LonlyLine_ShutDown_Y,&Red);
??v_ImageCutInformationShow_17:
        ADD      R2,SP,#+0
        LDR.W    R0,??DataTable4_7
        LDRB     R1,[R0, #+553]
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       v_ColorRev_PutPoint
//  152             //v_ColorRev_PutPoint(inter,m_ImageAbstract.LonlyLine_Line_End_About_Y,&Blue);
//  153         }
        ADDS     R4,R4,#+1
??v_ImageCutInformationShow_16:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+96
        BLT.N    ??v_ImageCutInformationShow_17
//  154     }
//  155     
//  156     
//  157     if(255 != m_ImageAbstract.CutY_secondLine)
??v_ImageCutInformationShow_15:
        LDR.W    R0,??DataTable4_7
        LDRB     R0,[R0, #+10]
        CMP      R0,#+255
        BEQ.N    ??v_ImageCutInformationShow_18
//  158     {
//  159         for(uint8 inter = 0;inter < 96;inter ++)
        MOVS     R4,#+0
        B.N      ??v_ImageCutInformationShow_19
//  160         {
//  161             v_ColorRev_PutPoint(inter,m_ImageAbstract.CutY_secondLine,&Red);
??v_ImageCutInformationShow_20:
        ADD      R2,SP,#+0
        LDR.W    R0,??DataTable4_7
        LDRB     R1,[R0, #+10]
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       v_ColorRev_PutPoint
//  162         }
        ADDS     R4,R4,#+1
??v_ImageCutInformationShow_19:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+96
        BLT.N    ??v_ImageCutInformationShow_20
//  163     }
//  164     if(255 != m_ImageAbstract.CutY_firstLine)
??v_ImageCutInformationShow_18:
        LDR.W    R0,??DataTable4_7
        LDRB     R0,[R0, #+9]
        CMP      R0,#+255
        BEQ.N    ??v_ImageCutInformationShow_21
//  165     {
//  166         for(uint8 inter = 0;inter < 96;inter ++)
        MOVS     R4,#+0
        B.N      ??v_ImageCutInformationShow_22
//  167         {
//  168             v_ColorRev_PutPoint(inter,m_ImageAbstract.CutY_firstLine,&Red);
??v_ImageCutInformationShow_23:
        ADD      R2,SP,#+0
        LDR.W    R0,??DataTable4_7
        LDRB     R1,[R0, #+9]
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       v_ColorRev_PutPoint
//  169         }
        ADDS     R4,R4,#+1
??v_ImageCutInformationShow_22:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+96
        BLT.N    ??v_ImageCutInformationShow_23
//  170     }
//  171         
//  172         
//  173     if(255 != m_ImageAbstract.BlackBarHeight_End)
??v_ImageCutInformationShow_21:
        LDR.W    R0,??DataTable4_7
        LDRB     R0,[R0, #+24]
        CMP      R0,#+255
        BEQ.N    ??v_ImageCutInformationShow_24
//  174     {
//  175         for(uint8 inter = 0;inter < 96;inter ++)
        MOVS     R4,#+0
        B.N      ??v_ImageCutInformationShow_25
//  176         {
//  177             v_ColorRev_PutPoint(inter,m_ImageAbstract.BlackBarHeight_Start,&Blue);
??v_ImageCutInformationShow_26:
        ADD      R2,SP,#+4
        LDR.W    R0,??DataTable4_7
        LDRB     R1,[R0, #+23]
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       v_ColorRev_PutPoint
//  178         }
        ADDS     R4,R4,#+1
??v_ImageCutInformationShow_25:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+96
        BLT.N    ??v_ImageCutInformationShow_26
//  179     }
//  180     if(255 != m_ImageAbstract.BlackBarHeight_Start)
??v_ImageCutInformationShow_24:
        LDR.W    R0,??DataTable4_7
        LDRB     R0,[R0, #+23]
        CMP      R0,#+255
        BEQ.N    ??v_ImageCutInformationShow_27
//  181     {
//  182         for(uint8 inter = 0;inter < 96;inter ++)
        MOVS     R4,#+0
        B.N      ??v_ImageCutInformationShow_28
//  183         {
//  184             v_ColorRev_PutPoint(inter,m_ImageAbstract.BlackBarHeight_End,&Blue);
??v_ImageCutInformationShow_29:
        ADD      R2,SP,#+4
        LDR.W    R0,??DataTable4_7
        LDRB     R1,[R0, #+24]
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       v_ColorRev_PutPoint
//  185         }
        ADDS     R4,R4,#+1
??v_ImageCutInformationShow_28:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+96
        BLT.N    ??v_ImageCutInformationShow_29
//  186     }
//  187     
//  188     
//  189     if(255 != m_ImageAbstract.LonlyLine_ShutDown_X)
??v_ImageCutInformationShow_27:
        LDR.W    R0,??DataTable4_7
        LDRB     R0,[R0, #+552]
        CMP      R0,#+255
        BEQ.N    ??v_ImageCutInformationShow_30
//  190     {
//  191         for(uint8 inter = 0;inter < 60;inter ++)
        MOVS     R4,#+0
        B.N      ??v_ImageCutInformationShow_31
//  192         {
//  193             v_ColorRev_PutPoint(m_ImageAbstract.LonlyLine_ShutDown_X/2,inter,&Black);
??v_ImageCutInformationShow_32:
        ADD      R2,SP,#+8
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable4_7
        LDRB     R0,[R0, #+552]
        MOVS     R3,#+2
        SDIV     R0,R0,R3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       v_ColorRev_PutPoint
//  194         }
        ADDS     R4,R4,#+1
??v_ImageCutInformationShow_31:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+60
        BLT.N    ??v_ImageCutInformationShow_32
//  195     }
//  196     for(uint8 loop = 0;loop < 60;loop++)//¼ì²âÌø±ä´ÎÊý
??v_ImageCutInformationShow_30:
        MOVS     R4,#+0
        B.N      ??v_ImageCutInformationShow_33
//  197     {
//  198         
//  199         
//  200         if('K' == m_ImageAbstract.happened_suddenly_True[loop])
//  201         {
//  202             for(uint8 inter = 0;inter < 96;inter ++)
//  203             {
//  204                 v_ColorRev_PutPoint(inter,loop,&Black);
//  205             }
//  206         }
//  207         if('W' == m_ImageAbstract.happened_suddenly_True[loop])
//  208         {
//  209             for(uint8 inter = 0;inter < 96;inter ++)
//  210             {
//  211                 v_ColorRev_PutPoint(inter,loop,&Red);
//  212             }
//  213         }
//  214         if('B' == m_ImageAbstract.happened_suddenly_True[loop])
//  215         {
//  216             for(uint8 inter = 0;inter < 96;inter ++)
//  217             {
//  218                 v_ColorRev_PutPoint(inter,loop,&Green);
??v_ImageCutInformationShow_34:
        ADD      R2,SP,#+12
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       v_ColorRev_PutPoint
//  219             }
        ADDS     R5,R5,#+1
??v_ImageCutInformationShow_35:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+96
        BLT.N    ??v_ImageCutInformationShow_34
??v_ImageCutInformationShow_36:
        ADDS     R4,R4,#+1
??v_ImageCutInformationShow_33:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+60
        BGE.N    ??v_ImageCutInformationShow_37
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable4_7
        ADDS     R0,R4,R0
        LDRB     R0,[R0, #+484]
        CMP      R0,#+75
        BNE.N    ??v_ImageCutInformationShow_38
        MOVS     R5,#+0
        B.N      ??v_ImageCutInformationShow_39
??v_ImageCutInformationShow_40:
        ADD      R2,SP,#+8
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       v_ColorRev_PutPoint
        ADDS     R5,R5,#+1
??v_ImageCutInformationShow_39:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+96
        BLT.N    ??v_ImageCutInformationShow_40
??v_ImageCutInformationShow_38:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable4_7
        ADDS     R0,R4,R0
        LDRB     R0,[R0, #+484]
        CMP      R0,#+87
        BNE.N    ??v_ImageCutInformationShow_41
        MOVS     R5,#+0
        B.N      ??v_ImageCutInformationShow_42
??v_ImageCutInformationShow_43:
        ADD      R2,SP,#+0
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       v_ColorRev_PutPoint
        ADDS     R5,R5,#+1
??v_ImageCutInformationShow_42:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+96
        BLT.N    ??v_ImageCutInformationShow_43
??v_ImageCutInformationShow_41:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable4_7
        ADDS     R0,R4,R0
        LDRB     R0,[R0, #+484]
        CMP      R0,#+66
        BNE.N    ??v_ImageCutInformationShow_36
        MOVS     R5,#+0
        B.N      ??v_ImageCutInformationShow_35
//  220         }
//  221     }
//  222 }
??v_ImageCutInformationShow_37:
??v_ImageCutInformationShow_7:
        ADD      SP,SP,#+20
        POP      {R4,R5,PC}       ;; return
//  223 
//  224 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  225 uint8 b_getCurve_Point(math_f32* used_X,math_f32 used_Y,math_f32 near_X,math_f32 near_Y,math_f32 far_X,math_f32 far_Y,math_f32 Curve)
//  226 {//×îºËÐÄ´úÂë£¬¸ù¾ÝÇúÂÊ»æÖÆµã 
b_getCurve_Point:
        PUSH     {R4,LR}
        VPUSH    {D8-D11}
        MOVS     R4,R0
        VMOV.F32 S16,S0
//  227     math_f32 X_Mid = (near_X + far_X) * 0.5f;
        VADD.F32 S0,S1,S3
        VMOV.F32 S6,#0.5
        VMUL.F32 S19,S0,S6
//  228     math_f32 Y_Mid = (near_Y + far_Y) * 0.5f;//È·¶¨ÖÐ¼äÎ»ÖÃ
        VADD.F32 S0,S2,S4
        VMOV.F32 S6,#0.5
        VMUL.F32 S20,S0,S6
//  229     math_f32 Round_halfLong = 0.f;
        VLDR.W   S18,??DataTable2  ;; 0x0
//  230     if(0.f == Curve)
        VCMP.F32 S5,#0.0
        FMSTAT   
        BNE.N    ??b_getCurve_Point_0
//  231     {//Ö±Ïß 
//  232 	*used_X = (used_Y-near_Y)*(far_X-near_X)/(far_Y-near_Y) + near_X;
        VSUB.F32 S0,S16,S2
        VSUB.F32 S3,S3,S1
        VMUL.F32 S0,S0,S3
        VSUB.F32 S2,S4,S2
        VDIV.F32 S0,S0,S2
        VADD.F32 S0,S0,S1
        VSTR     S0,[R4, #0]
//  233 	return 1;
        MOVS     R0,#+1
        B.N      ??b_getCurve_Point_1
//  234     }
//  235     else
//  236     {
//  237 	math_f32 isRight = (Curve < 0.f)?-1.f:1.f;//È·¶¨ÇúÂÊ×ßÏò //Ð¡ÓÚÁãÓÒÐý 
??b_getCurve_Point_0:
        VCMP.F32 S5,#0.0
        FMSTAT   
        BPL.N    ??b_getCurve_Point_2
        VMOV.F32 S17,#-1.0
        B.N      ??b_getCurve_Point_3
??b_getCurve_Point_2:
        VMOV.F32 S17,#1.0
//  238         Round_halfLong = 1.f / __F_ABS(Curve);
??b_getCurve_Point_3:
        VCMP.F32 S5,#0.0
        FMSTAT   
        BPL.N    ??b_getCurve_Point_4
        VNEG.F32 S5,S5
        B.N      ??b_getCurve_Point_5
??b_getCurve_Point_4:
??b_getCurve_Point_5:
        VMOV.F32 S0,#1.0
        VDIV.F32 S18,S0,S5
//  239         math_f32 X_Cut = (far_X - near_X);// * 0.5f;
        VSUB.F32 S21,S3,S1
//  240 	math_f32 Y_Cut = (far_Y - near_Y);// * 0.5f;//°ë³¤ 
        VSUB.F32 S22,S4,S2
//  241 		
//  242 	math_f32 Round_halfLong_Down = (X_Cut*X_Cut + Y_Cut*Y_Cut);//°ë¾¶ÏÂÃæµÄÄÇÌõÏß
        VMUL.F32 S0,S21,S21
        VMLA.F32 S0,S22,S22
//  243 	math_f32 RoundPoint_LastWilds = (Round_halfLong*Round_halfLong - 0.25f*Round_halfLong_Down);//Çó×îºóÒ»²½µÄ³¤¶È
        VMUL.F32 S1,S18,S18
        VMOV.F32 S2,#0.25
        VMLS.F32 S1,S0,S2
//  244 	math_f32 small_change = SquareRootFloat(__F_ABS(RoundPoint_LastWilds / Round_halfLong_Down));//(y2-y1)y = (x1-x2)x + C
        VDIV.F32 S2,S1,S0
        VCMP.F32 S2,#0.0
        FMSTAT   
        BPL.N    ??b_getCurve_Point_6
        VDIV.F32 S0,S1,S0
        VNEG.F32 S0,S0
        B.N      ??b_getCurve_Point_7
??b_getCurve_Point_6:
        VDIV.F32 S0,S1,S0
??b_getCurve_Point_7:
        BL       SquareRootFloat
//  245 		
//  246 	math_f32 RoundX0 = isRight*Y_Cut*(small_change) + X_Mid;//È·¶¨Ô­µã 
        VMUL.F32 S1,S17,S22
        VMLA.F32 S19,S1,S0
//  247 	math_f32 RoundY0 = -isRight*X_Cut*(small_change) + Y_Mid;
        VNEG.F32 S1,S17
        VMUL.F32 S1,S1,S21
        VMLA.F32 S20,S1,S0
//  248 
//  249 	math_f32 Y_CutVar_WithRoundUsed = (RoundY0 - used_Y);//YÆ«ÖÃ 
        VSUB.F32 S1,S20,S16
//  250 	math_f32 X_Change = SquareRootFloat(Round_halfLong*Round_halfLong 
//  251 					- Y_CutVar_WithRoundUsed*Y_CutVar_WithRoundUsed);
        VMUL.F32 S0,S18,S18
        VMLS.F32 S0,S1,S1
        BL       SquareRootFloat
//  252 	*used_X = -isRight*X_Change + RoundX0;
        VNEG.F32 S1,S17
        VMLA.F32 S19,S1,S0
        VSTR     S19,[R4, #0]
//  253 	return 0;
        MOVS     R0,#+0
??b_getCurve_Point_1:
        VPOP     {D8-D11}
        POP      {R4,PC}          ;; return
//  254     }
//  255 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     0x0
//  256 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  257 float f_Get3pointsCurve(uint8 x_1,uint8 x_2,uint8 x_3,uint8 y_1,uint8 y_2,uint8 y_3)
//  258 {
f_Get3pointsCurve:
        PUSH     {R3-R7,LR}
        VPUSH    {D8}
//  259     sint16 x_12_cut = (x_1 - x_2);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        SUBS     R4,R0,R1
//  260     sint16 x_32_cut = (x_3 - x_2);
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        SUBS     R5,R2,R1
//  261     sint16 x_31_cut = (x_3 - x_1);
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        SUBS     R2,R2,R0
        LDR      R1,[SP, #+32]
//  262     sint16 y_12_cut = (y_1 - y_2);
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        SUBS     R6,R3,R1
        LDR      R0,[SP, #+36]
//  263     sint16 y_32_cut = (y_3 - y_2);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        SUBS     R1,R0,R1
//  264     sint16 y_31_cut = (y_3 - y_1);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        SUBS     R0,R0,R3
//  265     float S_4 = (x_32_cut * y_12_cut - x_12_cut * y_32_cut) * 2.f;//Ãæ»ý
        SMULBB   R3,R5,R6
        SMULBB   R7,R4,R1
        SUBS     R3,R3,R7
        VMOV     S0,R3
        VCVT.F32.S32 S0,S0
        VMOV.F32 S1,#2.0
        VMUL.F32 S16,S0,S1
//  266     float l_12 = (x_12_cut*x_12_cut + y_12_cut*y_12_cut);
        SMULBB   R3,R4,R4
        SMLABB   R3,R6,R6,R3
        VMOV     S0,R3
        VCVT.F32.S32 S0,S0
//  267     float l_23 = (x_32_cut*x_32_cut + y_32_cut*y_32_cut);
        SMULBB   R3,R5,R5
        SMLABB   R1,R1,R1,R3
        VMOV     S1,R1
        VCVT.F32.S32 S1,S1
//  268     float l_13 = (x_31_cut*x_31_cut + y_31_cut*y_31_cut);
        SMULBB   R1,R2,R2
        SMLABB   R0,R0,R0,R1
        VMOV     S2,R0
        VCVT.F32.S32 S2,S2
//  269     float curve = S_4 * SquareRootBedivFloat(l_12 * l_23 * l_13);
        VMUL.F32 S0,S0,S1
        VMUL.F32 S0,S0,S2
        BL       SquareRootBedivFloat
        VMUL.F32 S0,S16,S0
//  270     return curve;
        VPOP     {D8}
        POP      {R0,R4-R7,PC}    ;; return
//  271 }
//  272 
//  273 //È«Ö÷Ôª¸ßË¹·¨

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  274 uint8 b_solve8x8_Ax_b(float AB_input[8][9], float X[8])
//  275 {
b_solve8x8_Ax_b:
        PUSH     {R4-R7}
        SUB      SP,SP,#+296
//  276     float AB[8][9];
//  277         for(uint8 loop = 0;loop < 8;loop++)
        MOVS     R2,#+0
        B.N      ??b_solve8x8_Ax_b_0
//  278         {
//  279             for(uint8 inter = 0;inter < 9;inter++)
//  280             {
//  281                 AB[loop][inter] = AB_input[loop][inter];
??b_solve8x8_Ax_b_1:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R4,#+36
        ADD      R5,SP,#+8
        MLA      R4,R4,R2,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R5,#+36
        MLA      R5,R5,R2,R0
        LDR      R5,[R5, R3, LSL #+2]
        STR      R5,[R4, R3, LSL #+2]
//  282             }
        ADDS     R3,R3,#+1
??b_solve8x8_Ax_b_2:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+9
        BLT.N    ??b_solve8x8_Ax_b_1
        ADDS     R2,R2,#+1
??b_solve8x8_Ax_b_0:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+8
        BGE.N    ??b_solve8x8_Ax_b_3
        MOVS     R3,#+0
        B.N      ??b_solve8x8_Ax_b_2
//  283         }
//  284 	// AX = B
//  285 	// ¾ØÕó¸³Öµ[ÐÐ][ÁÐ]
//  286 	uint8 Row_MainElementChange_Temp[8] = { 0, 1, 2, 3, 4, 5, 6, 7 };//ÁÐÖ÷Ôª±£Áô½»»»ÌØÐÔ//ÓëÁÐ±ä»»Í¬Ê±½øÐÐ 
??b_solve8x8_Ax_b_3:
        ADD      R0,SP,#+0
        LDR.W    R2,??DataTable4_8
        LDM      R2!,{R3,R4}
        STM      R0!,{R3,R4}
        SUBS     R2,R2,#+8
        SUBS     R0,R0,#+8
//  287 	//float AB[8][9];
//  288         /*
//  289 	for (uint16 lineNum = 0; lineNum < 8; lineNum++)
//  290 	{
//  291 		for (uint8 RowCtr = 0; RowCtr < 8; RowCtr++)
//  292 		{
//  293 			AB[lineNum][RowCtr] = A[lineNum][RowCtr];
//  294 		}
//  295 	}
//  296 	for (uint8 ExRow_LineCtr = 0; ExRow_LineCtr<8; ExRow_LineCtr++)
//  297 	{
//  298 		AB[ExRow_LineCtr][8] = B[ExRow_LineCtr];
//  299 	}
//  300         */
//  301 	//========================================================================//
//  302 	//ÒÔÏÂÎª³õµÈÐÐ±ä»» 
//  303 	uint8 Line_BeWithRowChange = 0;//AB¾ØÕóµÄÖÈ//·Ç0£¬ÁÐ±äÐÐ±ä£¬ÁÐ±äÐÐ²»±ä 
        MOVS     R0,#+0
//  304 	uint8 Row_Ctr = 0;//ÁÐ¼ÆÊý 
        MOVS     R2,#+0
//  305 	for (Row_Ctr = 0; Row_Ctr < 9; Row_Ctr++)//Ñ¡È¡Ã¿ÁÐ£¬Ä¿±ê¾ÍÊÇÏûÈ¥´ËÁÐËùÓÐÔªËØ»òÖ»Ê£ÏÂÒ»¸ö1//ÒÀÀµÐÐÐÅÏ¢ 
        MOVS     R3,#+0
        MOVS     R2,R3
        B.N      ??b_solve8x8_Ax_b_4
//  306 	{
//  307 		//====================================================================//
//  308 		//ÖÈÈ·ÈÏ 
//  309 		if (8 == Row_Ctr)//È·ÈÏAB¾ØÕóÖÈÊÇ·ñÂúÖÈ 
//  310 		{
//  311 			if (8 == Line_BeWithRowChange)
//  312 			{
//  313 				//cout << "ÂúÖÈ" << endl;
//  314 			}
//  315 			else
//  316 			{
//  317 				//cout << "²»ÂúÖÈ" <<endl;//return 'F';//·ÇÂúÖÈ 
//  318                                 return 'F';
//  319 			}
//  320 			break;//ÂúÖÈ 
//  321 		}
//  322 		//====================================================================//
//  323 		//Çó½â·½³Ì×é 
//  324 		do//»ñÈ¡±¾ÐÐÐÅÏ¢//»»È¡È«Ö÷ÔªÏûÈ¥·¨ 
//  325 		{
//  326 			//»ñÈ¡×î´óÖµÐÅÏ¢ 
//  327 			uint8 Max_Num_Line_address = Line_BeWithRowChange;//ÈÏ¶¨´ËÊ±ÊýÖµ×î´ó
//  328 			uint8 Max_Num_Row_address = Row_Ctr;
//  329 			float Max_Num_Var = __F_ABS(AB[Line_BeWithRowChange][Row_Ctr]);//×î´óÖµ 
//  330 			for (uint8 Line_ForFindMax_loop = Max_Num_Line_address; Line_ForFindMax_loop < 8; Line_ForFindMax_loop++)
//  331 			{
//  332 				for (uint8 Row_ForFindMax_loop = Max_Num_Row_address; Row_ForFindMax_loop<8; Row_ForFindMax_loop++)
//  333 				{
//  334 					if ((__F_ABS(AB[Line_ForFindMax_loop][Row_ForFindMax_loop])) > Max_Num_Var)
//  335 					{
//  336 						Max_Num_Var = __F_ABS(AB[Line_ForFindMax_loop][Row_ForFindMax_loop]);//×î´óÖµ¸³Öµ
//  337 						Max_Num_Line_address = Line_ForFindMax_loop;//ÐÐ¸³Öµ 
//  338 						Max_Num_Row_address = Row_ForFindMax_loop;//ÁÐ¸³Öµ 
//  339 					}
//  340 				}
//  341 			}
//  342 			//ÐÐÁÐ½»»» 
//  343 			if ((0.0 != Max_Num_Var) && (Line_BeWithRowChange != Max_Num_Line_address) && (Row_Ctr != Max_Num_Row_address))//Í¬ÁÐ¸÷ÐÐ×î´óÖµÈ·¶¨·ÇÁã 
//  344 			{
//  345 				//ÐÐ±ä»»
//  346 				float lineRow_tempForChange = 0.0;
//  347 				for (uint8 loop = 0; loop < 9; loop++)//ÐÐ½»»» 
//  348 				{
//  349 					lineRow_tempForChange = AB[Line_BeWithRowChange][loop];
//  350 					AB[Line_BeWithRowChange][loop] = AB[Max_Num_Line_address][loop];
//  351 					AB[Max_Num_Line_address][loop] = lineRow_tempForChange;
//  352 				}
//  353 				//ÁÐ±ä»» 
//  354 				for (uint8 loop = 0; loop < 8; loop++)
//  355 				{
//  356 					//ÁÐ½»»» 
//  357 					lineRow_tempForChange = AB[loop][Row_Ctr];
//  358 					AB[loop][Row_Ctr] = AB[loop][Max_Num_Row_address];
//  359 					AB[loop][Max_Num_Row_address] = lineRow_tempForChange;
//  360 					//²ÎÊý±ä»»
//  361 				}
//  362 				uint8 changeFloatTemp = 0;
//  363 				changeFloatTemp = Row_MainElementChange_Temp[Row_Ctr];//Row_CtrÓÐ¿ÉÄÜ²»µÈÓÚ Row_MainElementChange_Temp[Row_Ctr]
//  364 				Row_MainElementChange_Temp[Row_Ctr] = Row_MainElementChange_Temp[Max_Num_Row_address];
//  365 				Row_MainElementChange_Temp[Max_Num_Row_address] = changeFloatTemp;
//  366 			}
//  367 		} while (0);
//  368 		//
//  369 		if (0.0 != AB[Line_BeWithRowChange][Row_Ctr])//±¾´ÎÔªËØÊÇ·ñÎª0
//  370 		{
//  371 			//±¾ÐÐÒÔÍâÐÅÏ¢ £¨ÏÂ´Î´Ó´Ë¸üÐÂ£©//ÐÐÐÅÏ¢¼Ì³Ð¡¢ÁÐÐÅÏ¢¼Ì³Ð
//  372 			float self_Line_GaiaNum = AB[Line_BeWithRowChange][Row_Ctr];//Ñ¡È¡±¾ÐÐ¹éÒ»»¯ÊýÖµ
//  373 			for (uint8 self_Line_RowCtr = Row_Ctr; self_Line_RowCtr < 9; self_Line_RowCtr++)
//  374 			{
//  375 				AB[Line_BeWithRowChange][self_Line_RowCtr] = AB[Line_BeWithRowChange][self_Line_RowCtr] / self_Line_GaiaNum;//±¾ÐÐ¹éÒ»»¯
//  376 			}
//  377 			for (uint8 Cal_Line_Ctr = Line_BeWithRowChange + 1; Cal_Line_Ctr < 8; Cal_Line_Ctr++)//ÐÐÔö¹ã£¬ÁÐÆðÊ¼µãÓëÐÐÍ¬Ïò
//  378 			{
//  379 				//Ö÷ÔªËØ²»Îª0£¬ÏûÈ¥±¾ÐÐËùÓÐÔªËØ
//  380 				//É¾³ý±¾ÐÐÍâÆäÓàÐÐµÄÊýÖµ
//  381 				float Die_SammLikeGaiaLinesRow = AB[Cal_Line_Ctr][Row_Ctr] / AB[Line_BeWithRowChange][Row_Ctr];//»ñÈ¡Ïû³ýÔöÒæ
//  382 				//cout << "Die_SammLikeGaiaLinesRow" << Die_SammLikeGaiaLinesRow << endl;//ÓÃÓÚ²âÊÔ 
//  383 				//*****************************************************************************//
//  384 				for (uint8 ExLine_RowNumCtr = Row_Ctr; ExLine_RowNumCtr < 9; ExLine_RowNumCtr++)//´ÓÄ¿±êÔ­Ê¼ÐÐ¿ªÊ¼£¬Ã¿ÐÐ¹Ì¶¨ÏûÈ¥
//  385 				{
//  386 					AB[Cal_Line_Ctr][ExLine_RowNumCtr] = AB[Cal_Line_Ctr][ExLine_RowNumCtr] - //ÐÐ¹Ì¶¨£¬ÁÐÔö¹ã
//  387 						Die_SammLikeGaiaLinesRow * AB[Line_BeWithRowChange][ExLine_RowNumCtr];//
//  388 					//²ÎÊýÃèÊö
//  389 				}//****************************************************************************//
//  390 			}
//  391 			Line_BeWithRowChange++;//ÓëÁÐ±ä»»Í¬ÐÐ 			
??b_solve8x8_Ax_b_5:
        ADDS     R0,R0,#+1
??b_solve8x8_Ax_b_6:
        ADDS     R2,R2,#+1
??b_solve8x8_Ax_b_4:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+9
        BGE.N    ??b_solve8x8_Ax_b_7
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+8
        BNE.N    ??b_solve8x8_Ax_b_8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+8
        BEQ.N    ??b_solve8x8_Ax_b_9
        MOVS     R0,#+70
        B.N      ??b_solve8x8_Ax_b_10
//  392 		}//else//{//Îª0ÔòºöÂÔ±¾´Î //}
//  393 	}//=======================================================================//
//  394 	//»Ø´ú¼ÆËã//ÂúÖÈÊ±ºò¿ÉµÃ×îÓÅ½â
//  395 	/*
//  396 	cout << endl;
//  397 	for (uint8 loop = 0; loop < 8; loop++)
//  398 	{
//  399 		for (uint8 row_loop = 0; row_loop < 9; row_loop++)
//  400 		{
//  401 			cout << AB[loop][row_loop] << " ";
//  402 		}
//  403 		cout << endl;
//  404 		cout << endl;
//  405 		cout << endl;
//  406 		//cout << X[Row_MainElementChange_Temp[loop]] << endl;//loopÐÐËùÔÚÐÅÏ¢¼´ Row_MainElementChange_Temp[loop]Ó¦´æ´¢ÐÅÏ¢ 
//  407 	}
//  408 	*/
//  409 
//  410 	//cout << "ÖÈ" << (float)Line_BeWithRowChange << endl;
//  411 	Line_BeWithRowChange -= 1;//ÖÈÎªÐÐÖÈ£¬ÂúÖÈµÄÊ±ºòÊýÖµÎª8£¬¹Ê±ØÐëÉ¾È¥Ò»¸öÊýÖµ//ÇóÈ¡ÖÈËùÔÚµÄÐÐ×ø±ê
??b_solve8x8_Ax_b_9:
??b_solve8x8_Ax_b_7:
        SUBS     R0,R0,#+1
//  412 	for (sint8 LineCtr_Cyclotron = Line_BeWithRowChange; LineCtr_Cyclotron >= 0; LineCtr_Cyclotron--)//´ÓÖÈ¿ªÊ¼£¬Öð²½ÏòÉÏ¼õÈ¥
        B.N      ??b_solve8x8_Ax_b_11
??b_solve8x8_Ax_b_8:
        MOVS     R4,R0
        MOVS     R3,R2
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R5,#+36
        ADD      R6,SP,#+8
        MLA      R5,R5,R0,R6
        ADDS     R5,R5,R2, LSL #+2
        VLDR     S0,[R5, #0]
        VCMP.F32 S0,#0.0
        FMSTAT   
        BPL.N    ??b_solve8x8_Ax_b_12
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R5,#+36
        ADD      R6,SP,#+8
        MLA      R5,R5,R0,R6
        ADDS     R5,R5,R2, LSL #+2
        VLDR     S0,[R5, #0]
        VNEG.F32 S0,S0
        B.N      ??b_solve8x8_Ax_b_13
??b_solve8x8_Ax_b_12:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R5,#+36
        ADD      R6,SP,#+8
        MLA      R5,R5,R0,R6
        LDR      R5,[R5, R2, LSL #+2]
        VMOV     S0,R5
??b_solve8x8_Ax_b_13:
        MOVS     R5,R4
        B.N      ??b_solve8x8_Ax_b_14
??b_solve8x8_Ax_b_15:
        ADDS     R5,R5,#+1
??b_solve8x8_Ax_b_14:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+8
        BGE.N    ??b_solve8x8_Ax_b_16
        MOVS     R6,R3
        B.N      ??b_solve8x8_Ax_b_17
??b_solve8x8_Ax_b_18:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R3,#+36
        ADD      R4,SP,#+8
        MLA      R3,R3,R5,R4
        LDR      R3,[R3, R6, LSL #+2]
        VMOV     S0,R3
??b_solve8x8_Ax_b_19:
        MOVS     R4,R5
        MOVS     R3,R6
??b_solve8x8_Ax_b_20:
        ADDS     R6,R6,#+1
??b_solve8x8_Ax_b_17:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+8
        BGE.N    ??b_solve8x8_Ax_b_15
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R7,#+36
        ADD      R12,SP,#+8
        MLA      R7,R7,R5,R12
        ADDS     R7,R7,R6, LSL #+2
        VLDR     S1,[R7, #0]
        VCMP.F32 S1,#0.0
        FMSTAT   
        BPL.N    ??b_solve8x8_Ax_b_21
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R7,#+36
        ADD      R12,SP,#+8
        MLA      R7,R7,R5,R12
        ADDS     R7,R7,R6, LSL #+2
        VLDR     S1,[R7, #0]
        VNEG.F32 S1,S1
        B.N      ??b_solve8x8_Ax_b_22
??b_solve8x8_Ax_b_21:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R7,#+36
        ADD      R12,SP,#+8
        MLA      R7,R7,R5,R12
        LDR      R7,[R7, R6, LSL #+2]
        VMOV     S1,R7
??b_solve8x8_Ax_b_22:
        VCMP.F32 S0,S1
        FMSTAT   
        BPL.N    ??b_solve8x8_Ax_b_20
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R3,#+36
        ADD      R4,SP,#+8
        MLA      R3,R3,R5,R4
        ADDS     R3,R3,R6, LSL #+2
        VLDR     S0,[R3, #0]
        VCMP.F32 S0,#0.0
        FMSTAT   
        BPL.N    ??b_solve8x8_Ax_b_18
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R3,#+36
        ADD      R4,SP,#+8
        MLA      R3,R3,R5,R4
        ADDS     R3,R3,R6, LSL #+2
        VLDR     S0,[R3, #0]
        VNEG.F32 S0,S0
        B.N      ??b_solve8x8_Ax_b_19
??b_solve8x8_Ax_b_16:
        VCMP.F32 S0,#0.0
        FMSTAT   
        BEQ.N    ??b_solve8x8_Ax_b_23
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R0,R4
        BEQ.N    ??b_solve8x8_Ax_b_23
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R2,R3
        BEQ.N    ??b_solve8x8_Ax_b_23
        VLDR.W   S0,??DataTable4  ;; 0x0
        MOVS     R5,#+0
        B.N      ??b_solve8x8_Ax_b_24
??b_solve8x8_Ax_b_25:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R6,#+36
        ADD      R7,SP,#+8
        MLA      R6,R6,R0,R7
        LDR      R6,[R6, R5, LSL #+2]
        VMOV     S0,R6
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R6,#+36
        ADD      R7,SP,#+8
        MLA      R6,R6,R0,R7
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R7,#+36
        ADD      R12,SP,#+8
        MLA      R7,R7,R4,R12
        LDR      R7,[R7, R5, LSL #+2]
        STR      R7,[R6, R5, LSL #+2]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R6,#+36
        ADD      R7,SP,#+8
        MLA      R6,R6,R4,R7
        ADDS     R6,R6,R5, LSL #+2
        VSTR     S0,[R6, #0]
        ADDS     R5,R5,#+1
??b_solve8x8_Ax_b_24:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+9
        BLT.N    ??b_solve8x8_Ax_b_25
        MOVS     R4,#+0
        B.N      ??b_solve8x8_Ax_b_26
??b_solve8x8_Ax_b_27:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R5,#+36
        ADD      R6,SP,#+8
        MLA      R5,R5,R4,R6
        LDR      R5,[R5, R2, LSL #+2]
        VMOV     S0,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R5,#+36
        ADD      R6,SP,#+8
        MLA      R5,R5,R4,R6
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R6,#+36
        ADD      R7,SP,#+8
        MLA      R6,R6,R4,R7
        LDR      R6,[R6, R3, LSL #+2]
        STR      R6,[R5, R2, LSL #+2]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R5,#+36
        ADD      R6,SP,#+8
        MLA      R5,R5,R4,R6
        ADDS     R5,R5,R3, LSL #+2
        VSTR     S0,[R5, #0]
        ADDS     R4,R4,#+1
??b_solve8x8_Ax_b_26:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+8
        BLT.N    ??b_solve8x8_Ax_b_27
        MOVS     R4,#+0
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R5,SP,#+0
        LDRB     R5,[R2, R5]
        MOVS     R4,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R5,SP,#+0
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ADD      R6,SP,#+0
        LDRB     R6,[R3, R6]
        STRB     R6,[R2, R5]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ADD      R5,SP,#+0
        STRB     R4,[R3, R5]
??b_solve8x8_Ax_b_23:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R3,#+36
        ADD      R4,SP,#+8
        MLA      R3,R3,R0,R4
        ADDS     R3,R3,R2, LSL #+2
        VLDR     S0,[R3, #0]
        VCMP.F32 S0,#0.0
        FMSTAT   
        BEQ.W    ??b_solve8x8_Ax_b_6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R3,#+36
        ADD      R4,SP,#+8
        MLA      R3,R3,R0,R4
        LDR      R3,[R3, R2, LSL #+2]
        VMOV     S0,R3
        MOVS     R3,R2
        B.N      ??b_solve8x8_Ax_b_28
??b_solve8x8_Ax_b_29:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R4,#+36
        ADD      R5,SP,#+8
        MLA      R4,R4,R0,R5
        ADDS     R4,R4,R3, LSL #+2
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R5,#+36
        ADD      R6,SP,#+8
        MLA      R5,R5,R0,R6
        ADDS     R5,R5,R3, LSL #+2
        VLDR     S1,[R5, #0]
        VDIV.F32 S1,S1,S0
        VSTR     S1,[R4, #0]
        ADDS     R3,R3,#+1
??b_solve8x8_Ax_b_28:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+9
        BLT.N    ??b_solve8x8_Ax_b_29
        ADDS     R3,R0,#+1
        B.N      ??b_solve8x8_Ax_b_30
??b_solve8x8_Ax_b_31:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R5,#+36
        ADD      R6,SP,#+8
        MLA      R5,R5,R3,R6
        ADDS     R5,R5,R4, LSL #+2
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R6,#+36
        ADD      R7,SP,#+8
        MLA      R6,R6,R0,R7
        ADDS     R6,R6,R4, LSL #+2
        VLDR     S1,[R6, #0]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R6,#+36
        ADD      R7,SP,#+8
        MLA      R6,R6,R3,R7
        ADDS     R6,R6,R4, LSL #+2
        VLDR     S2,[R6, #0]
        VMLS.F32 S2,S0,S1
        VSTR     S2,[R5, #0]
        ADDS     R4,R4,#+1
??b_solve8x8_Ax_b_32:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+9
        BLT.N    ??b_solve8x8_Ax_b_31
        ADDS     R3,R3,#+1
??b_solve8x8_Ax_b_30:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+8
        BGE.W    ??b_solve8x8_Ax_b_5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R4,#+36
        ADD      R5,SP,#+8
        MLA      R4,R4,R3,R5
        ADDS     R4,R4,R2, LSL #+2
        VLDR     S0,[R4, #0]
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R4,#+36
        ADD      R5,SP,#+8
        MLA      R4,R4,R0,R5
        ADDS     R4,R4,R2, LSL #+2
        VLDR     S1,[R4, #0]
        VDIV.F32 S0,S0,S1
        MOVS     R4,R2
        B.N      ??b_solve8x8_Ax_b_32
??b_solve8x8_Ax_b_33:
        SUBS     R0,R0,#+1
??b_solve8x8_Ax_b_11:
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BMI.N    ??b_solve8x8_Ax_b_34
//  413 	{
//  414 		//break;
//  415 		uint8 LineMaxFinder_UpperNum = 8;//×Ü¹²Ñ¡ÓÐÐÐ//¼ÆÊýÓÃ//¿ÉÒÔ½«Ã¿ÐÐÆðÊ¼Î»ÖÃ¸³Öµ¸ø´ËÊý£¬²»¹ýÕâÑù¾ÍÒªÇóÕâ¸öµÃÌø³öÕâ¸öÑ­»·
        MOVS     R3,#+8
//  416 		uint8 EachLine_StarRowNum = 0;//³õÊ¼»¯Ê§Îó£ºLine_BeWithRowChange - 1;2015.2.8
        MOVS     R2,#+0
        B.N      ??b_solve8x8_Ax_b_35
//  417 		while (LineMaxFinder_UpperNum)//»ñÈ¡ËùÔÚÐÐµÄ×Ý×ø±ê//ÂúÖÈÊ±½«²»·þ´ÓÖ÷Õó
//  418 		{
//  419 			if (0.0 != AB[LineCtr_Cyclotron][EachLine_StarRowNum])//´Ë²½ÎªµÄÊÇ»ñÈ¡ÐèÒª¼õÈ¥ÐÐµÄÊ×ÓÐÊýÖµµÄÊý¾Ý 
//  420 			{
//  421 				break;
//  422 			}
//  423 			EachLine_StarRowNum++;
??b_solve8x8_Ax_b_36:
        ADDS     R2,R2,#+1
//  424 			LineMaxFinder_UpperNum--;
        SUBS     R3,R3,#+1
??b_solve8x8_Ax_b_35:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+0
        BEQ.N    ??b_solve8x8_Ax_b_37
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        MOVS     R4,#+36
        ADD      R5,SP,#+8
        SMLABB   R4,R0,R4,R5
        ADDS     R4,R4,R2, LSL #+2
        VLDR     S0,[R4, #0]
        VCMP.F32 S0,#0.0
        FMSTAT   
        BEQ.N    ??b_solve8x8_Ax_b_36
//  425 		}
//  426 		//cout <<"EachLine_StarRowNum"<<(float)EachLine_StarRowNum<<endl;//²âÊÔÓÃ 
//  427 		//cout << "LineMaxFinder_UpperNum" <<(float)LineMaxFinder_UpperNum<<endl;
//  428 		if (0 != LineMaxFinder_UpperNum)//ÎªËÑÑ°µ½×îºóÒ»ÐÐ
??b_solve8x8_Ax_b_37:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+0
        BEQ.N    ??b_solve8x8_Ax_b_33
//  429 		{
//  430 			//EachLine_StarRowNumÎª±¾ÐÐÆðÊ¼Î»ÖÃ
//  431 			//ÏÈÐÐ¼õ£¬ºóÒÆ¶¯ÁÐ
//  432 			for (uint8 Line_Ctr = 0; Line_Ctr < LineCtr_Cyclotron; Line_Ctr++)//´ÓRowCtrµ½LineCtr_CyclotronËùÔÚÐÐ
        MOVS     R3,#+0
        B.N      ??b_solve8x8_Ax_b_38
//  433 			{
//  434 				float Die_ForLine = AB[Line_Ctr][EachLine_StarRowNum] / AB[LineCtr_Cyclotron][EachLine_StarRowNum];//ÏÈÇóÈ¡½ØÈ¥ÔöÒæ
//  435 
//  436 				//cout << "Die_ForLine" << Die_ForLine <<endl;
//  437 				for (uint8 RowCtr_ForChace = EachLine_StarRowNum; RowCtr_ForChace < 9; RowCtr_ForChace++)//Îª»Ø´ú¼ÆÊý
//  438 				{
//  439 					AB[Line_Ctr][RowCtr_ForChace] = AB[Line_Ctr][RowCtr_ForChace] - Die_ForLine * AB[LineCtr_Cyclotron][RowCtr_ForChace];
??b_solve8x8_Ax_b_39:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R5,#+36
        ADD      R6,SP,#+8
        MLA      R5,R5,R3,R6
        ADDS     R5,R5,R4, LSL #+2
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        MOVS     R6,#+36
        ADD      R7,SP,#+8
        SMLABB   R6,R0,R6,R7
        ADDS     R6,R6,R4, LSL #+2
        VLDR     S1,[R6, #0]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R6,#+36
        ADD      R7,SP,#+8
        MLA      R6,R6,R3,R7
        ADDS     R6,R6,R4, LSL #+2
        VLDR     S2,[R6, #0]
        VMLS.F32 S2,S0,S1
        VSTR     S2,[R5, #0]
//  440 				}
        ADDS     R4,R4,#+1
??b_solve8x8_Ax_b_40:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+9
        BLT.N    ??b_solve8x8_Ax_b_39
        ADDS     R3,R3,#+1
??b_solve8x8_Ax_b_38:
        MOVS     R4,R3
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R5,R0
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        CMP      R4,R5
        BGE.N    ??b_solve8x8_Ax_b_33
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R4,#+36
        ADD      R5,SP,#+8
        MLA      R4,R4,R3,R5
        ADDS     R4,R4,R2, LSL #+2
        VLDR     S0,[R4, #0]
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        MOVS     R4,#+36
        ADD      R5,SP,#+8
        SMLABB   R4,R0,R4,R5
        ADDS     R4,R4,R2, LSL #+2
        VLDR     S1,[R4, #0]
        VDIV.F32 S0,S0,S1
        MOVS     R4,R2
        B.N      ??b_solve8x8_Ax_b_40
//  441 			}
//  442 		}
//  443 	}
//  444 	//========================================================================//
//  445 	//´æÈëXÖÐ => ×îºóµÄÔªËØ 
//  446 	for (uint8 loop = 0; loop < 8; loop++)
??b_solve8x8_Ax_b_34:
        MOVS     R0,#+0
        B.N      ??b_solve8x8_Ax_b_41
//  447 	{
//  448 		X[Row_MainElementChange_Temp[loop]] = AB[loop][8];//loopÐÐËùÔÚÐÅÏ¢¼´ Row_MainElementChange_Temp[loop]Ó¦´æ´¢ÐÅÏ¢ 
??b_solve8x8_Ax_b_42:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R2,SP,#+0
        LDRB     R2,[R0, R2]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R3,#+36
        ADD      R4,SP,#+8
        MLA      R3,R3,R0,R4
        LDR      R3,[R3, #+32]
        STR      R3,[R1, R2, LSL #+2]
//  449 	}
        ADDS     R0,R0,#+1
??b_solve8x8_Ax_b_41:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+8
        BLT.N    ??b_solve8x8_Ax_b_42
//  450 	//Line_BeWithRowChange => ÐÐÖÈ 
//  451 	/*
//  452 	cout << endl;
//  453 	for (uint8 loop = 0; loop < 8; loop++)
//  454 	{
//  455 		for (uint8 row_loop = 0; row_loop < 9; row_loop++)
//  456 		{
//  457 			cout << AB[loop][row_loop] << " ";
//  458 		}
//  459 		cout << endl;
//  460 		cout << endl;
//  461 		cout << endl;
//  462 		//cout << X[Row_MainElementChange_Temp[loop]] << endl;//loopÐÐËùÔÚÐÅÏ¢¼´ Row_MainElementChange_Temp[loop]Ó¦´æ´¢ÐÅÏ¢ 
//  463 	}
//  464 	*/
//  465 
//  466 	return 'T';
        MOVS     R0,#+84
??b_solve8x8_Ax_b_10:
        ADD      SP,SP,#+296
        POP      {R4-R7}
        BX       LR               ;; return
//  467 }
//  468 
//  469 
//  470 //============================================================================//
//  471 //ÔØÈë¿ØÖÆ²ÎÊý

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  472 void v_LoadingControlPara(s_Control* temp_Control,s_ImageAbstract* ImageAbstract)
//  473 {//±ê¶¨ÉãÏñÍ·
//  474     temp_Control->image_ratio[0] = 0.208748;//0.201252;//0.197369;//0.204188;//0.208997;//0.197502;//0.208333;//0.211618;//0.210896;//0.219466;//0.208334;//0.205882;//0.197133;//0.199867;//0.203863;//0.196078;//0.211268;//0.21544;//0.214521;
v_LoadingControlPara:
        LDR.N    R2,??DataTable4_9  ;; 0x3e55c209
        STR      R2,[R0, #+68]
//  475     temp_Control->image_ratio[1] = -0.28492;//-0.330947;//-0.346889;//-0.319372;//-0.322453;//-0.28698;//-0.347223;//-0.342706;//-0.368956;//-0.353542;//-0.359477;//-0.388292;//-0.339773;//-0.321889;//-0.372046;//-0.352113;//-0.314186;//-0.313531;
        LDR.N    R2,??DataTable4_10  ;; 0xbe91e109
        STR      R2,[R0, #+72]
//  476     temp_Control->image_ratio[2] = 4.49617;//7.18246;//7.02152;//5.69634;//7.00238;//6.60703;//6.66668;//6.15114;//6.85113;//7.229797;//8.11765;//8.04659;//7.80144;//6.65236;//7.45099;//5.98592;//4.9641;//6.10561;
        LDR.N    R2,??DataTable4_11  ;; 0x408fe0a0
        STR      R2,[R0, #+76]
//  477     temp_Control->image_ratio[3] = 1.49012e-08;//-1.49012e-08;//8.9407e-08;//-2.98023e-8;//0;//5.96046e-08;//2.98023e-08;//-1.49012e-08;//0;//4.47035e-08;//9.9407e-08;//2.98023e-08;//-2.98023e-08;//5.96046e-08;//-4.47035e-08;//-1.49012e-08;//-1.04308e-07;//1.49012e-8;
        LDR.N    R2,??DataTable4_12  ;; 0x32800016
        STR      R2,[R0, #+80]
//  478     temp_Control->image_ratio[4] = 0.548993;//0.299642;//0.460528;//0.418847;//0.286626;//0.259964;//0.3373;//0.303164;//0.470739;//0.34091;//0.48366;//0.382318;//0.499667;//0.515022;//0.351936;//0.598591;//0.399462;//0.41254;
        LDR.N    R2,??DataTable4_13  ;; 0x3f0c8ace
        STR      R2,[R0, #+84]
//  479     temp_Control->image_ratio[5] = -8.01251;//3.98927;//-2.43424;//2.30367;//8.32802;//9.61512;//4.28573;//8.20738;//0.839639;//9.5202;//-1.29413;//0.860222;//-3.43105;//-7.38198;//3.52942;//-9.96478;//8.4246;//-6.23711;//2.37625;
        LDR.N    R2,??DataTable4_14  ;; 0xc100333e
        STR      R2,[R0, #+88]
//  480     temp_Control->image_ratio[6] = -5.82077e-10;//4.07454e-10;//4.42378e-09;//-1.5134e-9;//5.82077e-11;//7.85803e-10;//-1.86265e-09;//-1.01863e-09;//2.32831e-09;//2.46291e-09;//5.82077e-10;//5.82077e-10;//-5.82077e-10;//2.32831e-10;//-2.79397e-09;//1.16415e-09;//-5.19503e-09;//1.28057e-9;
        LDR.N    R2,??DataTable4_15  ;; 0xb0200007
        STR      R2,[R0, #+92]
//  481     temp_Control->image_ratio[7] = -0.0118138;//-0.0129696;//-0.0131579;//-0.013089;//-0.0131369;//-0.0124914;//-0.0138889;//-0.0144991;//-0.0139949;//-0.0138889;//-0.0143791;//-0.0155317;//-0.0139907;//-0.0128755;//-0.0145802;//-0.0140845;//-0.0125673;//-0.0132013;
        LDR.N    R2,??DataTable4_16  ;; 0xbc418eab
        STR      R2,[R0, #+96]
//  482     
//  483     ImageAbstract->LastFrame_CentralPos = 185/2;
        MOVS     R0,#+92
        STRB     R0,[R1, #+468]
//  484 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     0x4003711c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     m_Control

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     vPtr_CheckLightingChaser

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     0x40039000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     0x400b8000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_6:
        DC32     m_system

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_7:
        DC32     m_ImageAbstract

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_8:
        DC32     `?<Constant {0, 1, 2, 3, 4, 5, 6, 7}>`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_9:
        DC32     0x3e55c209

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_10:
        DC32     0xbe91e109

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_11:
        DC32     0x408fe0a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_12:
        DC32     0x32800016

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_13:
        DC32     0x3f0c8ace

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_14:
        DC32     0xc100333e

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_15:
        DC32     0xb0200007

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_16:
        DC32     0xbc418eab
//  485 //uint8 x_Jumpread = 0;
//  486 //uint8 viewer_car[60];

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  487 void v_ImageCut()//Í¼ÏñÐÅÏ¢´¦Àí//selfjudge_SendMessage=>
//  488 {
v_ImageCut:
        PUSH     {R3-R11,LR}
        VPUSH    {D8}
        SUB      SP,SP,#+208
//  489    // uint8 mayBeRampHappened = 0;
//  490     
//  491     uint8 LonlyLineCounter = 0;//¸üÃûÒÔ±ãÓÚ¸ü¸Ä´úÂë
        MOVS     R2,#+0
//  492     
//  493     uint8 TurnOnTheLonlyLine = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+35]
//  494     
//  495     uint8 SideChangeOccur = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+13]
//  496     
//  497     uint8 FindLitteWidthTurning = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+34]
//  498     uint8 TurningBeacauseVeryLittle__isHappened = 0;
        MOVS     R0,#+0
//  499     /*
//  500     for(uint8 loop = 0;loop < 60;loop++)
//  501     {
//  502         m_ImageTesting.Left_Side[loop] = 255;
//  503         m_ImageTesting.Right_Side[loop] = 255;
//  504     }
//  505     */
//  506     uint8 showLonlyLineFindAboutUpSet = '.';
        MOVS     R1,#+46
        STRB     R1,[SP, #+33]
//  507     uint8 becauseThisOutOfTheBlackRtAngle = '.';
        MOVS     R1,#+46
        STRB     R1,[SP, #+14]
//  508     uint8 showBlackCutBar = ' ';
        MOVS     R1,#+32
        STRB     R1,[SP, #+46]
//  509     //uint8 show_BuzzerInfor = ' ';
//  510     uint8 show_About_RtAngle = ' ';
        MOVS     R11,#+32
//  511     uint8 show_About_LonlyLine = ' ';
        MOVS     R7,#+32
//  512     uint8 show_isWrong = ' ';
        MOVS     R1,#+32
        STRB     R1,[SP, #+12]
//  513     uint8 showYcutDown = 's';
        MOVS     R1,#+115
        STRB     R1,[SP, #+20]
//  514     uint8 isOccurCross = 0;
        MOVS     R1,#+0
        STRB     R1,[SP, #+32]
//  515     //uint8 firstAbout_ShutDownBackAbout_BlackLine = 0;
//  516     //³£ÊýÉèÖÃ
//  517     uint8 isHaveLonlyLineStartCorner = 0;
        MOVS     R1,#+0
        STRB     R1,[SP, #+15]
//  518     uint8 HaveLonlyLineStartCornerLastLine = 255;
        MOVS     R1,#+255
        STRB     R1,[SP, #+21]
//  519     
//  520     const uint16 constNum_X_MaxCounter = 184;//=>Ïû³ý×îºóÒ»¸öÁãµãÇé¿ö
        MOVS     R1,#+184
        STRH     R1,[SP, #+22]
//  521     const uint16 constNum_Line_MaxCounter = 60;//
        MOVS     R1,#+60
//  522     const uint16 constn_xFindJumpLine_Width = 3;//ºáÏò¿çÏß//¹Ì¶¨Öµ
        MOVS     R4,#+3
//  523     const uint8  constn_DeadLine_BeWith = 3;
        MOVS     R3,#+3
        STRB     R3,[SP, #+9]
//  524     //========================================================================//
//  525     //
//  526     /*
//  527     typedef
//  528     struct
//  529     {
//  530         uint8 y_start;
//  531         uint8 
//  532     }s_BlackBarFindSecond;
//  533     s_BlackBarFindSecond BlackBarFindSecond;
//  534     */
//  535     struct ___vaild_heightInterval//¸ß¶ÈµÄ×î¼ÑÓÐÐ§ÇøÓò
//  536     {
//  537 	uint8 n_lastEnd_Y;// = m_height;//×îÖÕµÄYÊýÖµ => ¿ÉÒÔÓÉ¾ø¶Ô¿í¶È¶¨ => µ«¿ÉÒÔÓÉbreakÌø³öÑ­»·½áÊø
//  538 	uint8 n_firstStart_Y;// = 0;//³õÊ¼Öµ
//  539     }vaild_heightInterval;
//  540     vaild_heightInterval.n_firstStart_Y = 0;
        MOVS     R3,#+0
        STRB     R3,[SP, #+53]
//  541     vaild_heightInterval.n_lastEnd_Y = constNum_Line_MaxCounter;//
        MOVS     R3,R1
        STRB     R3,[SP, #+52]
//  542     
//  543     typedef 
//  544     struct//Í¼Ïñ¾ø¶ÔÊý¾Ý¿ò¼Ü
//  545     {
//  546 	float f_width_ratio[2];//¿í¶È±ä»¯ÂÊ
//  547 	float f_depth_ratio[5];//ÏòÇ°µÈÁ¿¿í¶È¶ÔÓ¦µÄ³¤¶ÈÐÅÏ¢=>³ýÒÔ15¼´µ±Ç°µÄ×ÝÏòÇé¿ö
//  548     }s_Frame_Trk;
//  549     s_Frame_Trk Frame_Trk;
//  550     do//¿ò¼Ü¸³Öµ//ÈÏ¶¨30Îª±ê×¼¿ò¼Ü
//  551     {
//  552 	float a = m_Control.image_ratio[0];//float b = m_Control.image_ratio[1];//float c = m_Control.image_ratio[2];
        LDR.W    R3,??v_ImageCut_0
        VLDR     S0,[R3, #+68]
//  553 	float e = m_Control.image_ratio[4];//float d = m_Control.image_ratio[3];
        LDR.W    R3,??v_ImageCut_0
        VLDR     S1,[R3, #+84]
//  554 	float f = m_Control.image_ratio[5];//float g = m_Control.image_ratio[6];
        LDR.W    R3,??v_ImageCut_0
        VLDR     S2,[R3, #+88]
//  555 	float h = m_Control.image_ratio[7];
        LDR.W    R3,??v_ImageCut_0
        VLDR     S3,[R3, #+96]
//  556 	Frame_Trk.f_width_ratio[1] = 30.f * h / a;//float f_width_ratio[2];//x = (30*h/a)*y + 30/a//¾ø¶Ô¿í¶ÈÏµÊý
        VMOV.F32 S4,#30.0
        VMUL.F32 S4,S3,S4
        VDIV.F32 S4,S4,S0
        VSTR     S4,[SP, #+64]
//  557 	Frame_Trk.f_width_ratio[0] = 30.f / a;
        VMOV.F32 S4,#30.0
        VDIV.F32 S0,S4,S0
        VSTR     S0,[SP, #+60]
//  558 
//  559 	Frame_Trk.f_depth_ratio[0] = -30.f * h * h;//y*y
        VMOV.F32 S0,#-30.0
        VMUL.F32 S0,S3,S0
        VMUL.F32 S0,S0,S3
        VSTR     S0,[SP, #+68]
//  560 	Frame_Trk.f_depth_ratio[1] = -60.f * h;//y
        VLDR.W   S0,??v_ImageCut_1  ;; 0xc2700000
        VMUL.F32 S0,S3,S0
        VSTR     S0,[SP, #+72]
//  561 	Frame_Trk.f_depth_ratio[2] = -30.f;//1
        LDR.W    R3,??v_ImageCut_0+0x4  ;; 0xc1f00000
        STR      R3,[SP, #+76]
//  562 
//  563 	Frame_Trk.f_depth_ratio[3] = 30.f * h * h;//y
        VMOV.F32 S0,#30.0
        VMUL.F32 S0,S3,S0
        VMUL.F32 S0,S0,S3
        VSTR     S0,[SP, #+80]
//  564 	Frame_Trk.f_depth_ratio[4] = (30.f + f)*h - e;//1
        VMOV.F32 S0,#30.0
        VADD.F32 S0,S2,S0
        VMUL.F32 S0,S0,S3
        VSUB.F32 S0,S0,S1
        VSTR     S0,[SP, #+84]
//  565 
//  566 #define GetYaxis(Y)                     ((m_Control.image_ratio[4]*Y+m_Control.image_ratio[5])/(m_Control.image_ratio[7]*Y+1))
//  567 
//  568 #define GetWidthFromY(Y)                (Frame_Trk.f_depth_ratio[0]*y*y+\ 
//  569                                          Frame_Trk.f_depth_ratio[1]*y+\ 
//  570                                          Frame_Trk.f_depth_ratio[2])
//  571         
//  572 #define Get45cmLengthFromY(y)        (Frame_Trk.f_depth_ratio[0]*y*y\ 
//  573                                      +Frame_Trk.f_depth_ratio[1]*y\ 
//  574                                      +Frame_Trk.f_depth_ratio[2])/\ 
//  575                                      (Frame_Trk.f_depth_ratio[3]*y\ 
//  576                                      +Frame_Trk.f_depth_ratio[4])
//  577         
//  578     } while (0);
//  579     //========================================================================//
//  580     uint16 perLine_vaild_width = constNum_X_MaxCounter;// - 1;//185-1//Ò»ÐÐÓÐÐ§¿í¶È => 184
        LDRH     R3,[SP, #+22]
        STRH     R3,[SP, #+44]
//  581     //========================================================================//
//  582     //sint16 lostDouble_UpestHeight = 0;//¶ªË«±ß¼ÆÊý×î´óÖµ
//  583     uint8 lostDouble_TimerCounter = 0;//Ë«±ß¼ÆÊ±Æ÷
        MOVS     R3,#+0
        STRB     R3,[SP, #+8]
//  584     uint8 lostDouble_UpestHeight = 255;
        MOVS     R3,#+255
        STRB     R3,[SP, #+11]
//  585     //uint8 lostDouble_AllCounter = 0;
//  586     
//  587     typedef
//  588     enum
//  589     {
//  590         LDb_WaitingDrawing,
//  591         LDb_None,
//  592     }u_LostDoubleFlag;
//  593     typedef
//  594     struct
//  595     {
//  596         u_LostDoubleFlag Flag;// = 0;
//  597         uint8 Gaia_X;// = 0;
//  598         uint8 Gaia_Y;// = 0;
//  599     }s_LostDouble;//»æÖÆ¶ªÊ§Ë«±ß => ×îÖ÷ÒªÓÃµÄµØ·½ÔÚÊ®×Ö
//  600     s_LostDouble LostDouble;
//  601     LostDouble.Flag = LDb_None;
        MOVS     R3,#+1
        STRB     R3,[SP, #+40]
//  602     LostDouble.Gaia_X = 0;
        MOVS     R3,#+0
        STRB     R3,[SP, #+41]
//  603     LostDouble.Gaia_Y = 0;
        MOVS     R3,#+0
        STRB     R3,[SP, #+42]
//  604     
//  605     /*
//  606     typedef
//  607     struct
//  608     {
//  609         uint8 startLine;
//  610         uint8 LastWidthVar;
//  611         //uint8 LostDoubleTimer;
//  612         uint8 LastWitdh_YaxisVal;
//  613         u_Side TurnSide;
//  614     }s_BlackBarAbout10cm;
//  615     s_BlackBarAbout10cm BlackBarAbout10cm;
//  616     BlackBarAbout10cm.startLine = 255;
//  617     BlackBarAbout10cm.LastWidthVar = 255;
//  618     BlackBarAbout10cm.LastWitdh_YaxisVal = 255;
//  619     */
//  620     //BlackBarAbout10cm.LostDoubleTimer = 0;
//  621 
//  622 
//  623 
//  624     /* //ÒÔÏÂÎª»ù±¾Á÷³Ì
//  625      * ³ÖÐø ÊÇ => ½øÐÐÌØÊâÑ°Ïß
//  626      *      ·ñ => Ñ°ÕÒÊÇ·ñÂú×ãÖ±½ÇÌõ¼þ
//  627      * ------------------------------------------------------------------- *
//  628      *
//  629      */    
//  630     uint16 x_startPos = m_ImageAbstract.LastFrame_CentralPos;//xÖáÆðÊ¼Î»ÖÃ£¬È¡Öµ·¶Î§Îª0 - m_width//¼´ÖÐÏßËùÔÚÎ»ÖÃ
        LDR.W    R3,??v_ImageCut_0+0x8
        LDRB     R6,[R3, #+468]
//  631     sint16 x_startPos_n_add_one = m_ImageAbstract.LastFrame_CentralPos;//x(n+1)
        LDR.W    R3,??v_ImageCut_0+0x8
        LDRB     R5,[R3, #+468]
//  632     //========================================================================//
//  633     //========================================================================//
//  634     //ÓÉÌø±ä¾ö¶¨µÄ±ßÑØÎ»ÖÃ
//  635     typedef
//  636     struct//±ßÑØÊý¾ÝÇé¿ö
//  637     {
//  638 	uint8 n_right_end;//Right½ØÖ¹ÏÂ½µÑØ
//  639 	uint8 n_left_end;//Left½ØÖ¹ÏÂ½µÑØ
//  640 	uint8 n_right_banDone;//Right²à³öÏÖÉÏÉýÑØ
//  641 	uint8 n_left_banDone;//Left²à³öÏÖÉÏÉýÑØ
//  642         uint8 n_left_banDone_firstLine;
//  643         uint8 n_right_banDone_firstLine;
//  644     }s_number_Trk;//ÈüµÀÊý¾ÝÐÅÏ¢
//  645     s_number_Trk number_Trk;//ÊýÖµÐÅºÅ//ÒÔÏÂÒ»ÐÐÎª³õÊ¼»¯
//  646     number_Trk.n_left_banDone = 0;number_Trk.n_right_banDone = 0;number_Trk.n_left_end = 0;number_Trk.n_right_end = 0;
        MOVS     R3,#+0
        STRB     R3,[SP, #+27]
        MOVS     R3,#+0
        STRB     R3,[SP, #+26]
        MOVS     R3,#+0
        STRB     R3,[SP, #+25]
        MOVS     R3,#+0
        STRB     R3,[SP, #+24]
//  647     //========================================================================//
//  648 
//  649     typedef
//  650     struct
//  651     {
//  652         uint8 Last_BlackLine_suddenlyHappen;//×î½üÒ»´ÎºÚÉ«ÐÐ¼ÆÊý
//  653         /*uint8 LastBlackLine_add_15cm_Line;//15cm¿ªÍâµÄXµÄÎ»ÖÃ
//  654         float LastBlackLine_add_15cm_LeftRow;//15cm¿ªÍâµÄYµÄÎ»ÖÃ
//  655         float LastBlackLine_add_15cm_RightRow;//15cm¿ªÍâµÄYµÄÎ»ÖÃ*/
//  656         uint8 LastBlackLine_RowSideWhich;
//  657         uint8 AllBeforeisBlack;
//  658         uint8 hasHappened_Once;
//  659     }s_LastSide;//×îºó±ß
//  660     s_LastSide LastSide;//×îºóÒ»±ß
//  661     //LastSide.now_color = color_NaN;
//  662     LastSide.Last_BlackLine_suddenlyHappen = 255;//×îºóÒ»´ÎºÚ
        MOVS     R3,#+255
        STRB     R3,[SP, #+48]
//  663     LastSide.AllBeforeisBlack = 0;
        MOVS     R3,#+0
        STRB     R3,[SP, #+50]
//  664     LastSide.hasHappened_Once = 0;
        MOVS     R3,#+0
        STRB     R3,[SP, #+51]
//  665     //========================================================================//
//  666     typedef
//  667     struct
//  668     {
//  669 	uint8 leftSide_isDown;//ÊÇ·ñÓÐÐ§±ßÑØ
//  670 	uint8 rightSide_isDown;
//  671         
//  672 	uint8 leftSide_isUp;//ÉÏÉýÑØÊÇ·ñ´æÔÚ
//  673 	uint8 rightSide_isUp;
//  674     }s_LogicCondition;//Âß¼­ÐÅºÅ½á¹¹Ìå
//  675     s_LogicCondition LogicCondition;//Âß¼­ÐÅÏ¢´æÔÚ//ÒÔÏÂÒ»ÐÐÎªÂß¼­ÅÐ¶¨
//  676     LogicCondition.leftSide_isDown = 0;LogicCondition.leftSide_isUp = 0;LogicCondition.rightSide_isDown = 0;LogicCondition.rightSide_isUp = 0;
        MOVS     R3,#+0
        STRB     R3,[SP, #+16]
        MOVS     R3,#+0
        STRB     R3,[SP, #+18]
        MOVS     R3,#+0
        STRB     R3,[SP, #+17]
        MOVS     R3,#+0
        STRB     R3,[SP, #+19]
//  677 
//  678 	//ÒÔÏÂÎªÐÅÏ¢Öµ
//  679     uint16 perLine_JumpNumVaild = 0;//Ìø±äãÐÖµ//Ò»ÐÐ´óÓÚ´ËÊýÖµÊ±£¬Ìø±ä¿ÉÒÔÈÏ¶¨ÎªºÏÀí
        MOVS     R10,#+0
//  680     uint16 perLine_JumpNumNonVaild = 0;//Ìø±äÎÞÐ§Öµ//Ò»ÐÐÐ¡ÓÚ´ËÊýÖµÊ±£¬Ìø±äÈÏÎªÎª²»ºÏÀí
        MOVS     R9,#+0
//  681 	//ÀíÂÛÀ´Ëµ£¬ÈüµÀÔÚ·¶Î§ÄÚÔ½¶à£¬´ËÊýÖµÔ½ºÏÀí¡£
//  682 	//¶øµÚÒ»´Î»ñÈ¡Ìø±äÈÔÊÇ²»¿ÉÖªÇéÐÎ
//  683     typedef
//  684     struct
//  685     {
//  686         u_Side side;
//  687         uint8 y_start;
//  688         uint8 y_end;
//  689         uint8 isHappened;
//  690     }
//  691     s_TurningBeacauseVeryLittle;
//  692     s_TurningBeacauseVeryLittle TurningBeacauseVeryLittle;
//  693     TurningBeacauseVeryLittle.isHappened = 0;
        MOVS     R3,#+0
        STRB     R3,[SP, #+39]
//  694 	//=>¹ÊÓÐÒ»ÖÖË¼Â·£¬»ñÈ¡ËùÓÐºÏÀíÌø±äÊýÖµ£¬È»ºó½øÐÐÁ¬ÐøÐÔÅÐ¶¨
//  695 	//ÈôÁ¬ÐøÐÔÅÐ¶¨ºÏÀí£¬ÔòÈÏ¶¨ÎªºÏÊÊµÄµã»ò±ß
//  696 	//¾ßÌå²Ù×÷Ê±£¬¿ÉÒÔÔÝ´æÁíÒ»Êý×é£¬È»ºó½«ÇéÐÎÌîÈë
//  697 
//  698 	//===================================================//
//  699 	//½øÈë´¦Àí²¿·Ö
//  700 	//Ç°²¿´¦Àíº¯Êý
//  701     //=>ÓÐÐ§¸ß¶ÈÇø¼äÉè¶¨
//  702     vaild_heightInterval.n_firstStart_Y = 0;//
        MOVS     R3,#+0
        STRB     R3,[SP, #+53]
//  703     vaild_heightInterval.n_lastEnd_Y = constNum_Line_MaxCounter;//ÐÐÊý¼ÆÊ±
        MOVS     R3,R1
        STRB     R3,[SP, #+52]
//  704     //
//  705     do//Ê×Î²È·ÈÏ//vaild_heightInterval
//  706     {
//  707 	for (uint16 loop = 0; loop < constNum_Line_MaxCounter; loop++)//±éÀúÈ«²¿¿í¶È
        MOVS     R3,#+0
        B.N      ??v_ImageCut_2
??v_ImageCut_3:
        ADDS     R3,R3,#+1
??v_ImageCut_2:
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R3,R1
        BCS.N    ??v_ImageCut_4
//  708 	{
//  709             float TrkAll_width = Frame_Trk.f_width_ratio[1] * loop + Frame_Trk.f_width_ratio[0];
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        VMOV     S0,R3
        VCVT.F32.U32 S1,S0
        VLDR     S2,[SP, #+64]
        VLDR     S0,[SP, #+60]
        VMLA.F32 S0,S1,S2
//  710             float Trk_onePoint_width = TrkAll_width / 15.f;
        VMOV.F32 S1,#15.0
        VDIV.F32 S1,S0,S1
//  711             if (TrkAll_width >= constNum_X_MaxCounter)//»ñÈ¡×î½üµã
        LDRH     R0,[SP, #+22]
        VMOV     S2,R0
        VCVT.F32.U32 S2,S2
        VCMP.F32 S0,S2
        FMSTAT   
        BLT.N    ??v_ImageCut_5
//  712             {
//  713                 vaild_heightInterval.n_firstStart_Y = loop;//»ñÈ¡×î½ü
        MOVS     R0,R3
        STRB     R0,[SP, #+53]
//  714             }
//  715             if (Trk_onePoint_width <= 1)
??v_ImageCut_5:
        VLDR.W   S0,??v_ImageCut_6  ;; 0x3f800001
        VCMP.F32 S1,S0
        FMSTAT   
        BPL.N    ??v_ImageCut_3
//  716             {
//  717 		vaild_heightInterval.n_lastEnd_Y = loop;//»ñÈ¡×îÔ¶
        STRB     R3,[SP, #+52]
//  718 		break;//½áÊø
//  719             }
//  720 	}
//  721     } while (0);
//  722     m_ImageAbstract.Start_Y_Position = vaild_heightInterval.n_firstStart_Y;
??v_ImageCut_4:
        LDR.W    R0,??v_ImageCut_0+0x8
        LDRB     R1,[SP, #+53]
        STRB     R1,[R0, #+464]
//  723     //========================================================================//
//  724     //========================================================================//
//  725     //========================================================================//
//  726     x_startPos = m_ImageAbstract.LastFrame_CentralPos;//½«ÉÏ´ÎÖÐÖµ¼Ì³ÐÓÚ±¾´Î => ÉÏÒ»³¡µÄÖÐÖµ¼Ì³Ð =>ÕâÀï¸úµ¥ÏßÓÐ¹ØÏµ£¬ÐèÒª½«µ¥Ïß½«´ËñîºÏÉ¾³ý
        LDR.W    R0,??v_ImageCut_0+0x8
        LDRB     R6,[R0, #+468]
//  727     //========================================================================//
//  728     //========================================================================//
//  729     //========================================================================//
//  730 //	x_startPos = m_width / 2;//³õÊ¼¸³Öµ
//  731     sint16 process_find_timer = -1;//½ø³ÌËÑÑ°Ê±¼ä
        MOVS     R8,#-1
//  732     //=====================================================================================================//
//  733     //½øÈëÅÐ¶Ï»·½Ú
//  734     // NumberÈ«²¿³õÊ¼»¯
//  735     uint8 lr_n_cut_1_isExist = 3;//×óÓÒÊÇ·ñ´æÔÚ±êÖ¾3=>²»´æÔÚ£¬0±ß1±ß2±ß
        MOVS     R0,#+3
        STRB     R0,[SP, #+10]
//  736     
//  737     m_Control.need_TurnLeft = 0;
        LDR.W    R0,??v_ImageCut_0
        MOVS     R1,#+0
        STRB     R1,[R0, #+15]
//  738     m_Control.need_TurnRight = 0;
        LDR.W    R0,??v_ImageCut_0
        MOVS     R1,#+0
        STRB     R1,[R0, #+16]
//  739     m_Control.need_Hold = 0;
        LDR.W    R0,??v_ImageCut_0
        MOVS     R1,#+0
        STRB     R1,[R0, #+17]
//  740     number_Trk.n_left_banDone_firstLine = 255;
        MOVS     R0,#+255
        STRB     R0,[SP, #+28]
//  741     number_Trk.n_right_banDone_firstLine = 255;
        MOVS     R0,#+255
        STRB     R0,[SP, #+29]
//  742     //=====================================================================================================//
//  743     uint16 LastJumpVaildNumber = 0;
        MOVS     R0,#+0
        STRH     R0,[SP, #+58]
//  744     //uint8 isNeed2FinderRight = 0;
//  745     //uint8 isShould2FinderLeft = 0;
//  746     
//  747     u_Side TrkSide[60];
//  748     //
//  749     uint8 end_y_ctr = vaild_heightInterval.n_lastEnd_Y;//ÌáÇ°¸³Öµ¸ø×îÖÕ¿ÉÄÜÇé¿ö
        LDRB     R11,[SP, #+52]
//  750     for (uint8 y_ctr = vaild_heightInterval.n_firstStart_Y;
        LDRB     R7,[SP, #+53]
        B.N      ??v_ImageCut_7
        Nop      
        DATA
??v_ImageCut_1:
        DC32     0xc2700000
        THUMB
//  751                 y_ctr < vaild_heightInterval.n_lastEnd_Y;
//  752                 y_ctr++)//ÊýÖµÑ­»·ÅÐ¶¨=>»ù±¾×îÔç»·½ÚÎª185µãÒÔÄÚ£¬ÇÒ×îÍâ´¦µÄ¿í¶ÈÓ¦Ð¡ÓÚ constn_xFindJumpLine_Width
//  753     {
//  754         //m_ImageAbstract.Central[y_ctr] = x_startPos_n_add_one;
//  755         number_Trk.n_left_end = 255;
//  756         number_Trk.n_right_end = 255;
//  757         number_Trk.n_left_banDone = 255;
//  758         number_Trk.n_right_banDone = 255;
//  759         //³ÌÐò½øÐÐÊ±¼ä=============================================//
//  760 	process_find_timer++;//ËÑÑ°´ÎÊýÅÐ¶¨=>·ÀÖ¹ÒòÎª´úÂë´ÎÐòµ¼ÖÂµÄÊ§¿Ø
//  761         //
//  762 	perLine_vaild_width = (uint16)(Frame_Trk.f_width_ratio[1] * (float)y_ctr + Frame_Trk.f_width_ratio[0]);//ÓÐÐ§ÐÐµÄÈüµÀÓÐÐ§¿í
//  763 	m_ImageAbstract.width[y_ctr] = perLine_vaild_width;
//  764         
//  765         //Ä¿±ê»áÒ»Ö±Ñ°ÕÒµ½ÏÂ½µÑØ»òÕßÑ°ÕÒÊ§°Ü
//  766         
//  767         uint8 isMaybefoundShutDown = 0;
//  768         //====================================================================//
//  769         if(process_find_timer > 0)//¿Ï¶¨ÓëÉÏÒ»³¡µÄÐÅÏ¢×öÕç±ð
//  770         {
//  771             sint16 n_jumpVar = m_ImageBeholder_Data[y_ctr][x_startPos] - 
//  772                                m_ImageBeholder_Data[y_ctr - 1][x_startPos];
//  773             sint16 absn_jumpVar = __ABS(n_jumpVar);
//  774             if ((absn_jumpVar > perLine_JumpNumVaild)&&(absn_jumpVar > perLine_JumpNumNonVaild))
//  775             {
//  776                 if(n_jumpVar < 0)
//  777                 {
//  778                     LastSide.Last_BlackLine_suddenlyHappen = y_ctr;//±¾´ÎÊÇ
//  779                     LastSide.hasHappened_Once = 1;
//  780                     isMaybefoundShutDown = 1;
//  781                     //break;ÕâÀïÕÒµ½ÁËÒ»¸öºÚµã
//  782                 }
//  783             }
//  784             if(process_find_timer > 1)
//  785             {
//  786                 n_jumpVar = m_ImageBeholder_Data[y_ctr][x_startPos] - m_ImageBeholder_Data[y_ctr - 2][x_startPos];
//  787                 absn_jumpVar = __ABS(n_jumpVar);
//  788                 if (absn_jumpVar > LastJumpVaildNumber)
//  789                 {
//  790                     if(n_jumpVar < 0)
//  791                     {
//  792                         LastSide.Last_BlackLine_suddenlyHappen = y_ctr;//±¾´ÎÊÇ
//  793                         LastSide.hasHappened_Once = 1;
//  794                         isMaybefoundShutDown = 1;
//  795                         //break;ÕâÀïÕÒµ½ÁËÒ»¸öºÚµã
//  796                     }
//  797                 }
//  798             }
//  799             LastJumpVaildNumber = (perLine_JumpNumVaild > perLine_JumpNumNonVaild)?perLine_JumpNumVaild:perLine_JumpNumNonVaild;
//  800         }//ÕâÀïÅÐ¶ÏµÄÊÇ±¾´ÎÖÐÐÄµãµÄÑÕÉ«
//  801         
//  802         
//  803         
//  804         do//»ñÈ¡Ã¿ÐÐµÄÐÅÏ¢-----------------------------------------------------//
//  805 	{//Õâ¶Î´úÂëÒÑ¾­¿ÉÒÔÕýÈ·ÔËÐÐ£¬¹ÊÉ¾È¥Ò»Ð©ÐÐ¼ô¶ÌÐÐÊý¡£Õâ¶Î´úÂëµÄ±¾ÒâÊÇµÃ³öºÏÊÊµÄÌø±äÊýÖµ¡£
//  806             uint8 perline_aver_pixelNumber = 0;uint8 perline_jump_max2min = 0;uint32 AllPixel_Counter = 0;
//  807             uint8 maxPixel = 0;uint8 minPixel = 255;uint8 BookLineNumber = 0;//¼ÇÂ¼µÄÐÐÊý
//  808             for (uint16 loop = 0; loop < constNum_X_MaxCounter; loop++)//Ñ­»·¿ªÊ¼
//  809             {
//  810                 if(0 != m_ImageBeholder_Data[y_ctr][loop])
//  811                 {
//  812                     BookLineNumber ++;AllPixel_Counter += m_ImageBeholder_Data[y_ctr][loop];
//  813                     if (m_ImageBeholder_Data[y_ctr][loop] > maxPixel){ maxPixel = m_ImageBeholder_Data[y_ctr][loop]; }
//  814                     if (m_ImageBeholder_Data[y_ctr][loop] < minPixel){ minPixel = m_ImageBeholder_Data[y_ctr][loop]; }
//  815                 }
//  816             }//¼ÆÊýÑ­»·½áÊø
//  817             perline_aver_pixelNumber = AllPixel_Counter / BookLineNumber;//¾ùÖµ
//  818             perline_jump_max2min = maxPixel - minPixel;//²îÖµ
//  819             perLine_JumpNumVaild = (uint8)((float)perline_jump_max2min * 0.4f);//Á½¸öÌø±äÖµ
//  820             perLine_JumpNumNonVaild = (uint8)((float)perline_aver_pixelNumber * 0.4f);//Á½¸öÌø±äÖµ
//  821 	} while (0);//ÌØÕ÷ÌáÈ¡Íê±Ï---------------------------------------------//
//  822         /*Èç¹ûÊÇµÚÒ»´ÎÅÐ¶¨£¬¿ÉÒÔ½øÐÐÒ»´Î¹ØÓÚÕâ¸öµã¾¿¾¹ÊÇºÚµã»¹ÊÇ°×µãµÄÅÐ¶Ï*/
//  823         do//Ñ°ÕÒ×óÓÒÏß
//  824 	{
//  825             //======¿í¶ÈÆ¥Åä==================================================//
//  826             uint16 n_find_half_mutlwidth = (uint16)((perLine_vaild_width * 1.414f * 1.25f)/2.f);//°ë¾ø¶Ô¿í¶È³ËÒÔºÏÀíÆ«ÖÃ=>·ÖÅä¸øÀíÂÛÊýÖµ
//  827             sint16 x_rightLimitNum = x_startPos + n_find_half_mutlwidth;//ÓÒ²à¾àÀë
//  828             sint16 x_leftLimitNum = x_startPos - n_find_half_mutlwidth;//×ó²à¾àÀë//ÀíÂÛºÏÀíÏÞÖÆ
//  829 			
//  830             uint16 tempx_rightLimitNum = x_rightLimitNum;
//  831             if (x_rightLimitNum > constNum_X_MaxCounter - constn_xFindJumpLine_Width)
//  832             { tempx_rightLimitNum = constNum_X_MaxCounter - constn_xFindJumpLine_Width; }//·ù¶ÈÏÞÖÆ
//  833 
//  834             uint16 tempx_leftLimitNum = x_leftLimitNum;
//  835             if (x_leftLimitNum < constn_xFindJumpLine_Width){ tempx_leftLimitNum = constn_xFindJumpLine_Width; }//·ù¶ÈÏÞÖÆ
//  836 			
//  837             if(process_find_timer <= constn_DeadLine_BeWith)//3°¡£¡
//  838             {//¸ü¸ÄÇ°ÐÐ
//  839                 tempx_leftLimitNum = constn_xFindJumpLine_Width + constn_xFindJumpLine_Width;
//  840                 tempx_rightLimitNum = constNum_X_MaxCounter - constn_xFindJumpLine_Width - constn_xFindJumpLine_Width;
//  841             }//ÕâÀïµÄ×÷ÓÃÊÇºöÂÔÁËµ±¹ý¶ÈÔÚ×ó»òÓÒµ¼ÖÂµÄÑ­¼£Ê§°Ü
//  842             
//  843             if(1 == TurningBeacauseVeryLittle.isHappened)
//  844             {
//  845                 if(Sid_Left == TurningBeacauseVeryLittle.side)
//  846                 {tempx_rightLimitNum = constNum_X_MaxCounter - constn_xFindJumpLine_Width - constn_xFindJumpLine_Width;}
//  847                 if(Sid_Right == TurningBeacauseVeryLittle.side)
//  848                 {tempx_leftLimitNum = constn_xFindJumpLine_Width + constn_xFindJumpLine_Width;}
//  849             }
//  850             //======ÓÒÏßÊÇ·ñ´æÔÚ==============================================//
//  851             LogicCondition.rightSide_isUp = 0;//ÊÇ·ñ´æÔÚÉÏÉýÑØ
//  852             LogicCondition.rightSide_isDown = 0;//ÊÇ·ñ´æÔÚÓÐÐ§±ßÑØ
//  853             for (sint16 LINE_CTR = x_startPos;
//  854                         LINE_CTR + constn_xFindJumpLine_Width < tempx_rightLimitNum; 
//  855                         LINE_CTR++)//ÏòÓÒÌáÏß
//  856             {
//  857 		sint16 n_jumpVar = m_ImageBeholder_Data[y_ctr][LINE_CTR] - m_ImageBeholder_Data[y_ctr][LINE_CTR + constn_xFindJumpLine_Width];
//  858                 sint16 absn_jumpVar = __ABS(n_jumpVar);
//  859 
//  860 		if ((absn_jumpVar > perLine_JumpNumVaild)
//  861                  && (absn_jumpVar > perLine_JumpNumNonVaild))
//  862                 {
//  863                     if (n_jumpVar > 0)//ÏÂ½µÑØ
//  864                     {
//  865 			number_Trk.n_right_end = LINE_CTR;
//  866 			LogicCondition.rightSide_isDown = 1;
//  867 			break;//Ìø³ö±¾Ñ­»·
//  868                     }
//  869                     else//ÉÏÉýÑØ
//  870                     {
//  871                         number_Trk.n_right_banDone = LINE_CTR;
//  872                         LogicCondition.rightSide_isUp = 1;
//  873                     }
//  874                 }
//  875             }//ÓÒÏßËÑÑ°Íê±Ï
//  876             //======×óÏßÊÇ·ñ´æÔÚ================================================================//
//  877             LogicCondition.leftSide_isUp = 0;
//  878             LogicCondition.leftSide_isDown = 0;
//  879             for (sint16 LINE_CTR = x_startPos; 
//  880                         LINE_CTR - constn_xFindJumpLine_Width >= tempx_leftLimitNum; 
//  881                         LINE_CTR--)
//  882             {
//  883                 sint16 n_jumpVar = m_ImageBeholder_Data[y_ctr][LINE_CTR] - m_ImageBeholder_Data[y_ctr][LINE_CTR - constn_xFindJumpLine_Width];
//  884 		sint16 absn_jumpVar = __ABS(n_jumpVar);
//  885 
//  886 		if ((absn_jumpVar > perLine_JumpNumVaild)
//  887 		 && (absn_jumpVar > perLine_JumpNumNonVaild))
//  888 		{
//  889                     if (n_jumpVar > 0)//ÏÂ½µÑØ
//  890                     {
//  891 			number_Trk.n_left_end = LINE_CTR;
//  892 			LogicCondition.leftSide_isDown = 1;
//  893 			break;//Ìø³ö±¾Ñ­»·
//  894                     }
//  895                     else//¹ãÒå¿í¶È
//  896                     {
//  897 			number_Trk.n_left_banDone = LINE_CTR;
//  898 			LogicCondition.leftSide_isUp = 1;
//  899                     }
//  900                 }
//  901             }//×óÏßËÑÑ°Íê±Ï
//  902         } while (0);//×óÓÒÏßÑ°ÕÒÍê±Ï
//  903         
//  904         if(0 == process_find_timer)//0ËÑÑ°
//  905         {
//  906             number_Trk.n_left_banDone_firstLine = number_Trk.n_left_banDone;
//  907             number_Trk.n_right_banDone_firstLine = number_Trk.n_right_banDone;
//  908         }
//  909         
//  910         //====================================================================//
//  911         //ÒÔÏÂÕâÐ©ÓÃ×÷´¦ÀíÖÕÖ¹Ïß
//  912         
//  913         if(1 == isMaybefoundShutDown)
//  914         {//·¢·¢ÏÖÁËÐèÒª¹Ø±ÕµÄ¶«Î÷
//  915             if(((255!=number_Trk.n_right_banDone)&&(255!=number_Trk.n_left_banDone)
//  916               &&((number_Trk.n_right_banDone-number_Trk.n_left_banDone)<=1.414*(m_ImageAbstract.width[y_ctr]/15.f))))
//  917             { 
//  918                 //ÕâÀïÈÔÐèÒªÈÏ¶¨ÏÂ
//  919                 //isHaveLonlyLineStartCorner = 1;//ÕâÀï
//  920                 HaveLonlyLineStartCornerLastLine = y_ctr;//ÈÏ¶¨ÕâÒ»ÐÐ
//  921                 //LonlyLine_Counter ++;
//  922             }
//  923             else
//  924             {
//  925                 if((process_find_timer>0)/*&&(1 != m_ImageAbstract.RtAngle_isLasting)*/)//¿ÉÒÔÔÚÕâÀïÇ¿ÖÆ¹Ø±ÕRtAngle
//  926                 {//Á½¸öÌØÊâ´¦Àí²»ÒªÔÚÒ»Æð½øÐÐ£¬ËäÈ»ºÜºÃ£¬µ«ºÜ±¯²Ò
//  927                     if((0 == TurningBeacauseVeryLittle.isHappened)&&(Sid_Double == TrkSide[y_ctr-1])
//  928                     &&(__ABS(m_ImageAbstract.Right[y_ctr-1]-m_ImageAbstract.Left[y_ctr-1])<=m_ImageAbstract.width[y_ctr-1]/5))//9cm
//  929                     {//µ±ÈüµÀÇé¿öÎªË«±ß¶¼´æÔÚµÄÊ±ºò£¬²¢ÇÒÉÏÒ»ÌõÏß·Ç³£Ð¡µÄÊ±ºò£¬¾Í¿ÉÒÔÕâÃ´¶ÏÑÔ//ÈçÈô»¹²»ÄÜÍêÈ«ÅÐ¶Ï£¬ÔÙËµ
//  930 //============================================================================//
//  931                         showYcutDown = 'H'; 
//  932                         uint8 central_Pos = m_ImageAbstract.Central[y_ctr-1];
//  933                         uint8 finderStartY = y_ctr - 1;
//  934                         //ÕâÀïËÑÑ°µÄÊÇy_ctr-1£»//Éè¶¨¾àÀëÎª¿í¶ÈµÄÒ»°ë¾Í¿ÉÒÔÁË
//  935                         uint8 right_pluto_Pos = 255;
//  936                         sint16 right_notTry = central_Pos + m_ImageAbstract.width[finderStartY]/2;//22.5cmÕâ¸ö¾ÍºÜ²»Õý³£ÁË£¬Õý³£Çé¿öÏÂÓ¦¸ÃÔÚ10*0.866
//  937                         if(right_notTry > 181-3){right_notTry = 181 - 3;}
//  938                         if(right_notTry < 3+3){right_notTry = 3+3;}
//  939                         for (sint16 LINE_CTR = central_Pos
//  940                             ;LINE_CTR + constn_xFindJumpLine_Width <= right_notTry;LINE_CTR++)//ÏòÓÒÌáÏß
//  941                         {sint16 n_jumpVar = m_ImageBeholder_Data[finderStartY][LINE_CTR]                           //ÕâÀïÊÇ¸öÊµ¼ÊµÄÊý
//  942                                           - m_ImageBeholder_Data[finderStartY][LINE_CTR + constn_xFindJumpLine_Width];
//  943                         sint16 absn_jumpVar = __ABS(n_jumpVar);//»ñÈ¡¾ø¶ÔÖµ
//  944                         if ((absn_jumpVar > perLine_JumpNumVaild) && (absn_jumpVar > perLine_JumpNumNonVaild)
//  945                             && (n_jumpVar < 0)){right_pluto_Pos = LINE_CTR + constn_xFindJumpLine_Width;break;}//Ìø³ö±¾Ñ­»·
//  946                         }//ÓÒÏßËÑÑ°Íê±Ï
//  947                         uint8 left_pluto_Pos = 255;
//  948                         sint16 left_notTry = central_Pos - m_ImageAbstract.width[finderStartY]/2;
//  949                         if(left_notTry > 181-3){right_notTry = 181 - 3;}
//  950                         if(left_notTry < 3+3){right_notTry = 3+3;}
//  951                         for (sint16 LINE_CTR = central_Pos
//  952                             ;LINE_CTR - constn_xFindJumpLine_Width >= left_notTry;LINE_CTR--)
//  953                         {sint16 n_jumpVar = m_ImageBeholder_Data[finderStartY][LINE_CTR]
//  954                                           - m_ImageBeholder_Data[finderStartY][LINE_CTR - constn_xFindJumpLine_Width];
//  955                         sint16 absn_jumpVar = __ABS(n_jumpVar);//»ñÈ¡¾ø¶ÔÖµ
//  956                         if ((absn_jumpVar > perLine_JumpNumVaild) && (absn_jumpVar > perLine_JumpNumNonVaild)
//  957                             && (n_jumpVar < 0)){left_pluto_Pos = LINE_CTR - constn_xFindJumpLine_Width;break;}//=>Ñ°ÕÒµ½ÏÂÒ»¸ö±ßÑØ
//  958                         }//×óÏßËÑÑ°Íê±Ï
//  959                         if((left_pluto_Pos >= m_ImageAbstract.Left[finderStartY])&&(255 != m_ImageAbstract.Left[finderStartY]))
//  960                         {
//  961                             left_pluto_Pos = 255;
//  962                         }
//  963                         if((right_pluto_Pos <= m_ImageAbstract.Right[finderStartY])&&(255 != m_ImageAbstract.Right[finderStartY]))
//  964                         {
//  965                             right_pluto_Pos = 255;
//  966                         }//ÒÔÉÏÕâÀïÊÇÎ¬»¤pluto_Pos
//  967                         //ÒÔÉÏÎ¬»¤pluto_Pos»ñÈ¡Õý³£ÊýÖµ
//  968                         m_ImageTesting.FindLitteWidthTurning_LeftFinder = left_pluto_Pos;
//  969                         m_ImageTesting.FindLitteWidthTurning_RightFinder = right_pluto_Pos;
//  970                         //µ«ÕâÑù»¹ÊÇ´æÔÚÎóÅÐ£¬±ÈÈçËµ×²ÉÏÁËÄ³¸ö½Ç¾ÍÕûÌå³öÎÊÌâÁË
//  971                         //½«2.5¸ÄÎªÁË2£¬µ«ÊÇ»¹ÊÇ´æÔÚÁ½²à¶¼²»ÄÜÕÒµ½±ßÑØµÄÇé¿ö£¬ÕâÊ±ºòÒªÒÀÀµÁíÒ»ÖÖ×ö·¨
//  972                         
//  973                         
//  974                         //ÒÔÉÏÊÇ»ù±¾´úÂë
//  975                         u_Side Dir = Sid_NaN;
//  976                         if(__ABS(left_pluto_Pos - central_Pos)>__ABS(right_pluto_Pos - central_Pos))
//  977                         {central_Pos = right_pluto_Pos;
//  978                         if(255 != central_Pos){Dir = Sid_Right;}}
//  979                         if(__ABS(left_pluto_Pos - central_Pos)<__ABS(right_pluto_Pos - central_Pos))
//  980                         {central_Pos = left_pluto_Pos;
//  981                         if(255 != central_Pos){Dir = Sid_Left;}}//È·¶¨ÖÐÐÄµãÓ¦ÔÚµÄÎ»ÖÃ
//  982                         if(Sid_NaN == Dir)//==============================//
//  983                         {//´Ë´¦Ó¦Ìø³ö
//  984                             Dir = Sid_NaN;
//  985                             sint16 Y_counter_cut_5 = y_ctr-1 - 5;if(Y_counter_cut_5 < 0){Y_counter_cut_5 = 0;}
//  986                             sint16 counter_cutAdd = 0;//²î·Ö¼ÆÊý
//  987                             for(sint16 Y_counter = y_ctr-1;Y_counter > Y_counter_cut_5;Y_counter--)
//  988                             {
//  989                                 counter_cutAdd += (m_ImageAbstract.Central[Y_counter] - m_ImageAbstract.Central[Y_counter-1]);
//  990                             }
//  991                             if(counter_cutAdd < 0){Dir = Sid_Right;}
//  992                             if(counter_cutAdd > 0){Dir = Sid_Left;}
//  993                         }//===================================================//
//  994                         //µ½Ä¿Ç°ÎªÖ¹£¬Ó¦¸ÃÊÇÎÈ¶¨Ê¶±ðÁË
//  995                         
//  996                         
//  997                         //m_ImageTesting.centralPosTurning = central_Pos;
//  998                         m_ImageTesting.TurningSide = Dir;
//  999                         uint8 wirte_Pos[60];
// 1000                         uint8 y_Cut = 255;//y_Cut¼ÇÂ¼
// 1001                         if(Sid_Right == Dir)
// 1002                         {
// 1003                             FindLitteWidthTurning = 2;
// 1004                             showYcutDown = 'J';
// 1005                         }else
// 1006                         if(Sid_Left == Dir)
// 1007                         {
// 1008                             FindLitteWidthTurning = 1;
// 1009                             showYcutDown = 'j';
// 1010                         }
// 1011                         TurningBeacauseVeryLittle.y_end = y_ctr;
// 1012 
// 1013                             TurningBeacauseVeryLittle.side = Dir;
// 1014                             TurningBeacauseVeryLittle.isHappened = 1;
// 1015                             //showYcutDown = 'K';
// 1016                             if(Sid_Left == TurningBeacauseVeryLittle.side)
// 1017                             {
// 1018                                 number_Trk.n_right_end = x_startPos;
// 1019                                 x_startPos = x_startPos - m_ImageAbstract.width[y_ctr]*0.45;
// 1020                                 if(y_ctr > 2)
// 1021                                 {
// 1022                                     m_ImageAbstract.Central[y_ctr-1] = x_startPos;
// 1023                                     m_ImageAbstract.Central[y_ctr-2] = x_startPos;
// 1024                                 }
// 1025                                 LogicCondition.leftSide_isDown = 0;
// 1026                                 LogicCondition.rightSide_isDown = 1;
// 1027                             }
// 1028                             else if(Sid_Right == TurningBeacauseVeryLittle.side)
// 1029                             {
// 1030                                 number_Trk.n_left_end = x_startPos;
// 1031                                 x_startPos = x_startPos + m_ImageAbstract.width[y_ctr]*0.45;
// 1032                                 if(y_ctr > 2)
// 1033                                 {
// 1034                                     m_ImageAbstract.Central[y_ctr-1] = x_startPos;
// 1035                                     m_ImageAbstract.Central[y_ctr-2] = x_startPos;
// 1036                                 }
// 1037                                 LogicCondition.leftSide_isDown = 1;
// 1038                                 LogicCondition.rightSide_isDown = 0;
// 1039                             }
// 1040                             /************************************/
// 1041                             /*m_ImageAbstract.RtAngle_isLasting = 0;*/ //ÕâÀïµÄ»°Èç¹ûÓÐÖ±½Ç¾ÍÖ±½ÓÍË³öÖ±½Ç¡£
// 1042                             /*m_ModeMachine.*//*becauseThisOutOfTheBlackRtAngle = 'K';*/
// 1043                             //ÕâÀïÌí¼Ó
// 1044                             isMaybefoundShutDown = 0;
// 1045                             goto endOfthisIf;
// 1046                     }
// 1047                 }
// 1048                 
// 1049                 end_y_ctr = LastSide.Last_BlackLine_suddenlyHappen;//¿ØÖÆ±¾´Î
// 1050                 break;
// 1051             }
// 1052             isMaybefoundShutDown = 0;
// 1053         }/*(1 == isMaybefoundShutDown)*/
// 1054 endOfthisIf:
// 1055         //====================================================================//
// 1056         //ÐÅÏ¢×ÛºÏÓë»úÆ÷Ñ§Ï°Ð§¹ûËùÔÚÇøÓò
// 1057         m_ImageAbstract.Left_UpBlack2White[y_ctr] = 255;
// 1058         m_ImageAbstract.Right_UpBlack2White[y_ctr] = 255;
// 1059 	if(2 == LogicCondition.leftSide_isDown + LogicCondition.rightSide_isDown)
// 1060 	{//Ë«±ß¶¼´æÔÚ£¬ÓÐÊ±ºòÕâÊÇ×îÖØÒªµÄ´úÂë
// 1061             TrkSide[y_ctr] = Sid_Double;
// 1062             lostDouble_TimerCounter = 0;//¶ªÏß¼Ä´æÆ÷Çå¿Õ
// 1063             x_startPos_n_add_one = (number_Trk.n_left_end + number_Trk.n_right_end) / 2;//»ñÈ¡ÖÐÐÄÖµÎ»ÖÃ
// 1064             /*
// 1065             if(m_ImageAbstract.Right[y_ctr] - m_ImageAbstract.Left[y_ctr] >= 1.5*m_ImageAbstract.width[y_ctr])
// 1066             {
// 1067                 mayBeRampHappened = 1;
// 1068             }
// 1069             */
// 1070             lr_n_cut_1_isExist = 2;//
// 1071 	}
// 1072 	else//½øÐÐ×óÓÒÏß¶Ï¶¨
// 1073 	{
// 1074             if ((1 == LogicCondition.leftSide_isDown) || (1 == LogicCondition.rightSide_isDown))
// 1075             {
// 1076                 lostDouble_TimerCounter = 0;//¶ªÏß¼Ä´æÆ÷Çå¿Õ
// 1077 		if (1 == LogicCondition.leftSide_isDown)//×ó±ß½çÓÐÐ§
// 1078 		{
// 1079                     TrkSide[y_ctr] = Sid_Left;
// 1080                     x_startPos_n_add_one = (sint16)(number_Trk.n_left_end + perLine_vaild_width*0.45f);//Ïàµ±ÓÚ²¹±ß
// 1081                     if((x_startPos_n_add_one < x_startPos)&&(process_find_timer > 2))//±¾´ÎÊýÖµÔÚÉÏ´ÎÊýÖµµÄ×ó±ß
// 1082                     {
// 1083                         x_startPos_n_add_one = m_ImageAbstract.Central[y_ctr-1]//Â·¾¶µÄPD×÷ÓÃ
// 1084                                             + (m_ImageAbstract.Central[y_ctr-2]-m_ImageAbstract.Central[y_ctr-3]);
// 1085                     }
// 1086                     if((process_find_timer < constn_DeadLine_BeWith)&&(process_find_timer > 0))
// 1087                     {
// 1088                         if(x_startPos_n_add_one < m_ImageAbstract.Central[y_ctr-1]){x_startPos_n_add_one = m_ImageAbstract.Central[y_ctr-1];}
// 1089                     }
// 1090                 }
// 1091                 else//ÓÒ±ß½çÓÐÐ§
// 1092 		{
// 1093                     TrkSide[y_ctr] = Sid_Right;
// 1094                     x_startPos_n_add_one = (sint16)(number_Trk.n_right_end - perLine_vaild_width*0.45f);//Ïàµ±ÓÚ²¹±ß
// 1095                     if((x_startPos_n_add_one > x_startPos)&&(process_find_timer > 2))//±¾´ÎÊýÖµÔÚÉÏ´ÎÊýÖµµÄÓÒ±ß
// 1096                     {// 0 1 2 (3)
// 1097                         x_startPos_n_add_one = m_ImageAbstract.Central[y_ctr-1] 
// 1098                                             + (m_ImageAbstract.Central[y_ctr-2]-m_ImageAbstract.Central[y_ctr-3]);
// 1099                     }
// 1100                     if((process_find_timer < constn_DeadLine_BeWith)&&(process_find_timer > 0))
// 1101                     {
// 1102                         if(x_startPos_n_add_one > m_ImageAbstract.Central[y_ctr-1]){x_startPos_n_add_one = m_ImageAbstract.Central[y_ctr-1];}
// 1103                     }
// 1104                 }//Ñ°Ïß½áÊø
// 1105                 if(2 == lr_n_cut_1_isExist)
// 1106                 {
// 1107                     if(process_find_timer > 2)//ÎªÁË¹ÕÍä
// 1108                     {
// 1109                         m_ImageAbstract.Central[y_ctr - 1] = x_startPos_n_add_one;//¸³Öµ¸øÉÏ´Î
// 1110                         m_ImageAbstract.Central[y_ctr - 2] = x_startPos_n_add_one;//¸³Öµ¸øÉÏÉÏ´Î
// 1111                     }
// 1112                 }
// 1113                 lr_n_cut_1_isExist = 1;//´æÔÚÒ»Ìõ±ß                
// 1114             }
// 1115             if (((0 == LogicCondition.leftSide_isDown) && (0 == LogicCondition.rightSide_isDown))
// 1116             && (!(((255!=number_Trk.n_right_banDone)&&(255!=number_Trk.n_left_banDone)
// 1117         &&((number_Trk.n_right_banDone-number_Trk.n_left_banDone)<=1.414*(m_ImageAbstract.width[y_ctr]/15.f))))))
// 1118             {
// 1119                 TrkSide[y_ctr] = Sid_None;
// 1120                                 
// 1121                 if((process_find_timer < constn_DeadLine_BeWith)&&(lostDouble_TimerCounter == process_find_timer))
// 1122                 {//È«°×È«ºÚºÜ¶Ì£¬²¢ÇÒ¸úÒÔÇ°ºÜ½ü¡£
// 1123                 //³öÏÖÇé¿ö°üÀ¨½ü¶ËÊ®×ÖÈ«°×¡¢¼±Íä¶ªÏß¡¢¼«¶È¿¿½üµ¥ÏßÄÚ²à·¶Î§
// 1124                     x_startPos_n_add_one = m_ImageAbstract.LastFrame_CentralPos;//
// 1125                     //ÈÏ¶¨ÉÏ´Î´ËÊ±·¶Î§¼´±¾¿Ì·¶Î§£¬Î¬»¤ºÃ½ü´¦ÈýµãµÄÈ«²¿Çé¿ö
// 1126                 }
// 1127                 else//ÆäÓàÇé¿öÊ¹ÓÃÕâÒ»·½·¨½â¾ö
// 1128                 {
// 1129                     x_startPos_n_add_one = x_startPos;//½«ÉÏ´ÎÊýÖµ¸øµ±Ç°ÊýÖµ//¿ÉÒÔÓÃ×îÐ¡¶þ³Ë£¬µ«ÔËËã¸´ÔÓ
// 1130                 }
// 1131                     
// 1132                 if(process_find_timer > 3)//Ç°À¡²¹³¥=>ÏÂÈý´Î²Å»áÉúÐ§
// 1133                 {
// 1134                     x_startPos_n_add_one = m_ImageAbstract.Central[y_ctr-1] + 
// 1135                                          ((m_ImageAbstract.Central[y_ctr-1] - m_ImageAbstract.Central[y_ctr-2])
// 1136                                          +(m_ImageAbstract.Central[y_ctr-2] - m_ImageAbstract.Central[y_ctr-3]))/2;
// 1137                 }
// 1138                 
// 1139                 lostDouble_TimerCounter++;//¶ªÏß¼ÆÊý
// 1140                 
// 1141                 if(1 == lostDouble_TimerCounter)//¶ªÊ§´ÎÊý¼ÆÊý
// 1142                 {//µÚÒ»´ÎË«±ß¶¼¶ªÊ§¼ÇÂ¼ÏÂ´Ë¿ÌÈôÊÇÊ®×ÖµÄ»°£¬ÏßÓ¦¸Ã×ß¶àÔ¶
// 1143                     float son = Frame_Trk.f_depth_ratio[0] * y_ctr*y_ctr + Frame_Trk.f_depth_ratio[1] * y_ctr + Frame_Trk.f_depth_ratio[2];
// 1144                     float mother = Frame_Trk.f_depth_ratio[3] * y_ctr + Frame_Trk.f_depth_ratio[4];
// 1145                     lostDouble_UpestHeight = (sint16)(son / mother);//ÏòÇ°ÐÐ×ß×î´óÖµ
// 1146                     //ÕâÀï¼ÇÂ¼³õÖµ
// 1147                     LostDouble.Gaia_Y = y_ctr;
// 1148                 } 
// 1149                 if(lostDouble_TimerCounter > lostDouble_UpestHeight/2)//¶ªÏß´ÎÊý´óÓÚÒ»°ëµÄ»°
// 1150                 {
// 1151                     LostDouble.Flag = LDb_WaitingDrawing;
// 1152                     //ÕâÀïµÈ´ýÖÕÖµ
// 1153                 }
// 1154                 
// 1155                 
// 1156                 lr_n_cut_1_isExist = 0;//Õâ¸ö±ØÐëÔÚ´Ë´úÂëµÄÄ©Î²
// 1157             }//´¦ÀíÎÞ±ßÏßÇé¿öµÄ´úÂë
// 1158 	}//µ½Ä¿Ç°ÎªÖ¹£¬ÏÂ½µÑØµÄÐÅÏ¢Ê¶±ðÈ«²¿Íê±Ï
// 1159         if(((255!=number_Trk.n_right_banDone)&&(255!=number_Trk.n_left_banDone)
// 1160         &&((number_Trk.n_right_banDone-number_Trk.n_left_banDone)<=1.414*(m_ImageAbstract.width[y_ctr]/15.f))))
// 1161         {
// 1162             lostDouble_TimerCounter = 0;//¶ªÏß¼Ä´æÆ÷Çå¿Õ
// 1163             
// 1164             TrkSide[y_ctr] = Sid_DoubleBlack;
// 1165             isHaveLonlyLineStartCorner = 1;
// 1166             x_startPos_n_add_one = (number_Trk.n_right_banDone+number_Trk.n_left_banDone)/2;
// 1167             
// 1168             HaveLonlyLineStartCornerLastLine = y_ctr;//ÈÏ¶¨ÕâÒ»ÐÐ
// 1169         }
// 1170         
// 1171         if((LDb_WaitingDrawing == LostDouble.Flag)&&(0 == lostDouble_TimerCounter))
// 1172         {
// 1173             if(m_ImageAbstract.Start_Y_Position != LostDouble.Gaia_Y)
// 1174             {
// 1175                 LostDouble.Flag = LDb_None;lostDouble_UpestHeight = 255;
// 1176                 isOccurCross = 1;
// 1177                 float Y_cut = y_ctr - (LostDouble.Gaia_Y - 1);
// 1178                 float X_cut = m_ImageAbstract.Central[y_ctr] - 
// 1179                               m_ImageAbstract.Central[LostDouble.Gaia_Y - 1];
// 1180                 float K = X_cut / Y_cut;
// 1181                 float B = m_ImageAbstract.Central[LostDouble.Gaia_Y - 1] 
// 1182                         - K*(LostDouble.Gaia_Y - 1);
// 1183                 for(uint8 loop = LostDouble.Gaia_Y - 1;
// 1184                           loop < y_ctr;
// 1185                           loop ++)
// 1186                 {
// 1187                     m_ImageAbstract.Central[loop] = (uint8)(K * (float)loop + B);
// 1188                 }
// 1189             }
// 1190             else
// 1191             {
// 1192                 LostDouble.Flag = LDb_None;lostDouble_UpestHeight = 255;
// 1193                 isOccurCross = 1;
// 1194                 float Y_cut = y_ctr - (m_ImageAbstract.Start_Y_Position);
// 1195                 float X_cut = m_ImageAbstract.Central[y_ctr] - 
// 1196                               m_ImageAbstract.Central[m_ImageAbstract.Start_Y_Position];
// 1197                 float K = X_cut / Y_cut;
// 1198                 float B = m_ImageAbstract.Central[m_ImageAbstract.Start_Y_Position] 
// 1199                         - K*(m_ImageAbstract.Start_Y_Position);
// 1200                 for(uint8 loop = m_ImageAbstract.Start_Y_Position;
// 1201                           loop < y_ctr;
// 1202                           loop ++)
// 1203                 {
// 1204                     m_ImageAbstract.Central[loop] = (uint8)(K * (float)loop + B);
// 1205                 }
// 1206             }
// 1207         }
// 1208         
// 1209         if(255 != number_Trk.n_right_end)
// 1210         {
// 1211             uint8 right_pluto_Pos = 255;
// 1212             sint16 rightShutDown = number_Trk.n_right_end + m_ImageAbstract.width[y_ctr]/5;//9cm/¼ÌÐø·Å¿ª11.5cm¶àÐ©
// 1213             if(rightShutDown>181){rightShutDown = 181;}
// 1214             if(rightShutDown<3){rightShutDown = 3;}
// 1215             for (sint16 LINE_CTR = number_Trk.n_right_end;LINE_CTR + constn_xFindJumpLine_Width <= rightShutDown;LINE_CTR++)//ÏòÓÒÌáÏß
// 1216             {sint16 n_jumpVar = m_ImageBeholder_Data[y_ctr][LINE_CTR]                           //ÕâÀïÊÇ¸öÊµ¼ÊµÄÊý
// 1217                               - m_ImageBeholder_Data[y_ctr][LINE_CTR + constn_xFindJumpLine_Width];
// 1218             sint16 absn_jumpVar = __ABS(n_jumpVar);//»ñÈ¡¾ø¶ÔÖµ
// 1219             if ((absn_jumpVar > perLine_JumpNumVaild) && (absn_jumpVar > perLine_JumpNumNonVaild)
// 1220                 && (n_jumpVar < 0)){right_pluto_Pos = LINE_CTR + constn_xFindJumpLine_Width;break;}//Ìø³ö±¾Ñ­»·
// 1221             }//ÓÒÏßËÑÑ°Íê±Ï
// 1222             m_ImageAbstract.Right_UpBlack2White[y_ctr] = right_pluto_Pos;//255;
// 1223         }
// 1224         if(255 != number_Trk.n_left_end)
// 1225         {
// 1226             uint8 left_pluto_Pos = 255;
// 1227             sint16 leftShutDown = number_Trk.n_left_end - m_ImageAbstract.width[y_ctr]/5;//9cm
// 1228             if(leftShutDown>181){leftShutDown = 181;}
// 1229             if(leftShutDown<3){leftShutDown = 3;}
// 1230             for (sint16 LINE_CTR = number_Trk.n_left_end;LINE_CTR - constn_xFindJumpLine_Width >= leftShutDown;LINE_CTR--)
// 1231             {sint16 n_jumpVar = m_ImageBeholder_Data[y_ctr][LINE_CTR]
// 1232                               - m_ImageBeholder_Data[y_ctr][LINE_CTR - constn_xFindJumpLine_Width];
// 1233             sint16 absn_jumpVar = __ABS(n_jumpVar);//»ñÈ¡¾ø¶ÔÖµ
// 1234             if ((absn_jumpVar > perLine_JumpNumVaild) && (absn_jumpVar > perLine_JumpNumNonVaild)
// 1235                 && (n_jumpVar < 0)){left_pluto_Pos = LINE_CTR - constn_xFindJumpLine_Width;break;}//=>Ñ°ÕÒµ½ÏÂÒ»¸ö±ßÑØ
// 1236             }//×óÏßËÑÑ°Íê±Ï
// 1237             m_ImageAbstract.Left_UpBlack2White[y_ctr] = left_pluto_Pos;//255;
// 1238         }
// 1239             
// 1240         if(x_startPos_n_add_one > constNum_X_MaxCounter - constn_xFindJumpLine_Width * 2)
// 1241         {x_startPos_n_add_one = constNum_X_MaxCounter - constn_xFindJumpLine_Width * 2;}//ÏÞ·ùÒÖÖÆÐÅÏ¢
// 1242         if(x_startPos_n_add_one < constn_xFindJumpLine_Width * 2)
// 1243         {x_startPos_n_add_one = constn_xFindJumpLine_Width * 2;}
// 1244         
// 1245 
// 1246         
// 1247         m_ImageAbstract.Central[y_ctr] = x_startPos_n_add_one;
// 1248         m_ImageAbstract.Left[y_ctr] = number_Trk.n_left_end;//¶ªÏß¼´Îª255
// 1249         m_ImageAbstract.Right[y_ctr] = number_Trk.n_right_end;
// 1250         //m_ImageTesting.hazardvaildLine[y_ctr] = m_ImageAbstract.Central[y_ctr];
// 1251         
// 1252         end_y_ctr = y_ctr;//Ã¿´Î¶¼¸üÐÂ   
// 1253         x_startPos = x_startPos_n_add_one;//ÖÐÏß¼Ì³Ð
// 1254         
// 1255         if(1 == LastSide.AllBeforeisBlack)//Ïû³ýÒ»¿ªÊ¼ÊÇºÚÉ«
// 1256         {
// 1257             LastSide.AllBeforeisBlack = 0;
// 1258             for(uint8 loop = 0;loop < y_ctr;loop++)
// 1259             {
// 1260                 m_ImageAbstract.Central[loop] = m_ImageAbstract.Central[y_ctr];//
??v_ImageCut_8:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??v_ImageCut_0+0x8
        ADDS     R1,R0,R1
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R2,??v_ImageCut_0+0x8
        ADDS     R2,R7,R2
        LDRB     R2,[R2, #+164]
        STRB     R2,[R1, #+164]
// 1261             }
        ADDS     R0,R0,#+1
??v_ImageCut_9:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R0,R7
        BCC.N    ??v_ImageCut_8
??v_ImageCut_10:
        ADDS     R7,R7,#+1
??v_ImageCut_7:
        LDRB     R0,[SP, #+52]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,R0
        BCS.W    ??v_ImageCut_11
        MOVS     R0,#+255
        STRB     R0,[SP, #+25]
        MOVS     R0,#+255
        STRB     R0,[SP, #+24]
        MOVS     R0,#+255
        STRB     R0,[SP, #+27]
        MOVS     R0,#+255
        STRB     R0,[SP, #+26]
        ADDS     R8,R8,#+1
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        VMOV     S0,R7
        VCVT.F32.U32 S0,S0
        VLDR     S1,[SP, #+64]
        VLDR     S2,[SP, #+60]
        VMLA.F32 S2,S0,S1
        VCVT.S32.F32 S0,S2
        VMOV     R0,S0
        STRH     R0,[SP, #+44]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??v_ImageCut_0+0x8
        ADDS     R0,R0,R7, LSL #+1
        LDRSH    R1,[SP, #+44]
        STRH     R1,[R0, #+344]
        MOVS     R0,#+0
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        CMP      R8,#+1
        BLT.N    ??v_ImageCut_12
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOVS     R1,#+185
        LDR.W    R2,??v_ImageCut_0+0xC
        MLA      R1,R1,R7,R2
        LDRB     R1,[R6, R1]
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOVS     R2,#+185
        LDR.W    R3,??v_ImageCut_0+0xC
        MLA      R2,R2,R7,R3
        ADDS     R2,R6,R2
        LDRB     R2,[R2, #-185]
        SUBS     R1,R1,R2
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,#+0
        BPL.N    ??v_ImageCut_13
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        RSBS     R2,R1,#+0
        B.N      ??v_ImageCut_14
??v_ImageCut_13:
        MOVS     R2,R1
??v_ImageCut_14:
        UXTH     R10,R10          ;; ZeroExt  R10,R10,#+16,#+16
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        CMP      R10,R2
        BGE.N    ??v_ImageCut_15
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        CMP      R9,R2
        BGE.N    ??v_ImageCut_15
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,#+0
        BPL.N    ??v_ImageCut_15
        STRB     R7,[SP, #+48]
        MOVS     R0,#+1
        STRB     R0,[SP, #+51]
        MOVS     R0,#+1
??v_ImageCut_15:
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        CMP      R8,#+2
        BLT.N    ??v_ImageCut_16
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOVS     R1,#+185
        LDR.W    R2,??v_ImageCut_0+0xC
        MLA      R1,R1,R7,R2
        LDRB     R1,[R6, R1]
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOVS     R2,#+185
        LDR.W    R3,??v_ImageCut_0+0xC
        MLA      R2,R2,R7,R3
        ADDS     R2,R6,R2
        SUBS     R2,R2,#+370
        LDRB     R2,[R2, #+0]
        SUBS     R1,R1,R2
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,#+0
        BPL.N    ??v_ImageCut_17
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        RSBS     R2,R1,#+0
        B.N      ??v_ImageCut_18
??v_ImageCut_17:
        MOVS     R2,R1
??v_ImageCut_18:
        LDRH     R3,[SP, #+58]
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        CMP      R3,R2
        BGE.N    ??v_ImageCut_16
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,#+0
        BPL.N    ??v_ImageCut_16
        STRB     R7,[SP, #+48]
        MOVS     R0,#+1
        STRB     R0,[SP, #+51]
        MOVS     R0,#+1
??v_ImageCut_16:
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        UXTH     R10,R10          ;; ZeroExt  R10,R10,#+16,#+16
        CMP      R9,R10
        BCS.N    ??v_ImageCut_19
        MOV      R9,R10
        B.N      ??v_ImageCut_20
??v_ImageCut_19:
??v_ImageCut_20:
        STRH     R9,[SP, #+58]
??v_ImageCut_12:
        MOVS     R9,#+0
        MOVS     R10,#+0
        MOVS     R1,#+0
        MOVS     R2,#+0
        MOVS     R3,#+255
        MOVS     R12,#+0
        MOVS     LR,#+0
        B.N      ??v_ImageCut_21
??v_ImageCut_22:
        UXTH     LR,LR            ;; ZeroExt  LR,LR,#+16,#+16
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOVS     R9,#+185
        LDR.W    R10,??v_ImageCut_0+0xC
        MLA      R9,R9,R7,R10
        LDRB     R9,[LR, R9]
        CMP      R9,#+0
        BEQ.N    ??v_ImageCut_23
        ADDS     R12,R12,#+1
        UXTH     LR,LR            ;; ZeroExt  LR,LR,#+16,#+16
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOVS     R9,#+185
        LDR.W    R10,??v_ImageCut_0+0xC
        MLA      R9,R9,R7,R10
        LDRB     R9,[LR, R9]
        UXTAB    R1,R1,R9
        UXTH     LR,LR            ;; ZeroExt  LR,LR,#+16,#+16
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOVS     R9,#+185
        LDR.W    R10,??v_ImageCut_0+0xC
        MLA      R9,R9,R7,R10
        LDRB     R9,[LR, R9]
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,R9
        BCS.N    ??v_ImageCut_24
        UXTH     LR,LR            ;; ZeroExt  LR,LR,#+16,#+16
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOVS     R2,#+185
        LDR.W    R9,??v_ImageCut_0+0xC
        MLA      R2,R2,R7,R9
        LDRB     R2,[LR, R2]
??v_ImageCut_24:
        UXTH     LR,LR            ;; ZeroExt  LR,LR,#+16,#+16
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOVS     R9,#+185
        LDR.W    R10,??v_ImageCut_0+0xC
        MLA      R9,R9,R7,R10
        LDRB     R9,[LR, R9]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R9,R3
        BCS.N    ??v_ImageCut_23
        UXTH     LR,LR            ;; ZeroExt  LR,LR,#+16,#+16
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOVS     R3,#+185
        LDR.W    R9,??v_ImageCut_0+0xC
        MLA      R3,R3,R7,R9
        LDRB     R3,[LR, R3]
??v_ImageCut_23:
        ADDS     LR,LR,#+1
??v_ImageCut_21:
        LDRH     R9,[SP, #+22]
        UXTH     LR,LR            ;; ZeroExt  LR,LR,#+16,#+16
        CMP      LR,R9
        BCC.N    ??v_ImageCut_22
        UXTB     R12,R12          ;; ZeroExt  R12,R12,#+24,#+24
        UDIV     R9,R1,R12
        SUBS     R10,R2,R3
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        VMOV     S0,R10
        VCVT.F32.U32 S0,S0
        VLDR.W   S1,??v_ImageCut_6+0x4  ;; 0x3ecccccd
        VMUL.F32 S0,S0,S1
        VCVT.S32.F32 S0,S0
        VMOV     R10,S0
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        VMOV     S0,R9
        VCVT.F32.U32 S0,S0
        VLDR.W   S1,??v_ImageCut_6+0x4  ;; 0x3ecccccd
        VMUL.F32 S0,S0,S1
        VCVT.S32.F32 S0,S0
        VMOV     R9,S0
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        LDRH     R1,[SP, #+44]
        VMOV     S0,R1
        VCVT.F32.U32 S0,S0
        VLDR.W   S1,??v_ImageCut_6+0x8  ;; 0x3fb4fdf4
        VMUL.F32 S0,S0,S1
        VMOV.F32 S1,#1.25
        VMUL.F32 S0,S0,S1
        VMOV.F32 S1,#2.0
        VDIV.F32 S0,S0,S1
        VCVT.S32.F32 S0,S0
        VMOV     R1,S0
        ADDS     R2,R1,R6
        SUBS     R3,R6,R1
        MOVS     R1,R2
        LDRH     R12,[SP, #+22]
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        SUBS     R12,R12,R4
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        CMP      R12,R2
        BGE.N    ??v_ImageCut_25
        LDRH     R1,[SP, #+22]
        SUBS     R1,R1,R4
??v_ImageCut_25:
        MOVS     R2,R3
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R3,R4
        BGE.N    ??v_ImageCut_26
        MOVS     R2,R4
??v_ImageCut_26:
        LDRB     R3,[SP, #+9]
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        CMP      R3,R8
        BLT.N    ??v_ImageCut_27
        ADDS     R2,R4,R4
        LDRH     R1,[SP, #+22]
        SUBS     R1,R1,R4
        SUBS     R1,R1,R4
??v_ImageCut_27:
        LDRB     R3,[SP, #+39]
        CMP      R3,#+1
        BNE.N    ??v_ImageCut_28
        LDRB     R3,[SP, #+36]
        CMP      R3,#+10
        BNE.N    ??v_ImageCut_29
        LDRH     R1,[SP, #+22]
        SUBS     R1,R1,R4
        SUBS     R1,R1,R4
??v_ImageCut_29:
        LDRB     R3,[SP, #+36]
        CMP      R3,#+20
        BNE.N    ??v_ImageCut_28
        ADDS     R2,R4,R4
??v_ImageCut_28:
        MOVS     R3,#+0
        STRB     R3,[SP, #+19]
        MOVS     R3,#+0
        STRB     R3,[SP, #+17]
        MOVS     R3,R6
        B.N      ??v_ImageCut_30
        Nop      
        DATA
??v_ImageCut_6:
        DC32     0x3f800001
        DC32     0x3ecccccd
        DC32     0x3fb4fdf4
        THUMB
??v_ImageCut_31:
        MOV      LR,R3
        STRB     LR,[SP, #+26]
        MOVS     LR,#+1
        STRB     LR,[SP, #+19]
??v_ImageCut_32:
        ADDS     R3,R3,#+1
??v_ImageCut_30:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        SXTAH    R12,R4,R3
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R12,R1
        BGE.N    ??v_ImageCut_33
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOVS     R12,#+185
        LDR.W    LR,??v_ImageCut_0+0xC
        MLA      R12,R12,R7,LR
        LDRB     R12,[R3, R12]
        STR      R12,[SP, #+0]
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        SXTAH    R12,R4,R3
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOVS     R11,#+185
        LDR.W    LR,??v_ImageCut_0+0xC
        MLA      LR,R11,R7,LR
        LDRB     LR,[R12, LR]
        LDR      R12,[SP, #+0]
        SUBS     R12,R12,LR
        SXTH     R12,R12          ;; SignExt  R12,R12,#+16,#+16
        CMP      R12,#+0
        BPL.N    ??v_ImageCut_34
        SXTH     R12,R12          ;; SignExt  R12,R12,#+16,#+16
        RSBS     LR,R12,#+0
        B.N      ??v_ImageCut_35
??v_ImageCut_34:
        MOV      LR,R12
??v_ImageCut_35:
        UXTH     R10,R10          ;; ZeroExt  R10,R10,#+16,#+16
        SXTH     LR,LR            ;; SignExt  LR,LR,#+16,#+16
        CMP      R10,LR
        BGE.N    ??v_ImageCut_32
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        SXTH     LR,LR            ;; SignExt  LR,LR,#+16,#+16
        CMP      R9,LR
        BGE.N    ??v_ImageCut_32
        SXTH     R12,R12          ;; SignExt  R12,R12,#+16,#+16
        CMP      R12,#+1
        BLT.N    ??v_ImageCut_31
        STRB     R3,[SP, #+24]
        MOVS     R1,#+1
        STRB     R1,[SP, #+17]
??v_ImageCut_33:
        MOVS     R1,#+0
        STRB     R1,[SP, #+18]
        MOVS     R1,#+0
        STRB     R1,[SP, #+16]
        MOVS     R1,R6
        B.N      ??v_ImageCut_36
??v_ImageCut_37:
        MOVS     R3,R1
        STRB     R3,[SP, #+27]
        MOVS     R3,#+1
        STRB     R3,[SP, #+18]
??v_ImageCut_38:
        SUBS     R1,R1,#+1
??v_ImageCut_36:
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        SUBS     R3,R1,R4
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        CMP      R3,R2
        BLT.N    ??v_ImageCut_39
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOVS     R3,#+185
        LDR.W    R12,??v_ImageCut_0+0xC
        MLA      R3,R3,R7,R12
        LDRB     R3,[R1, R3]
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        SUBS     R12,R1,R4
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOVS     LR,#+185
        LDR.W    R11,??v_ImageCut_0+0xC
        MLA      LR,LR,R7,R11
        LDRB     R12,[R12, LR]
        SUBS     R3,R3,R12
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        CMP      R3,#+0
        BPL.N    ??v_ImageCut_40
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        RSBS     R12,R3,#+0
        B.N      ??v_ImageCut_41
??v_ImageCut_40:
        MOV      R12,R3
??v_ImageCut_41:
        UXTH     R10,R10          ;; ZeroExt  R10,R10,#+16,#+16
        SXTH     R12,R12          ;; SignExt  R12,R12,#+16,#+16
        CMP      R10,R12
        BGE.N    ??v_ImageCut_38
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        SXTH     R12,R12          ;; SignExt  R12,R12,#+16,#+16
        CMP      R9,R12
        BGE.N    ??v_ImageCut_38
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        CMP      R3,#+1
        BLT.N    ??v_ImageCut_37
        STRB     R1,[SP, #+25]
        MOVS     R1,#+1
        STRB     R1,[SP, #+16]
??v_ImageCut_39:
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        CMP      R8,#+0
        BNE.N    ??v_ImageCut_42
        LDRB     R1,[SP, #+27]
        STRB     R1,[SP, #+28]
        LDRB     R1,[SP, #+26]
        STRB     R1,[SP, #+29]
??v_ImageCut_42:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??v_ImageCut_43
        LDRB     R0,[SP, #+26]
        CMP      R0,#+255
        BEQ.N    ??v_ImageCut_44
        LDRB     R0,[SP, #+27]
        CMP      R0,#+255
        BEQ.N    ??v_ImageCut_44
        LDRB     R0,[SP, #+26]
        LDRB     R1,[SP, #+27]
        SUBS     R0,R0,R1
        BL       __aeabi_i2d
        MOVS     R2,R0
        MOVS     R3,R1
        STRD     R2,R3,[SP, #+0]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??v_ImageCut_0+0x8
        ADDS     R0,R0,R7, LSL #+1
        LDRSH    R0,[R0, #+344]
        VMOV     S0,R0
        VCVT.F32.S32 S0,S0
        VMOV.F32 S1,#15.0
        VDIV.F32 S0,S0,S1
        VMOV     R0,S0
        BL       __aeabi_f2d
        LDR.W    R2,??v_ImageCut_45  ;; 0x76c8b439
        LDR.W    R3,??v_ImageCut_45+0x4  ;; 0x3ff69fbe
        BL       __aeabi_dmul
        LDRD     R2,R3,[SP, #+0]
        BL       __aeabi_cdrcmple
        BHI.N    ??v_ImageCut_44
        STRB     R7,[SP, #+21]
        MOVS     R0,#+0
??v_ImageCut_43:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??v_ImageCut_0+0x8
        ADDS     R0,R7,R0
        MOVS     R1,#+255
        STRB     R1,[R0, #+224]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??v_ImageCut_0+0x8
        ADDS     R0,R7,R0
        MOVS     R1,#+255
        STRB     R1,[R0, #+284]
        LDRB     R0,[SP, #+16]
        LDRB     R1,[SP, #+17]
        UXTAB    R0,R1,R0
        CMP      R0,#+2
        BNE.W    ??v_ImageCut_46
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        ADD      R0,SP,#+88
        MOVS     R1,#+30
        STRB     R1,[R7, R0]
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
        LDRB     R0,[SP, #+25]
        LDRB     R1,[SP, #+24]
        UXTAB    R0,R1,R0
        MOVS     R1,#+2
        SDIV     R5,R0,R1
        MOVS     R0,#+2
        STRB     R0,[SP, #+10]
        B.W      ??v_ImageCut_47
??v_ImageCut_44:
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        CMP      R8,#+1
        BLT.W    ??v_ImageCut_48
        LDRB     R0,[SP, #+39]
        CMP      R0,#+0
        BNE.W    ??v_ImageCut_48
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        ADD      R0,SP,#+88
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #-1]
        CMP      R0,#+30
        BNE.W    ??v_ImageCut_48
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??v_ImageCut_0+0x8
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #+103]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R1,??v_ImageCut_0+0x8
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #+43]
        SUBS     R0,R0,R1
        CMP      R0,#+0
        BPL.N    ??v_ImageCut_49
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??v_ImageCut_0+0x8
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #+43]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R1,??v_ImageCut_0+0x8
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #+103]
        SUBS     R0,R0,R1
        B.N      ??v_ImageCut_50
??v_ImageCut_49:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??v_ImageCut_0+0x8
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #+103]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R1,??v_ImageCut_0+0x8
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #+43]
        SUBS     R0,R0,R1
??v_ImageCut_50:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R1,??v_ImageCut_0+0x8
        ADDS     R1,R1,R7, LSL #+1
        LDRSH    R1,[R1, #+342]
        MOVS     R2,#+5
        SDIV     R1,R1,R2
        CMP      R1,R0
        BLT.W    ??v_ImageCut_48
        MOVS     R0,#+72
        STRB     R0,[SP, #+20]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??v_ImageCut_0+0x8
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #+163]
        SUBS     R1,R7,#+1
        MOVS     R2,#+255
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R3,??v_ImageCut_0+0x8
        ADDS     R3,R3,R1, LSL #+1
        LDRSH    R3,[R3, #+344]
        MOVS     R12,#+2
        SDIV     R3,R3,R12
        UXTAB    R12,R3,R0
        SXTH     R12,R12          ;; SignExt  R12,R12,#+16,#+16
        CMP      R12,#+179
        BLT.N    ??v_ImageCut_51
        MOVS     R12,#+178
??v_ImageCut_51:
        SXTH     R12,R12          ;; SignExt  R12,R12,#+16,#+16
        CMP      R12,#+6
        BGE.N    ??v_ImageCut_52
        MOVS     R12,#+6
??v_ImageCut_52:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R3,R0
        B.N      ??v_ImageCut_53
??v_ImageCut_54:
        ADDS     R3,R3,#+1
??v_ImageCut_53:
        SXTH     R12,R12          ;; SignExt  R12,R12,#+16,#+16
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        SXTAH    LR,R4,R3
        CMP      R12,LR
        BLT.N    ??v_ImageCut_55
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     LR,#+185
        LDR.W    R11,??v_ImageCut_0+0xC
        MLA      LR,LR,R1,R11
        LDRB     LR,[R3, LR]
        STR      LR,[SP, #+4]
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        SXTAH    LR,R4,R3
        STR      LR,[SP, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R11,#+185
        LDR.W    LR,??v_ImageCut_0+0xC
        MLA      LR,R11,R1,LR
        LDR      R11,[SP, #+0]
        LDRB     LR,[R11, LR]
        LDR      R11,[SP, #+4]
        SUBS     LR,R11,LR
        SXTH     LR,LR            ;; SignExt  LR,LR,#+16,#+16
        CMP      LR,#+0
        BPL.N    ??v_ImageCut_56
        SXTH     LR,LR            ;; SignExt  LR,LR,#+16,#+16
        RSBS     R11,LR,#+0
        B.N      ??v_ImageCut_57
??v_ImageCut_56:
        MOV      R11,LR
??v_ImageCut_57:
        UXTH     R10,R10          ;; ZeroExt  R10,R10,#+16,#+16
        SXTH     R11,R11          ;; SignExt  R11,R11,#+16,#+16
        CMP      R10,R11
        BGE.N    ??v_ImageCut_54
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        SXTH     R11,R11          ;; SignExt  R11,R11,#+16,#+16
        CMP      R9,R11
        BGE.N    ??v_ImageCut_54
        SXTH     LR,LR            ;; SignExt  LR,LR,#+16,#+16
        CMP      LR,#+0
        BPL.N    ??v_ImageCut_54
        ADDS     R2,R4,R3
??v_ImageCut_55:
        MOVS     R3,#+255
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R12,??v_ImageCut_0+0x8
        ADDS     R12,R12,R1, LSL #+1
        LDRSH    R12,[R12, #+344]
        MOVS     LR,#+2
        SDIV     R12,R12,LR
        SUBS     LR,R0,R12
        STRH     LR,[SP, #+56]
        LDRSH    R12,[SP, #+56]
        CMP      R12,#+179
        BLT.N    ??v_ImageCut_58
        MOVS     R12,#+178
??v_ImageCut_58:
        LDRSH    R12,[SP, #+56]
        CMP      R12,#+6
        BGE.N    ??v_ImageCut_59
        MOVS     R12,#+6
??v_ImageCut_59:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOV      R12,R0
        B.N      ??v_ImageCut_60
??v_ImageCut_61:
        SUBS     R12,R12,#+1
??v_ImageCut_60:
        SXTH     R12,R12          ;; SignExt  R12,R12,#+16,#+16
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        SUBS     LR,R12,R4
        LDRSH    R11,[SP, #+56]
        CMP      LR,R11
        BLT.N    ??v_ImageCut_62
        SXTH     R12,R12          ;; SignExt  R12,R12,#+16,#+16
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     LR,#+185
        LDR.W    R11,??v_ImageCut_0+0xC
        MLA      LR,LR,R1,R11
        LDRB     LR,[R12, LR]
        STR      LR,[SP, #+4]
        SXTH     R12,R12          ;; SignExt  R12,R12,#+16,#+16
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        SUBS     LR,R12,R4
        STR      LR,[SP, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R11,#+185
        LDR.W    LR,??v_ImageCut_0+0xC
        MLA      LR,R11,R1,LR
        LDR      R11,[SP, #+0]
        LDRB     LR,[R11, LR]
        LDR      R11,[SP, #+4]
        SUBS     LR,R11,LR
        SXTH     LR,LR            ;; SignExt  LR,LR,#+16,#+16
        CMP      LR,#+0
        BPL.N    ??v_ImageCut_63
        SXTH     LR,LR            ;; SignExt  LR,LR,#+16,#+16
        RSBS     R11,LR,#+0
        B.N      ??v_ImageCut_64
??v_ImageCut_63:
        MOV      R11,LR
??v_ImageCut_64:
        UXTH     R10,R10          ;; ZeroExt  R10,R10,#+16,#+16
        SXTH     R11,R11          ;; SignExt  R11,R11,#+16,#+16
        CMP      R10,R11
        BGE.N    ??v_ImageCut_61
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        SXTH     R11,R11          ;; SignExt  R11,R11,#+16,#+16
        CMP      R9,R11
        BGE.N    ??v_ImageCut_61
        SXTH     LR,LR            ;; SignExt  LR,LR,#+16,#+16
        CMP      LR,#+0
        BPL.N    ??v_ImageCut_61
        SUBS     R3,R12,R4
??v_ImageCut_62:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R12,??v_ImageCut_0+0x8
        ADDS     R12,R1,R12
        LDRB     R12,[R12, #+44]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,R12
        BCC.N    ??v_ImageCut_65
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R12,??v_ImageCut_0+0x8
        ADDS     R12,R1,R12
        LDRB     R12,[R12, #+44]
        CMP      R12,#+255
        BEQ.N    ??v_ImageCut_65
        MOVS     R3,#+255
??v_ImageCut_65:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R12,??v_ImageCut_0+0x8
        ADDS     R12,R1,R12
        LDRB     R12,[R12, #+104]
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R12,R2
        BCC.N    ??v_ImageCut_66
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R12,??v_ImageCut_0+0x8
        ADDS     R1,R1,R12
        LDRB     R1,[R1, #+104]
        CMP      R1,#+255
        BEQ.N    ??v_ImageCut_66
        MOVS     R2,#+255
??v_ImageCut_66:
        LDR.W    R1,??v_ImageCut_67
        STRB     R3,[R1, #+131]
        LDR.W    R1,??v_ImageCut_67
        STRB     R2,[R1, #+132]
        MOVS     R1,#+50
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        SUBS     R12,R2,R0
        CMP      R12,#+0
        BPL.N    ??v_ImageCut_68
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        SUBS     R12,R0,R2
        B.N      ??v_ImageCut_69
??v_ImageCut_68:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        SUBS     R12,R2,R0
??v_ImageCut_69:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        SUBS     LR,R3,R0
        CMP      LR,#+0
        BPL.N    ??v_ImageCut_70
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        SUBS     LR,R0,R3
        B.N      ??v_ImageCut_71
??v_ImageCut_70:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        SUBS     LR,R3,R0
??v_ImageCut_71:
        CMP      R12,LR
        BGE.N    ??v_ImageCut_72
        MOVS     R0,R2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+255
        BEQ.N    ??v_ImageCut_72
        MOVS     R1,#+20
??v_ImageCut_72:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        SUBS     R12,R3,R0
        CMP      R12,#+0
        BPL.N    ??v_ImageCut_73
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        SUBS     R12,R0,R3
        B.N      ??v_ImageCut_74
??v_ImageCut_73:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        SUBS     R12,R3,R0
??v_ImageCut_74:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        SUBS     LR,R2,R0
        CMP      LR,#+0
        BPL.N    ??v_ImageCut_75
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        SUBS     R0,R0,R2
        B.N      ??v_ImageCut_76
??v_ImageCut_75:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        SUBS     R0,R2,R0
??v_ImageCut_76:
        CMP      R12,R0
        BGE.N    ??v_ImageCut_77
        MOVS     R0,R3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+255
        BEQ.N    ??v_ImageCut_77
        MOVS     R1,#+10
??v_ImageCut_77:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+50
        BNE.N    ??v_ImageCut_78
        MOVS     R1,#+50
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        SUBS     R0,R7,#+6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+0
        BPL.N    ??v_ImageCut_79
        MOVS     R0,#+0
??v_ImageCut_79:
        MOVS     R3,#+0
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        SUBS     R2,R7,#+1
        B.N      ??v_ImageCut_80
??v_ImageCut_81:
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        LDR.W    R12,??v_ImageCut_0+0x8
        ADDS     R12,R2,R12
        LDRB     R12,[R12, #+164]
        UXTAB    R3,R3,R12
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        LDR.W    R12,??v_ImageCut_0+0x8
        ADDS     R12,R2,R12
        LDRB     R12,[R12, #+163]
        SUBS     R3,R3,R12
        SUBS     R2,R2,#+1
??v_ImageCut_80:
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        CMP      R0,R2
        BLT.N    ??v_ImageCut_81
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        CMP      R3,#+0
        BPL.N    ??v_ImageCut_82
        MOVS     R1,#+20
??v_ImageCut_82:
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        CMP      R3,#+1
        BLT.N    ??v_ImageCut_78
        MOVS     R1,#+10
??v_ImageCut_78:
        LDR.W    R0,??v_ImageCut_67
        STRB     R1,[R0, #+3]
        MOVS     R0,#+255
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+20
        BNE.N    ??v_ImageCut_83
        MOVS     R0,#+2
        STRB     R0,[SP, #+34]
        MOVS     R0,#+74
        STRB     R0,[SP, #+20]
        B.N      ??v_ImageCut_84
??v_ImageCut_83:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+10
        BNE.N    ??v_ImageCut_84
        MOVS     R0,#+1
        STRB     R0,[SP, #+34]
        MOVS     R0,#+106
        STRB     R0,[SP, #+20]
??v_ImageCut_84:
        STRB     R7,[SP, #+38]
        STRB     R1,[SP, #+36]
        MOVS     R0,#+1
        STRB     R0,[SP, #+39]
        LDRB     R0,[SP, #+36]
        CMP      R0,#+10
        BNE.N    ??v_ImageCut_85
        MOVS     R0,R6
        STRB     R0,[SP, #+24]
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        MOVS     R0,R6
        BL       __aeabi_ui2d
        STRD     R0,R1,[SP, #+0]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.N    R0,??v_ImageCut_0+0x8
        ADDS     R0,R0,R7, LSL #+1
        LDRSH    R0,[R0, #+344]
        BL       __aeabi_i2d
        LDR.W    R2,??v_ImageCut_67+0x4  ;; 0xcccccccd
        LDR.W    R3,??v_ImageCut_67+0x8  ;; 0x3fdccccc
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        LDRD     R0,R1,[SP, #+0]
        BL       __aeabi_dsub
        BL       __aeabi_d2iz
        MOVS     R6,R0
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+3
        BLT.N    ??v_ImageCut_86
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.N    R0,??v_ImageCut_0+0x8
        ADDS     R0,R7,R0
        STRB     R6,[R0, #+163]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.N    R0,??v_ImageCut_0+0x8
        ADDS     R0,R7,R0
        STRB     R6,[R0, #+162]
??v_ImageCut_86:
        MOVS     R0,#+0
        STRB     R0,[SP, #+16]
        MOVS     R0,#+1
        STRB     R0,[SP, #+17]
        B.N      ??v_ImageCut_87
??v_ImageCut_85:
        LDRB     R0,[SP, #+36]
        CMP      R0,#+20
        BNE.N    ??v_ImageCut_87
        MOVS     R0,R6
        STRB     R0,[SP, #+25]
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        MOVS     R0,R6
        BL       __aeabi_ui2d
        STRD     R0,R1,[SP, #+0]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.N    R0,??v_ImageCut_0+0x8
        ADDS     R0,R0,R7, LSL #+1
        LDRSH    R0,[R0, #+344]
        BL       __aeabi_i2d
        LDR.W    R2,??v_ImageCut_67+0x4  ;; 0xcccccccd
        LDR.W    R3,??v_ImageCut_67+0x8  ;; 0x3fdccccc
        BL       __aeabi_dmul
        LDRD     R2,R3,[SP, #+0]
        BL       __aeabi_dadd
        BL       __aeabi_d2iz
        MOVS     R6,R0
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+3
        BLT.N    ??v_ImageCut_88
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.N    R0,??v_ImageCut_0+0x8
        ADDS     R0,R7,R0
        STRB     R6,[R0, #+163]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.N    R0,??v_ImageCut_0+0x8
        ADDS     R0,R7,R0
        STRB     R6,[R0, #+162]
??v_ImageCut_88:
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
        MOVS     R0,#+0
        STRB     R0,[SP, #+17]
??v_ImageCut_87:
        MOVS     R0,#+0
        B.N      ??v_ImageCut_43
??v_ImageCut_48:
        LDRB     R11,[SP, #+48]
// 1262         }
// 1263         /*
// 1264         if(process_find_timer < 3)
// 1265         {//´ÎÊýÐ¡ÓÚ3µÄ»°
// 1266             if((x_startPos<=6)&&(Sid_Right == TrkSide[y_ctr]))
// 1267             {
// 1268                 sint16 x_should_pos = (number_Trk.n_right_end + m_ImageAbstract.width[y_ctr]/9);//+5cm
// 1269                 if(x_should_pos > 181){x_should_pos = 181;}
// 1270                 if(x_should_pos < 3){x_should_pos = 3;}
// 1271                 x_startPos = x_should_pos;
// 1272                 uint8 MarkTimer = process_find_timer;
// 1273                 while(0!=MarkTimer)
// 1274                 {
// 1275                     m_ImageAbstract.Central[y_ctr - MarkTimer] = x_startPos;
// 1276                     MarkTimer--;
// 1277                 }
// 1278             }
// 1279             if((x_startPos>=181-3)&&(Sid_Left == TrkSide[y_ctr]))
// 1280             {
// 1281                 sint16 x_should_pos = (number_Trk.n_left_end - m_ImageAbstract.width[y_ctr]/9);//-5cm
// 1282                 if(x_should_pos > 181){x_should_pos = 181;}
// 1283                 if(x_should_pos < 3){x_should_pos = 3;}
// 1284                 x_startPos = x_should_pos;
// 1285                 uint8 MarkTimer = process_find_timer;
// 1286                 while(0!=MarkTimer)
// 1287                 {
// 1288                     m_ImageAbstract.Central[y_ctr - MarkTimer] = x_startPos;
// 1289                     MarkTimer--;
// 1290                 }
// 1291             }
// 1292         }*/
// 1293     }//µ¥´Î½áÊø => ÕâÀïÒ²ÊÇÒ»´ÎÑ°Ïß½áÊø
// 1294     uint8 end_y_ctr_AfterFinder = end_y_ctr;
// 1295     /*
// 1296     if(1 == m_ImageAbstract.openTheRamp)
// 1297     {
// 1298         uint8 isNeedJumpOut = 1;
// 1299         
// 1300         u_Side FirstSide = TrkSide[m_ImageAbstract.Start_Y_Position];
// 1301         uint8 FirstSideCounter = 0;
// 1302         uint8 DoubleSideCounter = 0;
// 1303         uint8 isOccurDoubleHave = 0;uint8 isOccurBreak = 0;
// 1304         
// 1305         for(uint8 loop = m_ImageAbstract.Start_Y_Position;loop < end_y_ctr;loop++)
// 1306         {
// 1307             if(Sid_Double != FirstSide)
// 1308             {
// 1309                 if(FirstSide != TrkSide[loop]) 
// 1310                 {
// 1311                     isOccurDoubleHave = 1;
// 1312                     if(Sid_Double != TrkSide[loop])
// 1313                     {
// 1314                         isOccurBreak = 1;break;
// 1315                     }
// 1316                     else
// 1317                     {
// 1318                         DoubleSideCounter++;
// 1319                     }
// 1320                 }else{if(0==isOccurDoubleHave){FirstSideCounter++;}else{isOccurBreak = 1;break;}}
// 1321             }
// 1322             else
// 1323             {
// 1324                 DoubleSideCounter ++;
// 1325                 if(FirstSide != TrkSide[loop]){isOccurBreak = 1;break;}
// 1326             }
// 1327         }
// 1328         
// 1329         //ËùÒÔ´ÓÕâÀï¿ÉÖª£¬ÆÂµÀµÄ¼«ÖÂÎ»ÖÃ
// 1330         uint8 RampEndYLine = DoubleSideCounter + FirstSideCounter;//µÃµ½
// 1331         uint8 RampStartLine = FirstSideCounter;
// 1332         
// 1333         uint8 width_cut = 0;
// 1334         uint8 check_counter = 0;
// 1335         //float Ratio = 0.f;
// 1336         
// 1337         m_ImageTesting.RampStart = RampStartLine;
// 1338         m_ImageTesting.RampEnd = RampEndYLine;
// 1339         
// 1340         uint8 RightCutLeft_New = 0;
// 1341         
// 1342         for(uint8 loop = RampStartLine + 1;loop < RampEndYLine;loop++)
// 1343         {//ÕâÀï¾ÍÊÇÈ«²¿µÄ¹ý³Ì
// 1344             if((255 == m_ImageAbstract.Right[loop])||(255 == m_ImageAbstract.Left[loop]))
// 1345             {continue;}
// 1346             check_counter ++;
// 1347             uint8 RightCutLeft = m_ImageAbstract.Right[loop] - m_ImageAbstract.Left[loop];
// 1348             //float RatioNew = (float)RightCutLeft / (float)m_ImageAbstract.width[loop];
// 1349             if(1.25*RightCutLeft < RightCutLeft_New)
// 1350             {
// 1351                 RampEndYLine = loop;
// 1352                 isNeedJumpOut = 0;
// 1353                 break;
// 1354             }
// 1355             RightCutLeft_New = RightCutLeft;
// 1356         }
// 1357         
// 1358         if(1 == isNeedJumpOut){goto endOfRampCut;}
// 1359          
// 1360         RightCutLeft_New = m_ImageAbstract.Right[RampStartLine + 1] - m_ImageAbstract.Left[RampStartLine + 1];
// 1361         sint16 cutChange = 0;sint16 cutChangeNew = 0;
// 1362         //sint16 cutChangeOK_Left = 0;sint16 cutChangeOK_Right = 0;
// 1363         uint8 RampExist = 0;//RampExist
// 1364         for(uint8 loop = RampStartLine + 1;loop < RampEndYLine;loop++)
// 1365         {
// 1366             uint8 RightCutLeft = m_ImageAbstract.Right[loop] - m_ImageAbstract.Left[loop];
// 1367             cutChange = RightCutLeft - RightCutLeft_New;
// 1368             
// 1369             if(loop > RampStartLine + 1)
// 1370             {
// 1371                 if((!((cutChangeNew > -2*cutChange)&&(cutChangeNew < 2*cutChange)))&&(__ABS(cutChange)>3))
// 1372                 {//ÕâÊÇÅÐ±ð£¬Ã¿´ÎÈüµÀÁ½±ßµÄÍ»±äÇé¿ö
// 1373                     RampExist = 1;
// 1374                     RampEndYLine = loop;//¼ÇÂ¼ÏÂÓ¦¸ÃµÄ
// 1375                     //½«´æÔÚ
// 1376                     isNeedJumpOut = 0;
// 1377                     break;
// 1378                 }
// 1379             }
// 1380             
// 1381             cutChangeNew = cutChange;
// 1382             RightCutLeft_New = RightCutLeft;
// 1383         }
// 1384         if(1 == isNeedJumpOut){goto endOfRampCut;}
// 1385 endOfRampCut://endOfRampCut => m_ImageAbstract.openTheRamp
// 1386         m_ImageAbstract.RampExist = RampExist;
// 1387     }
// 1388     */
// 1389     
// 1390     /*uint8 Back = 1;*/
// 1391     if(/*(0 == Back)&&*/(1 == TurningBeacauseVeryLittle.isHappened)&&(0 == m_ImageAbstract.RtAngle_isLasting)&&(0 == m_ImageAbstract.isLonlyLineNow))
??v_ImageCut_11:
        LDRB     R0,[SP, #+39]
        CMP      R0,#+1
        BNE.W    ??v_ImageCut_89
        LDR.N    R0,??v_ImageCut_0+0x8
        LDRB     R0,[R0, #+480]
        CMP      R0,#+0
        BNE.W    ??v_ImageCut_89
        LDR.N    R0,??v_ImageCut_0+0x8
        LDRB     R0,[R0, #+4]
        CMP      R0,#+0
        BNE.W    ??v_ImageCut_89
// 1392     {//ÍäÈëÖ±½ÇµÄºÚ¿é¼ì²â
// 1393         
// 1394         sint16 centralPos = 0;sint16 centralPos_n_add_one = 0;
        MOVS     R1,#+0
        MOVS     R3,#+0
// 1395         TurningBeacauseVeryLittle__isHappened = 1;
        MOVS     R0,#+1
// 1396         
// 1397         uint8 lastLine = TurningBeacauseVeryLittle.y_end + 10;
        LDRB     R2,[SP, #+38]
        ADDS     R2,R2,#+10
// 1398         if(lastLine > end_y_ctr){lastLine = end_y_ctr;}
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R11,R2
        BCS.N    ??v_ImageCut_90
        MOV      R2,R11
// 1399         for(uint8 loop = m_ImageAbstract.Start_Y_Position;loop < end_y_ctr;loop++)
??v_ImageCut_90:
        LDR.N    R0,??v_ImageCut_0+0x8
        LDRB     R0,[R0, #+464]
        B.W      ??v_ImageCut_91
??v_ImageCut_46:
        LDRB     R0,[SP, #+16]
        CMP      R0,#+1
        BEQ.N    ??v_ImageCut_92
        LDRB     R0,[SP, #+17]
        CMP      R0,#+1
        BNE.W    ??v_ImageCut_93
??v_ImageCut_92:
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
        LDRB     R0,[SP, #+16]
        CMP      R0,#+1
        BNE.N    ??v_ImageCut_94
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        ADD      R0,SP,#+88
        MOVS     R1,#+10
        STRB     R1,[R7, R0]
        LDRB     R0,[SP, #+25]
        VMOV     S0,R0
        VCVT.F32.U32 S0,S0
        LDRH     R0,[SP, #+44]
        VMOV     S1,R0
        VCVT.F32.U32 S1,S1
        VLDR.W   S2,??v_ImageCut_95  ;; 0x3ee66666
        VMLA.F32 S0,S1,S2
        VCVT.S32.F32 S0,S0
        VMOV     R5,S0
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R5,R6
        BGE.N    ??v_ImageCut_96
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        CMP      R8,#+3
        BLT.N    ??v_ImageCut_96
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.N    R0,??v_ImageCut_0+0x8
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #+163]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.N    R1,??v_ImageCut_0+0x8
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #+162]
        UXTAB    R0,R1,R0
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.N    R1,??v_ImageCut_0+0x8
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #+161]
        SUBS     R5,R0,R1
??v_ImageCut_96:
        LDRB     R0,[SP, #+9]
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R8,R0
        BGE.N    ??v_ImageCut_97
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        CMP      R8,#+1
        BLT.N    ??v_ImageCut_97
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.N    R0,??v_ImageCut_0+0x8
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #+163]
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R5,R0
        BGE.N    ??v_ImageCut_97
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.N    R0,??v_ImageCut_0+0x8
        ADDS     R0,R7,R0
        LDRB     R5,[R0, #+163]
        B.N      ??v_ImageCut_97
        DATA
??v_ImageCut_0:
        DC32     m_Control
        DC32     0xc1f00000
        DC32     m_ImageAbstract
        DC32     m_ImageBeholder_Data
        THUMB
??v_ImageCut_94:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        ADD      R0,SP,#+88
        MOVS     R1,#+20
        STRB     R1,[R7, R0]
        LDRB     R0,[SP, #+24]
        VMOV     S0,R0
        VCVT.F32.U32 S0,S0
        LDRH     R0,[SP, #+44]
        VMOV     S1,R0
        VCVT.F32.U32 S1,S1
        VLDR.W   S2,??v_ImageCut_95  ;; 0x3ee66666
        VMLS.F32 S0,S1,S2
        VCVT.S32.F32 S0,S0
        VMOV     R5,S0
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        CMP      R6,R5
        BGE.N    ??v_ImageCut_98
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        CMP      R8,#+3
        BLT.N    ??v_ImageCut_98
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??v_ImageCut_67+0xC
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #+163]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R1,??v_ImageCut_67+0xC
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #+162]
        UXTAB    R0,R1,R0
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R1,??v_ImageCut_67+0xC
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #+161]
        SUBS     R5,R0,R1
??v_ImageCut_98:
        LDRB     R0,[SP, #+9]
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R8,R0
        BGE.N    ??v_ImageCut_97
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        CMP      R8,#+1
        BLT.N    ??v_ImageCut_97
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??v_ImageCut_67+0xC
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #+163]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        CMP      R0,R5
        BGE.N    ??v_ImageCut_97
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??v_ImageCut_67+0xC
        ADDS     R0,R7,R0
        LDRB     R5,[R0, #+163]
??v_ImageCut_97:
        LDRB     R0,[SP, #+10]
        CMP      R0,#+2
        BNE.N    ??v_ImageCut_99
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        CMP      R8,#+3
        BLT.N    ??v_ImageCut_99
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??v_ImageCut_67+0xC
        ADDS     R0,R7,R0
        STRB     R5,[R0, #+163]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??v_ImageCut_67+0xC
        ADDS     R0,R7,R0
        STRB     R5,[R0, #+162]
??v_ImageCut_99:
        MOVS     R0,#+1
        STRB     R0,[SP, #+10]
??v_ImageCut_93:
        LDRB     R0,[SP, #+16]
        CMP      R0,#+0
        BNE.W    ??v_ImageCut_47
        LDRB     R0,[SP, #+17]
        CMP      R0,#+0
        BNE.W    ??v_ImageCut_47
        LDRB     R0,[SP, #+26]
        CMP      R0,#+255
        BEQ.N    ??v_ImageCut_100
        LDRB     R0,[SP, #+27]
        CMP      R0,#+255
        BEQ.N    ??v_ImageCut_100
        LDRB     R0,[SP, #+26]
        LDRB     R1,[SP, #+27]
        SUBS     R0,R0,R1
        BL       __aeabi_i2d
        MOVS     R2,R0
        MOVS     R3,R1
        STRD     R2,R3,[SP, #+0]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??v_ImageCut_67+0xC
        ADDS     R0,R0,R7, LSL #+1
        LDRSH    R0,[R0, #+344]
        VMOV     S0,R0
        VCVT.F32.S32 S0,S0
        VMOV.F32 S1,#15.0
        VDIV.F32 S0,S0,S1
        VMOV     R0,S0
        BL       __aeabi_f2d
        LDR.W    R2,??v_ImageCut_45  ;; 0x76c8b439
        LDR.W    R3,??v_ImageCut_45+0x4  ;; 0x3ff69fbe
        BL       __aeabi_dmul
        LDRD     R2,R3,[SP, #+0]
        BL       __aeabi_cdrcmple
        BLS.W    ??v_ImageCut_47
??v_ImageCut_100:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        ADD      R0,SP,#+88
        MOVS     R1,#+40
        STRB     R1,[R7, R0]
        LDRB     R0,[SP, #+9]
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R8,R0
        BGE.N    ??v_ImageCut_101
        LDRB     R0,[SP, #+8]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        CMP      R0,R8
        BNE.N    ??v_ImageCut_101
        LDR.W    R0,??v_ImageCut_67+0xC
        LDRB     R5,[R0, #+468]
        B.N      ??v_ImageCut_102
??v_ImageCut_101:
        MOVS     R5,R6
??v_ImageCut_102:
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        CMP      R8,#+4
        BLT.N    ??v_ImageCut_103
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??v_ImageCut_67+0xC
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #+163]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R1,??v_ImageCut_67+0xC
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #+163]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R2,??v_ImageCut_67+0xC
        ADDS     R2,R7,R2
        LDRB     R2,[R2, #+162]
        SUBS     R1,R1,R2
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R2,??v_ImageCut_67+0xC
        ADDS     R2,R7,R2
        LDRB     R2,[R2, #+162]
        UXTAB    R1,R1,R2
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R2,??v_ImageCut_67+0xC
        ADDS     R2,R7,R2
        LDRB     R2,[R2, #+161]
        SUBS     R1,R1,R2
        MOVS     R2,#+2
        SDIV     R1,R1,R2
        UXTAB    R5,R1,R0
??v_ImageCut_103:
        LDRB     R0,[SP, #+8]
        ADDS     R0,R0,#+1
        STRB     R0,[SP, #+8]
        LDRB     R0,[SP, #+8]
        CMP      R0,#+1
        BNE.N    ??v_ImageCut_104
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        VMOV     S0,R7
        VCVT.F32.U32 S0,S0
        VLDR     S1,[SP, #+68]
        VMUL.F32 S0,S0,S1
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        VMOV     S1,R7
        VCVT.F32.U32 S1,S1
        VMUL.F32 S0,S0,S1
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        VMOV     S1,R7
        VCVT.F32.U32 S1,S1
        VLDR     S2,[SP, #+72]
        VMLA.F32 S0,S1,S2
        VLDR     S1,[SP, #+76]
        VADD.F32 S0,S0,S1
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        VMOV     S1,R7
        VCVT.F32.U32 S2,S1
        VLDR     S3,[SP, #+80]
        VLDR     S1,[SP, #+84]
        VMLA.F32 S1,S2,S3
        VDIV.F32 S0,S0,S1
        VCVT.S32.F32 S0,S0
        VMOV     R0,S0
        STRB     R0,[SP, #+11]
        STRB     R7,[SP, #+42]
??v_ImageCut_104:
        LDRB     R0,[SP, #+11]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        LDRB     R1,[SP, #+8]
        CMP      R0,R1
        BGE.N    ??v_ImageCut_105
        MOVS     R0,#+0
        STRB     R0,[SP, #+40]
??v_ImageCut_105:
        MOVS     R0,#+0
        STRB     R0,[SP, #+10]
??v_ImageCut_47:
        LDRB     R0,[SP, #+26]
        CMP      R0,#+255
        BEQ.N    ??v_ImageCut_106
        LDRB     R0,[SP, #+27]
        CMP      R0,#+255
        BEQ.N    ??v_ImageCut_106
        LDRB     R0,[SP, #+26]
        LDRB     R1,[SP, #+27]
        SUBS     R0,R0,R1
        BL       __aeabi_i2d
        MOVS     R2,R0
        MOVS     R3,R1
        STRD     R2,R3,[SP, #+0]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??v_ImageCut_67+0xC
        ADDS     R0,R0,R7, LSL #+1
        LDRSH    R0,[R0, #+344]
        VMOV     S0,R0
        VCVT.F32.S32 S0,S0
        VMOV.F32 S1,#15.0
        VDIV.F32 S0,S0,S1
        VMOV     R0,S0
        BL       __aeabi_f2d
        LDR.N    R2,??v_ImageCut_45  ;; 0x76c8b439
        LDR.N    R3,??v_ImageCut_45+0x4  ;; 0x3ff69fbe
        B.N      ??v_ImageCut_107
        Nop      
        DATA
??v_ImageCut_95:
        DC32     0x3ee66666
        THUMB
??v_ImageCut_107:
        BL       __aeabi_dmul
        LDRD     R2,R3,[SP, #+0]
        BL       __aeabi_cdrcmple
        BHI.N    ??v_ImageCut_106
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        ADD      R0,SP,#+88
        MOVS     R1,#+60
        STRB     R1,[R7, R0]
        MOVS     R0,#+1
        STRB     R0,[SP, #+15]
        LDRB     R0,[SP, #+26]
        LDRB     R1,[SP, #+27]
        UXTAB    R0,R1,R0
        MOVS     R1,#+2
        SDIV     R5,R0,R1
        STRB     R7,[SP, #+21]
??v_ImageCut_106:
        LDRB     R0,[SP, #+40]
        CMP      R0,#+0
        BNE.W    ??v_ImageCut_108
        LDRB     R0,[SP, #+8]
        CMP      R0,#+0
        BNE.W    ??v_ImageCut_108
        LDR.W    R0,??v_ImageCut_67+0xC
        LDRB     R0,[R0, #+464]
        LDRB     R1,[SP, #+42]
        CMP      R0,R1
        BEQ.N    ??v_ImageCut_109
        MOVS     R0,#+1
        STRB     R0,[SP, #+40]
        MOVS     R0,#+255
        STRB     R0,[SP, #+11]
        MOVS     R0,#+1
        STRB     R0,[SP, #+32]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDRB     R0,[SP, #+42]
        SUBS     R0,R7,R0
        ADDS     R0,R0,#+1
        VMOV     S0,R0
        VCVT.F32.S32 S0,S0
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??v_ImageCut_67+0xC
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #+164]
        LDRB     R1,[SP, #+42]
        LDR.W    R2,??v_ImageCut_67+0xC
        ADDS     R1,R1,R2
        LDRB     R1,[R1, #+163]
        SUBS     R0,R0,R1
        VMOV     S1,R0
        VCVT.F32.S32 S1,S1
        VDIV.F32 S0,S1,S0
        LDRB     R0,[SP, #+42]
        LDR.W    R1,??v_ImageCut_67+0xC
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+163]
        VMOV     S1,R0
        VCVT.F32.U32 S1,S1
        LDRB     R0,[SP, #+42]
        SUBS     R0,R0,#+1
        VMOV     S2,R0
        VCVT.F32.S32 S2,S2
        VMLS.F32 S1,S2,S0
        LDRB     R0,[SP, #+42]
        SUBS     R0,R0,#+1
??v_ImageCut_110:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R0,R7
        BCS.N    ??v_ImageCut_108
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        VMOV     S2,R0
        VCVT.F32.U32 S2,S2
        VMOV.F32 S3,S1
        VMLA.F32 S3,S2,S0
        VCVT.S32.F32 S2,S3
        VMOV     R1,S2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??v_ImageCut_67+0xC
        ADDS     R2,R0,R2
        STRB     R1,[R2, #+164]
        ADDS     R0,R0,#+1
        B.N      ??v_ImageCut_110
??v_ImageCut_109:
        MOVS     R0,#+1
        STRB     R0,[SP, #+40]
        MOVS     R0,#+255
        STRB     R0,[SP, #+11]
        MOVS     R0,#+1
        STRB     R0,[SP, #+32]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??v_ImageCut_67+0xC
        LDRB     R0,[R0, #+464]
        SUBS     R0,R7,R0
        VMOV     S0,R0
        VCVT.F32.S32 S0,S0
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??v_ImageCut_67+0xC
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #+164]
        LDR.W    R1,??v_ImageCut_67+0xC
        LDRB     R1,[R1, #+464]
        LDR.W    R2,??v_ImageCut_67+0xC
        ADDS     R1,R1,R2
        LDRB     R1,[R1, #+164]
        SUBS     R0,R0,R1
        VMOV     S1,R0
        VCVT.F32.S32 S1,S1
        VDIV.F32 S0,S1,S0
        LDR.W    R0,??v_ImageCut_67+0xC
        LDRB     R0,[R0, #+464]
        LDR.W    R1,??v_ImageCut_67+0xC
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+164]
        VMOV     S1,R0
        VCVT.F32.U32 S1,S1
        LDR.W    R0,??v_ImageCut_67+0xC
        LDRB     R0,[R0, #+464]
        VMOV     S2,R0
        VCVT.F32.U32 S2,S2
        VMLS.F32 S1,S2,S0
        LDR.W    R0,??v_ImageCut_67+0xC
        LDRB     R0,[R0, #+464]
        B.N      ??v_ImageCut_111
??v_ImageCut_112:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        VMOV     S2,R0
        VCVT.F32.U32 S2,S2
        VMOV.F32 S3,S1
        VMLA.F32 S3,S2,S0
        VCVT.S32.F32 S2,S3
        VMOV     R1,S2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??v_ImageCut_67+0xC
        ADDS     R2,R0,R2
        STRB     R1,[R2, #+164]
        ADDS     R0,R0,#+1
??v_ImageCut_111:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R0,R7
        BCC.N    ??v_ImageCut_112
??v_ImageCut_108:
        LDRB     R0,[SP, #+24]
        CMP      R0,#+255
        BEQ.N    ??v_ImageCut_113
        MOVS     R0,#+255
        LDRB     R1,[SP, #+24]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R2,??v_ImageCut_67+0xC
        ADDS     R2,R2,R7, LSL #+1
        LDRSH    R2,[R2, #+344]
        MOVS     R3,#+5
        SDIV     R2,R2,R3
        UXTAB    R1,R2,R1
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,#+182
        BLT.N    ??v_ImageCut_114
        MOVS     R1,#+181
??v_ImageCut_114:
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,#+3
        BGE.N    ??v_ImageCut_115
        MOVS     R1,#+3
??v_ImageCut_115:
        LDRB     R2,[SP, #+24]
        B.N      ??v_ImageCut_116
??v_ImageCut_117:
        ADDS     R2,R2,#+1
??v_ImageCut_116:
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        SXTAH    R3,R4,R2
        CMP      R1,R3
        BLT.N    ??v_ImageCut_118
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOVS     R3,#+185
        LDR.W    R6,??v_ImageCut_67+0x10
        MLA      R3,R3,R7,R6
        LDRB     R3,[R2, R3]
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        SXTAH    R6,R4,R2
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOVS     R12,#+185
        LDR.W    LR,??v_ImageCut_67+0x10
        MLA      R12,R12,R7,LR
        LDRB     R6,[R6, R12]
        SUBS     R3,R3,R6
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        CMP      R3,#+0
        BPL.N    ??v_ImageCut_119
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        RSBS     R6,R3,#+0
        B.N      ??v_ImageCut_120
??v_ImageCut_119:
        MOVS     R6,R3
??v_ImageCut_120:
        UXTH     R10,R10          ;; ZeroExt  R10,R10,#+16,#+16
        SXTH     R6,R6            ;; SignExt  R6,R6,#+16,#+16
        CMP      R10,R6
        BGE.N    ??v_ImageCut_117
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        SXTH     R6,R6            ;; SignExt  R6,R6,#+16,#+16
        CMP      R9,R6
        BGE.N    ??v_ImageCut_117
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        CMP      R3,#+0
        BPL.N    ??v_ImageCut_117
        ADDS     R0,R4,R2
??v_ImageCut_118:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R1,??v_ImageCut_67+0xC
        ADDS     R1,R7,R1
        STRB     R0,[R1, #+284]
??v_ImageCut_113:
        LDRB     R0,[SP, #+25]
        CMP      R0,#+255
        BEQ.N    ??v_ImageCut_121
        MOVS     R0,#+255
        LDRB     R1,[SP, #+25]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R2,??v_ImageCut_67+0xC
        ADDS     R2,R2,R7, LSL #+1
        LDRSH    R2,[R2, #+344]
        MOVS     R3,#+5
        SDIV     R2,R2,R3
        SUBS     R1,R1,R2
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,#+182
        BLT.N    ??v_ImageCut_122
        MOVS     R1,#+181
??v_ImageCut_122:
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,#+3
        BGE.N    ??v_ImageCut_123
        MOVS     R1,#+3
??v_ImageCut_123:
        LDRB     R2,[SP, #+25]
        B.N      ??v_ImageCut_124
??v_ImageCut_125:
        SUBS     R2,R2,#+1
??v_ImageCut_124:
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        SUBS     R3,R2,R4
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R3,R1
        BLT.N    ??v_ImageCut_126
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOVS     R3,#+185
        LDR.W    R6,??v_ImageCut_67+0x10
        MLA      R3,R3,R7,R6
        LDRB     R3,[R2, R3]
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        SUBS     R6,R2,R4
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOVS     R12,#+185
        LDR.W    LR,??v_ImageCut_67+0x10
        MLA      R12,R12,R7,LR
        LDRB     R6,[R6, R12]
        SUBS     R3,R3,R6
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        CMP      R3,#+0
        BPL.N    ??v_ImageCut_127
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        RSBS     R6,R3,#+0
        B.N      ??v_ImageCut_128
        Nop      
        DATA
??v_ImageCut_45:
        DC32     0x76c8b439
        DC32     0x3ff69fbe
        THUMB
??v_ImageCut_127:
        MOVS     R6,R3
??v_ImageCut_128:
        UXTH     R10,R10          ;; ZeroExt  R10,R10,#+16,#+16
        SXTH     R6,R6            ;; SignExt  R6,R6,#+16,#+16
        CMP      R10,R6
        BGE.N    ??v_ImageCut_125
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        SXTH     R6,R6            ;; SignExt  R6,R6,#+16,#+16
        CMP      R9,R6
        BGE.N    ??v_ImageCut_125
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        CMP      R3,#+0
        BPL.N    ??v_ImageCut_125
        SUBS     R0,R2,R4
??v_ImageCut_126:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R1,??v_ImageCut_67+0xC
        ADDS     R1,R7,R1
        STRB     R0,[R1, #+224]
??v_ImageCut_121:
        LDRH     R0,[SP, #+22]
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        SUBS     R0,R0,R4, LSL #+1
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        CMP      R0,R5
        BGE.N    ??v_ImageCut_129
        LDRH     R0,[SP, #+22]
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        SUBS     R5,R0,R4, LSL #+1
??v_ImageCut_129:
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R5,R4, LSL #+1
        BGE.N    ??v_ImageCut_130
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LSLS     R5,R4,#+1
??v_ImageCut_130:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??v_ImageCut_67+0xC
        ADDS     R0,R7,R0
        STRB     R5,[R0, #+164]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??v_ImageCut_67+0xC
        ADDS     R0,R7,R0
        LDRB     R1,[SP, #+25]
        STRB     R1,[R0, #+44]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??v_ImageCut_67+0xC
        ADDS     R0,R7,R0
        LDRB     R1,[SP, #+24]
        STRB     R1,[R0, #+104]
        MOV      R11,R7
        MOVS     R6,R5
        LDRB     R0,[SP, #+50]
        CMP      R0,#+1
        BNE.W    ??v_ImageCut_10
        MOVS     R0,#+0
        STRB     R0,[SP, #+50]
        MOVS     R0,#+0
        B.W      ??v_ImageCut_9
// 1400         {
// 1401             if(Sid_Left == TurningBeacauseVeryLittle.side)
// 1402             {
// 1403                 if(255 != m_ImageAbstract.Right[loop])
// 1404                 {
// 1405                     centralPos_n_add_one = (sint16)(m_ImageAbstract.Right[loop] - m_ImageAbstract.width[loop]*0.45f);//Ïàµ±ÓÚ²¹±ß
// 1406                     if((centralPos_n_add_one > centralPos)&&(loop > m_ImageAbstract.Start_Y_Position+2))//±¾´ÎÊýÖµÔÚÉÏ´ÎÊýÖµµÄ×ó±ß
// 1407                     {
// 1408                         centralPos_n_add_one = m_ImageAbstract.Central[loop-1]//Â·¾¶µÄPD×÷ÓÃ
// 1409                                             + (m_ImageAbstract.Central[loop-2]-m_ImageAbstract.Central[loop-3]);
// 1410                     }
// 1411                     if((process_find_timer < constn_DeadLine_BeWith)&&(loop > m_ImageAbstract.Start_Y_Position))
// 1412                     {
// 1413                         if(centralPos_n_add_one < m_ImageAbstract.Central[loop-1]){centralPos_n_add_one = m_ImageAbstract.Central[loop-1];}
// 1414                     }
// 1415                     if((loop > TurningBeacauseVeryLittle.y_end)&&(loop < lastLine)&&(loop>2))
// 1416                     {
// 1417                         if(((m_ImageAbstract.Right[loop] < m_ImageAbstract.Right[loop+1]))
// 1418                           &&(255 != m_ImageAbstract.Right[loop])
// 1419                           &&(255 != m_ImageAbstract.Right[loop+1])) 
// 1420                         {
// 1421                             centralPos_n_add_one = m_ImageAbstract.Central[loop-1]
// 1422                                                  +(m_ImageAbstract.Central[loop-2]-m_ImageAbstract.Central[loop-3]);
// 1423                         }
// 1424                     }
// 1425                     if(centralPos_n_add_one > 181){centralPos_n_add_one = 181;}
// 1426                     if(centralPos_n_add_one < 3){centralPos_n_add_one = 3;}
// 1427                     centralPos = centralPos_n_add_one;
// 1428                     m_ImageAbstract.Central[loop] = centralPos;
// 1429                 }
// 1430                 
// 1431             }else
// 1432             if(Sid_Right == TurningBeacauseVeryLittle.side)
??v_ImageCut_131:
        LDRB     R3,[SP, #+36]
        CMP      R3,#+20
        BNE.W    ??v_ImageCut_132
// 1433             {
// 1434                 if(255 != m_ImageAbstract.Left[loop])
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R3,??v_ImageCut_67+0xC
        ADDS     R3,R0,R3
        LDRB     R3,[R3, #+44]
        CMP      R3,#+255
        BEQ.W    ??v_ImageCut_132
// 1435                 {
// 1436                     centralPos_n_add_one = (sint16)(m_ImageAbstract.Left[loop] + m_ImageAbstract.width[loop]*0.45f);//Ïàµ±ÓÚ²¹±ß
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R3,??v_ImageCut_67+0xC
        ADDS     R3,R0,R3
        LDRB     R3,[R3, #+44]
        VMOV     S0,R3
        VCVT.F32.U32 S0,S0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R3,??v_ImageCut_67+0xC
        ADDS     R3,R3,R0, LSL #+1
        LDRSH    R3,[R3, #+344]
        VMOV     S1,R3
        VCVT.F32.S32 S1,S1
        VLDR.W   S2,??v_ImageCut_133  ;; 0x3ee66666
        VMLA.F32 S0,S1,S2
        VCVT.S32.F32 S0,S0
        VMOV     R3,S0
// 1437                     if((centralPos_n_add_one < centralPos)&&(loop > m_ImageAbstract.Start_Y_Position+2))//±¾´ÎÊýÖµÔÚÉÏ´ÎÊýÖµµÄ×ó±ß
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R3,R1
        BGE.N    ??v_ImageCut_134
        LDR.W    R1,??v_ImageCut_67+0xC
        LDRB     R1,[R1, #+464]
        ADDS     R1,R1,#+2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R1,R0
        BGE.N    ??v_ImageCut_134
// 1438                     {
// 1439                         centralPos_n_add_one = m_ImageAbstract.Central[loop-1]//Â·¾¶µÄPD×÷ÓÃ
// 1440                                             + (m_ImageAbstract.Central[loop-2]-m_ImageAbstract.Central[loop-3]);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??v_ImageCut_67+0xC
        ADDS     R1,R0,R1
        LDRB     R1,[R1, #+163]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R3,??v_ImageCut_67+0xC
        ADDS     R3,R0,R3
        LDRB     R3,[R3, #+162]
        UXTAB    R1,R3,R1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R3,??v_ImageCut_67+0xC
        ADDS     R3,R0,R3
        LDRB     R3,[R3, #+161]
        SUBS     R3,R1,R3
// 1441                     }
// 1442                     if((process_find_timer < constn_DeadLine_BeWith)&&(loop > m_ImageAbstract.Start_Y_Position))
??v_ImageCut_134:
        LDRB     R1,[SP, #+9]
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R8,R1
        BGE.N    ??v_ImageCut_135
        LDR.W    R1,??v_ImageCut_67+0xC
        LDRB     R1,[R1, #+464]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R1,R0
        BCS.N    ??v_ImageCut_135
// 1443                     {
// 1444                         if(centralPos_n_add_one < m_ImageAbstract.Central[loop-1]){centralPos_n_add_one = m_ImageAbstract.Central[loop-1];}
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??v_ImageCut_67+0xC
        ADDS     R1,R0,R1
        LDRB     R1,[R1, #+163]
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R3,R1
        BGE.N    ??v_ImageCut_135
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??v_ImageCut_67+0xC
        ADDS     R1,R0,R1
        LDRB     R3,[R1, #+163]
// 1445                     }
// 1446                     if((loop > TurningBeacauseVeryLittle.y_end)&&(loop < lastLine)&&(loop>2))
??v_ImageCut_135:
        LDRB     R1,[SP, #+38]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R1,R0
        BCS.N    ??v_ImageCut_136
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R0,R2
        BCS.N    ??v_ImageCut_136
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+3
        BLT.N    ??v_ImageCut_136
// 1447                     {
// 1448                         if(((m_ImageAbstract.Left[loop] > m_ImageAbstract.Left[loop+1])&&(loop>2))
// 1449                           &&(255 != m_ImageAbstract.Left[loop])
// 1450                           &&(255 != m_ImageAbstract.Left[loop+1])) 
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??v_ImageCut_67+0xC
        ADDS     R1,R0,R1
        LDRB     R1,[R1, #+45]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R4,??v_ImageCut_67+0xC
        ADDS     R4,R0,R4
        LDRB     R4,[R4, #+44]
        CMP      R1,R4
        BCS.N    ??v_ImageCut_136
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+3
        BLT.N    ??v_ImageCut_136
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??v_ImageCut_67+0xC
        ADDS     R1,R0,R1
        LDRB     R1,[R1, #+44]
        CMP      R1,#+255
        BEQ.N    ??v_ImageCut_136
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??v_ImageCut_67+0xC
        ADDS     R1,R0,R1
        LDRB     R1,[R1, #+45]
        CMP      R1,#+255
        BEQ.N    ??v_ImageCut_136
// 1451                         {
// 1452                             centralPos_n_add_one = m_ImageAbstract.Central[loop-1]
// 1453                                                  +(m_ImageAbstract.Central[loop-2]-m_ImageAbstract.Central[loop-3]);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??v_ImageCut_67+0xC
        ADDS     R1,R0,R1
        LDRB     R1,[R1, #+163]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R3,??v_ImageCut_67+0xC
        ADDS     R3,R0,R3
        LDRB     R3,[R3, #+162]
        UXTAB    R1,R3,R1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R3,??v_ImageCut_67+0xC
        ADDS     R3,R0,R3
        LDRB     R3,[R3, #+161]
        SUBS     R3,R1,R3
// 1454                         }
// 1455                     }
// 1456                     if(centralPos_n_add_one > 181){centralPos_n_add_one = 181;}
??v_ImageCut_136:
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        CMP      R3,#+182
        BLT.N    ??v_ImageCut_137
        MOVS     R3,#+181
// 1457                     if(centralPos_n_add_one < 3){centralPos_n_add_one = 3;}
??v_ImageCut_137:
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        CMP      R3,#+3
        BGE.N    ??v_ImageCut_138
        MOVS     R3,#+3
// 1458                     centralPos = centralPos_n_add_one;
??v_ImageCut_138:
        MOVS     R1,R3
// 1459                     m_ImageAbstract.Central[loop] = centralPos;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R3,??v_ImageCut_67+0xC
        ADDS     R3,R0,R3
        STRB     R1,[R3, #+164]
// 1460                 }
// 1461             }
??v_ImageCut_132:
        ADDS     R0,R0,#+1
??v_ImageCut_91:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        CMP      R0,R11
        BCS.W    ??v_ImageCut_89
        LDRB     R3,[SP, #+36]
        CMP      R3,#+10
        BNE.W    ??v_ImageCut_131
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R3,??v_ImageCut_67+0xC
        ADDS     R3,R0,R3
        LDRB     R3,[R3, #+104]
        CMP      R3,#+255
        BEQ.N    ??v_ImageCut_132
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R3,??v_ImageCut_67+0xC
        ADDS     R3,R0,R3
        LDRB     R3,[R3, #+104]
        VMOV     S0,R3
        VCVT.F32.U32 S0,S0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R3,??v_ImageCut_67+0xC
        ADDS     R3,R3,R0, LSL #+1
        LDRSH    R3,[R3, #+344]
        VMOV     S1,R3
        VCVT.F32.S32 S1,S1
        VLDR.W   S2,??v_ImageCut_133  ;; 0x3ee66666
        B.N      ??v_ImageCut_139
        DATA
??v_ImageCut_133:
        DC32     0x3ee66666
        THUMB
??v_ImageCut_139:
        VMLS.F32 S0,S1,S2
        VCVT.S32.F32 S0,S0
        VMOV     R3,S0
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        CMP      R1,R3
        BGE.N    ??v_ImageCut_140
        LDR.N    R1,??v_ImageCut_67+0xC
        LDRB     R1,[R1, #+464]
        ADDS     R1,R1,#+2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R1,R0
        BGE.N    ??v_ImageCut_140
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??v_ImageCut_67+0xC
        ADDS     R1,R0,R1
        LDRB     R1,[R1, #+163]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R3,??v_ImageCut_67+0xC
        ADDS     R3,R0,R3
        LDRB     R3,[R3, #+162]
        UXTAB    R1,R3,R1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R3,??v_ImageCut_67+0xC
        ADDS     R3,R0,R3
        LDRB     R3,[R3, #+161]
        SUBS     R3,R1,R3
??v_ImageCut_140:
        LDRB     R1,[SP, #+9]
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R8,R1
        BGE.N    ??v_ImageCut_141
        LDR.N    R1,??v_ImageCut_67+0xC
        LDRB     R1,[R1, #+464]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R1,R0
        BCS.N    ??v_ImageCut_141
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??v_ImageCut_67+0xC
        ADDS     R1,R0,R1
        LDRB     R1,[R1, #+163]
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R3,R1
        BGE.N    ??v_ImageCut_141
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??v_ImageCut_67+0xC
        ADDS     R1,R0,R1
        LDRB     R3,[R1, #+163]
??v_ImageCut_141:
        LDRB     R1,[SP, #+38]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R1,R0
        BCS.N    ??v_ImageCut_142
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R0,R2
        BCS.N    ??v_ImageCut_142
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+3
        BLT.N    ??v_ImageCut_142
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??v_ImageCut_67+0xC
        ADDS     R1,R0,R1
        LDRB     R1,[R1, #+104]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R4,??v_ImageCut_67+0xC
        ADDS     R4,R0,R4
        LDRB     R4,[R4, #+105]
        CMP      R1,R4
        BCS.N    ??v_ImageCut_142
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??v_ImageCut_67+0xC
        ADDS     R1,R0,R1
        LDRB     R1,[R1, #+104]
        CMP      R1,#+255
        BEQ.N    ??v_ImageCut_142
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??v_ImageCut_67+0xC
        ADDS     R1,R0,R1
        LDRB     R1,[R1, #+105]
        CMP      R1,#+255
        BEQ.N    ??v_ImageCut_142
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??v_ImageCut_67+0xC
        ADDS     R1,R0,R1
        LDRB     R1,[R1, #+163]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R3,??v_ImageCut_67+0xC
        ADDS     R3,R0,R3
        LDRB     R3,[R3, #+162]
        UXTAB    R1,R3,R1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R3,??v_ImageCut_67+0xC
        ADDS     R3,R0,R3
        LDRB     R3,[R3, #+161]
        SUBS     R3,R1,R3
??v_ImageCut_142:
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        CMP      R3,#+182
        BLT.N    ??v_ImageCut_143
        MOVS     R3,#+181
??v_ImageCut_143:
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        CMP      R3,#+3
        BGE.N    ??v_ImageCut_144
        MOVS     R3,#+3
??v_ImageCut_144:
        MOVS     R1,R3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R3,??v_ImageCut_67+0xC
        ADDS     R3,R0,R3
        STRB     R1,[R3, #+164]
        B.N      ??v_ImageCut_132
// 1462         }
// 1463 
// 1464         //ÕâÀïµÃ×ö¸ö¼ÌÐøÑ­¼£
// 1465         //TurningBeacauseVeryLittle.isHappened = 0;
// 1466     }
// 1467     
// 1468     /*
// 1469     if(255 != LastSide.Last_BlackLine_suddenlyHappen)//·ÀÖ¹15cmÔÚÏß¿ªÍâ
// 1470     {
// 1471         end_y_ctr = LastSide.Last_BlackLine_suddenlyHappen;
// 1472         LastSide.Last_BlackLine_suddenlyHappen = 255;
// 1473     }
// 1474     */
// 1475     /*
// 1476     do//²¹ÏßÕâÀïÓÐºÜ´óµÄÎÊÌâ
// 1477     {
// 1478         uint8 isLostDouble = 0;
// 1479         uint8 LostStart_Ypos = 0;
// 1480         uint8 isLostFirstFindAnother = 0;
// 1481         for(uint8 loop = m_ImageAbstract.Start_Y_Position;loop <= end_y_ctr;loop++)
// 1482         {
// 1483             isLostFirstFindAnother = 1;//Ç°ÒÆ
// 1484             if(255 == m_ImageAbstract.Left[loop])
// 1485             {
// 1486                 if(255 == m_ImageAbstract.Right[loop])//Ò²Ðí¿ÉÒÔ½«ÕâÀïµÄµ¥¶ÀÌá³ö£¬»òÕß²¹±ßÏß
// 1487                 {
// 1488                     isLostFirstFindAnother = 0;//
// 1489                     if(0 == isLostDouble)
// 1490                     {
// 1491                         isLostDouble = 1;
// 1492                         if(m_ImageAbstract.Start_Y_Position != loop){LostStart_Ypos = loop - 1;}
// 1493                         else{LostStart_Ypos = loop;}//ÕâÁ½´¦Ìá¹©¶ªÊ§µÄYÎ»ÖÃ
// 1494                     }
// 1495                 }
// 1496                 else//×ó²à¶ªÏß
// 1497                 {
// 1498                 }
// 1499             }
// 1500             else
// 1501             {
// 1502                 if(255 == m_ImageAbstract.Right[loop])//ÓÒ²à¶ªÏß
// 1503                 {
// 1504                 }
// 1505                 else//Ë«±ß¶¼´æÔÚ
// 1506                 {
// 1507                 }
// 1508             }//»ù±¾ÅÐ¶Ï½áÊø
// 1509             if((1 == isLostDouble)&&(1 == isLostFirstFindAnother))
// 1510             {
// 1511                 isLostDouble = 0;
// 1512                 float K = (m_ImageAbstract.Central[loop] - m_ImageAbstract.Central[LostStart_Ypos])/(loop - LostStart_Ypos);
// 1513                 float B = m_ImageAbstract.Central[LostStart_Ypos] - K * LostStart_Ypos;
// 1514                 
// 1515                 for(uint8 inter = LostStart_Ypos;inter < loop;inter++)//²¹Ïß
// 1516                 {//Õâ¶Î´úÂëÔø¾­³öÁËÎÊÌâ => 6.3·¢ÏÖÁË
// 1517                     sint16 central_signed = (sint16)(B + K * inter);//ÖÐÏß´ø·ûºÅ
// 1518                     if(central_signed > constNum_X_MaxCounter - constn_xFindJumpLine_Width)//ÒÔÏÂÒ²ÊÇÏÞÖÆ
// 1519                     {central_signed = constNum_X_MaxCounter - constn_xFindJumpLine_Width;}
// 1520                     if(central_signed < constn_xFindJumpLine_Width)
// 1521                     {central_signed = constn_xFindJumpLine_Width;}//ÒÔÉÏÎªÏÞÖÆ·ù
// 1522                     m_ImageAbstract.Central[inter] = central_signed;//»æÍ¼
// 1523                 }
// 1524                 
// 1525             }//²¹Ïß½áÊø
// 1526         }//=======================================================================////
// 1527     }while(0);
// 1528     */
// 1529     /*
// 1530     m_ImageAbstract.BlackBarHeight_Start = BlackBarAbout10cm.startLine;
// 1531     m_ImageAbstract.BlackBarHeight_End = BlackBarAbout10cm.LastWitdh_YaxisVal;
// 1532     if(BlackBarAbout10cm.startLine != BlackBarAbout10cm.LastWitdh_YaxisVal)
// 1533     {//Ö±½ÓºöÂÔÈ«²¿Ò»²àµÃÁË
// 1534         sint16 x_MidPos = 0.f;
// 1535         for(uint8 loop = BlackBarAbout10cm.startLine;loop < BlackBarAbout10cm.LastWitdh_YaxisVal;loop++)
// 1536         {
// 1537             if(Sid_Left == BlackBarAbout10cm.TurnSide)//×ó²àÓÐÐ§
// 1538             {
// 1539                 x_MidPos = (sint16)(m_ImageAbstract.Left[loop] + m_ImageAbstract.width[loop] * 0.45);
// 1540             }
// 1541             if(Sid_Right == BlackBarAbout10cm.TurnSide)//×ó²àÓÐÐ§
// 1542             {
// 1543                 x_MidPos = (sint16)(m_ImageAbstract.Right[loop] - m_ImageAbstract.width[loop] * 0.45);
// 1544             }
// 1545             if(x_MidPos > 184 - 3){x_MidPos = 184 - 3;}
// 1546             if(x_MidPos < 3){x_MidPos = 3;}
// 1547             m_ImageAbstract.Central[loop] = x_MidPos;
// 1548         }
// 1549     }
// 1550     */
// 1551     
// 1552 
// 1553     uint8 isMayBeHappenedHazard = 0;//¿ÉÄÜ·¢ÉúÁËÕÏ°­
??v_ImageCut_89:
        MOVS     R1,#+0
// 1554     uint8 isHaveLonlyLine = 0;
        MOVS     R4,#+0
// 1555     m_ImageTesting.isOccurLonlyLineBreak = 0;
        LDR.N    R0,??v_ImageCut_67
        MOVS     R2,#+0
        STRB     R2,[R0, #+0]
// 1556     uint8 firstAndSecond_isBeenDrawing = 0;
        MOVS     R10,#+0
// 1557     do//½øÐÐµ¥ÏßÓëÕÏ°­µÄÇø·Ö
// 1558     {//ËùÓÐµÄ±ßÏßÈ«¶¼ÓÐÍùÁ½±ßËÑË÷=>ºÚ¿é¡¢ÕÏ°­¡¢µ¥ÏßÈ«¶¼ÓÐÁ½²àµÄÏß
// 1559         //ÏÖÔÚÕâÀïÄÜºÜÃ÷È·µØÕÒ³öµ¥Ïß³öÏÖµÄµØ·½£¬µ«È´²»ÄÜ×¼È·µØÅÐ¶Ï³öµ¥ÏßÓ¦¸Ã×ßÏòµÄµØ·½
// 1560         //²¢·Çµ¥ÏßÎÞ·¨Ê¶±ð£¬¶øÊÇµ¥ÏßÍêÈ«¶ªÊ§µÄÊ±ºò£¬¶æ»ú»á°ÚÕý£¬ÕâÀïÐèÒªÐÞ¸Ä£¬»¹ÓÐÒ»¸ö¾ÍÊÇ³öµ¥ÏßµÄÊ±ºòµÄ½ØÖ¹ÎÊÌâ
// 1561         //ÂÛÈçºÎË³³©³öµ¥Ïß£¨£¿£©
// 1562         //´¦Àíµ¥ÏßÇ°µÄÈ«°×ÇøÓò
// 1563         //u_LonlyLine thisTimeStatus = LLT_NaN;
// 1564         /*if(1 == TurningBeacauseVeryLittle.isHappened){break;}*/
// 1565         
// 1566         
// 1567         
// 1568         uint8 LonlyLineStartLine = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
// 1569         uint8 LonlyLineOccurCounter = 0;//µ¥Ïß·¢Éú´ÎÊý¼ÆÊýÆ÷
        MOVS     R2,#+0
// 1570         uint8 temp_x_startPos_central[60];
// 1571         
// 1572         sint16 central_Pos_number = m_ImageAbstract.LastFrame_CentralPos;
        LDR.N    R0,??v_ImageCut_67+0xC
        LDRB     R5,[R0, #+468]
// 1573         //ÐèÒªµÚÒ»´Î¶Ï¶¨³õÊ¼µÄPosNumber£¬·ÀÖ¹ÎóÅÐ
// 1574         sint16 left_Pos_number_CUT = 0;sint16 right_Pos_number_CUT = 0;
        MOVS     R7,#+0
        MOVS     R0,#+0
// 1575         //uint8 isOccurLonlyLine = 0;
// 1576         sint8 finderYtimeCounter = -1;
        MOVS     R8,#-1
// 1577         //uint8 LonlyLineisHave_1isL_2isR = 0;
// 1578         
// 1579         uint8 firstTimeCut2LonlyLine = 255;
        MOV      R9,#+255
// 1580         uint8 isHaveLonlyLineOnce = 0;
        MOVS     R3,#+0
// 1581         
// 1582         /*uint8 isNeedFindTheNearestsides = 1;*/
// 1583         uint8 leftSide_whoisnearestwithRight = 0;
        MOVS     R12,#+0
// 1584         uint8 rightSide_whoisnearestwithLeft = 255;
        MOV      LR,#+255
// 1585         //uint8 lastOccurFilter_Line = 255;
// 1586         for(uint8 yCounter = m_ImageAbstract.Start_Y_Position;yCounter < end_y_ctr;yCounter ++)
        LDR.N    R6,??v_ImageCut_67+0xC
        LDRB     R6,[R6, #+464]
        B.N      ??v_ImageCut_145
// 1587         {//Ö»ÒªÊÇÓµÓÐÁËÌø±ä¶¼½øÐÐÁËÊ¶±ð
// 1588             
// 1589             if(m_ImageAbstract.Start_Y_Position != yCounter)
// 1590             {
// 1591                 left_Pos_number_CUT  = m_ImageAbstract.Central[yCounter-1]
// 1592                                      - m_ImageAbstract.width[yCounter]*0.3;
// 1593                 right_Pos_number_CUT = m_ImageAbstract.Central[yCounter-1]
// 1594                                      + m_ImageAbstract.width[yCounter]*0.3;
// 1595                 if(__ABS(m_ImageAbstract.Central[yCounter] - m_ImageAbstract.Central[yCounter-1])
// 1596                  >= m_ImageAbstract.width[yCounter]/4
// 1597                    )
// 1598                 {
// 1599                     if(m_ImageAbstract.Central[yCounter]<m_ImageAbstract.Central[yCounter-1])
// 1600                     {
// 1601                         right_Pos_number_CUT = 181;
// 1602                     }
// 1603                     else
// 1604                     {
// 1605                         left_Pos_number_CUT = 3;
// 1606                     }
// 1607                 }
// 1608             }
// 1609             else
// 1610             {
// 1611                 left_Pos_number_CUT  = 3;
// 1612                 right_Pos_number_CUT = 181;
// 1613             }
// 1614             
// 1615             if(left_Pos_number_CUT>181){left_Pos_number_CUT=181;}
// 1616             if(left_Pos_number_CUT<3){left_Pos_number_CUT=3;}
// 1617             if(right_Pos_number_CUT>181){right_Pos_number_CUT=181;}
// 1618             if(right_Pos_number_CUT<3){right_Pos_number_CUT=3;}
// 1619             m_ImageTesting.hazardvaildLine[yCounter] = left_Pos_number_CUT;
// 1620             //central_Pos_number = m_ImageAbstract.Central[yCounter];
// 1621             if(yCounter > m_ImageAbstract.Start_Y_Position)
// 1622             {
// 1623                 if(Sid_None == TrkSide[yCounter]){TrkSide[yCounter] = TrkSide[yCounter-1];}
// 1624             }//Ôö¼ÓÈÏ¶¨
// 1625             //m_ImageTesting.is140double130left150right160none_aboutUp[yCounter] = 80;
// 1626             /*m_ImageTesting.is140double130left150right160none_aboutUp[yCounter]
// 1627                 = (uint8)(TrkSide[yCounter]);*/
// 1628             
// 1629             
// 1630             temp_x_startPos_central[yCounter] = m_ImageAbstract.Central[yCounter];//ÔÝ´æÓÃÓÚ»Ö¸´
// 1631             isHaveLonlyLineOnce = 0;
// 1632             //isHaveLonlyLine = 0;//¸üÐÂisHaveLonlyLine£¬ÒÔ±ãÓÚ¼ÆÊý
// 1633             finderYtimeCounter++;//·ÀÖ¹±»countinueµô
// 1634 
// 1635             if((255 == m_ImageAbstract.Left_UpBlack2White[yCounter])&&
// 1636                (255 == m_ImageAbstract.Right_UpBlack2White[yCounter])
// 1637                &&(yCounter > m_ImageAbstract.Start_Y_Position))    
// 1638             {//ÅÙÈ¥ÉÏÃæÕâÑùµÄÇé¿ö£¬¶¼ÊÇ¿ÉÄÜÕÒµ½ÁËµ¥Ïß
// 1639                 sint16 should_inThis;
// 1640                 if(finderYtimeCounter > 1)
// 1641                 {
// 1642                     if(finderYtimeCounter > 2)//ÕâÀï¶Ô±¾´ÎµÄÌø³ö½øÐÐÃèÊö
// 1643                     {////µ¥Ïß´úÂëµÄ×î¹Ø¼ü²¿·Ö
// 1644                         should_inThis = m_ImageAbstract.Central[yCounter-1] + //ËùÓÐÎÊÌâÓ¦¸ÃÔÚÕâÀï
// 1645                                 (m_ImageAbstract.Central[yCounter-2] - m_ImageAbstract.Central[yCounter-3]);
// 1646                     }
// 1647                     else
// 1648                     {
// 1649                         should_inThis = m_ImageAbstract.Central[yCounter-1];
// 1650                     }
// 1651                     
// 1652                     if(should_inThis < 3){should_inThis = 3;}
// 1653                     if(should_inThis > 181){should_inThis = 181;}
// 1654                     
// 1655                     if((__ABS(should_inThis - m_ImageAbstract.Central[yCounter])>m_ImageAbstract.width[yCounter]/9)
// 1656                      &&((1 == isHaveLonlyLineStartCorner)||(1 == isHaveLonlyLine))
// 1657                      )
// 1658                     {//¸ÄÉÆÕâÀïµÄÌõ¼þ=>ÕâÀïµÄÏÞÖÆÌõ¼þÓ¦¸Ã¸üÎªÃ÷È·//7cm//9cmÓÖºÎ·Á//Õâ¿é¸Ä³É5cm=>7cm
// 1659 
// 1660 #define DE_isLonlyLinePoint(y)          ((Sid_LonlyLine == TrkSide[y])||(Sid_DoubleBlack == TrkSide[y]))
// 1661                        
// 1662                         if(
// 1663         (DE_isLonlyLinePoint(((yCounter-4)>m_ImageAbstract.Start_Y_Position)?yCounter-4:m_ImageAbstract.Start_Y_Position+1))
// 1664      || (DE_isLonlyLinePoint(((yCounter-3)>m_ImageAbstract.Start_Y_Position)?yCounter-3:m_ImageAbstract.Start_Y_Position+1))
// 1665      || (DE_isLonlyLinePoint(((yCounter-2)>m_ImageAbstract.Start_Y_Position)?yCounter-2:m_ImageAbstract.Start_Y_Position+1))
// 1666      || (DE_isLonlyLinePoint(((yCounter-1)>m_ImageAbstract.Start_Y_Position)?yCounter-1:m_ImageAbstract.Start_Y_Position+1))
// 1667      /*|| (DE_isLonlyLinePoint((yCounter)>m_ImageAbstract.Start_Y_Position?yCounter:m_ImageAbstract.Start_Y_Position+1))
// 1668      || (DE_isLonlyLinePoint((yCounter+1)<m_ImageAbstract.Last_Y_Position?yCounter+1:m_ImageAbstract.Last_Y_Position-1))
// 1669      || (DE_isLonlyLinePoint((yCounter+2)<m_ImageAbstract.Last_Y_Position?yCounter+2:m_ImageAbstract.Last_Y_Position-1))
// 1670      || (DE_isLonlyLinePoint((yCounter+3)<m_ImageAbstract.Last_Y_Position?yCounter+3:m_ImageAbstract.Last_Y_Position-1))
// 1671      || (DE_isLonlyLinePoint((yCounter+5)<m_ImageAbstract.Last_Y_Position?yCounter+4:m_ImageAbstract.Last_Y_Position-1))*/
// 1672          )
// 1673                         {
// 1674                         m_ImageTesting.is140double130left150right160none_aboutUp[yCounter] += 100;
// 1675                         m_ImageTesting.isOccurLonlyLineBreak = 1;
// 1676                         end_y_ctr = yCounter;
// 1677                         isMayBeHappenedHazard = 1;//ÕâÀï¿ÉÄÜ·¢ÉúÁËÕÏ°­=>Í¨¹ýÕâÀïÅÐ¶¨
// 1678                         break;//ÕâÀïÓ¦µ±Ìø³ö
// 1679                         }
// 1680                         TurnOnTheLonlyLine = 1;
// 1681                     }
// 1682                 }
// 1683                 else
// 1684                 {//ÕâÀïÊÇ0 1Á½Ì¬
// 1685                     //Ê×ÏÈµÃ¸ù¾ÝÉÏ´Î£¬ÊÇ²»ÊÇµ¥Ïß£¬ÔÙ¸ù¾Ýµ±Ç°µÄÖÐÏßÊÇ²»ÊÇ£¬Ö»ÓÐÍ¨¹ýÕâÁ½´¦´¦Àí
// 1686                     if((0 == finderYtimeCounter)&&(1==m_ImageAbstract.LonlyLine_isXposLonlyLineFirstLine))
// 1687                     {
// 1688                         if(__ABS(m_ImageAbstract.Central[m_ImageAbstract.Start_Y_Position] - 
// 1689                            m_ImageAbstract.LonlyLine_firstLineXpos)
// 1690                           >m_ImageAbstract.width[m_ImageAbstract.Start_Y_Position]/3)
// 1691                         {
// 1692                             if(255 != m_ImageAbstract.Left[m_ImageAbstract.Start_Y_Position])
// 1693                             {
// 1694                                 if(255 != m_ImageAbstract.Right[m_ImageAbstract.Start_Y_Position])
// 1695                                 {
// 1696                                     
// 1697                                 }
// 1698                                 else
// 1699                                 {
// 1700                                     m_ImageAbstract.Central[m_ImageAbstract.Start_Y_Position]
// 1701                                   = m_ImageAbstract.Left[m_ImageAbstract.Start_Y_Position];
// 1702                                   isHaveLonlyLine = 1;
// 1703                                   isHaveLonlyLineOnce = 1;
// 1704                                   TrkSide[yCounter] = Sid_LonlyLine;
// 1705                                   //LonlyLine_Counter ++;
// 1706                                   firstAndSecond_isBeenDrawing = 1;
// 1707                                 }
// 1708                             }
// 1709                             else
// 1710                             {
// 1711                                 if(255 != m_ImageAbstract.Right[m_ImageAbstract.Start_Y_Position])
// 1712                                 {
// 1713                                     m_ImageAbstract.Central[m_ImageAbstract.Start_Y_Position]
// 1714                                   = m_ImageAbstract.Right[m_ImageAbstract.Start_Y_Position];
// 1715                                   isHaveLonlyLine = 1;isHaveLonlyLineOnce = 1;
// 1716                                   TrkSide[yCounter] = Sid_LonlyLine;
// 1717                                   //LonlyLine_Counter ++;
// 1718                                   firstAndSecond_isBeenDrawing = 1;
// 1719                                 }
// 1720                                 else
// 1721                                 {
// 1722                                     if((255 == m_ImageAbstract.Left_UpBlack2White[m_ImageAbstract.Start_Y_Position])
// 1723                                      &&(255 == m_ImageAbstract.Right_UpBlack2White[m_ImageAbstract.Start_Y_Position]))
// 1724                                     {
// 1725                                         m_ImageAbstract.Central[m_ImageAbstract.Start_Y_Position]
// 1726                                       = m_ImageAbstract.LastFrame_CentralPos;
// 1727                                       /*
// 1728                                         isHaveLonlyLine = 1;isHaveLonlyLineOnce = 1;
// 1729                                         TrkSide[yCounter] = Sid_LonlyLine;
// 1730                                         LonlyLine_Counter ++;*/
// 1731                                         firstAndSecond_isBeenDrawing = 1;
// 1732                                     }
// 1733                                 }
// 1734                             }//¶à´Îif½áÊø
// 1735                         }
// 1736                     }
// 1737                     if((1 == finderYtimeCounter)&&(1==m_ImageAbstract.LonlyLine_isXposLonlyLineSecondLine))
// 1738                     {
// 1739                         if(__ABS(m_ImageAbstract.Central[m_ImageAbstract.Start_Y_Position+1] - 
// 1740                            m_ImageAbstract.LonlyLine_secondLineXpos)
// 1741                           >m_ImageAbstract.width[m_ImageAbstract.Start_Y_Position+1]/3)
// 1742                         {
// 1743                             if(255 != m_ImageAbstract.Left[m_ImageAbstract.Start_Y_Position+1])
// 1744                             {
// 1745                                 if(255 != m_ImageAbstract.Right[m_ImageAbstract.Start_Y_Position+1])
// 1746                                 {
// 1747                                     
// 1748                                 }
// 1749                                 else
// 1750                                 {
// 1751                                     m_ImageAbstract.Central[m_ImageAbstract.Start_Y_Position+1]
// 1752                                   = m_ImageAbstract.Left[m_ImageAbstract.Start_Y_Position+1];
// 1753                                   isHaveLonlyLine = 1;isHaveLonlyLineOnce = 1;
// 1754                                   TrkSide[m_ImageAbstract.Start_Y_Position+1] = Sid_LonlyLine;
// 1755                                   //LonlyLine_Counter ++;
// 1756                                   firstAndSecond_isBeenDrawing = 1;
// 1757                                 }
// 1758                             }
// 1759                             else
// 1760                             {
// 1761                                 if(255 != m_ImageAbstract.Right[m_ImageAbstract.Start_Y_Position+1])
// 1762                                 {
// 1763                                     m_ImageAbstract.Central[m_ImageAbstract.Start_Y_Position+1]
// 1764                                   = m_ImageAbstract.Right[m_ImageAbstract.Start_Y_Position+1];
// 1765                                   isHaveLonlyLine = 1;isHaveLonlyLineOnce = 1;
// 1766                                   TrkSide[m_ImageAbstract.Start_Y_Position] = Sid_LonlyLine;
// 1767                                   //LonlyLine_Counter ++;
// 1768                                   firstAndSecond_isBeenDrawing = 1;
// 1769                                 }
// 1770                                 else
// 1771                                 {
// 1772                                     if((255 == m_ImageAbstract.Left_UpBlack2White[m_ImageAbstract.Start_Y_Position+1])
// 1773                                      &&(255 == m_ImageAbstract.Right_UpBlack2White[m_ImageAbstract.Start_Y_Position+1]))
// 1774                                     {
// 1775                                         m_ImageAbstract.Central[m_ImageAbstract.Start_Y_Position+1]
// 1776                                       = m_ImageAbstract.Central[m_ImageAbstract.Start_Y_Position];
// 1777                                       /*  isHaveLonlyLine = 1;isHaveLonlyLineOnce = 1;
// 1778                                         TrkSide[m_ImageAbstract.Start_Y_Position+1] = Sid_LonlyLine;
// 1779                                         LonlyLine_Counter ++;*/
// 1780                                         firstAndSecond_isBeenDrawing = 1;
// 1781                                     }
// 1782                                 }
// 1783                             }//¶à´Îif½áÊø
// 1784                         }
// 1785                     }
// 1786                 }
// 1787                 //µ±¿í¶È¼«Ð¡µÄÊ±ºò£¬µ¥ÏßµÄ¿í¶È×ÔÈ»¾Í»á±ä´ó£¬ÕâÊ±ºò£¬ÐèÒªÖ÷¶¯ÒÆ¶¯=>Ò²¾ÍÊÇ0/1 == finderYtimeCounterµÄÊ±ºò
// 1788                 /*
// 1789                 if(1 == isNeedFindTheNearestsides)
// 1790                 {
// 1791                     if(leftSide_whoisnearestwithRight < m_ImageAbstract.Left[yCounter])//===
// 1792                     {leftSide_whoisnearestwithRight = m_ImageAbstract.Left[yCounter];}
// 1793                     if(rightSide_whoisnearestwithLeft > m_ImageAbstract.Right[yCounter])
// 1794                     {rightSide_whoisnearestwithLeft = m_ImageAbstract.Right[yCounter];}//===
// 1795                 }
// 1796                 */
// 1797                 //finderYtimeCounter = 0;//ÕâÒ»²½ÊÇ¸ÉÉ¶µÄ£¿£¿£¿×¢ÊÍµô
// 1798                 central_Pos_number = m_ImageAbstract.Central[yCounter];//ÎÊÌâÔÚ²»¾­ÒâµÄ¹Õ½Ç£¬ÇáÇáßµÃÅ
// 1799                 continue;//Çå³ýÒÑ¾­ËÑÑ°µÄÊ±¼ä¼ÆÊý£¬±£Ö¤ÏÂ´ÎµÄ¼ÆÊý£¬²¢¼ÌÐø
// 1800             }//ÔÚÉÏÃæÕâÖÖÇé¿öÀïÃæ·ÖÎö×î×ó×îÓÒµÄÇé¿ö
// 1801             else
// 1802             {
// 1803                 //isNeedFindTheNearestsides = 0;
// 1804             }
// 1805             //else{thisFrameisHaveLonlyLine = 1;}//Õâ¸öÒÑ¾­ÓÐÁËµ¥Ïß
// 1806             if(255 == firstTimeCut2LonlyLine){firstTimeCut2LonlyLine = yCounter;}//¼ÇÂ¼µÚÒ»´ÎÇÐÈëÈüµÀµÄÊ±¼ä
// 1807             uint8 LeftCut = 0;uint8 RightCut = 0;
// 1808             
// 1809             
// 1810             
// 1811             
// 1812             LeftCut = 0;RightCut = 0;
// 1813             if((255 != m_ImageAbstract.Left_UpBlack2White[yCounter])
// 1814              &&(left_Pos_number_CUT <= m_ImageAbstract.Left_UpBlack2White[yCounter])
// 1815              &&(right_Pos_number_CUT>= m_ImageAbstract.Left_UpBlack2White[yCounter]))
// 1816             {
// 1817                 LeftCut = 1;
// 1818                 //isOccurLonlyLine = 1;
// 1819                 central_Pos_number = 
// 1820                (m_ImageAbstract.Left[yCounter] + m_ImageAbstract.Left_UpBlack2White[yCounter])/2;
// 1821             }
// 1822             if((255 != m_ImageAbstract.Right_UpBlack2White[yCounter])
// 1823              &&(left_Pos_number_CUT <= m_ImageAbstract.Right_UpBlack2White[yCounter])
// 1824              &&(right_Pos_number_CUT>= m_ImageAbstract.Right_UpBlack2White[yCounter]))
// 1825             {
// 1826                 RightCut = 1;
// 1827                 //isOccurLonlyLine = 1;
// 1828                 central_Pos_number = 
// 1829                (m_ImageAbstract.Right[yCounter] + m_ImageAbstract.Right_UpBlack2White[yCounter])/2;
// 1830             }
// 1831             //===============================ÕâÀï»¹Ã»ÓÐÓëÉÏÒ»´ÎµÄÐÅÏ¢£¬ÒÔ¼°ÏàÓ¦µÄÊÂÇé×öÅÐ¶Ï
// 1832             if(1 == (LeftCut + RightCut))
// 1833             {
// 1834                 //thisTimeStatus = LLT_Lasting;
// 1835                 showLonlyLineFindAboutUpSet = 'D';
// 1836                 //Ê±³£Ó¦¸ÃÔÚÕâÀï³öÏÖ£¬²»¹ýÒ²»á³öÏÖÆæ¹ÖµÄÇé¿ö
// 1837                 
// 1838                 /*É¾³ýÕâÀï»á³öÏÖÊ²Ã´ÎÊÌâÄØ£¿
// 1839                 if(m_ImageAbstract.Start_Y_Position == yCounter)
// 1840                 {
// 1841                     central_Pos_number = (uint8)(0.7*central_Pos_number + 0.3*m_ImageAbstract.Central[yCounter]);
// 1842                 }*/
// 1843                 isHaveLonlyLine = 1;isHaveLonlyLineOnce = 1;
// 1844                 TrkSide[yCounter] = Sid_LonlyLine;
// 1845                 //m_ImageTesting.hazardvaildLine[yCounter] = central_Pos_number;
// 1846                 //LonlyLine_Counter++;
// 1847                 //if(1==LeftCut){LonlyLineisHave_1isL_2isR = 1;}
// 1848                 //if(1==LeftCut){LonlyLineisHave_1isL_2isR = 2;}
// 1849             }
// 1850             else
// 1851             {
// 1852                 showLonlyLineFindAboutUpSet = 'N';
// 1853                 if((255!=m_ImageAbstract.Left_UpBlack2White[yCounter])&&(255!=m_ImageAbstract.Right_UpBlack2White[yCounter]))
// 1854                 {//Ë«±ß¶¼´æÔÚµ¥ÏßµÄ»°£¨£¿£©
// 1855                     central_Pos_number = (m_ImageAbstract.Left[yCounter] + m_ImageAbstract.Right[yCounter])/2;
// 1856                     uint8 centralViewer = (m_ImageAbstract.Central[yCounter]+m_ImageAbstract.LastFrame_CentralPos)/2;
// 1857                     if(m_ImageAbstract.Right[yCounter]-m_ImageAbstract.Left[yCounter]<=0.866*m_ImageAbstract.width[yCounter])
// 1858                     {
// 1859                         if((m_ImageAbstract.Right[yCounter]-centralViewer)<(m_ImageAbstract.Left[yCounter]-centralViewer))
// 1860                         {
// 1861                             //thisTimeStatus = LLT_Lasting;
// 1862                             isHaveLonlyLine = 1;isHaveLonlyLineOnce = 1;
// 1863                             //LonlyLine_Counter++;
// 1864                             TrkSide[yCounter] = Sid_LonlyLine;
// 1865                             //LonlyLineisHave_1isL_2isR = 2;
// 1866                             central_Pos_number = 
// 1867                             (m_ImageAbstract.Right[yCounter] + m_ImageAbstract.Right_UpBlack2White[yCounter])/2;
// 1868                         }
// 1869                         else
// 1870                         {
// 1871                             //thisTimeStatus = LLT_Lasting;
// 1872                             isHaveLonlyLine = 1;isHaveLonlyLineOnce = 1;
// 1873                             //LonlyLine_Counter++;
// 1874                             TrkSide[yCounter] = Sid_LonlyLine;
// 1875                             //LonlyLineisHave_1isL_2isR = 1;
// 1876                             central_Pos_number = 
// 1877                             (m_ImageAbstract.Left[yCounter] + m_ImageAbstract.Left_UpBlack2White[yCounter])/2;
// 1878                         }
// 1879                     }
// 1880                     else
// 1881                     {
// 1882                         if(yCounter>0)
// 1883                         {
// 1884                             if(255==m_ImageAbstract.Right[yCounter-1])
// 1885                             {
// 1886                                 //thisTimeStatus = LLT_Lasting;
// 1887                                 isHaveLonlyLine = 1;isHaveLonlyLineOnce = 1;
// 1888                                 //LonlyLine_Counter++;
// 1889                                 TrkSide[yCounter] = Sid_LonlyLine;
// 1890                                 //LonlyLineisHave_1isL_2isR = 2;
// 1891                                 central_Pos_number = 
// 1892                                 (m_ImageAbstract.Right[yCounter] + m_ImageAbstract.Right_UpBlack2White[yCounter])/2;
// 1893                             }
// 1894                             if(255==m_ImageAbstract.Left[yCounter-1])
// 1895                             {
// 1896                                 //thisTimeStatus = LLT_Lasting;
// 1897                                 isHaveLonlyLine = 1;isHaveLonlyLineOnce = 1;
// 1898                                 //LonlyLine_Counter++;
// 1899                                 TrkSide[yCounter] = Sid_LonlyLine;
// 1900                                 //LonlyLineisHave_1isL_2isR = 1;
// 1901                                 central_Pos_number = 
// 1902                                 (m_ImageAbstract.Left[yCounter] + m_ImageAbstract.Left_UpBlack2White[yCounter])/2;
// 1903                             }
// 1904                         }
// 1905                     }
// 1906                 }
// 1907                 else
// 1908                 {
// 1909                     central_Pos_number = m_ImageAbstract.Central[yCounter];
??v_ImageCut_146:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.N    R0,??v_ImageCut_67+0xC
        ADDS     R0,R6,R0
        LDRB     R5,[R0, #+164]
// 1910                     //ÕâÀïÐèÒª´¦ÀíÒ»ÏÂ
// 1911                     /*
// 1912                     if((__ABS(central_Pos_number - m_ImageAbstract.Central[yCounter])>m_ImageAbstract.width[yCounter]/9))
// 1913                     {
// 1914                         showYcutDown = 'L';
// 1915                         end_y_ctr = yCounter;
// 1916                         break;//ÕâÀïÓ¦µ±Ìø³ö
// 1917                     }
// 1918                     */
// 1919                 }
// 1920                 
// 1921             }
// 1922             
// 1923             /*last_Left_Viewer_X_n_cut_0 = last_Left_Viewer_X;
// 1924             last_Left_Viewer_Y_n_cut_0 = last_Left_Viewer_Y;
// 1925             last_Right_Viewer_X_n_cut_0 = last_Right_Viewer_X;
// 1926             last_Right_Viewer_Y_n_cut_0 = last_Right_Viewer_Y;*/
// 1927             
// 1928             
// 1929             m_ImageAbstract.Central[yCounter] = central_Pos_number;
??v_ImageCut_147:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.N    R0,??v_ImageCut_67+0xC
        ADDS     R0,R6,R0
        STRB     R5,[R0, #+164]
??v_ImageCut_148:
        ADDS     R6,R6,#+1
??v_ImageCut_145:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        CMP      R6,R11
        BCS.W    ??v_ImageCut_149
        LDR.N    R0,??v_ImageCut_67+0xC
        LDRB     R0,[R0, #+464]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R0,R6
        BEQ.W    ??v_ImageCut_150
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.N    R0,??v_ImageCut_67+0xC
        ADDS     R0,R6,R0
        LDRB     R0,[R0, #+163]
        BL       __aeabi_ui2d
        STRD     R0,R1,[SP, #+0]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.N    R0,??v_ImageCut_67+0xC
        ADDS     R0,R0,R6, LSL #+1
        LDRSH    R0,[R0, #+344]
        BL       __aeabi_i2d
        MOVS     R2,#+858993459
        LDR.W    R3,??v_ImageCut_151  ;; 0x3fd33333
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        LDRD     R0,R1,[SP, #+0]
        BL       __aeabi_dsub
        BL       __aeabi_d2iz
        MOVS     R7,R0
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.N    R0,??v_ImageCut_67+0xC
        ADDS     R0,R6,R0
        LDRB     R0,[R0, #+163]
        BL       __aeabi_ui2d
        STRD     R0,R1,[SP, #+0]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.N    R0,??v_ImageCut_67+0xC
        ADDS     R0,R0,R6, LSL #+1
        LDRSH    R0,[R0, #+344]
        BL       __aeabi_i2d
        MOVS     R2,#+858993459
        LDR.W    R3,??v_ImageCut_151  ;; 0x3fd33333
        BL       __aeabi_dmul
        LDRD     R2,R3,[SP, #+0]
        BL       __aeabi_dadd
        BL       __aeabi_d2iz
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.N    R1,??v_ImageCut_67+0xC
        ADDS     R1,R6,R1
        LDRB     R1,[R1, #+164]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.N    R2,??v_ImageCut_67+0xC
        ADDS     R2,R6,R2
        LDRB     R2,[R2, #+163]
        SUBS     R1,R1,R2
        CMP      R1,#+0
        BPL.N    ??v_ImageCut_152
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.N    R1,??v_ImageCut_67+0xC
        ADDS     R1,R6,R1
        LDRB     R1,[R1, #+163]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.N    R2,??v_ImageCut_67+0xC
        ADDS     R2,R6,R2
        LDRB     R2,[R2, #+164]
        SUBS     R1,R1,R2
        B.N      ??v_ImageCut_153
??v_ImageCut_152:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.N    R1,??v_ImageCut_67+0xC
        ADDS     R1,R6,R1
        LDRB     R1,[R1, #+164]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.N    R2,??v_ImageCut_67+0xC
        ADDS     R2,R6,R2
        LDRB     R2,[R2, #+163]
        SUBS     R1,R1,R2
??v_ImageCut_153:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.N    R2,??v_ImageCut_67+0xC
        ADDS     R2,R2,R6, LSL #+1
        LDRSH    R2,[R2, #+344]
        MOVS     R3,#+4
        SDIV     R2,R2,R3
        CMP      R1,R2
        BLT.N    ??v_ImageCut_154
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.N    R1,??v_ImageCut_67+0xC
        ADDS     R1,R6,R1
        LDRB     R1,[R1, #+164]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.N    R2,??v_ImageCut_67+0xC
        ADDS     R2,R6,R2
        LDRB     R2,[R2, #+163]
        CMP      R1,R2
        BCS.N    ??v_ImageCut_155
        MOVS     R0,#+181
        B.N      ??v_ImageCut_154
        DATA
??v_ImageCut_67:
        DC32     m_ImageTesting
        DC32     0xcccccccd
        DC32     0x3fdccccc
        DC32     m_ImageAbstract
        DC32     m_ImageBeholder_Data
        THUMB
??v_ImageCut_155:
        MOVS     R7,#+3
        B.N      ??v_ImageCut_154
??v_ImageCut_150:
        MOVS     R7,#+3
        MOVS     R0,#+181
??v_ImageCut_154:
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        CMP      R7,#+182
        BLT.N    ??v_ImageCut_156
        MOVS     R7,#+181
??v_ImageCut_156:
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        CMP      R7,#+3
        BGE.N    ??v_ImageCut_157
        MOVS     R7,#+3
??v_ImageCut_157:
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+182
        BLT.N    ??v_ImageCut_158
        MOVS     R0,#+181
??v_ImageCut_158:
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+3
        BGE.N    ??v_ImageCut_159
        MOVS     R0,#+3
??v_ImageCut_159:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R1,??v_ImageCut_151+0x4
        ADDS     R1,R6,R1
        STRB     R7,[R1, #+69]
        LDR.W    R1,??v_ImageCut_151+0x8
        LDRB     R1,[R1, #+464]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R1,R6
        BCS.N    ??v_ImageCut_160
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADD      R1,SP,#+88
        LDRB     R1,[R6, R1]
        CMP      R1,#+40
        BNE.N    ??v_ImageCut_160
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADD      R1,SP,#+88
        ADDS     R1,R6,R1
        LDRB     R1,[R1, #-1]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADD      R2,SP,#+88
        STRB     R1,[R6, R2]
??v_ImageCut_160:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R1,??v_ImageCut_151+0x8
        ADDS     R1,R6,R1
        LDRB     R1,[R1, #+164]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADD      R2,SP,#+148
        STRB     R1,[R6, R2]
        MOVS     R3,#+0
        ADDS     R8,R8,#+1
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R1,??v_ImageCut_151+0x8
        ADDS     R1,R6,R1
        LDRB     R1,[R1, #+224]
        CMP      R1,#+255
        BNE.W    ??v_ImageCut_161
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R1,??v_ImageCut_151+0x8
        ADDS     R1,R6,R1
        LDRB     R1,[R1, #+284]
        CMP      R1,#+255
        BNE.W    ??v_ImageCut_161
        LDR.W    R1,??v_ImageCut_151+0x8
        LDRB     R1,[R1, #+464]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R1,R6
        BCS.W    ??v_ImageCut_161
        SXTB     R8,R8            ;; SignExt  R8,R8,#+24,#+24
        CMP      R8,#+2
        BLT.W    ??v_ImageCut_162
        SXTB     R8,R8            ;; SignExt  R8,R8,#+24,#+24
        CMP      R8,#+3
        BLT.N    ??v_ImageCut_163
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R0,??v_ImageCut_151+0x8
        ADDS     R0,R6,R0
        LDRB     R0,[R0, #+163]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R1,??v_ImageCut_151+0x8
        ADDS     R1,R6,R1
        LDRB     R1,[R1, #+162]
        UXTAB    R0,R1,R0
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R1,??v_ImageCut_151+0x8
        ADDS     R1,R6,R1
        LDRB     R1,[R1, #+161]
        SUBS     R0,R0,R1
        B.N      ??v_ImageCut_164
??v_ImageCut_163:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R0,??v_ImageCut_151+0x8
        ADDS     R0,R6,R0
        LDRB     R0,[R0, #+163]
??v_ImageCut_164:
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+3
        BGE.N    ??v_ImageCut_165
        MOVS     R0,#+3
??v_ImageCut_165:
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+182
        BLT.N    ??v_ImageCut_166
        MOVS     R0,#+181
??v_ImageCut_166:
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R1,??v_ImageCut_151+0x8
        ADDS     R1,R6,R1
        LDRB     R1,[R1, #+164]
        SUBS     R1,R0,R1
        CMP      R1,#+0
        BPL.N    ??v_ImageCut_167
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R1,??v_ImageCut_151+0x8
        ADDS     R1,R6,R1
        LDRB     R1,[R1, #+164]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SUBS     R0,R1,R0
        B.N      ??v_ImageCut_168
??v_ImageCut_167:
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R1,??v_ImageCut_151+0x8
        ADDS     R1,R6,R1
        LDRB     R1,[R1, #+164]
        SUBS     R0,R0,R1
??v_ImageCut_168:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R1,??v_ImageCut_151+0x8
        ADDS     R1,R1,R6, LSL #+1
        LDRSH    R1,[R1, #+344]
        MOVS     R2,#+9
        SDIV     R1,R1,R2
        CMP      R1,R0
        BGE.W    ??v_ImageCut_169
        LDRB     R0,[SP, #+15]
        CMP      R0,#+1
        BEQ.N    ??v_ImageCut_170
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.W    ??v_ImageCut_169
??v_ImageCut_170:
        LDR.W    R0,??v_ImageCut_151+0x8
        LDRB     R0,[R0, #+464]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        SUBS     R1,R6,#+4
        CMP      R0,R1
        BGE.N    ??v_ImageCut_171
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        SUBS     R0,R6,#+4
        B.N      ??v_ImageCut_172
??v_ImageCut_171:
        LDR.W    R0,??v_ImageCut_151+0x8
        LDRB     R0,[R0, #+464]
        ADDS     R0,R0,#+1
??v_ImageCut_172:
        ADD      R1,SP,#+88
        LDRB     R0,[R0, R1]
        CMP      R0,#+70
        BEQ.W    ??v_ImageCut_173
        LDR.W    R0,??v_ImageCut_151+0x8
        LDRB     R0,[R0, #+464]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        SUBS     R1,R6,#+4
        CMP      R0,R1
        BGE.N    ??v_ImageCut_174
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        SUBS     R0,R6,#+4
        B.N      ??v_ImageCut_175
??v_ImageCut_174:
        LDR.W    R0,??v_ImageCut_151+0x8
        LDRB     R0,[R0, #+464]
        ADDS     R0,R0,#+1
??v_ImageCut_175:
        ADD      R1,SP,#+88
        LDRB     R0,[R0, R1]
        CMP      R0,#+60
        BEQ.N    ??v_ImageCut_173
        LDR.W    R0,??v_ImageCut_151+0x8
        LDRB     R0,[R0, #+464]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        SUBS     R1,R6,#+3
        CMP      R0,R1
        BGE.N    ??v_ImageCut_176
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        SUBS     R0,R6,#+3
        B.N      ??v_ImageCut_177
??v_ImageCut_176:
        LDR.W    R0,??v_ImageCut_151+0x8
        LDRB     R0,[R0, #+464]
        ADDS     R0,R0,#+1
??v_ImageCut_177:
        ADD      R1,SP,#+88
        LDRB     R0,[R0, R1]
        CMP      R0,#+70
        BEQ.N    ??v_ImageCut_173
        LDR.W    R0,??v_ImageCut_151+0x8
        LDRB     R0,[R0, #+464]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        SUBS     R1,R6,#+3
        CMP      R0,R1
        BGE.N    ??v_ImageCut_178
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        SUBS     R0,R6,#+3
        B.N      ??v_ImageCut_179
??v_ImageCut_178:
        LDR.W    R0,??v_ImageCut_151+0x8
        LDRB     R0,[R0, #+464]
        ADDS     R0,R0,#+1
??v_ImageCut_179:
        ADD      R1,SP,#+88
        LDRB     R0,[R0, R1]
        CMP      R0,#+60
        BEQ.N    ??v_ImageCut_173
        LDR.W    R0,??v_ImageCut_151+0x8
        LDRB     R0,[R0, #+464]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        SUBS     R1,R6,#+2
        CMP      R0,R1
        BGE.N    ??v_ImageCut_180
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        SUBS     R0,R6,#+2
        B.N      ??v_ImageCut_181
??v_ImageCut_180:
        LDR.W    R0,??v_ImageCut_151+0x8
        LDRB     R0,[R0, #+464]
        ADDS     R0,R0,#+1
??v_ImageCut_181:
        ADD      R1,SP,#+88
        LDRB     R0,[R0, R1]
        CMP      R0,#+70
        BEQ.N    ??v_ImageCut_173
        LDR.W    R0,??v_ImageCut_151+0x8
        LDRB     R0,[R0, #+464]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        SUBS     R1,R6,#+2
        CMP      R0,R1
        BGE.N    ??v_ImageCut_182
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        SUBS     R0,R6,#+2
        B.N      ??v_ImageCut_183
??v_ImageCut_182:
        LDR.W    R0,??v_ImageCut_151+0x8
        LDRB     R0,[R0, #+464]
        ADDS     R0,R0,#+1
??v_ImageCut_183:
        ADD      R1,SP,#+88
        LDRB     R0,[R0, R1]
        CMP      R0,#+60
        BEQ.N    ??v_ImageCut_173
        LDR.W    R0,??v_ImageCut_151+0x8
        LDRB     R0,[R0, #+464]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        SUBS     R1,R6,#+1
        CMP      R0,R1
        BGE.N    ??v_ImageCut_184
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        SUBS     R0,R6,#+1
        B.N      ??v_ImageCut_185
??v_ImageCut_184:
        LDR.W    R0,??v_ImageCut_151+0x8
        LDRB     R0,[R0, #+464]
        ADDS     R0,R0,#+1
??v_ImageCut_185:
        ADD      R1,SP,#+88
        LDRB     R0,[R0, R1]
        CMP      R0,#+70
        BEQ.N    ??v_ImageCut_173
        LDR.W    R0,??v_ImageCut_151+0x8
        LDRB     R0,[R0, #+464]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        SUBS     R1,R6,#+1
        CMP      R0,R1
        BGE.N    ??v_ImageCut_186
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        SUBS     R0,R6,#+1
        B.N      ??v_ImageCut_187
??v_ImageCut_186:
        LDR.W    R0,??v_ImageCut_151+0x8
        LDRB     R0,[R0, #+464]
        ADDS     R0,R0,#+1
??v_ImageCut_187:
        ADD      R1,SP,#+88
        LDRB     R0,[R0, R1]
        CMP      R0,#+60
        BNE.N    ??v_ImageCut_188
??v_ImageCut_173:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R0,??v_ImageCut_151+0x4
        ADDS     R0,R6,R0
        LDRB     R0,[R0, #+9]
        ADDS     R0,R0,#+100
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R1,??v_ImageCut_151+0x4
        ADDS     R1,R6,R1
        STRB     R0,[R1, #+9]
        LDR.W    R0,??v_ImageCut_151+0x4
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
        MOV      R11,R6
        MOVS     R1,#+1
// 1930             //================================================================//            
// 1931         }//Ñ­»·½áÊø
// 1932         
// 1933         m_ImageAbstract.LonlyLine_firstLineXpos = m_ImageAbstract.Central[m_ImageAbstract.Start_Y_Position];
??v_ImageCut_149:
        LDR.W    R0,??v_ImageCut_151+0x8
        LDRB     R0,[R0, #+464]
        LDR.W    R1,??v_ImageCut_151+0x8
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+164]
        LDR.W    R1,??v_ImageCut_151+0x8
        STRB     R0,[R1, #+5]
// 1934         m_ImageAbstract.LonlyLine_secondLineXpos = m_ImageAbstract.Central[m_ImageAbstract.Start_Y_Position+1];
        LDR.W    R0,??v_ImageCut_151+0x8
        LDRB     R0,[R0, #+464]
        LDR.W    R1,??v_ImageCut_151+0x8
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+165]
        LDR.W    R1,??v_ImageCut_151+0x8
        STRB     R0,[R1, #+6]
// 1935         if(((255!=m_ImageAbstract.Left_UpBlack2White[m_ImageAbstract.Start_Y_Position])
// 1936          ||(255!=m_ImageAbstract.Right_UpBlack2White[m_ImageAbstract.Start_Y_Position])
// 1937          ||(1 == firstAndSecond_isBeenDrawing))
// 1938          &&(end_y_ctr > 10))//(end_y_ctr > 10)Ïû³ý³öÍäÓ°Ïì
        LDR.W    R0,??v_ImageCut_151+0x8
        LDRB     R0,[R0, #+464]
        LDR.W    R1,??v_ImageCut_151+0x8
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+224]
        CMP      R0,#+255
        BNE.N    ??v_ImageCut_189
        LDR.W    R0,??v_ImageCut_151+0x8
        LDRB     R0,[R0, #+464]
        LDR.W    R1,??v_ImageCut_151+0x8
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+284]
        CMP      R0,#+255
        BNE.N    ??v_ImageCut_189
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        CMP      R10,#+1
        BNE.W    ??v_ImageCut_190
??v_ImageCut_189:
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        CMP      R11,#+11
        BLT.W    ??v_ImageCut_190
// 1939         {m_ImageAbstract.LonlyLine_isXposLonlyLineFirstLine = 1;}
        LDR.W    R0,??v_ImageCut_151+0x8
        MOVS     R1,#+1
        STRB     R1,[R0, #+7]
        B.N      ??v_ImageCut_191
??v_ImageCut_188:
        MOVS     R0,#+1
        STRB     R0,[SP, #+35]
        B.N      ??v_ImageCut_169
??v_ImageCut_162:
        SXTB     R8,R8            ;; SignExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BNE.W    ??v_ImageCut_192
        LDR.W    R0,??v_ImageCut_151+0x8
        LDRB     R0,[R0, #+7]
        CMP      R0,#+1
        BNE.W    ??v_ImageCut_192
        LDR.W    R0,??v_ImageCut_151+0x8
        LDRB     R0,[R0, #+464]
        LDR.W    R1,??v_ImageCut_151+0x8
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+164]
        LDR.W    R1,??v_ImageCut_151+0x8
        LDRB     R1,[R1, #+5]
        SUBS     R0,R0,R1
        CMP      R0,#+0
        BPL.N    ??v_ImageCut_193
        LDR.W    R0,??v_ImageCut_151+0x8
        LDRB     R0,[R0, #+5]
        LDR.W    R1,??v_ImageCut_151+0x8
        LDRB     R1,[R1, #+464]
        LDR.W    R2,??v_ImageCut_151+0x8
        ADDS     R1,R1,R2
        LDRB     R1,[R1, #+164]
        SUBS     R0,R0,R1
        B.N      ??v_ImageCut_194
??v_ImageCut_193:
        LDR.W    R0,??v_ImageCut_151+0x8
        LDRB     R0,[R0, #+464]
        LDR.W    R1,??v_ImageCut_151+0x8
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+164]
        LDR.W    R1,??v_ImageCut_151+0x8
        LDRB     R1,[R1, #+5]
        SUBS     R0,R0,R1
??v_ImageCut_194:
        LDR.W    R1,??v_ImageCut_151+0x8
        LDRB     R1,[R1, #+464]
        LDR.W    R2,??v_ImageCut_151+0x8
        ADDS     R1,R2,R1, LSL #+1
        LDRSH    R1,[R1, #+344]
        MOVS     R2,#+3
        SDIV     R1,R1,R2
        CMP      R1,R0
        BGE.N    ??v_ImageCut_192
        LDR.W    R0,??v_ImageCut_151+0x8
        LDRB     R0,[R0, #+464]
        LDR.W    R1,??v_ImageCut_151+0x8
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+44]
        CMP      R0,#+255
        BEQ.N    ??v_ImageCut_195
        LDR.W    R0,??v_ImageCut_151+0x8
        LDRB     R0,[R0, #+464]
        LDR.W    R1,??v_ImageCut_151+0x8
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+104]
        CMP      R0,#+255
        BNE.N    ??v_ImageCut_192
        LDR.W    R0,??v_ImageCut_151+0x8
        LDRB     R0,[R0, #+464]
        LDR.W    R1,??v_ImageCut_151+0x8
        ADDS     R0,R0,R1
        LDR.W    R1,??v_ImageCut_151+0x8
        LDRB     R1,[R1, #+464]
        LDR.W    R2,??v_ImageCut_151+0x8
        ADDS     R1,R1,R2
        LDRB     R1,[R1, #+44]
        STRB     R1,[R0, #+164]
        MOVS     R4,#+1
        MOVS     R3,#+1
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADD      R0,SP,#+88
        MOVS     R1,#+70
        STRB     R1,[R6, R0]
        MOVS     R10,#+1
        B.N      ??v_ImageCut_192
??v_ImageCut_195:
        LDR.W    R0,??v_ImageCut_151+0x8
        LDRB     R0,[R0, #+464]
        LDR.W    R1,??v_ImageCut_151+0x8
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+104]
        CMP      R0,#+255
        BEQ.N    ??v_ImageCut_196
        LDR.W    R0,??v_ImageCut_151+0x8
        LDRB     R0,[R0, #+464]
        LDR.W    R1,??v_ImageCut_151+0x8
        ADDS     R0,R0,R1
        LDR.W    R1,??v_ImageCut_151+0x8
        LDRB     R1,[R1, #+464]
        LDR.W    R2,??v_ImageCut_151+0x8
        ADDS     R1,R1,R2
        LDRB     R1,[R1, #+104]
        STRB     R1,[R0, #+164]
        MOVS     R4,#+1
        MOVS     R3,#+1
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADD      R0,SP,#+88
        MOVS     R1,#+70
        STRB     R1,[R6, R0]
        MOVS     R10,#+1
        B.N      ??v_ImageCut_192
??v_ImageCut_196:
        LDR.W    R0,??v_ImageCut_151+0x8
        LDRB     R0,[R0, #+464]
        LDR.W    R1,??v_ImageCut_151+0x8
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+224]
        CMP      R0,#+255
        BNE.N    ??v_ImageCut_192
        LDR.W    R0,??v_ImageCut_151+0x8
        LDRB     R0,[R0, #+464]
        LDR.W    R1,??v_ImageCut_151+0x8
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+284]
        CMP      R0,#+255
        BNE.N    ??v_ImageCut_192
        LDR.W    R0,??v_ImageCut_151+0x8
        LDRB     R0,[R0, #+464]
        LDR.W    R1,??v_ImageCut_151+0x8
        ADDS     R0,R0,R1
        LDR.W    R1,??v_ImageCut_151+0x8
        LDRB     R1,[R1, #+468]
        STRB     R1,[R0, #+164]
        MOVS     R10,#+1
??v_ImageCut_192:
        SXTB     R8,R8            ;; SignExt  R8,R8,#+24,#+24
        CMP      R8,#+1
        BNE.W    ??v_ImageCut_169
        LDR.W    R0,??v_ImageCut_151+0x8
        LDRB     R0,[R0, #+8]
        CMP      R0,#+1
        BNE.W    ??v_ImageCut_169
        LDR.W    R0,??v_ImageCut_151+0x8
        LDRB     R0,[R0, #+464]
        LDR.W    R1,??v_ImageCut_151+0x8
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+165]
        LDR.W    R1,??v_ImageCut_151+0x8
        LDRB     R1,[R1, #+6]
        SUBS     R0,R0,R1
        CMP      R0,#+0
        BPL.N    ??v_ImageCut_197
        LDR.W    R0,??v_ImageCut_151+0x8
        LDRB     R0,[R0, #+6]
        LDR.W    R1,??v_ImageCut_151+0x8
        LDRB     R1,[R1, #+464]
        LDR.W    R2,??v_ImageCut_151+0x8
        ADDS     R1,R1,R2
        LDRB     R1,[R1, #+165]
        SUBS     R0,R0,R1
        B.N      ??v_ImageCut_198
??v_ImageCut_197:
        LDR.W    R0,??v_ImageCut_151+0x8
        LDRB     R0,[R0, #+464]
        LDR.W    R1,??v_ImageCut_151+0x8
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+165]
        LDR.W    R1,??v_ImageCut_151+0x8
        LDRB     R1,[R1, #+6]
        SUBS     R0,R0,R1
??v_ImageCut_198:
        LDR.W    R1,??v_ImageCut_151+0x8
        LDRB     R1,[R1, #+464]
        LDR.W    R2,??v_ImageCut_151+0x8
        ADDS     R1,R2,R1, LSL #+1
        LDRSH    R1,[R1, #+346]
        MOVS     R2,#+3
        SDIV     R1,R1,R2
        CMP      R1,R0
        BGE.W    ??v_ImageCut_169
        LDR.W    R0,??v_ImageCut_151+0x8
        LDRB     R0,[R0, #+464]
        LDR.W    R1,??v_ImageCut_151+0x8
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+45]
        CMP      R0,#+255
        BEQ.N    ??v_ImageCut_199
        LDR.W    R0,??v_ImageCut_151+0x8
        LDRB     R0,[R0, #+464]
        LDR.W    R1,??v_ImageCut_151+0x8
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+105]
        CMP      R0,#+255
        BNE.N    ??v_ImageCut_169
        LDR.W    R0,??v_ImageCut_151+0x8
        LDRB     R0,[R0, #+464]
        LDR.W    R1,??v_ImageCut_151+0x8
        ADDS     R0,R0,R1
        LDR.W    R1,??v_ImageCut_151+0x8
        LDRB     R1,[R1, #+464]
        LDR.W    R2,??v_ImageCut_151+0x8
        ADDS     R1,R1,R2
        LDRB     R1,[R1, #+45]
        STRB     R1,[R0, #+165]
        MOVS     R4,#+1
        MOVS     R3,#+1
        LDR.W    R0,??v_ImageCut_151+0x8
        LDRB     R0,[R0, #+464]
        ADD      R1,SP,#+88
        ADDS     R0,R0,R1
        MOVS     R1,#+70
        STRB     R1,[R0, #+1]
        MOVS     R10,#+1
        B.N      ??v_ImageCut_169
??v_ImageCut_199:
        LDR.W    R0,??v_ImageCut_151+0x8
        LDRB     R0,[R0, #+464]
        LDR.W    R1,??v_ImageCut_151+0x8
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+105]
        CMP      R0,#+255
        BEQ.N    ??v_ImageCut_200
        LDR.W    R0,??v_ImageCut_151+0x8
        LDRB     R0,[R0, #+464]
        LDR.W    R1,??v_ImageCut_151+0x8
        ADDS     R0,R0,R1
        LDR.W    R1,??v_ImageCut_151+0x8
        LDRB     R1,[R1, #+464]
        LDR.W    R2,??v_ImageCut_151+0x8
        ADDS     R1,R1,R2
        LDRB     R1,[R1, #+105]
        STRB     R1,[R0, #+165]
        MOVS     R4,#+1
        MOVS     R3,#+1
        LDR.W    R0,??v_ImageCut_151+0x8
        LDRB     R0,[R0, #+464]
        ADD      R1,SP,#+88
        MOVS     R2,#+70
        STRB     R2,[R0, R1]
        MOVS     R10,#+1
        B.N      ??v_ImageCut_169
??v_ImageCut_200:
        LDR.W    R0,??v_ImageCut_151+0x8
        LDRB     R0,[R0, #+464]
        LDR.W    R1,??v_ImageCut_151+0x8
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+225]
        CMP      R0,#+255
        BNE.N    ??v_ImageCut_169
        LDR.W    R0,??v_ImageCut_151+0x8
        LDRB     R0,[R0, #+464]
        LDR.W    R1,??v_ImageCut_151+0x8
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+285]
        CMP      R0,#+255
        BNE.N    ??v_ImageCut_169
        LDR.W    R0,??v_ImageCut_151+0x8
        LDRB     R0,[R0, #+464]
        LDR.W    R1,??v_ImageCut_151+0x8
        ADDS     R0,R0,R1
        LDR.W    R1,??v_ImageCut_151+0x8
        LDRB     R1,[R1, #+464]
        LDR.W    R2,??v_ImageCut_151+0x8
        ADDS     R1,R1,R2
        LDRB     R1,[R1, #+164]
        STRB     R1,[R0, #+165]
        MOVS     R10,#+1
??v_ImageCut_169:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R0,??v_ImageCut_151+0x8
        ADDS     R0,R6,R0
        LDRB     R5,[R0, #+164]
        B.N      ??v_ImageCut_148
??v_ImageCut_161:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+255
        BNE.N    ??v_ImageCut_201
        MOV      R9,R6
??v_ImageCut_201:
        MOVS     R1,#+0
        MOVS     R2,#+0
        MOVS     R3,#+0
        MOVS     R1,R3
        MOVS     R3,#+0
        MOVS     R2,R3
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R3,??v_ImageCut_151+0x8
        ADDS     R3,R6,R3
        LDRB     R3,[R3, #+224]
        CMP      R3,#+255
        BEQ.N    ??v_ImageCut_202
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R3,??v_ImageCut_151+0x8
        ADDS     R3,R6,R3
        LDRB     R3,[R3, #+224]
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        CMP      R3,R7
        BLT.N    ??v_ImageCut_202
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R3,??v_ImageCut_151+0x8
        ADDS     R3,R6,R3
        LDRB     R3,[R3, #+224]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        CMP      R0,R3
        BLT.N    ??v_ImageCut_202
        MOVS     R1,#+1
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R3,??v_ImageCut_151+0x8
        ADDS     R3,R6,R3
        LDRB     R3,[R3, #+44]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R5,??v_ImageCut_151+0x8
        ADDS     R5,R6,R5
        LDRB     R5,[R5, #+224]
        UXTAB    R3,R5,R3
        MOVS     R5,#+2
        SDIV     R5,R3,R5
??v_ImageCut_202:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R3,??v_ImageCut_151+0x8
        ADDS     R3,R6,R3
        LDRB     R3,[R3, #+284]
        CMP      R3,#+255
        BEQ.N    ??v_ImageCut_203
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R3,??v_ImageCut_151+0x8
        ADDS     R3,R6,R3
        LDRB     R3,[R3, #+284]
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        CMP      R3,R7
        BLT.N    ??v_ImageCut_203
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R3,??v_ImageCut_151+0x8
        ADDS     R3,R6,R3
        LDRB     R3,[R3, #+284]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        CMP      R0,R3
        BLT.N    ??v_ImageCut_203
        MOVS     R2,#+1
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R0,??v_ImageCut_151+0x8
        ADDS     R0,R6,R0
        LDRB     R0,[R0, #+104]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R3,??v_ImageCut_151+0x8
        ADDS     R3,R6,R3
        LDRB     R3,[R3, #+284]
        UXTAB    R0,R3,R0
        MOVS     R3,#+2
        SDIV     R5,R0,R3
??v_ImageCut_203:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        UXTAB    R0,R2,R1
        CMP      R0,#+1
        BNE.N    ??v_ImageCut_204
        MOVS     R0,#+68
        STRB     R0,[SP, #+33]
        MOVS     R4,#+1
        MOVS     R3,#+1
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADD      R0,SP,#+88
        MOVS     R1,#+70
        STRB     R1,[R6, R0]
        B.W      ??v_ImageCut_147
??v_ImageCut_204:
        MOVS     R0,#+78
        STRB     R0,[SP, #+33]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R0,??v_ImageCut_151+0x8
        ADDS     R0,R6,R0
        LDRB     R0,[R0, #+224]
        CMP      R0,#+255
        BEQ.W    ??v_ImageCut_146
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R0,??v_ImageCut_151+0x8
        ADDS     R0,R6,R0
        LDRB     R0,[R0, #+284]
        CMP      R0,#+255
        BEQ.W    ??v_ImageCut_146
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R0,??v_ImageCut_151+0x8
        ADDS     R0,R6,R0
        LDRB     R0,[R0, #+44]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R1,??v_ImageCut_151+0x8
        ADDS     R1,R6,R1
        LDRB     R1,[R1, #+104]
        UXTAB    R0,R1,R0
        MOVS     R1,#+2
        SDIV     R5,R0,R1
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R0,??v_ImageCut_151+0x8
        ADDS     R0,R6,R0
        LDRB     R0,[R0, #+164]
        LDR.W    R1,??v_ImageCut_151+0x8
        LDRB     R1,[R1, #+468]
        UXTAB    R0,R1,R0
        MOVS     R1,#+2
        SDIV     R7,R0,R1
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R0,??v_ImageCut_151+0x8
        ADDS     R0,R6,R0
        LDRB     R0,[R0, #+104]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R1,??v_ImageCut_151+0x8
        ADDS     R1,R6,R1
        LDRB     R1,[R1, #+44]
        SUBS     R0,R0,R1
        BL       __aeabi_i2d
        MOVS     R2,R0
        MOVS     R3,R1
        STRD     R2,R3,[SP, #+0]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R0,??v_ImageCut_151+0x8
        ADDS     R0,R0,R6, LSL #+1
        LDRSH    R0,[R0, #+344]
        BL       __aeabi_i2d
        LDR.W    R2,??v_ImageCut_205  ;; 0xa1cac083
        LDR.W    R3,??v_ImageCut_205+0x4  ;; 0x3febb645
        BL       __aeabi_dmul
        LDRD     R2,R3,[SP, #+0]
        BL       __aeabi_cdrcmple
        BHI.N    ??v_ImageCut_206
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R0,??v_ImageCut_151+0x8
        ADDS     R0,R6,R0
        LDRB     R0,[R0, #+104]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        SUBS     R0,R0,R7
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R1,??v_ImageCut_151+0x8
        ADDS     R1,R6,R1
        LDRB     R1,[R1, #+44]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        SUBS     R1,R1,R7
        CMP      R0,R1
        BGE.N    ??v_ImageCut_207
        MOVS     R4,#+1
        MOVS     R3,#+1
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADD      R0,SP,#+88
        MOVS     R1,#+70
        STRB     R1,[R6, R0]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R0,??v_ImageCut_151+0x8
        ADDS     R0,R6,R0
        LDRB     R0,[R0, #+104]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R1,??v_ImageCut_151+0x8
        ADDS     R1,R6,R1
        LDRB     R1,[R1, #+284]
        UXTAB    R0,R1,R0
        MOVS     R1,#+2
        SDIV     R5,R0,R1
        B.W      ??v_ImageCut_147
??v_ImageCut_207:
        MOVS     R4,#+1
        MOVS     R3,#+1
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADD      R0,SP,#+88
        MOVS     R1,#+70
        STRB     R1,[R6, R0]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R0,??v_ImageCut_151+0x8
        ADDS     R0,R6,R0
        LDRB     R0,[R0, #+44]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R1,??v_ImageCut_151+0x8
        ADDS     R1,R6,R1
        LDRB     R1,[R1, #+224]
        UXTAB    R0,R1,R0
        MOVS     R1,#+2
        SDIV     R5,R0,R1
        B.W      ??v_ImageCut_147
??v_ImageCut_206:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.W    ??v_ImageCut_147
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R0,??v_ImageCut_151+0x8
        ADDS     R0,R6,R0
        LDRB     R0,[R0, #+103]
        CMP      R0,#+255
        BNE.N    ??v_ImageCut_208
        MOVS     R4,#+1
        MOVS     R3,#+1
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADD      R0,SP,#+88
        MOVS     R1,#+70
        STRB     R1,[R6, R0]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R0,??v_ImageCut_151+0x8
        ADDS     R0,R6,R0
        LDRB     R0,[R0, #+104]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R1,??v_ImageCut_151+0x8
        ADDS     R1,R6,R1
        LDRB     R1,[R1, #+284]
        UXTAB    R0,R1,R0
        MOVS     R1,#+2
        SDIV     R5,R0,R1
??v_ImageCut_208:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.N    R0,??v_ImageCut_151+0x8
        ADDS     R0,R6,R0
        LDRB     R0,[R0, #+43]
        CMP      R0,#+255
        BNE.W    ??v_ImageCut_147
        MOVS     R4,#+1
        MOVS     R3,#+1
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADD      R0,SP,#+88
        MOVS     R1,#+70
        STRB     R1,[R6, R0]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.N    R0,??v_ImageCut_151+0x8
        ADDS     R0,R6,R0
        LDRB     R0,[R0, #+44]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.N    R1,??v_ImageCut_151+0x8
        ADDS     R1,R6,R1
        LDRB     R1,[R1, #+224]
        UXTAB    R0,R1,R0
        MOVS     R1,#+2
        SDIV     R5,R0,R1
        B.W      ??v_ImageCut_147
// 1940         else{m_ImageAbstract.LonlyLine_isXposLonlyLineFirstLine = 0;}///////////////////////
??v_ImageCut_190:
        LDR.N    R0,??v_ImageCut_151+0x8
        MOVS     R1,#+0
        STRB     R1,[R0, #+7]
// 1941         if(((255!=m_ImageAbstract.Left_UpBlack2White[m_ImageAbstract.Start_Y_Position+1])
// 1942          ||(255!=m_ImageAbstract.Right_UpBlack2White[m_ImageAbstract.Start_Y_Position+1])
// 1943          ||(1 == firstAndSecond_isBeenDrawing))
// 1944          &&(end_y_ctr > 10))
??v_ImageCut_191:
        LDR.N    R0,??v_ImageCut_151+0x8
        LDRB     R0,[R0, #+464]
        LDR.N    R1,??v_ImageCut_151+0x8
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+225]
        CMP      R0,#+255
        BNE.N    ??v_ImageCut_209
        LDR.N    R0,??v_ImageCut_151+0x8
        LDRB     R0,[R0, #+464]
        LDR.N    R1,??v_ImageCut_151+0x8
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+285]
        CMP      R0,#+255
        BNE.N    ??v_ImageCut_209
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        CMP      R10,#+1
        BNE.N    ??v_ImageCut_210
??v_ImageCut_209:
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        CMP      R11,#+11
        BLT.N    ??v_ImageCut_210
// 1945         {m_ImageAbstract.LonlyLine_isXposLonlyLineSecondLine = 1;}
        LDR.N    R0,??v_ImageCut_151+0x8
        MOVS     R1,#+1
        STRB     R1,[R0, #+8]
        B.N      ??v_ImageCut_211
// 1946         else{m_ImageAbstract.LonlyLine_isXposLonlyLineSecondLine = 0;}///////////////////////
??v_ImageCut_210:
        LDR.N    R0,??v_ImageCut_151+0x8
        MOVS     R1,#+0
        STRB     R1,[R0, #+8]
// 1947         
// 1948     }while(0);
// 1949 
// 1950     //if(1 == isHaveLonlyLine){end_y_ctr-=5;}
// 1951     
// 1952 
// 1953     uint8 LonlyLineVaildLineCounter = 0;
??v_ImageCut_211:
        MOVS     R0,#+0
// 1954     do//ÕâÀï×öÓ¦¶ÔÕÏ°­µÄ´¦Àí¡£//ÕâÀï»¹ÐèÒªÔÙ´ÎÓÅ»¯
// 1955     {//ËùÎ½ÕÏ°­µÄ±ê×¼¾ÍÊÇÔÚºÜÐ¡µÄ¿í¶È´¦Ã»ÓÐËùÎ½µÄÉÏÉýÑØ
// 1956         //break;
// 1957         if(1 == m_ImageAbstract.RtAngle_isLasting){break;}//Ç¿ÖÆ¾Ü¾øÅÐ¶Ï
        LDR.N    R1,??v_ImageCut_151+0x8
        LDRB     R1,[R1, #+480]
        CMP      R1,#+1
        BEQ.W    ??v_ImageCut_212
// 1958         
// 1959         if((1 == isHaveLonlyLine)||(1 == isHaveLonlyLineStartCorner))
??v_ImageCut_213:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??v_ImageCut_214
        LDRB     R1,[SP, #+15]
        CMP      R1,#+1
        BNE.N    ??v_ImageCut_215
// 1960         {//µ¥Ïß´æÔÚµÄÊ±ºò
// 1961             LonlyLineVaildLineCounter = 0;
??v_ImageCut_214:
        MOVS     R0,#+0
// 1962             for(uint8 LineReader = m_ImageAbstract.Start_Y_Position;LineReader < end_y_ctr;LineReader++)
        LDR.N    R1,??v_ImageCut_151+0x8
        LDRB     R1,[R1, #+464]
        B.N      ??v_ImageCut_216
// 1963             {
// 1964                 if((Sid_DoubleBlack == TrkSide[LineReader])||(Sid_LonlyLine == TrkSide[LineReader]))
??v_ImageCut_217:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADD      R2,SP,#+88
        LDRB     R2,[R1, R2]
        CMP      R2,#+60
        BEQ.N    ??v_ImageCut_218
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADD      R2,SP,#+88
        LDRB     R2,[R1, R2]
        CMP      R2,#+70
        BNE.N    ??v_ImageCut_219
// 1965                 {LonlyLineVaildLineCounter++;}
??v_ImageCut_218:
        ADDS     R0,R0,#+1
// 1966                 //m_ImageTesting.hazardvaildLine[LineReader] = 0;
// 1967             }
??v_ImageCut_219:
        ADDS     R1,R1,#+1
??v_ImageCut_216:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        CMP      R1,R11
        BCC.N    ??v_ImageCut_217
// 1968         }
// 1969         if(LonlyLineVaildLineCounter > 5){break;}//ÓÐÎÊÌâÖ±½ÓÓÃ¾ø¶Ô×ø±êÏµ
??v_ImageCut_215:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+6
        BGE.W    ??v_ImageCut_212
// 1970         
// 1971         uint8 hazardStartLine = 0;
??v_ImageCut_220:
        MOVS     R4,#+0
// 1972         for(uint8 loop = m_ImageAbstract.Start_Y_Position+1;loop < end_y_ctr;loop++)
        LDR.N    R0,??v_ImageCut_151+0x8
        LDRB     R0,[R0, #+464]
        ADDS     R0,R0,#+1
        B.N      ??v_ImageCut_221
??v_ImageCut_222:
        ADDS     R0,R0,#+1
??v_ImageCut_221:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        CMP      R0,R11
        BCS.N    ??v_ImageCut_223
// 1973         {
// 1974             if(__ABS(m_ImageAbstract.Central[loop] - m_ImageAbstract.Central[loop-1])>(m_ImageAbstract.width[loop]/6))
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??v_ImageCut_151+0x8
        ADDS     R1,R0,R1
        LDRB     R1,[R1, #+164]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??v_ImageCut_151+0x8
        ADDS     R2,R0,R2
        LDRB     R2,[R2, #+163]
        SUBS     R1,R1,R2
        CMP      R1,#+0
        BPL.N    ??v_ImageCut_224
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??v_ImageCut_151+0x8
        ADDS     R1,R0,R1
        LDRB     R1,[R1, #+163]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??v_ImageCut_151+0x8
        ADDS     R2,R0,R2
        LDRB     R2,[R2, #+164]
        SUBS     R1,R1,R2
        B.N      ??v_ImageCut_225
??v_ImageCut_224:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??v_ImageCut_151+0x8
        ADDS     R1,R0,R1
        LDRB     R1,[R1, #+164]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??v_ImageCut_151+0x8
        ADDS     R2,R0,R2
        LDRB     R2,[R2, #+163]
        SUBS     R1,R1,R2
??v_ImageCut_225:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??v_ImageCut_151+0x8
        ADDS     R2,R2,R0, LSL #+1
        LDRSH    R2,[R2, #+344]
        MOVS     R3,#+6
        SDIV     R2,R2,R3
        CMP      R2,R1
        BGE.N    ??v_ImageCut_222
// 1975             {
// 1976                 hazardStartLine = loop;break;
        MOVS     R4,R0
// 1977             }
// 1978         }
// 1979         if(0 == hazardStartLine){break;}
??v_ImageCut_223:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.W    ??v_ImageCut_212
// 1980         uint8 y_height_useful = Get45cmLengthFromY(hazardStartLine)/2;
??v_ImageCut_226:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        VMOV     S0,R4
        VCVT.F32.U32 S0,S0
        VLDR     S1,[SP, #+68]
        VMUL.F32 S0,S0,S1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        VMOV     S1,R4
        VCVT.F32.U32 S1,S1
        VMUL.F32 S0,S0,S1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        VMOV     S1,R4
        VCVT.F32.U32 S1,S1
        VLDR     S2,[SP, #+72]
        VMLA.F32 S0,S1,S2
        VLDR     S1,[SP, #+76]
        VADD.F32 S0,S0,S1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        VMOV     S1,R4
        VCVT.F32.U32 S1,S1
        VLDR     S2,[SP, #+80]
        VLDR     S3,[SP, #+84]
        VMLA.F32 S3,S1,S2
        VDIV.F32 S0,S0,S3
        VMOV.F32 S1,#2.0
        VDIV.F32 S0,S0,S1
        VCVT.S32.F32 S0,S0
        VMOV     R5,S0
// 1981         uint8 y_height_allHave = y_height_useful;//Ó¦¸ÃµÄ×Ý×ø±ê¾àÀë
        STRB     R5,[SP, #+8]
// 1982         
// 1983         uint8 y_world_height = ((GetYaxis(hazardStartLine)-GetYaxis(m_ImageAbstract.Start_Y_Position))*45/30);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        VMOV     S0,R4
        VCVT.F32.U32 S0,S0
        LDR.W    R0,??v_ImageCut_227
        VLDR     S1,[R0, #+84]
        LDR.W    R0,??v_ImageCut_227
        VLDR     S2,[R0, #+88]
        VMLA.F32 S2,S0,S1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        VMOV     S0,R4
        VCVT.F32.U32 S0,S0
        LDR.W    R0,??v_ImageCut_227
        VLDR     S1,[R0, #+96]
        VMOV.F32 S3,#1.0
        VMLA.F32 S3,S0,S1
        VDIV.F32 S0,S2,S3
        LDR.N    R0,??v_ImageCut_151+0x8
        LDRB     R0,[R0, #+464]
        VMOV     S1,R0
        VCVT.F32.U32 S1,S1
        LDR.W    R0,??v_ImageCut_227
        VLDR     S2,[R0, #+84]
        LDR.W    R0,??v_ImageCut_227
        VLDR     S3,[R0, #+88]
        VMLA.F32 S3,S1,S2
        LDR.N    R0,??v_ImageCut_151+0x8
        LDRB     R0,[R0, #+464]
        VMOV     S1,R0
        VCVT.F32.U32 S1,S1
        LDR.W    R0,??v_ImageCut_227
        VLDR     S2,[R0, #+96]
        VMOV.F32 S4,#1.0
        VMLA.F32 S4,S1,S2
        VDIV.F32 S1,S3,S4
        VSUB.F32 S0,S0,S1
        VLDR.W   S1,??v_ImageCut_151+0xC  ;; 0x42340000
        VMUL.F32 S0,S0,S1
        VMOV.F32 S1,#30.0
        VDIV.F32 S0,S0,S1
        VCVT.S32.F32 S0,S0
        VMOV     R0,S0
// 1984         if(y_world_height >= 70){break;}//¸ù¾ÝÕâ¸öÊµ¼Ê×ó±ßÍË³ö 
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+70
        BGE.W    ??v_ImageCut_212
// 1985         //if(end_y_ctr <= 10){break;}//µ±ÓÐÐ§¾àÀëºÜ¶ÌÊ±£¬ºöÂÔÕÏ°­£¬Õâ¾ä»°»á²»»áÔì³ÉÎÊÌâÄØ£¿
// 1986         
// 1987         uint8 loop = 0;
??v_ImageCut_228:
        MOVS     R7,#+0
// 1988         if(hazardStartLine + y_height_useful > 60){y_height_useful = 60;}//y_height_useful¸üÐÂÊýÖµ
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTAB    R0,R5,R4
        CMP      R0,#+61
        BLT.N    ??v_ImageCut_229
        MOVS     R5,#+60
        B.N      ??v_ImageCut_230
// 1989         else{y_height_useful = hazardStartLine + y_height_useful;}//ÏÞÖÆ¸ß¶È
??v_ImageCut_229:
        ADDS     R5,R4,R5
// 1990         
// 1991         
// 1992         uint8 hazard_counter = 0;
??v_ImageCut_230:
        MOVS     R6,#+0
// 1993         for(loop = hazardStartLine + 1;loop <= y_height_useful;loop++)
        ADDS     R7,R4,#+1
        B.N      ??v_ImageCut_231
// 1994         {//if 'HazarfStartLine' is not a vaild number,we will find It's hard to find the trouble.
// 1995             uint8 perLine_usefulWidth = 0;
??v_ImageCut_232:
        MOVS     R8,#+0
// 1996             perLine_usefulWidth = m_ImageAbstract.Right[loop] - m_ImageAbstract.Left[loop];
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.N    R0,??v_ImageCut_151+0x8
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #+104]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.N    R1,??v_ImageCut_151+0x8
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #+44]
        SUBS     R0,R0,R1
        MOV      R8,R0
// 1997             if(((perLine_usefulWidth >= 0.48*m_ImageAbstract.width[loop])
// 1998              &&(perLine_usefulWidth <= 0.8*m_ImageAbstract.width[loop]))
// 1999              &&(255 != m_ImageAbstract.Right[loop])
// 2000              &&(255 != m_ImageAbstract.Left[loop]))
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.N    R0,??v_ImageCut_151+0x8
        ADDS     R0,R0,R7, LSL #+1
        LDRSH    R0,[R0, #+344]
        BL       __aeabi_i2d
        LDR.W    R2,??v_ImageCut_227+0x4  ;; 0xeb851eb8
        LDR.W    R3,??v_ImageCut_227+0x8  ;; 0x3fdeb851
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        STRD     R2,R3,[SP, #+0]
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        MOV      R0,R8
        BL       __aeabi_ui2d
        LDRD     R2,R3,[SP, #+0]
        BL       __aeabi_cdrcmple
        BHI.N    ??v_ImageCut_233
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        MOV      R0,R8
        BL       __aeabi_ui2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOV      R8,R2
        MOV      R9,R3
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.N    R0,??v_ImageCut_151+0x8
        ADDS     R0,R0,R7, LSL #+1
        LDRSH    R0,[R0, #+344]
        BL       __aeabi_i2d
        LDR.W    R2,??v_ImageCut_227+0xC  ;; 0x9999999a
        LDR.W    R3,??v_ImageCut_227+0x10  ;; 0x3fe99999
        BL       __aeabi_dmul
        MOV      R2,R8
        MOV      R3,R9
        BL       __aeabi_cdrcmple
        BHI.N    ??v_ImageCut_233
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.N    R0,??v_ImageCut_151+0x8
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #+104]
        CMP      R0,#+255
        BEQ.N    ??v_ImageCut_233
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.N    R0,??v_ImageCut_151+0x8
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #+44]
        CMP      R0,#+255
        BEQ.N    ??v_ImageCut_233
// 2001             {
// 2002                 hazard_counter++;//ÓÐÎÊÌâÔÙÅÐ¶ÏHazard
        ADDS     R6,R6,#+1
// 2003                 //m_ImageTesting.hazardvaildLine[loop] = 100;//ÓÐÐ§
// 2004             }//¿ÉÒÔÔö¼Ó×óÓÒÏßµÄÁ¬ÐøÐÔÅÐ¶Ï£¬¶ÔÕÏ°­½øÐÐÍêÈ«ÅÐ¶Ï
// 2005         }
??v_ImageCut_233:
        ADDS     R7,R7,#+1
??v_ImageCut_231:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R5,R7
        BCS.N    ??v_ImageCut_232
// 2006         if(hazard_counter >= 0.8 * y_height_allHave)//»ù±¾È«ÊÇ
        LDRB     R0,[SP, #+8]
        BL       __aeabi_ui2d
        LDR.W    R2,??v_ImageCut_227+0xC  ;; 0x9999999a
        LDR.W    R3,??v_ImageCut_227+0x10  ;; 0x3fe99999
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOV      R8,R2
        MOV      R9,R3
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R0,R6
        BL       __aeabi_ui2d
        MOV      R2,R8
        MOV      R3,R9
        BL       __aeabi_cdrcmple
        BHI.N    ??v_ImageCut_234
// 2007         {m_ImageTesting.isMeetingHazard = 1;}
        LDR.N    R0,??v_ImageCut_151+0x4
        MOVS     R1,#+1
        STRB     R1,[R0, #+135]
        B.N      ??v_ImageCut_235
        DATA
??v_ImageCut_151:
        DC32     0x3fd33333
        DC32     m_ImageTesting
        DC32     m_ImageAbstract
        DC32     0x42340000
        THUMB
// 2008         else
// 2009         {m_ImageTesting.isMeetingHazard = 0;}
??v_ImageCut_234:
        LDR.W    R0,??v_ImageCut_227+0x14
        MOVS     R1,#+0
        STRB     R1,[R0, #+135]
// 2010         
// 2011         if(1 == m_ImageTesting.isMeetingHazard)
??v_ImageCut_235:
        LDR.W    R0,??v_ImageCut_227+0x14
        LDRB     R0,[R0, #+135]
        CMP      R0,#+1
        BNE.W    ??v_ImageCut_236
// 2012         {
// 2013             uint8 _1isLeft_2isRight = 0;
        MOVS     R0,#+0
// 2014             
// 2015             if((hazardStartLine != m_ImageAbstract.Start_Y_Position)&&
// 2016                ((m_ImageAbstract.Central[hazardStartLine] + m_ImageAbstract.Central[hazardStartLine-1])/2
// 2017                <(m_ImageAbstract.Central[hazardStartLine+1] + m_ImageAbstract.Central[hazardStartLine+2])/2))
        LDR.W    R1,??v_ImageCut_227+0x18
        LDRB     R1,[R1, #+464]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,R1
        BEQ.N    ??v_ImageCut_237
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R1,??v_ImageCut_227+0x18
        ADDS     R1,R4,R1
        LDRB     R1,[R1, #+165]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R2,??v_ImageCut_227+0x18
        ADDS     R2,R4,R2
        LDRB     R2,[R2, #+166]
        UXTAB    R1,R2,R1
        MOVS     R2,#+2
        SDIV     R1,R1,R2
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R2,??v_ImageCut_227+0x18
        ADDS     R2,R4,R2
        LDRB     R2,[R2, #+164]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R3,??v_ImageCut_227+0x18
        ADDS     R3,R4,R3
        LDRB     R3,[R3, #+163]
        UXTAB    R2,R3,R2
        MOVS     R3,#+2
        SDIV     R2,R2,R3
        CMP      R2,R1
        BGE.N    ??v_ImageCut_237
// 2018             {
// 2019                 _1isLeft_2isRight = 2;
        MOVS     R0,#+2
        B.N      ??v_ImageCut_238
// 2020             }
// 2021             else if((hazardStartLine != m_ImageAbstract.Start_Y_Position)&&
// 2022                ((m_ImageAbstract.Central[hazardStartLine] + m_ImageAbstract.Central[hazardStartLine-1])/2
// 2023                >(m_ImageAbstract.Central[hazardStartLine+1] + m_ImageAbstract.Central[hazardStartLine+2])/2))
??v_ImageCut_237:
        LDR.W    R1,??v_ImageCut_227+0x18
        LDRB     R1,[R1, #+464]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,R1
        BEQ.N    ??v_ImageCut_238
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R1,??v_ImageCut_227+0x18
        ADDS     R1,R4,R1
        LDRB     R1,[R1, #+164]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R2,??v_ImageCut_227+0x18
        ADDS     R2,R4,R2
        LDRB     R2,[R2, #+163]
        UXTAB    R1,R2,R1
        MOVS     R2,#+2
        SDIV     R1,R1,R2
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R2,??v_ImageCut_227+0x18
        ADDS     R2,R4,R2
        LDRB     R2,[R2, #+165]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R3,??v_ImageCut_227+0x18
        ADDS     R3,R4,R3
        LDRB     R3,[R3, #+166]
        UXTAB    R2,R3,R2
        MOVS     R3,#+2
        SDIV     R2,R2,R3
        CMP      R2,R1
        BGE.N    ??v_ImageCut_238
// 2024             {
// 2025                 _1isLeft_2isRight = 1;
        MOVS     R0,#+1
// 2026             }
// 2027             
// 2028             for(uint8 inter = m_ImageAbstract.Start_Y_Position;inter <= y_height_useful;inter++)
??v_ImageCut_238:
        LDR.W    R1,??v_ImageCut_227+0x18
        LDRB     R1,[R1, #+464]
        B.N      ??v_ImageCut_239
// 2029             {
// 2030                 if((1 == _1isLeft_2isRight)&&(255 != m_ImageAbstract.Left[inter]))
// 2031                 {
// 2032                     m_ImageAbstract.Central[inter] = 
// 2033                    /*(m_ImageAbstract.Central[inter] +*/
// 2034                    (m_ImageAbstract.Left[inter] + m_ImageAbstract.Central[inter])/2/*)/2*/;
// 2035                 }
// 2036                 else if((2 == _1isLeft_2isRight)&&(255 != m_ImageAbstract.Right[inter]))
??v_ImageCut_240:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??v_ImageCut_241
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R2,??v_ImageCut_227+0x18
        ADDS     R2,R1,R2
        LDRB     R2,[R2, #+104]
        CMP      R2,#+255
        BEQ.N    ??v_ImageCut_241
// 2037                 {
// 2038                     m_ImageAbstract.Central[inter] = 
// 2039                    /*(m_ImageAbstract.Central[inter] +*/
// 2040                    (m_ImageAbstract.Right[inter] + m_ImageAbstract.Central[inter])/2/*)/2*/;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R2,??v_ImageCut_227+0x18
        ADDS     R2,R1,R2
        LDRB     R2,[R2, #+104]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R3,??v_ImageCut_227+0x18
        ADDS     R3,R1,R3
        LDRB     R3,[R3, #+164]
        UXTAB    R2,R3,R2
        MOVS     R3,#+2
        SDIV     R2,R2,R3
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R3,??v_ImageCut_227+0x18
        ADDS     R3,R1,R3
        STRB     R2,[R3, #+164]
// 2041                 }
??v_ImageCut_241:
        ADDS     R1,R1,#+1
??v_ImageCut_239:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R5,R1
        BCC.N    ??v_ImageCut_242
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??v_ImageCut_240
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R2,??v_ImageCut_227+0x18
        ADDS     R2,R1,R2
        LDRB     R2,[R2, #+44]
        CMP      R2,#+255
        BEQ.N    ??v_ImageCut_240
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R2,??v_ImageCut_227+0x18
        ADDS     R2,R1,R2
        LDRB     R2,[R2, #+44]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R3,??v_ImageCut_227+0x18
        ADDS     R3,R1,R3
        LDRB     R3,[R3, #+164]
        UXTAB    R2,R3,R2
        MOVS     R3,#+2
        SDIV     R2,R2,R3
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R3,??v_ImageCut_227+0x18
        ADDS     R3,R1,R3
        STRB     R2,[R3, #+164]
        B.N      ??v_ImageCut_241
// 2042             }
// 2043             end_y_ctr = y_height_useful;
??v_ImageCut_242:
        MOV      R11,R5
// 2044         }
// 2045     }while(0);
// 2046 
// 2047     /*Õâ¸öºÜºÏÀí£¬µ«ÊÇ¶Ô¹Õ¼±ÍäºÜ²»ºÏÀí
// 2048     uint8 think_end = end_y_ctr;
// 2049     uint8 used_mode = 0;
// 2050     for(sint8 loop = end_y_ctr;loop >= m_ImageAbstract.Start_Y_Position;loop--)
// 2051     {
// 2052         if(0 == used_mode)
// 2053         {
// 2054             if((constNum_X_MaxCounter - constn_xFindJumpLine_Width * 2 == m_ImageAbstract.Central[loop])
// 2055              ||(constn_xFindJumpLine_Width * 2 == m_ImageAbstract.Central[loop]))
// 2056             {
// 2057                 think_end = loop;
// 2058             }
// 2059             else
// 2060             {
// 2061                 used_mode = 1;
// 2062             }
// 2063         }
// 2064         else//1 == used_mode
// 2065         {
// 2066             if(Sid_None != TrkSide[loop])
// 2067             {
// 2068                 break;
// 2069             }
// 2070             else
// 2071             {
// 2072                 think_end = loop;
// 2073             }
// 2074         }
// 2075     }
// 2076     end_y_ctr = think_end;
// 2077     */
// 2078     m_ImageAbstract.Last_Y_Position = end_y_ctr;//¸³Öµ×îºó<=¸ù¾ÝËÑË÷½á¹ûµÚÒ»´ÎÅÐ¶¨×îÖÕÇé¿ö
??v_ImageCut_236:
??v_ImageCut_212:
        LDR.W    R0,??v_ImageCut_227+0x18
        STRB     R11,[R0, #+465]
// 2079     //¼ì²âµ½ÆÂµÀµÄ»°£¬¾ÍÀûÓÃ×î½üÊ®µãµÄÐÅÏ¢
// 2080     
// 2081     
// 2082 
// 2083     
// 2084     
// 2085     do//½øÐÐÖ±½ÇµÄ´¦Àí=>ÕâÀï½øÐÐÖ±½Ç´¦Àí»áºÃºÜ¶à
// 2086     {
// 2087         //if(0 == m_ImageTesting.isMeetingHazard){break;}
// 2088         /*Õâ¸ö×ö·¨ÊÇ¾ø¶Ô´íÎóµÄ
// 2089         if(1 == TurningBeacauseVeryLittle.isHappened)
// 2090         {
// 2091             m_ImageAbstract.RtAngle_isLasting = 0;
// 2092         }
// 2093         */
// 2094         //if(1 == TurningBeacauseVeryLittle.isHappened){break;}
// 2095         //1.ÅÐ¶ÏÖ±½ÇÇø¼ä
// 2096         /*
// 2097         if(1 == isHaveLonlyLine)
// 2098         {
// 2099             break;//¹Ø±Õ
// 2100         }*/
// 2101         uint8 finder_timer = 0;
        MOVS     R1,#+0
// 2102         //
// 2103         u_Side Rt_WhiteTurningSide = Sid_NaN;
        MOVS     R5,#+50
// 2104         
// 2105 
// 2106         uint8 step_isfind_Rt_WhiteSide_UpestLine = 0;//ÕÒÖ±½Ç×îÉÏ±ß
        MOVS     R8,#+0
// 2107         uint8 step_isfind_Rt_WhiteSide_LowestLine = 0;//ÕÒÖ±½Ç×îÏÂ±ß
        MOVS     R4,#+0
// 2108         //uint8 step_isfind_Rt_WhiteSide_DoubleIsStraight = 0;//ÅÐ¶¨Á½²àÖ±²»Ö±
// 2109         
// 2110         //uint8 step_RthasFound_TurningProcess = 0;//ÒÑ¾­ÕÒµ½Ö±½Ç£¬ÔÚ×ªÏò
// 2111             
// 2112         //uint8 step_hasOccurWrong = 0;//·¢ÉúÁË´íÎó
// 2113         //
// 2114         uint8 flag_Rt_hasfound = 0;
        MOVS     R0,#+0
// 2115         
// 2116         typedef
// 2117         struct
// 2118         {
// 2119             uint8 RtWhiteSide_StartLine;//ÆðÊ¼ÐÐ
// 2120             uint8 RtWhiteSide_EndLine;//
// 2121             uint8 RtStepTwoLostWhiteCounter;//¶ªÊ§µÄ£¨°×É«ÇøÓòµÄ£©³¤¶È
// 2122         }s_RtAngleCondtion;
// 2123         s_RtAngleCondtion RtAngleCondtion;
// 2124         RtAngleCondtion.RtWhiteSide_EndLine = 255;
        MOVS     R2,#+255
        STRB     R2,[SP, #+9]
// 2125         RtAngleCondtion.RtWhiteSide_StartLine = 255;
        MOVS     R2,#+255
        STRB     R2,[SP, #+8]
// 2126         RtAngleCondtion.RtStepTwoLostWhiteCounter = 0;//Çå¿Õ
        MOVS     R2,#+0
        STRB     R2,[SP, #+10]
// 2127         
// 2128         for(sint8 loop = m_ImageAbstract.Last_Y_Position - 1;loop >= m_ImageAbstract.Start_Y_Position;loop--)//-128 128
        LDR.W    R2,??v_ImageCut_227+0x18
        LDRSB    R2,[R2, #+465]
        SUBS     R2,R2,#+1
        B.N      ??v_ImageCut_243
??v_ImageCut_244:
        SUBS     R2,R2,#+1
??v_ImageCut_243:
        MOVS     R3,R2
        SXTB     R3,R3            ;; SignExt  R3,R3,#+24,#+24
        LDR.W    R6,??v_ImageCut_227+0x18
        LDRB     R6,[R6, #+464]
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        SXTH     R6,R6            ;; SignExt  R6,R6,#+16,#+16
        CMP      R3,R6
        BLT.W    ??v_ImageCut_245
// 2129         {//ÐÐÀÛ¼Ó=>´Ó×îºó¿ªÊ¼
// 2130             if(1 == TurningBeacauseVeryLittle.isHappened)
        LDRB     R3,[SP, #+39]
        CMP      R3,#+1
        BNE.N    ??v_ImageCut_246
// 2131             {//¸ù¾ÝÉÏ´ÎÐÞÕý×îÔ¶
// 2132                 step_isfind_Rt_WhiteSide_UpestLine = 0;
        MOVS     R8,#+0
// 2133                 break;//½øÈëÆæ¹ÖµÄÄ£Ê½=>
        B.N      ??v_ImageCut_245
// 2134             }
// 2135             finder_timer++;//µÚÒ»´ÎËÑËØ
??v_ImageCut_246:
        ADDS     R1,R1,#+1
// 2136             if((0 == step_isfind_Rt_WhiteSide_UpestLine)//ÕâÀï»¹Ã»Íê³É
// 2137            &&(((255 == m_ImageAbstract.Left[loop])&&(255 != m_ImageAbstract.Right[loop]))
// 2138             ||((255 != m_ImageAbstract.Left[loop])&&(255 == m_ImageAbstract.Right[loop]))))
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BNE.N    ??v_ImageCut_247
        SXTB     R2,R2            ;; SignExt  R2,R2,#+24,#+24
        LDR.W    R3,??v_ImageCut_227+0x18
        ADDS     R3,R2,R3
        LDRB     R3,[R3, #+44]
        CMP      R3,#+255
        BNE.N    ??v_ImageCut_248
        SXTB     R2,R2            ;; SignExt  R2,R2,#+24,#+24
        LDR.W    R3,??v_ImageCut_227+0x18
        ADDS     R3,R2,R3
        LDRB     R3,[R3, #+104]
        CMP      R3,#+255
        BNE.N    ??v_ImageCut_249
??v_ImageCut_248:
        SXTB     R2,R2            ;; SignExt  R2,R2,#+24,#+24
        LDR.W    R3,??v_ImageCut_227+0x18
        ADDS     R3,R2,R3
        LDRB     R3,[R3, #+44]
        CMP      R3,#+255
        BEQ.N    ??v_ImageCut_247
        SXTB     R2,R2            ;; SignExt  R2,R2,#+24,#+24
        LDR.W    R3,??v_ImageCut_227+0x18
        ADDS     R3,R2,R3
        LDRB     R3,[R3, #+104]
        CMP      R3,#+255
        BNE.N    ??v_ImageCut_247
// 2139             {//³ÖÐøËÑË÷ÖÁÒ»±ßÓÐÏß£¬Ç°ÌáÊÇ±£Ö¤ÕÒµ½×îÔ¶µÄÐÐ¡£
// 2140                 step_isfind_Rt_WhiteSide_UpestLine = 1;//±ê¶¨µÚÒ»²½½áÊø
??v_ImageCut_249:
        MOVS     R8,#+1
// 2141                 if(255 == m_ImageAbstract.Left[loop]){/*becauseThisOutOfTheBlackRtAngle='l';*/Rt_WhiteTurningSide = Sid_Left;}
        SXTB     R2,R2            ;; SignExt  R2,R2,#+24,#+24
        LDR.W    R3,??v_ImageCut_227+0x18
        ADDS     R3,R2,R3
        LDRB     R3,[R3, #+44]
        CMP      R3,#+255
        BNE.N    ??v_ImageCut_250
        MOVS     R5,#+10
// 2142                 if(255 == m_ImageAbstract.Right[loop]){/*becauseThisOutOfTheBlackRtAngle='r';*/Rt_WhiteTurningSide = Sid_Right;}
??v_ImageCut_250:
        SXTB     R2,R2            ;; SignExt  R2,R2,#+24,#+24
        LDR.W    R3,??v_ImageCut_227+0x18
        ADDS     R3,R2,R3
        LDRB     R3,[R3, #+104]
        CMP      R3,#+255
        BNE.N    ??v_ImageCut_251
        MOVS     R5,#+20
// 2143                 RtAngleCondtion.RtWhiteSide_EndLine = loop;
??v_ImageCut_251:
        STRB     R2,[SP, #+9]
// 2144                 if(finder_timer > 5){step_isfind_Rt_WhiteSide_UpestLine = 0;break;} //ÈÏ¶¨ÅÐ¶¨Ê§°Ü=>µ±Ô¶´¦ÓÐÆæ¹ÖµÄ¶«Î÷
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+6
        BLT.N    ??v_ImageCut_252
        MOVS     R8,#+0
        B.N      ??v_ImageCut_245
// 2145             }
// 2146             else
// 2147             {
// 2148                 if(0 == step_isfind_Rt_WhiteSide_LowestLine)//(1 == step_isfind_Rt_WhiteSide_UpestLine)
??v_ImageCut_247:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??v_ImageCut_252
// 2149                 {//ÒòÎªÔÚelse£¬ºóÃæÊÇÒþ²ØÌõ¼þ
// 2150                     if(Sid_Left == Rt_WhiteTurningSide)
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+10
        BNE.N    ??v_ImageCut_253
// 2151                     {
// 2152                         if(255 != m_ImageAbstract.Left[loop])
        SXTB     R2,R2            ;; SignExt  R2,R2,#+24,#+24
        LDR.W    R3,??v_ImageCut_227+0x18
        ADDS     R3,R2,R3
        LDRB     R3,[R3, #+44]
        CMP      R3,#+255
        BEQ.N    ??v_ImageCut_254
// 2153                         {
// 2154                             //m_ImageAbstract.RtAngle_isLasting = 1;
// 2155                             RtAngleCondtion.RtWhiteSide_StartLine = loop;
        STRB     R2,[SP, #+8]
// 2156                             step_isfind_Rt_WhiteSide_LowestLine = 1;//±ê¶¨ÕâÒ»Ìõ¼þ
        MOVS     R4,#+1
// 2157                             break;
        B.N      ??v_ImageCut_245
// 2158                         }
// 2159                         if(255 == m_ImageAbstract.Right[loop]){RtAngleCondtion.RtStepTwoLostWhiteCounter++;}
??v_ImageCut_254:
        SXTB     R2,R2            ;; SignExt  R2,R2,#+24,#+24
        LDR.W    R3,??v_ImageCut_227+0x18
        ADDS     R3,R2,R3
        LDRB     R3,[R3, #+104]
        CMP      R3,#+255
        BNE.N    ??v_ImageCut_253
        LDRB     R3,[SP, #+10]
        ADDS     R3,R3,#+1
        STRB     R3,[SP, #+10]
// 2160                     }
// 2161                     if(Sid_Right == Rt_WhiteTurningSide)
??v_ImageCut_253:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+20
        BNE.N    ??v_ImageCut_252
// 2162                     {
// 2163                         if(255 != m_ImageAbstract.Right[loop])
        SXTB     R2,R2            ;; SignExt  R2,R2,#+24,#+24
        LDR.W    R3,??v_ImageCut_227+0x18
        ADDS     R3,R2,R3
        LDRB     R3,[R3, #+104]
        CMP      R3,#+255
        BEQ.N    ??v_ImageCut_255
// 2164                         {
// 2165                             //m_ImageAbstract.RtAngle_isLasting = 1;
// 2166                             RtAngleCondtion.RtWhiteSide_StartLine = loop;
        STRB     R2,[SP, #+8]
// 2167                             step_isfind_Rt_WhiteSide_LowestLine = 1;//±ê¶¨ÕâÒ»Ìõ¼þ
        MOVS     R4,#+1
// 2168                             break;
        B.N      ??v_ImageCut_245
        DATA
??v_ImageCut_205:
        DC32     0xa1cac083
        DC32     0x3febb645
        THUMB
// 2169                         }
// 2170                         if(255 == m_ImageAbstract.Left[loop]){RtAngleCondtion.RtStepTwoLostWhiteCounter++;}
??v_ImageCut_255:
        SXTB     R2,R2            ;; SignExt  R2,R2,#+24,#+24
        LDR.W    R3,??v_ImageCut_227+0x18
        ADDS     R3,R2,R3
        LDRB     R3,[R3, #+44]
        CMP      R3,#+255
        BNE.N    ??v_ImageCut_252
        LDRB     R3,[SP, #+10]
        ADDS     R3,R3,#+1
        STRB     R3,[SP, #+10]
// 2171                     }
// 2172                 }/*else//ÕâÀï½áÊøÁË => ËùÒÔ½øÐÐÏÂÒ»Ìõ¼þ{}*/
// 2173             }
// 2174             if((0 == step_isfind_Rt_WhiteSide_UpestLine)&&(finder_timer > 6)){break;}
??v_ImageCut_252:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BNE.W    ??v_ImageCut_244
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+7
        BLT.W    ??v_ImageCut_244
// 2175         }//Ñ­»·½áÊø
// 2176         
// 2177         if(1 == step_isfind_Rt_WhiteSide_UpestLine)//×î½ü¶Ë¿ÉÄÜÕÒ²»µ½£¬µ«Ô¶¶ËÊÇÃ»ÓÐµÄ
??v_ImageCut_245:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+1
        BNE.W    ??v_ImageCut_256
// 2178         {
// 2179             do{
// 2180             if(0 == step_isfind_Rt_WhiteSide_LowestLine)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??v_ImageCut_257
// 2181             {
// 2182                 if(1 == m_ImageAbstract.RtAngle_isLasting)//
        LDR.W    R1,??v_ImageCut_227+0x18
        LDRB     R1,[R1, #+480]
        CMP      R1,#+1
        BNE.W    ??v_ImageCut_258
// 2183                 {/*becauseThisOutOfTheBlackRtAngle = 'S';*/ //ÏÞ¶¨¿ªÊ¼Î»ÖÃµÄ´íÎó//ÕâÀïµ¼ÖÂµÄ´íÎó¡£µ«ÊÇÎªÊ²Ã´»áÕÒ²»µ½½ü¶Ë
// 2184                     RtAngleCondtion.RtWhiteSide_StartLine = m_ImageAbstract.Start_Y_Position;}
        LDR.W    R1,??v_ImageCut_227+0x18
        LDRB     R1,[R1, #+464]
        STRB     R1,[SP, #+8]
// 2185                 else
// 2186                 {RtAngleCondtion.RtWhiteSide_EndLine = m_ImageAbstract.Last_Y_Position;
// 2187                 RtAngleCondtion.RtWhiteSide_StartLine = m_ImageAbstract.Start_Y_Position;
// 2188                 SideChangeOccur = 7;break;}//ÔÝÊ±µÄ´ëÊ©
// 2189             }
// 2190             float length = Get45cmLengthFromY(RtAngleCondtion.RtWhiteSide_StartLine);
??v_ImageCut_257:
        LDRB     R1,[SP, #+8]
        VMOV     S0,R1
        VCVT.F32.U32 S0,S0
        VLDR     S1,[SP, #+68]
        VMUL.F32 S0,S0,S1
        LDRB     R1,[SP, #+8]
        VMOV     S1,R1
        VCVT.F32.U32 S1,S1
        VMUL.F32 S0,S0,S1
        LDRB     R1,[SP, #+8]
        VMOV     S1,R1
        VCVT.F32.U32 S1,S1
        VLDR     S2,[SP, #+72]
        VMLA.F32 S0,S1,S2
        VLDR     S1,[SP, #+76]
        VADD.F32 S0,S0,S1
        LDRB     R1,[SP, #+8]
        VMOV     S1,R1
        VCVT.F32.U32 S1,S1
        VLDR     S2,[SP, #+80]
        VLDR     S3,[SP, #+84]
        VMLA.F32 S3,S1,S2
        VDIV.F32 S0,S0,S3
// 2191             m_ImageAbstract.RtAngleLength = 
// 2192             ((float)GetYaxis(RtAngleCondtion.RtWhiteSide_EndLine) - (float)GetYaxis(RtAngleCondtion.RtWhiteSide_StartLine))/
// 2193             ((float)GetYaxis(m_ImageAbstract.Last_Y_Position) - (float)GetYaxis(m_ImageAbstract.Start_Y_Position));
        LDRB     R1,[SP, #+9]
        VMOV     S1,R1
        VCVT.F32.U32 S1,S1
        LDR.W    R1,??v_ImageCut_227
        VLDR     S2,[R1, #+84]
        LDR.W    R1,??v_ImageCut_227
        VLDR     S3,[R1, #+88]
        VMLA.F32 S3,S1,S2
        LDRB     R1,[SP, #+9]
        VMOV     S1,R1
        VCVT.F32.U32 S1,S1
        LDR.W    R1,??v_ImageCut_227
        VLDR     S2,[R1, #+96]
        VMOV.F32 S4,#1.0
        VMLA.F32 S4,S1,S2
        VDIV.F32 S1,S3,S4
        LDRB     R1,[SP, #+8]
        VMOV     S2,R1
        VCVT.F32.U32 S2,S2
        LDR.W    R1,??v_ImageCut_227
        VLDR     S3,[R1, #+84]
        LDR.W    R1,??v_ImageCut_227
        VLDR     S4,[R1, #+88]
        VMLA.F32 S4,S2,S3
        LDRB     R1,[SP, #+8]
        VMOV     S2,R1
        VCVT.F32.U32 S2,S2
        LDR.W    R1,??v_ImageCut_227
        VLDR     S3,[R1, #+96]
        VMOV.F32 S5,#1.0
        VMLA.F32 S5,S2,S3
        VDIV.F32 S2,S4,S5
        VSUB.F32 S1,S1,S2
        LDR.W    R1,??v_ImageCut_227+0x18
        LDRB     R1,[R1, #+465]
        VMOV     S2,R1
        VCVT.F32.U32 S2,S2
        LDR.W    R1,??v_ImageCut_227
        VLDR     S3,[R1, #+84]
        LDR.W    R1,??v_ImageCut_227
        VLDR     S4,[R1, #+88]
        VMLA.F32 S4,S2,S3
        LDR.W    R1,??v_ImageCut_227+0x18
        LDRB     R1,[R1, #+465]
        VMOV     S2,R1
        VCVT.F32.U32 S2,S2
        LDR.W    R1,??v_ImageCut_227
        VLDR     S3,[R1, #+96]
        VMOV.F32 S5,#1.0
        VMLA.F32 S5,S2,S3
        VDIV.F32 S2,S4,S5
        LDR.W    R1,??v_ImageCut_227+0x18
        LDRB     R1,[R1, #+464]
        VMOV     S3,R1
        VCVT.F32.U32 S3,S3
        LDR.W    R1,??v_ImageCut_227
        VLDR     S4,[R1, #+84]
        LDR.W    R1,??v_ImageCut_227
        VLDR     S5,[R1, #+88]
        VMLA.F32 S5,S3,S4
        LDR.W    R1,??v_ImageCut_227+0x18
        LDRB     R1,[R1, #+464]
        VMOV     S3,R1
        VCVT.F32.U32 S3,S3
        LDR.W    R1,??v_ImageCut_227
        VLDR     S4,[R1, #+96]
        VMOV.F32 S6,#1.0
        VMLA.F32 S6,S3,S4
        VDIV.F32 S3,S5,S6
        VSUB.F32 S2,S2,S3
        VDIV.F32 S1,S1,S2
        LDR.W    R1,??v_ImageCut_227+0x18
        VSTR     S1,[R1, #+12]
// 2194             show_isWrong = 'P';
        MOVS     R1,#+80
        STRB     R1,[SP, #+12]
// 2195             if(
// 2196                 ((RtAngleCondtion.RtWhiteSide_EndLine - RtAngleCondtion.RtWhiteSide_StartLine)>=1*length/2)
// 2197                 &&((RtAngleCondtion.RtWhiteSide_EndLine - RtAngleCondtion.RtWhiteSide_StartLine)<=3*length/2)  
// 2198                 &&((RtAngleCondtion.RtStepTwoLostWhiteCounter) < length/10)//ÕâÀïÒ²ÐíÓÐÎÊÌâ£¿
// 2199                 &&((float)(GetYaxis(RtAngleCondtion.RtWhiteSide_EndLine) - (float)GetYaxis(RtAngleCondtion.RtWhiteSide_StartLine))*3>=
// 2200                    (float)(GetYaxis(m_ImageAbstract.Last_Y_Position) - (float)GetYaxis(m_ImageAbstract.Start_Y_Position)))//×îºóÒ»¸ö3¼þÐèÒªÐÞ¸Ä
// 2201                 &&((float)(GetYaxis(RtAngleCondtion.RtWhiteSide_EndLine) - (float)GetYaxis(RtAngleCondtion.RtWhiteSide_StartLine))*2<=
// 2202                    (float)(GetYaxis(m_ImageAbstract.Last_Y_Position) - (float)GetYaxis(m_ImageAbstract.Start_Y_Position)))
// 2203                 )
        VMOV.F32 S1,#1.0
        VMUL.F32 S1,S0,S1
        VMOV.F32 S2,#2.0
        VDIV.F32 S1,S1,S2
        LDRB     R1,[SP, #+9]
        LDRB     R2,[SP, #+8]
        SUBS     R1,R1,R2
        VMOV     S2,R1
        VCVT.F32.S32 S2,S2
        VCMP.F32 S2,S1
        FMSTAT   
        BLT.W    ??v_ImageCut_259
        LDRB     R1,[SP, #+9]
        LDRB     R2,[SP, #+8]
        SUBS     R1,R1,R2
        VMOV     S1,R1
        VCVT.F32.S32 S1,S1
        VMOV.F32 S2,#3.0
        VMUL.F32 S2,S0,S2
        VMOV.F32 S3,#2.0
        VDIV.F32 S2,S2,S3
        VCMP.F32 S2,S1
        FMSTAT   
        BLT.W    ??v_ImageCut_259
        VMOV.F32 S1,#10.0
        VDIV.F32 S1,S0,S1
        LDRB     R1,[SP, #+10]
        VMOV     S2,R1
        VCVT.F32.U32 S2,S2
        VCMP.F32 S2,S1
        FMSTAT   
        BPL.W    ??v_ImageCut_259
        LDR.W    R1,??v_ImageCut_227+0x18
        LDRB     R1,[R1, #+465]
        VMOV     S1,R1
        VCVT.F32.U32 S1,S1
        LDR.W    R1,??v_ImageCut_227
        VLDR     S2,[R1, #+84]
        LDR.W    R1,??v_ImageCut_227
        VLDR     S3,[R1, #+88]
        VMLA.F32 S3,S1,S2
        LDR.W    R1,??v_ImageCut_227+0x18
        LDRB     R1,[R1, #+465]
        VMOV     S1,R1
        VCVT.F32.U32 S1,S1
        LDR.W    R1,??v_ImageCut_227
        VLDR     S2,[R1, #+96]
        VMOV.F32 S4,#1.0
        VMLA.F32 S4,S1,S2
        VDIV.F32 S1,S3,S4
        LDR.W    R1,??v_ImageCut_227+0x18
        LDRB     R1,[R1, #+464]
        VMOV     S2,R1
        VCVT.F32.U32 S2,S2
        LDR.W    R1,??v_ImageCut_227
        VLDR     S3,[R1, #+84]
        LDR.W    R1,??v_ImageCut_227
        VLDR     S4,[R1, #+88]
        VMLA.F32 S4,S2,S3
        LDR.W    R1,??v_ImageCut_227+0x18
        LDRB     R1,[R1, #+464]
        VMOV     S2,R1
        VCVT.F32.U32 S2,S2
        LDR.W    R1,??v_ImageCut_227
        VLDR     S3,[R1, #+96]
        VMOV.F32 S5,#1.0
        VMLA.F32 S5,S2,S3
        VDIV.F32 S2,S4,S5
        VSUB.F32 S1,S1,S2
        LDRB     R1,[SP, #+9]
        VMOV     S2,R1
        VCVT.F32.U32 S2,S2
        LDR.W    R1,??v_ImageCut_227
        VLDR     S3,[R1, #+84]
        LDR.W    R1,??v_ImageCut_227
        VLDR     S4,[R1, #+88]
        VMLA.F32 S4,S2,S3
        LDRB     R1,[SP, #+9]
        VMOV     S2,R1
        VCVT.F32.U32 S2,S2
        LDR.W    R1,??v_ImageCut_227
        VLDR     S3,[R1, #+96]
        VMOV.F32 S5,#1.0
        VMLA.F32 S5,S2,S3
        VDIV.F32 S2,S4,S5
        LDRB     R1,[SP, #+8]
        VMOV     S3,R1
        VCVT.F32.U32 S3,S3
        LDR.W    R1,??v_ImageCut_227
        VLDR     S4,[R1, #+84]
        LDR.W    R1,??v_ImageCut_227
        VLDR     S5,[R1, #+88]
        VMLA.F32 S5,S3,S4
        LDRB     R1,[SP, #+8]
        VMOV     S3,R1
        VCVT.F32.U32 S3,S3
        LDR.W    R1,??v_ImageCut_227
        VLDR     S4,[R1, #+96]
        VMOV.F32 S6,#1.0
        VMLA.F32 S6,S3,S4
        VDIV.F32 S3,S5,S6
        VSUB.F32 S2,S2,S3
        VMOV.F32 S3,#3.0
        VMUL.F32 S2,S2,S3
        VCMP.F32 S2,S1
        FMSTAT   
        BLT.W    ??v_ImageCut_259
        LDRB     R1,[SP, #+9]
        VMOV     S1,R1
        VCVT.F32.U32 S1,S1
        LDR.W    R1,??v_ImageCut_227
        VLDR     S2,[R1, #+84]
        LDR.W    R1,??v_ImageCut_227
        VLDR     S3,[R1, #+88]
        VMLA.F32 S3,S1,S2
        LDRB     R1,[SP, #+9]
        VMOV     S1,R1
        VCVT.F32.U32 S1,S1
        LDR.W    R1,??v_ImageCut_227
        VLDR     S2,[R1, #+96]
        VMOV.F32 S4,#1.0
        VMLA.F32 S4,S1,S2
        VDIV.F32 S1,S3,S4
        LDRB     R1,[SP, #+8]
        VMOV     S2,R1
        VCVT.F32.U32 S2,S2
        LDR.W    R1,??v_ImageCut_227
        VLDR     S3,[R1, #+84]
        LDR.W    R1,??v_ImageCut_227
        VLDR     S4,[R1, #+88]
        VMLA.F32 S4,S2,S3
        LDRB     R1,[SP, #+8]
        VMOV     S2,R1
        VCVT.F32.U32 S2,S2
        LDR.W    R1,??v_ImageCut_227
        VLDR     S3,[R1, #+96]
        VMOV.F32 S5,#1.0
        VMLA.F32 S5,S2,S3
        VDIV.F32 S2,S4,S5
        VSUB.F32 S1,S1,S2
        VMOV.F32 S2,#2.0
        VMUL.F32 S1,S1,S2
        LDR.W    R1,??v_ImageCut_227+0x18
        LDRB     R1,[R1, #+465]
        VMOV     S2,R1
        VCVT.F32.U32 S2,S2
        LDR.W    R1,??v_ImageCut_227
        VLDR     S3,[R1, #+84]
        LDR.W    R1,??v_ImageCut_227
        VLDR     S4,[R1, #+88]
        VMLA.F32 S4,S2,S3
        LDR.W    R1,??v_ImageCut_227+0x18
        LDRB     R1,[R1, #+465]
        VMOV     S2,R1
        VCVT.F32.U32 S2,S2
        LDR.W    R1,??v_ImageCut_227
        VLDR     S3,[R1, #+96]
        VMOV.F32 S5,#1.0
        VMLA.F32 S5,S2,S3
        VDIV.F32 S2,S4,S5
        LDR.W    R1,??v_ImageCut_227+0x18
        LDRB     R1,[R1, #+464]
        VMOV     S3,R1
        VCVT.F32.U32 S3,S3
        LDR.W    R1,??v_ImageCut_227
        VLDR     S4,[R1, #+84]
        LDR.W    R1,??v_ImageCut_227
        VLDR     S5,[R1, #+88]
        VMLA.F32 S5,S3,S4
        LDR.W    R1,??v_ImageCut_227+0x18
        LDRB     R1,[R1, #+464]
        VMOV     S3,R1
        VCVT.F32.U32 S3,S3
        LDR.W    R1,??v_ImageCut_227
        VLDR     S4,[R1, #+96]
        VMOV.F32 S6,#1.0
        VMLA.F32 S6,S3,S4
        VDIV.F32 S3,S5,S6
        VSUB.F32 S2,S2,S3
        VCMP.F32 S2,S1
        FMSTAT   
        BLT.W    ??v_ImageCut_259
// 2204             {
// 2205                 show_isWrong = 'A';
        MOVS     R1,#+65
        STRB     R1,[SP, #+12]
// 2206                 float K = 255.f;
        VLDR.W   S1,??v_ImageCut_260  ;; 0x437f0000
// 2207                 float var = 255.f;
        VLDR.W   S0,??v_ImageCut_260  ;; 0x437f0000
// 2208                 if(Sid_NaN == Rt_WhiteTurningSide)
        B.N      ??v_ImageCut_261
        DATA
??v_ImageCut_260:
        DC32     0x437f0000
        THUMB
??v_ImageCut_261:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+50
        BNE.N    ??v_ImageCut_262
// 2209                 {
// 2210                     Rt_WhiteTurningSide = m_ImageAbstract.Rt_LastTurning;
        LDR.W    R1,??v_ImageCut_227+0x18
        LDRB     R5,[R1, #+17]
// 2211                 }
// 2212                 
// 2213                 if((Sid_Left == Rt_WhiteTurningSide)&&(RtAngleCondtion.RtWhiteSide_EndLine-RtAngleCondtion.RtWhiteSide_StartLine>4))
??v_ImageCut_262:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+10
        BNE.W    ??v_ImageCut_263
        LDRB     R1,[SP, #+9]
        LDRB     R2,[SP, #+8]
        SUBS     R1,R1,R2
        CMP      R1,#+5
        BLT.W    ??v_ImageCut_263
// 2214                 {
// 2215                     float cut_number = (RtAngleCondtion.RtWhiteSide_EndLine + RtAngleCondtion.RtWhiteSide_StartLine)/2 - (RtAngleCondtion.RtWhiteSide_StartLine + m_ImageAbstract.Start_Y_Position)/2;
        LDRB     R0,[SP, #+9]
        LDRB     R1,[SP, #+8]
        UXTAB    R0,R1,R0
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        LDRB     R1,[SP, #+8]
        LDR.W    R2,??v_ImageCut_227+0x18
        LDRB     R2,[R2, #+464]
        UXTAB    R1,R2,R1
        MOVS     R2,#+2
        SDIV     R1,R1,R2
        SUBS     R0,R0,R1
        VMOV     S1,R0
        VCVT.F32.S32 S1,S1
// 2216                     float cut_son = m_ImageAbstract.Right[(RtAngleCondtion.RtWhiteSide_EndLine + RtAngleCondtion.RtWhiteSide_StartLine)/2]
// 2217                                   - m_ImageAbstract.Right[(RtAngleCondtion.RtWhiteSide_StartLine + m_ImageAbstract.Start_Y_Position)/2];
        LDRB     R0,[SP, #+9]
        LDRB     R1,[SP, #+8]
        UXTAB    R0,R1,R0
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        LDR.W    R1,??v_ImageCut_227+0x18
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+104]
        LDRB     R1,[SP, #+8]
        LDR.W    R2,??v_ImageCut_227+0x18
        LDRB     R2,[R2, #+464]
        UXTAB    R1,R2,R1
        MOVS     R2,#+2
        SDIV     R1,R1,R2
        LDR.W    R2,??v_ImageCut_227+0x18
        ADDS     R1,R1,R2
        LDRB     R1,[R1, #+104]
        SUBS     R0,R0,R1
        VMOV     S2,R0
        VCVT.F32.S32 S2,S2
// 2218                     K = cut_son / cut_number;//¸ù¾Ý×ÝÖá¾ö¶¨ºáÖá
        VDIV.F32 S1,S2,S1
// 2219                     float B = m_ImageAbstract.Right[(RtAngleCondtion.RtWhiteSide_StartLine + m_ImageAbstract.Start_Y_Position)/2]
// 2220                             - K*(RtAngleCondtion.RtWhiteSide_StartLine + m_ImageAbstract.Start_Y_Position)/2;//m_ImageAbstract.Left[];                
        LDRB     R0,[SP, #+8]
        LDR.W    R1,??v_ImageCut_227+0x18
        LDRB     R1,[R1, #+464]
        UXTAB    R0,R1,R0
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        LDR.W    R1,??v_ImageCut_227+0x18
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+104]
        VMOV     S2,R0
        VCVT.F32.U32 S2,S2
        LDRB     R0,[SP, #+8]
        LDR.W    R1,??v_ImageCut_227+0x18
        LDRB     R1,[R1, #+464]
        UXTAB    R0,R1,R0
        VMOV     S3,R0
        VCVT.F32.S32 S3,S3
        VMUL.F32 S3,S3,S1
        VMOV.F32 S4,#2.0
        VDIV.F32 S3,S3,S4
        VSUB.F32 S2,S2,S3
// 2221                     uint32 counter = 0;                    
        MOVS     R0,#+0
// 2222                     for(uint8 inter = (m_ImageAbstract.Start_Y_Position + 2);
        LDR.W    R1,??v_ImageCut_227+0x18
        LDRB     R1,[R1, #+464]
        ADDS     R1,R1,#+2
        B.N      ??v_ImageCut_264
??v_ImageCut_258:
        LDR.W    R1,??v_ImageCut_227+0x18
        LDRB     R1,[R1, #+465]
        STRB     R1,[SP, #+9]
        LDR.W    R1,??v_ImageCut_227+0x18
        LDRB     R1,[R1, #+464]
        STRB     R1,[SP, #+8]
        MOVS     R1,#+7
        STRB     R1,[SP, #+13]
        B.N      ??v_ImageCut_265
// 2223                         inter < (m_ImageAbstract.Last_Y_Position - 2);inter++)
// 2224                     {
// 2225                         if(255 != m_ImageAbstract.Right[inter])
??v_ImageCut_266:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R2,??v_ImageCut_227+0x18
        ADDS     R2,R1,R2
        LDRB     R2,[R2, #+104]
        CMP      R2,#+255
        BEQ.N    ??v_ImageCut_267
// 2226                         {
// 2227                             counter ++;
        ADDS     R0,R0,#+1
// 2228                             float ThinkGoodNumber = inter * K + B;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        VMOV     S3,R1
        VCVT.F32.U32 S4,S3
        VMOV.F32 S3,S2
        VMLA.F32 S3,S4,S1
// 2229                             var += (float)((ThinkGoodNumber - m_ImageAbstract.Right[inter])*(ThinkGoodNumber - m_ImageAbstract.Right[inter]));
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R2,??v_ImageCut_227+0x18
        ADDS     R2,R1,R2
        LDRB     R2,[R2, #+104]
        VMOV     S4,R2
        VCVT.F32.U32 S4,S4
        VSUB.F32 S4,S3,S4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R2,??v_ImageCut_227+0x18
        ADDS     R2,R1,R2
        LDRB     R2,[R2, #+104]
        VMOV     S5,R2
        VCVT.F32.U32 S5,S5
        VSUB.F32 S3,S3,S5
        VMLA.F32 S0,S4,S3
// 2230                         }
// 2231                     }
??v_ImageCut_267:
        ADDS     R1,R1,#+1
??v_ImageCut_264:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R2,??v_ImageCut_227+0x18
        LDRB     R2,[R2, #+465]
        SUBS     R2,R2,#+2
        CMP      R1,R2
        BLT.N    ??v_ImageCut_266
// 2232                     var /= counter;
        VMOV     S2,R0
        VCVT.F32.U32 S2,S2
        VDIV.F32 S0,S0,S2
// 2233                     if((__F_ABS(var) >= 8.f)||(__F_ABS(K) >= 2.f))
        VCMP.F32 S0,#0.0
        FMSTAT   
        BPL.N    ??v_ImageCut_268
        VNEG.F32 S2,S0
        B.N      ??v_ImageCut_269
??v_ImageCut_268:
        VMOV.F32 S2,S0
??v_ImageCut_269:
        VMOV.F32 S3,#8.0
        VCMP.F32 S2,S3
        FMSTAT   
        BGE.N    ??v_ImageCut_270
        VCMP.F32 S1,#0.0
        FMSTAT   
        BPL.N    ??v_ImageCut_271
        VNEG.F32 S2,S1
        B.N      ??v_ImageCut_272
??v_ImageCut_271:
        VMOV.F32 S2,S1
??v_ImageCut_272:
        VMOV.F32 S3,#2.0
        VCMP.F32 S2,S3
        FMSTAT   
        BLT.N    ??v_ImageCut_273
// 2234                     {//²»Âú×ã?
// 2235                         show_isWrong = 'S';
??v_ImageCut_270:
        MOVS     R0,#+83
        STRB     R0,[SP, #+12]
// 2236                         flag_Rt_hasfound = 0;//µÚÒ»´ÎÖ±½Ç±êÖ¾Ã»ÕÒµ½
        MOVS     R0,#+0
// 2237                         m_ImageAbstract.Rt_Angle_End_Y = RtAngleCondtion.RtWhiteSide_EndLine;
        LDR.N    R1,??v_ImageCut_227+0x18
        LDRB     R2,[SP, #+9]
        STRB     R2,[R1, #+19]
// 2238                         m_ImageAbstract.Rt_Angle_Start_Y = RtAngleCondtion.RtWhiteSide_StartLine;
        LDR.N    R1,??v_ImageCut_227+0x18
        LDRB     R2,[SP, #+8]
        STRB     R2,[R1, #+18]
        B.N      ??v_ImageCut_263
// 2239                         //SideChangeOccur = 6;
// 2240                     }
// 2241                     else
// 2242                     {
// 2243                         show_isWrong = 'D';
??v_ImageCut_273:
        MOVS     R0,#+68
        STRB     R0,[SP, #+12]
// 2244                         flag_Rt_hasfound = 1;
        MOVS     R0,#+1
// 2245                         m_ImageAbstract.Rt_Angle_End_Y = RtAngleCondtion.RtWhiteSide_EndLine;
        LDR.N    R1,??v_ImageCut_227+0x18
        LDRB     R2,[SP, #+9]
        STRB     R2,[R1, #+19]
// 2246                         m_ImageAbstract.Rt_Angle_Start_Y = RtAngleCondtion.RtWhiteSide_StartLine;//(RtAngleCondtion.RtWhiteSide_EndLine-RtAngleCondtion.RtWhiteSide_StartLine>4)
        LDR.N    R1,??v_ImageCut_227+0x18
        LDRB     R2,[SP, #+8]
        STRB     R2,[R1, #+18]
// 2247                         SideChangeOccur = 5;
        MOVS     R1,#+5
        STRB     R1,[SP, #+13]
// 2248                     }
// 2249                 }
// 2250                 if((Sid_Right == Rt_WhiteTurningSide)&&(RtAngleCondtion.RtWhiteSide_EndLine-RtAngleCondtion.RtWhiteSide_StartLine>4))
??v_ImageCut_263:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+20
        BNE.W    ??v_ImageCut_274
        LDRB     R1,[SP, #+9]
        LDRB     R2,[SP, #+8]
        SUBS     R1,R1,R2
        CMP      R1,#+5
        BLT.W    ??v_ImageCut_274
// 2251                 {
// 2252                     float cut_number = (RtAngleCondtion.RtWhiteSide_EndLine + RtAngleCondtion.RtWhiteSide_StartLine)/2
// 2253                                      - (RtAngleCondtion.RtWhiteSide_StartLine + m_ImageAbstract.Start_Y_Position)/2;
        LDRB     R0,[SP, #+9]
        LDRB     R1,[SP, #+8]
        UXTAB    R0,R1,R0
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        LDRB     R1,[SP, #+8]
        LDR.N    R2,??v_ImageCut_227+0x18
        LDRB     R2,[R2, #+464]
        UXTAB    R1,R2,R1
        MOVS     R2,#+2
        SDIV     R1,R1,R2
        SUBS     R0,R0,R1
        VMOV     S1,R0
        VCVT.F32.S32 S1,S1
// 2254                     float cut_son = m_ImageAbstract.Left[(RtAngleCondtion.RtWhiteSide_EndLine + RtAngleCondtion.RtWhiteSide_StartLine)/2]
// 2255                                   - m_ImageAbstract.Left[(RtAngleCondtion.RtWhiteSide_StartLine + m_ImageAbstract.Start_Y_Position)/2];
        LDRB     R0,[SP, #+9]
        LDRB     R1,[SP, #+8]
        UXTAB    R0,R1,R0
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        LDR.N    R1,??v_ImageCut_227+0x18
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+44]
        LDRB     R1,[SP, #+8]
        LDR.N    R2,??v_ImageCut_227+0x18
        LDRB     R2,[R2, #+464]
        UXTAB    R1,R2,R1
        MOVS     R2,#+2
        SDIV     R1,R1,R2
        LDR.N    R2,??v_ImageCut_227+0x18
        ADDS     R1,R1,R2
        LDRB     R1,[R1, #+44]
        SUBS     R0,R0,R1
        VMOV     S2,R0
        VCVT.F32.S32 S2,S2
// 2256                     K = cut_son / cut_number;//¸ù¾Ý×ÝÖá¾ö¶¨ºáÖá
        VDIV.F32 S1,S2,S1
// 2257                     float B = m_ImageAbstract.Left[(RtAngleCondtion.RtWhiteSide_StartLine + m_ImageAbstract.Start_Y_Position)/2]
// 2258                             - K*(RtAngleCondtion.RtWhiteSide_StartLine + m_ImageAbstract.Start_Y_Position)/2;//m_ImageAbstract.Left[];                
        LDRB     R0,[SP, #+8]
        LDR.N    R1,??v_ImageCut_227+0x18
        LDRB     R1,[R1, #+464]
        UXTAB    R0,R1,R0
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        LDR.N    R1,??v_ImageCut_227+0x18
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+44]
        VMOV     S2,R0
        VCVT.F32.U32 S2,S2
        LDRB     R0,[SP, #+8]
        LDR.N    R1,??v_ImageCut_227+0x18
        LDRB     R1,[R1, #+464]
        UXTAB    R0,R1,R0
        VMOV     S3,R0
        VCVT.F32.S32 S3,S3
        VMUL.F32 S3,S3,S1
        VMOV.F32 S4,#2.0
        VDIV.F32 S3,S3,S4
        VSUB.F32 S2,S2,S3
// 2259                     uint32 counter = 0; 
        MOVS     R0,#+0
// 2260                     for(uint8 inter = (m_ImageAbstract.Start_Y_Position + 2);
        LDR.N    R1,??v_ImageCut_227+0x18
        LDRB     R1,[R1, #+464]
        ADDS     R1,R1,#+2
        B.N      ??v_ImageCut_275
// 2261                         inter < (m_ImageAbstract.Last_Y_Position - 2);inter++)
// 2262                     {
// 2263                         if(255 != m_ImageAbstract.Left[inter])
??v_ImageCut_276:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R2,??v_ImageCut_227+0x18
        ADDS     R2,R1,R2
        LDRB     R2,[R2, #+44]
        CMP      R2,#+255
        BEQ.N    ??v_ImageCut_277
// 2264                         {
// 2265                             counter ++;
        ADDS     R0,R0,#+1
// 2266                             float ThinkGoodNumber = inter * K + B;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        VMOV     S3,R1
        VCVT.F32.U32 S4,S3
        VMOV.F32 S3,S2
        VMLA.F32 S3,S4,S1
// 2267                             var += (float)((ThinkGoodNumber - m_ImageAbstract.Left[inter])*(ThinkGoodNumber - m_ImageAbstract.Left[inter]));
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R2,??v_ImageCut_227+0x18
        ADDS     R2,R1,R2
        LDRB     R2,[R2, #+44]
        VMOV     S4,R2
        VCVT.F32.U32 S4,S4
        VSUB.F32 S4,S3,S4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R2,??v_ImageCut_227+0x18
        ADDS     R2,R1,R2
        LDRB     R2,[R2, #+44]
        VMOV     S5,R2
        VCVT.F32.U32 S5,S5
        VSUB.F32 S3,S3,S5
        VMLA.F32 S0,S4,S3
// 2268                         }
// 2269                     }
??v_ImageCut_277:
        ADDS     R1,R1,#+1
??v_ImageCut_275:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R2,??v_ImageCut_227+0x18
        LDRB     R2,[R2, #+465]
        SUBS     R2,R2,#+2
        CMP      R1,R2
        BLT.N    ??v_ImageCut_276
// 2270                     var /= counter;
        VMOV     S2,R0
        VCVT.F32.U32 S2,S2
        VDIV.F32 S0,S0,S2
// 2271                     if((__F_ABS(var) >= 12.f)||(__F_ABS(K) >= 2.f))
        VCMP.F32 S0,#0.0
        FMSTAT   
        BPL.N    ??v_ImageCut_278
        VNEG.F32 S2,S0
        B.N      ??v_ImageCut_279
??v_ImageCut_278:
        VMOV.F32 S2,S0
??v_ImageCut_279:
        VMOV.F32 S3,#12.0
        VCMP.F32 S2,S3
        FMSTAT   
        BGE.N    ??v_ImageCut_280
        VCMP.F32 S1,#0.0
        FMSTAT   
        BPL.N    ??v_ImageCut_281
        VNEG.F32 S2,S1
        B.N      ??v_ImageCut_282
??v_ImageCut_281:
        VMOV.F32 S2,S1
??v_ImageCut_282:
        VMOV.F32 S3,#2.0
        VCMP.F32 S2,S3
        FMSTAT   
        BLT.N    ??v_ImageCut_283
// 2272                     {
// 2273                         show_isWrong = 'S';
??v_ImageCut_280:
        MOVS     R0,#+83
        STRB     R0,[SP, #+12]
// 2274                         flag_Rt_hasfound = 0;
        MOVS     R0,#+0
// 2275                         m_ImageAbstract.Rt_Angle_End_Y = RtAngleCondtion.RtWhiteSide_EndLine;
        LDR.N    R1,??v_ImageCut_227+0x18
        LDRB     R2,[SP, #+9]
        STRB     R2,[R1, #+19]
// 2276                         m_ImageAbstract.Rt_Angle_Start_Y = RtAngleCondtion.RtWhiteSide_StartLine;
        LDR.N    R1,??v_ImageCut_227+0x18
        LDRB     R2,[SP, #+8]
        STRB     R2,[R1, #+18]
// 2277                         SideChangeOccur = 1;
        MOVS     R1,#+1
        STRB     R1,[SP, #+13]
        B.N      ??v_ImageCut_274
// 2278                     }
// 2279                     else
// 2280                     {
// 2281                         show_isWrong = 'D';
??v_ImageCut_283:
        MOVS     R0,#+68
        STRB     R0,[SP, #+12]
// 2282                         flag_Rt_hasfound = 1;
        MOVS     R0,#+1
// 2283                         m_ImageAbstract.Rt_Angle_End_Y = RtAngleCondtion.RtWhiteSide_EndLine;
        LDR.N    R1,??v_ImageCut_227+0x18
        LDRB     R2,[SP, #+9]
        STRB     R2,[R1, #+19]
// 2284                         m_ImageAbstract.Rt_Angle_Start_Y = RtAngleCondtion.RtWhiteSide_StartLine;
        LDR.N    R1,??v_ImageCut_227+0x18
        LDRB     R2,[SP, #+8]
        STRB     R2,[R1, #+18]
// 2285                         SideChangeOccur = 2;
        MOVS     R1,#+2
        STRB     R1,[SP, #+13]
// 2286                     }
// 2287                 }
// 2288                 m_ImageAbstract.Rt_K_Var = K;
??v_ImageCut_274:
        LDR.N    R1,??v_ImageCut_227+0x18
        VSTR     S1,[R1, #+28]
// 2289                 m_ImageAbstract.Rt_Var = var;
        LDR.N    R1,??v_ImageCut_227+0x18
        VSTR     S0,[R1, #+32]
// 2290                 m_ImageAbstract.Rt_LastTurning = Rt_WhiteTurningSide;
        LDR.N    R1,??v_ImageCut_227+0x18
        STRB     R5,[R1, #+17]
        B.N      ??v_ImageCut_284
// 2291             }
// 2292             else
// 2293             {
// 2294                 RtAngleCondtion.RtWhiteSide_EndLine = m_ImageAbstract.Last_Y_Position;
??v_ImageCut_259:
        LDR.N    R1,??v_ImageCut_227+0x18
        LDRB     R1,[R1, #+465]
        STRB     R1,[SP, #+9]
// 2295                 RtAngleCondtion.RtWhiteSide_StartLine = m_ImageAbstract.Start_Y_Position;
        LDR.N    R1,??v_ImageCut_227+0x18
        LDRB     R1,[R1, #+464]
        STRB     R1,[SP, #+8]
// 2296                 SideChangeOccur = 3;
        MOVS     R1,#+3
        STRB     R1,[SP, #+13]
// 2297                     m_ImageAbstract.Rt_Angle_error = 0;
        LDR.N    R1,??v_ImageCut_227+0x18
        MOVS     R2,#+0
        STRH     R2,[R1, #+20]
// 2298                     if(!((RtAngleCondtion.RtWhiteSide_EndLine - RtAngleCondtion.RtWhiteSide_StartLine)>=1*length/2))
        VMOV.F32 S1,#1.0
        VMUL.F32 S1,S0,S1
        VMOV.F32 S2,#2.0
        VDIV.F32 S1,S1,S2
        LDRB     R1,[SP, #+9]
        LDRB     R2,[SP, #+8]
        SUBS     R1,R1,R2
        VMOV     S2,R1
        VCVT.F32.S32 S2,S2
        VCMP.F32 S2,S1
        FMSTAT   
        BGE.N    ??v_ImageCut_285
// 2299                     {m_ImageAbstract.Rt_Angle_error = 0x01;}
        LDR.N    R1,??v_ImageCut_227+0x18
        MOVS     R2,#+1
        STRH     R2,[R1, #+20]
// 2300                     if(!((RtAngleCondtion.RtWhiteSide_EndLine - RtAngleCondtion.RtWhiteSide_StartLine)<=3*length/2))  
??v_ImageCut_285:
        LDRB     R1,[SP, #+9]
        LDRB     R2,[SP, #+8]
        SUBS     R1,R1,R2
        VMOV     S1,R1
        VCVT.F32.S32 S1,S1
        VMOV.F32 S2,#3.0
        VMUL.F32 S2,S0,S2
        VMOV.F32 S3,#2.0
        VDIV.F32 S2,S2,S3
        VCMP.F32 S2,S1
        FMSTAT   
        BGE.N    ??v_ImageCut_286
// 2301                     {m_ImageAbstract.Rt_Angle_error = 0x02;}
        LDR.N    R1,??v_ImageCut_227+0x18
        MOVS     R2,#+2
        STRH     R2,[R1, #+20]
// 2302                     if(!((RtAngleCondtion.RtStepTwoLostWhiteCounter) < length/10))
??v_ImageCut_286:
        VMOV.F32 S1,#10.0
        VDIV.F32 S1,S0,S1
        LDRB     R1,[SP, #+10]
        VMOV     S2,R1
        VCVT.F32.U32 S2,S2
        VCMP.F32 S2,S1
        FMSTAT   
        BMI.N    ??v_ImageCut_287
// 2303                     {m_ImageAbstract.Rt_Angle_error = 0x04;}
        LDR.N    R1,??v_ImageCut_227+0x18
        MOVS     R2,#+4
        STRH     R2,[R1, #+20]
// 2304                     if(!(length > 6))
??v_ImageCut_287:
        VLDR.W   S1,??v_ImageCut_227+0x1C  ;; 0x40c00001
        VCMP.F32 S0,S1
        FMSTAT   
        BGE.N    ??v_ImageCut_284
// 2305                     {m_ImageAbstract.Rt_Angle_error = 0x08;}
        LDR.N    R1,??v_ImageCut_227+0x18
        MOVS     R2,#+8
        STRH     R2,[R1, #+20]
// 2306             }
// 2307             }while(0);
??v_ImageCut_284:
        B.N      ??v_ImageCut_265
// 2308         }
// 2309         else
// 2310         {
// 2311             if(1 == m_ImageAbstract.RtAngle_isLasting)
??v_ImageCut_256:
        LDR.N    R1,??v_ImageCut_227+0x18
        LDRB     R1,[R1, #+480]
        CMP      R1,#+1
        BNE.N    ??v_ImageCut_265
// 2312             {
// 2313                 RtAngleCondtion.RtWhiteSide_EndLine = m_ImageAbstract.Last_Y_Position;
        LDR.N    R1,??v_ImageCut_227+0x18
        LDRB     R1,[R1, #+465]
        STRB     R1,[SP, #+9]
// 2314                 RtAngleCondtion.RtWhiteSide_StartLine = m_ImageAbstract.Start_Y_Position;
        LDR.N    R1,??v_ImageCut_227+0x18
        LDRB     R1,[R1, #+464]
        STRB     R1,[SP, #+8]
// 2315                 SideChangeOccur = 4;
        MOVS     R1,#+4
        STRB     R1,[SP, #+13]
// 2316             }
// 2317         }
// 2318         
// 2319         if(1 == flag_Rt_hasfound)
??v_ImageCut_265:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??v_ImageCut_288
// 2320         {
// 2321             m_ImageAbstract.RtAngle_isLasting = 1;//ÈçÈôisLastingµÚÒ»´ÎÕÒµ½
        LDR.N    R0,??v_ImageCut_227+0x18
        MOVS     R1,#+1
        STRB     R1,[R0, #+480]
// 2322         }
// 2323         
// 2324         uint8 isTime2BackAngel = 0;
??v_ImageCut_288:
        MOVS     R0,#+0
        STRB     R0,[SP, #+15]
// 2325         do
// 2326         {
// 2327             //break;
// 2328             if(1 == m_ImageAbstract.RtAngle_isLasting)
        LDR.N    R0,??v_ImageCut_227+0x18
        LDRB     R0,[R0, #+480]
        CMP      R0,#+1
        BNE.W    ??v_ImageCut_289
// 2329             {
// 2330                 float change_X = 0.f;
        VLDR.W   S16,??v_ImageCut_227+0x20  ;; 0x0
// 2331                 if(Sid_NaN == Rt_WhiteTurningSide)
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+50
        BNE.N    ??v_ImageCut_290
// 2332                 {
// 2333                     /*becauseThisOutOfTheBlackRtAngle = 'Z';*///È«¾ÖZeroÇé¿ö
// 2334                     Rt_WhiteTurningSide = m_ImageAbstract.Rt_LastTurning;//ÕâÀïÒ²×öÒ»¸öÐÞ²¹
        LDR.N    R0,??v_ImageCut_227+0x18
        LDRB     R5,[R0, #+17]
// 2335                 }//ÓÉÓÚ³öÏÖZeroµÄÇé¿ö£¬»òÐí»áµ¼ÖÂÕâÐ©ÎÊÌâµÄ³öÏÖ
// 2336                 
// 2337                 uint8 choose_theLast = m_ImageAbstract.Last_Y_Position;
??v_ImageCut_290:
        LDR.N    R0,??v_ImageCut_227+0x18
        LDRB     R0,[R0, #+465]
// 2338                 uint8 end_findLeftOrRight = (m_ImageAbstract.Last_Y_Position + RtAngleCondtion.RtWhiteSide_StartLine)/2;/*(m_ImageAbstract.Last_Y_Position+(m_ImageAbstract.Last_Y_Position + RtAngleCondtion.RtWhiteSide_StartLine)/2)/2*/ //;
        LDR.N    R1,??v_ImageCut_227+0x18
        LDRB     R1,[R1, #+465]
        LDRB     R2,[SP, #+8]
        ADDS     R1,R2,R1
        MOVS     R2,#+2
        SDIV     R6,R1,R2
// 2339 #define         DE_CalTheBetween(y)             (((__ABS(m_ImageAbstract.Left[y]\ 
// 2340                                               -m_ImageAbstract.Right[y])\ 
// 2341                                               <=1.1*m_ImageAbstract.width[y])\ 
// 2342                                             &&\ 
// 2343                                                 (__ABS(m_ImageAbstract.Left[y]\ 
// 2344                                               -m_ImageAbstract.Right[y])\ 
// 2345                                               >=0.9*m_ImageAbstract.width[y]))\ 
// 2346                                             &&(255 != m_ImageAbstract.Left[y])\ 
// 2347                                             &&(255 != m_ImageAbstract.Right[y]))
// 2348                                                     
// 2349                 
// 2350 
// 2351                 if(1 == TurningBeacauseVeryLittle.isHappened)
        LDRB     R1,[SP, #+39]
        CMP      R1,#+1
        BNE.N    ??v_ImageCut_291
// 2352                 {
// 2353                     isTime2BackAngel = 1;break;
        MOVS     R0,#+1
        STRB     R0,[SP, #+15]
        B.N      ??v_ImageCut_292
        DATA
??v_ImageCut_227:
        DC32     m_Control
        DC32     0xeb851eb8
        DC32     0x3fdeb851
        DC32     0x9999999a
        DC32     0x3fe99999
        DC32     m_ImageTesting
        DC32     m_ImageAbstract
        DC32     0x40c00001
        DC32     0x0
        THUMB
// 2354                     //end_findLeftOrRight = (TurningBeacauseVeryLittle.y_end + m_ImageAbstract.Start_Y_Position)/2;
// 2355                     //choose_theLast = TurningBeacauseVeryLittle.y_end;
// 2356                     //isTime2BackAngel = 1;break;
// 2357                 }
// 2358                 uint8 endJudgeLine =(choose_theLast+
// 2359                                     (choose_theLast+
// 2360                                     (choose_theLast+end_findLeftOrRight)/2)/2)/2;
??v_ImageCut_291:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        UXTAB    R1,R6,R0
        MOVS     R2,#+2
        SDIV     R1,R1,R2
        UXTAB    R1,R1,R0
        MOVS     R2,#+2
        SDIV     R1,R1,R2
        UXTAB    R0,R1,R0
        MOVS     R1,#+2
        SDIV     R7,R0,R1
// 2361                 if(Sid_Right == Rt_WhiteTurningSide)
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+20
        BNE.N    ??v_ImageCut_293
// 2362                 {//=========================================================
// 2363                     /*
// 2364                     if((255 != m_ImageAbstract.Left[m_ImageAbstract.Last_Y_Position])
// 2365                      &&(m_ImageAbstract.Left[m_ImageAbstract.Last_Y_Position] >= 181-3-6))
// 2366                     {
// 2367                         m_ImageAbstract.Last_Y_Position = (m_ImageAbstract.Last_Y_Position + m_ImageAbstract.Start_Y_Position)/2;
// 2368                     }
// 2369                     */
// 2370                     show_About_RtAngle = 'l';
        MOVS     R11,#+108
// 2371                     change_X = m_ImageAbstract.Right[end_findLeftOrRight];
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R0,??DataTable7_2
        ADDS     R0,R6,R0
        LDRB     R0,[R0, #+104]
        VMOV     S0,R0
        VCVT.F32.U32 S16,S0
// 2372                     if((255.f == m_ImageAbstract.Right[end_findLeftOrRight])/*||(1 == TurningBeacauseVeryLittle.isHappened)*/)
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R0,??DataTable7_2
        ADDS     R0,R6,R0
        LDRB     R0,[R0, #+104]
        VMOV     S0,R0
        VCVT.F32.U32 S0,S0
        VLDR.W   S1,??v_ImageCut_294  ;; 0x437f0000
        VCMP.F32 S0,S1
        FMSTAT   
        BNE.N    ??v_ImageCut_295
// 2373                     {   becauseThisOutOfTheBlackRtAngle = 'H';
        MOVS     R0,#+72
        STRB     R0,[SP, #+14]
// 2374                         change_X = 2.5*m_ImageAbstract.width[end_findLeftOrRight];
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R0,??DataTable7_2
        ADDS     R0,R0,R6, LSL #+1
        LDRSH    R0,[R0, #+344]
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable7_3  ;; 0x40040000
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        VMOV     S16,R0
// 2375                         /*change_X -= m_ImageAbstract.Central[end_findLeftOrRight];
// 2376                         change_X = __F_ABS(change_X);*/
// 2377                     }
// 2378                     else
// 2379                     {
// 2380                         becauseThisOutOfTheBlackRtAngle = 'N';
// 2381                         change_X -= m_ImageAbstract.Central[end_findLeftOrRight];
// 2382                         change_X = __F_ABS(change_X);
// 2383                         if(255!= m_ImageAbstract.Left[endJudgeLine])
// 2384                         {
// 2385                             if(DE_CalTheBetween(endJudgeLine)/*&&
// 2386                                DE_CalTheBetween((m_ImageAbstract.Last_Y_Position+(m_ImageAbstract.Last_Y_Position+end_findLeftOrRight)/2)/2)*/
// 2387                                )
// 2388                             {
// 2389                                 isTime2BackAngel = 1;break;
// 2390                             }
// 2391                         }
// 2392                     }
// 2393                     //if(change_X < 3.f){change_X = 3.f;}
// 2394                     //if(change_X > 185.f){change_X = 185.f;}
// 2395                 }
// 2396                 if(Sid_Left == Rt_WhiteTurningSide)
??v_ImageCut_293:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+10
        BNE.N    ??v_ImageCut_296
// 2397                 {
// 2398                     /*
// 2399                     if((255 != m_ImageAbstract.Right[m_ImageAbstract.Last_Y_Position])
// 2400                      &&(m_ImageAbstract.Right[m_ImageAbstract.Last_Y_Position] <= 6+6))
// 2401                     {
// 2402                         m_ImageAbstract.Last_Y_Position = (m_ImageAbstract.Last_Y_Position + m_ImageAbstract.Start_Y_Position)/2;
// 2403                     }
// 2404                     */
// 2405                     show_About_RtAngle = 'r';
        MOVS     R11,#+114
// 2406                     change_X = m_ImageAbstract.Left[end_findLeftOrRight];
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R0,??DataTable7_2
        ADDS     R0,R6,R0
        LDRB     R0,[R0, #+44]
        VMOV     S0,R0
        VCVT.F32.U32 S16,S0
// 2407                     if((255.f == m_ImageAbstract.Left[end_findLeftOrRight])/*||(1 == TurningBeacauseVeryLittle.isHappened)*/)
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R0,??DataTable7_2
        ADDS     R0,R6,R0
        LDRB     R0,[R0, #+44]
        VMOV     S0,R0
        VCVT.F32.U32 S0,S0
        VLDR.W   S1,??v_ImageCut_294  ;; 0x437f0000
        VCMP.F32 S0,S1
        FMSTAT   
        BNE.W    ??v_ImageCut_297
// 2408                     {   becauseThisOutOfTheBlackRtAngle = 'H';
        MOVS     R0,#+72
        STRB     R0,[SP, #+14]
// 2409                         change_X = 2.5*m_ImageAbstract.width[end_findLeftOrRight];
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R0,??DataTable7_2
        ADDS     R0,R0,R6, LSL #+1
        LDRSH    R0,[R0, #+344]
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable7_3  ;; 0x40040000
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        VMOV     S16,R0
// 2410                         //change_X = __F_ABS(change_X);
// 2411                     }
// 2412                     else
// 2413                     {
// 2414                         //m_ImageTesting.Back2Angel_LineCounter = end_findLeftOrRight;
// 2415                         becauseThisOutOfTheBlackRtAngle = 'N';
// 2416                         change_X -= m_ImageAbstract.Central[end_findLeftOrRight];
// 2417                         change_X = __F_ABS(change_X);
// 2418                         if(255!=m_ImageAbstract.Right[endJudgeLine])
// 2419                         {
// 2420                             if(DE_CalTheBetween(endJudgeLine)/*&&
// 2421                                DE_CalTheBetween((m_ImageAbstract.Last_Y_Position+(m_ImageAbstract.Last_Y_Position+end_findLeftOrRight)/2)/2)*/
// 2422                                )
// 2423                             {
// 2424                                 isTime2BackAngel = 1;break;
// 2425                             }
// 2426                         }
// 2427                     }
// 2428                     //if(change_X < 0.f){change_X = 0.f;}
// 2429                     //if(change_X > 185.f){change_X = 185.f;}
// 2430                     change_X = -change_X;
??v_ImageCut_298:
        VNEG.F32 S16,S16
// 2431                 }//=========================================================
// 2432                 m_ImageTesting.Back2Angel_LineCounter = endJudgeLine;
??v_ImageCut_296:
        LDR.W    R0,??DataTable7_4
        STRB     R7,[R0, #+134]
// 2433                 if((RtAngleCondtion.RtWhiteSide_StartLine - (m_ImageAbstract.Last_Y_Position - RtAngleCondtion.RtWhiteSide_StartLine)/2) > 0)
        LDRB     R0,[SP, #+8]
        LDR.W    R1,??DataTable7_2
        LDRB     R1,[R1, #+465]
        LDRB     R2,[SP, #+8]
        SUBS     R1,R1,R2
        MOVS     R2,#+2
        SDIV     R1,R1,R2
        SUBS     R0,R0,R1
        CMP      R0,#+1
        BLT.W    ??v_ImageCut_299
// 2434                 {
// 2435                     RtAngleCondtion.RtWhiteSide_StartLine = (uint8)((float)RtAngleCondtion.RtWhiteSide_StartLine - (m_ImageAbstract.Last_Y_Position - RtAngleCondtion.RtWhiteSide_StartLine)*0.5f);
        LDRB     R0,[SP, #+8]
        VMOV     S0,R0
        VCVT.F32.U32 S0,S0
        LDR.W    R0,??DataTable7_2
        LDRB     R0,[R0, #+465]
        LDRB     R1,[SP, #+8]
        SUBS     R0,R0,R1
        VMOV     S1,R0
        VCVT.F32.S32 S1,S1,#+1
        VSUB.F32 S0,S0,S1
        VCVT.S32.F32 S0,S0
        VMOV     R0,S0
        STRB     R0,[SP, #+8]
        B.N      ??v_ImageCut_300
// 2436                 }
??v_ImageCut_295:
        MOVS     R0,#+78
        STRB     R0,[SP, #+14]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R0,??DataTable7_2
        ADDS     R0,R6,R0
        LDRB     R0,[R0, #+164]
        VMOV     S0,R0
        VCVT.F32.U32 S0,S0
        VSUB.F32 S16,S16,S0
        VCMP.F32 S16,#0.0
        FMSTAT   
        BPL.N    ??v_ImageCut_301
        VNEG.F32 S16,S16
        B.N      ??v_ImageCut_302
??v_ImageCut_301:
??v_ImageCut_302:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??DataTable7_2
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #+44]
        CMP      R0,#+255
        BEQ.W    ??v_ImageCut_293
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??DataTable7_2
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #+44]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R1,??DataTable7_2
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #+104]
        SUBS     R0,R0,R1
        CMP      R0,#+0
        BPL.N    ??v_ImageCut_303
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??DataTable7_2
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #+104]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R1,??DataTable7_2
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #+44]
        SUBS     R0,R0,R1
        B.N      ??v_ImageCut_304
??v_ImageCut_303:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??DataTable7_2
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #+44]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R1,??DataTable7_2
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #+104]
        SUBS     R0,R0,R1
??v_ImageCut_304:
        BL       __aeabi_i2d
        MOVS     R2,R0
        MOVS     R3,R1
        STRD     R2,R3,[SP, #+0]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??DataTable7_2
        ADDS     R0,R0,R7, LSL #+1
        LDRSH    R0,[R0, #+344]
        BL       __aeabi_i2d
        LDR.W    R2,??DataTable7_5  ;; 0x9999999a
        LDR.W    R3,??DataTable7_6  ;; 0x3ff19999
        BL       __aeabi_dmul
        LDRD     R2,R3,[SP, #+0]
        BL       __aeabi_cdrcmple
        BHI.W    ??v_ImageCut_293
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??DataTable7_2
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #+44]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R1,??DataTable7_2
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #+104]
        SUBS     R0,R0,R1
        CMP      R0,#+0
        BPL.N    ??v_ImageCut_305
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??DataTable7_2
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #+104]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R1,??DataTable7_2
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #+44]
        SUBS     R9,R0,R1
        B.N      ??v_ImageCut_306
??v_ImageCut_305:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??DataTable7_2
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #+44]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R1,??DataTable7_2
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #+104]
        SUBS     R9,R0,R1
??v_ImageCut_306:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??DataTable7_2
        ADDS     R0,R0,R7, LSL #+1
        LDRSH    R0,[R0, #+344]
        BL       __aeabi_i2d
        LDR.W    R2,??DataTable7_7  ;; 0xcccccccd
        LDR.W    R3,??DataTable7_8  ;; 0x3feccccc
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        STRD     R2,R3,[SP, #+0]
        MOV      R0,R9
        BL       __aeabi_i2d
        LDRD     R2,R3,[SP, #+0]
        BL       __aeabi_cdrcmple
        BHI.W    ??v_ImageCut_293
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??DataTable7_2
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #+44]
        CMP      R0,#+255
        BEQ.W    ??v_ImageCut_293
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??DataTable7_2
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #+104]
        CMP      R0,#+255
        BEQ.W    ??v_ImageCut_293
        MOVS     R0,#+1
        STRB     R0,[SP, #+15]
        B.N      ??v_ImageCut_292
??v_ImageCut_297:
        MOVS     R0,#+78
        STRB     R0,[SP, #+14]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R0,??DataTable7_2
        ADDS     R0,R6,R0
        LDRB     R0,[R0, #+164]
        VMOV     S0,R0
        VCVT.F32.U32 S0,S0
        VSUB.F32 S16,S16,S0
        VCMP.F32 S16,#0.0
        FMSTAT   
        BPL.N    ??v_ImageCut_307
        VNEG.F32 S16,S16
        B.N      ??v_ImageCut_308
??v_ImageCut_307:
??v_ImageCut_308:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??DataTable7_2
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #+104]
        CMP      R0,#+255
        BEQ.W    ??v_ImageCut_298
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??DataTable7_2
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #+44]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R1,??DataTable7_2
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #+104]
        SUBS     R0,R0,R1
        CMP      R0,#+0
        BPL.N    ??v_ImageCut_309
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??DataTable7_2
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #+104]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R1,??DataTable7_2
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #+44]
        SUBS     R0,R0,R1
        B.N      ??v_ImageCut_310
??v_ImageCut_309:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??DataTable7_2
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #+44]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R1,??DataTable7_2
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #+104]
        SUBS     R0,R0,R1
??v_ImageCut_310:
        BL       __aeabi_i2d
        MOVS     R2,R0
        MOVS     R3,R1
        STRD     R2,R3,[SP, #+0]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??DataTable7_2
        ADDS     R0,R0,R7, LSL #+1
        LDRSH    R0,[R0, #+344]
        BL       __aeabi_i2d
        LDR.W    R2,??DataTable7_5  ;; 0x9999999a
        LDR.W    R3,??DataTable7_6  ;; 0x3ff19999
        B.N      ??v_ImageCut_311
        DATA
??v_ImageCut_294:
        DC32     0x437f0000
        THUMB
??v_ImageCut_311:
        BL       __aeabi_dmul
        LDRD     R2,R3,[SP, #+0]
        BL       __aeabi_cdrcmple
        BHI.W    ??v_ImageCut_298
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??DataTable7_2
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #+44]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R1,??DataTable7_2
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #+104]
        SUBS     R0,R0,R1
        CMP      R0,#+0
        BPL.N    ??v_ImageCut_312
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??DataTable7_2
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #+104]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R1,??DataTable7_2
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #+44]
        SUBS     R5,R0,R1
        B.N      ??v_ImageCut_313
??v_ImageCut_312:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??DataTable7_2
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #+44]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R1,??DataTable7_2
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #+104]
        SUBS     R5,R0,R1
??v_ImageCut_313:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??DataTable7_2
        ADDS     R0,R0,R7, LSL #+1
        LDRSH    R0,[R0, #+344]
        BL       __aeabi_i2d
        LDR.W    R2,??DataTable7_7  ;; 0xcccccccd
        LDR.W    R3,??DataTable7_8  ;; 0x3feccccc
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        STRD     R2,R3,[SP, #+0]
        MOVS     R0,R5
        BL       __aeabi_i2d
        LDRD     R2,R3,[SP, #+0]
        BL       __aeabi_cdrcmple
        BHI.W    ??v_ImageCut_298
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??DataTable7_2
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #+44]
        CMP      R0,#+255
        BEQ.W    ??v_ImageCut_298
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??DataTable7_2
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #+104]
        CMP      R0,#+255
        BEQ.W    ??v_ImageCut_298
        MOVS     R0,#+1
        STRB     R0,[SP, #+15]
        B.N      ??v_ImageCut_292
// 2437                 else
// 2438                 {
// 2439                     RtAngleCondtion.RtWhiteSide_StartLine = 0;//±£Ö¤ÇÐÍäµÀ
??v_ImageCut_299:
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
// 2440                 }
// 2441                 
// 2442                 
// 2443                 /*
// 2444                 if((m_ImageAbstract.Central[m_ImageAbstract.Last_Y_Position] <= 6 + 6)
// 2445                  ||(m_ImageAbstract.Central[m_ImageAbstract.Last_Y_Position] >= 181 - 6))
// 2446                 {
// 2447                     change_X = 6*change_X;
// 2448                 }//
// 2449                 */
// 2450                 sint16 Rt_central_Pos = 0;//
??v_ImageCut_300:
        MOVS     R1,#+0
// 2451                 for(uint8 y_counter = RtAngleCondtion.RtWhiteSide_StartLine;y_counter < m_ImageAbstract.Last_Y_Position;y_counter++)
        LDRB     R0,[SP, #+8]
        B.N      ??v_ImageCut_314
// 2452                 {
// 2453                     //break;//ÔÝÊ±×¢ÊÍ¸ü¸ÄÐ§¹û
// 2454                     Rt_central_Pos = (sint16)(m_ImageAbstract.Central[RtAngleCondtion.RtWhiteSide_StartLine]
// 2455                                     + ((float)(y_counter - RtAngleCondtion.RtWhiteSide_StartLine) * change_X / 
// 2456                                     (float)(m_ImageAbstract.Last_Y_Position - RtAngleCondtion.RtWhiteSide_StartLine)));
??v_ImageCut_315:
        LDRB     R1,[SP, #+8]
        LDR.W    R2,??DataTable7_2
        ADDS     R1,R1,R2
        LDRB     R1,[R1, #+164]
        VMOV     S0,R1
        VCVT.F32.U32 S0,S0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDRB     R1,[SP, #+8]
        SUBS     R1,R0,R1
        VMOV     S1,R1
        VCVT.F32.S32 S1,S1
        VMUL.F32 S1,S1,S16
        LDR.W    R1,??DataTable7_2
        LDRB     R1,[R1, #+465]
        LDRB     R2,[SP, #+8]
        SUBS     R1,R1,R2
        VMOV     S2,R1
        VCVT.F32.S32 S2,S2
        VDIV.F32 S1,S1,S2
        VADD.F32 S0,S0,S1
        VCVT.S32.F32 S0,S0
        VMOV     R1,S0
// 2457                     if(Rt_central_Pos > 184){Rt_central_Pos = 184;}
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,#+185
        BLT.N    ??v_ImageCut_316
        MOVS     R1,#+184
// 2458                     if(Rt_central_Pos < 0){Rt_central_Pos = 0;}//ÒÔÉÏÁ½ÐÐÎªÏÞ·ù
??v_ImageCut_316:
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,#+0
        BPL.N    ??v_ImageCut_317
        MOVS     R1,#+0
// 2459                     m_ImageAbstract.Central[y_counter] = Rt_central_Pos;//¸³Öµ
??v_ImageCut_317:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable7_2
        ADDS     R2,R0,R2
        STRB     R1,[R2, #+164]
// 2460                 }
        ADDS     R0,R0,#+1
??v_ImageCut_314:
        LDR.W    R1,??DataTable7_2
        LDRB     R1,[R1, #+465]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,R1
        BCC.N    ??v_ImageCut_315
// 2461             }
// 2462         }while(0);
// 2463         
// 2464         if(1 == m_ImageAbstract.RtAngle_isLasting)
??v_ImageCut_289:
??v_ImageCut_292:
        LDR.W    R0,??DataTable7_2
        LDRB     R0,[R0, #+480]
        CMP      R0,#+1
        BNE.N    ??v_ImageCut_318
// 2465         {
// 2466             show_About_RtAngle = 'T';
        MOVS     R11,#+84
        B.N      ??v_ImageCut_319
// 2467         }
// 2468         else
// 2469         {
// 2470             show_About_RtAngle = 'N';
??v_ImageCut_318:
        MOVS     R11,#+78
// 2471         }
// 2472             
// 2473         
// 2474         if(0 == step_isfind_Rt_WhiteSide_UpestLine)
??v_ImageCut_319:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BNE.N    ??v_ImageCut_320
// 2475         {
// 2476             if(0 == step_isfind_Rt_WhiteSide_LowestLine)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??v_ImageCut_321
// 2477             {
// 2478                 show_About_LonlyLine = 'Z';//½ü¶ËÃ»ÓÐ£¬Ô¶¶ËÒ²Ã»ÓÐ
        MOVS     R7,#+90
        B.N      ??v_ImageCut_322
// 2479             }
// 2480             else
// 2481             {
// 2482                 show_About_LonlyLine = 'X';
??v_ImageCut_321:
        MOVS     R7,#+88
        B.N      ??v_ImageCut_322
// 2483             }
// 2484         }
// 2485         else
// 2486         {
// 2487             if(0 == step_isfind_Rt_WhiteSide_LowestLine)//ÄÜÕÒµ½Ô¶¶Ë£¬µ«ÕÒ²»µ½½ü¶Ë
??v_ImageCut_320:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??v_ImageCut_323
// 2488             {
// 2489                 show_About_LonlyLine = 'C';
        MOVS     R7,#+67
        B.N      ??v_ImageCut_322
// 2490             }
// 2491             else
// 2492             {
// 2493                 show_About_LonlyLine = 'V';
??v_ImageCut_323:
        MOVS     R7,#+86
// 2494             }
// 2495         }
// 2496         
// 2497         if(1 == isTime2BackAngel)//ÖÕÖ¹Ìõ¼þ
??v_ImageCut_322:
        LDRB     R0,[SP, #+15]
        CMP      R0,#+1
        BNE.N    ??v_ImageCut_324
// 2498         {
// 2499             m_ImageAbstract.RtAngle_isLasting = 0;
        LDR.W    R0,??DataTable7_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+480]
// 2500         }
// 2501     }while(0);
// 2502 
// 2503     /*
// 2504     if(1 == isHaveLonlyLine)
// 2505     {
// 2506         m_ImageAbstract.LastFrame_CentralPos = m_ImageAbstract.Central[m_ImageAbstract.Start_Y_Position];//¶¨ÒåÉÏ´ÎÖÐÏß
// 2507     }
// 2508     else
// 2509     {
// 2510         //ÕâÀïÓ¦¸ÃÓÃµÚÒ»´ÎÓöµ½µ¥Ïß×÷ÎªÐÞÕý
// 2511         m_ImageAbstract.LastFrame_CentralPos = m_ImageAbstract.Central[m_ImageAbstract.Start_Y_Position];
// 2512     }
// 2513     */
// 2514     
// 2515     do//Last Of The wilds;
// 2516     {
// 2517         uint8 RampExist = 0;
??v_ImageCut_324:
        MOVS     R0,#+0
// 2518         if(0 == m_ImageAbstract.openTheRamp){break;}
        LDR.W    R1,??DataTable7_2
        LDRB     R1,[R1, #+0]
        CMP      R1,#+0
        BEQ.N    ??v_ImageCut_325
// 2519         for(uint8 loop = m_ImageAbstract.Start_Y_Position;loop < m_ImageAbstract.Last_Y_Position;loop++)
??v_ImageCut_326:
        LDR.W    R1,??DataTable7_2
        LDRB     R1,[R1, #+464]
        B.N      ??v_ImageCut_327
// 2520         {
// 2521             if((Sid_Double == TrkSide[loop])
// 2522              &&(255 != m_ImageAbstract.Left[loop])
// 2523              &&(255 != m_ImageAbstract.Right[loop]))
??v_ImageCut_328:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADD      R2,SP,#+88
        LDRB     R2,[R1, R2]
        CMP      R2,#+30
        BNE.N    ??v_ImageCut_329
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R2,??DataTable7_2
        ADDS     R2,R1,R2
        LDRB     R2,[R2, #+44]
        CMP      R2,#+255
        BEQ.N    ??v_ImageCut_329
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R2,??DataTable7_2
        ADDS     R2,R1,R2
        LDRB     R2,[R2, #+104]
        CMP      R2,#+255
        BEQ.N    ??v_ImageCut_329
// 2524             {
// 2525                 uint8 witdh = m_ImageAbstract.Right[loop] - m_ImageAbstract.Left[loop];
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R2,??DataTable7_2
        ADDS     R2,R1,R2
        LDRB     R2,[R2, #+104]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R3,??DataTable7_2
        ADDS     R3,R1,R3
        LDRB     R3,[R3, #+44]
        SUBS     R2,R2,R3
// 2526                 if(witdh >= 1.5*m_ImageAbstract.width[loop])
// 2527                 {
// 2528                     //RampExist = 1;
// 2529                 }
// 2530             }
// 2531         }
??v_ImageCut_329:
        ADDS     R1,R1,#+1
??v_ImageCut_327:
        LDR.W    R2,??DataTable7_2
        LDRB     R2,[R2, #+465]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,R2
        BCC.N    ??v_ImageCut_328
// 2532         m_ImageAbstract.RampExist = RampExist;
        LDR.W    R1,??DataTable7_2
        STRB     R0,[R1, #+1]
// 2533     }while(0);
// 2534     
// 2535     uint8 isCanOutPut = 0;
??v_ImageCut_325:
        MOVS     R0,#+0
// 2536     for(uint8 loop = m_ImageAbstract.Start_Y_Position;loop < m_ImageAbstract.Last_Y_Position;loop++)
        LDR.W    R1,??DataTable7_2
        LDRB     R1,[R1, #+464]
        B.N      ??v_ImageCut_330
// 2537     {
// 2538         m_Control.SideWhat[loop] = TrkSide[loop];
// 2539         if((m_ImageAbstract.Central[loop] <= 6)||(m_ImageAbstract.Central[loop] >= 181 - 3))
// 2540         {
// 2541             isCanOutPut = 1;
??v_ImageCut_331:
        MOVS     R0,#+1
// 2542         }
??v_ImageCut_332:
        ADDS     R1,R1,#+1
??v_ImageCut_330:
        LDR.W    R2,??DataTable7_2
        LDRB     R2,[R2, #+465]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,R2
        BCS.N    ??v_ImageCut_333
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R2,??DataTable7_9
        ADDS     R2,R1,R2
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADD      R3,SP,#+88
        LDRB     R3,[R1, R3]
        STRB     R3,[R2, #+160]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R2,??DataTable7_2
        ADDS     R2,R1,R2
        LDRB     R2,[R2, #+164]
        SUBS     R2,R2,#+7
        CMP      R2,#+171
        BCS.N    ??v_ImageCut_331
// 2543         else
// 2544         {
// 2545             if(1 == isCanOutPut)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??v_ImageCut_332
// 2546             {
// 2547                 m_ImageAbstract.Last_Y_Position = loop;break;
        LDR.W    R0,??DataTable7_2
        STRB     R1,[R0, #+465]
// 2548             }
// 2549         }
// 2550     }
// 2551     
// 2552     
// 2553     m_ImageAbstract.LastFrame_CentralPos = m_ImageAbstract.Central[m_ImageAbstract.Start_Y_Position]
// 2554        /*+ (m_ImageAbstract.Central[m_ImageAbstract.Start_Y_Position] - m_ImageAbstract.LastFrame_CentralPos)*/;
??v_ImageCut_333:
        LDR.W    R0,??DataTable7_2
        LDRB     R0,[R0, #+464]
        LDR.W    R1,??DataTable7_2
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+164]
        LDR.W    R1,??DataTable7_2
        STRB     R0,[R1, #+468]
// 2555     //ËùÒÔ£¬ÕâÀïÓ¦¸Ã×öÒ»¸ö´¦Àí¡£¹ØÓÚÉÏÒ»´ÎµÄµÚÒ»ÐÐ£¬µ½µ×ÊÇ¸öÉ¶
// 2556     
// 2557     m_ImageAbstract.Show_Start_Y_Position = m_ImageAbstract.Start_Y_Position;
        LDR.W    R0,??DataTable7_2
        LDR.W    R1,??DataTable7_2
        LDRB     R1,[R1, #+464]
        STRB     R1,[R0, #+481]
// 2558     m_ImageAbstract.Show_Last_Y_Position = m_ImageAbstract.Last_Y_Position;
        LDR.W    R0,??DataTable7_2
        LDR.W    R1,??DataTable7_2
        LDRB     R1,[R1, #+465]
        STRB     R1,[R0, #+482]
// 2559     
// 2560     
// 2561     
// 2562     m_ImageAbstract.LonlyLine_VeryStraightGetCorner_AboutDeadLine_Val_Y = 255;
        LDR.W    R0,??DataTable7_2
        MOVS     R1,#+255
        STRB     R1,[R0, #+556]
// 2563     m_ImageAbstract.LonlyLine_VeryStraightGetCorner_AboutDeadLine_Var_x = 255;//¸ü¸Ä
        LDR.W    R0,??DataTable7_2
        MOVS     R1,#+255
        STRB     R1,[R0, #+555]
// 2564     
// 2565     /**************************************************************************/
// 2566     //ÉùÏì
// 2567     /*
// 2568     if(1 == m_ImageAbstract.RtAngle_isLasting)//Ö±½ÇÉùÏì¿ØÖÆ
// 2569     {
// 2570         v_BuzzerBeepSet(100);//
// 2571     }
// 2572     */
// 2573     
// 2574     if(/*(1 == TurningBeacauseVeryLittle__isHappened)||*//*(1 == m_ImageTesting.isMeetingHazard)*/
// 2575        (1 == m_ImageAbstract.RtAngle_isLasting)||(1 == m_ImageTesting.isMeetingHazard))
        LDR.W    R0,??DataTable7_2
        LDRB     R0,[R0, #+480]
        CMP      R0,#+1
        BEQ.N    ??v_ImageCut_334
        LDR.W    R0,??DataTable7_4
        LDRB     R0,[R0, #+135]
        CMP      R0,#+1
        BNE.N    ??v_ImageCut_335
// 2576     {
// 2577         
// 2578         //m_Control.servo_imageYstopLine = 20;
// 2579         v_BuzzerBeepSet(300);//
??v_ImageCut_334:
        MOV      R0,#+300
        BL       v_BuzzerBeepSet
// 2580     }
// 2581     else
// 2582     {
// 2583         //m_Control.servo_imageYstopLine = 40;
// 2584     }
// 2585     
// 2586     
// 2587     m_ModeMachine.showRtBlackAngle = show_About_RtAngle;
??v_ImageCut_335:
        LDR.W    R0,??DataTable7_10
        STRB     R11,[R0, #+35]
// 2588     m_ModeMachine.showLonlyInformation = show_About_LonlyLine;
        LDR.W    R0,??DataTable7_10
        STRB     R7,[R0, #+33]
// 2589     //m_ModeMachine.showBuzzerInformation = show_BuzzerInfor;
// 2590     m_ModeMachine.showBlackBar = show_isWrong;
        LDR.W    R0,??DataTable7_10
        LDRB     R1,[SP, #+12]
        STRB     R1,[R0, #+34]
// 2591     m_ModeMachine.showYcutDown = showYcutDown;
        LDR.W    R0,??DataTable7_10
        LDRB     R1,[SP, #+20]
        STRB     R1,[R0, #+36]
// 2592     m_ModeMachine.showBlackCutBar = showBlackCutBar;
        LDR.W    R0,??DataTable7_10
        LDRB     R1,[SP, #+46]
        STRB     R1,[R0, #+37]
// 2593     m_ModeMachine.becauseThisOutOfTheBlackRtAngle = becauseThisOutOfTheBlackRtAngle;
        LDR.W    R0,??DataTable7_10
        LDRB     R1,[SP, #+14]
        STRB     R1,[R0, #+38]
// 2594     
// 2595     m_ImageTesting.showLonlyLineFindAboutUpSet = showLonlyLineFindAboutUpSet;
        LDR.W    R0,??DataTable7_4
        LDRB     R1,[SP, #+33]
        STRB     R1,[R0, #+8]
// 2596     m_ImageTesting.HaveLonlyLineStartCornerLastLine = HaveLonlyLineStartCornerLastLine;
        LDR.N    R0,??DataTable7_4
        LDRB     R1,[SP, #+21]
        STRB     R1,[R0, #+1]
// 2597     m_ImageTesting.isOccurCross = isOccurCross;
        LDR.N    R0,??DataTable7_4
        LDRB     R1,[SP, #+32]
        STRB     R1,[R0, #+129]
// 2598     m_ImageTesting.FindLitteWidthTurning= FindLitteWidthTurning;
        LDR.N    R0,??DataTable7_4
        LDRB     R1,[SP, #+34]
        STRB     R1,[R0, #+130]
// 2599     m_ImageTesting.firstAndSecond_isBeenDrawing = firstAndSecond_isBeenDrawing;
        LDR.N    R0,??DataTable7_4
        STRB     R10,[R0, #+133]
// 2600     m_ImageTesting.SideChangeOccur = SideChangeOccur;
        LDR.N    R0,??DataTable7_4
        LDRB     R1,[SP, #+13]
        STRB     R1,[R0, #+136]
// 2601     
// 2602     m_ImageTesting.TurnOnTheLonlyLine = TurnOnTheLonlyLine;
        LDR.N    R0,??DataTable7_4
        LDRB     R1,[SP, #+35]
        STRB     R1,[R0, #+137]
// 2603 }
        ADD      SP,SP,#+208
        VPOP     {D8}
        POP      {R0,R4-R11,PC}   ;; return
// 2604 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2605 void v_ImageMixis()//Í¼ÏñÈÚºÏ
// 2606 {//ÕâÀïÓÐ¼«´óÎÊÌâ
// 2607     
// 2608 }
v_ImageMixis:
        BX       LR               ;; return
// 2609 /*
// 2610 ²»¹ÜÔõÃ´Ëµ£¬Èç¹ûÏëÒªÊ¶±ð³öÖ±½Ç£¬ÒªÃ´Ç¿¹Õ£¬ÒªÃ´ÔÚÍ¼ÉÏ»æÖÆ³ö²»ºÏÊ±ÒËµÄ¹ÕÏß¡£
// 2611 ËùÒÔËµ²»Ïë×öÇ°Õß£¬Ö»ÄÜÊÇºóÕß¡£
// 2612 ÄÇÃ´ÔõÃ´ÅÐ±ðÄØ£¿
// 2613 ¿ÉÒÔ½«Ö±½Ç¹éÄÉÎª£º³¤Ö±µÀºó£¬ÐèÒªÒ»¸öÇ¿ÐÐ¹ÕÍäµÄÇøÓò
// 2614 ÈçÈô¸ù¾ÝÊµ¼ÊÇé¿ö¸ü¸ÄÊýÖµµÄ»°£¬»áÓöµ½ÁíÍâÒ»¸öµ°ÌÛµÄÇé¿ö¡£
// 2615 ÄÇ¾ÍÊÇµ±¿¿½üÒ»±ßÊ±ºò£¬»á³öÏÖÎóÅÐµÄÇé¿ö¡£
// 2616 Èç¹ûÃ»ÓÐ¿í¶ÈÏÞÖÆ£¬ÄÇÃ´³ý·Ç¼«ÖÂ³öÍä£¬·ñÔò²»»á³öÏÖÇ¿¹Õ²»¹ýÈ¥µÄÇé¿ö¡£
// 2617 ¾ÍËã¼«ÖÂ³öÍä£¬ÕÕÑùÇ¿¹Õ²»¹ýÈ¥¡£
// 2618 ÄÇÃ´²»ÈçÓÃÕâÖÖ·½·¨¡£
// 2619 µ±¼ì²âµ½¶ªÊ§µÄÇé¿ö´óÓÚÈ«¶ªÊ§³¤¶È3/4Ê±£¬¸ü¸Ä·½Ê½
// 2620 ¼ì²â·½²îÏµÊý£¬Ð¡ÓÚÊýÖµÊ±£¬
// 2621 */
// 2622 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 2623 void v_ImageOptimalization()
// 2624 {//Í¼ÏñÓÅ»¯
// 2625     //float curve[58];//×Ü¹²µãÊýÓÐ60¸ö£¬¹ÊÉùÃ÷58¸öÇúÂÊ//²¢²»ÐèÒªÎ¬»¤Õâ¸öÇúÂÊ
// 2626     for(uint8 loop = m_ImageAbstract.Start_Y_Position + 3;loop < m_ImageAbstract.Last_Y_Position - 2;loop++)
v_ImageOptimalization:
        LDR.N    R0,??DataTable7_2
        LDRB     R0,[R0, #+464]
        ADDS     R0,R0,#+3
        B.N      ??v_ImageOptimalization_0
// 2627     {
// 2628         float curve_1 = 0;//GetCurve_n_cut_1(loop);//curve[loop - 1];
// 2629         float curve_2 = 0;//GetCurve_n_add_1(loop);//curve[loop + 1];
// 2630         if(curve_1*curve_2 < 0.f)
// 2631         {
// 2632             float curve_0 = 0;//GetCurve_n_cut_2(loop);//curve[loop - 2];
// 2633             float curve_3 = 0;//GetCurve_n_add_2(loop);//curve[loop + 2];
// 2634             if((curve_1*curve_2 > 0.f)&&(curve_2*curve_3 > 0.f))
// 2635             {
// 2636                 if((__F_ABS(curve_1) < __F_ABS(curve_2))&&(__F_ABS(curve_1) < __F_ABS(curve_3)))
// 2637                 {
// 2638                     curve_1 = - curve_1;
// 2639                 }
// 2640                 else if((__F_ABS(curve_2) < __F_ABS(curve_1))&&(__F_ABS(curve_2) < __F_ABS(curve_0)))
??v_ImageOptimalization_1:
??v_ImageOptimalization_2:
        VCMP.F32 S1,S0
        FMSTAT   
        BPL.N    ??v_ImageOptimalization_3
// 2641                 {
// 2642                     curve_2 = - curve_2;
        VNEG.F32 S2,S2
// 2643                 }
??v_ImageOptimalization_3:
        ADDS     R0,R0,#+1
??v_ImageOptimalization_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable7_2
        LDRB     R1,[R1, #+465]
        SUBS     R1,R1,#+2
        CMP      R0,R1
        BGE.N    ??v_ImageOptimalization_4
        VLDR.W   S1,??DataTable7  ;; 0x0
        VLDR.W   S2,??DataTable7  ;; 0x0
        VMUL.F32 S0,S1,S2
        VCMP.F32 S0,#0.0
        FMSTAT   
        BPL.N    ??v_ImageOptimalization_3
        VLDR.W   S0,??DataTable7  ;; 0x0
        VLDR.W   S3,??DataTable7  ;; 0x0
        VMUL.F32 S4,S1,S2
        VCMP.F32 S4,#0.0
        FMSTAT   
        BLE.N    ??v_ImageOptimalization_3
        VMUL.F32 S4,S2,S3
        VCMP.F32 S4,#0.0
        FMSTAT   
        BLE.N    ??v_ImageOptimalization_3
        VCMP.F32 S1,#0.0
        FMSTAT   
        BPL.N    ??v_ImageOptimalization_5
        VNEG.F32 S4,S1
        B.N      ??v_ImageOptimalization_6
??v_ImageOptimalization_5:
        VMOV.F32 S4,S1
??v_ImageOptimalization_6:
        VCMP.F32 S2,#0.0
        FMSTAT   
        BPL.N    ??v_ImageOptimalization_7
        VNEG.F32 S5,S2
        B.N      ??v_ImageOptimalization_8
??v_ImageOptimalization_7:
        VMOV.F32 S5,S2
??v_ImageOptimalization_8:
        VCMP.F32 S4,S5
        FMSTAT   
        BPL.N    ??v_ImageOptimalization_9
        VCMP.F32 S1,#0.0
        FMSTAT   
        BPL.N    ??v_ImageOptimalization_10
        VNEG.F32 S4,S1
        B.N      ??v_ImageOptimalization_11
??v_ImageOptimalization_10:
        VMOV.F32 S4,S1
??v_ImageOptimalization_11:
        VCMP.F32 S3,#0.0
        FMSTAT   
        BPL.N    ??v_ImageOptimalization_12
        VNEG.F32 S3,S3
        B.N      ??v_ImageOptimalization_13
??v_ImageOptimalization_12:
??v_ImageOptimalization_13:
        VCMP.F32 S4,S3
        FMSTAT   
        BPL.N    ??v_ImageOptimalization_9
        VNEG.F32 S1,S1
        B.N      ??v_ImageOptimalization_3
??v_ImageOptimalization_9:
        VCMP.F32 S2,#0.0
        FMSTAT   
        BPL.N    ??v_ImageOptimalization_14
        VNEG.F32 S3,S2
        B.N      ??v_ImageOptimalization_15
??v_ImageOptimalization_14:
        VMOV.F32 S3,S2
??v_ImageOptimalization_15:
        VCMP.F32 S1,#0.0
        FMSTAT   
        BPL.N    ??v_ImageOptimalization_16
        VNEG.F32 S1,S1
        B.N      ??v_ImageOptimalization_17
??v_ImageOptimalization_16:
??v_ImageOptimalization_17:
        VCMP.F32 S3,S1
        FMSTAT   
        BPL.N    ??v_ImageOptimalization_3
        VCMP.F32 S2,#0.0
        FMSTAT   
        BPL.N    ??v_ImageOptimalization_18
        VNEG.F32 S1,S2
        B.N      ??v_ImageOptimalization_19
??v_ImageOptimalization_18:
        VMOV.F32 S1,S2
??v_ImageOptimalization_19:
        VCMP.F32 S0,#0.0
        FMSTAT   
        BPL.W    ??v_ImageOptimalization_1
        VNEG.F32 S0,S0
        B.N      ??v_ImageOptimalization_2
// 2644             }
// 2645         }
// 2646         //´Ë´¦ÎªÒÆ¶¯
// 2647         //uint8 newPoint = 0;
// 2648         //newPoint = setLeftInterVal(newPoint);
// 2649         //newPoint = setRightInterVal(newPoint);
// 2650         //m_ImageAbstract.Central[loop] = newPoint;
// 2651     }
// 2652 }
??v_ImageOptimalization_4:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2653 void v_ImageAbstractEnhanced()
// 2654 {
// 2655 }
v_ImageAbstractEnhanced:
        BX       LR               ;; return
// 2656 
// 2657 
// 2658             //ratio = 1.f;// => ÇóÆ½¾ùÖµ
// 2659             //´ÓÑÏ¸ñÒâÒåÉÏÀ´½²£¬ÈÎºÎµÄ·½·¨¶¼¿ÉÒÔ¿´³É¶ÔÒ»ÐÐµÄ×ªÏò
// 2660             //ÎÒÔ­À´Ïë·¨ÊÇ¸ù¾ÝÄ³Ò»²ÎÊýÔÚÈÎºÎÇé¿öÏÂ¶¼ÄÜ×ßÖÐÏß
// 2661             //Êµ¼ùÖ¤Ã÷ÕâÒ»²ÎÊýÖ»ÓÐ¿ÉÄÜÊÇËÙ¶È£¬Ñ¡È¡Ò»ÐÐ¸ù¾ÝËÙ¶È£¬»òÕß¸ù¾ÝËÙ¶ÈÑ¡È¡Ä³Ò»ÐÐ
// 2662             
// 2663             //ÎÒÃÇ±¾ÉíÏëµÄÊÇ°´ÕÕÇúÂÊ¹ýÍä£¬µ«Êµ¼ÊÉÏ£¬Õâ¸öÐèÒª¶æ»úµç»úµÄË«ÖØÅäºÏ£¬ËùÒÔ£¬¿ÉÄÜ¶æ»úµÄÒ»´Î´ò½Ç²¢²»ºÏÊÊÈ«²¿Çé¿ö
// 2664             //Í¬Ê±£¬ÇúÂÊ×÷ÎªÈ«²¿µÄÐÅºÅ£¬Ó¦µ±Í¬Ê±ÊäÈë¸øµç»ú¶æ»ú¡£
// 2665             //µ«ÊÇ£¬ÕâÖÖÇé¿ö²»ÈçÉè¼Æ³É£¬¶æ»ú¾ö¶¨µç»úËÙ¶È£¬µç»ú¾ö¶¨¶æ»úµÄÊµ¼Ê´ò½ÇÇé¿ö¡£
// 2666             //ÖÁÓÚ¶æ»ú´ò½Ç¸úÊ²Ã´ÓÐ¹Ø£¬Ê×ÏÈÓÉÑØ×Å¶æ»úÂÖÏòµÄ×ªÏò£¬ÒÔ¼°ÇÐÏòµÄÍâÒÆÎó²î¡£
// 2667             //ËùÒÔ¸ù¾ÝÇúÂÊ¸ø¶æ»ú´ò½ÇÕâÊÇ²»ºÏÀíµÄ => S(1/R) Êµ¼ÊÓ¦µ±ÊÇ S(1/R,V)
// 2668             //Â¥ÉÏ¹«Ê½²ÅÊÇ¶æ»úµÄÊµ¼ÊÇé¿ö£¬È»¶ø±ÈÈüµÄÊ±ºò£¬¸ü¶à»¹ÊÇ¹Ø×¢ËÙ¶È£¬ËùÒÔÎÒÃÇÓ¦µ±½«ËÙ¶È×÷ÎªÒ»¸öÖØÒª²Î¿¼Á¿¸ßÓÚ¶æÁ¿
// 2669             
// 2670             //´ËÊ±Ê²Ã´²ÅÊÇ×îÊÊºÏÃèÊö¶æ»úµÄÄØ£¿ºÜÏÔÈ»¸ù¾ÝËÙ¶Èµ¼ÖÂµÄÇÐÏòÎó²îÊÇ¹Ø¼üÒòËØ£¬ÈçÈô½«ÇÐÏòÎó²î¾ßÌå»¯¡£
// 2671             //²µ£ºÈçÈô´ò»¬£¬ÎÒÃÇ´ò¸ü¶à¶æÁ¿£¬»òÐíÔÚÒ»¶¨·¶Î§ÄÚºÜºÏÊÊ£¬µ«ÏòÍâ»¬¶¯»á¾çÁÒ£¬ÈçÈôµ¼ÖÂÍÆÍ·£¬·´¶øµÃ²»³¥Ê§¡£
// 2672             
// 2673             //Ö»ÄÜ´ÓÖ±¾õÉÏÀ´½²£¬ËÙ¶È»áÓÐÒ»¶¨µÄÓ°Ïì£¬µ«¸ü¶à»¹Ó¦µ±ÊÇÏìÓ¦Çé¿ö¡£¾ÍÈçÍ¬Ç°Õ°ºÜÔ¶¿ÉÒÔÌáÇ°´ò½Ç¡£
// 2674             //ËùÒÔÎÒÃÇÓ¦µ±¸ù¾ÝËÙ¶È·´À¡Á¿¾ö¶¨Ç°Õ° => ¼´ÓÐÐ§ÐÐ£¬µ±ÓÐÐ§ÐÐ×ã¹»ÉÙÊ±Ò»¶¨»áÓ°Ïì´ò½Ç
// 2675             //µ«µ±ÓÐÐ§ÐÐ×ã¹»¶àÊ±£¬ÎÒ¾õµÃ²¢²»»áÔì³ÉÌ«¶àµÄÓ°Ïì£¬ËùÒÔÓ¦µ±ÊÇ£¬ËÙ¶È³ËÒÔ¿ØÖÆÊ±¼ä=>ÕâÀï¾ö¶¨´ò½ÇµÄ×îÍâÒòËØ¡£

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 2676 uint16 n_getSteerMiddleLine_UsedAverage()//¶æ»ú¿ØÖÆ²ßÂÔ
// 2677 {//Ïû³ýÇ°Ê®ÐÐÓ°ÏìÓÖÈçºÎ£¿//Ïû³ý20cmÒÔÄÚµÄÓ°Ïì
n_getSteerMiddleLine_UsedAverage:
        SUB      SP,SP,#+240
// 2678     /*
// 2679     if(m_Control.GiveSpeed < 250)
// 2680     {
// 2681         m_Control.servo_imageYstopLine = 30;
// 2682     }
// 2683     else
// 2684     {
// 2685         m_Control.servo_imageYstopLine = 40;
// 2686     }
// 2687     */
// 2688     sint16 central_counter = 0;//·µ»ØµÄÊä³öÁ¿
        MOVS     R0,#+0
// 2689     
// 2690     uint16 LastY_Position = 0;//(m_ImageAbstract.Last_Y_Position > m_Control.servo_imageYstopLine)?
        MOVS     R1,#+0
// 2691                              //m_Control.servo_imageYstopLine:m_ImageAbstract.Last_Y_Position;//Ñ¡¶¨×îÔ¶¾àÀë
// 2692     if(m_ImageAbstract.Last_Y_Position > m_Control.servo_imageYstopLine)
        LDR.N    R2,??DataTable7_9
        LDRB     R2,[R2, #+132]
        LDR.N    R3,??DataTable7_2
        LDRB     R3,[R3, #+465]
        CMP      R2,R3
        BCS.N    ??n_getSteerMiddleLine_UsedAverage_0
// 2693     {
// 2694         LastY_Position = m_Control.servo_imageYstopLine;
        LDR.N    R0,??DataTable7_9
        LDRB     R1,[R0, #+132]
        B.N      ??n_getSteerMiddleLine_UsedAverage_1
// 2695     }
// 2696     else
// 2697     {
// 2698         LastY_Position = m_ImageAbstract.Last_Y_Position;//µ½ÕâÀï¾ÍÈÏ¶¨Ô¶´¦¼¸ÐÐ¿ÉÄÜ²»¿ÉÓÃ
??n_getSteerMiddleLine_UsedAverage_0:
        LDR.N    R0,??DataTable7_2
        LDRB     R1,[R0, #+465]
// 2699     } 
// 2700                              
// 2701     sint16 all_height = LastY_Position - m_ImageAbstract.Start_Y_Position;//¸ß¶ÈÈ«³¤
??n_getSteerMiddleLine_UsedAverage_1:
        LDR.N    R0,??DataTable7_2
        LDRB     R0,[R0, #+464]
        SUBS     R0,R1,R0
// 2702     float f_turning_para[60];//×ªÏò²ÎÊý
// 2703 
// 2704     float central_ratio = 1.f;
        VMOV.F32 S2,#1.0
// 2705     //¾ø¶Ô²»±äÁ¿ => Æ«ÒÆÒýµ¼ÖÐÏßµÄ¾àÀëÊÇ¾ø¶Ô²»±äÕ¼Á½²à×Ü³¤µÄ¾àÀëÊÇ²»±äµÄ
// 2706     //µ¥±ß±ä»»ºó¿ÉÄÜ»á×ªÏò¹ý¶È
// 2707     float y_10cm_world = 0.f;//ÕæÊµÊÀ½çµÄ10cmÒÔÄÚ£¬¿ÉÒÔ²»ÓÃ¿¼ÂÇ => ½Ó½ü16»ò17cm
        VLDR.W   S3,??DataTable7  ;; 0x0
// 2708     do//ÕâÀï¾ÍÊÇÒ»¸öºÜÖØÒªµÄÌõ¼þ
// 2709     {
// 2710         float d = m_Control.image_ratio[3];
        LDR.N    R2,??DataTable7_9
        VLDR     S0,[R2, #+80]
// 2711 	float e = m_Control.image_ratio[4];
        LDR.N    R2,??DataTable7_9
        VLDR     S1,[R2, #+84]
// 2712 	float f = m_Control.image_ratio[5];
        LDR.N    R2,??DataTable7_9
        VLDR     S4,[R2, #+88]
// 2713 	float g = m_Control.image_ratio[6];
        LDR.N    R2,??DataTable7_9
        VLDR     S5,[R2, #+92]
// 2714 	float h = m_Control.image_ratio[7];
        LDR.N    R2,??DataTable7_9
        VLDR     S6,[R2, #+96]
// 2715         
// 2716         
// 2717         float y0 = (d*m_ImageAbstract.Central[0] + e*0.f + f)/(g*m_ImageAbstract.Central[0] + h*0.f + 1.f);
        LDR.N    R2,??DataTable7_2
        LDRB     R2,[R2, #+164]
        VMOV     S7,R2
        VCVT.F32.U32 S7,S7
        VMUL.F32 S0,S7,S0
        VLDR.W   S7,??DataTable7  ;; 0x0
        VMLA.F32 S0,S1,S7
        VADD.F32 S0,S0,S4
        LDR.N    R2,??DataTable7_2
        LDRB     R2,[R2, #+164]
        VMOV     S7,R2
        VCVT.F32.U32 S7,S7
        VMUL.F32 S5,S7,S5
        VLDR.W   S7,??DataTable7  ;; 0x0
        VMLA.F32 S5,S6,S7
        VMOV.F32 S7,#1.0
        VADD.F32 S5,S5,S7
        VDIV.F32 S0,S0,S5
// 2718         //y0 = y0 + (30*100/45);
// 2719         //y0 = (f-y0)/(y0*h-e);
// 2720         
// 2721         y_10cm_world = y0 + (30*10/45);//10cm
        VMOV.F32 S5,#6.0
        VADD.F32 S0,S0,S5
        VMOV.F32 S3,S0
// 2722         y_10cm_world = (f-y_10cm_world)/(y_10cm_world*h-e);//»ñÈ¡
        VSUB.F32 S0,S4,S3
        VMUL.F32 S3,S3,S6
        VSUB.F32 S1,S3,S1
        VDIV.F32 S3,S0,S1
// 2723     }while(0);
// 2724     /*
// 2725     if(all_height <= y_10cm_world)//ÉèÖÃ²ÎÊýÎª×ªÏò
// 2726     {m_Control.need_Hold = 1;
// 2727     central_counter = m_ImageAbstract.servo_gaiaInfor_image;return central_counter;}
// 2728     */
// 2729     float counter_pisCut = 0.f;//±»³ýÊý
        VLDR.W   S0,??DataTable7  ;; 0x0
// 2730     uint8 timer_counter = 0; float pos_counter = 0;
        MOVS     R2,#+0
        VLDR.W   S1,??DataTable7  ;; 0x0
// 2731     for(uint8 loop = m_ImageAbstract.Start_Y_Position + 1;
        LDR.N    R3,??DataTable7_2
        LDRB     R3,[R3, #+464]
        ADDS     R3,R3,#+1
        B.N      ??n_getSteerMiddleLine_UsedAverage_2
// 2732               loop < LastY_Position - 1;
// 2733               loop ++)
// 2734     {//È«²¿ÐÅÏ¢×÷Îª²Î¿¼
// 2735         central_ratio = 1.f;//»ù±¾ÈüµÀ¿í¶ÈµÄÏµÊýÎÊÌâ
// 2736         //if(loop >= y_10cm_world)//µ±±È10cm´óµÄÊ±ºò²ÅÒªÊ¹ÓÃ
// 2737         //{
// 2738         if((1 == m_CarRunningMode.isUsedDoubleServoPID)
// 2739          &&((Sid_Left == m_Control.SideWhat[loop])
// 2740           ||(Sid_Right == m_Control.SideWhat[loop])))
// 2741         {
// 2742             central_ratio = 1.f;
// 2743         }
// 2744         else
// 2745         {
// 2746             central_ratio = 1.414f;
??n_getSteerMiddleLine_UsedAverage_3:
        VLDR.W   S2,??DataTable7_1  ;; 0x3fb4fdf4
// 2747         }//ÒÔÉÏÈÏ¶¨ÇúÏß
// 2748        // f_turning_para[loop] 
// 2749         f_turning_para[loop] = (30.f*(m_ImageAbstract.Central[loop] - 86)/(m_ImageAbstract.width[loop]/central_ratio));//»¹Ô­// / 45.f
??n_getSteerMiddleLine_UsedAverage_4:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.N    R0,??DataTable7_2
        ADDS     R0,R3,R0
        LDRB     R0,[R0, #+164]
        SUBS     R0,R0,#+86
        VMOV     S3,R0
        VCVT.F32.S32 S3,S3
        VMOV.F32 S4,#30.0
        VMUL.F32 S3,S3,S4
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.N    R0,??DataTable7_2
        ADDS     R0,R0,R3, LSL #+1
        LDRSH    R0,[R0, #+344]
        VMOV     S4,R0
        VCVT.F32.S32 S4,S4
        VDIV.F32 S2,S4,S2
        VDIV.F32 S2,S3,S2
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ADD      R0,SP,#+0
        ADDS     R0,R0,R3, LSL #+2
        VSTR     S2,[R0, #0]
// 2750         //pos_counter += f_turning_para[loop] * m_Control.P_Curve;
// 2751         timer_counter ++;
        ADDS     R2,R2,#+1
// 2752         
// 2753         float number = m_Control.K_Curve;//
        LDR.N    R0,??DataTable7_9
        VLDR     S2,[R0, #+140]
// 2754         float a = (number / 2.f) - 1.f / (2.f * LastY_Position);
        VMOV.F32 S3,#2.0
        VDIV.F32 S2,S2,S3
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        VMOV     S3,R1
        VCVT.F32.U32 S3,S3
        VMOV.F32 S4,#2.0
        VMUL.F32 S3,S3,S4
        VMOV.F32 S4,#1.0
        VDIV.F32 S3,S4,S3
        VSUB.F32 S2,S2,S3
// 2755         const float b = 1;
        VMOV.F32 S3,#1.0
// 2756         const float c = 1;
        VMOV.F32 S4,#1.0
// 2757         float ratio = a * timer_counter * timer_counter + b * timer_counter + c;
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        VMOV     S5,R2
        VCVT.F32.U32 S5,S5
        VMUL.F32 S2,S5,S2
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        VMOV     S5,R2
        VCVT.F32.U32 S5,S5
        VMUL.F32 S2,S2,S5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        VMOV     S5,R2
        VCVT.F32.U32 S5,S5
        VMLA.F32 S2,S5,S3
        VADD.F32 S2,S2,S4
// 2758         pos_counter += (f_turning_para[loop] * m_Control.P_Curve) * ratio;
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ADD      R0,SP,#+0
        ADDS     R0,R0,R3, LSL #+2
        VLDR     S3,[R0, #0]
        LDR.N    R0,??DataTable7_9
        VLDR     S4,[R0, #+136]
        VMUL.F32 S3,S3,S4
        VMLA.F32 S1,S3,S2
// 2759         
// 2760         counter_pisCut += ratio;
        VADD.F32 S0,S0,S2
        ADDS     R3,R3,#+1
??n_getSteerMiddleLine_UsedAverage_2:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        SUBS     R0,R1,#+1
        CMP      R3,R0
        BGE.N    ??n_getSteerMiddleLine_UsedAverage_5
        VMOV.F32 S2,#1.0
        LDR.N    R0,??DataTable7_11
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??n_getSteerMiddleLine_UsedAverage_3
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.N    R0,??DataTable7_9
        ADDS     R0,R3,R0
        LDRB     R0,[R0, #+160]
        CMP      R0,#+10
        BEQ.N    ??n_getSteerMiddleLine_UsedAverage_6
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.N    R0,??DataTable7_9
        ADDS     R0,R3,R0
        LDRB     R0,[R0, #+160]
        CMP      R0,#+20
        BNE.W    ??n_getSteerMiddleLine_UsedAverage_3
??n_getSteerMiddleLine_UsedAverage_6:
        VMOV.F32 S2,#1.0
        B.N      ??n_getSteerMiddleLine_UsedAverage_4
// 2761         //}
// 2762     }
// 2763     central_counter = 86 + (sint16)(pos_counter / /*timer_counter*/counter_pisCut);//»ñÈ¡
??n_getSteerMiddleLine_UsedAverage_5:
        VDIV.F32 S0,S1,S0
        VCVT.S32.F32 S0,S0
        VMOV     R0,S0
        ADDS     R0,R0,#+86
// 2764     //central_counter += 0.2*(m_ImageAbstract.Central[m_ImageAbstract.Last_Y_Position-1] - m_ImageAbstract.Central[m_ImageAbstract.Start_Y_Position]);
// 2765     if(central_counter < 0){central_counter = 0;}
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+0
        BPL.N    ??n_getSteerMiddleLine_UsedAverage_7
        MOVS     R0,#+0
// 2766     if(central_counter > 184){central_counter = 184;}
??n_getSteerMiddleLine_UsedAverage_7:
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+185
        BLT.N    ??n_getSteerMiddleLine_UsedAverage_8
        MOVS     R0,#+184
// 2767     return central_counter;
??n_getSteerMiddleLine_UsedAverage_8:
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        ADD      SP,SP,#+240
        BX       LR               ;; return
// 2768 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DC32     0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_1:
        DC32     0x3fb4fdf4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_2:
        DC32     m_ImageAbstract

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_3:
        DC32     0x40040000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_4:
        DC32     m_ImageTesting

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_5:
        DC32     0x9999999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_6:
        DC32     0x3ff19999

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_7:
        DC32     0xcccccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_8:
        DC32     0x3feccccc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_9:
        DC32     m_Control

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_10:
        DC32     m_ModeMachine

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_11:
        DC32     m_CarRunningMode
// 2769 /*
// 2770 uint16 n_getSteerMiddleLine()//¶æ»ú¿ØÖÆ²ßÂÔ
// 2771 {
// 2772     sint16 central_counter = 0;//·µ»ØµÄÊä³öÁ¿
// 2773     
// 2774     uint16 LastY_Position = (m_ImageAbstract.Last_Y_Position > m_Control.servo_imageYstopLine)?
// 2775                              m_Control.servo_imageYstopLine:m_ImageAbstract.Last_Y_Position;//Ñ¡¶¨×îÔ¶¾àÀë
// 2776     sint16 all_height = LastY_Position - m_ImageAbstract.Start_Y_Position;//¸ß¶ÈÈ«³¤
// 2777     float f_turning_para[60];//×ªÏò²ÎÊý
// 2778     if(all_height <= 10)//ÉèÖÃ²ÎÊýÎª×ªÏò
// 2779     {m_Control.need_Hold = 1;
// 2780     central_counter = m_ImageAbstract.servo_gaiaInfor_image;return central_counter;}
// 2781     float central_ratio = 1.f;
// 2782     //¾ø¶Ô²»±äÁ¿ => Æ«ÒÆÒýµ¼ÖÐÏßµÄ¾àÀëÊÇ¾ø¶Ô²»±äÕ¼Á½²à×Ü³¤µÄ¾àÀëÊÇ²»±äµÄ
// 2783     //µ¥±ß±ä»»ºó¿ÉÄÜ»á×ªÏò¹ý¶È
// 2784     
// 2785     do//ÕâÀï¾ÍÊÇÒ»¸öºÜÖØÒªµÄÌõ¼þ
// 2786     {
// 2787         //float a = m_Control.image_ratio[0];
// 2788 	//float b = m_Control.image_ratio[1];
// 2789 	//float c = m_Control.image_ratio[2];
// 2790         float d = m_Control.image_ratio[3];
// 2791 	float e = m_Control.image_ratio[4];
// 2792 	float f = m_Control.image_ratio[5];
// 2793 	float g = m_Control.image_ratio[6];
// 2794 	float h = m_Control.image_ratio[7];
// 2795         
// 2796         float y0 = (d*m_ImageAbstract.Central[0] + e*0.f + f)/(g*m_ImageAbstract.Central[0] + h*0.f + 1.f);
// 2797         y0 = y0 + (30*100/45);
// 2798         y0 = (f-y0)/(y0*h-e);//
// 2799     }while(0);
// 2800     
// 2801     uint8 timer_counter = 0; float pos_counter = 0;
// 2802     for(uint8 loop = m_ImageAbstract.Start_Y_Position + 1;
// 2803               loop < LastY_Position - 1;
// 2804               loop ++)
// 2805     {//È«²¿ÐÅÏ¢×÷Îª²Î¿¼
// 2806         if(((255 == m_ImageAbstract.Left[loop])&&(255 == m_ImageAbstract.Right[loop]))
// 2807             &&
// 2808         ((255 != m_ImageAbstract.Left[loop])&&(255 != m_ImageAbstract.Right[loop])))
// 2809         {
// 2810             central_ratio = 1.f;
// 2811         }
// 2812         else
// 2813         {
// 2814             central_ratio = 1.414f;
// 2815         }//ÒÔÉÏÈÏ¶¨ÇúÏß
// 2816         f_turning_para[loop] = (30.f*(m_ImageAbstract.Central[loop] - 85)/(m_ImageAbstract.width[loop]/central_ratio));//»¹Ô­// / 45.f
// 2817         pos_counter += f_turning_para[loop] * m_Control.P_Curve;
// 2818         timer_counter ++;
// 2819     }
// 2820     central_counter = 85 + (sint16)(pos_counter / timer_counter);//»ñÈ¡
// 2821     if(central_counter < 0){central_counter = 0;}
// 2822     if(central_counter > 184){central_counter = 184;}
// 2823     return central_counter;
// 2824 }
// 2825 //¼ÓÈ¨Æ½¾ù²»Èç¸Ä±äÓÐÐ§ÐÐÍõµÀ£¬Ïàµ±ÓÚ£¬ÓÐÐ§ÐÐÊÇ´ó±ä¶¯£¬¶ø¼ÓÈ¨Æ½¾ùÖ»ÊÇÐ¡±ä»¯
// 2826 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2827 uint16 n_getSteerByWire()
// 2828 {
// 2829     //¹¹Ôì¾í»ýº¯Êý£¬ÆäÄ¿±êÓ¦Âú×ã
// 2830     //Ê×ÏÈÓÐÁ½¸öµã¿ÉÒÔ¿¼ÂÇ£¬Ò»¸öÊÇÏßµÄÐ±ÂÊ·Ö²¼£¬ÁíÒ»¸ö¾ÍÊÇÇ°Õ°µÄÔ¶
// 2831     //y = a*x*x + b*x + c//ÕâÀï×÷ÎªÒ»¸öº¯Êý
// 2832     //y' = 2ax + b
// 2833     //Ò²¾ÍÊÇ2a¾ö¶¨Ð±ÂÊµÄ±ä»¯
// 2834     return 0;
n_getSteerByWire:
        MOVS     R0,#+0
        BX       LR               ;; return
// 2835 }

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant {0, 1, 2, 3, 4, 5, 6, 7}>`:
        DATA
        DC8 0, 1, 2, 3, 4, 5, 6, 7

        END
// 2836 
// 2837 
// 2838 /*µ¥ÏßË¼Â·
// 2839     NaN => Start => ShutDown
// 2840              ||
// 2841      ^        V
// 2842     ||   <=  Pend
// 2843 */
// 2844 /*            if(
// 2845                (mid_cut == min)
// 2846              &&(255 != m_ImageAbstract.Right[loop])
// 2847              &&(255 != m_ImageAbstract.Left[loop])    
// 2848              &&(m_ImageAbstract.Right[loop] - m_ImageAbstract.Left[loop] < 0.707*m_ImageAbstract.width[loop])
// 2849                )
// 2850             {//»¹ÓÐÒ»ÖÖ·½·¨½Ð×ö¼ì²âÁ½²àµÄ¶ªÏßÇé¿ö=>¼´ËÑµ½¿ÉÄÜµ¥µãµÄµØ·½£¬È»ºó¼ìË÷¾àÀëÁ½²àÏßÖÕÖ¹ÇøµÄ¾àÀë½øÐÐÊ¶±ð
// 2851                 if((__ABS(m_ImageAbstract.Central[loop-1] - m_ImageAbstract.Right[loop]) < m_ImageAbstract.width[loop]/4.5)&&(left_cut > right_cut))
// 2852                 {
// 2853                     mark = 2;
// 2854                 }
// 2855                 if((__ABS(m_ImageAbstract.Central[loop-1] - m_ImageAbstract.Left[loop]) < m_ImageAbstract.width[loop]/4.5)&&(left_cut < right_cut))
// 2856                 {
// 2857                     mark = 1;
// 2858                 }
// 2859             }*/
// 
// 12 460 bytes in section .bss
//      8 bytes in section .rodata
// 18 106 bytes in section .text
// 
// 18 106 bytes of CODE  memory
//      8 bytes of CONST memory
// 12 460 bytes of DATA  memory
//
//Errors: none
//Warnings: 21
