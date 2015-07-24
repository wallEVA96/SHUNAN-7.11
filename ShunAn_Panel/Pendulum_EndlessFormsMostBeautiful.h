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
    uint8 continueTimeAll;//�����ܳ�
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
    //��־λ����
    uint8 start_motorRunning_flag;//��������־
    
    uint8 need_TurnLeft;
    uint8 need_TurnRight;
    uint8 need_Hold;
    uint8 need_Break2zero;
    uint8 servo_turn_Robustly;//ǿ��ת��
    uint8 need_turnRobustly_flag;
    //===============================//
    uint32 runningEnd_time;
    uint32 starting_time;
    
    sint16 ServoDeg;//����Ƕ�ʵ�ʲ���
    //sint16 ServoBeforeDiff;
    //sint16 ServoWithDiff;
    
    float ServoDiff;//���΢����ֵ
    
    
    uint16 ServoAngle;//�����������ֵ
    
//    float L_PWM_ADD;
//    float R_PWM_ADD;
    sint16 LeftGiveSpd;//���������ٶ�
    sint16 RightGiveSpd;//�ҵ�������ٶ�
    uint16 LimitedSlipDiffSpd;//LSDϵͳ
      
    sint16 LeftMotorSpeed;//����ת��
    sint16 RightMotorSpeed;//�ҵ��ת��
    sint16 LeftMotorSpeed_n_cut_1;//����ת����һ����Ϣ
    sint16 RightMotorSpeed_n_cut_1;//�ҵ��ת����һ����Ϣ
    
    uint16 LeftMotorElec;//������ֵ
    uint16 RightMotorElec;//������ֵ
    // 
    sint16 LeftMotorPWM;//����PWM����
    sint16 RightMotorPWM;//�ҵ��PWM����
    
    sint16 e_LeftSpeed;
    sint16 e_RightSpeed;
    //================================//
    //����Ϊͼ��˴����
    float image_ratio[8];//ͼ���Ż�
    //================================//
    float image_control_n;
    float image_control_n_cut_one;
    
    uint16 GiveSpeed;
    float speedCut;
    float speedCutRatio;
    
    float changeSpeedRatio;
    
    uint32 motor_control_time;//����������ڽ���Ĵ���
    uint32 image_Be2control_time;//=>���ʱ��
    
    uint8 servo_imageYstopLine;
    
    float P_Curve;
    float K_Curve;//������ϵ��
    uint8 servo_need_Line;//���ٶ���ص����������ٶȾ�����ǰ����Ҫ�е���Ϣ
    
    float Motor_ControlPara_P_Number;
    float Motor_ControlPara_I_Number;
    float Motor_ControlPara_D_Number;
    u_Side SideWhat[60];
    void(*v_MotorControlSpeed)(sint16 speed);//ת��ض�
}
s_Control;//���Ʊ�������Ϣ
extern s_Control m_Control;



typedef
struct
{
    uint8 isOccurLonlyLineBreak;//�����˵��ߵ������¼�
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
    RaT_TurnRt,//��ֱ��
    RaT_InRt,//ֱ�ǽ����� => ��һ����Ҫ���д�����������
    RaT_Out2Rt,//��ֱ��׼��
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
    //�����������±�־
    float Rt_K_Var;
    float Rt_Var;
    //uint16 SteerX;
    uint16 TotalShutterTime;
    //uint8 DataShowOK_flag;
    uint8 isImageInformationShowing;//�Ƿ�չʾͼ��������Ϣ
    //========================================================================//
    uint32 RecordCounter;//�ظ�������¼
    //========================================================================//
    //��������ֵ
    uint8 Left[60];
    uint8 Right[60];
    uint8 Central[60];
    uint8 Left_UpBlack2White[60];
    uint8 Right_UpBlack2White[60];
    //sint16 CarViewer_width[60];
    sint16 width[60];
    //Y�᷽���¼=============================================================//
    uint8 Start_Y_Position;
    uint8 Last_Y_Position;
    //������ֵΪ�ϴγ���Ϣ����ֵ�ۺ�
    uint8 LastFrame_LeftPos;
    uint8 LastFrame_RightPos;
    uint8 LastFrame_CentralPos;
    //========================================================================//
    //������ֵ
    float MowCurve_Number;//�ϴ�������ֵ
    float LastTimeCurve_Number;//����������ֵ
//    uint8 Up2one_CentralNumber;
    
