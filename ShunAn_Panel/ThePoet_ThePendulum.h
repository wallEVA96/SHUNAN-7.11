#ifndef __POET_PENDULUM_
#define __POET_PENDULUM_

typedef
struct
{
//    void(*should_do)(void);
//    void(*now_step)(void);
    /*---------按键信息设置---------*/
    void(*button_S1_done)(void);
    void(*button_S2_done)(void);
    void(*button_S3_done)(void);
    void(*button_S4_done)(void);
    void(*button_S5_done)(void);
    void(*button_S6_done)(void);
    void(*button_S8_done)(void);
    void(*always_done)(void);
    uint8 showBuzzerInformation;
    uint8 showLonlyInformation;
    uint8 showBlackBar;
    uint8 showRtBlackAngle;
    uint8 showYcutDown;
    uint8 showBlackCutBar;//黑条急剧减小
    uint8 becauseThisOutOfTheBlackRtAngle;
}s_ModeMachine;
#define FuncSet(S1,S2,S3,S4,S5,S6,S8)           do\
                                                {\
                                                    m_ModeMachine.button_S1_done = S1;\
                                                    m_ModeMachine.button_S2_done = S2;\
                                                    m_ModeMachine.button_S3_done = S3;\
                                                    m_ModeMachine.button_S4_done = S4;\
                                                    m_ModeMachine.button_S5_done = S5;\
                                                    m_ModeMachine.button_S6_done = S6;\
                                                    m_ModeMachine.button_S8_done = S8;\
                                                }while(0)
#define AlwaysSet(Set)                          do{m_ModeMachine.always_done = Set;}while(0)
#define UpDownSureBack(S3,S2,S6,S8)             do\
                                                {\
                                                    m_ModeMachine.button_S3_done = S3;\
                                                    m_ModeMachine.button_S2_done = S2;\
                                                    m_ModeMachine.button_S6_done = S6;\
                                                    m_ModeMachine.button_S8_done = S8;\
                                                }while(0)
#define UpDownS5S4(S5,S4)                       do\
                                                {\
                                                    m_ModeMachine.button_S5_done = S5;\
                                                    m_ModeMachine.button_S4_done = S4;\
                                                }while(0)
//名可名，非常名 -- 老子
/*//状态机转移序列
*/
extern s_ModeMachine m_ModeMachine;
//uint8 b_solve8x8_Ax_b(float A[8][8], float B[8],float X[8]);//求解逆透视矩阵
unsigned char DEBUG_INFORMATION(char Tx[]);
void v_InputInterface_testing(unsigned char x,unsigned char y);//输入信息测试
void v_ImageBeholder_Information(unsigned char x,unsigned char y);
/*
void v_PanelDisplay_Nop(void);
void v_PanelDisplay_Gaia(void);

void v_PanelDisplay_BasicDone(void);
*/
void v_systemPara_Init();

void v_ModeMachine_KeyInput_TurnCut();//状态机移动
void v_Panel_DisplayCommandLine(unsigned short int arrow,unsigned char switchMode);

void modeMachine_MoveUp_PanelDisplay(void);
void modeMachine_MoveDown_PanelDisplay(void);
void modeMachine_Move2testingMode(void);

void modeMachine_BasicTesting_DataShow();

void modeMachine_Testing_TurnOnMode();//基本输入输出开启模式
void modeMachine_ImageBeholderTesting_TurnOnMode();
void modeMachine_ImageBeholder_ReStart();


void modeMachine_RunningSet_TurnOnMode();//奔跑模式
//void modeMachine_SpeedSet_TurnOnMode();//速度设定总框图
void modeMachine_TotleShutter_TurnOnMode();//速度设定总框图

void modeMachine_MotorAlways_Show();
void modeMachine_MotorPID_TurnOnMode();//底层PID参数更改接口
/*--*/void modeMachine_MotorPID_P_Change();
/*------*/void modeMachine_Motor_P_Add();
/*------*/void modeMachine_Motor_P_Cut();
/*--*/void modeMachine_MotorPID_I_Change();
/*------*/void modeMachine_Motor_I_Add();
/*------*/void modeMachine_Motor_I_Cut();
/*--*/void modeMachine_MotorPID_D_Change();
/*------*/void modeMachine_Motor_D_Add();
/*------*/void modeMachine_Motor_D_Cut();
/*--*/void modeMachine_MotorPID_Used_Last();
/*------*/
/*------*/
void modeMachine_ServoFunction_TurnOnMode();
/*--*/void modeMachine_ServoFunction_Average();
/*--*/void modeMachine_ServoFunction_Optimization();
/*--*//*--*/void modeMachine_Always_ShowFuncName();
void modeMachine_ParaSet_TurnOnMode();
void modeMachine_ParaShow_Panel();//数据展示面板
//==============================================图像输出
/*--*/void modeMachine_ImageOutPut_TurnOnMode();
/*------*/void modeMachine_ImageOutPut_Testing();
/*------*/void modeMachine_ImageOutPut_UsedNormal();
/*------*/void modeMachine_ImageOutPut_ShowAlways();
/*------*//*------*/void modeMachine_ImageOutPut_Tx();
/*------*//*------*/void modeMachine_ImageOutPut_GetNumber();
//==============================================特殊状态检测
/*--*/void modeMachine_SpecialStatusCut_TurnOnMode();
/*------*/void modeMachine_SpecialStatusDisplay_Leaf();
/*------*//*------*/void modeMachine_SpecialAlwaysShow();


