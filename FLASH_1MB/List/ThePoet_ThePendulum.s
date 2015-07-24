///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     20/Jul/2015  17:19:19 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\Ë³°µÈýºÅ-»ªÄÏÈ /
//                    ü×îºóÆßÌì-7.11\ShunAn_Panel\ThePoet_ThePendulum.c       /
//    Command line =  D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\Ë³°µÈýºÅ-»ªÄÏÈ /
//                    ü×îºóÆßÌì-7.11\ShunAn_Panel\ThePoet_ThePendulum.c -D    /
//                    IAR -D TWR_K60F120M -lCN D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³° /
//                    µÈýºÅ\´úÂë\Ë³°µÈýºÅ-»ªÄÏÈü×îºóÆßÌì-7.11\FLASH_1MB\List\ /
//                     -lB D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\Ë³°µÈýºÅ- /
//                    »ªÄÏÈü×îºóÆßÌì-7.11\FLASH_1MB\List\ -o                  /
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
//                    ü×îºóÆßÌì-7.11\FLASH_1MB\List\ThePoet_ThePendulum.s     /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_d2f
        EXTERN __aeabi_dadd
        EXTERN __aeabi_f2d
        EXTERN b_Beholder_Init
        EXTERN b_solve8x8_Ax_b
        EXTERN m_Button_Timer
        EXTERN m_CarRunningMode
        EXTERN m_ColorOLED_pins
        EXTERN m_Control
        EXTERN m_ImageAbstract
        EXTERN m_ImageBeholder_Data
        EXTERN m_ImageTesting
        EXTERN m_need_tx
        EXTERN m_self_Beholder
        EXTERN m_system
        EXTERN n_GetServoAngle
        EXTERN n_getSteerMiddleLine_UsedAverage
        EXTERN sprintf
        EXTERN u8_ExInterface0_get
        EXTERN u8_ExInterface10_get
        EXTERN u8_ExInterface1_get
        EXTERN u8_ExInterface2_get
        EXTERN u8_ExInterface3_get
        EXTERN u8_ExInterface4_get
        EXTERN u8_ExInterface5_get
        EXTERN u8_ExInterface6_get
        EXTERN u8_ExInterface7_get
        EXTERN u8_ExInterface8_get
        EXTERN u8_ExInterface9_get
        EXTERN v_65kcolor2Mono
        EXTERN v_BuzzerBeepSet
        EXTERN v_ColorRev_Beholder_60_185_Output
        EXTERN v_ColorRev_PutPoint
        EXTERN v_ImageCutInformationShow
        EXTERN v_MonoRev_6x8Str
        EXTERN v_MonoRev_Fill
        EXTERN v_MonoRev_Number
        EXTERN v_Revelation_WriteBytes
        EXTERN v_UartSaveImage_sint16
        EXTERN v_UartTxImageSix2PC
        EXTERN v_UartTxNeedtx
        EXTERN v_leftMotor_pwmOut
        EXTERN v_rightMotor_pwmOut
        EXTERN v_setShutterTime
        EXTERN v_speed_Give
        EXTERN v_speed_Give_UsedsmallChange
        EXTERN v_system_clocker_user_done

        PUBLIC Always_Draw_Width
        PUBLIC BuzzerSong
        PUBLIC DEBUG_INFORMATION
        PUBLIC StartRunningShunAnThird
        PUBLIC m_ModeMachine
        PUBLIC modeMachine_Always_CameraInformationTesting_DataShow
        PUBLIC modeMachine_Always_CameraTestingMach_Output
        PUBLIC modeMachine_Always_CameraTestingMach_OutputCalibration
        PUBLIC modeMachine_Always_CameraTestingMach_Output_ExtraPara
        PUBLIC modeMachine_Always_ImageOutput
        PUBLIC modeMachine_Always_MotorTestingPanel_Display
        PUBLIC modeMachine_Always_ShowFuncName
        PUBLIC modeMachine_BasicTesting_DataShow
        PUBLIC modeMachine_BasicTesting_TestingMode
        PUBLIC modeMachine_BasicTesting_TurnMode
        PUBLIC modeMachine_BlackBar2Littele
        PUBLIC modeMachine_BlackBar2Littele_Display
        PUBLIC modeMachine_CameraInformationTesting_TestingMode
        PUBLIC modeMachine_CameraInformationTesting_TurnMode
        PUBLIC modeMachine_CameraTestingMach_CalibrationModeSwitch
        PUBLIC modeMachine_CameraTestingMach_Down
        PUBLIC modeMachine_CameraTestingMach_Left
        PUBLIC modeMachine_CameraTestingMach_Right
        PUBLIC modeMachine_CameraTestingMach_Up
        PUBLIC modeMachine_CameraTestingMach_WriteNowPoint
        PUBLIC modeMachine_Down_MotorTestingMach_Output
        PUBLIC modeMachine_GiveSpeedMode
        PUBLIC modeMachine_GiveSpeedMode_Add
        PUBLIC modeMachine_GiveSpeedMode_Cut
        PUBLIC modeMachine_ImageBeholderTesting_TestingMode
        PUBLIC modeMachine_ImageBeholderTesting_TurnOnMode
        PUBLIC modeMachine_ImageBeholder_ReStart
        PUBLIC modeMachine_ImageOutPut_GetNumber
        PUBLIC modeMachine_ImageOutPut_ShowAlways
        PUBLIC modeMachine_ImageOutPut_Testing
        PUBLIC modeMachine_ImageOutPut_TurnOnMode
        PUBLIC modeMachine_ImageOutPut_Tx
        PUBLIC modeMachine_ImageOutPut_UsedNormal
        PUBLIC modeMachine_MiddlineTesting_AlwaysShow
        PUBLIC modeMachine_MiddlineTesting_AlwaysShow_Extra
        PUBLIC modeMachine_MiddlineTesting_AlwaysShow_ExtraExtra
        PUBLIC modeMachine_MiddlineTesting_TestingMode
        PUBLIC modeMachine_MiddlineTesting_TestingMode_AddKCurve
        PUBLIC modeMachine_MiddlineTesting_TestingMode_AddMoreKCurve
        PUBLIC modeMachine_MiddlineTesting_TestingMode_AddMorePCurve
        PUBLIC modeMachine_MiddlineTesting_TestingMode_AddPCurve
        PUBLIC modeMachine_MiddlineTesting_TestingMode_AddStopY_Pos
        PUBLIC modeMachine_MiddlineTesting_TestingMode_CutKCurve
        PUBLIC modeMachine_MiddlineTesting_TestingMode_CutMoreKCurve
        PUBLIC modeMachine_MiddlineTesting_TestingMode_CutMorePCurve
        PUBLIC modeMachine_MiddlineTesting_TestingMode_CutPCurve
        PUBLIC modeMachine_MiddlineTesting_TestingMode_CutStopY_Pos
        PUBLIC modeMachine_MiddlineTesting_TestingMode_Extra
        PUBLIC modeMachine_MiddlineTesting_TestingMode_ExtraExtra
        PUBLIC modeMachine_MiddlineTesting_TurnMode
        PUBLIC modeMachine_MotorAlways_Show
        PUBLIC modeMachine_MotorPID_D_Change
        PUBLIC modeMachine_MotorPID_I_Change
        PUBLIC modeMachine_MotorPID_P_Change
        PUBLIC modeMachine_MotorPID_TurnOnMode
        PUBLIC modeMachine_MotorPID_Used_Last
        PUBLIC modeMachine_MotorTesting_TestingMode
        PUBLIC modeMachine_MotorTesting_TurnMode
        PUBLIC modeMachine_Motor_D_Add
        PUBLIC modeMachine_Motor_D_Cut
        PUBLIC modeMachine_Motor_I_Add
        PUBLIC modeMachine_Motor_I_Cut
        PUBLIC modeMachine_Motor_P_Add
        PUBLIC modeMachine_Motor_P_Cut
        PUBLIC modeMachine_Move2testingMode
        PUBLIC modeMachine_MoveDown_PanelDisplay
        PUBLIC modeMachine_MoveUp_PanelDisplay
        PUBLIC modeMachine_Move_ServoTestingPanel_Display
        PUBLIC modeMachine_Move_ServoTesting_DownOutPut
        PUBLIC modeMachine_Move_ServoTesting_UpOutPut
        PUBLIC modeMachine_ParaSet_TurnOnMode
        PUBLIC modeMachine_ParaShow_Panel
        PUBLIC modeMachine_RtAngel
        PUBLIC modeMachine_RtAngel_Display
        PUBLIC modeMachine_Running15s_RunMode
        PUBLIC modeMachine_Running15s_TimeSetMode
        PUBLIC modeMachine_Running30s_RunMode
        PUBLIC modeMachine_Running30s_TimeSetMode
        PUBLIC modeMachine_Running5s_RunMode
        PUBLIC modeMachine_Running5s_TimeSetMode
        PUBLIC modeMachine_RunningAlways_RunMode
        PUBLIC modeMachine_RunningAlways_TimeSetMode
        PUBLIC modeMachine_RunningDark_Check
        PUBLIC modeMachine_RunningLight_Check
        PUBLIC modeMachine_RunningLight_RunMode
        PUBLIC modeMachine_RunningLight_TimeSetMode
        PUBLIC modeMachine_RunningLight_Waiting
        PUBLIC modeMachine_RunningSet_TurnOnMode
        PUBLIC modeMachine_ServoDiffAdd
        PUBLIC modeMachine_ServoDiffCut
        PUBLIC modeMachine_ServoDiffMode
        PUBLIC modeMachine_ServoDiff_Add
        PUBLIC modeMachine_ServoDiff_Cut
        PUBLIC modeMachine_ServoFunction_Average
        PUBLIC modeMachine_ServoFunction_Optimization
        PUBLIC modeMachine_ServoFunction_TurnOnMode
        PUBLIC modeMachine_ServoTesting_TestingMode
        PUBLIC modeMachine_ServoTesting_TurnMode
        PUBLIC modeMachine_ShutterWidthChange
        PUBLIC modeMachine_ShutterWidthChange_Add
        PUBLIC modeMachine_ShutterWidthChange_Cut
        PUBLIC modeMachine_SpecialAlwaysShow
        PUBLIC modeMachine_SpecialStatusCut_TurnOnMode
        PUBLIC modeMachine_SpecialStatusDisplay_Leaf
        PUBLIC modeMachine_SpeedChangeChange
        PUBLIC modeMachine_SpeedChangeChange_Add
        PUBLIC modeMachine_SpeedChangeChange_Cut
        PUBLIC modeMachine_SpeedCutMode
        PUBLIC modeMachine_SpeedCutMode_Add
        PUBLIC modeMachine_SpeedCutMode_Cut
        PUBLIC modeMachine_SpeedCutRatioMode
        PUBLIC modeMachine_SpeedCutRatioMode_Add
        PUBLIC modeMachine_SpeedCutRatioMode_Cut
        PUBLIC modeMachine_StartCarRunning_Paraments
        PUBLIC modeMachine_StartCarSpeedAverage_Paraments
        PUBLIC modeMachine_StartCarSpeedAverage_Setting
        PUBLIC modeMachine_StartCarSpeedAverage_Setting_01
        PUBLIC modeMachine_StartCarSpeedHigh_Paraments
        PUBLIC modeMachine_StartCarSpeedLow_Paraments
        PUBLIC modeMachine_StartCarSpeedMax_Setting
        PUBLIC modeMachine_StartCarSpeedMax_Setting_01
        PUBLIC modeMachine_StartCar_Paraments_Display
        PUBLIC modeMachine_Testing_TurnOnMode
        PUBLIC modeMachine_ThirdParaments_Set
        PUBLIC modeMachine_ThirdParaments_Viewer
        PUBLIC modeMachine_TotleShutterChangeMode
        PUBLIC modeMachine_TotleShutter_TurnOnMode
        PUBLIC modeMachine_TotleShutter_add
        PUBLIC modeMachine_TotleShutter_cut
        PUBLIC modeMachine_Up_MotorTestingMach_Output
        PUBLIC modeMachine_set_form1to2_paraments
        PUBLIC modeMachine_set_speed_max_min_DisplayParaments_addCutSpeed
        PUBLIC modeMachine_set_speed_max_min_DisplayParaments_addMaxSpeed
        PUBLIC modeMachine_set_speed_max_min_DisplayParaments_addMinSpeed
        PUBLIC modeMachine_set_speed_max_min_DisplayParaments_changeMutilServoPID
        PUBLIC modeMachine_set_speed_max_min_DisplayParaments_changeMutilServoPID_AddParaments
        PUBLIC modeMachine_set_speed_max_min_DisplayParaments_changeMutilServoPID_CutParaments
        PUBLIC modeMachine_set_speed_max_min_DisplayParaments_closeLighting
        PUBLIC modeMachine_set_speed_max_min_DisplayParaments_cutCutSpeed
        PUBLIC modeMachine_set_speed_max_min_DisplayParaments_cutMaxSpeed
        PUBLIC modeMachine_set_speed_max_min_DisplayParaments_cutMinSpeed
        PUBLIC modeMachine_set_speed_max_min_DisplayParaments_firstPara
        PUBLIC modeMachine_set_speed_max_min_DisplayParaments_mutilServoPIDPara
        PUBLIC modeMachine_set_speed_max_min_DisplayParaments_secondPara
        PUBLIC modeMachine_set_speed_max_min_DisplayParaments_thirdPara
        PUBLIC modeMachine_set_speed_max_min_SettingMutilServoPID
        PUBLIC modeMachine_set_speed_max_min_SettingSpeedCut
        PUBLIC modeMachine_set_speed_max_min_SettingSpeedMax
        PUBLIC modeMachine_set_speed_max_min_SettingSpeedMin
        PUBLIC modeMachine_set_speed_max_min_TurnOnMode
        PUBLIC n_ImageBeholder_FourPointGetAndCal
        PUBLIC vPtr_CheckLightingChaser
        PUBLIC v_ImageBeholder_Information
        PUBLIC v_InputInterface_testing
        PUBLIC v_ModeMachine_KeyInput_TurnCut
        PUBLIC v_Panel_DisplayCommandLine
        PUBLIC v_systemPara_Init
        PUBLIC v_system_clocked

// D:\´´×÷ÊÒ\·ÉË¼¿¨¶ûÖÇÄÜÐ¡³µ\Ë³°µÈýºÅ\´úÂë\Ë³°µÈýºÅ-»ªÄÏÈü×îºóÆßÌì-7.11\ShunAn_Panel\ThePoet_ThePendulum.c
//    1 #include "arm_cm4.h"
//    2 #include "MK60F15.h"
//    3 #include "ShunAn_Lib.h"
//    4 #include "start_ShunAn.h"
//    5 
//    6 #include "ThePoet_ThePendulum.h"
//    7 
//    8 #include "Poet_Motor.h"
//    9 #include "Poet_Revelation.h"
//   10 #include "Poet_InputInterface.h"
//   11 #include "Poet_ImageBeholder.h"
//   12 
//   13 #include "Pendulum_EndlessFormsMostBeautiful.h"//
//   14 
//   15 #include <stdio.h>
//   16 #include <stdlib.h>
//   17 
//   18 #include "Poet_Buzzer.h"
//   19 #include "Poet_Servo.h"
//   20 #include "Poet_Bluetooth.h"

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   21 s_ModeMachine m_ModeMachine;
m_ModeMachine:
        DS8 40
//   22 //´Ëº¯Êý²»ÐèÒª¸ü¸Ä
//   23 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   24 uint8 n_ImageBeholder_FourPointGetAndCal(uint8 x, uint8 y, uint8 modeSet)//Î»ÖÃ»ñÈ¡Óë½âËã×îÊµ¼Ê´úÂë
//   25 {
n_ImageBeholder_FourPointGetAndCal:
        PUSH     {R4-R6,LR}
        SUB      SP,SP,#+344
        MOVS     R4,R1
//   26     typedef struct
//   27     {
//   28         unsigned char x;
//   29         unsigned char y;
//   30     }s_Ponit;//¶¨Òå±ê×¼Êý×éÊýÖµ
//   31     static s_Ponit Point[4] ={0};
//   32     static s_Ponit PonitAfter[4] ={0};
//   33     
//   34     do
//   35     {//¸üÐÂ×ª»»ºó¾ØÕó
//   36         const sint8 f_x_higher = 40;
        MOVS     R3,#+40
//   37 	const sint8 f_x_lower = 10;
        MOVS     R5,#+10
//   38         
//   39 	const sint8 f_y_higher = 40;
        MOVS     R6,#+40
//   40 	const sint8 f_y_lower = 10;
        MOVS     R1,#+10
//   41 
//   42 	s_Ponit LeftUp;
//   43 	LeftUp.x = f_x_lower;
        STRB     R5,[SP, #+16]
//   44 	LeftUp.y = f_y_higher;
        STRB     R6,[SP, #+17]
//   45 	s_Ponit RightUp;
//   46 	RightUp.x = f_x_higher;
        STRB     R3,[SP, #+12]
//   47 	RightUp.y = f_y_higher;
        STRB     R6,[SP, #+13]
//   48 	s_Ponit RightDown;
//   49 	RightDown.x = f_x_higher;
        STRB     R3,[SP, #+8]
//   50 	RightDown.y = f_y_lower;
        STRB     R1,[SP, #+9]
//   51 	s_Ponit LeftDown;
//   52 	LeftDown.x = f_x_lower;
        STRB     R5,[SP, #+4]
//   53 	LeftDown.y = f_y_lower;
        STRB     R1,[SP, #+5]
//   54         
//   55         PonitAfter[0].x = LeftUp.x;
        LDR.W    R1,??DataTable8
        LDRB     R3,[SP, #+16]
        STRB     R3,[R1, #+0]
//   56 	PonitAfter[0].y = LeftUp.y;
        LDR.W    R1,??DataTable8
        LDRB     R3,[SP, #+17]
        STRB     R3,[R1, #+1]
//   57 
//   58 	PonitAfter[1].x = RightUp.x;
        LDR.W    R1,??DataTable8
        LDRB     R3,[SP, #+12]
        STRB     R3,[R1, #+2]
//   59 	PonitAfter[1].y = RightUp.y;
        LDR.W    R1,??DataTable8
        LDRB     R3,[SP, #+13]
        STRB     R3,[R1, #+3]
//   60 
//   61 	PonitAfter[2].x = RightDown.x;
        LDR.W    R1,??DataTable8
        LDRB     R3,[SP, #+8]
        STRB     R3,[R1, #+4]
//   62 	PonitAfter[2].y = RightDown.y;
        LDR.W    R1,??DataTable8
        LDRB     R3,[SP, #+9]
        STRB     R3,[R1, #+5]
//   63 
//   64 	PonitAfter[3].x = LeftDown.x;
        LDR.W    R1,??DataTable8
        LDRB     R3,[SP, #+4]
        STRB     R3,[R1, #+6]
//   65         PonitAfter[3].y = LeftDown.y;
        LDR.W    R1,??DataTable8
        LDRB     R3,[SP, #+5]
        STRB     R3,[R1, #+7]
//   66     }while(0);
//   67     
//   68     static unsigned char timer = 0;
//   69     //½âËãËÄ¸öµã
//   70     switch(modeSet)
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+65
        BEQ.N    ??n_ImageBeholder_FourPointGetAndCal_0
        CMP      R2,#+67
        BEQ.N    ??n_ImageBeholder_FourPointGetAndCal_1
        CMP      R2,#+82
        BEQ.N    ??n_ImageBeholder_FourPointGetAndCal_2
        CMP      R2,#+87
        BEQ.N    ??n_ImageBeholder_FourPointGetAndCal_3
        B.N      ??n_ImageBeholder_FourPointGetAndCal_4
//   71     {
//   72     case 'C':
//   73         timer = 0;
??n_ImageBeholder_FourPointGetAndCal_1:
        LDR.W    R0,??DataTable16
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//   74         break;
        B.N      ??n_ImageBeholder_FourPointGetAndCal_5
//   75     case 'W':
//   76         Point[timer].x = x;
??n_ImageBeholder_FourPointGetAndCal_3:
        LDR.W    R1,??DataTable16
        LDRB     R1,[R1, #+0]
        LDR.W    R2,??DataTable9_1
        STRB     R0,[R2, R1, LSL #+1]
//   77         Point[timer].y = y;
        LDR.W    R0,??DataTable16
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable9_1
        ADDS     R0,R1,R0, LSL #+1
        STRB     R4,[R0, #+1]
//   78         
//   79         x = Point[timer].x;
        LDR.W    R0,??DataTable16
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable9_1
        LDRB     R0,[R1, R0, LSL #+1]
//   80         y = Point[timer].y;
        LDR.W    R1,??DataTable16
        LDRB     R1,[R1, #+0]
        LDR.W    R2,??DataTable9_1
        ADDS     R1,R2,R1, LSL #+1
        LDRB     R4,[R1, #+1]
//   81         v_MonoRev_Number(0,0,x,10);
        MOVS     R2,#+10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        VMOV     S0,R0
        VCVT.F32.U32 S0,S0
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       v_MonoRev_Number
//   82         v_MonoRev_Number(64,0,y,10);
        MOVS     R2,#+10
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        VMOV     S0,R4
        VCVT.F32.U32 S0,S0
        MOVS     R1,#+0
        MOVS     R0,#+64
        BL       v_MonoRev_Number
//   83         
//   84         timer ++;
        LDR.W    R0,??DataTable16
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable16
        STRB     R0,[R1, #+0]
//   85         break;
        B.N      ??n_ImageBeholder_FourPointGetAndCal_5
//   86     case 'R':
//   87         do
//   88         {
//   89             s_color color;//»æÖÆµãµÄÑÕÉ«
//   90             color.C_Red_31 = 31;
??n_ImageBeholder_FourPointGetAndCal_2:
        MOVS     R0,#+31
        STRB     R0,[SP, #+0]
//   91             color.A_Blue_31 = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+2]
//   92             color.B_Green_63 = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
//   93             for(uint8 loop = 0;loop < timer;loop++)
        MOVS     R4,#+0
        B.N      ??n_ImageBeholder_FourPointGetAndCal_6
//   94             {
//   95                 v_ColorRev_PutPoint(Point[loop].x ,Point[loop].y ,&color);//»æÖÆºìµã
??n_ImageBeholder_FourPointGetAndCal_7:
        ADD      R2,SP,#+0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable9_1
        ADDS     R0,R0,R4, LSL #+1
        LDRB     R1,[R0, #+1]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable9_1
        LDRB     R0,[R0, R4, LSL #+1]
        BL       v_ColorRev_PutPoint
//   96             }
        ADDS     R4,R4,#+1
??n_ImageBeholder_FourPointGetAndCal_6:
        LDR.W    R0,??DataTable16
        LDRB     R0,[R0, #+0]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,R0
        BCC.N    ??n_ImageBeholder_FourPointGetAndCal_7
//   97         }while(0);
//   98         break;
        B.N      ??n_ImageBeholder_FourPointGetAndCal_5
//   99     case 'A'://½âËãµÃµ½×îºÏÊÊÊýÖµ
//  100         m_ModeMachine.always_done = modeMachine_Always_CameraTestingMach_Output_ExtraPara;//×´Ì¬»ú×ªÒÆ
??n_ImageBeholder_FourPointGetAndCal_0:
        LDR.W    R0,??DataTable9_2
        LDR.W    R1,??DataTable9_3
        STR      R1,[R0, #+28]
//  101         do
//  102         {
//  103             float AB[8][9];
//  104             float X[8];
//  105             
//  106             for(uint8 loop = 0;loop < 4;loop++)
        MOVS     R0,#+0
        B.N      ??n_ImageBeholder_FourPointGetAndCal_8
//  107             {
//  108                 Point[loop].x *= 2;
??n_ImageBeholder_FourPointGetAndCal_9:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable9_1
        LDRB     R1,[R1, R0, LSL #+1]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R1,R1,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable9_1
        STRB     R1,[R2, R0, LSL #+1]
//  109                 //Point[loop].y *= 2;
//  110             }
        ADDS     R0,R0,#+1
??n_ImageBeholder_FourPointGetAndCal_8:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+4
        BLT.N    ??n_ImageBeholder_FourPointGetAndCal_9
//  111             
//  112             for (uint8 row = 0; row < 9; row++)
        MOVS     R0,#+0
        B.N      ??n_ImageBeholder_FourPointGetAndCal_10
//  113             {
//  114 		for (uint8 line = 0; line < 8; line++)
//  115 		{
//  116                     AB[line][row] = 0.f;
??n_ImageBeholder_FourPointGetAndCal_11:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R2,#+36
        ADD      R3,SP,#+52
        MLA      R2,R2,R1,R3
        MOVS     R3,#+0
        STR      R3,[R2, R0, LSL #+2]
//  117                     X[line] = 0.f;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADD      R2,SP,#+20
        MOVS     R3,#+0
        STR      R3,[R2, R1, LSL #+2]
//  118 		}
        ADDS     R1,R1,#+1
??n_ImageBeholder_FourPointGetAndCal_12:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+8
        BLT.N    ??n_ImageBeholder_FourPointGetAndCal_11
        ADDS     R0,R0,#+1
??n_ImageBeholder_FourPointGetAndCal_10:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+9
        BGE.N    ??n_ImageBeholder_FourPointGetAndCal_13
        MOVS     R1,#+0
        B.N      ??n_ImageBeholder_FourPointGetAndCal_12
//  119             }
//  120             
//  121             for (uint8 loop = 0; loop < 4; loop++)
??n_ImageBeholder_FourPointGetAndCal_13:
        MOVS     R0,#+0
        B.N      ??n_ImageBeholder_FourPointGetAndCal_14
//  122             {//×óÉÏ//ÓÒÉÏ//ÓÒÏÂ//×óÏÂ
//  123                 AB[loop * 2][8] = (PonitAfter[loop].x);
??n_ImageBeholder_FourPointGetAndCal_15:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable8
        LDRB     R1,[R1, R0, LSL #+1]
        VMOV     S0,R1
        VCVT.F32.U32 S0,S0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R1,#+72
        ADD      R2,SP,#+52
        MLA      R1,R1,R0,R2
        VSTR     S0,[R1, #+32]
//  124 		AB[loop * 2 + 1][8] = (PonitAfter[loop].y);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R1,R0,#+1
        MOVS     R2,#+36
        ADD      R3,SP,#+52
        MLA      R1,R2,R1,R3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable8
        ADDS     R2,R2,R0, LSL #+1
        LDRB     R2,[R2, #+1]
        VMOV     S0,R2
        VCVT.F32.U32 S0,S0
        VSTR     S0,[R1, #+68]
//  125 
//  126 		AB[loop * 2][6] = -(PonitAfter[loop].x);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable8
        LDRB     R1,[R1, R0, LSL #+1]
        RSBS     R1,R1,#+0
        VMOV     S0,R1
        VCVT.F32.S32 S0,S0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R1,#+72
        ADD      R2,SP,#+52
        MLA      R1,R1,R0,R2
        VSTR     S0,[R1, #+24]
//  127 		AB[loop * 2][7] = -(PonitAfter[loop].x);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable8
        LDRB     R1,[R1, R0, LSL #+1]
        RSBS     R1,R1,#+0
        VMOV     S0,R1
        VCVT.F32.S32 S0,S0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R1,#+72
        ADD      R2,SP,#+52
        MLA      R1,R1,R0,R2
        VSTR     S0,[R1, #+28]
//  128 
//  129 		AB[loop * 2 + 1][6] = -(PonitAfter[loop].y);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R1,R0,#+1
        MOVS     R2,#+36
        ADD      R3,SP,#+52
        MLA      R1,R2,R1,R3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable8
        ADDS     R2,R2,R0, LSL #+1
        LDRB     R2,[R2, #+1]
        RSBS     R2,R2,#+0
        VMOV     S0,R2
        VCVT.F32.S32 S0,S0
        VSTR     S0,[R1, #+60]
//  130 		AB[loop * 2 + 1][7] = -(PonitAfter[loop].y);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R1,R0,#+1
        MOVS     R2,#+36
        ADD      R3,SP,#+52
        MLA      R1,R2,R1,R3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable8
        ADDS     R2,R2,R0, LSL #+1
        LDRB     R2,[R2, #+1]
        RSBS     R2,R2,#+0
        VMOV     S0,R2
        VCVT.F32.S32 S0,S0
        VSTR     S0,[R1, #+64]
//  131             }
        ADDS     R0,R0,#+1
??n_ImageBeholder_FourPointGetAndCal_14:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+4
        BLT.N    ??n_ImageBeholder_FourPointGetAndCal_15
//  132 
//  133             for (uint8 loop = 0; loop < 4; loop++)
        MOVS     R0,#+0
        B.N      ??n_ImageBeholder_FourPointGetAndCal_16
//  134             {//×óÉÏ//ÓÒÉÏ//ÓÒÏÂ//×óÏÂ
//  135 		AB[loop * 2][0] = (Point[loop].x);
??n_ImageBeholder_FourPointGetAndCal_17:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable9_1
        LDRB     R1,[R1, R0, LSL #+1]
        VMOV     S0,R1
        VCVT.F32.U32 S0,S0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R1,#+72
        ADD      R2,SP,#+52
        MLA      R1,R1,R0,R2
        VSTR     S0,[R1, #0]
//  136 		AB[loop * 2][1] = (Point[loop].y);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable9_1
        ADDS     R1,R1,R0, LSL #+1
        LDRB     R1,[R1, #+1]
        VMOV     S0,R1
        VCVT.F32.U32 S0,S0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R1,#+72
        ADD      R2,SP,#+52
        MLA      R1,R1,R0,R2
        VSTR     S0,[R1, #+4]
//  137 		AB[loop * 2][2] = 1.f;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R1,#+72
        ADD      R2,SP,#+52
        MLA      R1,R1,R0,R2
        MOVS     R2,#+1065353216
        STR      R2,[R1, #+8]
//  138 
//  139 		AB[loop * 2 + 1][3] = (Point[loop].x);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R1,R0,#+1
        MOVS     R2,#+36
        ADD      R3,SP,#+52
        MLA      R1,R2,R1,R3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable9_1
        LDRB     R2,[R2, R0, LSL #+1]
        VMOV     S0,R2
        VCVT.F32.U32 S0,S0
        VSTR     S0,[R1, #+48]
//  140 		AB[loop * 2 + 1][4] = (Point[loop].y);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R1,R0,#+1
        MOVS     R2,#+36
        ADD      R3,SP,#+52
        MLA      R1,R2,R1,R3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable9_1
        ADDS     R2,R2,R0, LSL #+1
        LDRB     R2,[R2, #+1]
        VMOV     S0,R2
        VCVT.F32.U32 S0,S0
        VSTR     S0,[R1, #+52]
//  141 		AB[loop * 2 + 1][5] = 1.f;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R1,R0,#+1
        MOVS     R2,#+36
        ADD      R3,SP,#+52
        MLA      R1,R2,R1,R3
        MOVS     R2,#+1065353216
        STR      R2,[R1, #+56]
//  142 
//  143 		AB[loop * 2][6] = AB[loop * 2][6] * (Point[loop].x);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable9_1
        LDRB     R1,[R1, R0, LSL #+1]
        VMOV     S0,R1
        VCVT.F32.U32 S0,S0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R1,#+72
        ADD      R2,SP,#+52
        MLA      R1,R1,R0,R2
        VLDR     S1,[R1, #+24]
        VMUL.F32 S0,S0,S1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R1,#+72
        ADD      R2,SP,#+52
        MLA      R1,R1,R0,R2
        VSTR     S0,[R1, #+24]
//  144 		AB[loop * 2][7] = AB[loop * 2][7] * (Point[loop].y);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable9_1
        ADDS     R1,R1,R0, LSL #+1
        LDRB     R1,[R1, #+1]
        VMOV     S0,R1
        VCVT.F32.U32 S0,S0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R1,#+72
        ADD      R2,SP,#+52
        MLA      R1,R1,R0,R2
        VLDR     S1,[R1, #+28]
        VMUL.F32 S0,S0,S1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R1,#+72
        ADD      R2,SP,#+52
        MLA      R1,R1,R0,R2
        VSTR     S0,[R1, #+28]
//  145 
//  146 		AB[loop * 2 + 1][6] = AB[loop * 2 + 1][6] * (Point[loop].x);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R1,R0,#+1
        MOVS     R2,#+36
        ADD      R3,SP,#+52
        MLA      R1,R2,R1,R3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable9_1
        LDRB     R2,[R2, R0, LSL #+1]
        VMOV     S0,R2
        VCVT.F32.U32 S0,S0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R2,R0,#+1
        MOVS     R3,#+36
        ADD      R4,SP,#+52
        MLA      R2,R3,R2,R4
        VLDR     S1,[R2, #+60]
        VMUL.F32 S0,S0,S1
        VSTR     S0,[R1, #+60]
//  147 		AB[loop * 2 + 1][7] = AB[loop * 2 + 1][7] * (Point[loop].y);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R1,R0,#+1
        MOVS     R2,#+36
        ADD      R3,SP,#+52
        MLA      R1,R2,R1,R3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable9_1
        ADDS     R2,R2,R0, LSL #+1
        LDRB     R2,[R2, #+1]
        VMOV     S0,R2
        VCVT.F32.U32 S0,S0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R2,R0,#+1
        MOVS     R3,#+36
        ADD      R4,SP,#+52
        MLA      R2,R3,R2,R4
        VLDR     S1,[R2, #+64]
        VMUL.F32 S0,S0,S1
        VSTR     S0,[R1, #+64]
//  148             }
        ADDS     R0,R0,#+1
??n_ImageBeholder_FourPointGetAndCal_16:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+4
        BLT.W    ??n_ImageBeholder_FourPointGetAndCal_17
//  149             
//  150             b_solve8x8_Ax_b(AB,X);
        ADD      R1,SP,#+20
        ADD      R0,SP,#+52
        BL       b_solve8x8_Ax_b
//  151             
//  152             for(uint8 loop = 0;loop < 8;loop++)
        MOVS     R0,#+0
        B.N      ??n_ImageBeholder_FourPointGetAndCal_18
//  153             {
//  154                 m_Control.image_ratio[loop] = X[loop];
??n_ImageBeholder_FourPointGetAndCal_19:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable18
        ADDS     R1,R1,R0, LSL #+2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R2,SP,#+20
        LDR      R2,[R2, R0, LSL #+2]
        STR      R2,[R1, #+68]
//  155             }
        ADDS     R0,R0,#+1
??n_ImageBeholder_FourPointGetAndCal_18:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+8
        BLT.N    ??n_ImageBeholder_FourPointGetAndCal_19
//  156         }while(0);
//  157         break;
        B.N      ??n_ImageBeholder_FourPointGetAndCal_5
//  158     default:
//  159         break;
//  160     }
//  161     return timer;
??n_ImageBeholder_FourPointGetAndCal_4:
??n_ImageBeholder_FourPointGetAndCal_5:
        LDR.W    R0,??DataTable16
        LDRB     R0,[R0, #+0]
        ADD      SP,SP,#+344
        POP      {R4-R6,PC}       ;; return
//  162 }

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??Point:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??PonitAfter:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
??timer:
        DS8 1
//  163 
//  164 
//  165 
//  166 //============================================================================//
//  167 //ÏµÍ³º¯Êý - Ê±¼ä

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  168 void v_system_clocked()//ÏµÍ³Ê±¼ä±ä»¯
//  169 {
v_system_clocked:
        PUSH     {R7,LR}
//  170 //    PIT_Flag_Clear(PIT0);
//  171     m_system.timer = m_system.timer + m_system.time_ratio;//Ê±¼ä×Ô¼Ó//50Hz
        LDR.W    R0,??DataTable18_1
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable18_1
        LDR      R1,[R1, #+4]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable18_1
        STR      R0,[R1, #+0]
//  172     m_Button_Timer.BottonTotaltime = m_system.timer;//°´¼üÊ±¼ä×Ô¼Ó
        LDR.W    R0,??DataTable18_2
        LDR.W    R1,??DataTable18_1
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
//  173     v_system_clocker_user_done();
        BL       v_system_clocker_user_done
//  174 }
        POP      {R0,PC}          ;; return
//  175 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  176 void modeMachine_BasicTesting_DataShow()
//  177 {
modeMachine_BasicTesting_DataShow:
        PUSH     {R7,LR}
//  178     v_InputInterface_testing(4,1);//ÊäÈë°´¼ü²âÊÔ½Ó¿Ú
        MOVS     R1,#+1
        MOVS     R0,#+4
        BL       v_InputInterface_testing
//  179 }
        POP      {R0,PC}          ;; return
//  180 
//  181 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  182 void v_InputInterface_testing(uint8 x,uint8 y)//ÊäÈë°´¼ü²âÊÔ½Ó¿Ú
//  183 {
v_InputInterface_testing:
        PUSH     {R0,R1,R4-R11,LR}
        SUB      SP,SP,#+68
//  184     char InforMationShow[21];
//  185     sprintf(InforMationShow,"Ex:%d%d%d%d%d%d%d %d%d%d%d",
//  186             button_S1,button_S2,button_S3,button_S4,button_S5,button_S6,button_S8,
//  187             switch_1,switch_2,switch_3,switch_4);//ÐÅÏ¢´æ´¢
        BL       u8_ExInterface9_get
        STRB     R0,[SP, #+37]
        BL       u8_ExInterface8_get
        STRB     R0,[SP, #+36]
        BL       u8_ExInterface7_get
        MOVS     R4,R0
        BL       u8_ExInterface6_get
        MOVS     R5,R0
        BL       u8_ExInterface2_get
        MOVS     R6,R0
        BL       u8_ExInterface3_get
        MOVS     R7,R0
        BL       u8_ExInterface0_get
        MOV      R8,R0
        BL       u8_ExInterface1_get
        MOV      R9,R0
        BL       u8_ExInterface10_get
        MOV      R10,R0
        BL       u8_ExInterface5_get
        MOV      R11,R0
        BL       u8_ExInterface4_get
        LDRB     R1,[SP, #+37]
        STR      R1,[SP, #+32]
        LDRB     R1,[SP, #+36]
        STR      R1,[SP, #+28]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R4,[SP, #+24]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STR      R5,[SP, #+20]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        STR      R6,[SP, #+16]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        STR      R7,[SP, #+12]
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        STR      R8,[SP, #+8]
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        STR      R9,[SP, #+4]
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        STR      R10,[SP, #+0]
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        MOV      R3,R11
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R2,R0
        LDR.W    R1,??DataTable19
        ADD      R0,SP,#+40
        BL       sprintf
//  188     v_MonoRev_6x8Str(x,y,InforMationShow,0);
        MOVS     R3,#+0
        ADD      R2,SP,#+40
        LDRB     R1,[SP, #+72]
        LDRB     R0,[SP, #+68]
        BL       v_MonoRev_6x8Str
//  189 }
        ADD      SP,SP,#+76
        POP      {R4-R11,PC}      ;; return
//  190 
//  191 //============================================================================//
//  192 //============================================================================//
//  193 //============================================================================//
//  194 /*-------------------------------°´¼üÐÅÏ¢-------------------------------------*/
//  195 //============================================================================//
//  196 //============================================================================//
//  197 //============================================================================//
//  198 //============================================================================//
//  199 #define BuzzerBeepWithButton()            do{/*v_BuzzerBeepSet(200);*/}while(0)

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  200 void v_ModeMachine_KeyInput_TurnCut()
//  201 {//250ms
v_ModeMachine_KeyInput_TurnCut:
        PUSH     {R7,LR}
//  202     /*------------------------------------------------------------------------*/
//  203     //===°´¼üÉèÖÃ===//
//  204     if( ( 0 == button_S1 ) && ( m_Button_Timer.BottonTotaltime - m_Button_Timer.ButtonS1_time > 250 ) )
        BL       u8_ExInterface4_get
        CMP      R0,#+0
        BNE.N    ??v_ModeMachine_KeyInput_TurnCut_0
        LDR.W    R0,??DataTable18_2
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable18_2
        LDR      R1,[R1, #+4]
        SUBS     R0,R0,R1
        CMP      R0,#+251
        BCC.N    ??v_ModeMachine_KeyInput_TurnCut_0
//  205     {
//  206         m_Button_Timer.ButtonS1_time = m_Button_Timer.BottonTotaltime;BuzzerBeepWithButton();
        LDR.W    R0,??DataTable18_2
        LDR.W    R1,??DataTable18_2
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+4]
//  207         if(0 != m_ModeMachine.button_S1_done){v_MonoRev_Fill(0);m_ModeMachine.button_S1_done();}
        LDR.W    R0,??DataTable9_2
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??v_ModeMachine_KeyInput_TurnCut_0
        MOVS     R0,#+0
        BL       v_MonoRev_Fill
        LDR.W    R0,??DataTable9_2
        LDR      R0,[R0, #+0]
        BLX      R0
//  208     }
//  209     if( ( 0 == button_S2 ) && ( m_Button_Timer.BottonTotaltime - m_Button_Timer.ButtonS2_time > 250 ) )
??v_ModeMachine_KeyInput_TurnCut_0:
        BL       u8_ExInterface5_get
        CMP      R0,#+0
        BNE.N    ??v_ModeMachine_KeyInput_TurnCut_1
        LDR.W    R0,??DataTable18_2
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable18_2
        LDR      R1,[R1, #+8]
        SUBS     R0,R0,R1
        CMP      R0,#+251
        BCC.N    ??v_ModeMachine_KeyInput_TurnCut_1
//  210     {
//  211         m_Button_Timer.ButtonS2_time = m_Button_Timer.BottonTotaltime;BuzzerBeepWithButton();
        LDR.W    R0,??DataTable18_2
        LDR.W    R1,??DataTable18_2
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+8]
//  212         if(0 != m_ModeMachine.button_S2_done){v_MonoRev_Fill(0);m_ModeMachine.button_S2_done();}
        LDR.W    R0,??DataTable9_2
        LDR      R0,[R0, #+4]
        CMP      R0,#+0
        BEQ.N    ??v_ModeMachine_KeyInput_TurnCut_1
        MOVS     R0,#+0
        BL       v_MonoRev_Fill
        LDR.W    R0,??DataTable9_2
        LDR      R0,[R0, #+4]
        BLX      R0
//  213     }
//  214     if( ( 0 == button_S3 ) && ( m_Button_Timer.BottonTotaltime - m_Button_Timer.ButtonS3_time > 250 ) )
??v_ModeMachine_KeyInput_TurnCut_1:
        BL       u8_ExInterface10_get
        CMP      R0,#+0
        BNE.N    ??v_ModeMachine_KeyInput_TurnCut_2
        LDR.W    R0,??DataTable18_2
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable18_2
        LDR      R1,[R1, #+12]
        SUBS     R0,R0,R1
        CMP      R0,#+251
        BCC.N    ??v_ModeMachine_KeyInput_TurnCut_2
//  215     {
//  216         m_Button_Timer.ButtonS3_time = m_Button_Timer.BottonTotaltime;BuzzerBeepWithButton();
        LDR.W    R0,??DataTable18_2
        LDR.W    R1,??DataTable18_2
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+12]
//  217         if(0 != m_ModeMachine.button_S3_done){v_MonoRev_Fill(0);m_ModeMachine.button_S3_done();}
        LDR.W    R0,??DataTable9_2
        LDR      R0,[R0, #+8]
        CMP      R0,#+0
        BEQ.N    ??v_ModeMachine_KeyInput_TurnCut_2
        MOVS     R0,#+0
        BL       v_MonoRev_Fill
        LDR.W    R0,??DataTable9_2
        LDR      R0,[R0, #+8]
        BLX      R0
//  218     }
//  219     if( ( 0 == button_S4 ) && ( m_Button_Timer.BottonTotaltime - m_Button_Timer.ButtonS4_time > 250 ) )
??v_ModeMachine_KeyInput_TurnCut_2:
        BL       u8_ExInterface1_get
        CMP      R0,#+0
        BNE.N    ??v_ModeMachine_KeyInput_TurnCut_3
        LDR.W    R0,??DataTable18_2
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable18_2
        LDR      R1,[R1, #+16]
        SUBS     R0,R0,R1
        CMP      R0,#+251
        BCC.N    ??v_ModeMachine_KeyInput_TurnCut_3
//  220     {
//  221         m_Button_Timer.ButtonS4_time = m_Button_Timer.BottonTotaltime;BuzzerBeepWithButton();
        LDR.W    R0,??DataTable18_2
        LDR.W    R1,??DataTable18_2
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+16]
//  222         if(0 != m_ModeMachine.button_S4_done){v_MonoRev_Fill(0);m_ModeMachine.button_S4_done();}
        LDR.W    R0,??DataTable9_2
        LDR      R0,[R0, #+12]
        CMP      R0,#+0
        BEQ.N    ??v_ModeMachine_KeyInput_TurnCut_3
        MOVS     R0,#+0
        BL       v_MonoRev_Fill
        LDR.W    R0,??DataTable9_2
        LDR      R0,[R0, #+12]
        BLX      R0
//  223     }
//  224     if( ( 0 == button_S5 ) && ( m_Button_Timer.BottonTotaltime - m_Button_Timer.ButtonS5_time > 250 ) )
??v_ModeMachine_KeyInput_TurnCut_3:
        BL       u8_ExInterface0_get
        CMP      R0,#+0
        BNE.N    ??v_ModeMachine_KeyInput_TurnCut_4
        LDR.W    R0,??DataTable18_2
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable18_2
        LDR      R1,[R1, #+20]
        SUBS     R0,R0,R1
        CMP      R0,#+251
        BCC.N    ??v_ModeMachine_KeyInput_TurnCut_4
//  225     {
//  226         m_Button_Timer.ButtonS5_time = m_Button_Timer.BottonTotaltime;BuzzerBeepWithButton();
        LDR.W    R0,??DataTable18_2
        LDR.W    R1,??DataTable18_2
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+20]
//  227         if(0 != m_ModeMachine.button_S5_done){v_MonoRev_Fill(0);m_ModeMachine.button_S5_done();}
        LDR.W    R0,??DataTable9_2
        LDR      R0,[R0, #+16]
        CMP      R0,#+0
        BEQ.N    ??v_ModeMachine_KeyInput_TurnCut_4
        MOVS     R0,#+0
        BL       v_MonoRev_Fill
        LDR.W    R0,??DataTable9_2
        LDR      R0,[R0, #+16]
        BLX      R0
//  228     }
//  229     if( ( 0 == button_S6 ) && ( m_Button_Timer.BottonTotaltime - m_Button_Timer.ButtonS6_time > 250 ) )
??v_ModeMachine_KeyInput_TurnCut_4:
        BL       u8_ExInterface3_get
        CMP      R0,#+0
        BNE.N    ??v_ModeMachine_KeyInput_TurnCut_5
        LDR.W    R0,??DataTable18_2
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable18_2
        LDR      R1,[R1, #+24]
        SUBS     R0,R0,R1
        CMP      R0,#+251
        BCC.N    ??v_ModeMachine_KeyInput_TurnCut_5
//  230     {
//  231         m_Button_Timer.ButtonS6_time = m_Button_Timer.BottonTotaltime;BuzzerBeepWithButton();
        LDR.W    R0,??DataTable18_2
        LDR.W    R1,??DataTable18_2
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+24]
//  232         if(0 != m_ModeMachine.button_S6_done){v_MonoRev_Fill(0);m_ModeMachine.button_S6_done();}
        LDR.W    R0,??DataTable9_2
        LDR      R0,[R0, #+20]
        CMP      R0,#+0
        BEQ.N    ??v_ModeMachine_KeyInput_TurnCut_5
        MOVS     R0,#+0
        BL       v_MonoRev_Fill
        LDR.W    R0,??DataTable9_2
        LDR      R0,[R0, #+20]
        BLX      R0
//  233     }
//  234     if( ( 0 == button_S8 ) && ( m_Button_Timer.BottonTotaltime - m_Button_Timer.ButtonS8_time > 250 ) )
??v_ModeMachine_KeyInput_TurnCut_5:
        BL       u8_ExInterface2_get
        CMP      R0,#+0
        BNE.N    ??v_ModeMachine_KeyInput_TurnCut_6
        LDR.W    R0,??DataTable18_2
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable18_2
        LDR      R1,[R1, #+28]
        SUBS     R0,R0,R1
        CMP      R0,#+251
        BCC.N    ??v_ModeMachine_KeyInput_TurnCut_6
//  235     {
//  236         m_Button_Timer.ButtonS8_time = m_Button_Timer.BottonTotaltime;BuzzerBeepWithButton();
        LDR.W    R0,??DataTable18_2
        LDR.W    R1,??DataTable18_2
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+28]
//  237         if(0 != m_ModeMachine.button_S8_done){v_MonoRev_Fill(0);m_ModeMachine.button_S8_done();}
        LDR.W    R0,??DataTable9_2
        LDR      R0,[R0, #+24]
        CMP      R0,#+0
        BEQ.N    ??v_ModeMachine_KeyInput_TurnCut_6
        MOVS     R0,#+0
        BL       v_MonoRev_Fill
        LDR.W    R0,??DataTable9_2
        LDR      R0,[R0, #+24]
        BLX      R0
//  238     }
//  239 }
??v_ModeMachine_KeyInput_TurnCut_6:
        POP      {R0,PC}          ;; return
//  240 
//  241 
//  242 //============================================================================//
//  243 //============================================================================//
//  244 //============================================================================//
//  245 /*-----------------------------Panel Show-------------------------------------*/
//  246 //============================================================================//
//  247 //============================================================================//
//  248 //============================================================================//

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  249 void v_ImageBeholder_Information(uint8 x,uint8 y)
//  250 {
v_ImageBeholder_Information:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  251     static uint8 LineMaxCounter = 0;
//  252     if(m_self_Beholder.LineCounter > LineMaxCounter)
        LDR.W    R0,??DataTable19_2
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable19_3
        LDRH     R1,[R1, #+4]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,R1
        BCS.N    ??v_ImageBeholder_Information_0
//  253     {
//  254         LineMaxCounter = m_self_Beholder.LineCounter;//ÐÐ×ÜÊý¼ÆÊý
        LDR.W    R0,??DataTable19_3
        LDRH     R0,[R0, #+4]
        LDR.W    R1,??DataTable19_2
        STRB     R0,[R1, #+0]
//  255     }
//  256     
//  257     v_MonoRev_6x8Str(x,y,"Lnum:",0);v_MonoRev_Number(x + 6*5,y,m_self_Beholder.LineCounter,10);
??v_ImageBeholder_Information_0:
        MOVS     R3,#+0
        LDR.W    R2,??DataTable19_4
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       v_MonoRev_6x8Str
        MOVS     R2,#+10
        LDR.W    R0,??DataTable19_3
        LDRH     R0,[R0, #+4]
        VMOV     S0,R0
        VCVT.F32.U32 S0,S0
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R4,#+30
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       v_MonoRev_Number
//  258     y = y + 1;
        ADDS     R5,R5,#+1
//  259     v_MonoRev_6x8Str(x,y,"LMnum:",0);v_MonoRev_Number(x + 6*6,y,LineMaxCounter,10);
        MOVS     R3,#+0
        LDR.W    R2,??DataTable19_5
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       v_MonoRev_6x8Str
        MOVS     R2,#+10
        LDR.W    R0,??DataTable19_2
        LDRB     R0,[R0, #+0]
        VMOV     S0,R0
        VCVT.F32.U32 S0,S0
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R4,#+36
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       v_MonoRev_Number
//  260     y = y + 1;
        ADDS     R5,R5,#+1
//  261     if(1 == m_self_Beholder.regRewrite)
        LDR.W    R0,??DataTable19_3
        LDRB     R0,[R0, #+7]
        CMP      R0,#+1
        BNE.N    ??v_ImageBeholder_Information_1
//  262     {
//  263         v_MonoRev_6x8Str(x,y,"RegReWrite:Yes",0);
        MOVS     R3,#+0
        LDR.W    R2,??DataTable19_6
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       v_MonoRev_6x8Str
        B.N      ??v_ImageBeholder_Information_2
//  264     }
//  265     else
//  266     {
//  267         v_MonoRev_6x8Str(x,y,"RegReWrite:No",0);
??v_ImageBeholder_Information_1:
        MOVS     R3,#+0
        LDR.W    R2,??DataTable20_1
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       v_MonoRev_6x8Str
//  268     }
//  269     /*
//  270     y = y + 1;
//  271     v_MonoRev_Number(x + 6*0,y,m_Control.a,10);
//  272     v_MonoRev_Number(x + 64,y,m_Control.b,10);
//  273     y = y + 1;
//  274     v_MonoRev_Number(x + 6*0,y,m_Control.c,10);
//  275     v_MonoRev_Number(x + 64,y,m_Control.d,10);
//  276     y = y + 1;
//  277     v_MonoRev_Number(x + 6*0,y,m_Control.e,10);
//  278     v_MonoRev_Number(x + 64,y,m_Control.f,10);
//  279     y = y + 1;
//  280     v_MonoRev_Number(x + 6*0,y,m_Control.g,10);
//  281     v_MonoRev_Number(x + 64,y,m_Control.h,10);
//  282     */
//  283     /*
//  284     y = y + 1;
//  285     v_MonoRev_6x8Str(x,y,"RegNum:",0);
//  286     v_MonoRev_Number(x + 6*7,y,m_self_Beholder.regRewriteNumber,16);
//  287     y = y + 1;
//  288     v_MonoRev_6x8Str(x,y,"ReName:",0);
//  289     v_MonoRev_Number(x + 6*7,y,m_self_Beholder.regReNumber_RegName,16);
//  290     */
//  291 }
??v_ImageBeholder_Information_2:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
??LineMaxCounter:
        DS8 1
//  292 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  293 uint8 DEBUG_INFORMATION(char Tx[])
//  294 {
DEBUG_INFORMATION:
        PUSH     {R4,LR}
//  295     static uint8 y = 0;
//  296     uint8 re_now_y = 0;
        MOVS     R4,#+0
//  297     v_MonoRev_6x8Str(0,y,Tx,0);
        MOVS     R3,#+0
        MOVS     R2,R0
        LDR.W    R0,??DataTable20_2
        LDRB     R1,[R0, #+0]
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
//  298     re_now_y = y;
        LDR.W    R0,??DataTable20_2
        LDRB     R0,[R0, #+0]
        MOVS     R4,R0
//  299     y++;
        LDR.W    R0,??DataTable20_2
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable20_2
        STRB     R0,[R1, #+0]
//  300     if(8 == y)
        LDR.W    R0,??DataTable20_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+8
        BNE.N    ??DEBUG_INFORMATION_0
//  301     {
//  302         y = 7;
        LDR.W    R0,??DataTable20_2
        MOVS     R1,#+7
        STRB     R1,[R0, #+0]
//  303     }
//  304     return re_now_y;
??DEBUG_INFORMATION_0:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4,PC}          ;; return
//  305 }

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
??y:
        DS8 1
//  306 //============================================================================//
//  307 //============================================================================//
//  308 //============================================================================//
//  309 //s_PanelDisplay m_PanelDisplay;
//  310 /*
//  311 void v_PanelDisplay_Nop(void){return;}
//  312 void v_PanelDisplay_Gaia(void)
//  313 {
//  314     m_PanelDisplay.now_step = v_PanelDisplay_Gaia;
//  315     m_PanelDisplay.should_do = v_PanelDisplay_Nop;
//  316     v_MonoRev_Fill(0);//Çå¿ÕºÚ°×½çÃæ
//  317     do//Çå¿Õ²ÊÉ«½çÃæ
//  318     {
//  319         Revelation_CS_0(m_ColorOLED_pins);
//  320         s_color color_set;
//  321         color_set.A_Blue_31 = 0;
//  322         color_set.B_Green_63 = 0;
//  323         color_set.C_Red_31 = 0;
//  324         for(uint8 loop = 0;loop < 96;loop++)
//  325         {
//  326             for(uint8 inter = 0;inter < 64;inter++)
//  327             {
//  328                 v_ColorRev_PutPoint(loop,inter,&color_set);
//  329             }
//  330         }
//  331         Revelation_CS_1(m_ColorOLED_pins);
//  332     }while(0);
//  333     v_PanelDisplay_BasicDone();
//  334 }
//  335 */
//  336 /*----------------------------------------------------------------------------*/
//  337 //²ÊÉ«½çÃæÑ¡ÔñÎªÍ¼ÏñÏÔÊ¾
//  338 //ºÚ°×½çÃæÑ¡ÔñÎªÖ±½ÓÏÔÊ¾
//  339 /*
//  340 ----²âÊÔ½çÃæ => Testing
//  341 --------×î»ù±¾²âÊÔ
//  342 --------¶æ»ú²âÊÔ
//  343 --------µç»ú²âÊÔ
//  344 --------µ¼º½ÐÅÏ¢²âÊÔ
//  345 ----ÉãÏñÍ·On/Off => Beholder On/OFF
//  346 ----ÄæÍ¸ÊÓ²ÎÊýÉèÖÃ => ImageCal UnValid / Valid
//  347 ----³µÁ¾Ö´ÐÐÐÅÏ¢¸ü¸Ä => Vehicle Infor 
//  348 --------
//  349 ----·¢³µ => Run
//  350 ----5sÍ£³µ => Run 5 second
//  351 ----1minÍ£³µ => Run 1 min
//  352 */
//  353 //============================================================================//

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  354 void v_Panel_DisplayCommandLine(uint16 arrow,uint8 switchMode)//ÐòÁÐ¿òÍ¼//¶àÖØÊ÷½á¹¹
//  355 {    
v_Panel_DisplayCommandLine:
        PUSH     {R4-R11,LR}
        SUB      SP,SP,#+156
        MOVS     R4,R0
        MOVS     R6,R1
//  356     static uint8 first_LineShow = 0;//ÏÔÊ¾µÄµÚÒ»ÐÐ
//  357     static uint8 last_LineShow = 0;//ÏÔÊ¾µÄ×îºóÒ»ÐÐ
//  358     static uint8 nowMode = 255;//µ±Ç°Ä£Ê½ => ÓÃÓÚ³õÊ¼»¯ÕûÌåº¯Êý
//  359     const uint8 MagicNumber_MonoOLED_Ycounter = 7;//Ä¬ÈÏ²ÎÊý£ºSSD1306µÄ¶ÎÊý
        MOVS     R7,#+7
//  360     static sint8 arrow_static = 0;//°´¼üÉè¶¨µ±Ç°Öµ
//  361     /*----------Êý×é³£ÊýÉè¶¨----------*/
//  362     //0
//  363     const char *TestContext = "1.Testing";
        LDR.W    R3,??DataTable19_7
//  364     const char *BeholderContext = "2.Beholder Cal";
        LDR.W    R5,??DataTable19_8
//  365     const char *RunningSetContext = "3.Running Set";
        LDR.W    LR,??DataTable19_9
//  366     const char *ShutterContext = "4.Shutter Time";
        LDR.W    R8,??DataTable19_10
//  367     const char *ParaContext = "5.ParaSet Time";
        LDR.W    R2,??DataTable19_11
//  368     const char *MotorPIDContext = "6.PID";
        LDR.W    R1,??DataTable19_12
//  369     const char *ServoModeContext = "7.MotorFuc";
        LDR.W    R0,??DataTable19_13
//  370     const char *UpestCommandLine_Array[] = {TestContext,BeholderContext,RunningSetContext,ShutterContext,ParaContext,MotorPIDContext,ServoModeContext};
        STR      R3,[SP, #+124]
        STR      R5,[SP, #+128]
        STR      LR,[SP, #+132]
        STR      R8,[SP, #+136]
        STR      R2,[SP, #+140]
        STR      R1,[SP, #+144]
        STR      R0,[SP, #+148]
//  371     const uint8 Upest_ArrayNumber = sizeof(UpestCommandLine_Array)/sizeof(UpestCommandLine_Array[0]);
        MOVS     R0,#+7
        STRB     R0,[SP, #+3]
//  372     
//  373     const char *RacingContext = "8.RaceInfor";
        LDR.W    R0,??DataTable19_14
//  374     const char *UpestCommandLine_Array_two[] = {RacingContext};
        STR      R0,[SP, #+4]
//  375     const uint8 Upest_two_ArrayNumber = sizeof(UpestCommandLine_Array_two)/sizeof(UpestCommandLine_Array_two[0]);
        MOVS     R0,#+1
        STRB     R0,[SP, #+2]
//  376     
//  377     //1
//  378     const char *Basictest = "1.Basic Input Test";
        LDR.W    R3,??DataTable19_15
//  379     const char *Servotest = "2.Servo Test";
        LDR.W    R5,??DataTable19_16
//  380     const char *Motortest = "3.Motor Test";
        LDR.W    LR,??DataTable19_17
//  381     const char *CameraInfortest = "4.Camera Infor";
        LDR.W    R8,??DataTable19_18
//  382     const char *ServoMiddleLineTest = "5.Middline Test";
        LDR.W    R2,??DataTable19_19
//  383     const char *ImageOutput = "6.ImageOutPut";
        LDR.W    R1,??DataTable20_3
//  384     const char *SpecialStatusText = "7.Special Status";
        LDR.W    R0,??DataTable20_4
//  385 //    const char *Navigationtest = "4.Navigation Test";
//  386 //    const char *Testing_Array[] = {Basictest,Servotest,Motortest,Navigationtest};
//  387     const char *Testing_Array[] = {Basictest,Servotest,Motortest,CameraInfortest,ServoMiddleLineTest,ImageOutput,SpecialStatusText};
        STR      R3,[SP, #+96]
        STR      R5,[SP, #+100]
        STR      LR,[SP, #+104]
        STR      R8,[SP, #+108]
        STR      R2,[SP, #+112]
        STR      R1,[SP, #+116]
        STR      R0,[SP, #+120]
//  388     const uint8 Testing_ArrayNumber = sizeof(Testing_Array)/sizeof(Testing_Array[0]);
        MOVS     R0,#+7
        STRB     R0,[SP, #+1]
//  389     
//  390     const char *Running_5_second = "1.Running 5s";
        LDR.W    R0,??DataTable20_5
//  391     const char *Running_15_second = "2.Running 15s";
        LDR.W    R1,??DataTable20_6
//  392     const char *Running_30_second = "3.Running 30s";
        LDR.W    R2,??DataTable20_7
//  393     const char *Running_Always = "4.Running Always";
        LDR.W    R3,??DataTable20_8
//  394     const char *Running_Light = "5.Running Light";
        LDR.W    R5,??DataTable20_9
//  395 //    const char *Navigationtest = "4.Navigation Test";
//  396 //    const char *Testing_Array[] = {Basictest,Servotest,Motortest,Navigationtest};
//  397     const char *Running_Array[] = {Running_5_second,Running_15_second,Running_30_second,Running_Always,Running_Light};
        STR      R0,[SP, #+76]
        STR      R1,[SP, #+80]
        STR      R2,[SP, #+84]
        STR      R3,[SP, #+88]
        STR      R5,[SP, #+92]
//  398     const uint8 Running_ArrayNumber = sizeof(Running_Array)/sizeof(Running_Array[0]);
        MOVS     R0,#+5
        STRB     R0,[SP, #+0]
//  399     
//  400     
//  401     const char *SpeedSetPara = "1.Speed Set";
        LDR.W    R1,??DataTable20_10
//  402     const char *SpeedCutNumberPara = "2.SpdCut Set";
        LDR.W    R2,??DataTable20_11
//  403     const char *SpeedCutRatioPara = "3.SpdCut Rto";
        LDR.W    R3,??DataTable20_12
//  404     const char *ServoDiffPara = "4.Servo D";
        LDR.W    R5,??DataTable20_13
//  405     const char *CameraPara = "5.Shutter T";
        LDR.W    LR,??DataTable20_14
//  406     const char *SpeedChangePara = "6.Speed Max";
        LDR.W    R0,??DataTable20_15
//  407 //    const char *ParamentsInLastPara_Array = "  NextPage"
//  408 //    const char *Navigationtest = "4.Navigation Test";
//  409 //    const char *Testing_Array[] = {Basictest,Servotest,Motortest,Navigationtest};
//  410     const char *Para_Array[] = {SpeedSetPara,SpeedCutNumberPara,SpeedCutRatioPara,ServoDiffPara,CameraPara,SpeedChangePara};
        STR      R1,[SP, #+52]
        STR      R2,[SP, #+56]
        STR      R3,[SP, #+60]
        STR      R5,[SP, #+64]
        STR      LR,[SP, #+68]
        STR      R0,[SP, #+72]
//  411     const uint8 Para_ArrayNumber = sizeof(Para_Array)/sizeof(Para_Array[0]);
        MOVS     R8,#+6
//  412 
//  413     
//  414     const char *StartCarRuning = "1.Running";
        LDR.W    R5,??DataTable20_16
//  415     const char *StartCarSpeedLow = "2.SpeedMode Low";
        LDR.W    LR,??DataTable20_17
//  416     const char *StartCarSpeedHigh = "3.SpeedMode Hight";
        LDR.W    R9,??DataTable20_18
//  417     const char *StartCarSpeedAverage = "4.SpeedMode Average";
        LDR.W    R3,??DataTable20_19
//  418     const char *StartCarSpeedMin = "  Speed Min:";
        LDR.W    R2,??DataTable20_20
//  419     const char *StartCarSpeedMax = "  Speed Max:";
        LDR.W    R1,??DataTable20_21
//  420     const char *StartCarSpeedRt = "  Speed Rt:";
        LDR.W    R0,??DataTable20_22
//  421     const char *StartCar_Array[] = {StartCarRuning,StartCarSpeedLow,StartCarSpeedHigh,StartCarSpeedAverage
        STR      R5,[SP, #+24]
        STR      LR,[SP, #+28]
        STR      R9,[SP, #+32]
        STR      R3,[SP, #+36]
        STR      R2,[SP, #+40]
        STR      R1,[SP, #+44]
        STR      R0,[SP, #+48]
//  422                                    ,StartCarSpeedMin,StartCarSpeedMax,StartCarSpeedRt};
//  423     const uint8 StartCar_ArrayNumber = sizeof(StartCar_Array)/sizeof(StartCar_Array[0]);
        MOVS     R9,#+7
//  424     
//  425     
//  426     const char *MotorPID_P = "1.P Change";
        LDR.W    R0,??DataTable20_23
//  427     const char *MotorPID_I = "2.I Change";
        LDR.W    R1,??DataTable20_24
//  428     const char *MotorPID_D = "3.D Change";
        LDR.W    R2,??DataTable20_25
//  429     const char *MotorPID_UsedLast = "4.Used Last";
        LDR.W    R3,??DataTable20_26
//  430     const char *MotorPID_Array[] = {MotorPID_P,MotorPID_I,MotorPID_D,MotorPID_UsedLast};//
        STR      R0,[SP, #+8]
        STR      R1,[SP, #+12]
        STR      R2,[SP, #+16]
        STR      R3,[SP, #+20]
//  431     const uint8 MotorPID_ArrayNumber = sizeof(MotorPID_Array)/sizeof(MotorPID_Array[0]);
        MOVS     R11,#+4
//  432     
//  433     char **ShowCharPtr = 0;//ÏÔÊ¾Êý×é
        MOVS     R10,#+0
//  434     uint8 Line_Length = 0;//Êý×éÏàÓ¦µÄ³¤¶È
        MOVS     R5,#+0
//  435     
//  436 
//  437     if(!((255 != nowMode)&&(255 == switchMode)))//½«µ±Ç°Ä£Ê½Éè¶¨255ÎªÌØÊâÄ£Ê½
        LDR.W    R0,??DataTable20_27
        LDRB     R0,[R0, #+0]
        CMP      R0,#+255
        BEQ.N    ??v_Panel_DisplayCommandLine_0
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+255
        BEQ.N    ??v_Panel_DisplayCommandLine_1
//  438     {//(255 == nowMode)||(255 != switchMode)
//  439         if(nowMode != switchMode)//È·¶¨µ±Ç°Ä£Ê½¡£·Çµ±Ç°Ä£Ê½ÔòÇé¿öÈ«²¿StaticÇé¿ö
??v_Panel_DisplayCommandLine_0:
        LDR.W    R0,??DataTable20_27
        LDRB     R0,[R0, #+0]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R0,R6
        BEQ.N    ??v_Panel_DisplayCommandLine_2
//  440         {//255 != switchMode
//  441             first_LineShow = 0;
        LDR.W    R0,??DataTable20_28
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  442             last_LineShow = 0;
        LDR.W    R0,??DataTable20_29
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  443             arrow_static = 0;
        LDR.W    R0,??DataTable20_30
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  444             //»¹ÐèÒªÇåÆÁ
//  445             v_MonoRev_Fill(0);
        MOVS     R0,#+0
        BL       v_MonoRev_Fill
//  446         }
//  447         nowMode = switchMode;//Ð´Èëµ±Ç°Ä£Ê½µÄÑÚÄ¤ÊýÖµ
??v_Panel_DisplayCommandLine_2:
        LDR.W    R0,??DataTable20_27
        STRB     R6,[R0, #+0]
//  448         if(255 == switchMode)
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+255
        BEQ.W    ??v_Panel_DisplayCommandLine_3
//  449         {
//  450             return;//´íÎó·¢Éú
//  451         }
//  452     }
//  453     
//  454     
//  455     switch(nowMode)//È·¶¨Ä£Ê½µÄÐÅÏ¢ => ´Ëº¯Êý×îÄÑÎ¬»¤µÄ²¿·Ö
??v_Panel_DisplayCommandLine_1:
        LDR.W    R0,??DataTable20_27
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??v_Panel_DisplayCommandLine_4
        CMP      R0,#+2
        BEQ.N    ??v_Panel_DisplayCommandLine_5
        BCC.N    ??v_Panel_DisplayCommandLine_6
        CMP      R0,#+4
        BEQ.N    ??v_Panel_DisplayCommandLine_7
        BCC.N    ??v_Panel_DisplayCommandLine_8
        CMP      R0,#+6
        BEQ.N    ??v_Panel_DisplayCommandLine_9
        BCC.N    ??v_Panel_DisplayCommandLine_10
        B.N      ??v_Panel_DisplayCommandLine_11
//  456     {
//  457     case 0://×î»ù±¾ÊýÖµÐÅÏ¢¡ª¡ªUpestCommandLine_Array
//  458         ShowCharPtr = (char**)UpestCommandLine_Array;
??v_Panel_DisplayCommandLine_4:
        ADD      R10,SP,#+124
//  459         Line_Length = Upest_ArrayNumber;
        LDRB     R5,[SP, #+3]
//  460         break;
        B.N      ??v_Panel_DisplayCommandLine_11
//  461     case 1://²âÊÔÐÅÏ¢ÊýÖµÐÅÏ¢
//  462         ShowCharPtr = (char**)Testing_Array;
??v_Panel_DisplayCommandLine_6:
        ADD      R10,SP,#+96
//  463         Line_Length = Testing_ArrayNumber;
        LDRB     R5,[SP, #+1]
//  464         break;
        B.N      ??v_Panel_DisplayCommandLine_11
//  465     case 2://²âÊÔÐÅÏ¢ÊýÖµÐÅÏ¢
//  466         ShowCharPtr = (char**)Running_Array;
??v_Panel_DisplayCommandLine_5:
        ADD      R10,SP,#+76
//  467         Line_Length = Running_ArrayNumber;
        LDRB     R5,[SP, #+0]
//  468         break;
        B.N      ??v_Panel_DisplayCommandLine_11
//  469     case 3://²âÊÔÐÅÏ¢ÊýÖµÐÅÏ¢
//  470         ShowCharPtr = (char**)Para_Array;
??v_Panel_DisplayCommandLine_8:
        ADD      R10,SP,#+52
//  471         Line_Length = Para_ArrayNumber;
        MOV      R5,R8
//  472         break;
        B.N      ??v_Panel_DisplayCommandLine_11
//  473     case 4://²âÊÔÐÅÏ¢ÊýÖµÐÅÏ¢
//  474         ShowCharPtr = (char**)MotorPID_Array;
??v_Panel_DisplayCommandLine_7:
        ADD      R10,SP,#+8
//  475         Line_Length = MotorPID_ArrayNumber;
        MOV      R5,R11
//  476         break;
        B.N      ??v_Panel_DisplayCommandLine_11
//  477     case 5:
//  478         ShowCharPtr = (char**)UpestCommandLine_Array_two;//[] = {RacingContext};
??v_Panel_DisplayCommandLine_10:
        ADD      R10,SP,#+4
//  479         Line_Length = Upest_two_ArrayNumber;
        LDRB     R5,[SP, #+2]
//  480         break;
        B.N      ??v_Panel_DisplayCommandLine_11
//  481     case 6:
//  482         ShowCharPtr = (char**)StartCar_Array;//[] = {RacingContext};
??v_Panel_DisplayCommandLine_9:
        ADD      R10,SP,#+24
//  483         Line_Length = StartCar_ArrayNumber;
        MOV      R5,R9
//  484         break;    
//  485         
//  486     }
//  487     /*------------------°´¼üÉè¶¨------------------*/
//  488 //    static sint8 arrow_static = 0;//°´¼üÉè¶¨µ±Ç°Öµ
//  489     arrow_static = (arrow >= 9000)?(arrow_static + (arrow - 10000)):arrow;
??v_Panel_DisplayCommandLine_11:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        MOVW     R0,#+9000
        CMP      R4,R0
        BLT.N    ??v_Panel_DisplayCommandLine_12
        LDR.W    R0,??DataTable20_30
        LDRB     R0,[R0, #+0]
        ADDS     R0,R4,R0
        SUBS     R4,R0,#+16
        B.N      ??v_Panel_DisplayCommandLine_13
??v_Panel_DisplayCommandLine_12:
??v_Panel_DisplayCommandLine_13:
        LDR.W    R0,??DataTable20_30
        STRB     R4,[R0, #+0]
//  490     if(arrow_static < 0){arrow_static = 0;}
        LDR.W    R0,??DataTable20_30
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+0
        BPL.N    ??v_Panel_DisplayCommandLine_14
        LDR.W    R0,??DataTable20_30
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  491     if(arrow_static >= Line_Length){arrow_static = Line_Length - 1;}
??v_Panel_DisplayCommandLine_14:
        LDR.W    R0,??DataTable20_30
        LDRSB    R0,[R0, #+0]
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BLT.N    ??v_Panel_DisplayCommandLine_15
        SUBS     R0,R5,#+1
        LDR.W    R1,??DataTable20_30
        STRB     R0,[R1, #+0]
//  492     arrow = arrow_static;
??v_Panel_DisplayCommandLine_15:
        LDR.W    R0,??DataTable20_30
        LDRSB    R4,[R0, #+0]
//  493     //============================================//
//  494     
//  495     /*------------------È·¶¨»æÖÆÇø¼ä------------------*/
//  496     sint8 show_first2Panel = ((arrow >= first_LineShow)?0:arrow) + ((arrow > last_LineShow)?(arrow - MagicNumber_MonoOLED_Ycounter):0);//È·¶¨Ê×ÐÐÄ¿
        LDR.W    R0,??DataTable20_28
        LDRB     R0,[R0, #+0]
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R4,R0
        BCC.N    ??v_Panel_DisplayCommandLine_16
        MOVS     R0,#+0
        B.N      ??v_Panel_DisplayCommandLine_17
??v_Panel_DisplayCommandLine_16:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        MOVS     R0,R4
??v_Panel_DisplayCommandLine_17:
        LDR.W    R1,??DataTable20_29
        LDRB     R1,[R1, #+0]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R1,R4
        BCS.N    ??v_Panel_DisplayCommandLine_18
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        SUBS     R1,R4,R7
        B.N      ??v_Panel_DisplayCommandLine_19
??v_Panel_DisplayCommandLine_18:
        MOVS     R1,#+0
??v_Panel_DisplayCommandLine_19:
        ADDS     R6,R1,R0
//  497     if(show_first2Panel < 0){show_first2Panel = 0;}
        SXTB     R6,R6            ;; SignExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BPL.N    ??v_Panel_DisplayCommandLine_20
        MOVS     R6,#+0
//  498     first_LineShow = show_first2Panel;//¾²Ì¬ÊýÖµ¸üÐÂ
??v_Panel_DisplayCommandLine_20:
        LDR.W    R0,??DataTable20_28
        STRB     R6,[R0, #+0]
//  499     uint8 last_number = ((show_first2Panel + MagicNumber_MonoOLED_Ycounter > Line_Length)?Line_Length:(show_first2Panel + MagicNumber_MonoOLED_Ycounter));
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        SXTAB    R0,R7,R6
        CMP      R5,R0
        BLT.N    ??v_Panel_DisplayCommandLine_21
??v_Panel_DisplayCommandLine_22:
        ADDS     R5,R7,R6
//  500     last_LineShow = last_number;//¾²Ì¬ÊýÖµ¸üÐÂ
??v_Panel_DisplayCommandLine_21:
        LDR.W    R0,??DataTable20_29
        STRB     R5,[R0, #+0]
//  501     //============================================//
//  502     
//  503     /*---------------------×Ö·û´®Êý×é»æÖÆ---------------------*/
//  504     uint8 temo_show = 0;//ÔÝ´æÓÃ//»æÖÆÐÐÓÃ=>SSD1306µÄY
        MOVS     R7,#+0
//  505     for(uint8 loop = show_first2Panel;loop < last_number;loop++)
        B.N      ??v_Panel_DisplayCommandLine_23
//  506     {
//  507         v_MonoRev_6x8Str(6,temo_show,(char*)ShowCharPtr[loop],0);
??v_Panel_DisplayCommandLine_24:
        MOVS     R3,#+0
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR      R2,[R10, R6, LSL #+2]
        MOVS     R1,R7
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+6
        BL       v_MonoRev_6x8Str
//  508         temo_show++;
        ADDS     R7,R7,#+1
//  509     }
        ADDS     R6,R6,#+1
??v_Panel_DisplayCommandLine_23:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R6,R5
        BCC.N    ??v_Panel_DisplayCommandLine_24
//  510     //============================================//
//  511     
//  512     /*---------------------¼ýÍ·»æÖÆ---------------------*/
//  513     for(uint8 loop = 0;loop < 8;loop++)
        MOVS     R5,#+0
        B.N      ??v_Panel_DisplayCommandLine_25
//  514     {
//  515         v_MonoRev_6x8Str(0,loop," ",0);
??v_Panel_DisplayCommandLine_26:
        MOVS     R3,#+0
        ADR.N    R2,??DataTable9  ;; " "
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
//  516     }
        ADDS     R5,R5,#+1
??v_Panel_DisplayCommandLine_25:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+8
        BLT.N    ??v_Panel_DisplayCommandLine_26
//  517     arrow = (arrow >= last_LineShow)?last_LineShow - 1:arrow;
        LDR.W    R0,??DataTable20_29
        LDRB     R0,[R0, #+0]
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R4,R0
        BCC.N    ??v_Panel_DisplayCommandLine_27
        LDR.W    R0,??DataTable20_29
        LDRB     R0,[R0, #+0]
        SUBS     R4,R0,#+1
        B.N      ??v_Panel_DisplayCommandLine_28
//  518     v_MonoRev_6x8Str(0,arrow,">",0);
??v_Panel_DisplayCommandLine_27:
??v_Panel_DisplayCommandLine_28:
        MOVS     R3,#+0
        ADR.N    R2,??DataTable11  ;; ">"
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
//  519     //============================================//
//  520 }
??v_Panel_DisplayCommandLine_3:
        ADD      SP,SP,#+156
        POP      {R4-R11,PC}      ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
??first_LineShow:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
??last_LineShow:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(0)
??nowMode:
        DATA
        DC8 255

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
??arrow_static:
        DS8 1
//  521 /*
//  522 void v_PanelDisplay_BasicDone(void)
//  523 {
//  524     v_MonoRev_6x8Str(0,0,"Basic Test",1);
//  525     v_InputInterface_testing(0,1);//°´¼ü²âÊÔ
//  526 }
//  527 
//  528 
//  529 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  530 void v_systemPara_Init()
//  531 {
//  532     //m_Button_Timer.TickTimeCounter = 3;//ÑÓ³ÙÊ±¼äÎª300ms / 
//  533     m_Control.image_control_n_cut_one = 185 / 2;
v_systemPara_Init:
        LDR.W    R0,??DataTable18
        LDR.W    R1,??DataTable21  ;; 0x42b80000
        STR      R1,[R0, #+104]
//  534     m_Control.image_control_n = 185 / 2;
        LDR.W    R0,??DataTable18
        LDR.W    R1,??DataTable21  ;; 0x42b80000
        STR      R1,[R0, #+100]
//  535     
//  536     m_Control.need_turnRobustly_flag = 0;
        LDR.W    R0,??DataTable18
        MOVS     R1,#+0
        STRB     R1,[R0, #+20]
//  537     m_Control.servo_turn_Robustly = 100;
        LDR.W    R0,??DataTable18
        MOVS     R1,#+100
        STRB     R1,[R0, #+19]
//  538     
//  539     m_ImageAbstract.RtAngle_isLasting = 0;//ÉÏ³¡ÊÇ·ñÊÇÖ±½Ç
        LDR.W    R0,??DataTable25
        MOVS     R1,#+0
        STRB     R1,[R0, #+480]
//  540 }
        BX       LR               ;; return
//  541 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  542 void modeMachine_MoveUp_PanelDisplay()
//  543 {
modeMachine_MoveUp_PanelDisplay:
        PUSH     {R7,LR}
//  544     const uint16 moveNumber = 10001;
        MOVW     R0,#+10001
//  545     v_Panel_DisplayCommandLine(moveNumber,255);
        MOVS     R1,#+255
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       v_Panel_DisplayCommandLine
//  546 }
        POP      {R0,PC}          ;; return
//  547 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  548 void modeMachine_MoveDown_PanelDisplay()
//  549 {
modeMachine_MoveDown_PanelDisplay:
        PUSH     {R7,LR}
//  550     const uint16 moveNumber = 9999;
        MOVW     R0,#+9999
//  551     v_Panel_DisplayCommandLine(moveNumber,255);
        MOVS     R1,#+255
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       v_Panel_DisplayCommandLine
//  552 }
        POP      {R0,PC}          ;; return
//  553 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  554 void modeMachine_Move2testingMode()//×ª»»È¥ÏÂÒ»²Ëµ¥
//  555 {
modeMachine_Move2testingMode:
        PUSH     {R7,LR}
//  556     v_Panel_DisplayCommandLine(0,1);
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       v_Panel_DisplayCommandLine
//  557     modeMachine_BasicTesting_TurnMode();
        BL       modeMachine_BasicTesting_TurnMode
//  558 }
        POP      {R0,PC}          ;; return
//  559 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  560 void modeMachine_Move_ServoTestingPanel_Display()
//  561 {
modeMachine_Move_ServoTestingPanel_Display:
        PUSH     {LR}
        SUB      SP,SP,#+28
//  562     modeMachine_Always_ImageOutput();//Êä³öÍ¼Ïñ
        BL       modeMachine_Always_ImageOutput
//  563     v_MonoRev_6x8Str(0,0,"Servo Testing Mode",1);
        MOVS     R3,#+1
        LDR.W    R2,??DataTable24
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
//  564     char Tx[21];
//  565     //
//  566     sprintf(Tx,"Deg:%d",m_Control.ServoDeg);
        LDR.W    R0,??DataTable18
        LDRSH    R2,[R0, #+32]
        LDR.W    R1,??DataTable24_1
        ADD      R0,SP,#+0
        BL       sprintf
//  567     //v_Servo_Out(m_Control.ServoDeg);
//  568     v_MonoRev_6x8Str(4,1,Tx,0);//Êä³öµ±Ç°½Ç¶È
        MOVS     R3,#+0
        ADD      R2,SP,#+0
        MOVS     R1,#+1
        MOVS     R0,#+4
        BL       v_MonoRev_6x8Str
//  569     m_Control.ServoAngle = n_GetServoAngle();
        BL       n_GetServoAngle
        LDR.W    R1,??DataTable18
        STRH     R0,[R1, #+40]
//  570     sprintf(Tx,"Ang:%d",m_Control.ServoAngle);
        LDR.W    R0,??DataTable18
        LDRH     R2,[R0, #+40]
        LDR.W    R1,??DataTable24_2
        ADD      R0,SP,#+0
        BL       sprintf
//  571     v_MonoRev_6x8Str(4,2,Tx,0);//Êä³öµ±Ç°µÄµçÑ¹ÐÅÏ¢
        MOVS     R3,#+0
        ADD      R2,SP,#+0
        MOVS     R1,#+2
        MOVS     R0,#+4
        BL       v_MonoRev_6x8Str
//  572     v_MonoRev_6x8Str(4,3,"        ",0);//Êä³öµ±Ç°µÄµçÑ¹ÐÅÏ¢
        MOVS     R3,#+0
        LDR.W    R2,??DataTable27
        MOVS     R1,#+3
        MOVS     R0,#+4
        BL       v_MonoRev_6x8Str
//  573     uint16 MiddleLine = n_getSteerMiddleLine_UsedAverage();
        BL       n_getSteerMiddleLine_UsedAverage
//  574     v_MonoRev_Number(4,3,MiddleLine,10);
        MOVS     R2,#+10
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        VMOV     S0,R0
        VCVT.F32.U32 S0,S0
        MOVS     R1,#+3
        MOVS     R0,#+4
        BL       v_MonoRev_Number
//  575 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8:
        DC32     ??PonitAfter
//  576 
//  577 //============================================================================//
//  578 //============================================================================//
//  579 //============================================================================//

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  580 void modeMachine_Always_MotorTestingPanel_Display()
//  581 {
modeMachine_Always_MotorTestingPanel_Display:
        PUSH     {LR}
        SUB      SP,SP,#+28
//  582     modeMachine_Always_ImageOutput();//ÏÔÊ¾Í¼Ïñ
        BL       modeMachine_Always_ImageOutput
//  583     v_MonoRev_6x8Str(0,0,"Motor Testing Mode",1);
        MOVS     R3,#+1
        LDR.W    R2,??DataTable25_1
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
//  584     char Tx[21];
//  585     
//  586     
//  587     
//  588     sprintf(Tx,"            ");
        LDR.W    R1,??DataTable25_2
        ADD      R0,SP,#+0
        BL       sprintf
//  589     v_MonoRev_6x8Str(4+6*7,1,Tx,0);//Êä³öµ±Ç°½Ç¶È
        MOVS     R3,#+0
        ADD      R2,SP,#+0
        MOVS     R1,#+1
        MOVS     R0,#+46
        BL       v_MonoRev_6x8Str
//  590     v_MonoRev_6x8Str(4+6*7,2,Tx,0);//Êä³öµ±Ç°½Ç¶È
        MOVS     R3,#+0
        ADD      R2,SP,#+0
        MOVS     R1,#+2
        MOVS     R0,#+46
        BL       v_MonoRev_6x8Str
//  591     v_MonoRev_6x8Str(4+6*5,3,Tx,0);//Êä³öµ±Ç°½Ç¶È
        MOVS     R3,#+0
        ADD      R2,SP,#+0
        MOVS     R1,#+3
        MOVS     R0,#+34
        BL       v_MonoRev_6x8Str
//  592     v_MonoRev_6x8Str(4+6*5,4,Tx,0);//Êä³öµ±Ç°½Ç¶È
        MOVS     R3,#+0
        ADD      R2,SP,#+0
        MOVS     R1,#+4
        MOVS     R0,#+34
        BL       v_MonoRev_6x8Str
//  593     
//  594     sprintf(Tx,"LSpeed: %g",(float)(m_Control.LeftMotorSpeed));
        LDR.N    R0,??DataTable18
        LDRSH    R0,[R0, #+48]
        VMOV     S0,R0
        VCVT.F32.S32 S0,S0
        VMOV     R0,S0
        BL       __aeabi_f2d
        MOVS     R2,R0
        MOVS     R3,R1
        LDR.W    R1,??DataTable26
        ADD      R0,SP,#+0
        BL       sprintf
//  595     v_MonoRev_6x8Str(4,1,Tx,0);//Êä³öµ±Ç°½Ç¶È
        MOVS     R3,#+0
        ADD      R2,SP,#+0
        MOVS     R1,#+1
        MOVS     R0,#+4
        BL       v_MonoRev_6x8Str
//  596     sprintf(Tx,"RSpeed: %g",(float)(m_Control.RightMotorSpeed));
        LDR.N    R0,??DataTable18
        LDRSH    R0,[R0, #+50]
        VMOV     S0,R0
        VCVT.F32.S32 S0,S0
        VMOV     R0,S0
        BL       __aeabi_f2d
        MOVS     R2,R0
        MOVS     R3,R1
        LDR.W    R1,??DataTable26_1
        ADD      R0,SP,#+0
        BL       sprintf
//  597     v_MonoRev_6x8Str(4,2,Tx,0);//Êä³öµ±Ç°µÄµçÑ¹ÐÅÏ¢
        MOVS     R3,#+0
        ADD      R2,SP,#+0
        MOVS     R1,#+2
        MOVS     R0,#+4
        BL       v_MonoRev_6x8Str
//  598     sprintf(Tx,"LPWM: %d",m_Control.LeftMotorPWM);
        LDR.N    R0,??DataTable18
        LDRSH    R2,[R0, #+60]
        LDR.W    R1,??DataTable26_2
        ADD      R0,SP,#+0
        BL       sprintf
//  599     v_MonoRev_6x8Str(4,3,Tx,0);//Êä³öµ±Ç°½Ç¶È
        MOVS     R3,#+0
        ADD      R2,SP,#+0
        MOVS     R1,#+3
        MOVS     R0,#+4
        BL       v_MonoRev_6x8Str
//  600     sprintf(Tx,"RPWM: %d",m_Control.RightMotorPWM);
        LDR.N    R0,??DataTable18
        LDRSH    R2,[R0, #+62]
        LDR.W    R1,??DataTable30
        ADD      R0,SP,#+0
        BL       sprintf
//  601     v_MonoRev_6x8Str(4,4,Tx,0);//Êä³öµ±Ç°µÄµçÑ¹ÐÅÏ¢
        MOVS     R3,#+0
        ADD      R2,SP,#+0
        MOVS     R1,#+4
        MOVS     R0,#+4
        BL       v_MonoRev_6x8Str
//  602 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9:
        DC8      " ",0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_1:
        DC32     ??Point

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_2:
        DC32     m_ModeMachine

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_3:
        DC32     modeMachine_Always_CameraTestingMach_Output_ExtraPara
//  603 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  604 void modeMachine_Up_MotorTestingMach_Output()
//  605 {
modeMachine_Up_MotorTestingMach_Output:
        PUSH     {R7,LR}
//  606     m_Control.LeftMotorPWM += 10;
        LDR.N    R0,??DataTable18
        LDRH     R0,[R0, #+60]
        ADDS     R0,R0,#+10
        LDR.N    R1,??DataTable18
        STRH     R0,[R1, #+60]
//  607     m_Control.RightMotorPWM += 10;
        LDR.N    R0,??DataTable18
        LDRH     R0,[R0, #+62]
        ADDS     R0,R0,#+10
        LDR.N    R1,??DataTable18
        STRH     R0,[R1, #+62]
//  608     if(m_Control.LeftMotorPWM < -1000){m_Control.LeftMotorPWM = -1000;}
        LDR.N    R0,??DataTable18
        LDRSH    R0,[R0, #+60]
        CMN      R0,#+1000
        BGE.N    ??modeMachine_Up_MotorTestingMach_Output_0
        LDR.N    R0,??DataTable18
        LDR.W    R1,??DataTable28  ;; 0xfffffc18
        STRH     R1,[R0, #+60]
//  609     if(m_Control.RightMotorPWM < -1000){m_Control.RightMotorPWM = -1000;}
??modeMachine_Up_MotorTestingMach_Output_0:
        LDR.N    R0,??DataTable18
        LDRSH    R0,[R0, #+62]
        CMN      R0,#+1000
        BGE.N    ??modeMachine_Up_MotorTestingMach_Output_1
        LDR.N    R0,??DataTable18
        LDR.W    R1,??DataTable28  ;; 0xfffffc18
        STRH     R1,[R0, #+62]
//  610     if(m_Control.LeftMotorPWM > 1000){m_Control.LeftMotorPWM = 1000;}
??modeMachine_Up_MotorTestingMach_Output_1:
        LDR.N    R0,??DataTable18
        LDRSH    R0,[R0, #+60]
        CMP      R0,#+1000
        BLE.N    ??modeMachine_Up_MotorTestingMach_Output_2
        LDR.N    R0,??DataTable18
        MOV      R1,#+1000
        STRH     R1,[R0, #+60]
//  611     if(m_Control.RightMotorPWM > 1000){m_Control.RightMotorPWM = 1000;}
??modeMachine_Up_MotorTestingMach_Output_2:
        LDR.N    R0,??DataTable18
        LDRSH    R0,[R0, #+62]
        CMP      R0,#+1000
        BLE.N    ??modeMachine_Up_MotorTestingMach_Output_3
        LDR.N    R0,??DataTable18
        MOV      R1,#+1000
        STRH     R1,[R0, #+62]
//  612     if(m_Control.LeftMotorPWM >= 0)
??modeMachine_Up_MotorTestingMach_Output_3:
        LDR.N    R0,??DataTable18
        LDRSH    R0,[R0, #+60]
        CMP      R0,#+0
        BMI.N    ??modeMachine_Up_MotorTestingMach_Output_4
//  613     {
//  614         v_leftMotor_pwmOut(m_Control.LeftMotorPWM,1);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable18
        LDRH     R0,[R0, #+60]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       v_leftMotor_pwmOut
//  615         v_rightMotor_pwmOut(m_Control.RightMotorPWM,1);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable18
        LDRH     R0,[R0, #+62]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       v_rightMotor_pwmOut
        B.N      ??modeMachine_Up_MotorTestingMach_Output_5
//  616     }
//  617     else
//  618     {
//  619         v_leftMotor_pwmOut(__ABS(m_Control.LeftMotorPWM),2);
??modeMachine_Up_MotorTestingMach_Output_4:
        LDR.N    R0,??DataTable18
        LDRSH    R0,[R0, #+60]
        CMP      R0,#+0
        BPL.N    ??modeMachine_Up_MotorTestingMach_Output_6
        LDR.N    R0,??DataTable18
        LDRSH    R0,[R0, #+60]
        RSBS     R0,R0,#+0
        B.N      ??modeMachine_Up_MotorTestingMach_Output_7
??modeMachine_Up_MotorTestingMach_Output_6:
        LDR.N    R0,??DataTable18
        LDRH     R0,[R0, #+60]
??modeMachine_Up_MotorTestingMach_Output_7:
        MOVS     R1,#+2
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       v_leftMotor_pwmOut
//  620         v_rightMotor_pwmOut(__ABS(m_Control.RightMotorPWM),2);
        LDR.N    R0,??DataTable18
        LDRSH    R0,[R0, #+62]
        CMP      R0,#+0
        BPL.N    ??modeMachine_Up_MotorTestingMach_Output_8
        LDR.N    R0,??DataTable18
        LDRSH    R0,[R0, #+62]
        RSBS     R0,R0,#+0
        B.N      ??modeMachine_Up_MotorTestingMach_Output_9
??modeMachine_Up_MotorTestingMach_Output_8:
        LDR.N    R0,??DataTable18
        LDRH     R0,[R0, #+62]
??modeMachine_Up_MotorTestingMach_Output_9:
        MOVS     R1,#+2
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       v_rightMotor_pwmOut
//  621     }
//  622     
//  623 }
??modeMachine_Up_MotorTestingMach_Output_5:
        POP      {R0,PC}          ;; return
//  624 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  625 void Always_Draw_Width()
//  626 {
Always_Draw_Width:
        PUSH     {R4-R6,LR}
        SUB      SP,SP,#+8
//  627     for(uint8 loop = 0;loop < 60;loop++)
        MOVS     R4,#+0
        B.N      ??Always_Draw_Width_0
//  628     {
//  629         uint8 middle = m_ImageAbstract.Central[loop];
//  630         sint16 start = middle - m_ImageAbstract.width[loop] / 2;
//  631         sint16 end = middle + m_ImageAbstract.width[loop] / 2;
//  632         if(start < 0){start = 0;}
//  633         if(end > 185){end = 184;}
//  634         s_color color;
//  635         color.A_Blue_31 = 31;
//  636         color.B_Green_63 = 0;
//  637         color.C_Red_31 = 0;
//  638         for(uint8 inter = start;inter < end;inter++)
//  639         {
//  640             v_ColorRev_PutPoint(inter/2,loop,&color);//»­µã
??Always_Draw_Width_1:
        ADD      R2,SP,#+0
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R0,#+2
        SDIV     R0,R5,R0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       v_ColorRev_PutPoint
//  641         }
        ADDS     R5,R5,#+1
??Always_Draw_Width_2:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SXTH     R6,R6            ;; SignExt  R6,R6,#+16,#+16
        CMP      R0,R6
        BLT.N    ??Always_Draw_Width_1
        ADDS     R4,R4,#+1
??Always_Draw_Width_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+60
        BGE.N    ??Always_Draw_Width_3
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable25
        ADDS     R0,R4,R0
        LDRB     R0,[R0, #+164]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R1,??DataTable25
        ADDS     R1,R1,R4, LSL #+1
        LDRSH    R1,[R1, #+344]
        MOVS     R2,#+2
        SDIV     R1,R1,R2
        SUBS     R5,R0,R1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R1,??DataTable25
        ADDS     R1,R1,R4, LSL #+1
        LDRSH    R1,[R1, #+344]
        MOVS     R2,#+2
        SDIV     R1,R1,R2
        UXTAB    R6,R1,R0
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BPL.N    ??Always_Draw_Width_4
        MOVS     R5,#+0
??Always_Draw_Width_4:
        SXTH     R6,R6            ;; SignExt  R6,R6,#+16,#+16
        CMP      R6,#+186
        BLT.N    ??Always_Draw_Width_5
        MOVS     R6,#+184
??Always_Draw_Width_5:
        MOVS     R0,#+31
        STRB     R0,[SP, #+2]
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
        B.N      ??Always_Draw_Width_2
//  642     }
//  643 }
??Always_Draw_Width_3:
        POP      {R0,R1,R4-R6,PC}  ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11:
        DC8      ">",0x0,0x0
//  644 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  645 void modeMachine_Always_ImageOutput()//Í¼ÏñÏÔÊ¾
//  646 {
modeMachine_Always_ImageOutput:
        PUSH     {R7,LR}
//  647     if(1 == m_system.uart_Txflag)
        LDR.N    R0,??DataTable18_1
        LDRB     R0,[R0, #+16]
        CMP      R0,#+1
        BNE.N    ??modeMachine_Always_ImageOutput_0
//  648     {    
//  649         if(1 == switch_1)
        BL       u8_ExInterface6_get
        CMP      R0,#+1
        BNE.N    ??modeMachine_Always_ImageOutput_1
//  650         {
//  651             v_ColorRev_Beholder_60_185_Output();
        BL       v_ColorRev_Beholder_60_185_Output
//  652             v_ImageCutInformationShow(1);
        MOVS     R0,#+1
        BL       v_ImageCutInformationShow
        B.N      ??modeMachine_Always_ImageOutput_2
//  653         }
//  654         else
//  655         {
//  656             v_ColorRev_Beholder_60_185_Output();
??modeMachine_Always_ImageOutput_1:
        BL       v_ColorRev_Beholder_60_185_Output
//  657             v_ImageCutInformationShow(0);
        MOVS     R0,#+0
        BL       v_ImageCutInformationShow
//  658             
//  659         }
//  660         if(1 == switch_4)
??modeMachine_Always_ImageOutput_2:
        BL       u8_ExInterface9_get
        CMP      R0,#+1
        BNE.N    ??modeMachine_Always_ImageOutput_3
//  661         {
//  662             Always_Draw_Width();
        BL       Always_Draw_Width
//  663         }
//  664         m_system.uart_Txflag = 0;
??modeMachine_Always_ImageOutput_3:
        LDR.N    R0,??DataTable18_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+16]
//  665     }
//  666 }
??modeMachine_Always_ImageOutput_0:
        POP      {R0,PC}          ;; return
//  667 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  668 static sint8 modeMachine_Camera_x_run = 0;
modeMachine_Camera_x_run:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  669 static sint8 modeMachine_Camera_y_run = 0;
modeMachine_Camera_y_run:
        DS8 1

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  670 void modeMachine_CameraTestingMach_Up(){modeMachine_Camera_y_run += 1;};
modeMachine_CameraTestingMach_Up:
        LDR.W    R0,??DataTable32
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable32
        STRB     R0,[R1, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  671 void modeMachine_CameraTestingMach_Left(){modeMachine_Camera_x_run -=1;};
modeMachine_CameraTestingMach_Left:
        LDR.W    R0,??DataTable32_1
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable32_1
        STRB     R0,[R1, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  672 void modeMachine_CameraTestingMach_Down(){modeMachine_Camera_y_run -=1;};
modeMachine_CameraTestingMach_Down:
        LDR.W    R0,??DataTable32
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable32
        STRB     R0,[R1, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  673 void modeMachine_CameraTestingMach_Right(){modeMachine_Camera_x_run +=1;};
modeMachine_CameraTestingMach_Right:
        LDR.W    R0,??DataTable32_1
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable32_1
        STRB     R0,[R1, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16:
        DC32     ??timer

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  674 void modeMachine_CameraTestingMach_WriteNowPoint()
//  675 {
modeMachine_CameraTestingMach_WriteNowPoint:
        PUSH     {R7,LR}
//  676     if(4 == n_ImageBeholder_FourPointGetAndCal(modeMachine_Camera_x_run,modeMachine_Camera_y_run,'W'))
        MOVS     R2,#+87
        LDR.W    R0,??DataTable32
        LDRB     R1,[R0, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable32_1
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       n_ImageBeholder_FourPointGetAndCal
        CMP      R0,#+4
        BNE.N    ??modeMachine_CameraTestingMach_WriteNowPoint_0
//  677     {
//  678         n_ImageBeholder_FourPointGetAndCal(0,0,'A');
        MOVS     R2,#+65
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       n_ImageBeholder_FourPointGetAndCal
//  679         n_ImageBeholder_FourPointGetAndCal(0,0,'C');
        MOVS     R2,#+67
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       n_ImageBeholder_FourPointGetAndCal
//  680     }
//  681 }
??modeMachine_CameraTestingMach_WriteNowPoint_0:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  682 void modeMachine_CameraTestingMach_CalibrationModeSwitch()
//  683 {
modeMachine_CameraTestingMach_CalibrationModeSwitch:
        PUSH     {R3-R5,LR}
//  684     m_ModeMachine.always_done = modeMachine_Always_CameraTestingMach_OutputCalibration;
        LDR.W    R0,??DataTable32_2
        LDR.W    R1,??DataTable32_3
        STR      R1,[R0, #+28]
//  685     s_color color_set;
//  686     for(uint8 loop = 0;loop < 96;loop++)
        MOVS     R4,#+0
        B.N      ??modeMachine_CameraTestingMach_CalibrationMode_0
//  687     {
//  688         for(uint8 inter = 0;inter < 64;inter++)
//  689         {
//  690             color_set.A_Blue_31 = 0;
??modeMachine_CameraTestingMach_CalibrationMode_1:
        MOVS     R0,#+0
        STRB     R0,[SP, #+2]
//  691             color_set.B_Green_63 = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
//  692             color_set.C_Red_31 = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//  693             v_ColorRev_PutPoint(loop,inter,&color_set);
        ADD      R2,SP,#+0
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       v_ColorRev_PutPoint
//  694         }
        ADDS     R5,R5,#+1
??modeMachine_CameraTestingMach_CalibrationMode_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+64
        BLT.N    ??modeMachine_CameraTestingMach_CalibrationMode_1
        ADDS     R4,R4,#+1
??modeMachine_CameraTestingMach_CalibrationMode_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+96
        BGE.N    ??modeMachine_CameraTestingMach_CalibrationMode_3
        MOVS     R5,#+0
        B.N      ??modeMachine_CameraTestingMach_CalibrationMode_2
//  695     }
//  696     Revelation_CS_1(m_ColorOLED_pins);
??modeMachine_CameraTestingMach_CalibrationMode_3:
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+8]
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        LDR.W    R2,??DataTable34
        LDR      R2,[R2, #+12]
        LSLS     R1,R1,R2
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable34
        LDR      R1,[R1, #+8]
        STR      R0,[R1, #+0]
//  697 }
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18:
        DC32     m_Control

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_1:
        DC32     m_system

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_2:
        DC32     m_Button_Timer
//  698 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  699 void modeMachine_Always_CameraTestingMach_OutputCalibration()//
//  700 {
modeMachine_Always_CameraTestingMach_OutputCalibration:
        PUSH     {R3-R5,LR}
        VPUSH    {D8}
        SUB      SP,SP,#+496
        SUB      SP,SP,#+5120
//  701     if(modeMachine_Camera_x_run > 95){modeMachine_Camera_x_run = 95;}
        LDR.W    R0,??DataTable32_1
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+96
        BLT.N    ??modeMachine_Always_CameraTestingMach_OutputCa_0
        LDR.W    R0,??DataTable32_1
        MOVS     R1,#+95
        STRB     R1,[R0, #+0]
//  702     if(modeMachine_Camera_x_run < 0){modeMachine_Camera_x_run = 0;}
??modeMachine_Always_CameraTestingMach_OutputCa_0:
        LDR.W    R0,??DataTable32_1
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+0
        BPL.N    ??modeMachine_Always_CameraTestingMach_OutputCa_1
        LDR.W    R0,??DataTable32_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  703     
//  704     if(modeMachine_Camera_y_run > 63){modeMachine_Camera_y_run = 63;}
??modeMachine_Always_CameraTestingMach_OutputCa_1:
        LDR.W    R0,??DataTable32
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+64
        BLT.N    ??modeMachine_Always_CameraTestingMach_OutputCa_2
        LDR.W    R0,??DataTable32
        MOVS     R1,#+63
        STRB     R1,[R0, #+0]
//  705     if(modeMachine_Camera_y_run < 0){modeMachine_Camera_y_run = 0;}
??modeMachine_Always_CameraTestingMach_OutputCa_2:
        LDR.W    R0,??DataTable32
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+0
        BPL.N    ??modeMachine_Always_CameraTestingMach_OutputCa_3
        LDR.W    R0,??DataTable32
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  706     
//  707     float w_new;
//  708     float x_new;
//  709     float y_new;
//  710     float x_temp;
//  711     float y_temp;
//  712     
//  713     uint8 color_Message[60][93];
//  714     
//  715     for(uint8 Line_show = 0;Line_show < 60;Line_show++) // ÐÐÏÔÊ¾ - 8
??modeMachine_Always_CameraTestingMach_OutputCa_3:
        MOVS     R0,#+0
        B.N      ??modeMachine_Always_CameraTestingMach_OutputCa_4
//  716     {//Êý¾ÝÔÝ´æ
//  717         for(uint8 X_show = 0;X_show < 93;X_show++)
//  718         {
//  719             color_Message[Line_show][X_show] = m_ImageBeholder_Data[Line_show][X_show * 2];
??modeMachine_Always_CameraTestingMach_OutputCa_5:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R2,#+93
        ADD      R3,SP,#+36
        MLA      R2,R2,R0,R3
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R3,#+185
        LDR.W    R4,??DataTable33
        MLA      R3,R3,R0,R4
        LDRB     R3,[R3, R1, LSL #+1]
        STRB     R3,[R1, R2]
//  720         }
        ADDS     R1,R1,#+1
??modeMachine_Always_CameraTestingMach_OutputCa_6:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+93
        BLT.N    ??modeMachine_Always_CameraTestingMach_OutputCa_5
        ADDS     R0,R0,#+1
??modeMachine_Always_CameraTestingMach_OutputCa_4:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+60
        BGE.N    ??modeMachine_Always_CameraTestingMach_OutputCa_7
        MOVS     R1,#+0
        B.N      ??modeMachine_Always_CameraTestingMach_OutputCa_6
//  721     }
//  722     
//  723     float X[8];
//  724     for(uint8 loop = 0;loop < 8;loop++)
??modeMachine_Always_CameraTestingMach_OutputCa_7:
        MOVS     R0,#+0
        B.N      ??modeMachine_Always_CameraTestingMach_OutputCa_8
//  725     {
//  726         X[loop] = m_Control.image_ratio[loop];
??modeMachine_Always_CameraTestingMach_OutputCa_9:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable42
        ADDS     R1,R1,R0, LSL #+2
        LDR      R1,[R1, #+68]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R2,SP,#+4
        STR      R1,[R2, R0, LSL #+2]
//  727     }
        ADDS     R0,R0,#+1
??modeMachine_Always_CameraTestingMach_OutputCa_8:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+8
        BLT.N    ??modeMachine_Always_CameraTestingMach_OutputCa_9
//  728     if(1 == m_system.uart_Txflag)
        LDR.W    R0,??DataTable34_1
        LDRB     R0,[R0, #+16]
        CMP      R0,#+1
        BNE.W    ??modeMachine_Always_CameraTestingMach_OutputCa_10
//  729     {
//  730         Revelation_CS_0(m_ColorOLED_pins);
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+8]
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        LDR.W    R2,??DataTable34
        LDR      R2,[R2, #+12]
        LSLS     R1,R1,R2
        BICS     R0,R0,R1
        LDR.W    R1,??DataTable34
        LDR      R1,[R1, #+8]
        STR      R0,[R1, #+0]
//  731         s_color RGBcolor;
//  732         for(uint8 Line_show = 0;Line_show < 60;Line_show++) // ÐÐÏÔÊ¾ - 8
        MOVS     R4,#+0
        B.N      ??modeMachine_Always_CameraTestingMach_OutputCa_11
//  733         {
//  734             for(uint8 X_show = 0;X_show < 185;X_show++)
//  735             {
//  736                 w_new = X[6] * X_show + X[7] * Line_show + 1;// w = gx + hy + 1
//  737                 x_new = X[0] * X_show + X[1] * Line_show + X[2];
//  738                 y_new = X[3] * X_show + X[4] * Line_show + X[5];
//  739                 if (0.0 == w_new)
//  740                 {
//  741                     break;
//  742                 }
//  743                 x_new = x_new / w_new;
//  744                 y_new = y_new / w_new;
//  745                 x_temp = (sint32)x_new;
//  746                 y_temp = (sint32)y_new;
//  747                 if ((x_temp + 30>= 96 * 2) || (x_temp + 30 < 0 * 2))
//  748                 {
//  749                     break;
//  750                 }
//  751                 if ((y_temp >= 60) || (y_temp < 0))
??modeMachine_Always_CameraTestingMach_OutputCa_12:
        VLDR.W   S0,??DataTable19_1  ;; 0x42700000
        VCMP.F32 S17,S0
        FMSTAT   
        BGE.N    ??modeMachine_Always_CameraTestingMach_OutputCa_13
        VCMP.F32 S17,#0.0
        FMSTAT   
        BPL.N    ??modeMachine_Always_CameraTestingMach_OutputCa_14
//  752                 {
//  753                     break;
??modeMachine_Always_CameraTestingMach_OutputCa_13:
??modeMachine_Always_CameraTestingMach_OutputCa_15:
        ADDS     R4,R4,#+1
??modeMachine_Always_CameraTestingMach_OutputCa_11:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+60
        BGE.W    ??modeMachine_Always_CameraTestingMach_OutputCa_16
        MOVS     R5,#+0
        B.N      ??modeMachine_Always_CameraTestingMach_OutputCa_17
//  754                 }
//  755                 x_temp = x_temp / 2;
??modeMachine_Always_CameraTestingMach_OutputCa_14:
        VMOV.F32 S0,#2.0
        VDIV.F32 S16,S16,S0
//  756                 //y_temp = y_temp / 2;
//  757                 color_OLED_WrCmd(0x15);color_OLED_WrCmd((uint8)(x_temp+30));color_OLED_WrCmd(95);//Setup Column
        MOVS     R2,#+0
        MOVS     R1,#+21
        LDR.W    R0,??DataTable34
        BL       v_Revelation_WriteBytes
        MOVS     R2,#+0
        VMOV.F32 S0,#30.0
        VADD.F32 S0,S16,S0
        VCVT.S32.F32 S0,S0
        VMOV     R1,S0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable34
        BL       v_Revelation_WriteBytes
        MOVS     R2,#+0
        MOVS     R1,#+95
        LDR.W    R0,??DataTable34
        BL       v_Revelation_WriteBytes
//  758                 color_OLED_WrCmd(0x75);color_OLED_WrCmd((uint8)y_temp);color_OLED_WrCmd(63);//Setup Row
        MOVS     R2,#+0
        MOVS     R1,#+117
        LDR.W    R0,??DataTable34
        BL       v_Revelation_WriteBytes
        MOVS     R2,#+0
        VCVT.S32.F32 S0,S17
        VMOV     R1,S0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable34
        BL       v_Revelation_WriteBytes
        MOVS     R2,#+0
        MOVS     R1,#+63
        LDR.W    R0,??DataTable34
        BL       v_Revelation_WriteBytes
//  759                 
//  760                 //v_65kcolor2Mono(selfjudge_SendMessage[Line_show][X_show*2],&RGBcolor);
//  761                 v_65kcolor2Mono(color_Message[Line_show][X_show],&RGBcolor);
        ADD      R1,SP,#+0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,#+93
        ADD      R2,SP,#+36
        MLA      R0,R0,R4,R2
        LDRB     R0,[R5, R0]
        BL       v_65kcolor2Mono
//  762                 color_OLED_WrDat((RGBcolor.C_Red_31 << 3)|(RGBcolor.B_Green_63 >> 3));
        MOVS     R2,#+1
        LDRB     R0,[SP, #+0]
        LDRB     R1,[SP, #+1]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSRS     R1,R1,#+3
        ORRS     R1,R1,R0, LSL #+3
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable34
        BL       v_Revelation_WriteBytes
//  763                 color_OLED_WrDat((RGBcolor.B_Green_63 << 5)|(RGBcolor.A_Blue_31));//color
        MOVS     R2,#+1
        LDRB     R0,[SP, #+1]
        LDRB     R1,[SP, #+2]
        ORRS     R1,R1,R0, LSL #+5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable34
        BL       v_Revelation_WriteBytes
        ADDS     R5,R5,#+1
??modeMachine_Always_CameraTestingMach_OutputCa_17:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+185
        BGE.N    ??modeMachine_Always_CameraTestingMach_OutputCa_15
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        VMOV     S0,R5
        VCVT.F32.U32 S0,S0
        VLDR     S1,[SP, #+28]
        VMUL.F32 S0,S0,S1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        VMOV     S1,R4
        VCVT.F32.U32 S1,S1
        VLDR     S2,[SP, #+32]
        VMLA.F32 S0,S1,S2
        VMOV.F32 S1,#1.0
        VADD.F32 S0,S0,S1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        VMOV     S1,R5
        VCVT.F32.U32 S1,S1
        VLDR     S2,[SP, #+4]
        VMUL.F32 S1,S1,S2
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        VMOV     S2,R4
        VCVT.F32.U32 S2,S2
        VLDR     S3,[SP, #+8]
        VMLA.F32 S1,S2,S3
        VLDR     S2,[SP, #+12]
        VADD.F32 S1,S1,S2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        VMOV     S2,R5
        VCVT.F32.U32 S2,S2
        VLDR     S3,[SP, #+16]
        VMUL.F32 S2,S2,S3
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        VMOV     S3,R4
        VCVT.F32.U32 S3,S3
        VLDR     S4,[SP, #+20]
        VMLA.F32 S2,S3,S4
        VLDR     S3,[SP, #+24]
        VADD.F32 S2,S2,S3
        VCMP.F32 S0,#0.0
        FMSTAT   
        BEQ.W    ??modeMachine_Always_CameraTestingMach_OutputCa_15
??modeMachine_Always_CameraTestingMach_OutputCa_18:
        VDIV.F32 S1,S1,S0
        VDIV.F32 S2,S2,S0
        VCVT.S32.F32 S0,S1
        VCVT.F32.S32 S16,S0
        VCVT.S32.F32 S0,S2
        VCVT.F32.S32 S17,S0
        VMOV.F32 S0,#30.0
        VADD.F32 S0,S16,S0
        VLDR.W   S1,??DataTable20  ;; 0x43400000
        VCMP.F32 S0,S1
        FMSTAT   
        BGE.N    ??modeMachine_Always_CameraTestingMach_OutputCa_19
        VMOV.F32 S0,#30.0
        VADD.F32 S0,S16,S0
        VCMP.F32 S0,#0.0
        FMSTAT   
        BPL.W    ??modeMachine_Always_CameraTestingMach_OutputCa_12
??modeMachine_Always_CameraTestingMach_OutputCa_19:
        B.N      ??modeMachine_Always_CameraTestingMach_OutputCa_15
//  764             }
//  765         }
//  766         Revelation_CS_1(m_ColorOLED_pins);
??modeMachine_Always_CameraTestingMach_OutputCa_16:
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+8]
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        LDR.W    R2,??DataTable34
        LDR      R2,[R2, #+12]
        LSLS     R1,R1,R2
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable34
        LDR      R1,[R1, #+8]
        STR      R0,[R1, #+0]
//  767         m_system.uart_Txflag = 0;
        LDR.W    R0,??DataTable34_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+16]
//  768     }
//  769     /*----------------------------½âËãºÏÊÊ-----------------------------*/
//  770     for(uint8 loop = 0;loop < 8;loop++)
??modeMachine_Always_CameraTestingMach_OutputCa_10:
        MOVS     R4,#+0
        B.N      ??modeMachine_Always_CameraTestingMach_OutputCa_20
//  771     {
//  772         v_MonoRev_Number(0,loop,m_Control.image_ratio[loop],10);//Êä³öÊýÖµ
??modeMachine_Always_CameraTestingMach_OutputCa_21:
        MOVS     R2,#+10
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable42
        ADDS     R0,R0,R4, LSL #+2
        VLDR     S0,[R0, #+68]
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+0
        BL       v_MonoRev_Number
//  773     }
        ADDS     R4,R4,#+1
??modeMachine_Always_CameraTestingMach_OutputCa_20:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+8
        BLT.N    ??modeMachine_Always_CameraTestingMach_OutputCa_21
//  774     
//  775 //    n_ImageBeholder_FourPointGetAndCal(0,0,'R');
//  776     
//  777 }
        ADD      SP,SP,#+496
        ADD      SP,SP,#+5120
        VPOP     {D8}
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19:
        DC32     `?<Constant "Ex:%d%d%d%d%d%d%d %d%...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_1:
        DC32     0x42700000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_2:
        DC32     ??LineMaxCounter

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_3:
        DC32     m_self_Beholder

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_4:
        DC32     `?<Constant "Lnum:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_5:
        DC32     `?<Constant "LMnum:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_6:
        DC32     `?<Constant "RegReWrite:Yes">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_7:
        DC32     `?<Constant "1.Testing">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_8:
        DC32     `?<Constant "2.Beholder Cal">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_9:
        DC32     `?<Constant "3.Running Set">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_10:
        DC32     `?<Constant "4.Shutter Time">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_11:
        DC32     `?<Constant "5.ParaSet Time">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_12:
        DC32     `?<Constant "6.PID">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_13:
        DC32     `?<Constant "7.MotorFuc">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_14:
        DC32     `?<Constant "8.RaceInfor">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_15:
        DC32     `?<Constant "1.Basic Input Test">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_16:
        DC32     `?<Constant "2.Servo Test">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_17:
        DC32     `?<Constant "3.Motor Test">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_18:
        DC32     `?<Constant "4.Camera Infor">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_19:
        DC32     `?<Constant "5.Middline Test">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  778 void modeMachine_Always_CameraTestingMach_Output()//
//  779 {
modeMachine_Always_CameraTestingMach_Output:
        PUSH     {R4,R5,LR}
        SUB      SP,SP,#+468
        SUB      SP,SP,#+5120
//  780     if(modeMachine_Camera_x_run > 95){modeMachine_Camera_x_run = 95;}
        LDR.W    R0,??DataTable32_1
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+96
        BLT.N    ??modeMachine_Always_CameraTestingMach_Output_0
        LDR.W    R0,??DataTable32_1
        MOVS     R1,#+95
        STRB     R1,[R0, #+0]
//  781     if(modeMachine_Camera_x_run < 0){modeMachine_Camera_x_run = 0;}
??modeMachine_Always_CameraTestingMach_Output_0:
        LDR.W    R0,??DataTable32_1
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+0
        BPL.N    ??modeMachine_Always_CameraTestingMach_Output_1
        LDR.W    R0,??DataTable32_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  782     
//  783     if(modeMachine_Camera_y_run > 63){modeMachine_Camera_y_run = 63;}
??modeMachine_Always_CameraTestingMach_Output_1:
        LDR.W    R0,??DataTable32
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+64
        BLT.N    ??modeMachine_Always_CameraTestingMach_Output_2
        LDR.W    R0,??DataTable32
        MOVS     R1,#+63
        STRB     R1,[R0, #+0]
//  784     if(modeMachine_Camera_y_run < 0){modeMachine_Camera_y_run = 0;}
??modeMachine_Always_CameraTestingMach_Output_2:
        LDR.W    R0,??DataTable32
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+0
        BPL.N    ??modeMachine_Always_CameraTestingMach_Output_3
        LDR.W    R0,??DataTable32
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  785     
//  786     uint8 color_Message[60][93];
//  787     
//  788     for(uint8 Line_show = 0;Line_show < 60;Line_show++) // ÐÐÏÔÊ¾ - 8
??modeMachine_Always_CameraTestingMach_Output_3:
        MOVS     R0,#+0
        B.N      ??modeMachine_Always_CameraTestingMach_Output_4
//  789     {//Êý¾ÝÔÝ´æ
//  790         for(uint8 X_show = 0;X_show < 93;X_show++)
//  791         {
//  792             color_Message[Line_show][X_show] = m_ImageBeholder_Data[Line_show][X_show * 2];
??modeMachine_Always_CameraTestingMach_Output_5:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R2,#+93
        ADD      R3,SP,#+4
        MLA      R2,R2,R0,R3
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R3,#+185
        LDR.W    R4,??DataTable33
        MLA      R3,R3,R0,R4
        LDRB     R3,[R3, R1, LSL #+1]
        STRB     R3,[R1, R2]
//  793         }
        ADDS     R1,R1,#+1
??modeMachine_Always_CameraTestingMach_Output_6:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+93
        BLT.N    ??modeMachine_Always_CameraTestingMach_Output_5
        ADDS     R0,R0,#+1
??modeMachine_Always_CameraTestingMach_Output_4:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+60
        BGE.N    ??modeMachine_Always_CameraTestingMach_Output_7
        MOVS     R1,#+0
        B.N      ??modeMachine_Always_CameraTestingMach_Output_6
//  794     }
//  795     
//  796     if(1 == m_system.uart_Txflag)
??modeMachine_Always_CameraTestingMach_Output_7:
        LDR.W    R0,??DataTable34_1
        LDRB     R0,[R0, #+16]
        CMP      R0,#+1
        BNE.W    ??modeMachine_Always_CameraTestingMach_Output_8
//  797     {
//  798         Revelation_CS_0(m_ColorOLED_pins);
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+8]
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        LDR.W    R2,??DataTable34
        LDR      R2,[R2, #+12]
        LSLS     R1,R1,R2
        BICS     R0,R0,R1
        LDR.W    R1,??DataTable34
        LDR      R1,[R1, #+8]
        STR      R0,[R1, #+0]
//  799         s_color RGBcolor;
//  800         for(uint8 Line_show = 0;Line_show < 60;Line_show++) // ÐÐÏÔÊ¾ - 8
        MOVS     R4,#+0
        B.N      ??modeMachine_Always_CameraTestingMach_Output_9
??modeMachine_Always_CameraTestingMach_Output_10:
        ADDS     R4,R4,#+1
??modeMachine_Always_CameraTestingMach_Output_9:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+60
        BGE.W    ??modeMachine_Always_CameraTestingMach_Output_11
//  801         {
//  802         /////
//  803             color_OLED_WrCmd(0x15);color_OLED_WrCmd(2);color_OLED_WrCmd(95);//Setup Column
        MOVS     R2,#+0
        MOVS     R1,#+21
        LDR.W    R0,??DataTable34
        BL       v_Revelation_WriteBytes
        MOVS     R2,#+0
        MOVS     R1,#+2
        LDR.W    R0,??DataTable34
        BL       v_Revelation_WriteBytes
        MOVS     R2,#+0
        MOVS     R1,#+95
        LDR.W    R0,??DataTable34
        BL       v_Revelation_WriteBytes
//  804             color_OLED_WrCmd(0x75);color_OLED_WrCmd(Line_show);color_OLED_WrCmd(63);//Setup Row
        MOVS     R2,#+0
        MOVS     R1,#+117
        LDR.W    R0,??DataTable34
        BL       v_Revelation_WriteBytes
        MOVS     R2,#+0
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable34
        BL       v_Revelation_WriteBytes
        MOVS     R2,#+0
        MOVS     R1,#+63
        LDR.W    R0,??DataTable34
        BL       v_Revelation_WriteBytes
//  805         /////
//  806             for(uint8 X_show = 0;X_show < 93;X_show++)
        MOVS     R5,#+0
        B.N      ??modeMachine_Always_CameraTestingMach_Output_12
//  807             {
//  808                 v_65kcolor2Mono(color_Message[Line_show][X_show],&RGBcolor);
//  809                 if((modeMachine_Camera_x_run == X_show)&&(modeMachine_Camera_y_run == Line_show))
//  810                 {
//  811                     RGBcolor.B_Green_63 = 0;RGBcolor.A_Blue_31 = 0;RGBcolor.C_Red_31 = 31;
//  812                     color_OLED_WrDat((RGBcolor.C_Red_31 << 3)|(RGBcolor.B_Green_63 >> 3));
//  813                     color_OLED_WrDat((RGBcolor.B_Green_63 << 5)|(RGBcolor.A_Blue_31));//color
//  814                 }
//  815                 else
//  816                 {
//  817                     color_OLED_WrDat((RGBcolor.C_Red_31 << 3)|(RGBcolor.B_Green_63 >> 3));
??modeMachine_Always_CameraTestingMach_Output_13:
        MOVS     R2,#+1
        LDRB     R0,[SP, #+0]
        LDRB     R1,[SP, #+1]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSRS     R1,R1,#+3
        ORRS     R1,R1,R0, LSL #+3
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable34
        BL       v_Revelation_WriteBytes
//  818                     color_OLED_WrDat((RGBcolor.B_Green_63 << 5)|(RGBcolor.A_Blue_31));//color
        MOVS     R2,#+1
        LDRB     R0,[SP, #+1]
        LDRB     R1,[SP, #+2]
        ORRS     R1,R1,R0, LSL #+5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable34
        BL       v_Revelation_WriteBytes
//  819                 }
??modeMachine_Always_CameraTestingMach_Output_14:
        ADDS     R5,R5,#+1
??modeMachine_Always_CameraTestingMach_Output_12:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+93
        BGE.N    ??modeMachine_Always_CameraTestingMach_Output_10
        ADD      R1,SP,#+0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,#+93
        ADD      R2,SP,#+4
        MLA      R0,R0,R4,R2
        LDRB     R0,[R5, R0]
        BL       v_65kcolor2Mono
        LDR.W    R0,??DataTable32_1
        LDRSB    R0,[R0, #+0]
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BNE.N    ??modeMachine_Always_CameraTestingMach_Output_13
        LDR.W    R0,??DataTable32
        LDRSB    R0,[R0, #+0]
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BNE.N    ??modeMachine_Always_CameraTestingMach_Output_13
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
        MOVS     R0,#+0
        STRB     R0,[SP, #+2]
        MOVS     R0,#+31
        STRB     R0,[SP, #+0]
        MOVS     R2,#+1
        LDRB     R0,[SP, #+0]
        LDRB     R1,[SP, #+1]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSRS     R1,R1,#+3
        ORRS     R1,R1,R0, LSL #+3
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable34
        BL       v_Revelation_WriteBytes
        MOVS     R2,#+1
        LDRB     R0,[SP, #+1]
        LDRB     R1,[SP, #+2]
        ORRS     R1,R1,R0, LSL #+5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable34
        BL       v_Revelation_WriteBytes
        B.N      ??modeMachine_Always_CameraTestingMach_Output_14
//  820             }
//  821         }
//  822         Revelation_CS_1(m_ColorOLED_pins);
??modeMachine_Always_CameraTestingMach_Output_11:
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+8]
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        LDR.W    R2,??DataTable34
        LDR      R2,[R2, #+12]
        LSLS     R1,R1,R2
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable34
        LDR      R1,[R1, #+8]
        STR      R0,[R1, #+0]
//  823         m_system.uart_Txflag = 0;
        LDR.W    R0,??DataTable34_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+16]
//  824     }
//  825     
//  826     v_ImageBeholder_Information(0,1);//
??modeMachine_Always_CameraTestingMach_Output_8:
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       v_ImageBeholder_Information
//  827     
//  828     n_ImageBeholder_FourPointGetAndCal(0,0,'R');
        MOVS     R2,#+82
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       n_ImageBeholder_FourPointGetAndCal
//  829     
//  830 }
        ADD      SP,SP,#+468
        ADD      SP,SP,#+5120
        POP      {R4,R5,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20:
        DC32     0x43400000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_1:
        DC32     `?<Constant "RegReWrite:No">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_2:
        DC32     ??y

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_3:
        DC32     `?<Constant "6.ImageOutPut">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_4:
        DC32     `?<Constant "7.Special Status">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_5:
        DC32     `?<Constant "1.Running 5s">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_6:
        DC32     `?<Constant "2.Running 15s">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_7:
        DC32     `?<Constant "3.Running 30s">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_8:
        DC32     `?<Constant "4.Running Always">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_9:
        DC32     `?<Constant "5.Running Light">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_10:
        DC32     `?<Constant "1.Speed Set">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_11:
        DC32     `?<Constant "2.SpdCut Set">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_12:
        DC32     `?<Constant "3.SpdCut Rto">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_13:
        DC32     `?<Constant "4.Servo D">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_14:
        DC32     `?<Constant "5.Shutter T">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_15:
        DC32     `?<Constant "6.Speed Max">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_16:
        DC32     `?<Constant "1.Running">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_17:
        DC32     `?<Constant "2.SpeedMode Low">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_18:
        DC32     `?<Constant "3.SpeedMode Hight">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_19:
        DC32     `?<Constant "4.SpeedMode Average">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_20:
        DC32     `?<Constant "  Speed Min:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_21:
        DC32     `?<Constant "  Speed Max:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_22:
        DC32     `?<Constant "  Speed Rt:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_23:
        DC32     `?<Constant "1.P Change">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_24:
        DC32     `?<Constant "2.I Change">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_25:
        DC32     `?<Constant "3.D Change">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_26:
        DC32     `?<Constant "4.Used Last">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_27:
        DC32     ??nowMode

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_28:
        DC32     ??first_LineShow

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_29:
        DC32     ??last_LineShow

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_30:
        DC32     ??arrow_static

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  831 void modeMachine_Always_CameraTestingMach_Output_ExtraPara()
//  832 {
modeMachine_Always_CameraTestingMach_Output_ExtraPara:
        PUSH     {R4,R5,LR}
        SUB      SP,SP,#+468
        SUB      SP,SP,#+5120
//  833     if(modeMachine_Camera_x_run > 95){modeMachine_Camera_x_run = 95;}
        LDR.W    R0,??DataTable32_1
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+96
        BLT.N    ??modeMachine_Always_CameraTestingMach_Output_E_0
        LDR.W    R0,??DataTable32_1
        MOVS     R1,#+95
        STRB     R1,[R0, #+0]
//  834     if(modeMachine_Camera_x_run < 0){modeMachine_Camera_x_run = 0;}
??modeMachine_Always_CameraTestingMach_Output_E_0:
        LDR.W    R0,??DataTable32_1
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+0
        BPL.N    ??modeMachine_Always_CameraTestingMach_Output_E_1
        LDR.W    R0,??DataTable32_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  835     
//  836     if(modeMachine_Camera_y_run > 63){modeMachine_Camera_y_run = 63;}
??modeMachine_Always_CameraTestingMach_Output_E_1:
        LDR.W    R0,??DataTable32
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+64
        BLT.N    ??modeMachine_Always_CameraTestingMach_Output_E_2
        LDR.W    R0,??DataTable32
        MOVS     R1,#+63
        STRB     R1,[R0, #+0]
//  837     if(modeMachine_Camera_y_run < 0){modeMachine_Camera_y_run = 0;}
??modeMachine_Always_CameraTestingMach_Output_E_2:
        LDR.W    R0,??DataTable32
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+0
        BPL.N    ??modeMachine_Always_CameraTestingMach_Output_E_3
        LDR.W    R0,??DataTable32
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  838     
//  839     uint8 color_Message[60][93];
//  840     
//  841     for(uint8 Line_show = 0;Line_show < 60;Line_show++) // ÐÐÏÔÊ¾ - 8
??modeMachine_Always_CameraTestingMach_Output_E_3:
        MOVS     R0,#+0
        B.N      ??modeMachine_Always_CameraTestingMach_Output_E_4
//  842     {//Êý¾ÝÔÝ´æ
//  843         for(uint8 X_show = 0;X_show < 93;X_show++)
//  844         {
//  845             color_Message[Line_show][X_show] = m_ImageBeholder_Data[Line_show][X_show * 2];
??modeMachine_Always_CameraTestingMach_Output_E_5:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R2,#+93
        ADD      R3,SP,#+4
        MLA      R2,R2,R0,R3
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R3,#+185
        LDR.W    R4,??DataTable33
        MLA      R3,R3,R0,R4
        LDRB     R3,[R3, R1, LSL #+1]
        STRB     R3,[R1, R2]
//  846         }
        ADDS     R1,R1,#+1
??modeMachine_Always_CameraTestingMach_Output_E_6:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+93
        BLT.N    ??modeMachine_Always_CameraTestingMach_Output_E_5
        ADDS     R0,R0,#+1
??modeMachine_Always_CameraTestingMach_Output_E_4:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+60
        BGE.N    ??modeMachine_Always_CameraTestingMach_Output_E_7
        MOVS     R1,#+0
        B.N      ??modeMachine_Always_CameraTestingMach_Output_E_6
//  847     }
//  848     
//  849     if(1 == m_system.uart_Txflag)
??modeMachine_Always_CameraTestingMach_Output_E_7:
        LDR.W    R0,??DataTable34_1
        LDRB     R0,[R0, #+16]
        CMP      R0,#+1
        BNE.W    ??modeMachine_Always_CameraTestingMach_Output_E_8
//  850     {
//  851         Revelation_CS_0(m_ColorOLED_pins);
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+8]
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        LDR.W    R2,??DataTable34
        LDR      R2,[R2, #+12]
        LSLS     R1,R1,R2
        BICS     R0,R0,R1
        LDR.W    R1,??DataTable34
        LDR      R1,[R1, #+8]
        STR      R0,[R1, #+0]
//  852         s_color RGBcolor;
//  853         for(uint8 Line_show = 0;Line_show < 60;Line_show++) // ÐÐÏÔÊ¾ - 8
        MOVS     R4,#+0
        B.N      ??modeMachine_Always_CameraTestingMach_Output_E_9
??modeMachine_Always_CameraTestingMach_Output_E_10:
        ADDS     R4,R4,#+1
??modeMachine_Always_CameraTestingMach_Output_E_9:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+60
        BGE.W    ??modeMachine_Always_CameraTestingMach_Output_E_11
//  854         {
//  855         /////
//  856             color_OLED_WrCmd(0x15);color_OLED_WrCmd(2);color_OLED_WrCmd(95);//Setup Column
        MOVS     R2,#+0
        MOVS     R1,#+21
        LDR.W    R0,??DataTable34
        BL       v_Revelation_WriteBytes
        MOVS     R2,#+0
        MOVS     R1,#+2
        LDR.W    R0,??DataTable34
        BL       v_Revelation_WriteBytes
        MOVS     R2,#+0
        MOVS     R1,#+95
        LDR.W    R0,??DataTable34
        BL       v_Revelation_WriteBytes
//  857             color_OLED_WrCmd(0x75);color_OLED_WrCmd(Line_show);color_OLED_WrCmd(63);//Setup Row
        MOVS     R2,#+0
        MOVS     R1,#+117
        LDR.W    R0,??DataTable34
        BL       v_Revelation_WriteBytes
        MOVS     R2,#+0
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable34
        BL       v_Revelation_WriteBytes
        MOVS     R2,#+0
        MOVS     R1,#+63
        LDR.W    R0,??DataTable34
        BL       v_Revelation_WriteBytes
//  858         /////
//  859             for(uint8 X_show = 0;X_show < 93;X_show++)
        MOVS     R5,#+0
        B.N      ??modeMachine_Always_CameraTestingMach_Output_E_12
//  860             {
//  861                 v_65kcolor2Mono(color_Message[Line_show][X_show],&RGBcolor);
//  862                 if((modeMachine_Camera_x_run == X_show)&&(modeMachine_Camera_y_run == Line_show))
//  863                 {
//  864                     RGBcolor.B_Green_63 = 0;RGBcolor.A_Blue_31 = 0;RGBcolor.C_Red_31 = 31;
//  865                     color_OLED_WrDat((RGBcolor.C_Red_31 << 3)|(RGBcolor.B_Green_63 >> 3));
//  866                     color_OLED_WrDat((RGBcolor.B_Green_63 << 5)|(RGBcolor.A_Blue_31));//color
//  867                 }
//  868                 else
//  869                 {
//  870                     color_OLED_WrDat((RGBcolor.C_Red_31 << 3)|(RGBcolor.B_Green_63 >> 3));
??modeMachine_Always_CameraTestingMach_Output_E_13:
        MOVS     R2,#+1
        LDRB     R0,[SP, #+0]
        LDRB     R1,[SP, #+1]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSRS     R1,R1,#+3
        ORRS     R1,R1,R0, LSL #+3
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable34
        BL       v_Revelation_WriteBytes
//  871                     color_OLED_WrDat((RGBcolor.B_Green_63 << 5)|(RGBcolor.A_Blue_31));//color
        MOVS     R2,#+1
        LDRB     R0,[SP, #+1]
        LDRB     R1,[SP, #+2]
        ORRS     R1,R1,R0, LSL #+5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable34
        BL       v_Revelation_WriteBytes
//  872                 }
??modeMachine_Always_CameraTestingMach_Output_E_14:
        ADDS     R5,R5,#+1
??modeMachine_Always_CameraTestingMach_Output_E_12:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+93
        BGE.N    ??modeMachine_Always_CameraTestingMach_Output_E_10
        ADD      R1,SP,#+0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,#+93
        ADD      R2,SP,#+4
        MLA      R0,R0,R4,R2
        LDRB     R0,[R5, R0]
        BL       v_65kcolor2Mono
        LDR.W    R0,??DataTable32_1
        LDRSB    R0,[R0, #+0]
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BNE.N    ??modeMachine_Always_CameraTestingMach_Output_E_13
        LDR.W    R0,??DataTable32
        LDRSB    R0,[R0, #+0]
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BNE.N    ??modeMachine_Always_CameraTestingMach_Output_E_13
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
        MOVS     R0,#+0
        STRB     R0,[SP, #+2]
        MOVS     R0,#+31
        STRB     R0,[SP, #+0]
        MOVS     R2,#+1
        LDRB     R0,[SP, #+0]
        LDRB     R1,[SP, #+1]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSRS     R1,R1,#+3
        ORRS     R1,R1,R0, LSL #+3
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable34
        BL       v_Revelation_WriteBytes
        MOVS     R2,#+1
        LDRB     R0,[SP, #+1]
        LDRB     R1,[SP, #+2]
        ORRS     R1,R1,R0, LSL #+5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable34
        BL       v_Revelation_WriteBytes
        B.N      ??modeMachine_Always_CameraTestingMach_Output_E_14
//  873             }
//  874         }
//  875         Revelation_CS_1(m_ColorOLED_pins);
??modeMachine_Always_CameraTestingMach_Output_E_11:
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+8]
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        LDR.W    R2,??DataTable34
        LDR      R2,[R2, #+12]
        LSLS     R1,R1,R2
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable34
        LDR      R1,[R1, #+8]
        STR      R0,[R1, #+0]
//  876         m_system.uart_Txflag = 0;
        LDR.W    R0,??DataTable34_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+16]
//  877     }
//  878     
//  879     for(uint8 loop = 0;loop < 8;loop++)
??modeMachine_Always_CameraTestingMach_Output_E_8:
        MOVS     R4,#+0
        B.N      ??modeMachine_Always_CameraTestingMach_Output_E_15
//  880     {
//  881         v_MonoRev_Number(0,loop,m_Control.image_ratio[loop],10);//Êä³öÊýÖµ
??modeMachine_Always_CameraTestingMach_Output_E_16:
        MOVS     R2,#+10
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable42
        ADDS     R0,R0,R4, LSL #+2
        VLDR     S0,[R0, #+68]
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+0
        BL       v_MonoRev_Number
//  882     }
        ADDS     R4,R4,#+1
??modeMachine_Always_CameraTestingMach_Output_E_15:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+8
        BLT.N    ??modeMachine_Always_CameraTestingMach_Output_E_16
//  883 //    v_ImageBeholder_Information(0,1);//
//  884     
//  885 //    n_ImageBeholder_FourPointGetAndCal(0,0,'R');
//  886 }
        ADD      SP,SP,#+468
        ADD      SP,SP,#+5120
        POP      {R4,R5,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21:
        DC32     0x42b80000
//  887 /*----------------------------------------------------------------------------*/
//  888 
//  889 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  890 void modeMachine_Down_MotorTestingMach_Output()
//  891 {
modeMachine_Down_MotorTestingMach_Output:
        PUSH     {R7,LR}
//  892     m_Control.LeftMotorPWM -= 10;
        LDR.W    R0,??DataTable42
        LDRH     R0,[R0, #+60]
        SUBS     R0,R0,#+10
        LDR.W    R1,??DataTable42
        STRH     R0,[R1, #+60]
//  893     m_Control.RightMotorPWM -= 10;
        LDR.W    R0,??DataTable42
        LDRH     R0,[R0, #+62]
        SUBS     R0,R0,#+10
        LDR.W    R1,??DataTable42
        STRH     R0,[R1, #+62]
//  894     if(m_Control.LeftMotorPWM < -1000){m_Control.LeftMotorPWM = -1000;}
        LDR.W    R0,??DataTable42
        LDRSH    R0,[R0, #+60]
        CMN      R0,#+1000
        BGE.N    ??modeMachine_Down_MotorTestingMach_Output_0
        LDR.W    R0,??DataTable42
        LDR.N    R1,??DataTable28  ;; 0xfffffc18
        STRH     R1,[R0, #+60]
//  895     if(m_Control.RightMotorPWM < -1000){m_Control.RightMotorPWM = -1000;}
??modeMachine_Down_MotorTestingMach_Output_0:
        LDR.W    R0,??DataTable42
        LDRSH    R0,[R0, #+62]
        CMN      R0,#+1000
        BGE.N    ??modeMachine_Down_MotorTestingMach_Output_1
        LDR.W    R0,??DataTable42
        LDR.N    R1,??DataTable28  ;; 0xfffffc18
        STRH     R1,[R0, #+62]
//  896     if(m_Control.LeftMotorPWM > 1000){m_Control.LeftMotorPWM = 1000;}
??modeMachine_Down_MotorTestingMach_Output_1:
        LDR.W    R0,??DataTable42
        LDRSH    R0,[R0, #+60]
        CMP      R0,#+1000
        BLE.N    ??modeMachine_Down_MotorTestingMach_Output_2
        LDR.W    R0,??DataTable42
        MOV      R1,#+1000
        STRH     R1,[R0, #+60]
//  897     if(m_Control.RightMotorPWM > 1000){m_Control.RightMotorPWM = 1000;}
??modeMachine_Down_MotorTestingMach_Output_2:
        LDR.W    R0,??DataTable42
        LDRSH    R0,[R0, #+62]
        CMP      R0,#+1000
        BLE.N    ??modeMachine_Down_MotorTestingMach_Output_3
        LDR.W    R0,??DataTable42
        MOV      R1,#+1000
        STRH     R1,[R0, #+62]
//  898     if(m_Control.LeftMotorPWM >= 0)
??modeMachine_Down_MotorTestingMach_Output_3:
        LDR.W    R0,??DataTable42
        LDRSH    R0,[R0, #+60]
        CMP      R0,#+0
        BMI.N    ??modeMachine_Down_MotorTestingMach_Output_4
//  899     {
//  900         v_leftMotor_pwmOut(m_Control.LeftMotorPWM,1);
        MOVS     R1,#+1
        LDR.W    R0,??DataTable42
        LDRH     R0,[R0, #+60]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       v_leftMotor_pwmOut
//  901         v_rightMotor_pwmOut(m_Control.RightMotorPWM,1);
        MOVS     R1,#+1
        LDR.W    R0,??DataTable42
        LDRH     R0,[R0, #+62]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       v_rightMotor_pwmOut
        B.N      ??modeMachine_Down_MotorTestingMach_Output_5
//  902     }
//  903     else
//  904     {
//  905         v_leftMotor_pwmOut(__ABS(m_Control.LeftMotorPWM),2);
??modeMachine_Down_MotorTestingMach_Output_4:
        LDR.W    R0,??DataTable42
        LDRSH    R0,[R0, #+60]
        CMP      R0,#+0
        BPL.N    ??modeMachine_Down_MotorTestingMach_Output_6
        LDR.W    R0,??DataTable42
        LDRSH    R0,[R0, #+60]
        RSBS     R0,R0,#+0
        B.N      ??modeMachine_Down_MotorTestingMach_Output_7
??modeMachine_Down_MotorTestingMach_Output_6:
        LDR.W    R0,??DataTable42
        LDRH     R0,[R0, #+60]
??modeMachine_Down_MotorTestingMach_Output_7:
        MOVS     R1,#+2
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       v_leftMotor_pwmOut
//  906         v_rightMotor_pwmOut(__ABS(m_Control.RightMotorPWM),2);
        LDR.W    R0,??DataTable42
        LDRSH    R0,[R0, #+62]
        CMP      R0,#+0
        BPL.N    ??modeMachine_Down_MotorTestingMach_Output_8
        LDR.W    R0,??DataTable42
        LDRSH    R0,[R0, #+62]
        RSBS     R0,R0,#+0
        B.N      ??modeMachine_Down_MotorTestingMach_Output_9
??modeMachine_Down_MotorTestingMach_Output_8:
        LDR.W    R0,??DataTable42
        LDRH     R0,[R0, #+62]
??modeMachine_Down_MotorTestingMach_Output_9:
        MOVS     R1,#+2
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       v_rightMotor_pwmOut
//  907     }
//  908 }
??modeMachine_Down_MotorTestingMach_Output_5:
        POP      {R0,PC}          ;; return
//  909 
//  910 //============================================================================//
//  911 //============================================================================//
//  912 //============================================================================//

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  913 void modeMachine_Move_ServoTesting_UpOutPut()
//  914 {
modeMachine_Move_ServoTesting_UpOutPut:
        PUSH     {R7,LR}
//  915     m_Control.servo_turn_Robustly = m_Control.servo_turn_Robustly + 1;
        LDR.W    R0,??DataTable42
        LDRB     R0,[R0, #+19]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable42
        STRB     R0,[R1, #+19]
//  916     v_MonoRev_Fill(0);
        MOVS     R0,#+0
        BL       v_MonoRev_Fill
//  917     modeMachine_Move_ServoTestingPanel_Display();
        BL       modeMachine_Move_ServoTestingPanel_Display
//  918 }
        POP      {R0,PC}          ;; return
//  919 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  920 void modeMachine_Move_ServoTesting_DownOutPut()
//  921 {
modeMachine_Move_ServoTesting_DownOutPut:
        PUSH     {R7,LR}
//  922     m_Control.servo_turn_Robustly = m_Control.servo_turn_Robustly - 1;
        LDR.W    R0,??DataTable42
        LDRB     R0,[R0, #+19]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable42
        STRB     R0,[R1, #+19]
//  923     v_MonoRev_Fill(0);
        MOVS     R0,#+0
        BL       v_MonoRev_Fill
//  924     modeMachine_Move_ServoTestingPanel_Display();
        BL       modeMachine_Move_ServoTestingPanel_Display
//  925 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24:
        DC32     `?<Constant "Servo Testing Mode">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_1:
        DC32     `?<Constant "Deg:%d">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_2:
        DC32     `?<Constant "Ang:%d">`
//  926 
//  927 
//  928 /*
//  929 //--------
//  930 //----·¢³µ => Run
//  931 //--------5sÍ£³µ => Run 5 second
//  932 ----²âÊÔ½çÃæ => Testing
//  933 --------×î»ù±¾²âÊÔ
//  934 --------¶æ»ú²âÊÔ
//  935 --------µç»ú²âÊÔ
//  936 //--------µ¼º½ÐÅÏ¢²âÊÔ
//  937 ----ÉãÏñÍ·On/Off => Beholder On/OFF
//  938 //----ÄæÍ¸ÊÓ²ÎÊýÉèÖÃ => ImageCal UnValid / Valid
//  939 //----³µÁ¾Ö´ÐÐÐÅÏ¢¸ü¸Ä => Vehicle Infor 
//  940 //--------1minÍ£³µ => Run 1 min
//  941 */
//  942 //============================================================================//
//  943 //×îÉÏ²ãµÈ´ý½çÃæ

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  944 void modeMachine_Testing_TurnOnMode()//»ù±¾ÊäÈëÊä³ö¿ªÆôÄ£Ê½
//  945 {//
modeMachine_Testing_TurnOnMode:
        PUSH     {R7,LR}
//  946     m_ModeMachine.always_done = modeMachine_Always_ImageOutput;
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable59
        STR      R1,[R0, #+28]
//  947     
//  948     m_ModeMachine.button_S1_done = v_UartTxNeedtx;//v_UartTxNeedtx()
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable59_1
        STR      R1,[R0, #+0]
//  949     
//  950     m_ModeMachine.button_S2_done = modeMachine_ImageBeholderTesting_TurnOnMode;
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable59_2
        STR      R1,[R0, #+4]
//  951     m_ModeMachine.button_S3_done = modeMachine_StartCarRunning_Paraments;
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable60
        STR      R1,[R0, #+8]
//  952     m_ModeMachine.button_S4_done = 0;
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
//  953     m_ModeMachine.button_S5_done = 0;
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
//  954     m_ModeMachine.button_S6_done = modeMachine_Move2testingMode;//modeMachine_Move2testingMode
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable61
        STR      R1,[R0, #+20]
//  955     m_ModeMachine.button_S8_done = 0;
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
//  956     
//  957     v_Panel_DisplayCommandLine(0,0);
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       v_Panel_DisplayCommandLine
//  958     // => modeMachine_Move_ServoTestingPanel_Display => °´¼üÖ´ÐÐ¶æ»ú²âÊÔ
//  959 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25:
        DC32     m_ImageAbstract

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_1:
        DC32     `?<Constant "Motor Testing Mode">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_2:
        DC32     `?<Constant "            ">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  960 void modeMachine_ImageBeholder_ReStart(){b_Beholder_Init();}
modeMachine_ImageBeholder_ReStart:
        PUSH     {R7,LR}
        BL       b_Beholder_Init
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  961 void modeMachine_ImageBeholderTesting_TurnOnMode()
//  962 {
modeMachine_ImageBeholderTesting_TurnOnMode:
        PUSH     {R7,LR}
//  963     m_ModeMachine.always_done = modeMachine_Always_ImageOutput;
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable59
        STR      R1,[R0, #+28]
//  964     m_ModeMachine.button_S1_done = modeMachine_ImageBeholder_ReStart;//ÖØÆôÉãÏñÍ·
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable62
        STR      R1,[R0, #+0]
//  965     
//  966     m_ModeMachine.button_S3_done = modeMachine_Testing_TurnOnMode;//modeMachine_Move_ServoTesting_UpOutPut;
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable62_1
        STR      R1,[R0, #+8]
//  967     m_ModeMachine.button_S2_done = modeMachine_RunningSet_TurnOnMode;//modeMachine_Move_ServoTesting_DownOutPut;
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable62_2
        STR      R1,[R0, #+4]
//  968     
//  969     m_ModeMachine.button_S4_done = 0;
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
//  970     m_ModeMachine.button_S5_done = 0;
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
//  971     m_ModeMachine.button_S6_done = modeMachine_ImageBeholderTesting_TestingMode;
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable62_3
        STR      R1,[R0, #+20]
//  972     m_ModeMachine.button_S8_done = 0;
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
//  973     
//  974     v_Panel_DisplayCommandLine(1,0);
        MOVS     R1,#+0
        MOVS     R0,#+1
        BL       v_Panel_DisplayCommandLine
//  975 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26:
        DC32     `?<Constant "LSpeed: %g">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_1:
        DC32     `?<Constant "RSpeed: %g">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_2:
        DC32     `?<Constant "LPWM: %d">`
//  976 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  977 void modeMachine_RunningSet_TurnOnMode()
//  978 {
modeMachine_RunningSet_TurnOnMode:
        PUSH     {R7,LR}
//  979     m_ModeMachine.always_done = modeMachine_Always_ImageOutput;
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable59
        STR      R1,[R0, #+28]
//  980     m_ModeMachine.button_S1_done = modeMachine_ThirdParaments_Set;
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable64
        STR      R1,[R0, #+0]
//  981     
//  982     m_ModeMachine.button_S3_done = modeMachine_Testing_TurnOnMode;//modeMachine_Move_ServoTesting_UpOutPut;
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable62_1
        STR      R1,[R0, #+8]
//  983     m_ModeMachine.button_S2_done = modeMachine_TotleShutter_TurnOnMode;//modeMachine_Move_ServoTesting_DownOutPut;
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable65_2
        STR      R1,[R0, #+4]
//  984     
//  985     m_ModeMachine.button_S4_done = 0;
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
//  986     m_ModeMachine.button_S5_done = 0;
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
//  987     m_ModeMachine.button_S6_done = modeMachine_Running5s_RunMode;
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable65_3
        STR      R1,[R0, #+20]
//  988     m_ModeMachine.button_S8_done = 0;
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
//  989     
//  990     v_Panel_DisplayCommandLine(2,0);
        MOVS     R1,#+0
        MOVS     R0,#+2
        BL       v_Panel_DisplayCommandLine
//  991 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable27:
        DC32     `?<Constant "        ">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  992 void modeMachine_ThirdParaments_Set()
//  993 {
//  994     m_ModeMachine.always_done = modeMachine_ThirdParaments_Viewer;
modeMachine_ThirdParaments_Set:
        LDR.N    R0,??DataTable32_2
        LDR.W    R1,??DataTable76
        STR      R1,[R0, #+28]
//  995 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28:
        DC32     0xfffffc18
//  996 
//  997 /*
//  998 void modeMachine_SpeedSet_TurnOnMode()
//  999 {
// 1000     m_ModeMachine.always_done = modeMachine_Always_ImageOutput;
// 1001     m_ModeMachine.button_S1_done = 0;
// 1002     
// 1003     m_ModeMachine.button_S3_done = modeMachine_RunningSet_TurnOnMode;//modeMachine_Move_ServoTesting_UpOutPut;
// 1004     m_ModeMachine.button_S2_done = modeMachine_TotleShutter_TurnOnMode;//modeMachine_Move_ServoTesting_DownOutPut;
// 1005     
// 1006     m_ModeMachine.button_S4_done = 0;
// 1007     m_ModeMachine.button_S5_done = 0;
// 1008     m_ModeMachine.button_S6_done = modeMachine_SpeedSetMode;//modeMachine_Running5s_RunMode;
// 1009     m_ModeMachine.button_S8_done = 0;
// 1010     
// 1011     v_Panel_DisplayCommandLine(3,0);
// 1012 }
// 1013 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1014 void modeMachine_TotleShutter_TurnOnMode()
// 1015 {
modeMachine_TotleShutter_TurnOnMode:
        PUSH     {R7,LR}
// 1016     m_ModeMachine.always_done = modeMachine_Always_ImageOutput;
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable59
        STR      R1,[R0, #+28]
// 1017     m_ModeMachine.button_S1_done = modeMachine_BlackBar2Littele;
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable66
        STR      R1,[R0, #+0]
// 1018     
// 1019     m_ModeMachine.button_S3_done = modeMachine_RunningSet_TurnOnMode;//modeMachine_Move_ServoTesting_UpOutPut;
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable62_2
        STR      R1,[R0, #+8]
// 1020     m_ModeMachine.button_S2_done = modeMachine_ParaSet_TurnOnMode;//modeMachine_Move_ServoTesting_DownOutPut;
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable66_1
        STR      R1,[R0, #+4]
// 1021     
// 1022     m_ModeMachine.button_S4_done = 0;
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
// 1023     m_ModeMachine.button_S5_done = 0;
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
// 1024     m_ModeMachine.button_S6_done = modeMachine_TotleShutterChangeMode;//modeMachine_Running5s_RunMode;
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable66_2
        STR      R1,[R0, #+20]
// 1025     m_ModeMachine.button_S8_done = 0;
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
// 1026     
// 1027     v_Panel_DisplayCommandLine(3,0);
        MOVS     R1,#+0
        MOVS     R0,#+3
        BL       v_Panel_DisplayCommandLine
// 1028 }
        POP      {R0,PC}          ;; return
// 1029 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1030 void modeMachine_ParaSet_TurnOnMode()
// 1031 {
modeMachine_ParaSet_TurnOnMode:
        PUSH     {R7,LR}
// 1032     m_ModeMachine.always_done = modeMachine_Always_ImageOutput;
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable59
        STR      R1,[R0, #+28]
// 1033     m_ModeMachine.button_S1_done = modeMachine_RtAngel;
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable67
        STR      R1,[R0, #+0]
// 1034     
// 1035     m_ModeMachine.button_S3_done = modeMachine_TotleShutter_TurnOnMode;//modeMachine_Move_ServoTesting_UpOutPut;
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable65_2
        STR      R1,[R0, #+8]
// 1036     m_ModeMachine.button_S2_done = modeMachine_MotorPID_TurnOnMode;//modeMachine_Move_ServoTesting_DownOutPut;
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable68
        STR      R1,[R0, #+4]
// 1037     
// 1038     m_ModeMachine.button_S4_done = 0;
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
// 1039     m_ModeMachine.button_S5_done = 0;
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
// 1040     m_ModeMachine.button_S6_done = modeMachine_GiveSpeedMode;//modeMachine_Running5s_RunMode;
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable68_1
        STR      R1,[R0, #+20]
// 1041     m_ModeMachine.button_S8_done = 0;
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
// 1042     
// 1043     v_Panel_DisplayCommandLine(4,0);
        MOVS     R1,#+0
        MOVS     R0,#+4
        BL       v_Panel_DisplayCommandLine
// 1044 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30:
        DC32     `?<Constant "RPWM: %d">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1045 void modeMachine_MotorPID_TurnOnMode()
// 1046 {
modeMachine_MotorPID_TurnOnMode:
        PUSH     {R7,LR}
// 1047     FuncSet(0,0,0,0,0,0,0);
        LDR.N    R0,??DataTable32_2
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable32_2
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        LDR.N    R0,??DataTable32_2
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        LDR.N    R0,??DataTable32_2
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
        LDR.N    R0,??DataTable32_2
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
        LDR.N    R0,??DataTable32_2
        MOVS     R1,#+0
        STR      R1,[R0, #+20]
        LDR.N    R0,??DataTable32_2
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
// 1048     UpDownSureBack(modeMachine_ParaSet_TurnOnMode,
// 1049                    modeMachine_ServoFunction_TurnOnMode,
// 1050                    modeMachine_MotorPID_P_Change,
// 1051                    0);//¸ø¶¨
        LDR.N    R0,??DataTable32_2
        LDR.W    R1,??DataTable66_1
        STR      R1,[R0, #+8]
        LDR.N    R0,??DataTable32_2
        LDR.W    R1,??DataTable70
        STR      R1,[R0, #+4]
        LDR.N    R0,??DataTable32_2
        LDR.W    R1,??DataTable70_1
        STR      R1,[R0, #+20]
        LDR.N    R0,??DataTable32_2
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
// 1052     
// 1053     AlwaysSet(modeMachine_Always_ImageOutput);
        LDR.N    R0,??DataTable32_2
        LDR.W    R1,??DataTable59
        STR      R1,[R0, #+28]
// 1054     v_Panel_DisplayCommandLine(5,0);
        MOVS     R1,#+0
        MOVS     R0,#+5
        BL       v_Panel_DisplayCommandLine
// 1055 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1056 void modeMachine_MotorPID_P_Change()
// 1057 {
modeMachine_MotorPID_P_Change:
        PUSH     {R7,LR}
// 1058     FuncSet(0,0,0,0,0,0,0);
        LDR.N    R0,??DataTable32_2
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable32_2
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        LDR.N    R0,??DataTable32_2
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        LDR.N    R0,??DataTable32_2
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
        LDR.N    R0,??DataTable32_2
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
        LDR.N    R0,??DataTable32_2
        MOVS     R1,#+0
        STR      R1,[R0, #+20]
        LDR.N    R0,??DataTable32_2
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
// 1059     UpDownSureBack(0,
// 1060                    modeMachine_MotorPID_I_Change,
// 1061                    0,
// 1062                    modeMachine_MotorPID_TurnOnMode);//¸ø¶¨
        LDR.N    R0,??DataTable32_2
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        LDR.N    R0,??DataTable32_2
        LDR.W    R1,??DataTable71
        STR      R1,[R0, #+4]
        LDR.N    R0,??DataTable32_2
        MOVS     R1,#+0
        STR      R1,[R0, #+20]
        LDR.N    R0,??DataTable32_2
        LDR.W    R1,??DataTable68
        STR      R1,[R0, #+24]
// 1063     UpDownS5S4(modeMachine_Motor_P_Add,
// 1064                modeMachine_Motor_P_Cut);
        LDR.N    R0,??DataTable32_2
        LDR.W    R1,??DataTable71_1
        STR      R1,[R0, #+16]
        LDR.N    R0,??DataTable32_2
        LDR.W    R1,??DataTable71_2
        STR      R1,[R0, #+12]
// 1065     AlwaysSet(modeMachine_MotorAlways_Show);
        LDR.N    R0,??DataTable32_2
        LDR.W    R1,??DataTable82
        STR      R1,[R0, #+28]
// 1066     v_Panel_DisplayCommandLine(0,4);
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       v_Panel_DisplayCommandLine
// 1067 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32:
        DC32     modeMachine_Camera_y_run

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32_1:
        DC32     modeMachine_Camera_x_run

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32_2:
        DC32     m_ModeMachine

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32_3:
        DC32     modeMachine_Always_CameraTestingMach_OutputCalibration

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1068 void modeMachine_MotorPID_I_Change()
// 1069 {
modeMachine_MotorPID_I_Change:
        PUSH     {R7,LR}
// 1070     FuncSet(0,0,0,0,0,0,0);
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+20]
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
// 1071     UpDownSureBack(modeMachine_MotorPID_P_Change,
// 1072                    modeMachine_MotorPID_D_Change,
// 1073                    0,
// 1074                    modeMachine_MotorPID_TurnOnMode);//¸ø¶¨
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable70_1
        STR      R1,[R0, #+8]
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable72_1
        STR      R1,[R0, #+4]
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+20]
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable68
        STR      R1,[R0, #+24]
// 1075     UpDownS5S4(modeMachine_Motor_I_Add,
// 1076                modeMachine_Motor_I_Cut);
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable73
        STR      R1,[R0, #+16]
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable73_1
        STR      R1,[R0, #+12]
// 1077     AlwaysSet(modeMachine_MotorAlways_Show);
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable82
        STR      R1,[R0, #+28]
// 1078     v_Panel_DisplayCommandLine(1,4);
        MOVS     R1,#+4
        MOVS     R0,#+1
        BL       v_Panel_DisplayCommandLine
// 1079 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33:
        DC32     m_ImageBeholder_Data

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1080 void modeMachine_MotorPID_D_Change()
// 1081 {
modeMachine_MotorPID_D_Change:
        PUSH     {R7,LR}
// 1082     FuncSet(0,0,0,0,0,0,0);
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+20]
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
// 1083     UpDownSureBack(modeMachine_MotorPID_I_Change,
// 1084                    modeMachine_MotorPID_Used_Last,
// 1085                    0,
// 1086                    modeMachine_MotorPID_TurnOnMode);//¸ø¶¨
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable71
        STR      R1,[R0, #+8]
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable74
        STR      R1,[R0, #+4]
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+20]
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable68
        STR      R1,[R0, #+24]
// 1087     UpDownS5S4(modeMachine_Motor_D_Add,
// 1088                modeMachine_Motor_D_Cut);
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable74_1
        STR      R1,[R0, #+16]
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable74_2
        STR      R1,[R0, #+12]
// 1089     AlwaysSet(modeMachine_MotorAlways_Show);
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable82
        STR      R1,[R0, #+28]
// 1090     v_Panel_DisplayCommandLine(2,4);
        MOVS     R1,#+4
        MOVS     R0,#+2
        BL       v_Panel_DisplayCommandLine
// 1091 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable34:
        DC32     m_ColorOLED_pins

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable34_1:
        DC32     m_system

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1092 void modeMachine_MotorPID_Used_Last()
// 1093 {
modeMachine_MotorPID_Used_Last:
        PUSH     {R7,LR}
// 1094     FuncSet(0,0,0,0,0,0,0);
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+20]
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
// 1095     UpDownSureBack(modeMachine_MotorPID_D_Change,
// 1096                    0,
// 1097                    0,
// 1098                    modeMachine_MotorPID_TurnOnMode);//¸ø¶¨
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable72_1
        STR      R1,[R0, #+8]
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+20]
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable68
        STR      R1,[R0, #+24]
// 1099     
// 1100     AlwaysSet(modeMachine_MotorAlways_Show);
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable82
        STR      R1,[R0, #+28]
// 1101     v_Panel_DisplayCommandLine(3,4);
        MOVS     R1,#+4
        MOVS     R0,#+3
        BL       v_Panel_DisplayCommandLine
// 1102 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1103 void modeMachine_Motor_P_Add(){m_Control.Motor_ControlPara_P_Number += 1.f;};
modeMachine_Motor_P_Add:
        LDR.W    R0,??DataTable78
        VLDR     S0,[R0, #+148]
        VMOV.F32 S1,#1.0
        VADD.F32 S0,S0,S1
        LDR.W    R0,??DataTable78
        VSTR     S0,[R0, #+148]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1104 void modeMachine_Motor_P_Cut(){m_Control.Motor_ControlPara_P_Number -= 1.f;};
modeMachine_Motor_P_Cut:
        LDR.W    R0,??DataTable78
        VLDR     S0,[R0, #+148]
        VMOV.F32 S1,#-1.0
        VADD.F32 S0,S0,S1
        LDR.W    R0,??DataTable78
        VSTR     S0,[R0, #+148]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1105 void modeMachine_Motor_I_Add(){m_Control.Motor_ControlPara_I_Number += 0.1f;};
modeMachine_Motor_I_Add:
        LDR.W    R0,??DataTable78
        VLDR     S0,[R0, #+152]
        VLDR.W   S1,??DataTable46  ;; 0x3dcccccd
        VADD.F32 S0,S0,S1
        LDR.W    R0,??DataTable78
        VSTR     S0,[R0, #+152]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1106 void modeMachine_Motor_I_Cut()
// 1107 {
// 1108     m_Control.Motor_ControlPara_I_Number -= 0.1f;
modeMachine_Motor_I_Cut:
        LDR.W    R0,??DataTable78
        VLDR     S0,[R0, #+152]
        VLDR.W   S1,??DataTable46_1  ;; 0xbdcccccd
        VADD.F32 S0,S0,S1
        LDR.W    R0,??DataTable78
        VSTR     S0,[R0, #+152]
// 1109     if(m_Control.Motor_ControlPara_I_Number < 0.0f){m_Control.Motor_ControlPara_I_Number = 0.0f;}
        LDR.W    R0,??DataTable78
        VLDR     S0,[R0, #+152]
        VCMP.F32 S0,#0.0
        FMSTAT   
        BPL.N    ??modeMachine_Motor_I_Cut_0
        LDR.W    R0,??DataTable78
        MOVS     R1,#+0
        STR      R1,[R0, #+152]
// 1110 }
??modeMachine_Motor_I_Cut_0:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1111 void modeMachine_Motor_D_Add(){m_Control.Motor_ControlPara_D_Number += 1.f;};
modeMachine_Motor_D_Add:
        LDR.W    R0,??DataTable78
        VLDR     S0,[R0, #+156]
        VMOV.F32 S1,#1.0
        VADD.F32 S0,S0,S1
        LDR.W    R0,??DataTable78
        VSTR     S0,[R0, #+156]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1112 void modeMachine_Motor_D_Cut()
// 1113 {
// 1114     m_Control.Motor_ControlPara_D_Number -= 1.f;
modeMachine_Motor_D_Cut:
        LDR.W    R0,??DataTable78
        VLDR     S0,[R0, #+156]
        VMOV.F32 S1,#-1.0
        VADD.F32 S0,S0,S1
        LDR.W    R0,??DataTable78
        VSTR     S0,[R0, #+156]
// 1115     if(m_Control.Motor_ControlPara_D_Number < 0.f){m_Control.Motor_ControlPara_D_Number = 0.f;}
        LDR.W    R0,??DataTable78
        VLDR     S0,[R0, #+156]
        VCMP.F32 S0,#0.0
        FMSTAT   
        BPL.N    ??modeMachine_Motor_D_Cut_0
        LDR.W    R0,??DataTable78
        MOVS     R1,#+0
        STR      R1,[R0, #+156]
// 1116 }
??modeMachine_Motor_D_Cut_0:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1117 void modeMachine_MotorAlways_Show()
// 1118 {
modeMachine_MotorAlways_Show:
        PUSH     {R7,LR}
// 1119     modeMachine_Always_ImageOutput();
        BL       modeMachine_Always_ImageOutput
// 1120     v_MonoRev_Number(64,0,m_Control.Motor_ControlPara_P_Number,10);
        MOVS     R2,#+10
        LDR.N    R0,??DataTable42
        VLDR     S0,[R0, #+148]
        MOVS     R1,#+0
        MOVS     R0,#+64
        BL       v_MonoRev_Number
// 1121     v_MonoRev_Number(64,1,m_Control.Motor_ControlPara_I_Number,10);//ÇúÏßÏµÊý¸ü¸Ä <= K_Curve
        MOVS     R2,#+10
        LDR.N    R0,??DataTable42
        VLDR     S0,[R0, #+152]
        MOVS     R1,#+1
        MOVS     R0,#+64
        BL       v_MonoRev_Number
// 1122     v_MonoRev_Number(64,2,m_Control.Motor_ControlPara_D_Number,10);//ÇúÏßÏµÊý¸ü¸Ä <= K_Curve
        MOVS     R2,#+10
        LDR.N    R0,??DataTable42
        VLDR     S0,[R0, #+156]
        MOVS     R1,#+2
        MOVS     R0,#+64
        BL       v_MonoRev_Number
// 1123     v_MonoRev_6x8Str(64,3,"No Vaild",0);//ÎÞÐ§
        MOVS     R3,#+0
        LDR.W    R2,??DataTable90
        MOVS     R1,#+3
        MOVS     R0,#+64
        BL       v_MonoRev_6x8Str
// 1124 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable42:
        DC32     m_Control
// 1125 
// 1126 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1127 void modeMachine_ServoFunction_TurnOnMode()//=====//¸ü¸Äº¯ÊýÖ¸Ïò
// 1128 {
modeMachine_ServoFunction_TurnOnMode:
        PUSH     {R7,LR}
// 1129     FuncSet(0,0,0,0,0,0,0);
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+20]
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
// 1130     UpDownSureBack(modeMachine_MotorPID_TurnOnMode,
// 1131                    modeMachine_set_speed_max_min_TurnOnMode,
// 1132                    modeMachine_ServoFunction_Average,
// 1133                    0);//¸ø¶¨
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable68
        STR      R1,[R0, #+8]
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable80
        STR      R1,[R0, #+4]
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable80_1
        STR      R1,[R0, #+20]
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
// 1134     
// 1135     AlwaysSet(modeMachine_Always_ImageOutput);
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable59
        STR      R1,[R0, #+28]
// 1136     v_Panel_DisplayCommandLine(6,0);
        MOVS     R1,#+0
        MOVS     R0,#+6
        BL       v_Panel_DisplayCommandLine
// 1137 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1138 void modeMachine_ServoFunction_Average()
// 1139 {
// 1140     FuncSet(0,0,0,0,0,0,0);
modeMachine_ServoFunction_Average:
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+20]
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
// 1141     UpDownSureBack(0,
// 1142                    modeMachine_ServoFunction_Optimization,
// 1143                    0,
// 1144                    modeMachine_ServoFunction_TurnOnMode);//¸ø¶¨
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable81
        STR      R1,[R0, #+4]
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+20]
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable70
        STR      R1,[R0, #+24]
// 1145     AlwaysSet(modeMachine_Always_ShowFuncName);
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable82_1
        STR      R1,[R0, #+28]
// 1146     m_Control.v_MotorControlSpeed = v_speed_Give;
        LDR.W    R0,??DataTable78
        LDR.W    R1,??DataTable84
        STR      R1,[R0, #+220]
// 1147 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1148 void modeMachine_ServoFunction_Optimization()
// 1149 {
// 1150     FuncSet(0,0,0,0,0,0,0);
modeMachine_ServoFunction_Optimization:
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+20]
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
// 1151     UpDownSureBack(modeMachine_ServoFunction_Average,
// 1152                    0,
// 1153                    0,
// 1154                    modeMachine_ServoFunction_TurnOnMode);//¸ø¶¨
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable80_1
        STR      R1,[R0, #+8]
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+20]
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable70
        STR      R1,[R0, #+24]
// 1155     AlwaysSet(modeMachine_Always_ShowFuncName);
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable82_1
        STR      R1,[R0, #+28]
// 1156     m_Control.v_MotorControlSpeed = v_speed_Give_UsedsmallChange;//
        LDR.W    R0,??DataTable78
        LDR.W    R1,??DataTable84_1
        STR      R1,[R0, #+220]
// 1157 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1158 void modeMachine_Always_ShowFuncName()
// 1159 {
modeMachine_Always_ShowFuncName:
        PUSH     {R7,LR}
// 1160     modeMachine_Always_ImageOutput();//
        BL       modeMachine_Always_ImageOutput
// 1161     if(v_speed_Give == m_Control.v_MotorControlSpeed)
        LDR.W    R0,??DataTable84
        LDR.W    R1,??DataTable78
        LDR      R1,[R1, #+220]
        CMP      R0,R1
        BNE.N    ??modeMachine_Always_ShowFuncName_0
// 1162     {
// 1163         v_MonoRev_6x8Str(0,0,"Motor",0);//ÎÞÐ§
        MOVS     R3,#+0
        LDR.W    R2,??DataTable84_2
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
        B.N      ??modeMachine_Always_ShowFuncName_1
// 1164     }
// 1165     else if(v_speed_Give_UsedsmallChange == m_Control.v_MotorControlSpeed)
??modeMachine_Always_ShowFuncName_0:
        LDR.W    R0,??DataTable84_1
        LDR.W    R1,??DataTable78
        LDR      R1,[R1, #+220]
        CMP      R0,R1
        BNE.N    ??modeMachine_Always_ShowFuncName_1
// 1166     {
// 1167         v_MonoRev_6x8Str(0,0,"Motor SmallChange",0);//ÎÞÐ§
        MOVS     R3,#+0
        LDR.W    R2,??DataTable94
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
// 1168     }
// 1169 }
??modeMachine_Always_ShowFuncName_1:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable46:
        DC32     0x3dcccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable46_1:
        DC32     0xbdcccccd
// 1170 
// 1171 
// 1172 
// 1173 
// 1174 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1175 void modeMachine_ParaShow_Panel()
// 1176 {
modeMachine_ParaShow_Panel:
        PUSH     {R7,LR}
// 1177         /*
// 1178     const char *SpeedSetPara = "1.Speed Set";
// 1179     const char *SpeedCutNumberPara = "2.SpdCut Set";
// 1180     const char *SpeedCutRatioPara = "3.SpdCut Rto";
// 1181     const char *ServoDiffPara = "4.Servo D";
// 1182     const char *CameraPara = "5.Shutter T";
// 1183     */
// 1184     modeMachine_Always_ImageOutput();
        BL       modeMachine_Always_ImageOutput
// 1185     v_Panel_DisplayCommandLine(10000,255);
        MOVS     R1,#+255
        MOVW     R0,#+10000
        BL       v_Panel_DisplayCommandLine
// 1186     v_MonoRev_Number(80,0,m_Control.GiveSpeed,10);
        MOVS     R2,#+10
        LDR.W    R0,??DataTable78
        LDRH     R0,[R0, #+108]
        VMOV     S0,R0
        VCVT.F32.U32 S0,S0
        MOVS     R1,#+0
        MOVS     R0,#+80
        BL       v_MonoRev_Number
// 1187     v_MonoRev_Number(80,1,m_Control.speedCut,10);
        MOVS     R2,#+10
        LDR.W    R0,??DataTable78
        VLDR     S0,[R0, #+112]
        MOVS     R1,#+1
        MOVS     R0,#+80
        BL       v_MonoRev_Number
// 1188     v_MonoRev_Number(80,2,m_Control.speedCutRatio,10);
        MOVS     R2,#+10
        LDR.W    R0,??DataTable78
        VLDR     S0,[R0, #+116]
        MOVS     R1,#+2
        MOVS     R0,#+80
        BL       v_MonoRev_Number
// 1189     v_MonoRev_Number(80,3,m_Control.ServoDiff,10);
        MOVS     R2,#+10
        LDR.W    R0,??DataTable78
        VLDR     S0,[R0, #+36]
        MOVS     R1,#+3
        MOVS     R0,#+80
        BL       v_MonoRev_Number
// 1190     v_MonoRev_Number(80,4,m_ImageAbstract.TotalShutterTime,10);
        MOVS     R2,#+10
        LDR.W    R0,??DataTable85
        LDRH     R0,[R0, #+36]
        VMOV     S0,R0
        VCVT.F32.U32 S0,S0
        MOVS     R1,#+4
        MOVS     R0,#+80
        BL       v_MonoRev_Number
// 1191     v_MonoRev_Number(80,5,m_Control.changeSpeedRatio,10);
        MOVS     R2,#+10
        LDR.W    R0,??DataTable78
        VLDR     S0,[R0, #+120]
        MOVS     R1,#+5
        MOVS     R0,#+80
        BL       v_MonoRev_Number
// 1192 }
        POP      {R0,PC}          ;; return
// 1193 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1194 void modeMachine_GiveSpeedMode()
// 1195 {
modeMachine_GiveSpeedMode:
        PUSH     {R7,LR}
// 1196     m_ModeMachine.always_done = modeMachine_ParaShow_Panel;
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable86
        STR      R1,[R0, #+28]
// 1197     m_ModeMachine.button_S1_done = 0;
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
// 1198     
// 1199     m_ModeMachine.button_S3_done = 0;//modeMachine_Move_ServoTesting_UpOutPut;
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
// 1200     m_ModeMachine.button_S2_done = modeMachine_SpeedCutMode;//modeMachine_Move_ServoTesting_DownOutPut;
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable86_1
        STR      R1,[R0, #+4]
// 1201     
// 1202     m_ModeMachine.button_S4_done = modeMachine_GiveSpeedMode_Cut;
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable86_2
        STR      R1,[R0, #+12]
// 1203     m_ModeMachine.button_S5_done = modeMachine_GiveSpeedMode_Add;
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable86_3
        STR      R1,[R0, #+16]
// 1204     m_ModeMachine.button_S6_done = 0;//modeMachine_Running5s_RunMode;
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+20]
// 1205     m_ModeMachine.button_S8_done = modeMachine_ParaSet_TurnOnMode;
        LDR.W    R0,??DataTable72
        LDR.N    R1,??DataTable66_1
        STR      R1,[R0, #+24]
// 1206     
// 1207     v_Panel_DisplayCommandLine(0,3);
        MOVS     R1,#+3
        MOVS     R0,#+0
        BL       v_Panel_DisplayCommandLine
// 1208 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1209 void modeMachine_GiveSpeedMode_Add(){m_Control.GiveSpeed += 10;}
modeMachine_GiveSpeedMode_Add:
        LDR.W    R0,??DataTable78
        LDRH     R0,[R0, #+108]
        ADDS     R0,R0,#+10
        LDR.W    R1,??DataTable78
        STRH     R0,[R1, #+108]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1210 void modeMachine_GiveSpeedMode_Cut(){m_Control.GiveSpeed -= 10;}
modeMachine_GiveSpeedMode_Cut:
        LDR.W    R0,??DataTable78
        LDRH     R0,[R0, #+108]
        SUBS     R0,R0,#+10
        LDR.W    R1,??DataTable78
        STRH     R0,[R1, #+108]
        BX       LR               ;; return
// 1211 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1212 void modeMachine_SpeedCutMode()
// 1213 {
modeMachine_SpeedCutMode:
        PUSH     {R7,LR}
// 1214     m_ModeMachine.always_done = modeMachine_ParaShow_Panel;
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable86
        STR      R1,[R0, #+28]
// 1215     m_ModeMachine.button_S1_done = 0;
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
// 1216     
// 1217     m_ModeMachine.button_S3_done =modeMachine_GiveSpeedMode;//modeMachine_Move_ServoTesting_UpOutPut;
        LDR.W    R0,??DataTable72
        LDR.N    R1,??DataTable68_1
        STR      R1,[R0, #+8]
// 1218     m_ModeMachine.button_S2_done = modeMachine_SpeedCutRatioMode;//modeMachine_Move_ServoTesting_DownOutPut;
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable88
        STR      R1,[R0, #+4]
// 1219     
// 1220     m_ModeMachine.button_S4_done = modeMachine_SpeedCutMode_Cut;
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable88_1
        STR      R1,[R0, #+12]
// 1221     m_ModeMachine.button_S5_done = modeMachine_SpeedCutMode_Add;
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable88_2
        STR      R1,[R0, #+16]
// 1222     m_ModeMachine.button_S6_done = modeMachine_GiveSpeedMode;//modeMachine_Running5s_RunMode;
        LDR.W    R0,??DataTable72
        LDR.N    R1,??DataTable68_1
        STR      R1,[R0, #+20]
// 1223     m_ModeMachine.button_S8_done = modeMachine_ParaSet_TurnOnMode;
        LDR.W    R0,??DataTable72
        LDR.N    R1,??DataTable66_1
        STR      R1,[R0, #+24]
// 1224     
// 1225     v_Panel_DisplayCommandLine(1,3);
        MOVS     R1,#+3
        MOVS     R0,#+1
        BL       v_Panel_DisplayCommandLine
// 1226 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1227 void modeMachine_SpeedCutMode_Add(){m_Control.speedCut += 5;}
modeMachine_SpeedCutMode_Add:
        LDR.W    R0,??DataTable78
        VLDR     S0,[R0, #+112]
        VMOV.F32 S1,#5.0
        VADD.F32 S0,S0,S1
        LDR.W    R0,??DataTable78
        VSTR     S0,[R0, #+112]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1228 void modeMachine_SpeedCutMode_Cut(){m_Control.speedCut -= 5;}
modeMachine_SpeedCutMode_Cut:
        LDR.W    R0,??DataTable78
        VLDR     S0,[R0, #+112]
        VMOV.F32 S1,#-5.0
        VADD.F32 S0,S0,S1
        LDR.W    R0,??DataTable78
        VSTR     S0,[R0, #+112]
        BX       LR               ;; return
// 1229 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1230 void modeMachine_SpeedCutRatioMode()
// 1231 {
modeMachine_SpeedCutRatioMode:
        PUSH     {R7,LR}
// 1232     m_ModeMachine.always_done = modeMachine_ParaShow_Panel;
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable86
        STR      R1,[R0, #+28]
// 1233     m_ModeMachine.button_S1_done = 0;
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
// 1234     
// 1235     m_ModeMachine.button_S3_done = modeMachine_SpeedCutMode;//modeMachine_Move_ServoTesting_UpOutPut;
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable86_1
        STR      R1,[R0, #+8]
// 1236     m_ModeMachine.button_S2_done = modeMachine_ServoDiffMode;//modeMachine_Move_ServoTesting_DownOutPut;
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable89
        STR      R1,[R0, #+4]
// 1237     
// 1238     m_ModeMachine.button_S4_done = modeMachine_SpeedCutRatioMode_Cut;
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable89_1
        STR      R1,[R0, #+12]
// 1239     m_ModeMachine.button_S5_done = modeMachine_SpeedCutRatioMode_Add;
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable89_2
        STR      R1,[R0, #+16]
// 1240     m_ModeMachine.button_S6_done = modeMachine_GiveSpeedMode;//modeMachine_Running5s_RunMode;
        LDR.W    R0,??DataTable72
        LDR.N    R1,??DataTable68_1
        STR      R1,[R0, #+20]
// 1241     m_ModeMachine.button_S8_done = modeMachine_ParaSet_TurnOnMode;
        LDR.W    R0,??DataTable72
        LDR.N    R1,??DataTable66_1
        STR      R1,[R0, #+24]
// 1242     
// 1243     v_Panel_DisplayCommandLine(2,3);
        MOVS     R1,#+3
        MOVS     R0,#+2
        BL       v_Panel_DisplayCommandLine
// 1244 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1245 void modeMachine_SpeedCutRatioMode_Add(){m_Control.speedCutRatio += 0.1f;}
modeMachine_SpeedCutRatioMode_Add:
        LDR.W    R0,??DataTable78
        VLDR     S0,[R0, #+116]
        VLDR.W   S1,??DataTable65  ;; 0x3dcccccd
        VADD.F32 S0,S0,S1
        LDR.W    R0,??DataTable78
        VSTR     S0,[R0, #+116]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1246 void modeMachine_SpeedCutRatioMode_Cut(){m_Control.speedCutRatio -= 0.1f;}
modeMachine_SpeedCutRatioMode_Cut:
        LDR.W    R0,??DataTable78
        VLDR     S0,[R0, #+116]
        VLDR.W   S1,??DataTable65_1  ;; 0xbdcccccd
        VADD.F32 S0,S0,S1
        LDR.W    R0,??DataTable78
        VSTR     S0,[R0, #+116]
        BX       LR               ;; return
// 1247 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1248 void modeMachine_ServoDiffMode()
// 1249 {
modeMachine_ServoDiffMode:
        PUSH     {R7,LR}
// 1250     m_ModeMachine.always_done = modeMachine_ParaShow_Panel;
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable86
        STR      R1,[R0, #+28]
// 1251     m_ModeMachine.button_S1_done = 0;
        LDR.W    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
// 1252     
// 1253     m_ModeMachine.button_S3_done = modeMachine_SpeedCutRatioMode;//modeMachine_Move_ServoTesting_UpOutPut;
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable88
        STR      R1,[R0, #+8]
// 1254     m_ModeMachine.button_S2_done = modeMachine_ShutterWidthChange;//modeMachine_Move_ServoTesting_DownOutPut;
        LDR.W    R0,??DataTable72
        LDR.W    R1,??DataTable91
        STR      R1,[R0, #+4]
// 1255     
// 1256     m_ModeMachine.button_S5_done = modeMachine_ServoDiff_Add;
        LDR.N    R0,??DataTable72
        LDR.W    R1,??DataTable92
        STR      R1,[R0, #+16]
// 1257     m_ModeMachine.button_S4_done = modeMachine_ServoDiff_Cut;
        LDR.N    R0,??DataTable72
        LDR.W    R1,??DataTable92_1
        STR      R1,[R0, #+12]
// 1258     
// 1259     m_ModeMachine.button_S6_done = modeMachine_GiveSpeedMode;//modeMachine_Running5s_RunMode;
        LDR.N    R0,??DataTable72
        LDR.N    R1,??DataTable68_1
        STR      R1,[R0, #+20]
// 1260     m_ModeMachine.button_S8_done = modeMachine_ParaSet_TurnOnMode;
        LDR.N    R0,??DataTable72
        LDR.N    R1,??DataTable66_1
        STR      R1,[R0, #+24]
// 1261     
// 1262     v_Panel_DisplayCommandLine(3,3);
        MOVS     R1,#+3
        MOVS     R0,#+3
        BL       v_Panel_DisplayCommandLine
// 1263 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1264 void modeMachine_ServoDiff_Add()
// 1265 {m_Control.ServoDiff += 0.1;}
modeMachine_ServoDiff_Add:
        PUSH     {R7,LR}
        LDR.W    R0,??DataTable78
        LDR      R0,[R0, #+36]
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable92_2  ;; 0x9999999a
        LDR.W    R3,??DataTable92_3  ;; 0x3fb99999
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable78
        STR      R0,[R1, #+36]
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1266 void modeMachine_ServoDiff_Cut()
// 1267 {m_Control.ServoDiff -= 0.1;if(m_Control.ServoDiff < 0.0f){m_Control.ServoDiff = 0.0f;}}
modeMachine_ServoDiff_Cut:
        PUSH     {R7,LR}
        LDR.W    R0,??DataTable78
        LDR      R0,[R0, #+36]
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable92_2  ;; 0x9999999a
        LDR.W    R3,??DataTable93  ;; 0xbfb99999
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable78
        STR      R0,[R1, #+36]
        LDR.W    R0,??DataTable78
        VLDR     S0,[R0, #+36]
        VCMP.F32 S0,#0.0
        FMSTAT   
        BPL.N    ??modeMachine_ServoDiff_Cut_0
        LDR.W    R0,??DataTable78
        MOVS     R1,#+0
        STR      R1,[R0, #+36]
??modeMachine_ServoDiff_Cut_0:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable59:
        DC32     modeMachine_Always_ImageOutput

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable59_1:
        DC32     v_UartTxNeedtx

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable59_2:
        DC32     modeMachine_ImageBeholderTesting_TurnOnMode
// 1268 
// 1269 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1270 void modeMachine_ShutterWidthChange()
// 1271 {
modeMachine_ShutterWidthChange:
        PUSH     {R7,LR}
// 1272     m_ModeMachine.always_done = modeMachine_ParaShow_Panel;
        LDR.N    R0,??DataTable72
        LDR.W    R1,??DataTable86
        STR      R1,[R0, #+28]
// 1273     m_ModeMachine.button_S1_done = 0;
        LDR.N    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
// 1274     
// 1275     m_ModeMachine.button_S3_done = modeMachine_ServoDiffMode;//modeMachine_Move_ServoTesting_UpOutPut;
        LDR.N    R0,??DataTable72
        LDR.W    R1,??DataTable89
        STR      R1,[R0, #+8]
// 1276     m_ModeMachine.button_S2_done = modeMachine_SpeedChangeChange;//modeMachine_Move_ServoTesting_DownOutPut;
        LDR.N    R0,??DataTable72
        LDR.W    R1,??DataTable93_1
        STR      R1,[R0, #+4]
// 1277     
// 1278     m_ModeMachine.button_S4_done = modeMachine_ShutterWidthChange_Cut;
        LDR.N    R0,??DataTable72
        LDR.W    R1,??DataTable93_2
        STR      R1,[R0, #+12]
// 1279     m_ModeMachine.button_S5_done = modeMachine_ShutterWidthChange_Add;
        LDR.N    R0,??DataTable72
        LDR.W    R1,??DataTable93_3
        STR      R1,[R0, #+16]
// 1280     m_ModeMachine.button_S6_done = modeMachine_GiveSpeedMode;//modeMachine_Running5s_RunMode;
        LDR.N    R0,??DataTable72
        LDR.N    R1,??DataTable68_1
        STR      R1,[R0, #+20]
// 1281     m_ModeMachine.button_S8_done = modeMachine_ParaSet_TurnOnMode;
        LDR.N    R0,??DataTable72
        LDR.N    R1,??DataTable66_1
        STR      R1,[R0, #+24]
// 1282     
// 1283     v_Panel_DisplayCommandLine(4,3);
        MOVS     R1,#+3
        MOVS     R0,#+4
        BL       v_Panel_DisplayCommandLine
// 1284 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable60:
        DC32     modeMachine_StartCarRunning_Paraments

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1285 void modeMachine_ShutterWidthChange_Add(){m_ImageAbstract.TotalShutterTime += 10;}
modeMachine_ShutterWidthChange_Add:
        LDR.W    R0,??DataTable85
        LDRH     R0,[R0, #+36]
        ADDS     R0,R0,#+10
        LDR.W    R1,??DataTable85
        STRH     R0,[R1, #+36]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable61:
        DC32     modeMachine_Move2testingMode

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1286 void modeMachine_ShutterWidthChange_Cut(){m_ImageAbstract.TotalShutterTime -= 10;}
modeMachine_ShutterWidthChange_Cut:
        LDR.W    R0,??DataTable85
        LDRH     R0,[R0, #+36]
        SUBS     R0,R0,#+10
        LDR.W    R1,??DataTable85
        STRH     R0,[R1, #+36]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable62:
        DC32     modeMachine_ImageBeholder_ReStart

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable62_1:
        DC32     modeMachine_Testing_TurnOnMode

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable62_2:
        DC32     modeMachine_RunningSet_TurnOnMode

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable62_3:
        DC32     modeMachine_ImageBeholderTesting_TestingMode
// 1287 
// 1288 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1289 void modeMachine_SpeedChangeChange()
// 1290 {
modeMachine_SpeedChangeChange:
        PUSH     {R7,LR}
// 1291     m_ModeMachine.always_done = modeMachine_ParaShow_Panel;
        LDR.N    R0,??DataTable72
        LDR.W    R1,??DataTable86
        STR      R1,[R0, #+28]
// 1292     m_ModeMachine.button_S1_done = 0;
        LDR.N    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
// 1293     
// 1294     m_ModeMachine.button_S3_done = modeMachine_ShutterWidthChange;//modeMachine_Move_ServoTesting_UpOutPut;
        LDR.N    R0,??DataTable72
        LDR.W    R1,??DataTable91
        STR      R1,[R0, #+8]
// 1295     m_ModeMachine.button_S2_done = 0;//modeMachine_Move_ServoTesting_DownOutPut;
        LDR.N    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
// 1296     
// 1297     m_ModeMachine.button_S4_done = modeMachine_SpeedChangeChange_Cut;
        LDR.N    R0,??DataTable72
        LDR.W    R1,??DataTable94_1
        STR      R1,[R0, #+12]
// 1298     m_ModeMachine.button_S5_done = modeMachine_SpeedChangeChange_Add;
        LDR.N    R0,??DataTable72
        LDR.W    R1,??DataTable95
        STR      R1,[R0, #+16]
// 1299     m_ModeMachine.button_S6_done = modeMachine_GiveSpeedMode;//modeMachine_Running5s_RunMode;
        LDR.N    R0,??DataTable72
        LDR.N    R1,??DataTable68_1
        STR      R1,[R0, #+20]
// 1300     m_ModeMachine.button_S8_done = modeMachine_ParaSet_TurnOnMode;
        LDR.N    R0,??DataTable72
        LDR.N    R1,??DataTable66_1
        STR      R1,[R0, #+24]
// 1301     
// 1302     v_Panel_DisplayCommandLine(5,3);
        MOVS     R1,#+3
        MOVS     R0,#+5
        BL       v_Panel_DisplayCommandLine
// 1303 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1304 void modeMachine_SpeedChangeChange_Add(){m_Control.changeSpeedRatio += 10;}
modeMachine_SpeedChangeChange_Add:
        LDR.W    R0,??DataTable78
        VLDR     S0,[R0, #+120]
        VMOV.F32 S1,#10.0
        VADD.F32 S0,S0,S1
        LDR.W    R0,??DataTable78
        VSTR     S0,[R0, #+120]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable64:
        DC32     modeMachine_ThirdParaments_Set

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1305 void modeMachine_SpeedChangeChange_Cut(){m_Control.changeSpeedRatio -= 10;}
modeMachine_SpeedChangeChange_Cut:
        LDR.W    R0,??DataTable78
        VLDR     S0,[R0, #+120]
        VMOV.F32 S1,#-10.0
        VADD.F32 S0,S0,S1
        LDR.W    R0,??DataTable78
        VSTR     S0,[R0, #+120]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable65:
        DC32     0x3dcccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable65_1:
        DC32     0xbdcccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable65_2:
        DC32     modeMachine_TotleShutter_TurnOnMode

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable65_3:
        DC32     modeMachine_Running5s_RunMode
// 1306 
// 1307 
// 1308 
// 1309 
// 1310 
// 1311 
// 1312 
// 1313 
// 1314 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1315 void modeMachine_TotleShutterChangeMode()
// 1316 {
// 1317     m_ModeMachine.always_done = modeMachine_Always_ImageOutput;
modeMachine_TotleShutterChangeMode:
        LDR.W    R0,??DataTable107
        LDR.W    R1,??DataTable95_1
        STR      R1,[R0, #+28]
// 1318     m_ModeMachine.button_S1_done = 0;
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
// 1319     
// 1320     m_ModeMachine.button_S3_done = modeMachine_TotleShutter_add;//modeMachine_Move_ServoTesting_UpOutPut;
        LDR.W    R0,??DataTable107
        LDR.W    R1,??DataTable96
        STR      R1,[R0, #+8]
// 1321     m_ModeMachine.button_S2_done = modeMachine_TotleShutter_cut;//modeMachine_Move_ServoTesting_DownOutPut;
        LDR.W    R0,??DataTable107
        LDR.W    R1,??DataTable96_1
        STR      R1,[R0, #+4]
// 1322     
// 1323     
// 1324     m_ModeMachine.button_S5_done = modeMachine_ServoDiffAdd;
        LDR.W    R0,??DataTable107
        LDR.W    R1,??DataTable96_2
        STR      R1,[R0, #+16]
// 1325     m_ModeMachine.button_S4_done = modeMachine_ServoDiffCut;
        LDR.W    R0,??DataTable107
        LDR.W    R1,??DataTable96_3
        STR      R1,[R0, #+12]
// 1326     
// 1327     m_ModeMachine.button_S6_done = modeMachine_TotleShutter_TurnOnMode;//modeMachine_Running5s_RunMode;
        LDR.W    R0,??DataTable107
        LDR.W    R1,??DataTable96_4
        STR      R1,[R0, #+20]
// 1328     m_ModeMachine.button_S8_done = 0;
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
// 1329 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable66:
        DC32     modeMachine_BlackBar2Littele

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable66_1:
        DC32     modeMachine_ParaSet_TurnOnMode

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable66_2:
        DC32     modeMachine_TotleShutterChangeMode
// 1330 
// 1331 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1332 void modeMachine_ServoDiffAdd()
// 1333 {
modeMachine_ServoDiffAdd:
        PUSH     {R7,LR}
// 1334     m_Control.ServoDiff += 0.1;
        LDR.N    R0,??DataTable78
        LDR      R0,[R0, #+36]
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable92_2  ;; 0x9999999a
        LDR.W    R3,??DataTable92_3  ;; 0x3fb99999
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable78
        STR      R0,[R1, #+36]
// 1335     v_MonoRev_Number(0,1,m_Control.ServoDiff,10);
        MOVS     R2,#+10
        LDR.N    R0,??DataTable78
        VLDR     S0,[R0, #+36]
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       v_MonoRev_Number
// 1336 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable67:
        DC32     modeMachine_RtAngel

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1337 void modeMachine_ServoDiffCut()
// 1338 {
modeMachine_ServoDiffCut:
        PUSH     {R7,LR}
// 1339     m_Control.ServoDiff -= 0.1;
        LDR.N    R0,??DataTable78
        LDR      R0,[R0, #+36]
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable92_2  ;; 0x9999999a
        LDR.W    R3,??DataTable93  ;; 0xbfb99999
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable78
        STR      R0,[R1, #+36]
// 1340     v_MonoRev_Number(0,1,m_Control.ServoDiff,10);
        MOVS     R2,#+10
        LDR.N    R0,??DataTable78
        VLDR     S0,[R0, #+36]
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       v_MonoRev_Number
// 1341 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable68:
        DC32     modeMachine_MotorPID_TurnOnMode

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable68_1:
        DC32     modeMachine_GiveSpeedMode

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1342 void modeMachine_TotleShutter_add()
// 1343 {
modeMachine_TotleShutter_add:
        PUSH     {R7,LR}
// 1344     m_ImageAbstract.TotalShutterTime += 10;
        LDR.W    R0,??DataTable85
        LDRH     R0,[R0, #+36]
        ADDS     R0,R0,#+10
        LDR.W    R1,??DataTable85
        STRH     R0,[R1, #+36]
// 1345     v_setShutterTime(m_ImageAbstract.TotalShutterTime);
        LDR.W    R0,??DataTable85
        LDRH     R0,[R0, #+36]
        BL       v_setShutterTime
// 1346     v_MonoRev_Number(0,0,m_ImageAbstract.TotalShutterTime,10);
        MOVS     R2,#+10
        LDR.W    R0,??DataTable85
        LDRH     R0,[R0, #+36]
        VMOV     S0,R0
        VCVT.F32.U32 S0,S0
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       v_MonoRev_Number
// 1347 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1348 void modeMachine_TotleShutter_cut()
// 1349 {
modeMachine_TotleShutter_cut:
        PUSH     {R7,LR}
// 1350     m_ImageAbstract.TotalShutterTime -= 10;
        LDR.W    R0,??DataTable85
        LDRH     R0,[R0, #+36]
        SUBS     R0,R0,#+10
        LDR.W    R1,??DataTable85
        STRH     R0,[R1, #+36]
// 1351     v_setShutterTime(m_ImageAbstract.TotalShutterTime);
        LDR.W    R0,??DataTable85
        LDRH     R0,[R0, #+36]
        BL       v_setShutterTime
// 1352     v_MonoRev_Number(0,0,m_ImageAbstract.TotalShutterTime,10);
        MOVS     R2,#+10
        LDR.W    R0,??DataTable85
        LDRH     R0,[R0, #+36]
        VMOV     S0,R0
        VCVT.F32.U32 S0,S0
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       v_MonoRev_Number
// 1353 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable70:
        DC32     modeMachine_ServoFunction_TurnOnMode

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable70_1:
        DC32     modeMachine_MotorPID_P_Change
// 1354 
// 1355 
// 1356 
// 1357 
// 1358 /*
// 1359 void modeMachine_SpeedSetMode()//ËÙ¶ÈÉè¶¨¿ò¼Ü
// 1360 {
// 1361     m_ModeMachine.always_done = 0;
// 1362     m_ModeMachine.button_S1_done = 0;
// 1363     
// 1364     m_ModeMachine.button_S3_done = 0;//modeMachine_Move_ServoTesting_UpOutPut;
// 1365     m_ModeMachine.button_S2_done = 0;//modeMachine_Move_ServoTesting_DownOutPut;
// 1366     
// 1367     m_ModeMachine.button_S5_done = 0;
// 1368     m_ModeMachine.button_S4_done = 0;
// 1369     
// 1370     
// 1371     
// 1372     m_ModeMachine.button_S6_done = 0;//modeMachine_Running5s_RunMode;
// 1373     m_ModeMachine.button_S8_done = modeMachine_SpeedSet_TurnOnMode;
// 1374 }
// 1375 */
// 1376 /*
// 1377 void modeMachine_SpeedShow()
// 1378 {
// 1379     modeMachine_Always_ImageOutput();//Õ¹Ê¾Í¼Ïñ
// 1380     v_MonoRev_Number(0,0,m_Control.GiveSpeed,10);
// 1381     v_MonoRev_Number(0,1,m_Control.speedCut,10);
// 1382 }
// 1383 void modeMachine_SpeedAddMode()
// 1384 {
// 1385     m_Control.GiveSpeed += 10;
// 1386 }
// 1387 
// 1388 void modeMachine_SpeedCutMode()
// 1389 {
// 1390     m_Control.GiveSpeed -= 10;
// 1391     if(m_Control.GiveSpeed <= 200)
// 1392     {
// 1393         m_Control.GiveSpeed = 200;
// 1394     }
// 1395 }
// 1396 void modeMachine_SpeedCutMachine_add()
// 1397 {
// 1398     m_Control.speedCut += 1.f;
// 1399 }
// 1400 void modeMachine_SpeedCutMachine_cut()
// 1401 {
// 1402     m_Control.speedCut -= 1.f;
// 1403 }
// 1404 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1405 void modeMachine_Running5s_TimeSetMode()
// 1406 {
// 1407     m_Control.starting_time = m_system.timer + 10000;
modeMachine_Running5s_TimeSetMode:
        LDR.N    R0,??DataTable78
        LDR.W    R1,??DataTable102
        LDR      R1,[R1, #+0]
        ADD      R1,R1,#+9984
        ADDS     R1,R1,#+16
        STR      R1,[R0, #+28]
// 1408     m_Control.runningEnd_time = m_Control.starting_time + 5000;
        LDR.N    R0,??DataTable78
        LDR      R0,[R0, #+28]
        ADD      R0,R0,#+4864
        ADDS     R0,R0,#+136
        LDR.N    R1,??DataTable78
        STR      R0,[R1, #+24]
// 1409     
// 1410     m_ModeMachine.always_done = 0;m_ModeMachine.button_S1_done = 0;
        LDR.N    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+28]
        LDR.N    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
// 1411     
// 1412     m_ModeMachine.button_S3_done = 0;//modeMachine_Move_ServoTesting_UpOutPut;
        LDR.N    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
// 1413     m_ModeMachine.button_S2_done = 0;//modeMachine_Move_ServoTesting_DownOutPut;
        LDR.N    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
// 1414     
// 1415     m_ModeMachine.button_S4_done = 0;m_ModeMachine.button_S5_done = 0;m_ModeMachine.button_S6_done = 0;
        LDR.N    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
        LDR.N    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
        LDR.N    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+20]
// 1416     m_ModeMachine.button_S8_done = modeMachine_RunningSet_TurnOnMode;
        LDR.N    R0,??DataTable72
        LDR.W    R1,??DataTable112
        STR      R1,[R0, #+24]
// 1417 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable71:
        DC32     modeMachine_MotorPID_I_Change

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable71_1:
        DC32     modeMachine_Motor_P_Add

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable71_2:
        DC32     modeMachine_Motor_P_Cut

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1418 void modeMachine_Running5s_RunMode()//=>½øÈë
// 1419 {
modeMachine_Running5s_RunMode:
        PUSH     {R7,LR}
// 1420     m_ModeMachine.always_done = modeMachine_Always_ImageOutput;m_ModeMachine.button_S1_done = 0;
        LDR.N    R0,??DataTable72
        LDR.W    R1,??DataTable95_1
        STR      R1,[R0, #+28]
        LDR.N    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
// 1421     
// 1422     m_ModeMachine.button_S3_done = 0;//modeMachine_Move_ServoTesting_UpOutPut;
        LDR.N    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
// 1423     m_ModeMachine.button_S2_done = modeMachine_Running15s_RunMode;//modeMachine_Move_ServoTesting_DownOutPut;
        LDR.N    R0,??DataTable72
        LDR.W    R1,??DataTable107_1
        STR      R1,[R0, #+4]
// 1424     
// 1425     m_ModeMachine.button_S4_done = 0;m_ModeMachine.button_S5_done = 0;m_ModeMachine.button_S6_done = modeMachine_Running5s_TimeSetMode;
        LDR.N    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
        LDR.N    R0,??DataTable72
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
        LDR.N    R0,??DataTable72
        LDR.W    R1,??DataTable107_2
        STR      R1,[R0, #+20]
// 1426     m_ModeMachine.button_S8_done = modeMachine_RunningSet_TurnOnMode;
        LDR.N    R0,??DataTable72
        LDR.W    R1,??DataTable112
        STR      R1,[R0, #+24]
// 1427     
// 1428     v_Panel_DisplayCommandLine(0,2);
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       v_Panel_DisplayCommandLine
// 1429 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable72:
        DC32     m_ModeMachine

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable72_1:
        DC32     modeMachine_MotorPID_D_Change
// 1430 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1431 void modeMachine_Running15s_TimeSetMode()
// 1432 {
// 1433     m_Control.starting_time = m_system.timer + 10000;
modeMachine_Running15s_TimeSetMode:
        LDR.N    R0,??DataTable78
        LDR.W    R1,??DataTable102
        LDR      R1,[R1, #+0]
        ADD      R1,R1,#+9984
        ADDS     R1,R1,#+16
        STR      R1,[R0, #+28]
// 1434     m_Control.runningEnd_time = m_Control.starting_time + 15000;
        LDR.N    R0,??DataTable78
        LDR      R0,[R0, #+28]
        ADD      R0,R0,#+14848
        ADDS     R0,R0,#+152
        LDR.N    R1,??DataTable78
        STR      R0,[R1, #+24]
// 1435     
// 1436     m_ModeMachine.always_done = 0;m_ModeMachine.button_S1_done = 0;
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+28]
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
// 1437     
// 1438     m_ModeMachine.button_S3_done = 0;//modeMachine_Move_ServoTesting_UpOutPut;
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
// 1439     m_ModeMachine.button_S2_done = 0;//modeMachine_Move_ServoTesting_DownOutPut;
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
// 1440     
// 1441     m_ModeMachine.button_S4_done = 0;m_ModeMachine.button_S5_done = 0;m_ModeMachine.button_S6_done = 0;
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+20]
// 1442     m_ModeMachine.button_S8_done = modeMachine_RunningSet_TurnOnMode;
        LDR.W    R0,??DataTable107
        LDR.W    R1,??DataTable112
        STR      R1,[R0, #+24]
// 1443 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable73:
        DC32     modeMachine_Motor_I_Add

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable73_1:
        DC32     modeMachine_Motor_I_Cut

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1444 void modeMachine_Running15s_RunMode()//=>½øÈë
// 1445 {
modeMachine_Running15s_RunMode:
        PUSH     {R7,LR}
// 1446     m_ModeMachine.always_done = modeMachine_Always_ImageOutput;m_ModeMachine.button_S1_done = 0;
        LDR.W    R0,??DataTable107
        LDR.W    R1,??DataTable95_1
        STR      R1,[R0, #+28]
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
// 1447     
// 1448     m_ModeMachine.button_S3_done = modeMachine_Running5s_RunMode;//modeMachine_Move_ServoTesting_UpOutPut;
        LDR.W    R0,??DataTable107
        LDR.W    R1,??DataTable108
        STR      R1,[R0, #+8]
// 1449     m_ModeMachine.button_S2_done = modeMachine_Running30s_RunMode;//modeMachine_Move_ServoTesting_DownOutPut;
        LDR.W    R0,??DataTable107
        LDR.W    R1,??DataTable108_1
        STR      R1,[R0, #+4]
// 1450     
// 1451     m_ModeMachine.button_S4_done = 0;m_ModeMachine.button_S5_done = 0;
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
// 1452     m_ModeMachine.button_S6_done = modeMachine_Running15s_TimeSetMode;
        LDR.W    R0,??DataTable107
        LDR.W    R1,??DataTable108_2
        STR      R1,[R0, #+20]
// 1453     m_ModeMachine.button_S8_done = modeMachine_RunningSet_TurnOnMode;
        LDR.W    R0,??DataTable107
        LDR.W    R1,??DataTable112
        STR      R1,[R0, #+24]
// 1454     
// 1455     v_Panel_DisplayCommandLine(1,2);
        MOVS     R1,#+2
        MOVS     R0,#+1
        BL       v_Panel_DisplayCommandLine
// 1456 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable74:
        DC32     modeMachine_MotorPID_Used_Last

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable74_1:
        DC32     modeMachine_Motor_D_Add

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable74_2:
        DC32     modeMachine_Motor_D_Cut
// 1457 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1458 void modeMachine_Running30s_TimeSetMode()
// 1459 {
// 1460     m_Control.starting_time = m_system.timer + 5000;
modeMachine_Running30s_TimeSetMode:
        LDR.N    R0,??DataTable78
        LDR.W    R1,??DataTable102
        LDR      R1,[R1, #+0]
        ADD      R1,R1,#+4864
        ADDS     R1,R1,#+136
        STR      R1,[R0, #+28]
// 1461     m_Control.runningEnd_time = m_Control.starting_time + 30000;
        LDR.N    R0,??DataTable78
        LDR      R0,[R0, #+28]
        ADD      R0,R0,#+29952
        ADDS     R0,R0,#+48
        LDR.N    R1,??DataTable78
        STR      R0,[R1, #+24]
// 1462     
// 1463     m_ModeMachine.always_done = 0;m_ModeMachine.button_S1_done = 0;
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+28]
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
// 1464     
// 1465     m_ModeMachine.button_S3_done = 0;//modeMachine_Move_ServoTesting_UpOutPut;
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
// 1466     m_ModeMachine.button_S2_done = 0;//modeMachine_Move_ServoTesting_DownOutPut;
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
// 1467     
// 1468     m_ModeMachine.button_S4_done = 0;m_ModeMachine.button_S5_done = 0;m_ModeMachine.button_S6_done = 0;
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+20]
// 1469     m_ModeMachine.button_S8_done = modeMachine_RunningSet_TurnOnMode;
        LDR.W    R0,??DataTable107
        LDR.W    R1,??DataTable112
        STR      R1,[R0, #+24]
// 1470 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1471 void modeMachine_Running30s_RunMode()//=>½øÈë
// 1472 {
modeMachine_Running30s_RunMode:
        PUSH     {R7,LR}
// 1473     m_ModeMachine.always_done = modeMachine_Always_ImageOutput;m_ModeMachine.button_S1_done = 0;
        LDR.W    R0,??DataTable107
        LDR.W    R1,??DataTable95_1
        STR      R1,[R0, #+28]
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
// 1474     
// 1475     m_ModeMachine.button_S3_done = modeMachine_Running15s_RunMode;//modeMachine_Move_ServoTesting_UpOutPut;
        LDR.W    R0,??DataTable107
        LDR.W    R1,??DataTable107_1
        STR      R1,[R0, #+8]
// 1476     m_ModeMachine.button_S2_done = modeMachine_RunningAlways_RunMode;//modeMachine_Move_ServoTesting_DownOutPut;
        LDR.W    R0,??DataTable107
        LDR.W    R1,??DataTable109_1
        STR      R1,[R0, #+4]
// 1477     
// 1478     m_ModeMachine.button_S4_done = 0;m_ModeMachine.button_S5_done = 0;
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
// 1479     m_ModeMachine.button_S6_done = modeMachine_Running30s_TimeSetMode;
        LDR.W    R0,??DataTable107
        LDR.W    R1,??DataTable109_2
        STR      R1,[R0, #+20]
// 1480     m_ModeMachine.button_S8_done = modeMachine_RunningSet_TurnOnMode;
        LDR.W    R0,??DataTable107
        LDR.W    R1,??DataTable112
        STR      R1,[R0, #+24]
// 1481     
// 1482     v_Panel_DisplayCommandLine(2,2);
        MOVS     R1,#+2
        MOVS     R0,#+2
        BL       v_Panel_DisplayCommandLine
// 1483 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable76:
        DC32     modeMachine_ThirdParaments_Viewer

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// 1484 void (*vPtr_CheckLightingChaser)(void);
vPtr_CheckLightingChaser:
        DS8 4

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1485 void modeMachine_RunningLight_Check()
// 1486 {
modeMachine_RunningLight_Check:
        PUSH     {R7,LR}
// 1487     v_BuzzerBeepSet(100);
        MOVS     R0,#+100
        BL       v_BuzzerBeepSet
// 1488     if((m_Control.LightChaserLogic_time_cut_1 != m_Control.LightChaserLogic)&&(0 == m_Control.LightChaserLogic))
        LDR.N    R0,??DataTable78
        LDRB     R0,[R0, #+6]
        LDR.N    R1,??DataTable78
        LDRB     R1,[R1, #+7]
        CMP      R0,R1
        BEQ.N    ??modeMachine_RunningLight_Check_0
        LDR.N    R0,??DataTable78
        LDRB     R0,[R0, #+7]
        CMP      R0,#+0
        BNE.N    ??modeMachine_RunningLight_Check_0
// 1489     {
// 1490         m_Control.starting_time = m_system.timer + 0;
        LDR.N    R0,??DataTable78
        LDR.W    R1,??DataTable102
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+28]
// 1491         m_Control.runningEnd_time = m_Control.starting_time + 60000;
        LDR.N    R0,??DataTable78
        LDR      R0,[R0, #+28]
        ADD      R0,R0,#+59904
        ADDS     R0,R0,#+96
        LDR.N    R1,??DataTable78
        STR      R0,[R1, #+24]
// 1492         vPtr_CheckLightingChaser = modeMachine_RunningLight_Waiting;
        LDR.W    R0,??DataTable110_1
        LDR.W    R1,??DataTable117
        STR      R1,[R0, #+0]
// 1493     }
// 1494 }
??modeMachine_RunningLight_Check_0:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1495 void modeMachine_RunningLight_Waiting()
// 1496 {
// 1497     if(m_system.timer > m_Control.starting_time + 5000)
modeMachine_RunningLight_Waiting:
        LDR.N    R0,??DataTable78
        LDR      R0,[R0, #+28]
        ADD      R0,R0,#+4864
        ADDS     R0,R0,#+136
        LDR.W    R1,??DataTable102
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BCS.N    ??modeMachine_RunningLight_Waiting_0
// 1498     {
// 1499         vPtr_CheckLightingChaser = modeMachine_RunningDark_Check;
        LDR.W    R0,??DataTable110_1
        LDR.W    R1,??DataTable117_1
        STR      R1,[R0, #+0]
// 1500     }
// 1501 }
??modeMachine_RunningLight_Waiting_0:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable78:
        DC32     m_Control

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1502 void modeMachine_RunningDark_Check()//ºÚ¼ì²â=>¼ì²âÁÁ´æÔÚÊ±¼ä0
// 1503 {//2ms
// 1504     if((m_Control.LightChaserLogic_time_cut_1 != m_Control.LightChaserLogic)&&(0 == m_Control.LightChaserLogic)
// 1505      /*&&(m_CarRunningMode.RunningCarTimeCounter >= 0)*/&&(0 == m_CarRunningMode.isCloseTheLightingStop))
modeMachine_RunningDark_Check:
        LDR.W    R0,??DataTable111
        LDRB     R0,[R0, #+6]
        LDR.W    R1,??DataTable111
        LDRB     R1,[R1, #+7]
        CMP      R0,R1
        BEQ.N    ??modeMachine_RunningDark_Check_0
        LDR.W    R0,??DataTable111
        LDRB     R0,[R0, #+7]
        CMP      R0,#+0
        BNE.N    ??modeMachine_RunningDark_Check_0
        LDR.W    R0,??DataTable117_2
        LDRB     R0,[R0, #+12]
        CMP      R0,#+0
        BNE.N    ??modeMachine_RunningDark_Check_0
// 1506     {//ÒªÇó´óÓÚ1s
// 1507         //m_Control.starting_time = m_system.timer;
// 1508         m_Control.runningEnd_time = m_system.timer;
        LDR.W    R0,??DataTable111
        LDR.W    R1,??DataTable102
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+24]
// 1509         vPtr_CheckLightingChaser = 0;
        LDR.W    R0,??DataTable110_1
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
// 1510         m_CarRunningMode.RunningCarTimeCounter = 0;
        LDR.W    R0,??DataTable117_2
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
// 1511     }
// 1512     
// 1513     if(1 == m_Control.LightChaserLogic)//µÆÊÇÁÁµÄ
??modeMachine_RunningDark_Check_0:
        LDR.W    R0,??DataTable111
        LDRB     R0,[R0, #+7]
        CMP      R0,#+1
        BNE.N    ??modeMachine_RunningDark_Check_1
// 1514     {
// 1515         m_CarRunningMode.RunningCarTimeCounter ++;
        LDR.W    R0,??DataTable117_2
        LDR      R0,[R0, #+8]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable117_2
        STR      R0,[R1, #+8]
        B.N      ??modeMachine_RunningDark_Check_2
// 1516     }
// 1517     else
// 1518     {
// 1519         m_CarRunningMode.RunningCarTimeCounter = 0;
??modeMachine_RunningDark_Check_1:
        LDR.W    R0,??DataTable117_2
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
// 1520     }
// 1521 }
??modeMachine_RunningDark_Check_2:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1522 void modeMachine_RunningLight_TimeSetMode()
// 1523 {
modeMachine_RunningLight_TimeSetMode:
        PUSH     {R7,LR}
// 1524     v_BuzzerBeepSet(1000);
        MOV      R0,#+1000
        BL       v_BuzzerBeepSet
// 1525     vPtr_CheckLightingChaser = modeMachine_RunningLight_Check;
        LDR.W    R0,??DataTable110_1
        LDR.W    R1,??DataTable117_3
        STR      R1,[R0, #+0]
// 1526 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable80:
        DC32     modeMachine_set_speed_max_min_TurnOnMode

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable80_1:
        DC32     modeMachine_ServoFunction_Average

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1527 void modeMachine_RunningLight_RunMode()
// 1528 {
modeMachine_RunningLight_RunMode:
        PUSH     {R7,LR}
// 1529     m_ModeMachine.always_done = modeMachine_Always_ImageOutput;
        LDR.W    R0,??DataTable107
        LDR.W    R1,??DataTable95_1
        STR      R1,[R0, #+28]
// 1530 
// 1531     UpDownSureBack(modeMachine_RunningAlways_RunMode,
// 1532                    0,
// 1533                    modeMachine_RunningLight_TimeSetMode,
// 1534                    modeMachine_RunningSet_TurnOnMode);
        LDR.W    R0,??DataTable107
        LDR.W    R1,??DataTable109_1
        STR      R1,[R0, #+8]
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        LDR.W    R0,??DataTable107
        LDR.W    R1,??DataTable112_1
        STR      R1,[R0, #+20]
        LDR.W    R0,??DataTable107
        LDR.W    R1,??DataTable112
        STR      R1,[R0, #+24]
// 1535     
// 1536     v_Panel_DisplayCommandLine(4,2);
        MOVS     R1,#+2
        MOVS     R0,#+4
        BL       v_Panel_DisplayCommandLine
// 1537 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable81:
        DC32     modeMachine_ServoFunction_Optimization
// 1538 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1539 void modeMachine_RunningAlways_TimeSetMode()
// 1540 {
// 1541     m_Control.starting_time = m_system.timer + 5000;
modeMachine_RunningAlways_TimeSetMode:
        LDR.W    R0,??DataTable111
        LDR.W    R1,??DataTable102
        LDR      R1,[R1, #+0]
        ADD      R1,R1,#+4864
        ADDS     R1,R1,#+136
        STR      R1,[R0, #+28]
// 1542     m_Control.runningEnd_time = 0xFFFFFFFF;
        LDR.W    R0,??DataTable111
        MOVS     R1,#-1
        STR      R1,[R0, #+24]
// 1543     
// 1544     m_ModeMachine.always_done = 0;m_ModeMachine.button_S1_done = 0;
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+28]
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
// 1545     
// 1546     m_ModeMachine.button_S3_done = 0;//modeMachine_Move_ServoTesting_UpOutPut;
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
// 1547     m_ModeMachine.button_S2_done = 0;//modeMachine_Move_ServoTesting_DownOutPut;
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
// 1548     
// 1549     m_ModeMachine.button_S4_done = 0;m_ModeMachine.button_S5_done = 0;m_ModeMachine.button_S6_done = 0;
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+20]
// 1550     m_ModeMachine.button_S8_done = modeMachine_RunningSet_TurnOnMode;
        LDR.W    R0,??DataTable107
        LDR.W    R1,??DataTable112
        STR      R1,[R0, #+24]
// 1551 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable82:
        DC32     modeMachine_MotorAlways_Show

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable82_1:
        DC32     modeMachine_Always_ShowFuncName

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1552 void modeMachine_RunningAlways_RunMode()//=>½øÈë
// 1553 {
modeMachine_RunningAlways_RunMode:
        PUSH     {R7,LR}
// 1554     m_ModeMachine.always_done = modeMachine_Always_ImageOutput;m_ModeMachine.button_S1_done = 0;
        LDR.W    R0,??DataTable107
        LDR.W    R1,??DataTable95_1
        STR      R1,[R0, #+28]
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
// 1555     
// 1556     m_ModeMachine.button_S3_done = modeMachine_Running15s_RunMode;//modeMachine_Move_ServoTesting_UpOutPut;
        LDR.W    R0,??DataTable107
        LDR.W    R1,??DataTable107_1
        STR      R1,[R0, #+8]
// 1557     m_ModeMachine.button_S2_done = modeMachine_RunningLight_RunMode;//modeMachine_Move_ServoTesting_DownOutPut;
        LDR.W    R0,??DataTable107
        LDR.W    R1,??DataTable114
        STR      R1,[R0, #+4]
// 1558     
// 1559     m_ModeMachine.button_S4_done = 0;m_ModeMachine.button_S5_done = 0;
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
// 1560     m_ModeMachine.button_S6_done = modeMachine_Running30s_TimeSetMode;
        LDR.W    R0,??DataTable107
        LDR.W    R1,??DataTable109_2
        STR      R1,[R0, #+20]
// 1561     m_ModeMachine.button_S8_done = modeMachine_RunningSet_TurnOnMode;
        LDR.W    R0,??DataTable107
        LDR.W    R1,??DataTable112
        STR      R1,[R0, #+24]
// 1562     
// 1563     v_Panel_DisplayCommandLine(3,2);
        MOVS     R1,#+2
        MOVS     R0,#+3
        BL       v_Panel_DisplayCommandLine
// 1564 }
        POP      {R0,PC}          ;; return
// 1565 
// 1566 
// 1567 
// 1568 
// 1569 
// 1570 
// 1571 
// 1572 
// 1573 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1574 void modeMachine_BasicTesting_TurnMode()
// 1575 {
modeMachine_BasicTesting_TurnMode:
        PUSH     {R7,LR}
// 1576     m_ModeMachine.always_done = 0;
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+28]
// 1577     m_ModeMachine.button_S1_done = 0;
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
// 1578     
// 1579     m_ModeMachine.button_S3_done = 0;
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
// 1580     m_ModeMachine.button_S2_done = modeMachine_ServoTesting_TurnMode;
        LDR.W    R0,??DataTable107
        LDR.W    R1,??DataTable115
        STR      R1,[R0, #+4]
// 1581     
// 1582     m_ModeMachine.button_S4_done = 0;
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
// 1583     m_ModeMachine.button_S5_done = 0;
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
// 1584     m_ModeMachine.button_S6_done = modeMachine_BasicTesting_TestingMode;//;modeMachine_BasicTesting_DataShow
        LDR.W    R0,??DataTable107
        LDR.W    R1,??DataTable115_1
        STR      R1,[R0, #+20]
// 1585     m_ModeMachine.button_S8_done = 0;
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
// 1586     
// 1587     v_Panel_DisplayCommandLine(0,1);
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       v_Panel_DisplayCommandLine
// 1588 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable84:
        DC32     v_speed_Give

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable84_1:
        DC32     v_speed_Give_UsedsmallChange

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable84_2:
        DC32     `?<Constant "Motor">`
// 1589 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1590 void modeMachine_ServoTesting_TurnMode()
// 1591 {
modeMachine_ServoTesting_TurnMode:
        PUSH     {R7,LR}
// 1592     m_ModeMachine.always_done = 0;
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+28]
// 1593     m_ModeMachine.button_S1_done = 0;
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
// 1594     
// 1595     m_ModeMachine.button_S3_done = modeMachine_BasicTesting_TurnMode;
        LDR.W    R0,??DataTable107
        LDR.W    R1,??DataTable115_2
        STR      R1,[R0, #+8]
// 1596     m_ModeMachine.button_S2_done = modeMachine_MotorTesting_TurnMode;
        LDR.W    R0,??DataTable107
        LDR.W    R1,??DataTable116
        STR      R1,[R0, #+4]
// 1597     
// 1598     m_ModeMachine.button_S4_done = 0;
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
// 1599     m_ModeMachine.button_S5_done = 0;
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
// 1600     m_ModeMachine.button_S6_done = modeMachine_ServoTesting_TestingMode; // ¶æ»ú²âÊÔÄ£Ê½
        LDR.W    R0,??DataTable107
        LDR.W    R1,??DataTable116_1
        STR      R1,[R0, #+20]
// 1601     m_ModeMachine.button_S8_done = 0;
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
// 1602     
// 1603     v_Panel_DisplayCommandLine(1,1);
        MOVS     R1,#+1
        MOVS     R0,#+1
        BL       v_Panel_DisplayCommandLine
// 1604 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable85:
        DC32     m_ImageAbstract
// 1605 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1606 void modeMachine_MotorTesting_TurnMode()
// 1607 {
modeMachine_MotorTesting_TurnMode:
        PUSH     {R7,LR}
// 1608     m_ModeMachine.always_done = 0;
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+28]
// 1609     m_ModeMachine.button_S1_done = 0;
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
// 1610     
// 1611     m_ModeMachine.button_S3_done = modeMachine_ServoTesting_TurnMode;
        LDR.W    R0,??DataTable107
        LDR.W    R1,??DataTable115
        STR      R1,[R0, #+8]
// 1612     m_ModeMachine.button_S2_done = modeMachine_CameraInformationTesting_TurnMode;
        LDR.W    R0,??DataTable107
        LDR.W    R1,??DataTable116_2
        STR      R1,[R0, #+4]
// 1613     
// 1614     m_ModeMachine.button_S4_done = 0;
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
// 1615     m_ModeMachine.button_S5_done = 0;
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
// 1616     m_ModeMachine.button_S6_done = modeMachine_MotorTesting_TestingMode;
        LDR.W    R0,??DataTable107
        LDR.W    R1,??DataTable117_4
        STR      R1,[R0, #+20]
// 1617     m_ModeMachine.button_S8_done = 0;
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
// 1618     
// 1619     v_Panel_DisplayCommandLine(2,1);
        MOVS     R1,#+1
        MOVS     R0,#+2
        BL       v_Panel_DisplayCommandLine
// 1620 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable86:
        DC32     modeMachine_ParaShow_Panel

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable86_1:
        DC32     modeMachine_SpeedCutMode

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable86_2:
        DC32     modeMachine_GiveSpeedMode_Cut

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable86_3:
        DC32     modeMachine_GiveSpeedMode_Add
// 1621 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1622 void modeMachine_CameraInformationTesting_TurnMode()
// 1623 {
modeMachine_CameraInformationTesting_TurnMode:
        PUSH     {R7,LR}
// 1624     m_ModeMachine.always_done = 0;
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+28]
// 1625     m_ModeMachine.button_S1_done = 0;
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
// 1626     
// 1627     m_ModeMachine.button_S3_done = modeMachine_ServoTesting_TurnMode;//modeMachine_Move_ServoTesting_UpOutPut;
        LDR.W    R0,??DataTable107
        LDR.W    R1,??DataTable115
        STR      R1,[R0, #+8]
// 1628     m_ModeMachine.button_S2_done = modeMachine_MiddlineTesting_TurnMode;//modeMachine_Move_ServoTesting_DownOutPut;
        LDR.W    R0,??DataTable107
        LDR.W    R1,??DataTable117_5
        STR      R1,[R0, #+4]
// 1629     
// 1630     m_ModeMachine.button_S4_done = 0;
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
// 1631     m_ModeMachine.button_S5_done = 0;
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
// 1632     m_ModeMachine.button_S6_done = modeMachine_CameraInformationTesting_TestingMode;//modeMachine_CameraInformationTesting_TurnMode
        LDR.W    R0,??DataTable107
        LDR.W    R1,??DataTable117_6
        STR      R1,[R0, #+20]
// 1633     m_ModeMachine.button_S8_done = 0;
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
// 1634     
// 1635     v_Panel_DisplayCommandLine(3,1);
        MOVS     R1,#+1
        MOVS     R0,#+3
        BL       v_Panel_DisplayCommandLine
// 1636 }
        POP      {R0,PC}          ;; return
// 1637 
// 1638 
// 1639 //============================================================================//  
// 1640 //¾ßÌå¹¦ÄÜ

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1641 void modeMachine_ServoTesting_TestingMode()
// 1642 {
// 1643     m_Control.need_turnRobustly_flag = 1;//ÕâÀïÓÉÓÚÃ»ÓÐ´¦ÀíÍË³öÄ£Ê½£¬ÔÝÊ±ÎÞ·¨¸ü¸Ä
modeMachine_ServoTesting_TestingMode:
        LDR.W    R0,??DataTable111
        MOVS     R1,#+1
        STRB     R1,[R0, #+20]
// 1644     m_ModeMachine.always_done = modeMachine_Move_ServoTestingPanel_Display;
        LDR.W    R0,??DataTable107
        LDR.W    R1,??DataTable117_7
        STR      R1,[R0, #+28]
// 1645     m_ModeMachine.button_S1_done = 0;
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
// 1646     
// 1647     m_ModeMachine.button_S3_done = modeMachine_Move_ServoTesting_UpOutPut;
        LDR.W    R0,??DataTable107
        LDR.W    R1,??DataTable117_8
        STR      R1,[R0, #+8]
// 1648     m_ModeMachine.button_S2_done = modeMachine_Move_ServoTesting_DownOutPut;
        LDR.W    R0,??DataTable107
        LDR.W    R1,??DataTable117_9
        STR      R1,[R0, #+4]
// 1649     
// 1650     m_ModeMachine.button_S4_done = 0;
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
// 1651     m_ModeMachine.button_S5_done = 0;
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
// 1652     m_ModeMachine.button_S6_done = 0;
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+20]
// 1653     m_ModeMachine.button_S8_done = 0;
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
// 1654 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable88:
        DC32     modeMachine_SpeedCutRatioMode

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable88_1:
        DC32     modeMachine_SpeedCutMode_Cut

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable88_2:
        DC32     modeMachine_SpeedCutMode_Add

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1655 void modeMachine_MotorTesting_TestingMode()
// 1656 {
// 1657     m_ModeMachine.always_done = modeMachine_Always_MotorTestingPanel_Display;
modeMachine_MotorTesting_TestingMode:
        LDR.W    R0,??DataTable107
        LDR.W    R1,??DataTable117_10
        STR      R1,[R0, #+28]
// 1658     m_ModeMachine.button_S1_done = 0;
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
// 1659     
// 1660     m_ModeMachine.button_S3_done = modeMachine_Up_MotorTestingMach_Output;//modeMachine_Move_ServoTesting_UpOutPut;
        LDR.W    R0,??DataTable107
        LDR.W    R1,??DataTable117_11
        STR      R1,[R0, #+8]
// 1661     m_ModeMachine.button_S2_done = modeMachine_Down_MotorTestingMach_Output;//modeMachine_Move_ServoTesting_DownOutPut;
        LDR.W    R0,??DataTable107
        LDR.W    R1,??DataTable117_12
        STR      R1,[R0, #+4]
// 1662     
// 1663     m_ModeMachine.button_S4_done = 0;
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
// 1664     m_ModeMachine.button_S5_done = 0;
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
// 1665     m_ModeMachine.button_S6_done = 0;
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+20]
// 1666     m_ModeMachine.button_S8_done = 0;
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
// 1667 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable89:
        DC32     modeMachine_ServoDiffMode

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable89_1:
        DC32     modeMachine_SpeedCutRatioMode_Cut

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable89_2:
        DC32     modeMachine_SpeedCutRatioMode_Add
// 1668 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1669 void modeMachine_ImageBeholderTesting_TestingMode()
// 1670 {
// 1671     /*
// 1672             S1
// 1673     S3      S5      S6
// 1674     S2      S4      S8
// 1675     */
// 1676     m_ModeMachine.always_done = modeMachine_Always_CameraTestingMach_Output;//modeMachine_Always_CameraTestingMach_Output_ExtraPara
modeMachine_ImageBeholderTesting_TestingMode:
        LDR.W    R0,??DataTable107
        LDR.W    R1,??DataTable117_13
        STR      R1,[R0, #+28]
// 1677     m_ModeMachine.button_S1_done = modeMachine_CameraTestingMach_Up;
        LDR.W    R0,??DataTable107
        LDR.W    R1,??DataTable117_14
        STR      R1,[R0, #+0]
// 1678     
// 1679     m_ModeMachine.button_S3_done = modeMachine_CameraTestingMach_Left;//modeMachine_Move_ServoTesting_UpOutPut;
        LDR.W    R0,??DataTable107
        LDR.W    R1,??DataTable117_15
        STR      R1,[R0, #+8]
// 1680     
// 1681     m_ModeMachine.button_S2_done = modeMachine_CameraTestingMach_CalibrationModeSwitch;//modeMachine_Move_ServoTesting_DownOutPut;
        LDR.W    R0,??DataTable107
        LDR.W    R1,??DataTable117_16
        STR      R1,[R0, #+4]
// 1682     
// 1683     m_ModeMachine.button_S4_done = modeMachine_CameraTestingMach_Down;
        LDR.W    R0,??DataTable107
        LDR.W    R1,??DataTable117_17
        STR      R1,[R0, #+12]
// 1684     
// 1685     m_ModeMachine.button_S5_done = modeMachine_CameraTestingMach_WriteNowPoint;//¼ÇÂ¼µ±Ç°µãµÄ×ø±ê
        LDR.W    R0,??DataTable107
        LDR.W    R1,??DataTable117_18
        STR      R1,[R0, #+16]
// 1686     
// 1687     m_ModeMachine.button_S6_done = modeMachine_CameraTestingMach_Right;
        LDR.W    R0,??DataTable107
        LDR.W    R1,??DataTable117_19
        STR      R1,[R0, #+20]
// 1688     m_ModeMachine.button_S8_done = modeMachine_Testing_TurnOnMode;//ÍË»Ø
        LDR.W    R0,??DataTable107
        LDR.W    R1,??DataTable123
        STR      R1,[R0, #+24]
// 1689 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable90:
        DC32     `?<Constant "No Vaild">`
// 1690 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1691 void modeMachine_BasicTesting_TestingMode()
// 1692 {
// 1693     m_ModeMachine.always_done = modeMachine_BasicTesting_DataShow;
modeMachine_BasicTesting_TestingMode:
        LDR.W    R0,??DataTable107
        LDR.W    R1,??DataTable118
        STR      R1,[R0, #+28]
// 1694     m_ModeMachine.button_S1_done = 0;
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
// 1695     
// 1696     m_ModeMachine.button_S3_done = modeMachine_BasicTesting_TurnMode;//modeMachine_Move_ServoTesting_UpOutPut;
        LDR.W    R0,??DataTable107
        LDR.W    R1,??DataTable115_2
        STR      R1,[R0, #+8]
// 1697     m_ModeMachine.button_S2_done = modeMachine_BasicTesting_TurnMode;//modeMachine_Move_ServoTesting_DownOutPut;
        LDR.W    R0,??DataTable107
        LDR.W    R1,??DataTable115_2
        STR      R1,[R0, #+4]
// 1698     
// 1699     m_ModeMachine.button_S4_done = 0;
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
// 1700     m_ModeMachine.button_S5_done = 0;
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
// 1701     m_ModeMachine.button_S6_done = 0;
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+20]
// 1702     m_ModeMachine.button_S8_done = 0;
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
// 1703 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable91:
        DC32     modeMachine_ShutterWidthChange
// 1704 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1705 void modeMachine_CameraInformationTesting_TestingMode()
// 1706 {
// 1707     m_ModeMachine.always_done = modeMachine_Always_CameraInformationTesting_DataShow;
modeMachine_CameraInformationTesting_TestingMode:
        LDR.W    R0,??DataTable107
        LDR.W    R1,??DataTable118_1
        STR      R1,[R0, #+28]
// 1708     m_ModeMachine.button_S1_done = 0;
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
// 1709     
// 1710     m_ModeMachine.button_S3_done = 0;//modeMachine_Move_ServoTesting_UpOutPut;
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
// 1711     m_ModeMachine.button_S2_done = 0;//modeMachine_Move_ServoTesting_DownOutPut;
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
// 1712     
// 1713     m_ModeMachine.button_S4_done = 0;
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
// 1714     m_ModeMachine.button_S5_done = 0;
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
// 1715     m_ModeMachine.button_S6_done = modeMachine_CameraInformationTesting_TurnMode;//
        LDR.W    R0,??DataTable107
        LDR.W    R1,??DataTable116_2
        STR      R1,[R0, #+20]
// 1716     m_ModeMachine.button_S8_done = 0;
        LDR.W    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
// 1717 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable92:
        DC32     modeMachine_ServoDiff_Add

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable92_1:
        DC32     modeMachine_ServoDiff_Cut

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable92_2:
        DC32     0x9999999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable92_3:
        DC32     0x3fb99999
// 1718 
// 1719 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1720 void modeMachine_Always_CameraInformationTesting_DataShow()
// 1721 {
modeMachine_Always_CameraInformationTesting_DataShow:
        PUSH     {R7,LR}
        VPUSH    {D8}
// 1722     modeMachine_Always_ImageOutput();//Í¼ÏñÕ¹Ê¾
        BL       modeMachine_Always_ImageOutput
// 1723 //    v_MonoRev_6x8Str(0,4,"           ",0);
// 1724 //    v_MonoRev_6x8Str(0,5,"           ",0);
// 1725 //    v_MonoRev_6x8Str(0,6,"           ",0);
// 1726 //    v_MonoRev_Number(0,4,m_ImageAbstract.Central[m_ImageAbstract.Start_Y_Position],10);
// 1727 //    v_MonoRev_Number(0,5,m_ImageAbstract.Central[((m_ImageAbstract.Last_Y_Position + m_ImageAbstract.Start_Y_Position)/2+m_ImageAbstract.Start_Y_Position)/2],10);
// 1728 //    v_MonoRev_Number(0,6,m_ImageAbstract.Central[(m_ImageAbstract.Last_Y_Position + m_ImageAbstract.Start_Y_Position)/2],10);
// 1729     float Cuvre = 0;//f_getSteerCurve();
        VLDR.W   S16,??DataTable97  ;; 0x0
// 1730     v_MonoRev_6x8Str(0,5,"              ",0);
        MOVS     R3,#+0
        LDR.W    R2,??DataTable119
        MOVS     R1,#+5
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
// 1731     v_MonoRev_6x8Str(0,6,"              ",0);
        MOVS     R3,#+0
        LDR.W    R2,??DataTable119
        MOVS     R1,#+6
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
// 1732     v_MonoRev_6x8Str(0,7,"              ",0);
        MOVS     R3,#+0
        LDR.W    R2,??DataTable119
        MOVS     R1,#+7
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
// 1733     
// 1734     v_MonoRev_Number(0,6,Cuvre,10);
        MOVS     R2,#+10
        VMOV.F32 S0,S16
        MOVS     R1,#+6
        MOVS     R0,#+0
        BL       v_MonoRev_Number
// 1735     if(0.0 != Cuvre)
        VCMP.F32 S16,#0.0
        FMSTAT   
        BEQ.N    ??modeMachine_Always_CameraInformationTesting_D_0
// 1736     {
// 1737         v_MonoRev_Number(0,7,1.f / Cuvre,10);
        MOVS     R2,#+10
        VMOV.F32 S0,#1.0
        VDIV.F32 S0,S0,S16
        MOVS     R1,#+7
        MOVS     R0,#+0
        BL       v_MonoRev_Number
        B.N      ??modeMachine_Always_CameraInformationTesting_D_1
// 1738     }
// 1739     else
// 1740     {
// 1741         v_MonoRev_6x8Str(0,7,"So Big",0);
??modeMachine_Always_CameraInformationTesting_D_0:
        MOVS     R3,#+0
        LDR.W    R2,??DataTable129
        MOVS     R1,#+7
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
// 1742     }
// 1743     uint16 MiddleLine = n_getSteerMiddleLine_UsedAverage();
??modeMachine_Always_CameraInformationTesting_D_1:
        BL       n_getSteerMiddleLine_UsedAverage
// 1744     
// 1745     v_MonoRev_Number(0,5,MiddleLine,10);
        MOVS     R2,#+10
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        VMOV     S0,R0
        VCVT.F32.U32 S0,S0
        MOVS     R1,#+5
        MOVS     R0,#+0
        BL       v_MonoRev_Number
// 1746 //    v_MonoRev_6x8Str(0,0,"           ",0);
// 1747 //    v_MonoRev_Number(0,0,m_Control.ServoDeg,10);
// 1748 }
        VPOP     {D8}
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable93:
        DC32     0xbfb99999

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable93_1:
        DC32     modeMachine_SpeedChangeChange

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable93_2:
        DC32     modeMachine_ShutterWidthChange_Cut

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable93_3:
        DC32     modeMachine_ShutterWidthChange_Add
// 1749 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1750 void BuzzerSong()
// 1751 {
BuzzerSong:
        PUSH     {R7,LR}
// 1752     v_BuzzerBeepSet(1000);
        MOV      R0,#+1000
        BL       v_BuzzerBeepSet
// 1753 }
        POP      {R0,PC}          ;; return
// 1754 
// 1755 /*
// 1756 void modeMachine_ParaSetMode_Speed()//²ÎÊýÉèÖÃÆ½Ì¨
// 1757 {
// 1758     m_ModeMachine.always_done = modeMachine_Always_ImageOutput;
// 1759     m_ModeMachine.button_S1_done = 0;
// 1760     
// 1761     m_ModeMachine.button_S3_done = modeMachine_TotleShutter_TurnOnMode;//modeMachine_Move_ServoTesting_UpOutPut;
// 1762     m_ModeMachine.button_S2_done = 0;//modeMachine_Move_ServoTesting_DownOutPut;
// 1763     
// 1764     m_ModeMachine.button_S4_done = 0;
// 1765     m_ModeMachine.button_S5_done = 0;
// 1766     m_ModeMachine.button_S6_done = modeMachine_TotleShutterChangeMode;//modeMachine_Running5s_RunMode;
// 1767     m_ModeMachine.button_S8_done = modeMachine_ParaSet_TurnOnMode;
// 1768     
// 1769     //
// 1770 
// 1771     //v_Panel_DisplayCommandLine(4,0);
// 1772 }
// 1773 */
// 1774 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1775 void modeMachine_MiddlineTesting_TurnMode()//ÖÐÏß¿Ø¶æ²âÊÔ
// 1776 {//Í¬Ê±ÕâÀïÒ²ÊÇ²ÎÊý¸ü¸ÄµÄÇøÓò
modeMachine_MiddlineTesting_TurnMode:
        PUSH     {R7,LR}
// 1777     FuncSet(0,0,0,0,0,0,0);
        LDR.N    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        LDR.N    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        LDR.N    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
        LDR.N    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
        LDR.N    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+20]
        LDR.N    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
// 1778     AlwaysSet(0);
        LDR.N    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+28]
// 1779     UpDownSureBack(modeMachine_CameraInformationTesting_TurnMode,
// 1780                    modeMachine_ImageOutPut_TurnOnMode,
// 1781                    modeMachine_MiddlineTesting_TestingMode,
// 1782                    modeMachine_Testing_TurnOnMode);
        LDR.N    R0,??DataTable107
        LDR.W    R1,??DataTable116_2
        STR      R1,[R0, #+8]
        LDR.N    R0,??DataTable107
        LDR.W    R1,??DataTable121
        STR      R1,[R0, #+4]
        LDR.N    R0,??DataTable107
        LDR.W    R1,??DataTable121_1
        STR      R1,[R0, #+20]
        LDR.N    R0,??DataTable107
        LDR.W    R1,??DataTable123
        STR      R1,[R0, #+24]
// 1783     v_Panel_DisplayCommandLine(4,1);//ÉèÖÃÆÁÄ»²ÎÊý
        MOVS     R1,#+1
        MOVS     R0,#+4
        BL       v_Panel_DisplayCommandLine
// 1784 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable94:
        DC32     `?<Constant "Motor SmallChange">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable94_1:
        DC32     modeMachine_SpeedChangeChange_Cut

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1785 void modeMachine_MiddlineTesting_TestingMode()//ÖÐÏß¿Ø¶æ²âÊÔ
// 1786 {
// 1787     FuncSet(0,0,0,0,0,0,0);
modeMachine_MiddlineTesting_TestingMode:
        LDR.N    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        LDR.N    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        LDR.N    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
        LDR.N    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
        LDR.N    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+20]
        LDR.N    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
// 1788     AlwaysSet(modeMachine_MiddlineTesting_AlwaysShow);//¸ø¶¨×ÜÊÇÏÔÊ¾º¯Êý
        LDR.N    R0,??DataTable107
        LDR.W    R1,??DataTable121_2
        STR      R1,[R0, #+28]
// 1789     UpDownSureBack(modeMachine_MiddlineTesting_TestingMode_AddKCurve,
// 1790                    modeMachine_MiddlineTesting_TestingMode_CutKCurve,
// 1791                    modeMachine_MiddlineTesting_TestingMode_Extra,//ÎÞÈ·ÈÏ
// 1792                    modeMachine_MiddlineTesting_TurnMode);//·µ»Ø
        LDR.N    R0,??DataTable107
        LDR.W    R1,??DataTable121_3
        STR      R1,[R0, #+8]
        LDR.N    R0,??DataTable107
        LDR.W    R1,??DataTable122
        STR      R1,[R0, #+4]
        LDR.N    R0,??DataTable107
        LDR.W    R1,??DataTable122_1
        STR      R1,[R0, #+20]
        LDR.N    R0,??DataTable107
        LDR.W    R1,??DataTable117_5
        STR      R1,[R0, #+24]
// 1793     UpDownS5S4(modeMachine_MiddlineTesting_TestingMode_AddMoreKCurve,
// 1794                modeMachine_MiddlineTesting_TestingMode_CutMoreKCurve);
        LDR.N    R0,??DataTable107
        LDR.W    R1,??DataTable122_2
        STR      R1,[R0, #+16]
        LDR.N    R0,??DataTable107
        LDR.W    R1,??DataTable134
        STR      R1,[R0, #+12]
// 1795 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable95:
        DC32     modeMachine_SpeedChangeChange_Add

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable95_1:
        DC32     modeMachine_Always_ImageOutput

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1796 void modeMachine_MiddlineTesting_TestingMode_Extra()
// 1797 {
// 1798     FuncSet(0,0,0,0,0,0,0);
modeMachine_MiddlineTesting_TestingMode_Extra:
        LDR.N    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        LDR.N    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        LDR.N    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
        LDR.N    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
        LDR.N    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+20]
        LDR.N    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
// 1799     AlwaysSet(modeMachine_MiddlineTesting_AlwaysShow_Extra);//¸ø¶¨×ÜÊÇÏÔÊ¾º¯Êý
        LDR.N    R0,??DataTable107
        LDR.W    R1,??DataTable122_3
        STR      R1,[R0, #+28]
// 1800     UpDownSureBack(modeMachine_MiddlineTesting_TestingMode_AddStopY_Pos,
// 1801                    modeMachine_MiddlineTesting_TestingMode_CutStopY_Pos,
// 1802                    modeMachine_MiddlineTesting_TestingMode_ExtraExtra,//ÎÞÈ·ÈÏ
// 1803                    modeMachine_MiddlineTesting_TurnMode);//·µ»Ø
        LDR.N    R0,??DataTable107
        LDR.W    R1,??DataTable122_4
        STR      R1,[R0, #+8]
        LDR.N    R0,??DataTable107
        LDR.W    R1,??DataTable123_1
        STR      R1,[R0, #+4]
        LDR.N    R0,??DataTable107
        LDR.W    R1,??DataTable123_2
        STR      R1,[R0, #+20]
        LDR.N    R0,??DataTable107
        LDR.W    R1,??DataTable117_5
        STR      R1,[R0, #+24]
// 1804     UpDownS5S4(0,
// 1805                0);
        LDR.N    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
        LDR.N    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
// 1806 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable96:
        DC32     modeMachine_TotleShutter_add

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable96_1:
        DC32     modeMachine_TotleShutter_cut

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable96_2:
        DC32     modeMachine_ServoDiffAdd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable96_3:
        DC32     modeMachine_ServoDiffCut

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable96_4:
        DC32     modeMachine_TotleShutter_TurnOnMode

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1807 void modeMachine_MiddlineTesting_TestingMode_ExtraExtra()
// 1808 {
// 1809     FuncSet(0,0,0,0,0,0,0);
modeMachine_MiddlineTesting_TestingMode_ExtraExtra:
        LDR.N    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        LDR.N    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        LDR.N    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
        LDR.N    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
        LDR.N    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+20]
        LDR.N    R0,??DataTable107
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
// 1810     AlwaysSet(modeMachine_MiddlineTesting_AlwaysShow_ExtraExtra);//¸ø¶¨×ÜÊÇÏÔÊ¾º¯Êý
        LDR.N    R0,??DataTable107
        LDR.W    R1,??DataTable123_3
        STR      R1,[R0, #+28]
// 1811     UpDownSureBack(modeMachine_MiddlineTesting_TestingMode_AddMorePCurve,
// 1812                    modeMachine_MiddlineTesting_TestingMode_CutMorePCurve,
// 1813                    modeMachine_MiddlineTesting_TestingMode,//ÎÞÈ·ÈÏ
// 1814                    modeMachine_MiddlineTesting_TurnMode);//·µ»Ø
        LDR.N    R0,??DataTable107
        LDR.W    R1,??DataTable123_4
        STR      R1,[R0, #+8]
        LDR.N    R0,??DataTable107
        LDR.W    R1,??DataTable123_5
        STR      R1,[R0, #+4]
        LDR.N    R0,??DataTable107
        LDR.W    R1,??DataTable121_1
        STR      R1,[R0, #+20]
        LDR.N    R0,??DataTable107
        LDR.W    R1,??DataTable117_5
        STR      R1,[R0, #+24]
// 1815     UpDownS5S4(modeMachine_MiddlineTesting_TestingMode_AddPCurve,
// 1816                modeMachine_MiddlineTesting_TestingMode_CutPCurve);
        LDR.N    R0,??DataTable107
        LDR.W    R1,??DataTable124
        STR      R1,[R0, #+16]
        LDR.N    R0,??DataTable107
        LDR.W    R1,??DataTable136
        STR      R1,[R0, #+12]
// 1817 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable97:
        DC32     0x0

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1818 void modeMachine_MiddlineTesting_TestingMode_AddPCurve()//Ôö¼ÓÏµÊý
// 1819 {m_Control.P_Curve += 1.f;}
modeMachine_MiddlineTesting_TestingMode_AddPCurve:
        LDR.N    R0,??DataTable111
        VLDR     S0,[R0, #+136]
        VMOV.F32 S1,#1.0
        VADD.F32 S0,S0,S1
        LDR.N    R0,??DataTable111
        VSTR     S0,[R0, #+136]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1820 void modeMachine_MiddlineTesting_TestingMode_CutPCurve()//¼õÐ¡ÏµÊý
// 1821 {m_Control.P_Curve -= 1.f;}
modeMachine_MiddlineTesting_TestingMode_CutPCurve:
        LDR.N    R0,??DataTable111
        VLDR     S0,[R0, #+136]
        VMOV.F32 S1,#-1.0
        VADD.F32 S0,S0,S1
        LDR.N    R0,??DataTable111
        VSTR     S0,[R0, #+136]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1822 void modeMachine_MiddlineTesting_TestingMode_AddMorePCurve()//Ôö¼ÓÏµÊý
// 1823 {m_Control.P_Curve += 0.1f;}
modeMachine_MiddlineTesting_TestingMode_AddMorePCurve:
        LDR.N    R0,??DataTable111
        VLDR     S0,[R0, #+136]
        VLDR.W   S1,??DataTable109  ;; 0x3dcccccd
        VADD.F32 S0,S0,S1
        LDR.N    R0,??DataTable111
        VSTR     S0,[R0, #+136]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1824 void modeMachine_MiddlineTesting_TestingMode_CutMorePCurve()//¼õÐ¡ÏµÊý
// 1825 {m_Control.P_Curve -= 0.1f;}
modeMachine_MiddlineTesting_TestingMode_CutMorePCurve:
        LDR.N    R0,??DataTable111
        VLDR     S0,[R0, #+136]
        VLDR.W   S1,??DataTable110  ;; 0xbdcccccd
        VADD.F32 S0,S0,S1
        LDR.N    R0,??DataTable111
        VSTR     S0,[R0, #+136]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1826 void modeMachine_MiddlineTesting_TestingMode_AddKCurve()//Ôö¼ÓÏµÊý
// 1827 {m_Control.K_Curve += 10.f;}
modeMachine_MiddlineTesting_TestingMode_AddKCurve:
        LDR.N    R0,??DataTable111
        VLDR     S0,[R0, #+140]
        VMOV.F32 S1,#10.0
        VADD.F32 S0,S0,S1
        LDR.N    R0,??DataTable111
        VSTR     S0,[R0, #+140]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable102:
        DC32     m_system

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1828 void modeMachine_MiddlineTesting_TestingMode_CutKCurve()//¼õÐ¡ÏµÊý
// 1829 {m_Control.K_Curve -= 10.f;}
modeMachine_MiddlineTesting_TestingMode_CutKCurve:
        LDR.N    R0,??DataTable111
        VLDR     S0,[R0, #+140]
        VMOV.F32 S1,#-10.0
        VADD.F32 S0,S0,S1
        LDR.N    R0,??DataTable111
        VSTR     S0,[R0, #+140]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1830 void modeMachine_MiddlineTesting_TestingMode_AddMoreKCurve()//Ôö¼ÓÏµÊý
// 1831 {m_Control.K_Curve += 1.f;}
modeMachine_MiddlineTesting_TestingMode_AddMoreKCurve:
        LDR.N    R0,??DataTable111
        VLDR     S0,[R0, #+140]
        VMOV.F32 S1,#1.0
        VADD.F32 S0,S0,S1
        LDR.N    R0,??DataTable111
        VSTR     S0,[R0, #+140]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1832 void modeMachine_MiddlineTesting_TestingMode_CutMoreKCurve()//¼õÐ¡ÏµÊý
// 1833 {m_Control.K_Curve -= 1.f;}
modeMachine_MiddlineTesting_TestingMode_CutMoreKCurve:
        LDR.N    R0,??DataTable111
        VLDR     S0,[R0, #+140]
        VMOV.F32 S1,#-1.0
        VADD.F32 S0,S0,S1
        LDR.N    R0,??DataTable111
        VSTR     S0,[R0, #+140]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1834 void modeMachine_MiddlineTesting_TestingMode_AddStopY_Pos()//Ôö¼ÓÏµÊý
// 1835 {m_Control.servo_imageYstopLine += 1;}
modeMachine_MiddlineTesting_TestingMode_AddStopY_Pos:
        LDR.N    R0,??DataTable111
        LDRB     R0,[R0, #+132]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable111
        STRB     R0,[R1, #+132]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1836 void modeMachine_MiddlineTesting_TestingMode_CutStopY_Pos()//¼õÐ¡ÏµÊý
// 1837 {m_Control.servo_imageYstopLine -= 1;}
modeMachine_MiddlineTesting_TestingMode_CutStopY_Pos:
        LDR.N    R0,??DataTable111
        LDRB     R0,[R0, #+132]
        SUBS     R0,R0,#+1
        LDR.N    R1,??DataTable111
        STRB     R0,[R1, #+132]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable107:
        DC32     m_ModeMachine

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable107_1:
        DC32     modeMachine_Running15s_RunMode

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable107_2:
        DC32     modeMachine_Running5s_TimeSetMode

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1838 void modeMachine_MiddlineTesting_AlwaysShow()
// 1839 {//ÕâÀïÏÔÊ¾²ÎÊý
modeMachine_MiddlineTesting_AlwaysShow:
        PUSH     {R7,LR}
// 1840     modeMachine_Always_ImageOutput();//Êä³öÍ¼Ïñ
        BL       modeMachine_Always_ImageOutput
// 1841     v_MonoRev_6x8Str(0,0,"Middline",1);
        MOVS     R3,#+1
        LDR.W    R2,??DataTable134_1
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
// 1842     v_MonoRev_6x8Str(0,1,"MiddLine:",0);//ÖÐÏßÎ»ÖÃ
        MOVS     R3,#+0
        LDR.W    R2,??DataTable134_2
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
// 1843     v_MonoRev_6x8Str(0,2,">K_Curve:",0);//¸ü¸Ä¾í»ýÏµÊý
        MOVS     R3,#+0
        LDR.W    R2,??DataTable134_3
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
// 1844     v_MonoRev_6x8Str(0,3," Y_Stop:",0);//×ÝÖáÍ£Ö¹Î»ÖÃ
        MOVS     R3,#+0
        LDR.W    R2,??DataTable134_4
        MOVS     R1,#+3
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
// 1845     v_MonoRev_6x8Str(0,4," P_Curve:",0);//×ÝÖáÍ£Ö¹Î»ÖÃ
        MOVS     R3,#+0
        LDR.W    R2,??DataTable134_5
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
// 1846     
// 1847     v_MonoRev_Number(64,1,m_ImageAbstract.servo_gaiaInfor_image,10);
        MOVS     R2,#+10
        LDR.W    R0,??DataTable134_6
        LDRB     R0,[R0, #+483]
        VMOV     S0,R0
        VCVT.F32.U32 S0,S0
        MOVS     R1,#+1
        MOVS     R0,#+64
        BL       v_MonoRev_Number
// 1848     v_MonoRev_Number(64,2,m_Control.K_Curve,10);//ÇúÏßÏµÊý¸ü¸Ä <= K_Curve
        MOVS     R2,#+10
        LDR.N    R0,??DataTable111
        VLDR     S0,[R0, #+140]
        MOVS     R1,#+2
        MOVS     R0,#+64
        BL       v_MonoRev_Number
// 1849     v_MonoRev_Number(64,3,m_Control.servo_imageYstopLine,10);//ÇúÏßÏµÊý¸ü¸Ä <= K_Curve
        MOVS     R2,#+10
        LDR.N    R0,??DataTable111
        LDRB     R0,[R0, #+132]
        VMOV     S0,R0
        VCVT.F32.U32 S0,S0
        MOVS     R1,#+3
        MOVS     R0,#+64
        BL       v_MonoRev_Number
// 1850     v_MonoRev_Number(64,4,m_Control.P_Curve,10);//ÇúÏßÏµÊý¸ü¸Ä <= K_Curve
        MOVS     R2,#+10
        LDR.N    R0,??DataTable111
        VLDR     S0,[R0, #+136]
        MOVS     R1,#+4
        MOVS     R0,#+64
        BL       v_MonoRev_Number
// 1851 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable108:
        DC32     modeMachine_Running5s_RunMode

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable108_1:
        DC32     modeMachine_Running30s_RunMode

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable108_2:
        DC32     modeMachine_Running15s_TimeSetMode

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1852 void modeMachine_MiddlineTesting_AlwaysShow_Extra()
// 1853 {//ÕâÀïÏÔÊ¾²ÎÊý
modeMachine_MiddlineTesting_AlwaysShow_Extra:
        PUSH     {R7,LR}
// 1854     modeMachine_Always_ImageOutput();//Êä³öÍ¼Ïñ
        BL       modeMachine_Always_ImageOutput
// 1855     v_MonoRev_6x8Str(0,0,"Middline",1);
        MOVS     R3,#+1
        LDR.W    R2,??DataTable134_1
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
// 1856     v_MonoRev_6x8Str(0,1,"MiddLine:",0);//ÖÐÏßÎ»ÖÃ
        MOVS     R3,#+0
        LDR.W    R2,??DataTable134_2
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
// 1857     v_MonoRev_6x8Str(0,2," K_Curve:",0);//¸ü¸Ä¾í»ýÏµÊý
        MOVS     R3,#+0
        LDR.W    R2,??DataTable135
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
// 1858     v_MonoRev_6x8Str(0,3,">Y_Stop:",0);//×ÝÖáÍ£Ö¹Î»ÖÃ
        MOVS     R3,#+0
        LDR.W    R2,??DataTable135_1
        MOVS     R1,#+3
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
// 1859     v_MonoRev_6x8Str(0,4," P_Curve:",0);//×ÝÖáÍ£Ö¹Î»ÖÃ
        MOVS     R3,#+0
        LDR.W    R2,??DataTable134_5
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
// 1860     
// 1861     v_MonoRev_Number(64,1,m_ImageAbstract.servo_gaiaInfor_image,10);
        MOVS     R2,#+10
        LDR.W    R0,??DataTable134_6
        LDRB     R0,[R0, #+483]
        VMOV     S0,R0
        VCVT.F32.U32 S0,S0
        MOVS     R1,#+1
        MOVS     R0,#+64
        BL       v_MonoRev_Number
// 1862     v_MonoRev_Number(64,2,m_Control.K_Curve,10);//ÇúÏßÏµÊý¸ü¸Ä <= K_Curve
        MOVS     R2,#+10
        LDR.N    R0,??DataTable111
        VLDR     S0,[R0, #+140]
        MOVS     R1,#+2
        MOVS     R0,#+64
        BL       v_MonoRev_Number
// 1863     v_MonoRev_Number(64,3,m_Control.servo_imageYstopLine,10);//ÇúÏßÏµÊý¸ü¸Ä <= K_Curve
        MOVS     R2,#+10
        LDR.N    R0,??DataTable111
        LDRB     R0,[R0, #+132]
        VMOV     S0,R0
        VCVT.F32.U32 S0,S0
        MOVS     R1,#+3
        MOVS     R0,#+64
        BL       v_MonoRev_Number
// 1864     v_MonoRev_Number(64,4,m_Control.P_Curve,10);//ÇúÏßÏµÊý¸ü¸Ä <= K_Curve
        MOVS     R2,#+10
        LDR.N    R0,??DataTable111
        VLDR     S0,[R0, #+136]
        MOVS     R1,#+4
        MOVS     R0,#+64
        BL       v_MonoRev_Number
// 1865 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable109:
        DC32     0x3dcccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable109_1:
        DC32     modeMachine_RunningAlways_RunMode

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable109_2:
        DC32     modeMachine_Running30s_TimeSetMode

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1866 void modeMachine_MiddlineTesting_AlwaysShow_ExtraExtra()
// 1867 {//ÕâÀïÏÔÊ¾²ÎÊý
modeMachine_MiddlineTesting_AlwaysShow_ExtraExtra:
        PUSH     {R7,LR}
// 1868     modeMachine_Always_ImageOutput();//Êä³öÍ¼Ïñ
        BL       modeMachine_Always_ImageOutput
// 1869     v_MonoRev_6x8Str(0,0,"Middline",1);
        MOVS     R3,#+1
        LDR.W    R2,??DataTable134_1
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
// 1870     v_MonoRev_6x8Str(0,1,"MiddLine:",0);//ÖÐÏßÎ»ÖÃ
        MOVS     R3,#+0
        LDR.W    R2,??DataTable134_2
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
// 1871     v_MonoRev_6x8Str(0,2," K_Curve:",0);//¸ü¸Ä¾í»ýÏµÊý
        MOVS     R3,#+0
        LDR.W    R2,??DataTable135
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
// 1872     v_MonoRev_6x8Str(0,3," Y_Stop:",0);//×ÝÖáÍ£Ö¹Î»ÖÃ
        MOVS     R3,#+0
        LDR.W    R2,??DataTable134_4
        MOVS     R1,#+3
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
// 1873     v_MonoRev_6x8Str(0,4,">P_Curve:",0);//×ÝÖáÍ£Ö¹Î»ÖÃ
        MOVS     R3,#+0
        LDR.W    R2,??DataTable136_2
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
// 1874     
// 1875     v_MonoRev_Number(64,1,m_ImageAbstract.servo_gaiaInfor_image,10);
        MOVS     R2,#+10
        LDR.W    R0,??DataTable134_6
        LDRB     R0,[R0, #+483]
        VMOV     S0,R0
        VCVT.F32.U32 S0,S0
        MOVS     R1,#+1
        MOVS     R0,#+64
        BL       v_MonoRev_Number
// 1876     v_MonoRev_Number(64,2,m_Control.K_Curve,10);//ÇúÏßÏµÊý¸ü¸Ä <= K_Curve
        MOVS     R2,#+10
        LDR.N    R0,??DataTable111
        VLDR     S0,[R0, #+140]
        MOVS     R1,#+2
        MOVS     R0,#+64
        BL       v_MonoRev_Number
// 1877     v_MonoRev_Number(64,3,m_Control.servo_imageYstopLine,10);//ÇúÏßÏµÊý¸ü¸Ä <= K_Curve
        MOVS     R2,#+10
        LDR.N    R0,??DataTable111
        LDRB     R0,[R0, #+132]
        VMOV     S0,R0
        VCVT.F32.U32 S0,S0
        MOVS     R1,#+3
        MOVS     R0,#+64
        BL       v_MonoRev_Number
// 1878     v_MonoRev_Number(64,4,m_Control.P_Curve,10);//ÇúÏßÏµÊý¸ü¸Ä <= K_Curve
        MOVS     R2,#+10
        LDR.N    R0,??DataTable111
        VLDR     S0,[R0, #+136]
        MOVS     R1,#+4
        MOVS     R0,#+64
        BL       v_MonoRev_Number
// 1879 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable110:
        DC32     0xbdcccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable110_1:
        DC32     vPtr_CheckLightingChaser
// 1880 
// 1881 //==============================================Í¼ÏñÊä³ö

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1882 /*--*/void modeMachine_ImageOutPut_TurnOnMode()
// 1883 {
modeMachine_ImageOutPut_TurnOnMode:
        PUSH     {R7,LR}
// 1884     FuncSet(0,0,0,0,0,0,0);
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+20]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
// 1885     UpDownSureBack(modeMachine_MiddlineTesting_TurnMode,
// 1886                    modeMachine_SpecialStatusCut_TurnOnMode,
// 1887                    modeMachine_ImageOutPut_Testing,
// 1888                    0);//¸ø¶¨
        LDR.W    R0,??DataTable137_1
        LDR.N    R1,??DataTable117_5
        STR      R1,[R0, #+8]
        LDR.W    R0,??DataTable137_1
        LDR.W    R1,??DataTable137_2
        STR      R1,[R0, #+4]
        LDR.W    R0,??DataTable137_1
        LDR.W    R1,??DataTable137_3
        STR      R1,[R0, #+20]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
// 1889     
// 1890     AlwaysSet(modeMachine_Always_ImageOutput);
        LDR.W    R0,??DataTable137_1
        LDR.W    R1,??DataTable139
        STR      R1,[R0, #+28]
// 1891     v_Panel_DisplayCommandLine(5,1);
        MOVS     R1,#+1
        MOVS     R0,#+5
        BL       v_Panel_DisplayCommandLine
// 1892 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable111:
        DC32     m_Control
// 1893 
// 1894 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1895 /*------*/void modeMachine_ImageOutPut_Testing()
// 1896 {
modeMachine_ImageOutPut_Testing:
        PUSH     {R7,LR}
// 1897     FuncSet(0,0,0,0,0,0,0);
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+20]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
// 1898     UpDownSureBack(0,
// 1899                    modeMachine_ImageOutPut_UsedNormal,
// 1900                    modeMachine_ImageOutPut_GetNumber,
// 1901                    modeMachine_ImageOutPut_TurnOnMode);//¸ø¶¨
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        LDR.W    R0,??DataTable137_1
        LDR.W    R1,??DataTable138
        STR      R1,[R0, #+4]
        LDR.W    R0,??DataTable137_1
        LDR.W    R1,??DataTable138_1
        STR      R1,[R0, #+20]
        LDR.W    R0,??DataTable137_1
        LDR.W    R1,??DataTable121
        STR      R1,[R0, #+24]
// 1902     
// 1903     AlwaysSet(modeMachine_ImageOutPut_ShowAlways);
        LDR.W    R0,??DataTable137_1
        LDR.W    R1,??DataTable139_1
        STR      R1,[R0, #+28]
// 1904     v_MonoRev_6x8Str(0,0,">GetData",0);//ÖÐÏßÎ»ÖÃ
        MOVS     R3,#+0
        LDR.W    R2,??DataTable139_2
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
// 1905     v_MonoRev_6x8Str(0,1," TxData",0);//ÖÐÏßÎ»ÖÃ
        MOVS     R3,#+0
        LDR.W    R2,??DataTable139_3
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
// 1906 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable112:
        DC32     modeMachine_RunningSet_TurnOnMode

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable112_1:
        DC32     modeMachine_RunningLight_TimeSetMode

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1907 /*------*/void modeMachine_ImageOutPut_UsedNormal()
// 1908 {
modeMachine_ImageOutPut_UsedNormal:
        PUSH     {R7,LR}
// 1909     FuncSet(0,0,0,0,0,0,0);
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+20]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
// 1910     UpDownSureBack(modeMachine_ImageOutPut_Testing,
// 1911                    0,
// 1912                    modeMachine_ImageOutPut_Tx,
// 1913                    modeMachine_ImageOutPut_TurnOnMode);//¸ø¶¨
        LDR.W    R0,??DataTable137_1
        LDR.W    R1,??DataTable137_3
        STR      R1,[R0, #+8]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        LDR.W    R0,??DataTable137_1
        LDR.W    R1,??DataTable139_4
        STR      R1,[R0, #+20]
        LDR.W    R0,??DataTable137_1
        LDR.W    R1,??DataTable121
        STR      R1,[R0, #+24]
// 1914     
// 1915     AlwaysSet(modeMachine_ImageOutPut_ShowAlways);
        LDR.W    R0,??DataTable137_1
        LDR.W    R1,??DataTable139_1
        STR      R1,[R0, #+28]
// 1916     v_MonoRev_6x8Str(0,0," GetData",0);//ÖÐÏßÎ»ÖÃ
        MOVS     R3,#+0
        LDR.W    R2,??DataTable139_5
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
// 1917     v_MonoRev_6x8Str(0,1,">TxData",0);//ÖÐÏßÎ»ÖÃ
        MOVS     R3,#+0
        LDR.W    R2,??DataTable139_6
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
// 1918 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1919 /*------*/void modeMachine_ImageOutPut_ShowAlways()
// 1920 {
modeMachine_ImageOutPut_ShowAlways:
        PUSH     {R7,LR}
// 1921     modeMachine_Always_ImageOutput();
        BL       modeMachine_Always_ImageOutput
// 1922 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1923 /*------*//*------*/void modeMachine_ImageOutPut_Tx()
// 1924 {
modeMachine_ImageOutPut_Tx:
        PUSH     {R3-R5,LR}
// 1925     for(uint8 loop = 0;loop < 4;loop++)
        MOVS     R4,#+0
        B.N      ??modeMachine_ImageOutPut_Tx_0
// 1926     {
// 1927         uint8 time = m_system.timer;
??modeMachine_ImageOutPut_Tx_1:
        LDR.W    R0,??DataTable140
        LDR      R5,[R0, #+0]
// 1928         v_UartTxImageSix2PC(m_need_tx.Information_Unnamed_Mark001 + 300*loop);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOV      R0,#+600
        LDR.W    R1,??DataTable139_7
        MLA      R0,R0,R4,R1
        ADD      R0,R0,#+25344
        ADDS     R0,R0,#+156
        BL       v_UartTxImageSix2PC
// 1929         while(!((time - m_system.timer)>3000));
??modeMachine_ImageOutPut_Tx_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR.W    R0,??DataTable140
        LDR      R0,[R0, #+0]
        SUBS     R0,R5,R0
        MOVW     R1,#+3001
        CMP      R0,R1
        BCC.N    ??modeMachine_ImageOutPut_Tx_2
// 1930     }
        ADDS     R4,R4,#+1
??modeMachine_ImageOutPut_Tx_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+4
        BLT.N    ??modeMachine_ImageOutPut_Tx_1
// 1931 }
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable114:
        DC32     modeMachine_RunningLight_RunMode

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1932 /*------*//*------*/void modeMachine_ImageOutPut_GetNumber()
// 1933 {
modeMachine_ImageOutPut_GetNumber:
        PUSH     {R4,LR}
// 1934     uint8 loop = 0;
        MOVS     R4,#+0
        B.N      ??modeMachine_ImageOutPut_GetNumber_0
// 1935     do
// 1936     {
// 1937         if(1 == m_Control.CanCheck)
// 1938         {v_UartSaveImage_sint16(m_need_tx.Information_Unnamed_Mark001 + 300*loop);}
// 1939         uint16 delay = 10000;
// 1940         while((1 == m_Control.CanCheck)&&((delay--)));
// 1941         loop ++;
// 1942         if(loop > 4)
// 1943         {
// 1944             break;
// 1945         }
// 1946     }
// 1947     while(1);
??modeMachine_ImageOutPut_GetNumber_1:
??modeMachine_ImageOutPut_GetNumber_0:
        LDR.W    R0,??DataTable141
        LDRB     R0,[R0, #+8]
        CMP      R0,#+1
        BNE.N    ??modeMachine_ImageOutPut_GetNumber_2
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOV      R0,#+600
        LDR.W    R1,??DataTable139_7
        MLA      R0,R0,R4,R1
        ADD      R0,R0,#+25344
        ADDS     R0,R0,#+156
        BL       v_UartSaveImage_sint16
??modeMachine_ImageOutPut_GetNumber_2:
        MOVW     R0,#+10000
??modeMachine_ImageOutPut_GetNumber_3:
        LDR.W    R1,??DataTable141
        LDRB     R1,[R1, #+8]
        CMP      R1,#+1
        BNE.N    ??modeMachine_ImageOutPut_GetNumber_4
        MOVS     R1,R0
        SUBS     R0,R1,#+1
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+0
        BNE.N    ??modeMachine_ImageOutPut_GetNumber_3
??modeMachine_ImageOutPut_GetNumber_4:
        ADDS     R4,R4,#+1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+5
        BLT.N    ??modeMachine_ImageOutPut_GetNumber_1
// 1948 }
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable115:
        DC32     modeMachine_ServoTesting_TurnMode

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable115_1:
        DC32     modeMachine_BasicTesting_TestingMode

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable115_2:
        DC32     modeMachine_BasicTesting_TurnMode
// 1949 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1950 /*--*/void modeMachine_SpecialStatusCut_TurnOnMode()
// 1951 {
modeMachine_SpecialStatusCut_TurnOnMode:
        PUSH     {R7,LR}
// 1952     FuncSet(0,0,0,0,0,0,0);
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+20]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
// 1953     UpDownSureBack(modeMachine_ImageOutPut_TurnOnMode,
// 1954                    0,
// 1955                    modeMachine_SpecialStatusDisplay_Leaf,
// 1956                    0);//¸ø¶¨
        LDR.W    R0,??DataTable137_1
        LDR.W    R1,??DataTable121
        STR      R1,[R0, #+8]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        LDR.W    R0,??DataTable137_1
        LDR.W    R1,??DataTable139_8
        STR      R1,[R0, #+20]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
// 1957     
// 1958     AlwaysSet(modeMachine_Always_ImageOutput);
        LDR.W    R0,??DataTable137_1
        LDR.W    R1,??DataTable139
        STR      R1,[R0, #+28]
// 1959     v_Panel_DisplayCommandLine(6,1);
        MOVS     R1,#+1
        MOVS     R0,#+6
        BL       v_Panel_DisplayCommandLine
// 1960 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable116:
        DC32     modeMachine_MotorTesting_TurnMode

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable116_1:
        DC32     modeMachine_ServoTesting_TestingMode

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable116_2:
        DC32     modeMachine_CameraInformationTesting_TurnMode

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1961 /*------*/void modeMachine_SpecialStatusDisplay_Leaf()
// 1962 {
// 1963     FuncSet(0,0,0,0,0,0,0);
modeMachine_SpecialStatusDisplay_Leaf:
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+20]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
// 1964     UpDownSureBack(0,0,
// 1965                    modeMachine_SpecialStatusDisplay_Leaf,
// 1966                    modeMachine_SpecialStatusCut_TurnOnMode);//¸ø¶¨
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        LDR.W    R0,??DataTable137_1
        LDR.W    R1,??DataTable139_8
        STR      R1,[R0, #+20]
        LDR.W    R0,??DataTable137_1
        LDR.W    R1,??DataTable137_2
        STR      R1,[R0, #+24]
// 1967     AlwaysSet(modeMachine_SpecialAlwaysShow);
        LDR.W    R0,??DataTable137_1
        LDR.W    R1,??DataTable143_1
        STR      R1,[R0, #+28]
// 1968 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable117:
        DC32     modeMachine_RunningLight_Waiting

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable117_1:
        DC32     modeMachine_RunningDark_Check

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable117_2:
        DC32     m_CarRunningMode

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable117_3:
        DC32     modeMachine_RunningLight_Check

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable117_4:
        DC32     modeMachine_MotorTesting_TestingMode

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable117_5:
        DC32     modeMachine_MiddlineTesting_TurnMode

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable117_6:
        DC32     modeMachine_CameraInformationTesting_TestingMode

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable117_7:
        DC32     modeMachine_Move_ServoTestingPanel_Display

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable117_8:
        DC32     modeMachine_Move_ServoTesting_UpOutPut

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable117_9:
        DC32     modeMachine_Move_ServoTesting_DownOutPut

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable117_10:
        DC32     modeMachine_Always_MotorTestingPanel_Display

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable117_11:
        DC32     modeMachine_Up_MotorTestingMach_Output

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable117_12:
        DC32     modeMachine_Down_MotorTestingMach_Output

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable117_13:
        DC32     modeMachine_Always_CameraTestingMach_Output

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable117_14:
        DC32     modeMachine_CameraTestingMach_Up

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable117_15:
        DC32     modeMachine_CameraTestingMach_Left

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable117_16:
        DC32     modeMachine_CameraTestingMach_CalibrationModeSwitch

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable117_17:
        DC32     modeMachine_CameraTestingMach_Down

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable117_18:
        DC32     modeMachine_CameraTestingMach_WriteNowPoint

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable117_19:
        DC32     modeMachine_CameraTestingMach_Right

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1969 /*------*//*------*/void modeMachine_SpecialAlwaysShow()
// 1970 {
modeMachine_SpecialAlwaysShow:
        PUSH     {R7,LR}
// 1971     modeMachine_Always_ImageOutput();
        BL       modeMachine_Always_ImageOutput
// 1972     //µ¥Ïß¸÷´óÔªËØµÄÏÔÊ¾
// 1973     //ÔÝÊ±»¹Ã»ÏëºÃ
// 1974 }
        POP      {R0,PC}          ;; return
// 1975 
// 1976 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1977 void modeMachine_ThirdParaments_Viewer()
// 1978 {
modeMachine_ThirdParaments_Viewer:
        PUSH     {R2-R4,LR}
// 1979     modeMachine_Always_ImageOutput();
        BL       modeMachine_Always_ImageOutput
// 1980     v_MonoRev_6x8Str(0,0,"BkBar:",0);//ÖÐÏßÎ»ÖÃ
        MOVS     R3,#+0
        LDR.W    R2,??DataTable139_9
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
// 1981     v_MonoRev_Number(64,0,m_ImageAbstract.BlackBarHeight_Start,10);//ÖÐÏßÎ»ÖÃ
        MOVS     R2,#+10
        LDR.W    R0,??DataTable134_6
        LDRB     R0,[R0, #+23]
        VMOV     S0,R0
        VCVT.F32.U32 S0,S0
        MOVS     R1,#+0
        MOVS     R0,#+64
        BL       v_MonoRev_Number
// 1982     v_MonoRev_Number(64,1,m_ImageAbstract.BlackBarHeight_End,10);//ÖÐÏßÎ»ÖÃ
        MOVS     R2,#+10
        LDR.W    R0,??DataTable134_6
        LDRB     R0,[R0, #+24]
        VMOV     S0,R0
        VCVT.F32.U32 S0,S0
        MOVS     R1,#+1
        MOVS     R0,#+64
        BL       v_MonoRev_Number
// 1983     v_MonoRev_6x8Str(0,2,"Rt_KB:",0);//Ö±½ÇÎ»ÖÃ
        MOVS     R3,#+0
        LDR.W    R2,??DataTable139_10
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
// 1984     char ch = m_ModeMachine.showRtBlackAngle;
        LDR.W    R0,??DataTable137_1
        LDRB     R0,[R0, #+35]
        STRB     R0,[SP, #+4]
// 1985     v_MonoRev_6x8Str(0,3,&ch,0);//Õ¹Ê¾×Ö·û
        MOVS     R3,#+0
        ADD      R2,SP,#+4
        MOVS     R1,#+3
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
// 1986     v_MonoRev_Number(64,2,m_ImageAbstract.Rt_K_Var,10);//Ö±½ÇÎ»ÖÃ
        MOVS     R2,#+10
        LDR.W    R0,??DataTable134_6
        VLDR     S0,[R0, #+28]
        MOVS     R1,#+2
        MOVS     R0,#+64
        BL       v_MonoRev_Number
// 1987     v_MonoRev_Number(64,3,m_ImageAbstract.Rt_Var,10);//Ö±½ÇÎ»ÖÃ
        MOVS     R2,#+10
        LDR.W    R0,??DataTable134_6
        VLDR     S0,[R0, #+32]
        MOVS     R1,#+3
        MOVS     R0,#+64
        BL       v_MonoRev_Number
// 1988     
// 1989     v_MonoRev_Number(64,4,m_ImageAbstract.Rt_Angle_Start_Y,10);//Ö±½ÇÎ»ÖÃ
        MOVS     R2,#+10
        LDR.W    R0,??DataTable134_6
        LDRB     R0,[R0, #+18]
        VMOV     S0,R0
        VCVT.F32.U32 S0,S0
        MOVS     R1,#+4
        MOVS     R0,#+64
        BL       v_MonoRev_Number
// 1990     v_MonoRev_Number(64,5,m_ImageAbstract.Rt_Angle_End_Y,10);//Ö±½ÇÎ»ÖÃ
        MOVS     R2,#+10
        LDR.W    R0,??DataTable134_6
        LDRB     R0,[R0, #+19]
        VMOV     S0,R0
        VCVT.F32.U32 S0,S0
        MOVS     R1,#+5
        MOVS     R0,#+64
        BL       v_MonoRev_Number
// 1991     
// 1992     if(m_ImageAbstract.Rt_Angle_error & 0x01){v_MonoRev_6x8Str(0,4,"RtE_01",0);}//Ö±½ÇÎ»ÖÃ}
        LDR.W    R0,??DataTable134_6
        LDRB     R0,[R0, #+20]
        LSLS     R0,R0,#+31
        BPL.N    ??modeMachine_ThirdParaments_Viewer_0
        MOVS     R3,#+0
        LDR.W    R2,??DataTable141_3
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
        B.N      ??modeMachine_ThirdParaments_Viewer_1
// 1993                                          else{v_MonoRev_6x8Str(0,4,"      ",0);}
??modeMachine_ThirdParaments_Viewer_0:
        MOVS     R3,#+0
        LDR.W    R2,??DataTable141_4
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
// 1994     if(m_ImageAbstract.Rt_Angle_error & 0x02){v_MonoRev_6x8Str(0,5,"RtE_02",0);}//Ö±½ÇÎ»ÖÃ}
??modeMachine_ThirdParaments_Viewer_1:
        LDR.W    R0,??DataTable134_6
        LDRB     R0,[R0, #+20]
        LSLS     R0,R0,#+30
        BPL.N    ??modeMachine_ThirdParaments_Viewer_2
        MOVS     R3,#+0
        LDR.W    R2,??DataTable141_5
        MOVS     R1,#+5
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
        B.N      ??modeMachine_ThirdParaments_Viewer_3
// 1995                                          else{v_MonoRev_6x8Str(0,5,"      ",0);}
??modeMachine_ThirdParaments_Viewer_2:
        MOVS     R3,#+0
        LDR.W    R2,??DataTable141_4
        MOVS     R1,#+5
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
// 1996     if(m_ImageAbstract.Rt_Angle_error & 0x04){v_MonoRev_6x8Str(0,6,"RtE_04",0);}//Ö±½ÇÎ»ÖÃ}
??modeMachine_ThirdParaments_Viewer_3:
        LDR.W    R0,??DataTable134_6
        LDRB     R0,[R0, #+20]
        LSLS     R0,R0,#+29
        BPL.N    ??modeMachine_ThirdParaments_Viewer_4
        MOVS     R3,#+0
        LDR.W    R2,??DataTable141_6
        MOVS     R1,#+6
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
        B.N      ??modeMachine_ThirdParaments_Viewer_5
// 1997                                          else{v_MonoRev_6x8Str(0,6,"      ",0);}
??modeMachine_ThirdParaments_Viewer_4:
        MOVS     R3,#+0
        LDR.W    R2,??DataTable141_4
        MOVS     R1,#+6
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
// 1998     if(m_ImageAbstract.Rt_Angle_error & 0x08){v_MonoRev_6x8Str(0,7,"RtE_08",0);}//Ö±½ÇÎ»ÖÃ}
??modeMachine_ThirdParaments_Viewer_5:
        LDR.W    R0,??DataTable134_6
        LDRB     R0,[R0, #+20]
        LSLS     R0,R0,#+28
        BPL.N    ??modeMachine_ThirdParaments_Viewer_6
        MOVS     R3,#+0
        LDR.W    R2,??DataTable141_7
        MOVS     R1,#+7
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
        B.N      ??modeMachine_ThirdParaments_Viewer_7
// 1999                                          else{v_MonoRev_6x8Str(0,7,"      ",0);}
??modeMachine_ThirdParaments_Viewer_6:
        MOVS     R3,#+0
        LDR.W    R2,??DataTable141_4
        MOVS     R1,#+7
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
// 2000     
// 2001     v_MonoRev_Number(64,7,m_ImageAbstract.RtAngleLength,10);
??modeMachine_ThirdParaments_Viewer_7:
        MOVS     R2,#+10
        LDR.W    R0,??DataTable134_6
        VLDR     S0,[R0, #+12]
        MOVS     R1,#+7
        MOVS     R0,#+64
        BL       v_MonoRev_Number
// 2002     
// 2003     s_color Red;
// 2004     Red.A_Blue_31 = 0;Red.B_Green_63 = 0;Red.C_Red_31 = 31;
        MOVS     R0,#+0
        STRB     R0,[SP, #+2]
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
        MOVS     R0,#+31
        STRB     R0,[SP, #+0]
// 2005     for(uint8 loop = 0;loop < 60;loop++)
        MOVS     R4,#+0
        B.N      ??modeMachine_ThirdParaments_Viewer_8
// 2006     {
// 2007         v_ColorRev_PutPoint(loop,m_ImageAbstract.Rt_Angle_End_Y,&Red);
??modeMachine_ThirdParaments_Viewer_9:
        ADD      R2,SP,#+0
        LDR.W    R0,??DataTable134_6
        LDRB     R1,[R0, #+19]
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       v_ColorRev_PutPoint
// 2008         v_ColorRev_PutPoint(loop,m_ImageAbstract.Rt_Angle_Start_Y,&Red);
        ADD      R2,SP,#+0
        LDR.W    R0,??DataTable134_6
        LDRB     R1,[R0, #+18]
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       v_ColorRev_PutPoint
// 2009     }
        ADDS     R4,R4,#+1
??modeMachine_ThirdParaments_Viewer_8:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+60
        BLT.N    ??modeMachine_ThirdParaments_Viewer_9
// 2010 }
        POP      {R0,R1,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable118:
        DC32     modeMachine_BasicTesting_DataShow

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable118_1:
        DC32     modeMachine_Always_CameraInformationTesting_DataShow
// 2011 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2012 void modeMachine_set_form1to2_paraments(void)
// 2013 {
modeMachine_set_form1to2_paraments:
        PUSH     {R7,LR}
// 2014     FuncSet(0,0,0,0,0,0,0);
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+20]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
// 2015     UpDownSureBack(modeMachine_ImageOutPut_TurnOnMode,
// 2016                    0,
// 2017                    modeMachine_SpecialStatusDisplay_Leaf,
// 2018                    0);//¸ø¶¨
        LDR.W    R0,??DataTable137_1
        LDR.N    R1,??DataTable121
        STR      R1,[R0, #+8]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        LDR.W    R0,??DataTable137_1
        LDR.W    R1,??DataTable139_8
        STR      R1,[R0, #+20]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
// 2019     
// 2020     AlwaysSet(modeMachine_Always_ImageOutput);
        LDR.W    R0,??DataTable137_1
        LDR.W    R1,??DataTable139
        STR      R1,[R0, #+28]
// 2021     v_Panel_DisplayCommandLine(6,1);
        MOVS     R1,#+1
        MOVS     R0,#+6
        BL       v_Panel_DisplayCommandLine
// 2022 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable119:
        DC32     `?<Constant "              ">`
// 2023 
// 2024 
// 2025 //============================================================================//

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2026 void modeMachine_set_speed_max_min_TurnOnMode(void)
// 2027 {
modeMachine_set_speed_max_min_TurnOnMode:
        PUSH     {R7,LR}
// 2028     FuncSet(0,0,0,0,0,0,0);
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+20]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
// 2029     UpDownSureBack(modeMachine_ServoFunction_TurnOnMode,//ÉÏÒ»½Úµã=>Íâ²¿¸ø¶¨
// 2030                    0,//ÏÂÒ»½Úµã=>Íâ²¿¸ø¶¨
// 2031                    modeMachine_set_speed_max_min_SettingSpeedMax,
// 2032                    0);//¸ø¶¨=>Íâ²¿¸ø¶¨
        LDR.W    R0,??DataTable137_1
        LDR.W    R1,??DataTable143_4
        STR      R1,[R0, #+8]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        LDR.W    R0,??DataTable137_1
        LDR.W    R1,??DataTable144_2
        STR      R1,[R0, #+20]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
// 2033     
// 2034     AlwaysSet(modeMachine_Always_ImageOutput);
        LDR.W    R0,??DataTable137_1
        LDR.W    R1,??DataTable139
        STR      R1,[R0, #+28]
// 2035     v_Panel_DisplayCommandLine(1,5);
        MOVS     R1,#+5
        MOVS     R0,#+1
        BL       v_Panel_DisplayCommandLine
// 2036 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2037 /*×Ó¹¦ÄÜ*/void modeMachine_set_speed_max_min_SettingSpeedMax(void)
// 2038 {
// 2039     FuncSet(0,0,0,0,0,0,0);
modeMachine_set_speed_max_min_SettingSpeedMax:
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+20]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
// 2040     UpDownSureBack(0,//ÉÏÒ»½Úµã
// 2041                    modeMachine_set_speed_max_min_SettingSpeedMin,//ÏÂÒ»½Úµã
// 2042                    0,
// 2043                    modeMachine_set_speed_max_min_TurnOnMode);//¸ø¶¨
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        LDR.W    R0,??DataTable137_1
        LDR.W    R1,??DataTable144_3
        STR      R1,[R0, #+4]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+20]
        LDR.W    R0,??DataTable137_1
        LDR.W    R1,??DataTable144_4
        STR      R1,[R0, #+24]
// 2044     UpDownS5S4(modeMachine_set_speed_max_min_DisplayParaments_addMaxSpeed,
// 2045                modeMachine_set_speed_max_min_DisplayParaments_cutMaxSpeed);
        LDR.W    R0,??DataTable137_1
        LDR.W    R1,??DataTable144_5
        STR      R1,[R0, #+16]
        LDR.W    R0,??DataTable137_1
        LDR.W    R1,??DataTable145
        STR      R1,[R0, #+12]
// 2046     AlwaysSet(modeMachine_set_speed_max_min_DisplayParaments_firstPara);
        LDR.W    R0,??DataTable137_1
        LDR.W    R1,??DataTable152
        STR      R1,[R0, #+28]
// 2047     //v_Panel_DisplayCommandLine(6,1);
// 2048 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable121:
        DC32     modeMachine_ImageOutPut_TurnOnMode

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable121_1:
        DC32     modeMachine_MiddlineTesting_TestingMode

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable121_2:
        DC32     modeMachine_MiddlineTesting_AlwaysShow

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable121_3:
        DC32     modeMachine_MiddlineTesting_TestingMode_AddKCurve

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2049 /*×Ó¹¦ÄÜ*/void modeMachine_set_speed_max_min_SettingSpeedMin(void)
// 2050 {
// 2051     FuncSet(0,0,0,0,0,0,0);
modeMachine_set_speed_max_min_SettingSpeedMin:
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+20]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
// 2052     UpDownSureBack(modeMachine_set_speed_max_min_SettingSpeedMax,//ÉÏÒ»½Úµã
// 2053                    modeMachine_set_speed_max_min_SettingSpeedCut,//ÏÂÒ»½Úµã
// 2054                    0,
// 2055                    modeMachine_set_speed_max_min_TurnOnMode);//¸ø¶¨
        LDR.W    R0,??DataTable137_1
        LDR.W    R1,??DataTable144_2
        STR      R1,[R0, #+8]
        LDR.W    R0,??DataTable137_1
        LDR.W    R1,??DataTable145_1
        STR      R1,[R0, #+4]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+20]
        LDR.W    R0,??DataTable137_1
        LDR.W    R1,??DataTable144_4
        STR      R1,[R0, #+24]
// 2056     UpDownS5S4(modeMachine_set_speed_max_min_DisplayParaments_addMinSpeed,
// 2057                modeMachine_set_speed_max_min_DisplayParaments_cutMinSpeed);
        LDR.W    R0,??DataTable137_1
        LDR.W    R1,??DataTable145_2
        STR      R1,[R0, #+16]
        LDR.W    R0,??DataTable137_1
        LDR.W    R1,??DataTable145_3
        STR      R1,[R0, #+12]
// 2058     AlwaysSet(modeMachine_set_speed_max_min_DisplayParaments_secondPara);
        LDR.W    R0,??DataTable137_1
        LDR.W    R1,??DataTable152_1
        STR      R1,[R0, #+28]
// 2059 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable122:
        DC32     modeMachine_MiddlineTesting_TestingMode_CutKCurve

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable122_1:
        DC32     modeMachine_MiddlineTesting_TestingMode_Extra

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable122_2:
        DC32     modeMachine_MiddlineTesting_TestingMode_AddMoreKCurve

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable122_3:
        DC32     modeMachine_MiddlineTesting_AlwaysShow_Extra

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable122_4:
        DC32     modeMachine_MiddlineTesting_TestingMode_AddStopY_Pos

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2060 /*×Ó¹¦ÄÜ*/void modeMachine_set_speed_max_min_SettingSpeedCut(void)
// 2061 {
// 2062     FuncSet(0,0,0,0,0,0,0);
modeMachine_set_speed_max_min_SettingSpeedCut:
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+20]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
// 2063     UpDownSureBack(modeMachine_set_speed_max_min_SettingSpeedMin,//ÉÏÒ»½Úµã
// 2064                    modeMachine_set_speed_max_min_SettingMutilServoPID,//ÏÂÒ»½Úµã
// 2065                    0,
// 2066                    modeMachine_set_speed_max_min_TurnOnMode);//¸ø¶¨
        LDR.W    R0,??DataTable137_1
        LDR.W    R1,??DataTable144_3
        STR      R1,[R0, #+8]
        LDR.W    R0,??DataTable137_1
        LDR.W    R1,??DataTable148
        STR      R1,[R0, #+4]
        LDR.W    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+20]
        LDR.W    R0,??DataTable137_1
        LDR.W    R1,??DataTable144_4
        STR      R1,[R0, #+24]
// 2067     UpDownS5S4(modeMachine_set_speed_max_min_DisplayParaments_addCutSpeed,
// 2068                modeMachine_set_speed_max_min_DisplayParaments_cutCutSpeed);
        LDR.W    R0,??DataTable137_1
        LDR.W    R1,??DataTable148_1
        STR      R1,[R0, #+16]
        LDR.W    R0,??DataTable137_1
        LDR.W    R1,??DataTable148_2
        STR      R1,[R0, #+12]
// 2069     AlwaysSet(modeMachine_set_speed_max_min_DisplayParaments_thirdPara);
        LDR.W    R0,??DataTable137_1
        LDR.W    R1,??DataTable152_2
        STR      R1,[R0, #+28]
// 2070 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable123:
        DC32     modeMachine_Testing_TurnOnMode

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable123_1:
        DC32     modeMachine_MiddlineTesting_TestingMode_CutStopY_Pos

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable123_2:
        DC32     modeMachine_MiddlineTesting_TestingMode_ExtraExtra

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable123_3:
        DC32     modeMachine_MiddlineTesting_AlwaysShow_ExtraExtra

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable123_4:
        DC32     modeMachine_MiddlineTesting_TestingMode_AddMorePCurve

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable123_5:
        DC32     modeMachine_MiddlineTesting_TestingMode_CutMorePCurve

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2071 /*×Ó¹¦ÄÜ*/void modeMachine_set_speed_max_min_SettingMutilServoPID(void)
// 2072 {
// 2073     FuncSet(0,0,0,0,0,0,0);
modeMachine_set_speed_max_min_SettingMutilServoPID:
        LDR.N    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        LDR.N    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        LDR.N    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
        LDR.N    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
        LDR.N    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+20]
        LDR.N    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
// 2074     m_ModeMachine.button_S1_done = modeMachine_set_speed_max_min_DisplayParaments_closeLighting;
        LDR.N    R0,??DataTable137_1
        LDR.W    R1,??DataTable151
        STR      R1,[R0, #+0]
// 2075     UpDownSureBack(modeMachine_set_speed_max_min_SettingSpeedCut,//ÉÏÒ»½Úµã
// 2076                    0,//ÏÂÒ»½Úµã
// 2077                    modeMachine_set_speed_max_min_DisplayParaments_changeMutilServoPID,
// 2078                    modeMachine_set_speed_max_min_TurnOnMode);//¸ø¶¨
        LDR.N    R0,??DataTable137_1
        LDR.W    R1,??DataTable145_1
        STR      R1,[R0, #+8]
        LDR.N    R0,??DataTable137_1
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        LDR.N    R0,??DataTable137_1
        LDR.W    R1,??DataTable151_1
        STR      R1,[R0, #+20]
        LDR.N    R0,??DataTable137_1
        LDR.W    R1,??DataTable144_4
        STR      R1,[R0, #+24]
// 2079     UpDownS5S4(modeMachine_set_speed_max_min_DisplayParaments_changeMutilServoPID_AddParaments,
// 2080                modeMachine_set_speed_max_min_DisplayParaments_changeMutilServoPID_CutParaments);
        LDR.N    R0,??DataTable137_1
        LDR.W    R1,??DataTable151_2
        STR      R1,[R0, #+16]
        LDR.N    R0,??DataTable137_1
        LDR.W    R1,??DataTable152_3
        STR      R1,[R0, #+12]
// 2081     AlwaysSet(modeMachine_set_speed_max_min_DisplayParaments_mutilServoPIDPara);
        LDR.N    R0,??DataTable137_1
        LDR.W    R1,??DataTable152_4
        STR      R1,[R0, #+28]
// 2082 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable124:
        DC32     modeMachine_MiddlineTesting_TestingMode_AddPCurve
// 2083 /*×Ó¹¦ÄÜ*//*×Ó¹¦ÄÜ*//*×Ó¹¦ÄÜ*//*×Ó¹¦ÄÜ*//*×Ó¹¦ÄÜ*//*×Ó¹¦ÄÜ*//*×Ó¹¦ÄÜ*//*×Ó¹¦ÄÜ*/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2084 void modeMachine_set_speed_max_min_DisplayParaments_closeLighting()
// 2085 {
// 2086     if(0 == m_CarRunningMode.isCloseTheLightingStop){m_CarRunningMode.isCloseTheLightingStop = 1;}
modeMachine_set_speed_max_min_DisplayParaments_closeLighting:
        LDR.W    R0,??DataTable152_5
        LDRB     R0,[R0, #+12]
        CMP      R0,#+0
        BNE.N    ??modeMachine_set_speed_max_min_DisplayParament_0
        LDR.W    R0,??DataTable152_5
        MOVS     R1,#+1
        STRB     R1,[R0, #+12]
        B.N      ??modeMachine_set_speed_max_min_DisplayParament_1
// 2087     else{m_CarRunningMode.isCloseTheLightingStop = 0;}
??modeMachine_set_speed_max_min_DisplayParament_0:
        LDR.W    R0,??DataTable152_5
        MOVS     R1,#+0
        STRB     R1,[R0, #+12]
// 2088 }
??modeMachine_set_speed_max_min_DisplayParament_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2089 void modeMachine_set_speed_max_min_DisplayParaments_changeMutilServoPID()
// 2090 {
// 2091     if(0 == m_CarRunningMode.isUsedDoubleServoPID){m_CarRunningMode.isUsedDoubleServoPID = 1;}
modeMachine_set_speed_max_min_DisplayParaments_changeMutilServoPID:
        LDR.W    R0,??DataTable152_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??modeMachine_set_speed_max_min_DisplayParament_2
        LDR.W    R0,??DataTable152_5
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
        B.N      ??modeMachine_set_speed_max_min_DisplayParament_3
// 2092     else{m_CarRunningMode.isUsedDoubleServoPID = 0;}
??modeMachine_set_speed_max_min_DisplayParament_2:
        LDR.W    R0,??DataTable152_5
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 2093 }
??modeMachine_set_speed_max_min_DisplayParament_3:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 2094 void modeMachine_set_speed_max_min_DisplayParaments_changeMutilServoPID_AddParaments()
// 2095 {m_CarRunningMode.DoubleServoPIDRatio += 0.1f;}
modeMachine_set_speed_max_min_DisplayParaments_changeMutilServoPID_AddParaments:
        LDR.W    R0,??DataTable152_5
        VLDR     S0,[R0, #+4]
        VLDR.W   S1,??DataTable136_1  ;; 0x3dcccccd
        VADD.F32 S0,S0,S1
        LDR.W    R0,??DataTable152_5
        VSTR     S0,[R0, #+4]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 2096 void modeMachine_set_speed_max_min_DisplayParaments_changeMutilServoPID_CutParaments()
// 2097 {m_CarRunningMode.DoubleServoPIDRatio -= 0.1f;if(m_CarRunningMode.DoubleServoPIDRatio<0.f){m_CarRunningMode.DoubleServoPIDRatio = 0.f;}}
modeMachine_set_speed_max_min_DisplayParaments_changeMutilServoPID_CutParaments:
        LDR.W    R0,??DataTable152_5
        VLDR     S0,[R0, #+4]
        VLDR.W   S1,??DataTable137  ;; 0xbdcccccd
        VADD.F32 S0,S0,S1
        LDR.W    R0,??DataTable152_5
        VSTR     S0,[R0, #+4]
        LDR.W    R0,??DataTable152_5
        VLDR     S0,[R0, #+4]
        VCMP.F32 S0,#0.0
        FMSTAT   
        BPL.N    ??modeMachine_set_speed_max_min_DisplayParament_4
        LDR.W    R0,??DataTable152_5
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
??modeMachine_set_speed_max_min_DisplayParament_4:
        BX       LR               ;; return
// 2098 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2099 void modeMachine_set_speed_max_min_DisplayParaments_addMaxSpeed(){m_Control.speed_max += 10;}
modeMachine_set_speed_max_min_DisplayParaments_addMaxSpeed:
        LDR.W    R0,??DataTable152_6
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+10
        LDR.W    R1,??DataTable152_6
        STRH     R0,[R1, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable129:
        DC32     `?<Constant "So Big">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2100 void modeMachine_set_speed_max_min_DisplayParaments_cutMaxSpeed(){m_Control.speed_max -= 10;}
modeMachine_set_speed_max_min_DisplayParaments_cutMaxSpeed:
        LDR.W    R0,??DataTable152_6
        LDRH     R0,[R0, #+0]
        SUBS     R0,R0,#+10
        LDR.W    R1,??DataTable152_6
        STRH     R0,[R1, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2101 void modeMachine_set_speed_max_min_DisplayParaments_addMinSpeed(){m_Control.speed_min += 10;}
modeMachine_set_speed_max_min_DisplayParaments_addMinSpeed:
        LDR.W    R0,??DataTable152_6
        LDRH     R0,[R0, #+4]
        ADDS     R0,R0,#+10
        LDR.W    R1,??DataTable152_6
        STRH     R0,[R1, #+4]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2102 void modeMachine_set_speed_max_min_DisplayParaments_cutMinSpeed(){m_Control.speed_min -= 10;}
modeMachine_set_speed_max_min_DisplayParaments_cutMinSpeed:
        LDR.W    R0,??DataTable152_6
        LDRH     R0,[R0, #+4]
        SUBS     R0,R0,#+10
        LDR.W    R1,??DataTable152_6
        STRH     R0,[R1, #+4]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2103 void modeMachine_set_speed_max_min_DisplayParaments_addCutSpeed(){m_Control.speed_cut += 10;}
modeMachine_set_speed_max_min_DisplayParaments_addCutSpeed:
        LDR.W    R0,??DataTable152_6
        LDRH     R0,[R0, #+2]
        ADDS     R0,R0,#+10
        LDR.W    R1,??DataTable152_6
        STRH     R0,[R1, #+2]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2104 void modeMachine_set_speed_max_min_DisplayParaments_cutCutSpeed(){m_Control.speed_cut -= 10;}
modeMachine_set_speed_max_min_DisplayParaments_cutCutSpeed:
        LDR.W    R0,??DataTable152_6
        LDRH     R0,[R0, #+2]
        SUBS     R0,R0,#+10
        LDR.W    R1,??DataTable152_6
        STRH     R0,[R1, #+2]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable134:
        DC32     modeMachine_MiddlineTesting_TestingMode_CutMoreKCurve

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable134_1:
        DC32     `?<Constant "Middline">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable134_2:
        DC32     `?<Constant "MiddLine:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable134_3:
        DC32     `?<Constant ">K_Curve:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable134_4:
        DC32     `?<Constant " Y_Stop:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable134_5:
        DC32     `?<Constant " P_Curve:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable134_6:
        DC32     m_ImageAbstract

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2105 /*×Ó¹¦ÄÜ*/void modeMachine_set_speed_max_min_DisplayParaments_firstPara(void)
// 2106 {
modeMachine_set_speed_max_min_DisplayParaments_firstPara:
        PUSH     {R7,LR}
// 2107     modeMachine_Always_ImageOutput();
        BL       modeMachine_Always_ImageOutput
// 2108     v_MonoRev_6x8Str(0,0,">SpeedMax:",0);//ÖÐÏßÎ»ÖÃ
        MOVS     R3,#+0
        LDR.W    R2,??DataTable152_8
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
// 2109     v_MonoRev_Number(64,0,m_Control.speed_max,10);//ÖÐÏßÎ»ÖÃ
        MOVS     R2,#+10
        LDR.W    R0,??DataTable141
        LDRH     R0,[R0, #+0]
        VMOV     S0,R0
        VCVT.F32.U32 S0,S0
        MOVS     R1,#+0
        MOVS     R0,#+64
        BL       v_MonoRev_Number
// 2110     v_MonoRev_6x8Str(0,1," SpeedMin:",0);//ÖÐÏßÎ»ÖÃ
        MOVS     R3,#+0
        LDR.W    R2,??DataTable152_9
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
// 2111     v_MonoRev_Number(64,1,m_Control.speed_min,10);//ÖÐÏßÎ»ÖÃ
        MOVS     R2,#+10
        LDR.W    R0,??DataTable141
        LDRH     R0,[R0, #+4]
        VMOV     S0,R0
        VCVT.F32.U32 S0,S0
        MOVS     R1,#+1
        MOVS     R0,#+64
        BL       v_MonoRev_Number
// 2112     v_MonoRev_6x8Str(0,2," SpeedCut:",0);//ÖÐÏßÎ»ÖÃ
        MOVS     R3,#+0
        LDR.W    R2,??DataTable152_10
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
// 2113     v_MonoRev_Number(64,2,m_Control.speed_cut,10);//ÖÐÏßÎ»ÖÃ
        MOVS     R2,#+10
        LDR.W    R0,??DataTable141
        LDRH     R0,[R0, #+2]
        VMOV     S0,R0
        VCVT.F32.U32 S0,S0
        MOVS     R1,#+2
        MOVS     R0,#+64
        BL       v_MonoRev_Number
// 2114     v_MonoRev_6x8Str(0,3," mSvoPID:",0);//ÖÐÏßÎ»ÖÃ
        MOVS     R3,#+0
        LDR.W    R2,??DataTable152_11
        MOVS     R1,#+3
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
// 2115     v_MonoRev_Number(64,3,m_CarRunningMode.isUsedDoubleServoPID,10);//ÖÐÏßÎ»ÖÃ
        MOVS     R2,#+10
        LDR.W    R0,??DataTable152_5
        LDRB     R0,[R0, #+0]
        VMOV     S0,R0
        VCVT.F32.U32 S0,S0
        MOVS     R1,#+3
        MOVS     R0,#+64
        BL       v_MonoRev_Number
// 2116     v_MonoRev_Number(64,4,m_CarRunningMode.DoubleServoPIDRatio,10);//ÖÐÏßÎ»ÖÃ
        MOVS     R2,#+10
        LDR.W    R0,??DataTable152_5
        VLDR     S0,[R0, #+4]
        MOVS     R1,#+4
        MOVS     R0,#+64
        BL       v_MonoRev_Number
// 2117 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable135:
        DC32     `?<Constant " K_Curve:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable135_1:
        DC32     `?<Constant ">Y_Stop:">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2118 /*×Ó¹¦ÄÜ*/void modeMachine_set_speed_max_min_DisplayParaments_secondPara(void)
// 2119 {
modeMachine_set_speed_max_min_DisplayParaments_secondPara:
        PUSH     {R7,LR}
// 2120     modeMachine_Always_ImageOutput();
        BL       modeMachine_Always_ImageOutput
// 2121     v_MonoRev_6x8Str(0,0," SpeedMax:",0);//ÖÐÏßÎ»ÖÃ
        MOVS     R3,#+0
        LDR.W    R2,??DataTable152_12
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
// 2122     v_MonoRev_Number(64,0,m_Control.speed_max,10);//ÖÐÏßÎ»ÖÃ
        MOVS     R2,#+10
        LDR.W    R0,??DataTable141
        LDRH     R0,[R0, #+0]
        VMOV     S0,R0
        VCVT.F32.U32 S0,S0
        MOVS     R1,#+0
        MOVS     R0,#+64
        BL       v_MonoRev_Number
// 2123     v_MonoRev_6x8Str(0,1,">SpeedMin:",0);//ÖÐÏßÎ»ÖÃ
        MOVS     R3,#+0
        LDR.W    R2,??DataTable152_13
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
// 2124     v_MonoRev_Number(64,1,m_Control.speed_min,10);//ÖÐÏßÎ»ÖÃ
        MOVS     R2,#+10
        LDR.W    R0,??DataTable141
        LDRH     R0,[R0, #+4]
        VMOV     S0,R0
        VCVT.F32.U32 S0,S0
        MOVS     R1,#+1
        MOVS     R0,#+64
        BL       v_MonoRev_Number
// 2125     v_MonoRev_6x8Str(0,2," SpeedCut:",0);//ÖÐÏßÎ»ÖÃ
        MOVS     R3,#+0
        LDR.W    R2,??DataTable152_10
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
// 2126     v_MonoRev_Number(64,2,m_Control.speed_cut,10);//ÖÐÏßÎ»ÖÃ
        MOVS     R2,#+10
        LDR.W    R0,??DataTable141
        LDRH     R0,[R0, #+2]
        VMOV     S0,R0
        VCVT.F32.U32 S0,S0
        MOVS     R1,#+2
        MOVS     R0,#+64
        BL       v_MonoRev_Number
// 2127     v_MonoRev_6x8Str(0,3," mSvoPID:",0);//ÖÐÏßÎ»ÖÃ
        MOVS     R3,#+0
        LDR.W    R2,??DataTable152_11
        MOVS     R1,#+3
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
// 2128     v_MonoRev_Number(64,3,m_CarRunningMode.isUsedDoubleServoPID,10);//ÖÐÏßÎ»ÖÃ
        MOVS     R2,#+10
        LDR.W    R0,??DataTable152_5
        LDRB     R0,[R0, #+0]
        VMOV     S0,R0
        VCVT.F32.U32 S0,S0
        MOVS     R1,#+3
        MOVS     R0,#+64
        BL       v_MonoRev_Number
// 2129     v_MonoRev_Number(64,4,m_CarRunningMode.DoubleServoPIDRatio,10);//ÖÐÏßÎ»ÖÃ
        MOVS     R2,#+10
        LDR.W    R0,??DataTable152_5
        VLDR     S0,[R0, #+4]
        MOVS     R1,#+4
        MOVS     R0,#+64
        BL       v_MonoRev_Number
// 2130 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable136:
        DC32     modeMachine_MiddlineTesting_TestingMode_CutPCurve

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable136_1:
        DC32     0x3dcccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable136_2:
        DC32     `?<Constant ">P_Curve:">`
// 2131 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2132 void modeMachine_set_speed_max_min_DisplayParaments_thirdPara(void)
// 2133 /*×Ó¹¦ÄÜ*/
// 2134 {
modeMachine_set_speed_max_min_DisplayParaments_thirdPara:
        PUSH     {R7,LR}
// 2135     modeMachine_Always_ImageOutput();
        BL       modeMachine_Always_ImageOutput
// 2136     v_MonoRev_6x8Str(0,0," SpeedMax:",0);//ÖÐÏßÎ»ÖÃ
        MOVS     R3,#+0
        LDR.W    R2,??DataTable152_12
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
// 2137     v_MonoRev_Number(64,0,m_Control.speed_max,10);//ÖÐÏßÎ»ÖÃ
        MOVS     R2,#+10
        LDR.W    R0,??DataTable141
        LDRH     R0,[R0, #+0]
        VMOV     S0,R0
        VCVT.F32.U32 S0,S0
        MOVS     R1,#+0
        MOVS     R0,#+64
        BL       v_MonoRev_Number
// 2138     v_MonoRev_6x8Str(0,1," SpeedMin:",0);//ÖÐÏßÎ»ÖÃ
        MOVS     R3,#+0
        LDR.W    R2,??DataTable152_9
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
// 2139     v_MonoRev_Number(64,1,m_Control.speed_min,10);//ÖÐÏßÎ»ÖÃ
        MOVS     R2,#+10
        LDR.W    R0,??DataTable141
        LDRH     R0,[R0, #+4]
        VMOV     S0,R0
        VCVT.F32.U32 S0,S0
        MOVS     R1,#+1
        MOVS     R0,#+64
        BL       v_MonoRev_Number
// 2140     v_MonoRev_6x8Str(0,2,">SpeedCut:",0);//ÖÐÏßÎ»ÖÃ
        MOVS     R3,#+0
        LDR.W    R2,??DataTable152_14
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
// 2141     v_MonoRev_Number(64,2,m_Control.speed_cut,10);//ÖÐÏßÎ»ÖÃ
        MOVS     R2,#+10
        LDR.W    R0,??DataTable141
        LDRH     R0,[R0, #+2]
        VMOV     S0,R0
        VCVT.F32.U32 S0,S0
        MOVS     R1,#+2
        MOVS     R0,#+64
        BL       v_MonoRev_Number
// 2142     v_MonoRev_6x8Str(0,3," mSvoPID:",0);//ÖÐÏßÎ»ÖÃ
        MOVS     R3,#+0
        LDR.W    R2,??DataTable152_11
        MOVS     R1,#+3
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
// 2143     v_MonoRev_Number(64,3,m_CarRunningMode.isUsedDoubleServoPID,10);//ÖÐÏßÎ»ÖÃ
        MOVS     R2,#+10
        LDR.W    R0,??DataTable152_5
        LDRB     R0,[R0, #+0]
        VMOV     S0,R0
        VCVT.F32.U32 S0,S0
        MOVS     R1,#+3
        MOVS     R0,#+64
        BL       v_MonoRev_Number
// 2144     v_MonoRev_Number(64,4,m_CarRunningMode.DoubleServoPIDRatio,10);//ÖÐÏßÎ»ÖÃ
        MOVS     R2,#+10
        LDR.W    R0,??DataTable152_5
        VLDR     S0,[R0, #+4]
        MOVS     R1,#+4
        MOVS     R0,#+64
        BL       v_MonoRev_Number
// 2145 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable137:
        DC32     0xbdcccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable137_1:
        DC32     m_ModeMachine

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable137_2:
        DC32     modeMachine_SpecialStatusCut_TurnOnMode

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable137_3:
        DC32     modeMachine_ImageOutPut_Testing
// 2146 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2147 void modeMachine_set_speed_max_min_DisplayParaments_mutilServoPIDPara(void)
// 2148 /*×Ó¹¦ÄÜ*/
// 2149 {
modeMachine_set_speed_max_min_DisplayParaments_mutilServoPIDPara:
        PUSH     {R7,LR}
// 2150     modeMachine_Always_ImageOutput();
        BL       modeMachine_Always_ImageOutput
// 2151     v_MonoRev_6x8Str(0,0," SpeedMax:",0);//ÖÐÏßÎ»ÖÃ
        MOVS     R3,#+0
        LDR.W    R2,??DataTable152_12
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
// 2152     v_MonoRev_Number(64,0,m_Control.speed_max,10);//ÖÐÏßÎ»ÖÃ
        MOVS     R2,#+10
        LDR.W    R0,??DataTable141
        LDRH     R0,[R0, #+0]
        VMOV     S0,R0
        VCVT.F32.U32 S0,S0
        MOVS     R1,#+0
        MOVS     R0,#+64
        BL       v_MonoRev_Number
// 2153     v_MonoRev_6x8Str(0,1," SpeedMin:",0);//ÖÐÏßÎ»ÖÃ
        MOVS     R3,#+0
        LDR.W    R2,??DataTable152_9
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
// 2154     v_MonoRev_Number(64,1,m_Control.speed_min,10);//ÖÐÏßÎ»ÖÃ
        MOVS     R2,#+10
        LDR.W    R0,??DataTable141
        LDRH     R0,[R0, #+4]
        VMOV     S0,R0
        VCVT.F32.U32 S0,S0
        MOVS     R1,#+1
        MOVS     R0,#+64
        BL       v_MonoRev_Number
// 2155     v_MonoRev_6x8Str(0,2," SpeedCut:",0);//ÖÐÏßÎ»ÖÃ
        MOVS     R3,#+0
        LDR.W    R2,??DataTable152_10
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
// 2156     v_MonoRev_Number(64,2,m_Control.speed_cut,10);//ÖÐÏßÎ»ÖÃ
        MOVS     R2,#+10
        LDR.W    R0,??DataTable141
        LDRH     R0,[R0, #+2]
        VMOV     S0,R0
        VCVT.F32.U32 S0,S0
        MOVS     R1,#+2
        MOVS     R0,#+64
        BL       v_MonoRev_Number
// 2157     v_MonoRev_6x8Str(0,3,">mSvoPID:",0);//ÖÐÏßÎ»ÖÃ
        MOVS     R3,#+0
        LDR.W    R2,??DataTable152_15
        MOVS     R1,#+3
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
// 2158     v_MonoRev_Number(64,3,m_CarRunningMode.isUsedDoubleServoPID,10);//ÖÐÏßÎ»ÖÃ
        MOVS     R2,#+10
        LDR.W    R0,??DataTable152_5
        LDRB     R0,[R0, #+0]
        VMOV     S0,R0
        VCVT.F32.U32 S0,S0
        MOVS     R1,#+3
        MOVS     R0,#+64
        BL       v_MonoRev_Number
// 2159     v_MonoRev_Number(64,4,m_CarRunningMode.DoubleServoPIDRatio,10);//ÖÐÏßÎ»ÖÃ
        MOVS     R2,#+10
        LDR.W    R0,??DataTable152_5
        VLDR     S0,[R0, #+4]
        MOVS     R1,#+4
        MOVS     R0,#+64
        BL       v_MonoRev_Number
// 2160     v_MonoRev_6x8Str(0,5,"--CloseLight:",0);//ÖÐÏßÎ»ÖÃ
        MOVS     R3,#+0
        LDR.W    R2,??DataTable152_16
        MOVS     R1,#+5
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
// 2161     v_MonoRev_Number(80,5,m_CarRunningMode.isCloseTheLightingStop,10);//ÖÐÏßÎ»ÖÃ
        MOVS     R2,#+10
        LDR.W    R0,??DataTable152_5
        LDRB     R0,[R0, #+12]
        VMOV     S0,R0
        VCVT.F32.U32 S0,S0
        MOVS     R1,#+5
        MOVS     R0,#+80
        BL       v_MonoRev_Number
// 2162 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable138:
        DC32     modeMachine_ImageOutPut_UsedNormal

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable138_1:
        DC32     modeMachine_ImageOutPut_GetNumber
// 2163 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2164 void modeMachine_BlackBar2Littele()
// 2165 {
// 2166     m_ModeMachine.always_done = modeMachine_BlackBar2Littele_Display;
modeMachine_BlackBar2Littele:
        LDR.W    R0,??DataTable152_17
        LDR.W    R1,??DataTable152_18
        STR      R1,[R0, #+28]
// 2167 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable139:
        DC32     modeMachine_Always_ImageOutput

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable139_1:
        DC32     modeMachine_ImageOutPut_ShowAlways

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable139_2:
        DC32     `?<Constant ">GetData">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable139_3:
        DC32     `?<Constant " TxData">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable139_4:
        DC32     modeMachine_ImageOutPut_Tx

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable139_5:
        DC32     `?<Constant " GetData">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable139_6:
        DC32     `?<Constant ">TxData">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable139_7:
        DC32     m_need_tx

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable139_8:
        DC32     modeMachine_SpecialStatusDisplay_Leaf

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable139_9:
        DC32     `?<Constant "BkBar:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable139_10:
        DC32     `?<Constant "Rt_KB:">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2168 void modeMachine_BlackBar2Littele_Display()
// 2169 {
modeMachine_BlackBar2Littele_Display:
        PUSH     {R4,LR}
        SUB      SP,SP,#+16
// 2170     modeMachine_Always_ImageOutput();
        BL       modeMachine_Always_ImageOutput
// 2171     v_MonoRev_Number(0,1,m_ImageTesting.centralPosTurning,10);
        MOVS     R2,#+10
        LDR.W    R0,??DataTable152_19
        LDRB     R0,[R0, #+2]
        VMOV     S0,R0
        VCVT.F32.U32 S0,S0
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       v_MonoRev_Number
// 2172     if(Sid_Left == m_ImageTesting.TurningSide)
        LDR.W    R0,??DataTable152_19
        LDRB     R0,[R0, #+3]
        CMP      R0,#+10
        BNE.N    ??modeMachine_BlackBar2Littele_Display_0
// 2173     {
// 2174         v_MonoRev_6x8Str(0,0,"Left",0);
        MOVS     R3,#+0
        LDR.W    R2,??DataTable152_20
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
// 2175     }
// 2176     if(Sid_Right == m_ImageTesting.TurningSide)
??modeMachine_BlackBar2Littele_Display_0:
        LDR.W    R0,??DataTable152_19
        LDRB     R0,[R0, #+3]
        CMP      R0,#+20
        BNE.N    ??modeMachine_BlackBar2Littele_Display_1
// 2177     {
// 2178         v_MonoRev_6x8Str(0,0,"Right",0);
        MOVS     R3,#+0
        LDR.W    R2,??DataTable152_21
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
// 2179     }
// 2180     if(Sid_NaN == m_ImageTesting.TurningSide)
??modeMachine_BlackBar2Littele_Display_1:
        LDR.W    R0,??DataTable152_19
        LDRB     R0,[R0, #+3]
        CMP      R0,#+50
        BNE.N    ??modeMachine_BlackBar2Littele_Display_2
// 2181     {
// 2182         v_MonoRev_6x8Str(0,0,"NaN",0);
        MOVS     R3,#+0
        ADR.N    R2,??DataTable140_1  ;; "NaN"
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
// 2183     }
// 2184     v_MonoRev_Number(0,2,m_ImageTesting.var,10);
??modeMachine_BlackBar2Littele_Display_2:
        MOVS     R2,#+10
        LDR.W    R0,??DataTable152_19
        VLDR     S0,[R0, #+4]
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       v_MonoRev_Number
// 2185     //´ÓµÚÈýÐÐÏòºó
// 2186     char ch;
// 2187     ch = m_ImageTesting.showLonlyLineFindAboutUpSet;
        LDR.W    R0,??DataTable152_19
        LDRB     R0,[R0, #+8]
        STRB     R0,[SP, #+8]
// 2188     v_MonoRev_6x8Str(0,3,&ch,0);//ÕâÀïÀ´¹Û¿´ÏÂ°É
        MOVS     R3,#+0
        ADD      R2,SP,#+8
        MOVS     R1,#+3
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
// 2189     
// 2190     v_MonoRev_6x8Str(20,4,"fsDraw:",0);
        MOVS     R3,#+0
        LDR.W    R2,??DataTable152_22
        MOVS     R1,#+4
        MOVS     R0,#+20
        BL       v_MonoRev_6x8Str
// 2191     if(1 == m_ImageTesting.firstAndSecond_isBeenDrawing)
        LDR.W    R0,??DataTable152_19
        LDRB     R0,[R0, #+133]
        CMP      R0,#+1
        BNE.N    ??modeMachine_BlackBar2Littele_Display_3
// 2192     {v_MonoRev_6x8Str(64,4,"Yes",0);}
        MOVS     R3,#+0
        ADR.N    R2,??DataTable141_1  ;; "Yes"
        MOVS     R1,#+4
        MOVS     R0,#+64
        BL       v_MonoRev_6x8Str
        B.N      ??modeMachine_BlackBar2Littele_Display_4
// 2193     else
// 2194     {v_MonoRev_6x8Str(64,4,"No",0);}
??modeMachine_BlackBar2Littele_Display_3:
        MOVS     R3,#+0
        ADR.N    R2,??DataTable141_2  ;; 0x4E, 0x6F, 0x00, 0x00
        MOVS     R1,#+4
        MOVS     R0,#+64
        BL       v_MonoRev_6x8Str
// 2195     
// 2196     
// 2197     //========================================================================//
// 2198     v_MonoRev_6x8Str(0,4,"Lonly:",0);
??modeMachine_BlackBar2Littele_Display_4:
        MOVS     R3,#+0
        LDR.W    R2,??DataTable152_23
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
// 2199     if(1 == m_ImageAbstract.isLonlyLineNow)
        LDR.W    R0,??DataTable152_24
        LDRB     R0,[R0, #+4]
        CMP      R0,#+1
        BNE.N    ??modeMachine_BlackBar2Littele_Display_5
// 2200     {v_MonoRev_6x8Str(64,4,"Yes",0);}
        MOVS     R3,#+0
        ADR.N    R2,??DataTable141_1  ;; "Yes"
        MOVS     R1,#+4
        MOVS     R0,#+64
        BL       v_MonoRev_6x8Str
        B.N      ??modeMachine_BlackBar2Littele_Display_6
// 2201     else
// 2202     {v_MonoRev_6x8Str(64,4,"No",0);}
??modeMachine_BlackBar2Littele_Display_5:
        MOVS     R3,#+0
        ADR.N    R2,??DataTable141_2  ;; 0x4E, 0x6F, 0x00, 0x00
        MOVS     R1,#+4
        MOVS     R0,#+64
        BL       v_MonoRev_6x8Str
// 2203     
// 2204     v_MonoRev_6x8Str(0,5,"LLBreak:",0);
??modeMachine_BlackBar2Littele_Display_6:
        MOVS     R3,#+0
        LDR.W    R2,??DataTable152_25
        MOVS     R1,#+5
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
// 2205     if(1 == m_ImageTesting.isOccurLonlyLineBreak)
        LDR.W    R0,??DataTable152_19
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??modeMachine_BlackBar2Littele_Display_7
// 2206     {v_MonoRev_6x8Str(64,5,"Yes",0);}
        MOVS     R3,#+0
        ADR.N    R2,??DataTable141_1  ;; "Yes"
        MOVS     R1,#+5
        MOVS     R0,#+64
        BL       v_MonoRev_6x8Str
        B.N      ??modeMachine_BlackBar2Littele_Display_8
// 2207     else
// 2208     {v_MonoRev_6x8Str(64,5,"No",0);}
??modeMachine_BlackBar2Littele_Display_7:
        MOVS     R3,#+0
        ADR.N    R2,??DataTable141_2  ;; 0x4E, 0x6F, 0x00, 0x00
        MOVS     R1,#+5
        MOVS     R0,#+64
        BL       v_MonoRev_6x8Str
// 2209     
// 2210     v_MonoRev_6x8Str(0,6,"Cross:",0);
??modeMachine_BlackBar2Littele_Display_8:
        MOVS     R3,#+0
        LDR.W    R2,??DataTable152_26
        MOVS     R1,#+6
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
// 2211     if(1 == m_ImageTesting.isOccurCross)
        LDR.W    R0,??DataTable152_19
        LDRB     R0,[R0, #+129]
        CMP      R0,#+1
        BNE.N    ??modeMachine_BlackBar2Littele_Display_9
// 2212     {v_MonoRev_6x8Str(64,6,"Yes",0);}
        MOVS     R3,#+0
        ADR.N    R2,??DataTable141_1  ;; "Yes"
        MOVS     R1,#+6
        MOVS     R0,#+64
        BL       v_MonoRev_6x8Str
        B.N      ??modeMachine_BlackBar2Littele_Display_10
// 2213     else
// 2214     {v_MonoRev_6x8Str(64,6,"No",0);}
??modeMachine_BlackBar2Littele_Display_9:
        MOVS     R3,#+0
        ADR.N    R2,??DataTable141_2  ;; 0x4E, 0x6F, 0x00, 0x00
        MOVS     R1,#+6
        MOVS     R0,#+64
        BL       v_MonoRev_6x8Str
// 2215     
// 2216     v_MonoRev_6x8Str(0,7,"LittleTurn:",0);
??modeMachine_BlackBar2Littele_Display_10:
        MOVS     R3,#+0
        LDR.W    R2,??DataTable152_27
        MOVS     R1,#+7
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
// 2217     if(1 == m_ImageTesting.FindLitteWidthTurning)
        LDR.W    R0,??DataTable152_19
        LDRB     R0,[R0, #+130]
        CMP      R0,#+1
        BNE.N    ??modeMachine_BlackBar2Littele_Display_11
// 2218     {v_MonoRev_6x8Str(64,7,"Lef",0);}else 
        MOVS     R3,#+0
        ADR.N    R2,??DataTable143  ;; "Lef"
        MOVS     R1,#+7
        MOVS     R0,#+64
        BL       v_MonoRev_6x8Str
        B.N      ??modeMachine_BlackBar2Littele_Display_12
// 2219     if(2 == m_ImageTesting.FindLitteWidthTurning)
??modeMachine_BlackBar2Littele_Display_11:
        LDR.W    R0,??DataTable152_19
        LDRB     R0,[R0, #+130]
        CMP      R0,#+2
        BNE.N    ??modeMachine_BlackBar2Littele_Display_13
// 2220     {v_MonoRev_6x8Str(64,7,"Rig",0);}
        MOVS     R3,#+0
        ADR.N    R2,??DataTable143_2  ;; "Rig"
        MOVS     R1,#+7
        MOVS     R0,#+64
        BL       v_MonoRev_6x8Str
        B.N      ??modeMachine_BlackBar2Littele_Display_12
// 2221     else
// 2222     {v_MonoRev_6x8Str(64,7,"   ",0);}
??modeMachine_BlackBar2Littele_Display_13:
        MOVS     R3,#+0
        ADR.N    R2,??DataTable143_3  ;; "   "
        MOVS     R1,#+7
        MOVS     R0,#+64
        BL       v_MonoRev_6x8Str
// 2223     
// 2224     v_MonoRev_Number(96,5,m_ImageTesting.FindLitteWidthTurning_LeftFinder,10);
??modeMachine_BlackBar2Littele_Display_12:
        MOVS     R2,#+10
        LDR.W    R0,??DataTable152_19
        LDRB     R0,[R0, #+131]
        VMOV     S0,R0
        VCVT.F32.U32 S0,S0
        MOVS     R1,#+5
        MOVS     R0,#+96
        BL       v_MonoRev_Number
// 2225     v_MonoRev_Number(96,6,m_ImageTesting.FindLitteWidthTurning_RightFinder,10);
        MOVS     R2,#+10
        LDR.W    R0,??DataTable152_19
        LDRB     R0,[R0, #+132]
        VMOV     S0,R0
        VCVT.F32.U32 S0,S0
        MOVS     R1,#+6
        MOVS     R0,#+96
        BL       v_MonoRev_Number
// 2226     
// 2227     v_MonoRev_6x8Str(30,0,"Hzard:",0);
        MOVS     R3,#+0
        LDR.W    R2,??DataTable152_28
        MOVS     R1,#+0
        MOVS     R0,#+30
        BL       v_MonoRev_6x8Str
// 2228     if(1 == m_ImageTesting.isMeetingHazard)
        LDR.W    R0,??DataTable152_19
        LDRB     R0,[R0, #+135]
        CMP      R0,#+1
        BNE.N    ??modeMachine_BlackBar2Littele_Display_14
// 2229     {v_MonoRev_6x8Str(64,0,"yes",0);}else 
        MOVS     R3,#+0
        ADR.N    R2,??DataTable144  ;; "yes"
        MOVS     R1,#+0
        MOVS     R0,#+64
        BL       v_MonoRev_6x8Str
        B.N      ??modeMachine_BlackBar2Littele_Display_15
// 2230     if(0 == m_ImageTesting.isMeetingHazard)
??modeMachine_BlackBar2Littele_Display_14:
        LDR.W    R0,??DataTable152_19
        LDRB     R0,[R0, #+135]
        CMP      R0,#+0
        BNE.N    ??modeMachine_BlackBar2Littele_Display_15
// 2231     {v_MonoRev_6x8Str(64,0,"no ",0);}
        MOVS     R3,#+0
        ADR.N    R2,??DataTable144_1  ;; "no "
        MOVS     R1,#+0
        MOVS     R0,#+64
        BL       v_MonoRev_6x8Str
// 2232     
// 2233     v_MonoRev_6x8Str(30,1,"Ramp:",0);
??modeMachine_BlackBar2Littele_Display_15:
        MOVS     R3,#+0
        LDR.W    R2,??DataTable152_29
        MOVS     R1,#+1
        MOVS     R0,#+30
        BL       v_MonoRev_6x8Str
// 2234     if(1 == m_ImageAbstract.isRampOccur)
        LDR.W    R0,??DataTable152_24
        LDRB     R0,[R0, #+2]
        CMP      R0,#+1
        BNE.N    ??modeMachine_BlackBar2Littele_Display_16
// 2235     {v_MonoRev_6x8Str(64,1,"yes",0);}else 
        MOVS     R3,#+0
        ADR.N    R2,??DataTable144  ;; "yes"
        MOVS     R1,#+1
        MOVS     R0,#+64
        BL       v_MonoRev_6x8Str
        B.N      ??modeMachine_BlackBar2Littele_Display_17
// 2236     if(0 == m_ImageAbstract.isRampOccur)
??modeMachine_BlackBar2Littele_Display_16:
        LDR.W    R0,??DataTable152_24
        LDRB     R0,[R0, #+2]
        CMP      R0,#+0
        BNE.N    ??modeMachine_BlackBar2Littele_Display_17
// 2237     {v_MonoRev_6x8Str(64,1,"no ",0);}
        MOVS     R3,#+0
        ADR.N    R2,??DataTable144_1  ;; "no "
        MOVS     R1,#+1
        MOVS     R0,#+64
        BL       v_MonoRev_6x8Str
// 2238     
// 2239     
// 2240     v_MonoRev_6x8Str(30,2,"SiC:",0);
??modeMachine_BlackBar2Littele_Display_17:
        MOVS     R3,#+0
        LDR.W    R2,??DataTable152_30
        MOVS     R1,#+2
        MOVS     R0,#+30
        BL       v_MonoRev_6x8Str
// 2241     v_MonoRev_Number(64,2,m_ImageTesting.SideChangeOccur,10);
        MOVS     R2,#+10
        LDR.W    R0,??DataTable152_19
        LDRB     R0,[R0, #+136]
        VMOV     S0,R0
        VCVT.F32.U32 S0,S0
        MOVS     R1,#+2
        MOVS     R0,#+64
        BL       v_MonoRev_Number
// 2242     
// 2243     v_MonoRev_6x8Str(30,3,"LBrIn:",0);
        MOVS     R3,#+0
        LDR.W    R2,??DataTable152_31
        MOVS     R1,#+3
        MOVS     R0,#+30
        BL       v_MonoRev_6x8Str
// 2244     if(1 == m_ImageTesting.TurnOnTheLonlyLine)
        LDR.W    R0,??DataTable152_19
        LDRB     R0,[R0, #+137]
        CMP      R0,#+1
        BNE.N    ??modeMachine_BlackBar2Littele_Display_18
// 2245     {v_MonoRev_6x8Str(64,3,"yes",0);}else 
        MOVS     R3,#+0
        ADR.N    R2,??DataTable144  ;; "yes"
        MOVS     R1,#+3
        MOVS     R0,#+64
        BL       v_MonoRev_6x8Str
        B.N      ??modeMachine_BlackBar2Littele_Display_19
// 2246     if(0 == m_ImageTesting.TurnOnTheLonlyLine)
??modeMachine_BlackBar2Littele_Display_18:
        LDR.W    R0,??DataTable152_19
        LDRB     R0,[R0, #+137]
        CMP      R0,#+0
        BNE.N    ??modeMachine_BlackBar2Littele_Display_19
// 2247     {v_MonoRev_6x8Str(64,3,"no ",0);}
        MOVS     R3,#+0
        ADR.N    R2,??DataTable144_1  ;; "no "
        MOVS     R1,#+3
        MOVS     R0,#+64
        BL       v_MonoRev_6x8Str
// 2248         
// 2249     s_color Green;
// 2250     Green.A_Blue_31 = 0;Green.B_Green_63 = 63;Green.C_Red_31 = 0;
??modeMachine_BlackBar2Littele_Display_19:
        MOVS     R0,#+0
        STRB     R0,[SP, #+6]
        MOVS     R0,#+63
        STRB     R0,[SP, #+5]
        MOVS     R0,#+0
        STRB     R0,[SP, #+4]
// 2251     if(255 != m_ImageTesting.Back2Angel_LineCounter)
        LDR.W    R0,??DataTable152_19
        LDRB     R0,[R0, #+134]
        CMP      R0,#+255
        BEQ.N    ??modeMachine_BlackBar2Littele_Display_20
// 2252     {
// 2253         for(uint8 inter = 0;inter < 96;inter ++)
        MOVS     R4,#+0
        B.N      ??modeMachine_BlackBar2Littele_Display_21
// 2254         {
// 2255             v_ColorRev_PutPoint(inter,m_ImageTesting.Back2Angel_LineCounter,&Green);
??modeMachine_BlackBar2Littele_Display_22:
        ADD      R2,SP,#+4
        LDR.W    R0,??DataTable152_19
        LDRB     R1,[R0, #+134]
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       v_ColorRev_PutPoint
// 2256         }
        ADDS     R4,R4,#+1
??modeMachine_BlackBar2Littele_Display_21:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+96
        BLT.N    ??modeMachine_BlackBar2Littele_Display_22
// 2257     }
// 2258     s_color Red;
// 2259     Red.A_Blue_31 = 0;Red.B_Green_63 = 0;Red.C_Red_31 = 31;
??modeMachine_BlackBar2Littele_Display_20:
        MOVS     R0,#+0
        STRB     R0,[SP, #+2]
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
        MOVS     R0,#+31
        STRB     R0,[SP, #+0]
// 2260     for(uint8 loop = 0;loop < 60;loop++)
        MOVS     R4,#+0
        B.N      ??modeMachine_BlackBar2Littele_Display_23
// 2261     {
// 2262         v_ColorRev_PutPoint(loop,m_ImageAbstract.Rt_Angle_End_Y,&Red);
??modeMachine_BlackBar2Littele_Display_24:
        ADD      R2,SP,#+0
        LDR.W    R0,??DataTable152_24
        LDRB     R1,[R0, #+19]
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       v_ColorRev_PutPoint
// 2263         v_ColorRev_PutPoint(loop,m_ImageAbstract.Rt_Angle_Start_Y,&Red);
        ADD      R2,SP,#+0
        LDR.W    R0,??DataTable152_24
        LDRB     R1,[R0, #+18]
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       v_ColorRev_PutPoint
// 2264     }
        ADDS     R4,R4,#+1
??modeMachine_BlackBar2Littele_Display_23:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+60
        BLT.N    ??modeMachine_BlackBar2Littele_Display_24
// 2265     
// 2266 }
        POP      {R0-R4,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable140:
        DC32     m_system

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable140_1:
        DC8      "NaN"
// 2267 
// 2268 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2269 PUBLIC void modeMachine_RtAngel()
// 2270 {
// 2271     m_ModeMachine.always_done = modeMachine_RtAngel_Display;
modeMachine_RtAngel:
        LDR.W    R0,??DataTable152_17
        LDR.W    R1,??DataTable152_32
        STR      R1,[R0, #+28]
// 2272 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable141:
        DC32     m_Control

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable141_1:
        DC8      "Yes"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable141_2:
        DC8      0x4E, 0x6F, 0x00, 0x00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable141_3:
        DC32     `?<Constant "RtE_01">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable141_4:
        DC32     `?<Constant "      ">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable141_5:
        DC32     `?<Constant "RtE_02">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable141_6:
        DC32     `?<Constant "RtE_04">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable141_7:
        DC32     `?<Constant "RtE_08">`
// 2273 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2274 PUBLIC void modeMachine_RtAngel_Display()
// 2275 {
modeMachine_RtAngel_Display:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
// 2276     modeMachine_Always_ImageOutput();
        BL       modeMachine_Always_ImageOutput
// 2277     s_color Red;
// 2278     Red.A_Blue_31 = 0;Red.B_Green_63 = 0;Red.C_Red_31 = 31;
        MOVS     R0,#+0
        STRB     R0,[SP, #+2]
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
        MOVS     R0,#+31
        STRB     R0,[SP, #+0]
// 2279     for(uint8 loop = 0;loop < 60;loop++)
        MOVS     R4,#+0
        B.N      ??modeMachine_RtAngel_Display_0
// 2280     {
// 2281         v_ColorRev_PutPoint(loop,m_ImageTesting.RampStart,&Red);
??modeMachine_RtAngel_Display_1:
        ADD      R2,SP,#+0
        LDR.W    R0,??DataTable152_19
        LDRB     R1,[R0, #+138]
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       v_ColorRev_PutPoint
// 2282         v_ColorRev_PutPoint(loop,m_ImageTesting.RampEnd,&Red);
        ADD      R2,SP,#+0
        LDR.W    R0,??DataTable152_19
        LDRB     R1,[R0, #+139]
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       v_ColorRev_PutPoint
// 2283     }
        ADDS     R4,R4,#+1
??modeMachine_RtAngel_Display_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+60
        BLT.N    ??modeMachine_RtAngel_Display_1
// 2284     
// 2285     v_MonoRev_6x8Str(0,0,"Ramp:",0);
        MOVS     R3,#+0
        LDR.W    R2,??DataTable152_29
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
// 2286     if(1 == m_ImageAbstract.RampExist)
        LDR.W    R0,??DataTable152_24
        LDRB     R0,[R0, #+1]
        CMP      R0,#+1
        BNE.N    ??modeMachine_RtAngel_Display_2
// 2287     {v_MonoRev_6x8Str(42,0,"yes",0);}else 
        MOVS     R3,#+0
        ADR.N    R2,??DataTable144  ;; "yes"
        MOVS     R1,#+0
        MOVS     R0,#+42
        BL       v_MonoRev_6x8Str
        B.N      ??modeMachine_RtAngel_Display_3
// 2288     if(0 == m_ImageAbstract.RampExist)
??modeMachine_RtAngel_Display_2:
        LDR.W    R0,??DataTable152_24
        LDRB     R0,[R0, #+1]
        CMP      R0,#+0
        BNE.N    ??modeMachine_RtAngel_Display_3
// 2289     {v_MonoRev_6x8Str(42,0,"no ",0);}
        MOVS     R3,#+0
        ADR.N    R2,??DataTable144_1  ;; "no "
        MOVS     R1,#+0
        MOVS     R0,#+42
        BL       v_MonoRev_6x8Str
// 2290     
// 2291     v_MonoRev_6x8Str(0,1,"Zard:",0);
??modeMachine_RtAngel_Display_3:
        MOVS     R3,#+0
        LDR.W    R2,??DataTable152_33
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       v_MonoRev_6x8Str
// 2292     if(1 == m_ImageTesting.isMeetingHazard)
        LDR.N    R0,??DataTable152_19
        LDRB     R0,[R0, #+135]
        CMP      R0,#+1
        BNE.N    ??modeMachine_RtAngel_Display_4
// 2293     {v_MonoRev_6x8Str(42,1,"yes",0);}else 
        MOVS     R3,#+0
        ADR.N    R2,??DataTable144  ;; "yes"
        MOVS     R1,#+1
        MOVS     R0,#+42
        BL       v_MonoRev_6x8Str
        B.N      ??modeMachine_RtAngel_Display_5
// 2294     if(0 == m_ImageTesting.isMeetingHazard)
??modeMachine_RtAngel_Display_4:
        LDR.N    R0,??DataTable152_19
        LDRB     R0,[R0, #+135]
        CMP      R0,#+0
        BNE.N    ??modeMachine_RtAngel_Display_5
// 2295     {v_MonoRev_6x8Str(42,1,"no ",0);}   
        MOVS     R3,#+0
        ADR.N    R2,??DataTable144_1  ;; "no "
        MOVS     R1,#+1
        MOVS     R0,#+42
        BL       v_MonoRev_6x8Str
// 2296 }
??modeMachine_RtAngel_Display_5:
        POP      {R0,R1,R4,PC}    ;; return
// 2297 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2298 void StartRunningShunAnThird()
// 2299 {m_Control.starting_time = m_system.timer + 2000;m_Control.runningEnd_time = m_Control.starting_time + 5000;}
StartRunningShunAnThird:
        LDR.N    R0,??DataTable152_6
        LDR.N    R1,??DataTable152_34
        LDR      R1,[R1, #+0]
        ADDS     R1,R1,#+2000
        STR      R1,[R0, #+28]
        LDR.N    R0,??DataTable152_6
        LDR      R0,[R0, #+28]
        ADD      R0,R0,#+4864
        ADDS     R0,R0,#+136
        LDR.N    R1,??DataTable152_6
        STR      R0,[R1, #+24]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable143:
        DC8      "Lef"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable143_1:
        DC32     modeMachine_SpecialAlwaysShow

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable143_2:
        DC8      "Rig"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable143_3:
        DC8      "   "

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable143_4:
        DC32     modeMachine_ServoFunction_TurnOnMode

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2300 void modeMachine_StartCarRunning_Paraments()
// 2301 {
modeMachine_StartCarRunning_Paraments:
        PUSH     {R7,LR}
// 2302     FuncSet(0,0,0,0,0,0,0);
        LDR.N    R0,??DataTable152_17
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable152_17
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        LDR.N    R0,??DataTable152_17
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        LDR.N    R0,??DataTable152_17
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
        LDR.N    R0,??DataTable152_17
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
        LDR.N    R0,??DataTable152_17
        MOVS     R1,#+0
        STR      R1,[R0, #+20]
        LDR.N    R0,??DataTable152_17
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
// 2303     m_ModeMachine.button_S1_done = modeMachine_ImageBeholderTesting_TurnOnMode;
        LDR.N    R0,??DataTable152_17
        LDR.N    R1,??DataTable152_35
        STR      R1,[R0, #+0]
// 2304     UpDownSureBack(0,
// 2305                    0,
// 2306                    StartRunningShunAnThird,
// 2307                    0);//¸ø¶¨
        LDR.N    R0,??DataTable152_17
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        LDR.N    R0,??DataTable152_17
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        LDR.N    R0,??DataTable152_17
        LDR.N    R1,??DataTable152_36
        STR      R1,[R0, #+20]
        LDR.N    R0,??DataTable152_17
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
// 2308     UpDownS5S4(0,modeMachine_StartCarSpeedLow_Paraments);
        LDR.N    R0,??DataTable152_17
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
        LDR.N    R0,??DataTable152_17
        LDR.N    R1,??DataTable152_37
        STR      R1,[R0, #+12]
// 2309     AlwaysSet(modeMachine_StartCar_Paraments_Display);
        LDR.N    R0,??DataTable152_17
        LDR.N    R1,??DataTable152_38
        STR      R1,[R0, #+28]
// 2310     v_Panel_DisplayCommandLine(0,6);
        MOVS     R1,#+6
        MOVS     R0,#+0
        BL       v_Panel_DisplayCommandLine
// 2311 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable144:
        DC8      "yes"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable144_1:
        DC8      "no "

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable144_2:
        DC32     modeMachine_set_speed_max_min_SettingSpeedMax

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable144_3:
        DC32     modeMachine_set_speed_max_min_SettingSpeedMin

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable144_4:
        DC32     modeMachine_set_speed_max_min_TurnOnMode

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable144_5:
        DC32     modeMachine_set_speed_max_min_DisplayParaments_addMaxSpeed

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2312 void modeMachine_StartCarSpeedLow_Paraments()
// 2313 {
modeMachine_StartCarSpeedLow_Paraments:
        PUSH     {R7,LR}
// 2314     FuncSet(0,0,0,0,0,0,0);
        LDR.N    R0,??DataTable152_17
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable152_17
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        LDR.N    R0,??DataTable152_17
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        LDR.N    R0,??DataTable152_17
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
        LDR.N    R0,??DataTable152_17
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
        LDR.N    R0,??DataTable152_17
        MOVS     R1,#+0
        STR      R1,[R0, #+20]
        LDR.N    R0,??DataTable152_17
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
// 2315     m_ModeMachine.button_S1_done = modeMachine_ImageBeholderTesting_TurnOnMode;
        LDR.N    R0,??DataTable152_17
        LDR.N    R1,??DataTable152_35
        STR      R1,[R0, #+0]
// 2316     UpDownSureBack(0,
// 2317                    0,
// 2318                    0,
// 2319                    0);//¸ø¶¨
        LDR.N    R0,??DataTable152_17
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        LDR.N    R0,??DataTable152_17
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        LDR.N    R0,??DataTable152_17
        MOVS     R1,#+0
        STR      R1,[R0, #+20]
        LDR.N    R0,??DataTable152_17
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
// 2320     UpDownS5S4(modeMachine_StartCarRunning_Paraments,modeMachine_StartCarSpeedHigh_Paraments);
        LDR.N    R0,??DataTable152_17
        LDR.N    R1,??DataTable152_39
        STR      R1,[R0, #+16]
        LDR.N    R0,??DataTable152_17
        LDR.N    R1,??DataTable152_40
        STR      R1,[R0, #+12]
// 2321     AlwaysSet(modeMachine_StartCar_Paraments_Display);
        LDR.N    R0,??DataTable152_17
        LDR.N    R1,??DataTable152_38
        STR      R1,[R0, #+28]
// 2322     v_Panel_DisplayCommandLine(1,6);
        MOVS     R1,#+6
        MOVS     R0,#+1
        BL       v_Panel_DisplayCommandLine
// 2323 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable145:
        DC32     modeMachine_set_speed_max_min_DisplayParaments_cutMaxSpeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable145_1:
        DC32     modeMachine_set_speed_max_min_SettingSpeedCut

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable145_2:
        DC32     modeMachine_set_speed_max_min_DisplayParaments_addMinSpeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable145_3:
        DC32     modeMachine_set_speed_max_min_DisplayParaments_cutMinSpeed

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2324 void modeMachine_StartCarSpeedHigh_Paraments()
// 2325 {
modeMachine_StartCarSpeedHigh_Paraments:
        PUSH     {R7,LR}
// 2326     FuncSet(0,0,0,0,0,0,0);
        LDR.N    R0,??DataTable152_17
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable152_17
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        LDR.N    R0,??DataTable152_17
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        LDR.N    R0,??DataTable152_17
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
        LDR.N    R0,??DataTable152_17
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
        LDR.N    R0,??DataTable152_17
        MOVS     R1,#+0
        STR      R1,[R0, #+20]
        LDR.N    R0,??DataTable152_17
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
// 2327     m_ModeMachine.button_S1_done = modeMachine_ImageBeholderTesting_TurnOnMode;
        LDR.N    R0,??DataTable152_17
        LDR.N    R1,??DataTable152_35
        STR      R1,[R0, #+0]
// 2328     UpDownSureBack(0,
// 2329                    0,
// 2330                    modeMachine_StartCarSpeedMax_Setting,
// 2331                    modeMachine_StartCarSpeedMax_Setting_01);//¸ø¶¨
        LDR.N    R0,??DataTable152_17
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        LDR.N    R0,??DataTable152_17
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        LDR.N    R0,??DataTable152_17
        LDR.N    R1,??DataTable152_41
        STR      R1,[R0, #+20]
        LDR.N    R0,??DataTable152_17
        LDR.N    R1,??DataTable152_42
        STR      R1,[R0, #+24]
// 2332     UpDownS5S4(modeMachine_StartCarSpeedLow_Paraments,modeMachine_StartCarSpeedAverage_Paraments);
        LDR.N    R0,??DataTable152_17
        LDR.N    R1,??DataTable152_37
        STR      R1,[R0, #+16]
        LDR.N    R0,??DataTable152_17
        LDR.N    R1,??DataTable152_43
        STR      R1,[R0, #+12]
// 2333     AlwaysSet(modeMachine_StartCar_Paraments_Display);
        LDR.N    R0,??DataTable152_17
        LDR.N    R1,??DataTable152_38
        STR      R1,[R0, #+28]
// 2334     v_Panel_DisplayCommandLine(2,6);
        MOVS     R1,#+6
        MOVS     R0,#+2
        BL       v_Panel_DisplayCommandLine
// 2335 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2336 void modeMachine_StartCarSpeedMax_Setting()
// 2337 {m_Control.speed_max = 230;m_Control.speed_min = 170;}
modeMachine_StartCarSpeedMax_Setting:
        LDR.N    R0,??DataTable152_6
        MOVS     R1,#+230
        STRH     R1,[R0, #+0]
        LDR.N    R0,??DataTable152_6
        MOVS     R1,#+170
        STRH     R1,[R0, #+4]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2338 void modeMachine_StartCarSpeedMax_Setting_01()
// 2339 {m_Control.speed_max = 250;m_Control.speed_min = 180;}
modeMachine_StartCarSpeedMax_Setting_01:
        LDR.N    R0,??DataTable152_6
        MOVS     R1,#+250
        STRH     R1,[R0, #+0]
        LDR.N    R0,??DataTable152_6
        MOVS     R1,#+180
        STRH     R1,[R0, #+4]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable148:
        DC32     modeMachine_set_speed_max_min_SettingMutilServoPID

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable148_1:
        DC32     modeMachine_set_speed_max_min_DisplayParaments_addCutSpeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable148_2:
        DC32     modeMachine_set_speed_max_min_DisplayParaments_cutCutSpeed
// 2340 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2341 void modeMachine_StartCarSpeedAverage_Paraments()
// 2342 {
modeMachine_StartCarSpeedAverage_Paraments:
        PUSH     {R7,LR}
// 2343     FuncSet(0,0,0,0,0,0,0);
        LDR.N    R0,??DataTable152_17
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable152_17
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        LDR.N    R0,??DataTable152_17
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        LDR.N    R0,??DataTable152_17
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
        LDR.N    R0,??DataTable152_17
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
        LDR.N    R0,??DataTable152_17
        MOVS     R1,#+0
        STR      R1,[R0, #+20]
        LDR.N    R0,??DataTable152_17
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
// 2344     m_ModeMachine.button_S1_done = modeMachine_ImageBeholderTesting_TurnOnMode;
        LDR.N    R0,??DataTable152_17
        LDR.N    R1,??DataTable152_35
        STR      R1,[R0, #+0]
// 2345     UpDownSureBack(0,
// 2346                    0,
// 2347                    modeMachine_StartCarSpeedAverage_Setting,
// 2348                    modeMachine_StartCarSpeedAverage_Setting_01);//¸ø¶¨
        LDR.N    R0,??DataTable152_17
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        LDR.N    R0,??DataTable152_17
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        LDR.N    R0,??DataTable152_17
        LDR.N    R1,??DataTable152_44
        STR      R1,[R0, #+20]
        LDR.N    R0,??DataTable152_17
        LDR.N    R1,??DataTable152_45
        STR      R1,[R0, #+24]
// 2349     UpDownS5S4(modeMachine_StartCarSpeedHigh_Paraments,0);
        LDR.N    R0,??DataTable152_17
        LDR.N    R1,??DataTable152_40
        STR      R1,[R0, #+16]
        LDR.N    R0,??DataTable152_17
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
// 2350     AlwaysSet(modeMachine_StartCar_Paraments_Display);
        LDR.N    R0,??DataTable152_17
        LDR.N    R1,??DataTable152_38
        STR      R1,[R0, #+28]
// 2351     v_Panel_DisplayCommandLine(3,6);
        MOVS     R1,#+6
        MOVS     R0,#+3
        BL       v_Panel_DisplayCommandLine
// 2352 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2353 void modeMachine_StartCarSpeedAverage_Setting()
// 2354 {m_Control.speed_max = 170;m_Control.speed_min = 170;}
modeMachine_StartCarSpeedAverage_Setting:
        LDR.N    R0,??DataTable152_6
        MOVS     R1,#+170
        STRH     R1,[R0, #+0]
        LDR.N    R0,??DataTable152_6
        MOVS     R1,#+170
        STRH     R1,[R0, #+4]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2355 void modeMachine_StartCarSpeedAverage_Setting_01()
// 2356 {m_Control.speed_max = 180;m_Control.speed_min = 180;}
modeMachine_StartCarSpeedAverage_Setting_01:
        LDR.N    R0,??DataTable152_6
        MOVS     R1,#+180
        STRH     R1,[R0, #+0]
        LDR.N    R0,??DataTable152_6
        MOVS     R1,#+180
        STRH     R1,[R0, #+4]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable151:
        DC32     modeMachine_set_speed_max_min_DisplayParaments_closeLighting

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable151_1:
        DC32     modeMachine_set_speed_max_min_DisplayParaments_changeMutilServoPID

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable151_2:
        DC32     modeMachine_set_speed_max_min_DisplayParaments_changeMutilServoPID_AddParaments
// 2357 
// 2358 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 2359 void modeMachine_StartCar_Paraments_Display()
// 2360 {
modeMachine_StartCar_Paraments_Display:
        PUSH     {R7,LR}
// 2361     AlwaysSet(modeMachine_Always_ImageOutput);
        LDR.N    R0,??DataTable152_17
        LDR.N    R1,??DataTable152_46
        STR      R1,[R0, #+28]
// 2362     v_MonoRev_Number(80,4,m_Control.speed_min,10);
        MOVS     R2,#+10
        LDR.N    R0,??DataTable152_6
        LDRH     R0,[R0, #+4]
        VMOV     S0,R0
        VCVT.F32.U32 S0,S0
        MOVS     R1,#+4
        MOVS     R0,#+80
        BL       v_MonoRev_Number
// 2363     v_MonoRev_Number(80,5,m_Control.speed_max,10);
        MOVS     R2,#+10
        LDR.N    R0,??DataTable152_6
        LDRH     R0,[R0, #+0]
        VMOV     S0,R0
        VCVT.F32.U32 S0,S0
        MOVS     R1,#+5
        MOVS     R0,#+80
        BL       v_MonoRev_Number
// 2364     v_MonoRev_Number(80,6,0,10);
        MOVS     R2,#+10
        VLDR.W   S0,??DataTable152_7  ;; 0x0
        MOVS     R1,#+6
        MOVS     R0,#+80
        BL       v_MonoRev_Number
// 2365 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable152:
        DC32     modeMachine_set_speed_max_min_DisplayParaments_firstPara

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable152_1:
        DC32     modeMachine_set_speed_max_min_DisplayParaments_secondPara

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable152_2:
        DC32     modeMachine_set_speed_max_min_DisplayParaments_thirdPara

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable152_3:
        DC32     modeMachine_set_speed_max_min_DisplayParaments_changeMutilServoPID_CutParaments

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable152_4:
        DC32     modeMachine_set_speed_max_min_DisplayParaments_mutilServoPIDPara

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable152_5:
        DC32     m_CarRunningMode

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable152_6:
        DC32     m_Control

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable152_7:
        DC32     0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable152_8:
        DC32     `?<Constant ">SpeedMax:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable152_9:
        DC32     `?<Constant " SpeedMin:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable152_10:
        DC32     `?<Constant " SpeedCut:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable152_11:
        DC32     `?<Constant " mSvoPID:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable152_12:
        DC32     `?<Constant " SpeedMax:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable152_13:
        DC32     `?<Constant ">SpeedMin:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable152_14:
        DC32     `?<Constant ">SpeedCut:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable152_15:
        DC32     `?<Constant ">mSvoPID:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable152_16:
        DC32     `?<Constant "--CloseLight:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable152_17:
        DC32     m_ModeMachine

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable152_18:
        DC32     modeMachine_BlackBar2Littele_Display

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable152_19:
        DC32     m_ImageTesting

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable152_20:
        DC32     `?<Constant "Left">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable152_21:
        DC32     `?<Constant "Right">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable152_22:
        DC32     `?<Constant "fsDraw:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable152_23:
        DC32     `?<Constant "Lonly:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable152_24:
        DC32     m_ImageAbstract

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable152_25:
        DC32     `?<Constant "LLBreak:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable152_26:
        DC32     `?<Constant "Cross:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable152_27:
        DC32     `?<Constant "LittleTurn:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable152_28:
        DC32     `?<Constant "Hzard:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable152_29:
        DC32     `?<Constant "Ramp:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable152_30:
        DC32     `?<Constant "SiC:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable152_31:
        DC32     `?<Constant "LBrIn:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable152_32:
        DC32     modeMachine_RtAngel_Display

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable152_33:
        DC32     `?<Constant "Zard:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable152_34:
        DC32     m_system

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable152_35:
        DC32     modeMachine_ImageBeholderTesting_TurnOnMode

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable152_36:
        DC32     StartRunningShunAnThird

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable152_37:
        DC32     modeMachine_StartCarSpeedLow_Paraments

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable152_38:
        DC32     modeMachine_StartCar_Paraments_Display

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable152_39:
        DC32     modeMachine_StartCarRunning_Paraments

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable152_40:
        DC32     modeMachine_StartCarSpeedHigh_Paraments

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable152_41:
        DC32     modeMachine_StartCarSpeedMax_Setting

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable152_42:
        DC32     modeMachine_StartCarSpeedMax_Setting_01

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable152_43:
        DC32     modeMachine_StartCarSpeedAverage_Paraments

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable152_44:
        DC32     modeMachine_StartCarSpeedAverage_Setting

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable152_45:
        DC32     modeMachine_StartCarSpeedAverage_Setting_01

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable152_46:
        DC32     modeMachine_Always_ImageOutput

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Ex:%d%d%d%d%d%d%d %d%...">`:
        DATA
        DC8 "Ex:%d%d%d%d%d%d%d %d%d%d%d"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Lnum:">`:
        DATA
        DC8 "Lnum:"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "LMnum:">`:
        DATA
        DC8 "LMnum:"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "RegReWrite:Yes">`:
        DATA
        DC8 "RegReWrite:Yes"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "RegReWrite:No">`:
        DATA
        DC8 "RegReWrite:No"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "1.Testing">`:
        DATA
        DC8 "1.Testing"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "2.Beholder Cal">`:
        DATA
        DC8 "2.Beholder Cal"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "3.Running Set">`:
        DATA
        DC8 "3.Running Set"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "4.Shutter Time">`:
        DATA
        DC8 "4.Shutter Time"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "5.ParaSet Time">`:
        DATA
        DC8 "5.ParaSet Time"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "6.PID">`:
        DATA
        DC8 "6.PID"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "7.MotorFuc">`:
        DATA
        DC8 "7.MotorFuc"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "8.RaceInfor">`:
        DATA
        DC8 "8.RaceInfor"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "1.Basic Input Test">`:
        DATA
        DC8 "1.Basic Input Test"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "2.Servo Test">`:
        DATA
        DC8 "2.Servo Test"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "3.Motor Test">`:
        DATA
        DC8 "3.Motor Test"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "4.Camera Infor">`:
        DATA
        DC8 "4.Camera Infor"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "5.Middline Test">`:
        DATA
        DC8 "5.Middline Test"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "6.ImageOutPut">`:
        DATA
        DC8 "6.ImageOutPut"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "7.Special Status">`:
        DATA
        DC8 "7.Special Status"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "1.Running 5s">`:
        DATA
        DC8 "1.Running 5s"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "2.Running 15s">`:
        DATA
        DC8 "2.Running 15s"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "3.Running 30s">`:
        DATA
        DC8 "3.Running 30s"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "4.Running Always">`:
        DATA
        DC8 "4.Running Always"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "5.Running Light">`:
        DATA
        DC8 "5.Running Light"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "1.Speed Set">`:
        DATA
        DC8 "1.Speed Set"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "2.SpdCut Set">`:
        DATA
        DC8 "2.SpdCut Set"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "3.SpdCut Rto">`:
        DATA
        DC8 "3.SpdCut Rto"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "4.Servo D">`:
        DATA
        DC8 "4.Servo D"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "5.Shutter T">`:
        DATA
        DC8 "5.Shutter T"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "6.Speed Max">`:
        DATA
        DC8 "6.Speed Max"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "1.Running">`:
        DATA
        DC8 "1.Running"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "2.SpeedMode Low">`:
        DATA
        DC8 "2.SpeedMode Low"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "3.SpeedMode Hight">`:
        DATA
        DC8 "3.SpeedMode Hight"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "4.SpeedMode Average">`:
        DATA
        DC8 "4.SpeedMode Average"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "  Speed Min:">`:
        DATA
        DC8 "  Speed Min:"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "  Speed Max:">`:
        DATA
        DC8 "  Speed Max:"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "  Speed Rt:">`:
        DATA
        DC8 "  Speed Rt:"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "1.P Change">`:
        DATA
        DC8 "1.P Change"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "2.I Change">`:
        DATA
        DC8 "2.I Change"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "3.D Change">`:
        DATA
        DC8 "3.D Change"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "4.Used Last">`:
        DATA
        DC8 "4.Used Last"

        SECTION `.rodata`:CONST:REORDER:NOROOT(1)
        DATA
        DC8 " "

        SECTION `.rodata`:CONST:REORDER:NOROOT(1)
        DATA
        DC8 ">"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Servo Testing Mode">`:
        DATA
        DC8 "Servo Testing Mode"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Deg:%d">`:
        DATA
        DC8 "Deg:%d"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Ang:%d">`:
        DATA
        DC8 "Ang:%d"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "        ">`:
        DATA
        DC8 "        "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Motor Testing Mode">`:
        DATA
        DC8 "Motor Testing Mode"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "            ">`:
        DATA
        DC8 "            "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "LSpeed: %g">`:
        DATA
        DC8 "LSpeed: %g"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "RSpeed: %g">`:
        DATA
        DC8 "RSpeed: %g"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "LPWM: %d">`:
        DATA
        DC8 "LPWM: %d"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "RPWM: %d">`:
        DATA
        DC8 "RPWM: %d"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "No Vaild">`:
        DATA
        DC8 "No Vaild"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Motor">`:
        DATA
        DC8 "Motor"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Motor SmallChange">`:
        DATA
        DC8 "Motor SmallChange"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "              ">`:
        DATA
        DC8 "              "
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "So Big">`:
        DATA
        DC8 "So Big"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Middline">`:
        DATA
        DC8 "Middline"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "MiddLine:">`:
        DATA
        DC8 "MiddLine:"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant ">K_Curve:">`:
        DATA
        DC8 ">K_Curve:"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant " Y_Stop:">`:
        DATA
        DC8 " Y_Stop:"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant " P_Curve:">`:
        DATA
        DC8 " P_Curve:"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant " K_Curve:">`:
        DATA
        DC8 " K_Curve:"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant ">Y_Stop:">`:
        DATA
        DC8 ">Y_Stop:"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant ">P_Curve:">`:
        DATA
        DC8 ">P_Curve:"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant ">GetData">`:
        DATA
        DC8 ">GetData"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant " TxData">`:
        DATA
        DC8 " TxData"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant " GetData">`:
        DATA
        DC8 " GetData"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant ">TxData">`:
        DATA
        DC8 ">TxData"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "BkBar:">`:
        DATA
        DC8 "BkBar:"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Rt_KB:">`:
        DATA
        DC8 "Rt_KB:"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "RtE_01">`:
        DATA
        DC8 "RtE_01"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "      ">`:
        DATA
        DC8 "      "
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "RtE_02">`:
        DATA
        DC8 "RtE_02"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "RtE_04">`:
        DATA
        DC8 "RtE_04"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "RtE_08">`:
        DATA
        DC8 "RtE_08"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant ">SpeedMax:">`:
        DATA
        DC8 ">SpeedMax:"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant " SpeedMin:">`:
        DATA
        DC8 " SpeedMin:"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant " SpeedCut:">`:
        DATA
        DC8 " SpeedCut:"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant " mSvoPID:">`:
        DATA
        DC8 " mSvoPID:"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant " SpeedMax:">`:
        DATA
        DC8 " SpeedMax:"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant ">SpeedMin:">`:
        DATA
        DC8 ">SpeedMin:"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant ">SpeedCut:">`:
        DATA
        DC8 ">SpeedCut:"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant ">mSvoPID:">`:
        DATA
        DC8 ">mSvoPID:"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "--CloseLight:">`:
        DATA
        DC8 "--CloseLight:"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Left">`:
        DATA
        DC8 "Left"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Right">`:
        DATA
        DC8 "Right"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "NaN"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "fsDraw:">`:
        DATA
        DC8 "fsDraw:"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "Yes"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "No"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Lonly:">`:
        DATA
        DC8 "Lonly:"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "LLBreak:">`:
        DATA
        DC8 "LLBreak:"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Cross:">`:
        DATA
        DC8 "Cross:"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "LittleTurn:">`:
        DATA
        DC8 "LittleTurn:"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "Lef"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "Rig"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "   "

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Hzard:">`:
        DATA
        DC8 "Hzard:"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "yes"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "no "

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Ramp:">`:
        DATA
        DC8 "Ramp:"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "SiC:">`:
        DATA
        DC8 "SiC:"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "LBrIn:">`:
        DATA
        DC8 "LBrIn:"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Zard:">`:
        DATA
        DC8 "Zard:"
        DC8 0, 0

        END
// 
//     68 bytes in section .bss
//      1 byte  in section .data
//  1 268 bytes in section .rodata
// 17 606 bytes in section .text
// 
// 17 606 bytes of CODE  memory
//  1 268 bytes of CONST memory
//     69 bytes of DATA  memory
//
//Errors: none
//Warnings: none