    //uint8 RtAngle_ForceTurning;
    uint8 RtAngle_isLasting;//�ϳ�����
//    uint8 RtAngle_SideWhichis;
//    u_Side RtAngle_WhichSideHave;
//    u_RtAngleTurn RtAngle_TurnProcess;//ֱ��ת�����
    //uint8 isRtAngle_inVeryLittle;
    
    uint8 Show_Start_Y_Position;
    uint8 Show_Last_Y_Position;
    
    uint8 servo_gaiaInfor_image;//��ͼ�������õ���������
    
    //========================================================================//
    uint8 happened_suddenly_True[60];
    
    
    u_LonlyLine LonlyLine_Status;//����״��
    /* LLT_NaN,
     * LLT_Start_Left,
     * LLT_Start_Right,
     */ //LonlyLine��״̬//
         
    sint16 LonlyLine_multiRowCentralVaild_WhileNearIsGone;//���߶��еĺ������ߵ�x�����꣬�������Ϊx�Ĳο�����ϵ
    
    uint8 LonlyLine_CornerPoint_Var_x;//Xֵ
    uint8 LonlyLine_CornerPoint_Val_Y;//Yֵ����Ϊ������ڴ�����Ϣ
    
    
    uint8 LonlyLine_isExistedOnRoad;//�������������Ǵ��ڵ�
    //¥�ϵ������������������ֵ���Һ��ʵĵ��ߵ��оݵģ�����Ӧ�ø���Ϊ
    //uint8 LonlyLine_Status_1isBlack2isNot;
    //uint8 LonlyLine_1isLasting2isBacking0isNot;
    uint8 Lonly_hasfound_lonlylinecorner;
    //uint8 LonlyLine_
    uint8 LonlyLine_ShutDown_X;//����͹���xֵ
    uint8 LonlyLine_ShutDown_Y;//����͹���yֵ
    uint8 LonlyLine_Last_Y_number;//����͹������Y����ֵ
    
    uint8 LonlyLine_VeryStraightGetCorner_AboutDeadLine_Var_x;
    uint8 LonlyLine_VeryStraightGetCorner_AboutDeadLine_Val_Y;
    
    uint8 LonlyLine_isNeed2CheckLost_NearPointCornerLostModeLonlyLine;//��Ҫȥ�����˵ĽǵĶ�ʧ���
    //uint8 LonlyLine_EndLine_X;//�������һ���ߵ�Xֵ
    //uint8 LonlyLine_EndLine_Y;//�������һ���ߵ�Yֵ
    
    //uint8 LonlyLine_Line_Start_About_Y;//����y����ʼ
    //uint8 LonlyLine_Line_End_About_Y;//����y���ս�
}
s_ImageAbstract;

extern s_ImageAbstract m_ImageAbstract;//m_ImageAbstract.

unsigned char b_solve8x8_Ax_b(float AB[8][9], float X[8]);//AX=B//���X�ķ���

extern unsigned short int u16_RevePanel[96][60];

void v_LoadingControlPara(s_Control* temp_Control,s_ImageAbstract* ImageAbstract);

PUBLIC void v_ImageCut();//ͼ����
PUBLIC void v_ImageMixis();//ͼ���ں�
PUBLIC void v_ImageOptimalization();//ͼ���Ż�

PUBLIC void v_ImageAbstractEnhanced();//ͼ��������ǿ

PUBLIC void v_ImageCutInformationShow(uint8);

PUBLIC float f_Get3pointsCurve//��������������
(uint8 x_1,uint8 x_2,uint8 x_3,uint8 y_1,uint8 y_2,uint8 y_3);

PUBLIC uint8 b_getCurve_Point//
(math_f32* used_X,math_f32 used_Y,math_f32 near_X,math_f32 near_Y,math_f32 far_X,math_f32 far_Y,math_f32 Curve);

//uint16 n_getSteerMiddleLine();//����
PUBLIC uint16 n_getSteerMiddleLine_UsedAverage();//����ƽ��ֵ

PUBLIC uint16 n_getSteerByWire();//�ϸ����ߺ���

PUBLIC void v_motor_doneFunc(void);//�������

#endif