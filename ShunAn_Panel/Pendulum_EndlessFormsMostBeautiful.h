#ifndef __PENDULUM_MOSTBEAUTIFUL
#define __PENDULUM_MOSTBEAUTIFUL

typedef
enum
{
    Sid_Left = 10,
    Sid_Right = 20,
    Sid_Double = 30,
    Sid_None = 40,
    Sid_NaN = 50,
    Sid_DoubleBlack = 60,
    Sid_LonlyLine = 70,
}
u_Side;
typedef
struct
{
    uint8 isUsedDoubleServoPID;
    float DoubleServoPIDRatio;
    uint32 RunningCarTimeCounter;
    uint8 isCloseTheLightingStop;
    uint8 continueTimeAll;//持续总长
}s_CarRunningMode;

extern s_CarRunningMode m_CarRunningMode;


typedef
struct
{
    uint16 speed_max;
    uint16 speed_cut;
    uint16 speed_min;
    
    uint8 LightChaserLogic_time_cut_1;
    uint8 LightChaserLogic;
    uint8 CanCheck;
    sint16 BuzzerPoint;//
    //===============================//
    sint16 LeftRightRatio;
    //标志位控制
    uint8 start_motorRunning_flag;//软启动标志
    
    uint8 need_TurnLeft;
    uint8 need_TurnRight;
    uint8 need_Hold;
    uint8 need_Break2zero;
    uint8 servo_turn_Robustly;//强制转角
    uint8 need_turnRobustly_flag;
    //===============================//
    uint32 runningEnd_time;
    uint32 starting_time;
    
    sint16 ServoDeg;//舵机角度实际参数
    //sint16 ServoBeforeDiff;
    //sint16 ServoWithDiff;
    
    float ServoDiff;//舵机微分数值
    
    
    uint16 ServoAngle;//舵机编码器数值
    
//    float L_PWM_ADD;
//    float R_PWM_ADD;
    sint16 LeftGiveSpd;//左电机给定速度
    sint16 RightGiveSpd;//右电机给定速度
    uint16 LimitedSlipDiffSpd;//LSD系统
      
    sint16 LeftMotorSpeed;//左电机转速
    sint16 RightMotorSpeed;//右电机转速
    sint16 LeftMotorSpeed_n_cut_1;//左电机转速上一次信息
    sint16 RightMotorSpeed_n_cut_1;//右电机转速上一次信息
    
    uint16 LeftMotorElec;//电流数值
    uint16 RightMotorElec;//电流数值
    // 
    sint16 LeftMotorPWM;//左电机PWM设置
    sint16 RightMotorPWM;//右电机PWM设置
    
    sint16 e_LeftSpeed;
    sint16 e_RightSpeed;
    //================================//
    //以下为图像八大参数
    float image_ratio[8];//图像优化
    //================================//
    float image_control_n;
    float image_control_n_cut_one;
    
    uint16 GiveSpeed;
    float speedCut;
    float speedCutRatio;
    
    float changeSpeedRatio;
    
    uint32 motor_control_time;//电机控制周期进入的次数
    uint32 image_Be2control_time;//=>舵机时间
    
    uint8 servo_imageYstopLine;
    
    float P_Curve;
    float K_Curve;//舵机输出系数
    uint8 servo_need_Line;//跟速度相关的量，根据速度决定当前最主要行的信息
    
    float Motor_ControlPara_P_Number;
    float Motor_ControlPara_I_Number;
    float Motor_ControlPara_D_Number;
    u_Side SideWhat[60];
    void(*v_MotorControlSpeed)(sint16 speed);//转向控舵
}
s_Control;//控制变量及信息
extern s_Control m_Control;



typedef
struct
{
    uint8 isOccurLonlyLineBreak;//发生了单线的跳出事件
    uint8 HaveLonlyLineStartCornerLastLine;
    uint8 centralPosTurning;
    u_Side TurningSide;
    float var;
    //========================================================================//
    uint8 showLonlyLineFindAboutUpSet;//
    uint8 is140double130left150right160none_aboutUp[60];
    uint8 hazardvaildLine[60];
    
    
    uint8 isOccurCross;
    uint8 FindLitteWidthTurning;
    
    uint8 FindLitteWidthTurning_LeftFinder;
    uint8 FindLitteWidthTurning_RightFinder;
    /*
    uint8 Left_Side[60];
    uint8 Right_Side[60];*/
    uint8 firstAndSecond_isBeenDrawing;
    
    uint8 Back2Angel_LineCounter;
    
    uint8 isMeetingHazard;
    
    uint8 SideChangeOccur;
    
    uint8 TurnOnTheLonlyLine;
    
    uint8 RampStart;
    uint8 RampEnd;
}
s_ImageTesting;
extern s_ImageTesting m_ImageTesting;


typedef
enum
{
//    RaT_FirstFrame,
    RaT_TurnRt,//进直角
    RaT_InRt,//直角进行中 => 这一步需要进行处理出来的情况
    RaT_Out2Rt,//出直角准备
}
u_RtAngleTurn;


typedef
enum
{
    LLT_Start,//
    LLT_Lasting,
    LLT_Back,//
    LLT_NaN,
}
u_LonlyLine;




typedef 
struct
{
    uint8 openTheRamp;
    
    uint8 RampExist;
    
    uint8 isRampOccur;
    
    uint8 isCrossNow;
    //u_Side      LLT_LastFrameTurning;
    //u_LonlyLine LLT_Status;
    //u_LonlyLine LLT_LastFrameStatus;
    uint8 isLonlyLineNow;
    
    uint8 LonlyLine_firstLineXpos;//
    uint8 LonlyLine_secondLineXpos;//
    uint8 LonlyLine_isXposLonlyLineFirstLine;//
    uint8 LonlyLine_isXposLonlyLineSecondLine;//
    
