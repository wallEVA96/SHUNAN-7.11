/*
*文件名：              main.c
*说明：                顺暗main文件
*所用芯片型号：        MK60FX512VQL15
*创建时间：            2014/11/29
*作者：                中南大学朱葛峻
*/
#include "arm_cm4.h"
#include "start_ShunAn.h"
//#include "Bluetooth.h"
//============================================================================//
// 以下包含为数学库 2014.12.19
#include "ShunAn_Lib.h"
//#include <math.h>
//============================================================================//
// 以下包含为外部硬件库 2015.1.12
#include "Poet_Revelation.h" // 显示屏
#include "Poet_Servo.h" // 舵机
#include "Poet_Navigation.h" // 导航
#include "Poet_Motor.h" // 电机
#include "Poet_ImageBeholder.h" // 摄像头
#include "Poet_Bluetooth.h" // 串口
//#include "Poet_Scourage.h" // Flash
#include "Poet_Buzzer.h" // 蜂鸣器初始化
#include "Poet_InputInterface.h" // 按键
//#include <stdlib.h>
#include <stdio.h>

#include "ThePoet_ThePendulum.h"//
#include "Pendulum_EndlessFormsMostBeautiful.h"//
//
//============================================================================//
//#include <math.h>
//#include "IIC.h"//0x1FFF0410//0x1FFFFFFF
//s_selftest m_selftest = {.error_occur = 0,.b_imageBeholder_status = 0};//定义外部变量，原变量在ShunAn_Lib.h
s_system m_system = {.timer = 0,.BuzzerBeep_time = 0,.BuzzerBeep_LastingTime = 0,.control_isDone = 0
                    ,.uarttx_timer = 0};//系统初始化

//uint8 view_BeholderDataArray[Beholder_LineY_MAX][Beholder_PixNum_MAX];
//uint8 Open_flag = 0;

//uint16 Servo_Var = 0;
//char tx11[21];