void modeMachine_TotleShutterChangeMode();
void modeMachine_TotleShutter_add();
void modeMachine_TotleShutter_cut();

void modeMachine_ServoDiffAdd();
void modeMachine_ServoDiffCut();

//void modeMachine_SpeedSetMode();//奔跑模式

//void modeMachine_SpeedShow();
//void modeMachine_SpeedAddMode();
//void modeMachine_SpeedCutMode();
//void modeMachine_SpeedCutMachine_add();
//void modeMachine_SpeedCutMachine_cut();


void modeMachine_RunningSet_TurnMode();



void modeMachine_BasicTesting_TurnMode();
void modeMachine_ServoTesting_TurnMode();
void modeMachine_MotorTesting_TurnMode();

void modeMachine_BasicTesting_TestingMode();

void modeMachine_ServoTesting_TestingMode();
void modeMachine_MotorTesting_TestingMode();

void modeMachine_MiddlineTesting_TurnMode();//中线控舵测试
void modeMachine_MiddlineTesting_TestingMode();
void modeMachine_MiddlineTesting_TestingMode_Extra();
void modeMachine_MiddlineTesting_TestingMode_ExtraExtra();
void modeMachine_MiddlineTesting_AlwaysShow();
void modeMachine_MiddlineTesting_AlwaysShow_Extra();
void modeMachine_MiddlineTesting_AlwaysShow_ExtraExtra();

void modeMachine_MiddlineTesting_TestingMode_AddKCurve();//增加系数
void modeMachine_MiddlineTesting_TestingMode_CutKCurve();//减小系数
void modeMachine_MiddlineTesting_TestingMode_AddMoreKCurve();//增加系数
void modeMachine_MiddlineTesting_TestingMode_CutMoreKCurve();//减小系数
void modeMachine_MiddlineTesting_TestingMode_AddStopY_Pos();//增加系数
void modeMachine_MiddlineTesting_TestingMode_CutStopY_Pos();//减小系数
void modeMachine_MiddlineTesting_TestingMode_AddMorePCurve();//增加系数
void modeMachine_MiddlineTesting_TestingMode_CutMorePCurve();//减小系数
void modeMachine_MiddlineTesting_TestingMode_AddPCurve();//增加系数
void modeMachine_MiddlineTesting_TestingMode_CutPCurve();


void modeMachine_CameraInformationTesting_TurnMode();
void modeMachine_CameraInformationTesting_TestingMode();

void modeMachine_Up_MotorTestingMach_Output();
void modeMachine_Down_MotorTestingMach_Output();

void modeMachine_Move_ServoTestingPanel_Display();//具体显示函数
void modeMachine_Always_MotorTestingPanel_Display();//具体显示函数
void modeMachine_CameraTestingMach_Up();//{modeMachine_Camera_y_run += 1;};
void modeMachine_CameraTestingMach_Left();//{modeMachine_Camera_x_run -=1;};
void modeMachine_CameraTestingMach_Down();//{modeMachine_Camera_y_run -=1;};
void modeMachine_CameraTestingMach_Right();//{modeMachine_Camera_x_run +=1;};
void modeMachine_CameraTestingMach_WriteNowPoint();
void modeMachine_CameraTestingMach_CalibrationModeSwitch();
void modeMachine_Always_CameraTestingMach_OutputCalibration();

void modeMachine_Always_CameraTestingMach_Output();//
void modeMachine_Always_CameraTestingMach_Output_ExtraPara();//Rev处输出新的数值：矩阵数值

void modeMachine_ImageBeholderTesting_TestingMode();
void modeMachine_Always_ImageOutput();//m_system.uart_Txflag

void modeMachine_Always_CameraInformationTesting_DataShow();//数据展示

//此代码为获取四点、计算相应的函数、、为状态驱动型函数
unsigned char n_ImageBeholder_FourPointGetAndCal(unsigned char x, unsigned char y, unsigned char modeSet);

void BuzzerSong();

void Always_Draw_Width();


void modeMachine_Running5s_TimeSetMode();
void modeMachine_Running15s_TimeSetMode();
void modeMachine_Running30s_TimeSetMode();
void modeMachine_RunningAlways_TimeSetMode();
void modeMachine_RunningLight_TimeSetMode();
void modeMachine_RunningLight_Waiting();
void modeMachine_Running5s_RunMode();
void modeMachine_Running15s_RunMode();
void modeMachine_Running30s_RunMode();//=>进入
void modeMachine_RunningAlways_RunMode();//=>进入
void modeMachine_RunningLight_RunMode();