    uint8 CutY_firstLine;
    uint8 CutY_secondLine;
    
    //uint8 LL_isLasting;
    float RtAngleLength;
    sint8 blackPonit_NeedAddorCutSome;
    
    u_Side Rt_LastTurning;
    uint8 Rt_Angle_Start_Y;
    uint8 Rt_Angle_End_Y;
    
    uint16 Rt_Angle_error;
    //
    uint8 tempVar_LonlyLineCut;
    //
    uint8 BlackBarHeight_Start;
    uint8 BlackBarHeight_End;
    //在这里声明下标志
    float Rt_K_Var;
    float Rt_Var;
    //uint16 SteerX;
    uint16 TotalShutterTime;
    //uint8 DataShowOK_flag;
    uint8 isImageInformationShowing;//是否展示图像数据信息
    //========================================================================//
    uint32 RecordCounter;//重复次数记录
    //========================================================================//
    //左中右数值
    uint8 Left[60];
    uint8 Right[60];
    uint8 Central[60];
    uint8 Left_UpBlack2White[60];
    uint8 Right_UpBlack2White[60];
    //sint16 CarViewer_width[60];
    sint16 width[60];
    //Y轴方向记录=============================================================//
    uint8 Start_Y_Position;
    uint8 Last_Y_Position;
    //以下三值为上次场信息的数值综合
    uint8 LastFrame_LeftPos;
    uint8 LastFrame_RightPos;
    uint8 LastFrame_CentralPos;
    //========================================================================//
    //曲率数值
    float MowCurve_Number;//上次曲率数值
    float LastTimeCurve_Number;//本次曲率数值
//    uint8 Up2one_CentralNumber;
    
    //uint8 RtAngle_ForceTurning;
    uint8 RtAngle_isLasting;//上场特征
//    uint8 RtAngle_SideWhichis;
//    u_Side RtAngle_WhichSideHave;
//    u_RtAngleTurn RtAngle_TurnProcess;//直角转向过程
    //uint8 isRtAngle_inVeryLittle;
    
    uint8 Show_Start_Y_Position;
    uint8 Show_Last_Y_Position;
    
    uint8 servo_gaiaInfor_image;//从图像那里获得的最本真的数据
    
    //========================================================================//
    uint8 happened_suddenly_True[60];
    
    
    u_LonlyLine LonlyLine_Status;//单线状况
    /* LLT_NaN,
     * LLT_Start_Left,
     * LLT_Start_Right,
     */ //LonlyLine的状态//
         
    sint16 LonlyLine_multiRowCentralVaild_WhileNearIsGone;//单线多列的合理中线的x的坐标，这个是作为x的参考坐标系
    
    uint8 LonlyLine_CornerPoint_Var_x;//X值
    uint8 LonlyLine_CornerPoint_Val_Y;//Y值，作为单线入口处的信息
    
    
    uint8 LonlyLine_isExistedOnRoad;//单线在赛道上是存在的
    //楼上的这个变量是用来初次值需找合适的单线的判据的，所以应该更名为
    //uint8 LonlyLine_Status_1isBlack2isNot;
    //uint8 LonlyLine_1isLasting2isBacking0isNot;
    uint8 Lonly_hasfound_lonlylinecorner;
    //uint8 LonlyLine_
    uint8 LonlyLine_ShutDown_X;//单线凸点的x值
    uint8 LonlyLine_ShutDown_Y;//单线凸点的y值
    uint8 LonlyLine_Last_Y_number;//单线凸点最后的Y轴数值
    
    uint8 LonlyLine_VeryStraightGetCorner_AboutDeadLine_Var_x;
    uint8 LonlyLine_VeryStraightGetCorner_AboutDeadLine_Val_Y;
    
    uint8 LonlyLine_isNeed2CheckLost_NearPointCornerLostModeLonlyLine;//需要去检测近端的角的丢失情况
    //uint8 LonlyLine_EndLine_X;//单线最后一条线的X值
    //uint8 LonlyLine_EndLine_Y;//单线最后一条线的Y值
    
    //uint8 LonlyLine_Line_Start_About_Y;//关于y的起始
    //uint8 LonlyLine_Line_End_About_Y;//关于y的终结
}
s_ImageAbstract;

extern s_ImageAbstract m_ImageAbstract;//m_ImageAbstract.

unsigned char b_solve8x8_Ax_b(float AB[8][9], float X[8]);//AX=B//求解X的方法

extern unsigned short int u16_RevePanel[96][60];

void v_LoadingControlPara(s_Control* temp_Control,s_ImageAbstract* ImageAbstract);

PUBLIC void v_ImageCut();//图像处理
PUBLIC void v_ImageMixis();//图像融合
PUBLIC void v_ImageOptimalization();//图像优化

PUBLIC void v_ImageAbstractEnhanced();//图像特征增强

PUBLIC void v_ImageCutInformationShow(uint8);

PUBLIC float f_Get3pointsCurve//根据三点求曲率
(uint8 x_1,uint8 x_2,uint8 x_3,uint8 y_1,uint8 y_2,uint8 y_3);

PUBLIC uint8 b_getCurve_Point//
(math_f32* used_X,math_f32 used_Y,math_f32 near_X,math_f32 near_Y,math_f32 far_X,math_f32 far_Y,math_f32 Curve);

//uint16 n_getSteerMiddleLine();//中线
PUBLIC uint16 n_getSteerMiddleLine_UsedAverage();//中线平均值

PUBLIC uint16 n_getSteerByWire();//严格中线函数

PUBLIC void v_motor_doneFunc(void);//电机操作

#endif