uint16 MonoColor = 0;
void main()
{
    m_CarRunningMode.isCloseTheLightingStop = 0;
    
    m_CarRunningMode.isUsedDoubleServoPID = 0;
    m_CarRunningMode.DoubleServoPIDRatio = 1.5f;
    
    m_ImageAbstract.RampExist = 0;
    
    m_ImageAbstract.openTheRamp = 1;
    
    m_ImageTesting.Back2Angel_LineCounter = 10;
    
    vPtr_CheckLightingChaser = 0;
    
    m_ImageAbstract.LonlyLine_VeryStraightGetCorner_AboutDeadLine_Val_Y = 255;
    m_ImageAbstract.LonlyLine_VeryStraightGetCorner_AboutDeadLine_Var_x = 255;
    m_Control.LightChaserLogic = 0;
    v_LightingChaser_Init();//灯塔初始化
    m_ImageAbstract.LonlyLine_Status = LLT_NaN;
    v_Uart_GetPicture_InRunning(0,0);
    m_Control.v_MotorControlSpeed = v_speed_Give;//n_getSteerMiddleLine_UsedAverage;//使用
    EnableInterrupts;//
    //测试脚E6 E7
    //OLED
    //D2 D5
    //m_ImageAbstract.LonlyLine_1isLasting2isBacking0isNot = 0;
    m_Control.Motor_ControlPara_P_Number = 41.f;//15//25大了//22.f
    m_Control.Motor_ControlPara_I_Number = 1.2f;//1//5大了
    m_Control.Motor_ControlPara_D_Number = 0;
    m_Control.P_Curve = 4.08f;////
    m_Control.K_Curve = 2.f;
    m_Control.ServoDiff = 1.7f;//1.6f为出弯正好，入弯慢//1.9f//不加舵机微分将会有100ms的延迟
    m_Control.servo_imageYstopLine = 40;//35;
    //2.3f=>大约有90~120ms的舵机超前作用，但相对中线仍滞后100ms
    //3.2f=>剧烈振荡在转角之前
    v_systemPara_Init();//参数初始化
    /*----------------------系统时间初始化------------------------*/
    pit_init_ms(PIT0,100); // 设定PIT中断周期 100ms
    m_system.time_ratio = 100;
    set_vector_handler(PIT0_VECTORn,v_system_clocked); // 设定PIT中断函数指针 v_system_clocked
    //enable_irq(PIT0_IRQn);//使能PIT中断
    //系统时钟初始化
    //
    v_shudderBeforeReve_Init();//屏幕初始化
    v_ExInterface_Init();//按键初始化
    m_Control.ServoDeg = 100;//2603
    
    m_Control.GiveSpeed = 180;//速度设定//200 => 速度大约是2m左右
    
    m_Control.speed_max = 190;
    m_Control.speed_min = 175;
    m_Control.speed_cut = 185;
    
    m_Control.speedCut = 80.f;
    m_Control.speedCutRatio = 4.f;
    m_Control.changeSpeedRatio = 100.f;
    
    m_Control.motor_control_time = 0;
    m_Control.image_Be2control_time = 0;
    
    v_Buzzer_Init();//音响初始化
    
    v_Servo_Init();//舵机初始化
    v_Servo_Out(m_Control.ServoDeg);
    
    v_motor_Init();//电机初始化
    v_UartInit(115200);//蓝牙初始化
    DEBUG_INFORMATION("Someting Done.");//提示进程
    if('F' == b_Beholder_Init()){DEBUG_INFORMATION("It's image init.");}//摄像头引脚及寄存器初始化
    if('F' == b_Beholder_InteruptInit()){DEBUG_INFORMATION("It's image int init.");}////摄像头中断进行初始化
    if('F' == b_Navigation_Init()){DEBUG_INFORMATION("It's navigation init.");}////惯性导航初始化
    
    m_system.time_ratio = 20;//50Hz//200Hz
    
    pit_init_ms(PIT1,2);//500us间隔时间
    set_vector_handler(PIT1_VECTORn,v_motor_doneFunc);//控制周期更换
    
    set_irq_priority(PORTD_IRQn,3);//设置摄像头中断优先级
    set_irq_priority(PIT1_IRQn,4);//设置中断优先级
    
    ENABLE_BEHOLDER_WORK;//开启摄像头工作
    
    modeMachine_Testing_TurnOnMode();//设定当前状态机情况
    
    if(1 != DEBUG_INFORMATION("")){for(;;);}//死循环控制//有错误信息
    
    v_LoadingControlPara(&m_Control,&m_ImageAbstract);//更新参数表
    
    
    
    while(1)//死循环
    {
        BuzzerBeep_Process();
        
        v_ModeMachine_KeyInput_TurnCut();//按键事件驱动
        if(0 != m_ModeMachine.always_done){m_ModeMachine.always_done();}
        
        v_MonoShow_BlackRtAngle(m_ModeMachine.showRtBlackAngle);
        v_MonoShow_Buzzer(m_ModeMachine.showBuzzerInformation);
        v_MonoShow_isLonly(m_ModeMachine.showLonlyInformation);
        v_MonoShow_BlackBar(m_ModeMachine.showBlackBar);
        v_MonoShow_BlackTurning(m_ModeMachine.showYcutDown);
        v_MonoShow_BlackCutBar(m_ModeMachine.showBlackCutBar);
        v_MonoShow_OutOfTheRtAngle(m_ModeMachine.becauseThisOutOfTheBlackRtAngle);
        //v_MonoShow_BlackRtAngle(m_ModeMachine.showRtBlackAngle);
        char ch = (m_Control.LightChaserLogic) + '0';
        v_MonoRev_6x8Str(80,7,&ch,0);
        //v_MonoRev_Number(98,7,m_ImageAbstract.Rt_Var,10);
    }
}

/*
void v_user_done_after_ImageCut()
{
    return;
}
*/
/*
uint16 Angle = 0;
uint16 counter = 240;
uint16 AngleArray[800];
uint16 ServoCounter[800];
uint16 ArrayCounter = 0;
sint16 delta = 1;
*/

void v_system_clocker_user_done()//用户执行部分
{
    /*
    m_Control.ServoAngle = n_GetServoAngle();//获取当前的角度信息
    m_Control.LeftMotorSpeed = n_GetMotor_speed(FTM1_BASE_PTR);
    m_Control.RightMotorSpeed = n_GetMotor_speed(FTM2_BASE_PTR);
    v_Servo_Out(m_Control.ServoDeg);//输出角度
    */
}
/*
The deepest solace lies in understanding
This ancient unseen stream
A shudder before the beautiful

Awake Oceanborn
Behold this force
Bring the outside in
Explore the self to epiphany

The very core of life
Is soaring higher of truth and light

The music of this awe
Deep silence between the notes
Deafens me with endless love
This vagrant island Earth
A pilgrim shining bright
We are shuddering
Before the beautiful
Before the plentiful
We're the voyagers

Tales from the seas
Cathedral of greed

The very core of life
Is soaring higher of truth and light

The music of this awe
Deep silence between the notes
Deafens me with endless love
This vagrant island Earth
A pilgrim shining bright
We are shuddering
Before the beautiful
Before the plentiful
We're the voyagers

The unkown
The grand show
The choir of the stars
Interstellar
Theatre play
The nebula curtain falls
Imagination
Evolution
A species from the veil
As we wander
In search of
The source of the tale

The music of this awe
Deep silence between the notes
Deafens me with endless love
This vagrant island Earth
A pilgrim shining bright
We are shuddering
Before the beautiful
Before the plentiful
We're the voyagers
*/