void modeMachine_RunningLight_Check();
void modeMachine_RunningDark_Check();

void modeMachine_GiveSpeedMode();
void modeMachine_SpeedCutRatioMode();
void modeMachine_ServoDiffMode();
void modeMachine_ShutterWidthChange();
void modeMachine_SpeedChangeChange();
void modeMachine_SpeedCutMode();

void modeMachine_ServoDiff_Add();
void modeMachine_ServoDiff_Cut();
void modeMachine_ShutterWidthChange_Add();//{m_ImageAbstract.TotalShutterTime += 10;}
void modeMachine_ShutterWidthChange_Cut();//{m_ImageAbstract.TotalShutterTime -= 10;}
void modeMachine_SpeedCutRatioMode_Add();//{m_Control.speedCutRatio += 0.1f;}
void modeMachine_SpeedCutRatioMode_Cut();//{m_Control.speedCutRatio -= 0.1f;}
void modeMachine_SpeedCutMode_Add();//{m_Control.speedCut += 5;}
void modeMachine_SpeedCutMode_Cut();//{m_Control.speedCut -= 5;}
void modeMachine_GiveSpeedMode_Add();//{m_Control.GiveSpeed += 10;}
void modeMachine_GiveSpeedMode_Cut();//{m_Control.GiveSpeed -= 10;}
void modeMachine_SpeedChangeChange_Add();//{m_Control.changeSpeedRatio += 10;}
void modeMachine_SpeedChangeChange_Cut();//{m_Control.changeSpeedRatio -= 10;}

void modeMachine_ThirdParaments_Set();
void modeMachine_ThirdParaments_Viewer();
//void modeMachine_ParaSetMode();
#define modeMachine(Text)               do{m_ModeMachine.showBuzzerInformation = Text;}while(0)

extern void (*vPtr_CheckLightingChaser)(void);

//============================================================================//
void modeMachine_set_speed_max_min_TurnOnMode(void);
/*子功能*/PUBLIC void modeMachine_set_speed_max_min_DisplayParaments_firstPara(void);
/*子功能*/PUBLIC void modeMachine_set_speed_max_min_DisplayParaments_secondPara(void);
void modeMachine_set_speed_max_min_DisplayParaments_thirdPara(void);
void modeMachine_set_speed_max_min_DisplayParaments_mutilServoPIDPara(void);
/*子功能*/
PUBLIC void modeMachine_set_speed_max_min_DisplayParaments_addMaxSpeed();
PUBLIC void modeMachine_set_speed_max_min_DisplayParaments_addMinSpeed();
/*子功能*/PUBLIC void modeMachine_set_speed_max_min_SettingSpeedMax(void);
/*子功能*/PUBLIC void modeMachine_set_speed_max_min_SettingSpeedMin(void);
void modeMachine_set_speed_max_min_SettingSpeedCut(void);
/*子功能*/void modeMachine_set_speed_max_min_SettingMutilServoPID(void);
void modeMachine_set_speed_max_min_DisplayParaments_addCutSpeed();//{m_Control.speed_cut += 10;}
void modeMachine_set_speed_max_min_DisplayParaments_cutCutSpeed();//{m_Control.speed_cut -= 10;}
/*子功能*/
PUBLIC void modeMachine_set_speed_max_min_DisplayParaments_addMaxSpeed();//{m_Control.speed_max += 10;}
PUBLIC void modeMachine_set_speed_max_min_DisplayParaments_cutMaxSpeed();//{m_Control.speed_max -= 10;}
PUBLIC void modeMachine_set_speed_max_min_DisplayParaments_addMinSpeed();//{m_Control.speed_min += 10;}
PUBLIC void modeMachine_set_speed_max_min_DisplayParaments_cutMinSpeed();//{m_Control.speed_min -= 10;}
void modeMachine_set_speed_max_min_DisplayParaments_changeMutilServoPID();
void modeMachine_set_speed_max_min_DisplayParaments_changeMutilServoPID_AddParaments();
void modeMachine_set_speed_max_min_DisplayParaments_changeMutilServoPID_CutParaments();
PUBLIC void modeMachine_BlackBar2Littele();
PUBLIC void modeMachine_BlackBar2Littele_Display();

PUBLIC void modeMachine_RtAngel();
PUBLIC void modeMachine_RtAngel_Display();

void modeMachine_StartCarRunning_Paraments();
void modeMachine_StartCarSpeedLow_Paraments();
void modeMachine_StartCarSpeedHigh_Paraments();
void modeMachine_StartCarSpeedAverage_Paraments();
void modeMachine_StartCar_Paraments_Display();
void StartRunningShunAnThird();
void modeMachine_StartCarSpeedAverage_Setting();
void modeMachine_StartCarSpeedAverage_Setting_01();

void modeMachine_StartCarSpeedMax_Setting();
void modeMachine_StartCarSpeedMax_Setting_01();
void modeMachine_set_speed_max_min_DisplayParaments_closeLighting();
#endif