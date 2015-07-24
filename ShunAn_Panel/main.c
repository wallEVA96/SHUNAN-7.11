/*
*�ļ�����              main.c
*˵����                ˳��main�ļ�
*����оƬ�ͺţ�        MK60FX512VQL15
*����ʱ�䣺            2014/11/29
*���ߣ�                ���ϴ�ѧ����
*/
#include "arm_cm4.h"
#include "start_ShunAn.h"
//#include "Bluetooth.h"
//============================================================================//
// ���°���Ϊ��ѧ�� 2014.12.19
#include "ShunAn_Lib.h"
//#include <math.h>
//============================================================================//
// ���°���Ϊ�ⲿӲ���� 2015.1.12
#include "Poet_Revelation.h" // ��ʾ��
#include "Poet_Servo.h" // ���
#include "Poet_Navigation.h" // ����
#include "Poet_Motor.h" // ���
#include "Poet_ImageBeholder.h" // ����ͷ
#include "Poet_Bluetooth.h" // ����
//#include "Poet_Scourage.h" // Flash
#include "Poet_Buzzer.h" // ��������ʼ��
#include "Poet_InputInterface.h" // ����
//#include <stdlib.h>
#include <stdio.h>

#include "ThePoet_ThePendulum.h"//
#include "Pendulum_EndlessFormsMostBeautiful.h"//
//
//============================================================================//
//#include <math.h>
//#include "IIC.h"//0x1FFF0410//0x1FFFFFFF
//s_selftest m_selftest = {.error_occur = 0,.b_imageBeholder_status = 0};//�����ⲿ������ԭ������ShunAn_Lib.h
s_system m_system = {.timer = 0,.BuzzerBeep_time = 0,.BuzzerBeep_LastingTime = 0,.control_isDone = 0
                    ,.uarttx_timer = 0};//ϵͳ��ʼ��

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
    v_LightingChaser_Init();//������ʼ��
    m_ImageAbstract.LonlyLine_Status = LLT_NaN;
    v_Uart_GetPicture_InRunning(0,0);
    m_Control.v_MotorControlSpeed = v_speed_Give;//n_getSteerMiddleLine_UsedAverage;//ʹ��
    EnableInterrupts;//
    //���Խ�E6 E7
    //OLED
    //D2 D5
    //m_ImageAbstract.LonlyLine_1isLasting2isBacking0isNot = 0;
    m_Control.Motor_ControlPara_P_Number = 41.f;//15//25����//22.f
    m_Control.Motor_ControlPara_I_Number = 1.2f;//1//5����
    m_Control.Motor_ControlPara_D_Number = 0;
    m_Control.P_Curve = 4.08f;////
    m_Control.K_Curve = 2.f;
    m_Control.ServoDiff = 1.7f;//1.6fΪ�������ã�������//1.9f//���Ӷ��΢�ֽ�����100ms���ӳ�
    m_Control.servo_imageYstopLine = 40;//35;
    //2.3f=>��Լ��90~120ms�Ķ����ǰ���ã�������������ͺ�100ms
    //3.2f=>��������ת��֮ǰ
    v_systemPara_Init();//������ʼ��
    /*----------------------ϵͳʱ���ʼ��------------------------*/
    pit_init_ms(PIT0,100); // �趨PIT�ж����� 100ms
    m_system.time_ratio = 100;
    set_vector_handler(PIT0_VECTORn,v_system_clocked); // �趨PIT�жϺ���ָ�� v_system_clocked
    //enable_irq(PIT0_IRQn);//ʹ��PIT�ж�
    //ϵͳʱ�ӳ�ʼ��
    //
    v_shudderBeforeReve_Init();//��Ļ��ʼ��
    v_ExInterface_Init();//������ʼ��
    m_Control.ServoDeg = 100;//2603
    
    m_Control.GiveSpeed = 180;//�ٶ��趨//200 => �ٶȴ�Լ��2m����
    
    m_Control.speed_max = 190;
    m_Control.speed_min = 175;
    m_Control.speed_cut = 185;
    
    m_Control.speedCut = 80.f;
    m_Control.speedCutRatio = 4.f;
    m_Control.changeSpeedRatio = 100.f;
    
    m_Control.motor_control_time = 0;
    m_Control.image_Be2control_time = 0;
    
    v_Buzzer_Init();//�����ʼ��
    
    v_Servo_Init();//�����ʼ��
    v_Servo_Out(m_Control.ServoDeg);
    
    v_motor_Init();//�����ʼ��
    v_UartInit(115200);//������ʼ��
    DEBUG_INFORMATION("Someting Done.");//��ʾ����
    if('F' == b_Beholder_Init()){DEBUG_INFORMATION("It's image init.");}//����ͷ���ż��Ĵ�����ʼ��
    if('F' == b_Beholder_InteruptInit()){DEBUG_INFORMATION("It's image int init.");}////����ͷ�жϽ��г�ʼ��
    if('F' == b_Navigation_Init()){DEBUG_INFORMATION("It's navigation init.");}////���Ե�����ʼ��
    
    m_system.time_ratio = 20;//50Hz//200Hz
    
    pit_init_ms(PIT1,2);//500us���ʱ��
    set_vector_handler(PIT1_VECTORn,v_motor_doneFunc);//�������ڸ���
    
    set_irq_priority(PORTD_IRQn,3);//��������ͷ�ж����ȼ�
    set_irq_priority(PIT1_IRQn,4);//�����ж����ȼ�
    
    ENABLE_BEHOLDER_WORK;//��������ͷ����
    
    modeMachine_Testing_TurnOnMode();//�趨��ǰ״̬�����
    
    if(1 != DEBUG_INFORMATION("")){for(;;);}//��ѭ������//�д�����Ϣ
    
    v_LoadingControlPara(&m_Control,&m_ImageAbstract);//���²�����
    
    
    
    while(1)//��ѭ��
    {
        BuzzerBeep_Process();
        
        v_ModeMachine_KeyInput_TurnCut();//�����¼�����
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

void v_system_clocker_user_done()//�û�ִ�в���
{
    /*
    m_Control.ServoAngle = n_GetServoAngle();//��ȡ��ǰ�ĽǶ���Ϣ
    m_Control.LeftMotorSpeed = n_GetMotor_speed(FTM1_BASE_PTR);
    m_Control.RightMotorSpeed = n_GetMotor_speed(FTM2_BASE_PTR);
    v_Servo_Out(m_Control.ServoDeg);//����Ƕ�
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