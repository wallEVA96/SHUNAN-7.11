#include "arm_cm4.h"
#include "MK60F15.h"
#include "ShunAn_Lib.h"
#include "start_ShunAn.h"

#include "ThePoet_ThePendulum.h"

#include "Poet_Motor.h"
#include "Poet_Revelation.h"
#include "Poet_InputInterface.h"
#include "Poet_ImageBeholder.h"

#include "Pendulum_EndlessFormsMostBeautiful.h"//

#include <stdio.h>
#include <stdlib.h>

#include "Poet_Buzzer.h"
#include "Poet_Servo.h"
#include "Poet_Bluetooth.h"
s_ModeMachine m_ModeMachine;
//�˺�������Ҫ����

uint8 n_ImageBeholder_FourPointGetAndCal(uint8 x, uint8 y, uint8 modeSet)//λ�û�ȡ�������ʵ�ʴ���
{
    typedef struct
    {
        unsigned char x;
        unsigned char y;
    }s_Ponit;//�����׼������ֵ
    static s_Ponit Point[4] ={0};
    static s_Ponit PonitAfter[4] ={0};
    
    do
    {//����ת�������
        const sint8 f_x_higher = 40;
	const sint8 f_x_lower = 10;
        
	const sint8 f_y_higher = 40;
	const sint8 f_y_lower = 10;

	s_Ponit LeftUp;
	LeftUp.x = f_x_lower;
	LeftUp.y = f_y_higher;
	s_Ponit RightUp;
	RightUp.x = f_x_higher;
	RightUp.y = f_y_higher;
	s_Ponit RightDown;
	RightDown.x = f_x_higher;
	RightDown.y = f_y_lower;
	s_Ponit LeftDown;
	LeftDown.x = f_x_lower;
	LeftDown.y = f_y_lower;
        
        PonitAfter[0].x = LeftUp.x;
	PonitAfter[0].y = LeftUp.y;

	PonitAfter[1].x = RightUp.x;
	PonitAfter[1].y = RightUp.y;

	PonitAfter[2].x = RightDown.x;
	PonitAfter[2].y = RightDown.y;

	PonitAfter[3].x = LeftDown.x;
        PonitAfter[3].y = LeftDown.y;
    }while(0);
    
    static unsigned char timer = 0;
    //�����ĸ���
    switch(modeSet)
    {
    case 'C':
        timer = 0;
        break;
    case 'W':
        Point[timer].x = x;
        Point[timer].y = y;
        
        x = Point[timer].x;
        y = Point[timer].y;
        v_MonoRev_Number(0,0,x,10);
        v_MonoRev_Number(64,0,y,10);
        
        timer ++;
        break;
    case 'R':
        do
        {
            s_color color;//���Ƶ����ɫ
            color.C_Red_31 = 31;
            color.A_Blue_31 = 0;
            color.B_Green_63 = 0;
            for(uint8 loop = 0;loop < timer;loop++)
            {
                v_ColorRev_PutPoint(Point[loop].x ,Point[loop].y ,&color);//���ƺ��
            }
        }while(0);
        break;
    case 'A'://����õ��������ֵ
        m_ModeMachine.always_done = modeMachine_Always_CameraTestingMach_Output_ExtraPara;//״̬��ת��
        do
        {
            float AB[8][9];
            float X[8];
            
            for(uint8 loop = 0;loop < 4;loop++)
            {
                Point[loop].x *= 2;
                //Point[loop].y *= 2;
            }
            
            for (uint8 row = 0; row < 9; row++)
            {
		for (uint8 line = 0; line < 8; line++)
		{
                    AB[line][row] = 0.f;
                    X[line] = 0.f;
		}
            }
            
            for (uint8 loop = 0; loop < 4; loop++)
            {//����//����//����//����
                AB[loop * 2][8] = (PonitAfter[loop].x);
		AB[loop * 2 + 1][8] = (PonitAfter[loop].y);

		AB[loop * 2][6] = -(PonitAfter[loop].x);
		AB[loop * 2][7] = -(PonitAfter[loop].x);

		AB[loop * 2 + 1][6] = -(PonitAfter[loop].y);
		AB[loop * 2 + 1][7] = -(PonitAfter[loop].y);
            }

            for (uint8 loop = 0; loop < 4; loop++)
            {//����//����//����//����
		AB[loop * 2][0] = (Point[loop].x);
		AB[loop * 2][1] = (Point[loop].y);
		AB[loop * 2][2] = 1.f;

		AB[loop * 2 + 1][3] = (Point[loop].x);
		AB[loop * 2 + 1][4] = (Point[loop].y);
		AB[loop * 2 + 1][5] = 1.f;

		AB[loop * 2][6] = AB[loop * 2][6] * (Point[loop].x);
		AB[loop * 2][7] = AB[loop * 2][7] * (Point[loop].y);

		AB[loop * 2 + 1][6] = AB[loop * 2 + 1][6] * (Point[loop].x);
		AB[loop * 2 + 1][7] = AB[loop * 2 + 1][7] * (Point[loop].y);
            }
            
            b_solve8x8_Ax_b(AB,X);
            
            for(uint8 loop = 0;loop < 8;loop++)
            {
                m_Control.image_ratio[loop] = X[loop];
            }
        }while(0);
        break;
    default:
        break;
    }
    return timer;
}



//============================================================================//
//ϵͳ���� - ʱ��
void v_system_clocked()//ϵͳʱ��仯
{
//    PIT_Flag_Clear(PIT0);
    m_system.timer = m_system.timer + m_system.time_ratio;//ʱ���Լ�//50Hz
    m_Button_Timer.BottonTotaltime = m_system.timer;//����ʱ���Լ�
    v_system_clocker_user_done();
}

void modeMachine_BasicTesting_DataShow()
{
    v_InputInterface_testing(4,1);//���밴�����Խӿ�
}


void v_InputInterface_testing(uint8 x,uint8 y)//���밴�����Խӿ�
{
    char InforMationShow[21];
    sprintf(InforMationShow,"Ex:%d%d%d%d%d%d%d %d%d%d%d",
            button_S1,button_S2,button_S3,button_S4,button_S5,button_S6,button_S8,
            switch_1,switch_2,switch_3,switch_4);//��Ϣ�洢
    v_MonoRev_6x8Str(x,y,InforMationShow,0);
}

//============================================================================//
//============================================================================//
//============================================================================//
/*-------------------------------������Ϣ-------------------------------------*/
//============================================================================//
//============================================================================//
//============================================================================//
//============================================================================//
#define BuzzerBeepWithButton()            do{/*v_BuzzerBeepSet(200);*/}while(0)
void v_ModeMachine_KeyInput_TurnCut()
{//250ms
    /*------------------------------------------------------------------------*/
    //===��������===//
    if( ( 0 == button_S1 ) && ( m_Button_Timer.BottonTotaltime - m_Button_Timer.ButtonS1_time > 250 ) )
    {
        m_Button_Timer.ButtonS1_time = m_Button_Timer.BottonTotaltime;BuzzerBeepWithButton();
        if(0 != m_ModeMachine.button_S1_done){v_MonoRev_Fill(0);m_ModeMachine.button_S1_done();}
    }
    if( ( 0 == button_S2 ) && ( m_Button_Timer.BottonTotaltime - m_Button_Timer.ButtonS2_time > 250 ) )
    {
        m_Button_Timer.ButtonS2_time = m_Button_Timer.BottonTotaltime;BuzzerBeepWithButton();
        if(0 != m_ModeMachine.button_S2_done){v_MonoRev_Fill(0);m_ModeMachine.button_S2_done();}
    }
    if( ( 0 == button_S3 ) && ( m_Button_Timer.BottonTotaltime - m_Button_Timer.ButtonS3_time > 250 ) )
    {
        m_Button_Timer.ButtonS3_time = m_Button_Timer.BottonTotaltime;BuzzerBeepWithButton();
        if(0 != m_ModeMachine.button_S3_done){v_MonoRev_Fill(0);m_ModeMachine.button_S3_done();}
    }
    if( ( 0 == button_S4 ) && ( m_Button_Timer.BottonTotaltime - m_Button_Timer.ButtonS4_time > 250 ) )
    {
        m_Button_Timer.ButtonS4_time = m_Button_Timer.BottonTotaltime;BuzzerBeepWithButton();
        if(0 != m_ModeMachine.button_S4_done){v_MonoRev_Fill(0);m_ModeMachine.button_S4_done();}
    }
    if( ( 0 == button_S5 ) && ( m_Button_Timer.BottonTotaltime - m_Button_Timer.ButtonS5_time > 250 ) )
    {
        m_Button_Timer.ButtonS5_time = m_Button_Timer.BottonTotaltime;BuzzerBeepWithButton();
        if(0 != m_ModeMachine.button_S5_done){v_MonoRev_Fill(0);m_ModeMachine.button_S5_done();}
    }
    if( ( 0 == button_S6 ) && ( m_Button_Timer.BottonTotaltime - m_Button_Timer.ButtonS6_time > 250 ) )
    {
        m_Button_Timer.ButtonS6_time = m_Button_Timer.BottonTotaltime;BuzzerBeepWithButton();
        if(0 != m_ModeMachine.button_S6_done){v_MonoRev_Fill(0);m_ModeMachine.button_S6_done();}
    }
    if( ( 0 == button_S8 ) && ( m_Button_Timer.BottonTotaltime - m_Button_Timer.ButtonS8_time > 250 ) )
    {
        m_Button_Timer.ButtonS8_time = m_Button_Timer.BottonTotaltime;BuzzerBeepWithButton();
        if(0 != m_ModeMachine.button_S8_done){v_MonoRev_Fill(0);m_ModeMachine.button_S8_done();}
    }
}


//============================================================================//
//============================================================================//
//============================================================================//
/*-----------------------------Panel Show-------------------------------------*/
//============================================================================//
//============================================================================//
//============================================================================//
void v_ImageBeholder_Information(uint8 x,uint8 y)
{
    static uint8 LineMaxCounter = 0;
    if(m_self_Beholder.LineCounter > LineMaxCounter)
    {
        LineMaxCounter = m_self_Beholder.LineCounter;//����������
    }
    
    v_MonoRev_6x8Str(x,y,"Lnum:",0);v_MonoRev_Number(x + 6*5,y,m_self_Beholder.LineCounter,10);
    y = y + 1;
    v_MonoRev_6x8Str(x,y,"LMnum:",0);v_MonoRev_Number(x + 6*6,y,LineMaxCounter,10);
    y = y + 1;
    if(1 == m_self_Beholder.regRewrite)
    {
        v_MonoRev_6x8Str(x,y,"RegReWrite:Yes",0);
    }
    else
    {
        v_MonoRev_6x8Str(x,y,"RegReWrite:No",0);
    }
    /*
    y = y + 1;
    v_MonoRev_Number(x + 6*0,y,m_Control.a,10);
    v_MonoRev_Number(x + 64,y,m_Control.b,10);
    y = y + 1;
    v_MonoRev_Number(x + 6*0,y,m_Control.c,10);
    v_MonoRev_Number(x + 64,y,m_Control.d,10);
    y = y + 1;
    v_MonoRev_Number(x + 6*0,y,m_Control.e,10);
    v_MonoRev_Number(x + 64,y,m_Control.f,10);
    y = y + 1;
    v_MonoRev_Number(x + 6*0,y,m_Control.g,10);
    v_MonoRev_Number(x + 64,y,m_Control.h,10);
    */
    /*
    y = y + 1;
    v_MonoRev_6x8Str(x,y,"RegNum:",0);
    v_MonoRev_Number(x + 6*7,y,m_self_Beholder.regRewriteNumber,16);
    y = y + 1;
    v_MonoRev_6x8Str(x,y,"ReName:",0);
    v_MonoRev_Number(x + 6*7,y,m_self_Beholder.regReNumber_RegName,16);
    */
}

uint8 DEBUG_INFORMATION(char Tx[])
{
    static uint8 y = 0;
    uint8 re_now_y = 0;
    v_MonoRev_6x8Str(0,y,Tx,0);
    re_now_y = y;
    y++;
    if(8 == y)
    {
        y = 7;
    }
    return re_now_y;
}
//============================================================================//
//============================================================================//
//============================================================================//
//s_PanelDisplay m_PanelDisplay;
/*
void v_PanelDisplay_Nop(void){return;}
void v_PanelDisplay_Gaia(void)
{
    m_PanelDisplay.now_step = v_PanelDisplay_Gaia;
    m_PanelDisplay.should_do = v_PanelDisplay_Nop;
    v_MonoRev_Fill(0);//��պڰ׽���
    do//��ղ�ɫ����
    {
        Revelation_CS_0(m_ColorOLED_pins);
        s_color color_set;
        color_set.A_Blue_31 = 0;
        color_set.B_Green_63 = 0;
        color_set.C_Red_31 = 0;
        for(uint8 loop = 0;loop < 96;loop++)
        {
            for(uint8 inter = 0;inter < 64;inter++)
            {
                v_ColorRev_PutPoint(loop,inter,&color_set);
            }
        }
        Revelation_CS_1(m_ColorOLED_pins);
    }while(0);
    v_PanelDisplay_BasicDone();
}
*/
/*----------------------------------------------------------------------------*/
//��ɫ����ѡ��Ϊͼ����ʾ
//�ڰ׽���ѡ��Ϊֱ����ʾ
/*
----���Խ��� => Testing
--------���������
--------�������
--------�������
--------������Ϣ����
----����ͷOn/Off => Beholder On/OFF
----��͸�Ӳ������� => ImageCal UnValid / Valid
----����ִ����Ϣ���� => Vehicle Infor 
--------
----���� => Run
----5sͣ�� => Run 5 second
----1minͣ�� => Run 1 min
*/
//============================================================================//
void v_Panel_DisplayCommandLine(uint16 arrow,uint8 switchMode)//���п�ͼ//�������ṹ
{    
    static uint8 first_LineShow = 0;//��ʾ�ĵ�һ��
    static uint8 last_LineShow = 0;//��ʾ�����һ��
    static uint8 nowMode = 255;//��ǰģʽ => ���ڳ�ʼ�����庯��
    const uint8 MagicNumber_MonoOLED_Ycounter = 7;//Ĭ�ϲ�����SSD1306�Ķ���
    static sint8 arrow_static = 0;//�����趨��ǰֵ
    /*----------���鳣���趨----------*/
    //0
    const char *TestContext = "1.Testing";
    const char *BeholderContext = "2.Beholder Cal";
    const char *RunningSetContext = "3.Running Set";
    const char *ShutterContext = "4.Shutter Time";
    const char *ParaContext = "5.ParaSet Time";
    const char *MotorPIDContext = "6.PID";
    const char *ServoModeContext = "7.MotorFuc";
    const char *UpestCommandLine_Array[] = {TestContext,BeholderContext,RunningSetContext,ShutterContext,ParaContext,MotorPIDContext,ServoModeContext};
    const uint8 Upest_ArrayNumber = sizeof(UpestCommandLine_Array)/sizeof(UpestCommandLine_Array[0]);
    
    const char *RacingContext = "8.RaceInfor";
    const char *UpestCommandLine_Array_two[] = {RacingContext};
    const uint8 Upest_two_ArrayNumber = sizeof(UpestCommandLine_Array_two)/sizeof(UpestCommandLine_Array_two[0]);
    
    //1
    const char *Basictest = "1.Basic Input Test";
    const char *Servotest = "2.Servo Test";
    const char *Motortest = "3.Motor Test";
    const char *CameraInfortest = "4.Camera Infor";
    const char *ServoMiddleLineTest = "5.Middline Test";
    const char *ImageOutput = "6.ImageOutPut";
    const char *SpecialStatusText = "7.Special Status";
//    const char *Navigationtest = "4.Navigation Test";
//    const char *Testing_Array[] = {Basictest,Servotest,Motortest,Navigationtest};
    const char *Testing_Array[] = {Basictest,Servotest,Motortest,CameraInfortest,ServoMiddleLineTest,ImageOutput,SpecialStatusText};
    const uint8 Testing_ArrayNumber = sizeof(Testing_Array)/sizeof(Testing_Array[0]);
    
    const char *Running_5_second = "1.Running 5s";
    const char *Running_15_second = "2.Running 15s";
    const char *Running_30_second = "3.Running 30s";
    const char *Running_Always = "4.Running Always";
    const char *Running_Light = "5.Running Light";
//    const char *Navigationtest = "4.Navigation Test";
//    const char *Testing_Array[] = {Basictest,Servotest,Motortest,Navigationtest};
    const char *Running_Array[] = {Running_5_second,Running_15_second,Running_30_second,Running_Always,Running_Light};
    const uint8 Running_ArrayNumber = sizeof(Running_Array)/sizeof(Running_Array[0]);
    
    
    const char *SpeedSetPara = "1.Speed Set";
    const char *SpeedCutNumberPara = "2.SpdCut Set";
    const char *SpeedCutRatioPara = "3.SpdCut Rto";
    const char *ServoDiffPara = "4.Servo D";
    const char *CameraPara = "5.Shutter T";
    const char *SpeedChangePara = "6.Speed Max";
//    const char *ParamentsInLastPara_Array = "  NextPage"
//    const char *Navigationtest = "4.Navigation Test";
//    const char *Testing_Array[] = {Basictest,Servotest,Motortest,Navigationtest};
    const char *Para_Array[] = {SpeedSetPara,SpeedCutNumberPara,SpeedCutRatioPara,ServoDiffPara,CameraPara,SpeedChangePara};
    const uint8 Para_ArrayNumber = sizeof(Para_Array)/sizeof(Para_Array[0]);

    
    const char *StartCarRuning = "1.Running";
    const char *StartCarSpeedLow = "2.SpeedMode Low";
    const char *StartCarSpeedHigh = "3.SpeedMode Hight";
    const char *StartCarSpeedAverage = "4.SpeedMode Average";
    const char *StartCarSpeedMin = "  Speed Min:";
    const char *StartCarSpeedMax = "  Speed Max:";
    const char *StartCarSpeedRt = "  Speed Rt:";
    const char *StartCar_Array[] = {StartCarRuning,StartCarSpeedLow,StartCarSpeedHigh,StartCarSpeedAverage
                                   ,StartCarSpeedMin,StartCarSpeedMax,StartCarSpeedRt};
    const uint8 StartCar_ArrayNumber = sizeof(StartCar_Array)/sizeof(StartCar_Array[0]);
    
    
    const char *MotorPID_P = "1.P Change";
    const char *MotorPID_I = "2.I Change";
    const char *MotorPID_D = "3.D Change";
    const char *MotorPID_UsedLast = "4.Used Last";
    const char *MotorPID_Array[] = {MotorPID_P,MotorPID_I,MotorPID_D,MotorPID_UsedLast};//
    const uint8 MotorPID_ArrayNumber = sizeof(MotorPID_Array)/sizeof(MotorPID_Array[0]);
    
    char **ShowCharPtr = 0;//��ʾ����
    uint8 Line_Length = 0;//������Ӧ�ĳ���
    

    if(!((255 != nowMode)&&(255 == switchMode)))//����ǰģʽ�趨255Ϊ����ģʽ
    {//(255 == nowMode)||(255 != switchMode)
        if(nowMode != switchMode)//ȷ����ǰģʽ���ǵ�ǰģʽ�����ȫ��Static���
        {//255 != switchMode
            first_LineShow = 0;
            last_LineShow = 0;
            arrow_static = 0;
            //����Ҫ����
            v_MonoRev_Fill(0);
        }
        nowMode = switchMode;//д�뵱ǰģʽ����Ĥ��ֵ
        if(255 == switchMode)
        {
            return;//������
        }
    }
    
    
    switch(nowMode)//ȷ��ģʽ����Ϣ => �˺�������ά���Ĳ���
    {
    case 0://�������ֵ��Ϣ����UpestCommandLine_Array
        ShowCharPtr = (char**)UpestCommandLine_Array;
        Line_Length = Upest_ArrayNumber;
        break;
    case 1://������Ϣ��ֵ��Ϣ
        ShowCharPtr = (char**)Testing_Array;
        Line_Length = Testing_ArrayNumber;
        break;
    case 2://������Ϣ��ֵ��Ϣ
        ShowCharPtr = (char**)Running_Array;
        Line_Length = Running_ArrayNumber;
        break;
    case 3://������Ϣ��ֵ��Ϣ
        ShowCharPtr = (char**)Para_Array;
        Line_Length = Para_ArrayNumber;
        break;
    case 4://������Ϣ��ֵ��Ϣ
        ShowCharPtr = (char**)MotorPID_Array;
        Line_Length = MotorPID_ArrayNumber;
        break;
    case 5:
        ShowCharPtr = (char**)UpestCommandLine_Array_two;//[] = {RacingContext};
        Line_Length = Upest_two_ArrayNumber;
        break;
    case 6:
        ShowCharPtr = (char**)StartCar_Array;//[] = {RacingContext};
        Line_Length = StartCar_ArrayNumber;
        break;    
        
    }
    /*------------------�����趨------------------*/
//    static sint8 arrow_static = 0;//�����趨��ǰֵ
    arrow_static = (arrow >= 9000)?(arrow_static + (arrow - 10000)):arrow;
    if(arrow_static < 0){arrow_static = 0;}
    if(arrow_static >= Line_Length){arrow_static = Line_Length - 1;}
    arrow = arrow_static;
    //============================================//
    
    /*------------------ȷ����������------------------*/
    sint8 show_first2Panel = ((arrow >= first_LineShow)?0:arrow) + ((arrow > last_LineShow)?(arrow - MagicNumber_MonoOLED_Ycounter):0);//ȷ������Ŀ
    if(show_first2Panel < 0){show_first2Panel = 0;}
    first_LineShow = show_first2Panel;//��̬��ֵ����
    uint8 last_number = ((show_first2Panel + MagicNumber_MonoOLED_Ycounter > Line_Length)?Line_Length:(show_first2Panel + MagicNumber_MonoOLED_Ycounter));
    last_LineShow = last_number;//��̬��ֵ����
    //============================================//
    
    /*---------------------�ַ����������---------------------*/
    uint8 temo_show = 0;//�ݴ���//��������=>SSD1306��Y
    for(uint8 loop = show_first2Panel;loop < last_number;loop++)
    {
        v_MonoRev_6x8Str(6,temo_show,(char*)ShowCharPtr[loop],0);
        temo_show++;
    }
    //============================================//
    
    /*---------------------��ͷ����---------------------*/
    for(uint8 loop = 0;loop < 8;loop++)
    {
        v_MonoRev_6x8Str(0,loop," ",0);
    }
    arrow = (arrow >= last_LineShow)?last_LineShow - 1:arrow;
    v_MonoRev_6x8Str(0,arrow,">",0);
    //============================================//
}
/*
void v_PanelDisplay_BasicDone(void)
{
    v_MonoRev_6x8Str(0,0,"Basic Test",1);
    v_InputInterface_testing(0,1);//��������
}


*/
void v_systemPara_Init()
{
    //m_Button_Timer.TickTimeCounter = 3;//�ӳ�ʱ��Ϊ300ms / 
    m_Control.image_control_n_cut_one = 185 / 2;
    m_Control.image_control_n = 185 / 2;
    
    m_Control.need_turnRobustly_flag = 0;
    m_Control.servo_turn_Robustly = 100;
    
    m_ImageAbstract.RtAngle_isLasting = 0;//�ϳ��Ƿ���ֱ��
}

void modeMachine_MoveUp_PanelDisplay()
{
    const uint16 moveNumber = 10001;
    v_Panel_DisplayCommandLine(moveNumber,255);
}

void modeMachine_MoveDown_PanelDisplay()
{
    const uint16 moveNumber = 9999;
    v_Panel_DisplayCommandLine(moveNumber,255);
}

void modeMachine_Move2testingMode()//ת��ȥ��һ�˵�
{
    v_Panel_DisplayCommandLine(0,1);
    modeMachine_BasicTesting_TurnMode();
}

void modeMachine_Move_ServoTestingPanel_Display()
{
    modeMachine_Always_ImageOutput();//���ͼ��
    v_MonoRev_6x8Str(0,0,"Servo Testing Mode",1);
    char Tx[21];
    //
    sprintf(Tx,"Deg:%d",m_Control.ServoDeg);
    //v_Servo_Out(m_Control.ServoDeg);
    v_MonoRev_6x8Str(4,1,Tx,0);//�����ǰ�Ƕ�
    m_Control.ServoAngle = n_GetServoAngle();
    sprintf(Tx,"Ang:%d",m_Control.ServoAngle);
    v_MonoRev_6x8Str(4,2,Tx,0);//�����ǰ�ĵ�ѹ��Ϣ
    v_MonoRev_6x8Str(4,3,"        ",0);//�����ǰ�ĵ�ѹ��Ϣ
    uint16 MiddleLine = n_getSteerMiddleLine_UsedAverage();
    v_MonoRev_Number(4,3,MiddleLine,10);
}

//============================================================================//
//============================================================================//
//============================================================================//
void modeMachine_Always_MotorTestingPanel_Display()
{
    modeMachine_Always_ImageOutput();//��ʾͼ��
    v_MonoRev_6x8Str(0,0,"Motor Testing Mode",1);
    char Tx[21];
    
    
    
    sprintf(Tx,"            ");
    v_MonoRev_6x8Str(4+6*7,1,Tx,0);//�����ǰ�Ƕ�
    v_MonoRev_6x8Str(4+6*7,2,Tx,0);//�����ǰ�Ƕ�
    v_MonoRev_6x8Str(4+6*5,3,Tx,0);//�����ǰ�Ƕ�
    v_MonoRev_6x8Str(4+6*5,4,Tx,0);//�����ǰ�Ƕ�
    
    sprintf(Tx,"LSpeed: %g",(float)(m_Control.LeftMotorSpeed));
    v_MonoRev_6x8Str(4,1,Tx,0);//�����ǰ�Ƕ�
    sprintf(Tx,"RSpeed: %g",(float)(m_Control.RightMotorSpeed));
    v_MonoRev_6x8Str(4,2,Tx,0);//�����ǰ�ĵ�ѹ��Ϣ
    sprintf(Tx,"LPWM: %d",m_Control.LeftMotorPWM);
    v_MonoRev_6x8Str(4,3,Tx,0);//�����ǰ�Ƕ�
    sprintf(Tx,"RPWM: %d",m_Control.RightMotorPWM);
    v_MonoRev_6x8Str(4,4,Tx,0);//�����ǰ�ĵ�ѹ��Ϣ
}

void modeMachine_Up_MotorTestingMach_Output()
{
    m_Control.LeftMotorPWM += 10;
    m_Control.RightMotorPWM += 10;
    if(m_Control.LeftMotorPWM < -1000){m_Control.LeftMotorPWM = -1000;}
    if(m_Control.RightMotorPWM < -1000){m_Control.RightMotorPWM = -1000;}
    if(m_Control.LeftMotorPWM > 1000){m_Control.LeftMotorPWM = 1000;}
    if(m_Control.RightMotorPWM > 1000){m_Control.RightMotorPWM = 1000;}
    if(m_Control.LeftMotorPWM >= 0)
    {
        v_leftMotor_pwmOut(m_Control.LeftMotorPWM,1);
        v_rightMotor_pwmOut(m_Control.RightMotorPWM,1);
    }
    else
    {
        v_leftMotor_pwmOut(__ABS(m_Control.LeftMotorPWM),2);
        v_rightMotor_pwmOut(__ABS(m_Control.RightMotorPWM),2);
    }
    
}

void Always_Draw_Width()
{
    for(uint8 loop = 0;loop < 60;loop++)
    {
        uint8 middle = m_ImageAbstract.Central[loop];
        sint16 start = middle - m_ImageAbstract.width[loop] / 2;
        sint16 end = middle + m_ImageAbstract.width[loop] / 2;
        if(start < 0){start = 0;}
        if(end > 185){end = 184;}
        s_color color;
        color.A_Blue_31 = 31;
        color.B_Green_63 = 0;
        color.C_Red_31 = 0;
        for(uint8 inter = start;inter < end;inter++)
        {
            v_ColorRev_PutPoint(inter/2,loop,&color);//����
        }
    }
}

void modeMachine_Always_ImageOutput()//ͼ����ʾ
{
    if(1 == m_system.uart_Txflag)
    {    
        if(1 == switch_1)
        {
            v_ColorRev_Beholder_60_185_Output();
            v_ImageCutInformationShow(1);
        }
        else
        {
            v_ColorRev_Beholder_60_185_Output();
            v_ImageCutInformationShow(0);
            
        }
        if(1 == switch_4)
        {
            Always_Draw_Width();
        }
        m_system.uart_Txflag = 0;
    }
}

static sint8 modeMachine_Camera_x_run = 0;
static sint8 modeMachine_Camera_y_run = 0;
void modeMachine_CameraTestingMach_Up(){modeMachine_Camera_y_run += 1;};
void modeMachine_CameraTestingMach_Left(){modeMachine_Camera_x_run -=1;};
void modeMachine_CameraTestingMach_Down(){modeMachine_Camera_y_run -=1;};
void modeMachine_CameraTestingMach_Right(){modeMachine_Camera_x_run +=1;};
void modeMachine_CameraTestingMach_WriteNowPoint()
{
    if(4 == n_ImageBeholder_FourPointGetAndCal(modeMachine_Camera_x_run,modeMachine_Camera_y_run,'W'))
    {
        n_ImageBeholder_FourPointGetAndCal(0,0,'A');
        n_ImageBeholder_FourPointGetAndCal(0,0,'C');
    }
}
void modeMachine_CameraTestingMach_CalibrationModeSwitch()
{
    m_ModeMachine.always_done = modeMachine_Always_CameraTestingMach_OutputCalibration;
    s_color color_set;
    for(uint8 loop = 0;loop < 96;loop++)
    {
        for(uint8 inter = 0;inter < 64;inter++)
        {
            color_set.A_Blue_31 = 0;
            color_set.B_Green_63 = 0;
            color_set.C_Red_31 = 0;
            v_ColorRev_PutPoint(loop,inter,&color_set);
        }
    }
    Revelation_CS_1(m_ColorOLED_pins);
}

void modeMachine_Always_CameraTestingMach_OutputCalibration()//
{
    if(modeMachine_Camera_x_run > 95){modeMachine_Camera_x_run = 95;}
    if(modeMachine_Camera_x_run < 0){modeMachine_Camera_x_run = 0;}
    
    if(modeMachine_Camera_y_run > 63){modeMachine_Camera_y_run = 63;}
    if(modeMachine_Camera_y_run < 0){modeMachine_Camera_y_run = 0;}
    
    float w_new;
    float x_new;
    float y_new;
    float x_temp;
    float y_temp;
    
    uint8 color_Message[60][93];
    
    for(uint8 Line_show = 0;Line_show < 60;Line_show++) // ����ʾ - 8
    {//�����ݴ�
        for(uint8 X_show = 0;X_show < 93;X_show++)
        {
            color_Message[Line_show][X_show] = m_ImageBeholder_Data[Line_show][X_show * 2];
        }
    }
    
    float X[8];
    for(uint8 loop = 0;loop < 8;loop++)
    {
        X[loop] = m_Control.image_ratio[loop];
    }
    if(1 == m_system.uart_Txflag)
    {
        Revelation_CS_0(m_ColorOLED_pins);
        s_color RGBcolor;
        for(uint8 Line_show = 0;Line_show < 60;Line_show++) // ����ʾ - 8
        {
            for(uint8 X_show = 0;X_show < 185;X_show++)
            {
                w_new = X[6] * X_show + X[7] * Line_show + 1;// w = gx + hy + 1
                x_new = X[0] * X_show + X[1] * Line_show + X[2];
                y_new = X[3] * X_show + X[4] * Line_show + X[5];
                if (0.0 == w_new)
                {
                    break;
                }
                x_new = x_new / w_new;
                y_new = y_new / w_new;
                x_temp = (sint32)x_new;
                y_temp = (sint32)y_new;
                if ((x_temp + 30>= 96 * 2) || (x_temp + 30 < 0 * 2))
                {
                    break;
                }
                if ((y_temp >= 60) || (y_temp < 0))
                {
                    break;
                }
                x_temp = x_temp / 2;
                //y_temp = y_temp / 2;
                color_OLED_WrCmd(0x15);color_OLED_WrCmd((uint8)(x_temp+30));color_OLED_WrCmd(95);//Setup Column
                color_OLED_WrCmd(0x75);color_OLED_WrCmd((uint8)y_temp);color_OLED_WrCmd(63);//Setup Row
                
                //v_65kcolor2Mono(selfjudge_SendMessage[Line_show][X_show*2],&RGBcolor);
                v_65kcolor2Mono(color_Message[Line_show][X_show],&RGBcolor);
                color_OLED_WrDat((RGBcolor.C_Red_31 << 3)|(RGBcolor.B_Green_63 >> 3));
                color_OLED_WrDat((RGBcolor.B_Green_63 << 5)|(RGBcolor.A_Blue_31));//color
            }
        }
        Revelation_CS_1(m_ColorOLED_pins);
        m_system.uart_Txflag = 0;
    }
    /*----------------------------�������-----------------------------*/
    for(uint8 loop = 0;loop < 8;loop++)
    {
        v_MonoRev_Number(0,loop,m_Control.image_ratio[loop],10);//�����ֵ
    }
    
//    n_ImageBeholder_FourPointGetAndCal(0,0,'R');
    
}
void modeMachine_Always_CameraTestingMach_Output()//
{
    if(modeMachine_Camera_x_run > 95){modeMachine_Camera_x_run = 95;}
    if(modeMachine_Camera_x_run < 0){modeMachine_Camera_x_run = 0;}
    
    if(modeMachine_Camera_y_run > 63){modeMachine_Camera_y_run = 63;}
    if(modeMachine_Camera_y_run < 0){modeMachine_Camera_y_run = 0;}
    
    uint8 color_Message[60][93];
    
    for(uint8 Line_show = 0;Line_show < 60;Line_show++) // ����ʾ - 8
    {//�����ݴ�
        for(uint8 X_show = 0;X_show < 93;X_show++)
        {
            color_Message[Line_show][X_show] = m_ImageBeholder_Data[Line_show][X_show * 2];
        }
    }
    
    if(1 == m_system.uart_Txflag)
    {
        Revelation_CS_0(m_ColorOLED_pins);
        s_color RGBcolor;
        for(uint8 Line_show = 0;Line_show < 60;Line_show++) // ����ʾ - 8
        {
        /////
            color_OLED_WrCmd(0x15);color_OLED_WrCmd(2);color_OLED_WrCmd(95);//Setup Column
            color_OLED_WrCmd(0x75);color_OLED_WrCmd(Line_show);color_OLED_WrCmd(63);//Setup Row
        /////
            for(uint8 X_show = 0;X_show < 93;X_show++)
            {
                v_65kcolor2Mono(color_Message[Line_show][X_show],&RGBcolor);
                if((modeMachine_Camera_x_run == X_show)&&(modeMachine_Camera_y_run == Line_show))
                {
                    RGBcolor.B_Green_63 = 0;RGBcolor.A_Blue_31 = 0;RGBcolor.C_Red_31 = 31;
                    color_OLED_WrDat((RGBcolor.C_Red_31 << 3)|(RGBcolor.B_Green_63 >> 3));
                    color_OLED_WrDat((RGBcolor.B_Green_63 << 5)|(RGBcolor.A_Blue_31));//color
                }
                else
                {
                    color_OLED_WrDat((RGBcolor.C_Red_31 << 3)|(RGBcolor.B_Green_63 >> 3));
                    color_OLED_WrDat((RGBcolor.B_Green_63 << 5)|(RGBcolor.A_Blue_31));//color
                }
            }
        }
        Revelation_CS_1(m_ColorOLED_pins);
        m_system.uart_Txflag = 0;
    }
    
    v_ImageBeholder_Information(0,1);//
    
    n_ImageBeholder_FourPointGetAndCal(0,0,'R');
    
}
void modeMachine_Always_CameraTestingMach_Output_ExtraPara()
{
    if(modeMachine_Camera_x_run > 95){modeMachine_Camera_x_run = 95;}
    if(modeMachine_Camera_x_run < 0){modeMachine_Camera_x_run = 0;}
    
    if(modeMachine_Camera_y_run > 63){modeMachine_Camera_y_run = 63;}
    if(modeMachine_Camera_y_run < 0){modeMachine_Camera_y_run = 0;}
    
    uint8 color_Message[60][93];
    
    for(uint8 Line_show = 0;Line_show < 60;Line_show++) // ����ʾ - 8
    {//�����ݴ�
        for(uint8 X_show = 0;X_show < 93;X_show++)
        {
            color_Message[Line_show][X_show] = m_ImageBeholder_Data[Line_show][X_show * 2];
        }
    }
    
    if(1 == m_system.uart_Txflag)
    {
        Revelation_CS_0(m_ColorOLED_pins);
        s_color RGBcolor;
        for(uint8 Line_show = 0;Line_show < 60;Line_show++) // ����ʾ - 8
        {
        /////
            color_OLED_WrCmd(0x15);color_OLED_WrCmd(2);color_OLED_WrCmd(95);//Setup Column
            color_OLED_WrCmd(0x75);color_OLED_WrCmd(Line_show);color_OLED_WrCmd(63);//Setup Row
        /////
            for(uint8 X_show = 0;X_show < 93;X_show++)
            {
                v_65kcolor2Mono(color_Message[Line_show][X_show],&RGBcolor);
                if((modeMachine_Camera_x_run == X_show)&&(modeMachine_Camera_y_run == Line_show))
                {
                    RGBcolor.B_Green_63 = 0;RGBcolor.A_Blue_31 = 0;RGBcolor.C_Red_31 = 31;
                    color_OLED_WrDat((RGBcolor.C_Red_31 << 3)|(RGBcolor.B_Green_63 >> 3));
                    color_OLED_WrDat((RGBcolor.B_Green_63 << 5)|(RGBcolor.A_Blue_31));//color
                }
                else
                {
                    color_OLED_WrDat((RGBcolor.C_Red_31 << 3)|(RGBcolor.B_Green_63 >> 3));
                    color_OLED_WrDat((RGBcolor.B_Green_63 << 5)|(RGBcolor.A_Blue_31));//color
                }
            }
        }
        Revelation_CS_1(m_ColorOLED_pins);
        m_system.uart_Txflag = 0;
    }
    
    for(uint8 loop = 0;loop < 8;loop++)
    {
        v_MonoRev_Number(0,loop,m_Control.image_ratio[loop],10);//�����ֵ
    }
//    v_ImageBeholder_Information(0,1);//
    
//    n_ImageBeholder_FourPointGetAndCal(0,0,'R');
}
/*----------------------------------------------------------------------------*/


void modeMachine_Down_MotorTestingMach_Output()
{
    m_Control.LeftMotorPWM -= 10;
    m_Control.RightMotorPWM -= 10;
    if(m_Control.LeftMotorPWM < -1000){m_Control.LeftMotorPWM = -1000;}
    if(m_Control.RightMotorPWM < -1000){m_Control.RightMotorPWM = -1000;}
    if(m_Control.LeftMotorPWM > 1000){m_Control.LeftMotorPWM = 1000;}
    if(m_Control.RightMotorPWM > 1000){m_Control.RightMotorPWM = 1000;}
    if(m_Control.LeftMotorPWM >= 0)
    {
        v_leftMotor_pwmOut(m_Control.LeftMotorPWM,1);
        v_rightMotor_pwmOut(m_Control.RightMotorPWM,1);
    }
    else
    {
        v_leftMotor_pwmOut(__ABS(m_Control.LeftMotorPWM),2);
        v_rightMotor_pwmOut(__ABS(m_Control.RightMotorPWM),2);
    }
}

//============================================================================//
//============================================================================//
//============================================================================//
void modeMachine_Move_ServoTesting_UpOutPut()
{
    m_Control.servo_turn_Robustly = m_Control.servo_turn_Robustly + 1;
    v_MonoRev_Fill(0);
    modeMachine_Move_ServoTestingPanel_Display();
}

void modeMachine_Move_ServoTesting_DownOutPut()
{
    m_Control.servo_turn_Robustly = m_Control.servo_turn_Robustly - 1;
    v_MonoRev_Fill(0);
    modeMachine_Move_ServoTestingPanel_Display();
}


/*
//--------
//----���� => Run
//--------5sͣ�� => Run 5 second
----���Խ��� => Testing
--------���������
--------�������
--------�������
//--------������Ϣ����
----����ͷOn/Off => Beholder On/OFF
//----��͸�Ӳ������� => ImageCal UnValid / Valid
//----����ִ����Ϣ���� => Vehicle Infor 
//--------1minͣ�� => Run 1 min
*/
//============================================================================//
//���ϲ�ȴ�����
void modeMachine_Testing_TurnOnMode()//���������������ģʽ
{//
    m_ModeMachine.always_done = modeMachine_Always_ImageOutput;
    
    m_ModeMachine.button_S1_done = v_UartTxNeedtx;//v_UartTxNeedtx()
    
    m_ModeMachine.button_S2_done = modeMachine_ImageBeholderTesting_TurnOnMode;
    m_ModeMachine.button_S3_done = modeMachine_StartCarRunning_Paraments;
    m_ModeMachine.button_S4_done = 0;
    m_ModeMachine.button_S5_done = 0;
    m_ModeMachine.button_S6_done = modeMachine_Move2testingMode;//modeMachine_Move2testingMode
    m_ModeMachine.button_S8_done = 0;
    
    v_Panel_DisplayCommandLine(0,0);
    // => modeMachine_Move_ServoTestingPanel_Display => ����ִ�ж������
}
void modeMachine_ImageBeholder_ReStart(){b_Beholder_Init();}
void modeMachine_ImageBeholderTesting_TurnOnMode()
{
    m_ModeMachine.always_done = modeMachine_Always_ImageOutput;
    m_ModeMachine.button_S1_done = modeMachine_ImageBeholder_ReStart;//��������ͷ
    
    m_ModeMachine.button_S3_done = modeMachine_Testing_TurnOnMode;//modeMachine_Move_ServoTesting_UpOutPut;
    m_ModeMachine.button_S2_done = modeMachine_RunningSet_TurnOnMode;//modeMachine_Move_ServoTesting_DownOutPut;
    
    m_ModeMachine.button_S4_done = 0;
    m_ModeMachine.button_S5_done = 0;
    m_ModeMachine.button_S6_done = modeMachine_ImageBeholderTesting_TestingMode;
    m_ModeMachine.button_S8_done = 0;
    
    v_Panel_DisplayCommandLine(1,0);
}

void modeMachine_RunningSet_TurnOnMode()
{
    m_ModeMachine.always_done = modeMachine_Always_ImageOutput;
    m_ModeMachine.button_S1_done = modeMachine_ThirdParaments_Set;
    
    m_ModeMachine.button_S3_done = modeMachine_Testing_TurnOnMode;//modeMachine_Move_ServoTesting_UpOutPut;
    m_ModeMachine.button_S2_done = modeMachine_TotleShutter_TurnOnMode;//modeMachine_Move_ServoTesting_DownOutPut;
    
    m_ModeMachine.button_S4_done = 0;
    m_ModeMachine.button_S5_done = 0;
    m_ModeMachine.button_S6_done = modeMachine_Running5s_RunMode;
    m_ModeMachine.button_S8_done = 0;
    
    v_Panel_DisplayCommandLine(2,0);
}
void modeMachine_ThirdParaments_Set()
{
    m_ModeMachine.always_done = modeMachine_ThirdParaments_Viewer;
}

/*
void modeMachine_SpeedSet_TurnOnMode()
{
    m_ModeMachine.always_done = modeMachine_Always_ImageOutput;
    m_ModeMachine.button_S1_done = 0;
    
    m_ModeMachine.button_S3_done = modeMachine_RunningSet_TurnOnMode;//modeMachine_Move_ServoTesting_UpOutPut;
    m_ModeMachine.button_S2_done = modeMachine_TotleShutter_TurnOnMode;//modeMachine_Move_ServoTesting_DownOutPut;
    
    m_ModeMachine.button_S4_done = 0;
    m_ModeMachine.button_S5_done = 0;
    m_ModeMachine.button_S6_done = modeMachine_SpeedSetMode;//modeMachine_Running5s_RunMode;
    m_ModeMachine.button_S8_done = 0;
    
    v_Panel_DisplayCommandLine(3,0);
}
*/
void modeMachine_TotleShutter_TurnOnMode()
{
    m_ModeMachine.always_done = modeMachine_Always_ImageOutput;
    m_ModeMachine.button_S1_done = modeMachine_BlackBar2Littele;
    
    m_ModeMachine.button_S3_done = modeMachine_RunningSet_TurnOnMode;//modeMachine_Move_ServoTesting_UpOutPut;
    m_ModeMachine.button_S2_done = modeMachine_ParaSet_TurnOnMode;//modeMachine_Move_ServoTesting_DownOutPut;
    
    m_ModeMachine.button_S4_done = 0;
    m_ModeMachine.button_S5_done = 0;
    m_ModeMachine.button_S6_done = modeMachine_TotleShutterChangeMode;//modeMachine_Running5s_RunMode;
    m_ModeMachine.button_S8_done = 0;
    
    v_Panel_DisplayCommandLine(3,0);
}

void modeMachine_ParaSet_TurnOnMode()
{
    m_ModeMachine.always_done = modeMachine_Always_ImageOutput;
    m_ModeMachine.button_S1_done = modeMachine_RtAngel;
    
    m_ModeMachine.button_S3_done = modeMachine_TotleShutter_TurnOnMode;//modeMachine_Move_ServoTesting_UpOutPut;
    m_ModeMachine.button_S2_done = modeMachine_MotorPID_TurnOnMode;//modeMachine_Move_ServoTesting_DownOutPut;
    
    m_ModeMachine.button_S4_done = 0;
    m_ModeMachine.button_S5_done = 0;
    m_ModeMachine.button_S6_done = modeMachine_GiveSpeedMode;//modeMachine_Running5s_RunMode;
    m_ModeMachine.button_S8_done = 0;
    
    v_Panel_DisplayCommandLine(4,0);
}
void modeMachine_MotorPID_TurnOnMode()
{
    FuncSet(0,0,0,0,0,0,0);
    UpDownSureBack(modeMachine_ParaSet_TurnOnMode,
                   modeMachine_ServoFunction_TurnOnMode,
                   modeMachine_MotorPID_P_Change,
                   0);//����
    
    AlwaysSet(modeMachine_Always_ImageOutput);
    v_Panel_DisplayCommandLine(5,0);
}
void modeMachine_MotorPID_P_Change()
{
    FuncSet(0,0,0,0,0,0,0);
    UpDownSureBack(0,
                   modeMachine_MotorPID_I_Change,
                   0,
                   modeMachine_MotorPID_TurnOnMode);//����
    UpDownS5S4(modeMachine_Motor_P_Add,
               modeMachine_Motor_P_Cut);
    AlwaysSet(modeMachine_MotorAlways_Show);
    v_Panel_DisplayCommandLine(0,4);
}
void modeMachine_MotorPID_I_Change()
{
    FuncSet(0,0,0,0,0,0,0);
    UpDownSureBack(modeMachine_MotorPID_P_Change,
                   modeMachine_MotorPID_D_Change,
                   0,
                   modeMachine_MotorPID_TurnOnMode);//����
    UpDownS5S4(modeMachine_Motor_I_Add,
               modeMachine_Motor_I_Cut);
    AlwaysSet(modeMachine_MotorAlways_Show);
    v_Panel_DisplayCommandLine(1,4);
}
void modeMachine_MotorPID_D_Change()
{
    FuncSet(0,0,0,0,0,0,0);
    UpDownSureBack(modeMachine_MotorPID_I_Change,
                   modeMachine_MotorPID_Used_Last,
                   0,
                   modeMachine_MotorPID_TurnOnMode);//����
    UpDownS5S4(modeMachine_Motor_D_Add,
               modeMachine_Motor_D_Cut);
    AlwaysSet(modeMachine_MotorAlways_Show);
    v_Panel_DisplayCommandLine(2,4);
}
void modeMachine_MotorPID_Used_Last()
{
    FuncSet(0,0,0,0,0,0,0);
    UpDownSureBack(modeMachine_MotorPID_D_Change,
                   0,
                   0,
                   modeMachine_MotorPID_TurnOnMode);//����
    
    AlwaysSet(modeMachine_MotorAlways_Show);
    v_Panel_DisplayCommandLine(3,4);
}
void modeMachine_Motor_P_Add(){m_Control.Motor_ControlPara_P_Number += 1.f;};
void modeMachine_Motor_P_Cut(){m_Control.Motor_ControlPara_P_Number -= 1.f;};
void modeMachine_Motor_I_Add(){m_Control.Motor_ControlPara_I_Number += 0.1f;};
void modeMachine_Motor_I_Cut()
{
    m_Control.Motor_ControlPara_I_Number -= 0.1f;
    if(m_Control.Motor_ControlPara_I_Number < 0.0f){m_Control.Motor_ControlPara_I_Number = 0.0f;}
}
void modeMachine_Motor_D_Add(){m_Control.Motor_ControlPara_D_Number += 1.f;};
void modeMachine_Motor_D_Cut()
{
    m_Control.Motor_ControlPara_D_Number -= 1.f;
    if(m_Control.Motor_ControlPara_D_Number < 0.f){m_Control.Motor_ControlPara_D_Number = 0.f;}
}
void modeMachine_MotorAlways_Show()
{
    modeMachine_Always_ImageOutput();
    v_MonoRev_Number(64,0,m_Control.Motor_ControlPara_P_Number,10);
    v_MonoRev_Number(64,1,m_Control.Motor_ControlPara_I_Number,10);//����ϵ������ <= K_Curve
    v_MonoRev_Number(64,2,m_Control.Motor_ControlPara_D_Number,10);//����ϵ������ <= K_Curve
    v_MonoRev_6x8Str(64,3,"No Vaild",0);//��Ч
}


void modeMachine_ServoFunction_TurnOnMode()//=====//���ĺ���ָ��
{
    FuncSet(0,0,0,0,0,0,0);
    UpDownSureBack(modeMachine_MotorPID_TurnOnMode,
                   modeMachine_set_speed_max_min_TurnOnMode,
                   modeMachine_ServoFunction_Average,
                   0);//����
    
    AlwaysSet(modeMachine_Always_ImageOutput);
    v_Panel_DisplayCommandLine(6,0);
}
void modeMachine_ServoFunction_Average()
{
    FuncSet(0,0,0,0,0,0,0);
    UpDownSureBack(0,
                   modeMachine_ServoFunction_Optimization,
                   0,
                   modeMachine_ServoFunction_TurnOnMode);//����
    AlwaysSet(modeMachine_Always_ShowFuncName);
    m_Control.v_MotorControlSpeed = v_speed_Give;
}
void modeMachine_ServoFunction_Optimization()
{
    FuncSet(0,0,0,0,0,0,0);
    UpDownSureBack(modeMachine_ServoFunction_Average,
                   0,
                   0,
                   modeMachine_ServoFunction_TurnOnMode);//����
    AlwaysSet(modeMachine_Always_ShowFuncName);
    m_Control.v_MotorControlSpeed = v_speed_Give_UsedsmallChange;//
}
void modeMachine_Always_ShowFuncName()
{
    modeMachine_Always_ImageOutput();//
    if(v_speed_Give == m_Control.v_MotorControlSpeed)
    {
        v_MonoRev_6x8Str(0,0,"Motor",0);//��Ч
    }
    else if(v_speed_Give_UsedsmallChange == m_Control.v_MotorControlSpeed)
    {
        v_MonoRev_6x8Str(0,0,"Motor SmallChange",0);//��Ч
    }
}





void modeMachine_ParaShow_Panel()
{
        /*
    const char *SpeedSetPara = "1.Speed Set";
    const char *SpeedCutNumberPara = "2.SpdCut Set";
    const char *SpeedCutRatioPara = "3.SpdCut Rto";
    const char *ServoDiffPara = "4.Servo D";
    const char *CameraPara = "5.Shutter T";
    */
    modeMachine_Always_ImageOutput();
    v_Panel_DisplayCommandLine(10000,255);
    v_MonoRev_Number(80,0,m_Control.GiveSpeed,10);
    v_MonoRev_Number(80,1,m_Control.speedCut,10);
    v_MonoRev_Number(80,2,m_Control.speedCutRatio,10);
    v_MonoRev_Number(80,3,m_Control.ServoDiff,10);
    v_MonoRev_Number(80,4,m_ImageAbstract.TotalShutterTime,10);
    v_MonoRev_Number(80,5,m_Control.changeSpeedRatio,10);
}

void modeMachine_GiveSpeedMode()
{
    m_ModeMachine.always_done = modeMachine_ParaShow_Panel;
    m_ModeMachine.button_S1_done = 0;
    
    m_ModeMachine.button_S3_done = 0;//modeMachine_Move_ServoTesting_UpOutPut;
    m_ModeMachine.button_S2_done = modeMachine_SpeedCutMode;//modeMachine_Move_ServoTesting_DownOutPut;
    
    m_ModeMachine.button_S4_done = modeMachine_GiveSpeedMode_Cut;
    m_ModeMachine.button_S5_done = modeMachine_GiveSpeedMode_Add;
    m_ModeMachine.button_S6_done = 0;//modeMachine_Running5s_RunMode;
    m_ModeMachine.button_S8_done = modeMachine_ParaSet_TurnOnMode;
    
    v_Panel_DisplayCommandLine(0,3);
}
void modeMachine_GiveSpeedMode_Add(){m_Control.GiveSpeed += 10;}
void modeMachine_GiveSpeedMode_Cut(){m_Control.GiveSpeed -= 10;}

void modeMachine_SpeedCutMode()
{
    m_ModeMachine.always_done = modeMachine_ParaShow_Panel;
    m_ModeMachine.button_S1_done = 0;
    
    m_ModeMachine.button_S3_done =modeMachine_GiveSpeedMode;//modeMachine_Move_ServoTesting_UpOutPut;
    m_ModeMachine.button_S2_done = modeMachine_SpeedCutRatioMode;//modeMachine_Move_ServoTesting_DownOutPut;
    
    m_ModeMachine.button_S4_done = modeMachine_SpeedCutMode_Cut;
    m_ModeMachine.button_S5_done = modeMachine_SpeedCutMode_Add;
    m_ModeMachine.button_S6_done = modeMachine_GiveSpeedMode;//modeMachine_Running5s_RunMode;
    m_ModeMachine.button_S8_done = modeMachine_ParaSet_TurnOnMode;
    
    v_Panel_DisplayCommandLine(1,3);
}
void modeMachine_SpeedCutMode_Add(){m_Control.speedCut += 5;}
void modeMachine_SpeedCutMode_Cut(){m_Control.speedCut -= 5;}

void modeMachine_SpeedCutRatioMode()
{
    m_ModeMachine.always_done = modeMachine_ParaShow_Panel;
    m_ModeMachine.button_S1_done = 0;
    
    m_ModeMachine.button_S3_done = modeMachine_SpeedCutMode;//modeMachine_Move_ServoTesting_UpOutPut;
    m_ModeMachine.button_S2_done = modeMachine_ServoDiffMode;//modeMachine_Move_ServoTesting_DownOutPut;
    
    m_ModeMachine.button_S4_done = modeMachine_SpeedCutRatioMode_Cut;
    m_ModeMachine.button_S5_done = modeMachine_SpeedCutRatioMode_Add;
    m_ModeMachine.button_S6_done = modeMachine_GiveSpeedMode;//modeMachine_Running5s_RunMode;
    m_ModeMachine.button_S8_done = modeMachine_ParaSet_TurnOnMode;
    
    v_Panel_DisplayCommandLine(2,3);
}
void modeMachine_SpeedCutRatioMode_Add(){m_Control.speedCutRatio += 0.1f;}
void modeMachine_SpeedCutRatioMode_Cut(){m_Control.speedCutRatio -= 0.1f;}

void modeMachine_ServoDiffMode()
{
    m_ModeMachine.always_done = modeMachine_ParaShow_Panel;
    m_ModeMachine.button_S1_done = 0;
    
    m_ModeMachine.button_S3_done = modeMachine_SpeedCutRatioMode;//modeMachine_Move_ServoTesting_UpOutPut;
    m_ModeMachine.button_S2_done = modeMachine_ShutterWidthChange;//modeMachine_Move_ServoTesting_DownOutPut;
    
    m_ModeMachine.button_S5_done = modeMachine_ServoDiff_Add;
    m_ModeMachine.button_S4_done = modeMachine_ServoDiff_Cut;
    
    m_ModeMachine.button_S6_done = modeMachine_GiveSpeedMode;//modeMachine_Running5s_RunMode;
    m_ModeMachine.button_S8_done = modeMachine_ParaSet_TurnOnMode;
    
    v_Panel_DisplayCommandLine(3,3);
}
void modeMachine_ServoDiff_Add()
{m_Control.ServoDiff += 0.1;}
void modeMachine_ServoDiff_Cut()
{m_Control.ServoDiff -= 0.1;if(m_Control.ServoDiff < 0.0f){m_Control.ServoDiff = 0.0f;}}


void modeMachine_ShutterWidthChange()
{
    m_ModeMachine.always_done = modeMachine_ParaShow_Panel;
    m_ModeMachine.button_S1_done = 0;
    
    m_ModeMachine.button_S3_done = modeMachine_ServoDiffMode;//modeMachine_Move_ServoTesting_UpOutPut;
    m_ModeMachine.button_S2_done = modeMachine_SpeedChangeChange;//modeMachine_Move_ServoTesting_DownOutPut;
    
    m_ModeMachine.button_S4_done = modeMachine_ShutterWidthChange_Cut;
    m_ModeMachine.button_S5_done = modeMachine_ShutterWidthChange_Add;
    m_ModeMachine.button_S6_done = modeMachine_GiveSpeedMode;//modeMachine_Running5s_RunMode;
    m_ModeMachine.button_S8_done = modeMachine_ParaSet_TurnOnMode;
    
    v_Panel_DisplayCommandLine(4,3);
}
void modeMachine_ShutterWidthChange_Add(){m_ImageAbstract.TotalShutterTime += 10;}
void modeMachine_ShutterWidthChange_Cut(){m_ImageAbstract.TotalShutterTime -= 10;}


void modeMachine_SpeedChangeChange()
{
    m_ModeMachine.always_done = modeMachine_ParaShow_Panel;
    m_ModeMachine.button_S1_done = 0;
    
    m_ModeMachine.button_S3_done = modeMachine_ShutterWidthChange;//modeMachine_Move_ServoTesting_UpOutPut;
    m_ModeMachine.button_S2_done = 0;//modeMachine_Move_ServoTesting_DownOutPut;
    
    m_ModeMachine.button_S4_done = modeMachine_SpeedChangeChange_Cut;
    m_ModeMachine.button_S5_done = modeMachine_SpeedChangeChange_Add;
    m_ModeMachine.button_S6_done = modeMachine_GiveSpeedMode;//modeMachine_Running5s_RunMode;
    m_ModeMachine.button_S8_done = modeMachine_ParaSet_TurnOnMode;
    
    v_Panel_DisplayCommandLine(5,3);
}
void modeMachine_SpeedChangeChange_Add(){m_Control.changeSpeedRatio += 10;}
void modeMachine_SpeedChangeChange_Cut(){m_Control.changeSpeedRatio -= 10;}









void modeMachine_TotleShutterChangeMode()
{
    m_ModeMachine.always_done = modeMachine_Always_ImageOutput;
    m_ModeMachine.button_S1_done = 0;
    
    m_ModeMachine.button_S3_done = modeMachine_TotleShutter_add;//modeMachine_Move_ServoTesting_UpOutPut;
    m_ModeMachine.button_S2_done = modeMachine_TotleShutter_cut;//modeMachine_Move_ServoTesting_DownOutPut;
    
    
    m_ModeMachine.button_S5_done = modeMachine_ServoDiffAdd;
    m_ModeMachine.button_S4_done = modeMachine_ServoDiffCut;
    
    m_ModeMachine.button_S6_done = modeMachine_TotleShutter_TurnOnMode;//modeMachine_Running5s_RunMode;
    m_ModeMachine.button_S8_done = 0;
}


void modeMachine_ServoDiffAdd()
{
    m_Control.ServoDiff += 0.1;
    v_MonoRev_Number(0,1,m_Control.ServoDiff,10);
}
void modeMachine_ServoDiffCut()
{
    m_Control.ServoDiff -= 0.1;
    v_MonoRev_Number(0,1,m_Control.ServoDiff,10);
}
void modeMachine_TotleShutter_add()
{
    m_ImageAbstract.TotalShutterTime += 10;
    v_setShutterTime(m_ImageAbstract.TotalShutterTime);
    v_MonoRev_Number(0,0,m_ImageAbstract.TotalShutterTime,10);
}
void modeMachine_TotleShutter_cut()
{
    m_ImageAbstract.TotalShutterTime -= 10;
    v_setShutterTime(m_ImageAbstract.TotalShutterTime);
    v_MonoRev_Number(0,0,m_ImageAbstract.TotalShutterTime,10);
}




/*
void modeMachine_SpeedSetMode()//�ٶ��趨���
{
    m_ModeMachine.always_done = 0;
    m_ModeMachine.button_S1_done = 0;
    
    m_ModeMachine.button_S3_done = 0;//modeMachine_Move_ServoTesting_UpOutPut;
    m_ModeMachine.button_S2_done = 0;//modeMachine_Move_ServoTesting_DownOutPut;
    
    m_ModeMachine.button_S5_done = 0;
    m_ModeMachine.button_S4_done = 0;
    
    
    
    m_ModeMachine.button_S6_done = 0;//modeMachine_Running5s_RunMode;
    m_ModeMachine.button_S8_done = modeMachine_SpeedSet_TurnOnMode;
}
*/
/*
void modeMachine_SpeedShow()
{
    modeMachine_Always_ImageOutput();//չʾͼ��
    v_MonoRev_Number(0,0,m_Control.GiveSpeed,10);
    v_MonoRev_Number(0,1,m_Control.speedCut,10);
}
void modeMachine_SpeedAddMode()
{
    m_Control.GiveSpeed += 10;
}

void modeMachine_SpeedCutMode()
{
    m_Control.GiveSpeed -= 10;
    if(m_Control.GiveSpeed <= 200)
    {
        m_Control.GiveSpeed = 200;
    }
}
void modeMachine_SpeedCutMachine_add()
{
    m_Control.speedCut += 1.f;
}
void modeMachine_SpeedCutMachine_cut()
{
    m_Control.speedCut -= 1.f;
}
*/
void modeMachine_Running5s_TimeSetMode()
{
    m_Control.starting_time = m_system.timer + 10000;
    m_Control.runningEnd_time = m_Control.starting_time + 5000;
    
    m_ModeMachine.always_done = 0;m_ModeMachine.button_S1_done = 0;
    
    m_ModeMachine.button_S3_done = 0;//modeMachine_Move_ServoTesting_UpOutPut;
    m_ModeMachine.button_S2_done = 0;//modeMachine_Move_ServoTesting_DownOutPut;
    
    m_ModeMachine.button_S4_done = 0;m_ModeMachine.button_S5_done = 0;m_ModeMachine.button_S6_done = 0;
    m_ModeMachine.button_S8_done = modeMachine_RunningSet_TurnOnMode;
}
void modeMachine_Running5s_RunMode()//=>����
{
    m_ModeMachine.always_done = modeMachine_Always_ImageOutput;m_ModeMachine.button_S1_done = 0;
    
    m_ModeMachine.button_S3_done = 0;//modeMachine_Move_ServoTesting_UpOutPut;
    m_ModeMachine.button_S2_done = modeMachine_Running15s_RunMode;//modeMachine_Move_ServoTesting_DownOutPut;
    
    m_ModeMachine.button_S4_done = 0;m_ModeMachine.button_S5_done = 0;m_ModeMachine.button_S6_done = modeMachine_Running5s_TimeSetMode;
    m_ModeMachine.button_S8_done = modeMachine_RunningSet_TurnOnMode;
    
    v_Panel_DisplayCommandLine(0,2);
}

void modeMachine_Running15s_TimeSetMode()
{
    m_Control.starting_time = m_system.timer + 10000;
    m_Control.runningEnd_time = m_Control.starting_time + 15000;
    
    m_ModeMachine.always_done = 0;m_ModeMachine.button_S1_done = 0;
    
    m_ModeMachine.button_S3_done = 0;//modeMachine_Move_ServoTesting_UpOutPut;
    m_ModeMachine.button_S2_done = 0;//modeMachine_Move_ServoTesting_DownOutPut;
    
    m_ModeMachine.button_S4_done = 0;m_ModeMachine.button_S5_done = 0;m_ModeMachine.button_S6_done = 0;
    m_ModeMachine.button_S8_done = modeMachine_RunningSet_TurnOnMode;
}
void modeMachine_Running15s_RunMode()//=>����
{
    m_ModeMachine.always_done = modeMachine_Always_ImageOutput;m_ModeMachine.button_S1_done = 0;
    
    m_ModeMachine.button_S3_done = modeMachine_Running5s_RunMode;//modeMachine_Move_ServoTesting_UpOutPut;
    m_ModeMachine.button_S2_done = modeMachine_Running30s_RunMode;//modeMachine_Move_ServoTesting_DownOutPut;
    
    m_ModeMachine.button_S4_done = 0;m_ModeMachine.button_S5_done = 0;
    m_ModeMachine.button_S6_done = modeMachine_Running15s_TimeSetMode;
    m_ModeMachine.button_S8_done = modeMachine_RunningSet_TurnOnMode;
    
    v_Panel_DisplayCommandLine(1,2);
}

void modeMachine_Running30s_TimeSetMode()
{
    m_Control.starting_time = m_system.timer + 5000;
    m_Control.runningEnd_time = m_Control.starting_time + 30000;
    
    m_ModeMachine.always_done = 0;m_ModeMachine.button_S1_done = 0;
    
    m_ModeMachine.button_S3_done = 0;//modeMachine_Move_ServoTesting_UpOutPut;
    m_ModeMachine.button_S2_done = 0;//modeMachine_Move_ServoTesting_DownOutPut;
    
    m_ModeMachine.button_S4_done = 0;m_ModeMachine.button_S5_done = 0;m_ModeMachine.button_S6_done = 0;
    m_ModeMachine.button_S8_done = modeMachine_RunningSet_TurnOnMode;
}
void modeMachine_Running30s_RunMode()//=>����
{
    m_ModeMachine.always_done = modeMachine_Always_ImageOutput;m_ModeMachine.button_S1_done = 0;
    
    m_ModeMachine.button_S3_done = modeMachine_Running15s_RunMode;//modeMachine_Move_ServoTesting_UpOutPut;
    m_ModeMachine.button_S2_done = modeMachine_RunningAlways_RunMode;//modeMachine_Move_ServoTesting_DownOutPut;
    
    m_ModeMachine.button_S4_done = 0;m_ModeMachine.button_S5_done = 0;
    m_ModeMachine.button_S6_done = modeMachine_Running30s_TimeSetMode;
    m_ModeMachine.button_S8_done = modeMachine_RunningSet_TurnOnMode;
    
    v_Panel_DisplayCommandLine(2,2);
}
void (*vPtr_CheckLightingChaser)(void);
void modeMachine_RunningLight_Check()
{
    v_BuzzerBeepSet(100);
    if((m_Control.LightChaserLogic_time_cut_1 != m_Control.LightChaserLogic)&&(0 == m_Control.LightChaserLogic))
    {
        m_Control.starting_time = m_system.timer + 0;
        m_Control.runningEnd_time = m_Control.starting_time + 60000;
        vPtr_CheckLightingChaser = modeMachine_RunningLight_Waiting;
    }
}
void modeMachine_RunningLight_Waiting()
{
    if(m_system.timer > m_Control.starting_time + 5000)
    {
        vPtr_CheckLightingChaser = modeMachine_RunningDark_Check;
    }
}
void modeMachine_RunningDark_Check()//�ڼ��=>���������ʱ��0
{//2ms
    if((m_Control.LightChaserLogic_time_cut_1 != m_Control.LightChaserLogic)&&(0 == m_Control.LightChaserLogic)
     /*&&(m_CarRunningMode.RunningCarTimeCounter >= 0)*/&&(0 == m_CarRunningMode.isCloseTheLightingStop))
    {//Ҫ�����1s
        //m_Control.starting_time = m_system.timer;
        m_Control.runningEnd_time = m_system.timer;
        vPtr_CheckLightingChaser = 0;
        m_CarRunningMode.RunningCarTimeCounter = 0;
    }
    
    if(1 == m_Control.LightChaserLogic)//��������
    {
        m_CarRunningMode.RunningCarTimeCounter ++;
    }
    else
    {
        m_CarRunningMode.RunningCarTimeCounter = 0;
    }
}
void modeMachine_RunningLight_TimeSetMode()
{
    v_BuzzerBeepSet(1000);
    vPtr_CheckLightingChaser = modeMachine_RunningLight_Check;
}
void modeMachine_RunningLight_RunMode()
{
    m_ModeMachine.always_done = modeMachine_Always_ImageOutput;

    UpDownSureBack(modeMachine_RunningAlways_RunMode,
                   0,
                   modeMachine_RunningLight_TimeSetMode,
                   modeMachine_RunningSet_TurnOnMode);
    
    v_Panel_DisplayCommandLine(4,2);
}

void modeMachine_RunningAlways_TimeSetMode()
{
    m_Control.starting_time = m_system.timer + 5000;
    m_Control.runningEnd_time = 0xFFFFFFFF;
    
    m_ModeMachine.always_done = 0;m_ModeMachine.button_S1_done = 0;
    
    m_ModeMachine.button_S3_done = 0;//modeMachine_Move_ServoTesting_UpOutPut;
    m_ModeMachine.button_S2_done = 0;//modeMachine_Move_ServoTesting_DownOutPut;
    
    m_ModeMachine.button_S4_done = 0;m_ModeMachine.button_S5_done = 0;m_ModeMachine.button_S6_done = 0;
    m_ModeMachine.button_S8_done = modeMachine_RunningSet_TurnOnMode;
}
void modeMachine_RunningAlways_RunMode()//=>����
{
    m_ModeMachine.always_done = modeMachine_Always_ImageOutput;m_ModeMachine.button_S1_done = 0;
    
    m_ModeMachine.button_S3_done = modeMachine_Running15s_RunMode;//modeMachine_Move_ServoTesting_UpOutPut;
    m_ModeMachine.button_S2_done = modeMachine_RunningLight_RunMode;//modeMachine_Move_ServoTesting_DownOutPut;
    
    m_ModeMachine.button_S4_done = 0;m_ModeMachine.button_S5_done = 0;
    m_ModeMachine.button_S6_done = modeMachine_Running30s_TimeSetMode;
    m_ModeMachine.button_S8_done = modeMachine_RunningSet_TurnOnMode;
    
    v_Panel_DisplayCommandLine(3,2);
}









void modeMachine_BasicTesting_TurnMode()
{
    m_ModeMachine.always_done = 0;
    m_ModeMachine.button_S1_done = 0;
    
    m_ModeMachine.button_S3_done = 0;
    m_ModeMachine.button_S2_done = modeMachine_ServoTesting_TurnMode;
    
    m_ModeMachine.button_S4_done = 0;
    m_ModeMachine.button_S5_done = 0;
    m_ModeMachine.button_S6_done = modeMachine_BasicTesting_TestingMode;//;modeMachine_BasicTesting_DataShow
    m_ModeMachine.button_S8_done = 0;
    
    v_Panel_DisplayCommandLine(0,1);
}

void modeMachine_ServoTesting_TurnMode()
{
    m_ModeMachine.always_done = 0;
    m_ModeMachine.button_S1_done = 0;
    
    m_ModeMachine.button_S3_done = modeMachine_BasicTesting_TurnMode;
    m_ModeMachine.button_S2_done = modeMachine_MotorTesting_TurnMode;
    
    m_ModeMachine.button_S4_done = 0;
    m_ModeMachine.button_S5_done = 0;
    m_ModeMachine.button_S6_done = modeMachine_ServoTesting_TestingMode; // �������ģʽ
    m_ModeMachine.button_S8_done = 0;
    
    v_Panel_DisplayCommandLine(1,1);
}

void modeMachine_MotorTesting_TurnMode()
{
    m_ModeMachine.always_done = 0;
    m_ModeMachine.button_S1_done = 0;
    
    m_ModeMachine.button_S3_done = modeMachine_ServoTesting_TurnMode;
    m_ModeMachine.button_S2_done = modeMachine_CameraInformationTesting_TurnMode;
    
    m_ModeMachine.button_S4_done = 0;
    m_ModeMachine.button_S5_done = 0;
    m_ModeMachine.button_S6_done = modeMachine_MotorTesting_TestingMode;
    m_ModeMachine.button_S8_done = 0;
    
    v_Panel_DisplayCommandLine(2,1);
}

void modeMachine_CameraInformationTesting_TurnMode()
{
    m_ModeMachine.always_done = 0;
    m_ModeMachine.button_S1_done = 0;
    
    m_ModeMachine.button_S3_done = modeMachine_ServoTesting_TurnMode;//modeMachine_Move_ServoTesting_UpOutPut;
    m_ModeMachine.button_S2_done = modeMachine_MiddlineTesting_TurnMode;//modeMachine_Move_ServoTesting_DownOutPut;
    
    m_ModeMachine.button_S4_done = 0;
    m_ModeMachine.button_S5_done = 0;
    m_ModeMachine.button_S6_done = modeMachine_CameraInformationTesting_TestingMode;//modeMachine_CameraInformationTesting_TurnMode
    m_ModeMachine.button_S8_done = 0;
    
    v_Panel_DisplayCommandLine(3,1);
}


//============================================================================//  
//���幦��
void modeMachine_ServoTesting_TestingMode()
{
    m_Control.need_turnRobustly_flag = 1;//��������û�д����˳�ģʽ����ʱ�޷�����
    m_ModeMachine.always_done = modeMachine_Move_ServoTestingPanel_Display;
    m_ModeMachine.button_S1_done = 0;
    
    m_ModeMachine.button_S3_done = modeMachine_Move_ServoTesting_UpOutPut;
    m_ModeMachine.button_S2_done = modeMachine_Move_ServoTesting_DownOutPut;
    
    m_ModeMachine.button_S4_done = 0;
    m_ModeMachine.button_S5_done = 0;
    m_ModeMachine.button_S6_done = 0;
    m_ModeMachine.button_S8_done = 0;
}
void modeMachine_MotorTesting_TestingMode()
{
    m_ModeMachine.always_done = modeMachine_Always_MotorTestingPanel_Display;
    m_ModeMachine.button_S1_done = 0;
    
    m_ModeMachine.button_S3_done = modeMachine_Up_MotorTestingMach_Output;//modeMachine_Move_ServoTesting_UpOutPut;
    m_ModeMachine.button_S2_done = modeMachine_Down_MotorTestingMach_Output;//modeMachine_Move_ServoTesting_DownOutPut;
    
    m_ModeMachine.button_S4_done = 0;
    m_ModeMachine.button_S5_done = 0;
    m_ModeMachine.button_S6_done = 0;
    m_ModeMachine.button_S8_done = 0;
}

void modeMachine_ImageBeholderTesting_TestingMode()
{
    /*
            S1
    S3      S5      S6
    S2      S4      S8
    */
    m_ModeMachine.always_done = modeMachine_Always_CameraTestingMach_Output;//modeMachine_Always_CameraTestingMach_Output_ExtraPara
    m_ModeMachine.button_S1_done = modeMachine_CameraTestingMach_Up;
    
    m_ModeMachine.button_S3_done = modeMachine_CameraTestingMach_Left;//modeMachine_Move_ServoTesting_UpOutPut;
    
    m_ModeMachine.button_S2_done = modeMachine_CameraTestingMach_CalibrationModeSwitch;//modeMachine_Move_ServoTesting_DownOutPut;
    
    m_ModeMachine.button_S4_done = modeMachine_CameraTestingMach_Down;
    
    m_ModeMachine.button_S5_done = modeMachine_CameraTestingMach_WriteNowPoint;//��¼��ǰ�������
    
    m_ModeMachine.button_S6_done = modeMachine_CameraTestingMach_Right;
    m_ModeMachine.button_S8_done = modeMachine_Testing_TurnOnMode;//�˻�
}

void modeMachine_BasicTesting_TestingMode()
{
    m_ModeMachine.always_done = modeMachine_BasicTesting_DataShow;
    m_ModeMachine.button_S1_done = 0;
    
    m_ModeMachine.button_S3_done = modeMachine_BasicTesting_TurnMode;//modeMachine_Move_ServoTesting_UpOutPut;
    m_ModeMachine.button_S2_done = modeMachine_BasicTesting_TurnMode;//modeMachine_Move_ServoTesting_DownOutPut;
    
    m_ModeMachine.button_S4_done = 0;
    m_ModeMachine.button_S5_done = 0;
    m_ModeMachine.button_S6_done = 0;
    m_ModeMachine.button_S8_done = 0;
}

void modeMachine_CameraInformationTesting_TestingMode()
{
    m_ModeMachine.always_done = modeMachine_Always_CameraInformationTesting_DataShow;
    m_ModeMachine.button_S1_done = 0;
    
    m_ModeMachine.button_S3_done = 0;//modeMachine_Move_ServoTesting_UpOutPut;
    m_ModeMachine.button_S2_done = 0;//modeMachine_Move_ServoTesting_DownOutPut;
    
    m_ModeMachine.button_S4_done = 0;
    m_ModeMachine.button_S5_done = 0;
    m_ModeMachine.button_S6_done = modeMachine_CameraInformationTesting_TurnMode;//
    m_ModeMachine.button_S8_done = 0;
}


void modeMachine_Always_CameraInformationTesting_DataShow()
{
    modeMachine_Always_ImageOutput();//ͼ��չʾ
//    v_MonoRev_6x8Str(0,4,"           ",0);
//    v_MonoRev_6x8Str(0,5,"           ",0);
//    v_MonoRev_6x8Str(0,6,"           ",0);
//    v_MonoRev_Number(0,4,m_ImageAbstract.Central[m_ImageAbstract.Start_Y_Position],10);
//    v_MonoRev_Number(0,5,m_ImageAbstract.Central[((m_ImageAbstract.Last_Y_Position + m_ImageAbstract.Start_Y_Position)/2+m_ImageAbstract.Start_Y_Position)/2],10);
//    v_MonoRev_Number(0,6,m_ImageAbstract.Central[(m_ImageAbstract.Last_Y_Position + m_ImageAbstract.Start_Y_Position)/2],10);
    float Cuvre = 0;//f_getSteerCurve();
    v_MonoRev_6x8Str(0,5,"              ",0);
    v_MonoRev_6x8Str(0,6,"              ",0);
    v_MonoRev_6x8Str(0,7,"              ",0);
    
    v_MonoRev_Number(0,6,Cuvre,10);
    if(0.0 != Cuvre)
    {
        v_MonoRev_Number(0,7,1.f / Cuvre,10);
    }
    else
    {
        v_MonoRev_6x8Str(0,7,"So Big",0);
    }
    uint16 MiddleLine = n_getSteerMiddleLine_UsedAverage();
    
    v_MonoRev_Number(0,5,MiddleLine,10);
//    v_MonoRev_6x8Str(0,0,"           ",0);
//    v_MonoRev_Number(0,0,m_Control.ServoDeg,10);
}

void BuzzerSong()
{
    v_BuzzerBeepSet(1000);
}

/*
void modeMachine_ParaSetMode_Speed()//��������ƽ̨
{
    m_ModeMachine.always_done = modeMachine_Always_ImageOutput;
    m_ModeMachine.button_S1_done = 0;
    
    m_ModeMachine.button_S3_done = modeMachine_TotleShutter_TurnOnMode;//modeMachine_Move_ServoTesting_UpOutPut;
    m_ModeMachine.button_S2_done = 0;//modeMachine_Move_ServoTesting_DownOutPut;
    
    m_ModeMachine.button_S4_done = 0;
    m_ModeMachine.button_S5_done = 0;
    m_ModeMachine.button_S6_done = modeMachine_TotleShutterChangeMode;//modeMachine_Running5s_RunMode;
    m_ModeMachine.button_S8_done = modeMachine_ParaSet_TurnOnMode;
    
    //

    //v_Panel_DisplayCommandLine(4,0);
}
*/

void modeMachine_MiddlineTesting_TurnMode()//���߿ض����
{//ͬʱ����Ҳ�ǲ������ĵ�����
    FuncSet(0,0,0,0,0,0,0);
    AlwaysSet(0);
    UpDownSureBack(modeMachine_CameraInformationTesting_TurnMode,
                   modeMachine_ImageOutPut_TurnOnMode,
                   modeMachine_MiddlineTesting_TestingMode,
                   modeMachine_Testing_TurnOnMode);
    v_Panel_DisplayCommandLine(4,1);//������Ļ����
}
void modeMachine_MiddlineTesting_TestingMode()//���߿ض����
{
    FuncSet(0,0,0,0,0,0,0);
    AlwaysSet(modeMachine_MiddlineTesting_AlwaysShow);//����������ʾ����
    UpDownSureBack(modeMachine_MiddlineTesting_TestingMode_AddKCurve,
                   modeMachine_MiddlineTesting_TestingMode_CutKCurve,
                   modeMachine_MiddlineTesting_TestingMode_Extra,//��ȷ��
                   modeMachine_MiddlineTesting_TurnMode);//����
    UpDownS5S4(modeMachine_MiddlineTesting_TestingMode_AddMoreKCurve,
               modeMachine_MiddlineTesting_TestingMode_CutMoreKCurve);
}
void modeMachine_MiddlineTesting_TestingMode_Extra()
{
    FuncSet(0,0,0,0,0,0,0);
    AlwaysSet(modeMachine_MiddlineTesting_AlwaysShow_Extra);//����������ʾ����
    UpDownSureBack(modeMachine_MiddlineTesting_TestingMode_AddStopY_Pos,
                   modeMachine_MiddlineTesting_TestingMode_CutStopY_Pos,
                   modeMachine_MiddlineTesting_TestingMode_ExtraExtra,//��ȷ��
                   modeMachine_MiddlineTesting_TurnMode);//����
    UpDownS5S4(0,
               0);
}
void modeMachine_MiddlineTesting_TestingMode_ExtraExtra()
{
    FuncSet(0,0,0,0,0,0,0);
    AlwaysSet(modeMachine_MiddlineTesting_AlwaysShow_ExtraExtra);//����������ʾ����
    UpDownSureBack(modeMachine_MiddlineTesting_TestingMode_AddMorePCurve,
                   modeMachine_MiddlineTesting_TestingMode_CutMorePCurve,
                   modeMachine_MiddlineTesting_TestingMode,//��ȷ��
                   modeMachine_MiddlineTesting_TurnMode);//����
    UpDownS5S4(modeMachine_MiddlineTesting_TestingMode_AddPCurve,
               modeMachine_MiddlineTesting_TestingMode_CutPCurve);
}
void modeMachine_MiddlineTesting_TestingMode_AddPCurve()//����ϵ��
{m_Control.P_Curve += 1.f;}
void modeMachine_MiddlineTesting_TestingMode_CutPCurve()//��Сϵ��
{m_Control.P_Curve -= 1.f;}
void modeMachine_MiddlineTesting_TestingMode_AddMorePCurve()//����ϵ��
{m_Control.P_Curve += 0.1f;}
void modeMachine_MiddlineTesting_TestingMode_CutMorePCurve()//��Сϵ��
{m_Control.P_Curve -= 0.1f;}
void modeMachine_MiddlineTesting_TestingMode_AddKCurve()//����ϵ��
{m_Control.K_Curve += 10.f;}
void modeMachine_MiddlineTesting_TestingMode_CutKCurve()//��Сϵ��
{m_Control.K_Curve -= 10.f;}
void modeMachine_MiddlineTesting_TestingMode_AddMoreKCurve()//����ϵ��
{m_Control.K_Curve += 1.f;}
void modeMachine_MiddlineTesting_TestingMode_CutMoreKCurve()//��Сϵ��
{m_Control.K_Curve -= 1.f;}
void modeMachine_MiddlineTesting_TestingMode_AddStopY_Pos()//����ϵ��
{m_Control.servo_imageYstopLine += 1;}
void modeMachine_MiddlineTesting_TestingMode_CutStopY_Pos()//��Сϵ��
{m_Control.servo_imageYstopLine -= 1;}
void modeMachine_MiddlineTesting_AlwaysShow()
{//������ʾ����
    modeMachine_Always_ImageOutput();//���ͼ��
    v_MonoRev_6x8Str(0,0,"Middline",1);
    v_MonoRev_6x8Str(0,1,"MiddLine:",0);//����λ��
    v_MonoRev_6x8Str(0,2,">K_Curve:",0);//���ľ��ϵ��
    v_MonoRev_6x8Str(0,3," Y_Stop:",0);//����ֹͣλ��
    v_MonoRev_6x8Str(0,4," P_Curve:",0);//����ֹͣλ��
    
    v_MonoRev_Number(64,1,m_ImageAbstract.servo_gaiaInfor_image,10);
    v_MonoRev_Number(64,2,m_Control.K_Curve,10);//����ϵ������ <= K_Curve
    v_MonoRev_Number(64,3,m_Control.servo_imageYstopLine,10);//����ϵ������ <= K_Curve
    v_MonoRev_Number(64,4,m_Control.P_Curve,10);//����ϵ������ <= K_Curve
}
void modeMachine_MiddlineTesting_AlwaysShow_Extra()
{//������ʾ����
    modeMachine_Always_ImageOutput();//���ͼ��
    v_MonoRev_6x8Str(0,0,"Middline",1);
    v_MonoRev_6x8Str(0,1,"MiddLine:",0);//����λ��
    v_MonoRev_6x8Str(0,2," K_Curve:",0);//���ľ��ϵ��
    v_MonoRev_6x8Str(0,3,">Y_Stop:",0);//����ֹͣλ��
    v_MonoRev_6x8Str(0,4," P_Curve:",0);//����ֹͣλ��
    
    v_MonoRev_Number(64,1,m_ImageAbstract.servo_gaiaInfor_image,10);
    v_MonoRev_Number(64,2,m_Control.K_Curve,10);//����ϵ������ <= K_Curve
    v_MonoRev_Number(64,3,m_Control.servo_imageYstopLine,10);//����ϵ������ <= K_Curve
    v_MonoRev_Number(64,4,m_Control.P_Curve,10);//����ϵ������ <= K_Curve
}
void modeMachine_MiddlineTesting_AlwaysShow_ExtraExtra()
{//������ʾ����
    modeMachine_Always_ImageOutput();//���ͼ��
    v_MonoRev_6x8Str(0,0,"Middline",1);
    v_MonoRev_6x8Str(0,1,"MiddLine:",0);//����λ��
    v_MonoRev_6x8Str(0,2," K_Curve:",0);//���ľ��ϵ��
    v_MonoRev_6x8Str(0,3," Y_Stop:",0);//����ֹͣλ��
    v_MonoRev_6x8Str(0,4,">P_Curve:",0);//����ֹͣλ��
    
    v_MonoRev_Number(64,1,m_ImageAbstract.servo_gaiaInfor_image,10);
    v_MonoRev_Number(64,2,m_Control.K_Curve,10);//����ϵ������ <= K_Curve
    v_MonoRev_Number(64,3,m_Control.servo_imageYstopLine,10);//����ϵ������ <= K_Curve
    v_MonoRev_Number(64,4,m_Control.P_Curve,10);//����ϵ������ <= K_Curve
}

//==============================================ͼ�����
/*--*/void modeMachine_ImageOutPut_TurnOnMode()
{
    FuncSet(0,0,0,0,0,0,0);
    UpDownSureBack(modeMachine_MiddlineTesting_TurnMode,
                   modeMachine_SpecialStatusCut_TurnOnMode,
                   modeMachine_ImageOutPut_Testing,
                   0);//����
    
    AlwaysSet(modeMachine_Always_ImageOutput);
    v_Panel_DisplayCommandLine(5,1);
}


/*------*/void modeMachine_ImageOutPut_Testing()
{
    FuncSet(0,0,0,0,0,0,0);
    UpDownSureBack(0,
                   modeMachine_ImageOutPut_UsedNormal,
                   modeMachine_ImageOutPut_GetNumber,
                   modeMachine_ImageOutPut_TurnOnMode);//����
    
    AlwaysSet(modeMachine_ImageOutPut_ShowAlways);
    v_MonoRev_6x8Str(0,0,">GetData",0);//����λ��
    v_MonoRev_6x8Str(0,1," TxData",0);//����λ��
}
/*------*/void modeMachine_ImageOutPut_UsedNormal()
{
    FuncSet(0,0,0,0,0,0,0);
    UpDownSureBack(modeMachine_ImageOutPut_Testing,
                   0,
                   modeMachine_ImageOutPut_Tx,
                   modeMachine_ImageOutPut_TurnOnMode);//����
    
    AlwaysSet(modeMachine_ImageOutPut_ShowAlways);
    v_MonoRev_6x8Str(0,0," GetData",0);//����λ��
    v_MonoRev_6x8Str(0,1,">TxData",0);//����λ��
}
/*------*/void modeMachine_ImageOutPut_ShowAlways()
{
    modeMachine_Always_ImageOutput();
}
/*------*//*------*/void modeMachine_ImageOutPut_Tx()
{
    for(uint8 loop = 0;loop < 4;loop++)
    {
        uint8 time = m_system.timer;
        v_UartTxImageSix2PC(m_need_tx.Information_Unnamed_Mark001 + 300*loop);
        while(!((time - m_system.timer)>3000));
    }
}
/*------*//*------*/void modeMachine_ImageOutPut_GetNumber()
{
    uint8 loop = 0;
    do
    {
        if(1 == m_Control.CanCheck)
        {v_UartSaveImage_sint16(m_need_tx.Information_Unnamed_Mark001 + 300*loop);}
        uint16 delay = 10000;
        while((1 == m_Control.CanCheck)&&((delay--)));
        loop ++;
        if(loop > 4)
        {
            break;
        }
    }
    while(1);
}

/*--*/void modeMachine_SpecialStatusCut_TurnOnMode()
{
    FuncSet(0,0,0,0,0,0,0);
    UpDownSureBack(modeMachine_ImageOutPut_TurnOnMode,
                   0,
                   modeMachine_SpecialStatusDisplay_Leaf,
                   0);//����
    
    AlwaysSet(modeMachine_Always_ImageOutput);
    v_Panel_DisplayCommandLine(6,1);
}
/*------*/void modeMachine_SpecialStatusDisplay_Leaf()
{
    FuncSet(0,0,0,0,0,0,0);
    UpDownSureBack(0,0,
                   modeMachine_SpecialStatusDisplay_Leaf,
                   modeMachine_SpecialStatusCut_TurnOnMode);//����
    AlwaysSet(modeMachine_SpecialAlwaysShow);
}
/*------*//*------*/void modeMachine_SpecialAlwaysShow()
{
    modeMachine_Always_ImageOutput();
    //���߸���Ԫ�ص���ʾ
    //��ʱ��û���
}


void modeMachine_ThirdParaments_Viewer()
{
    modeMachine_Always_ImageOutput();
    v_MonoRev_6x8Str(0,0,"BkBar:",0);//����λ��
    v_MonoRev_Number(64,0,m_ImageAbstract.BlackBarHeight_Start,10);//����λ��
    v_MonoRev_Number(64,1,m_ImageAbstract.BlackBarHeight_End,10);//����λ��
    v_MonoRev_6x8Str(0,2,"Rt_KB:",0);//ֱ��λ��
    char ch = m_ModeMachine.showRtBlackAngle;
    v_MonoRev_6x8Str(0,3,&ch,0);//չʾ�ַ�
    v_MonoRev_Number(64,2,m_ImageAbstract.Rt_K_Var,10);//ֱ��λ��
    v_MonoRev_Number(64,3,m_ImageAbstract.Rt_Var,10);//ֱ��λ��
    
    v_MonoRev_Number(64,4,m_ImageAbstract.Rt_Angle_Start_Y,10);//ֱ��λ��
    v_MonoRev_Number(64,5,m_ImageAbstract.Rt_Angle_End_Y,10);//ֱ��λ��
    
    if(m_ImageAbstract.Rt_Angle_error & 0x01){v_MonoRev_6x8Str(0,4,"RtE_01",0);}//ֱ��λ��}
                                         else{v_MonoRev_6x8Str(0,4,"      ",0);}
    if(m_ImageAbstract.Rt_Angle_error & 0x02){v_MonoRev_6x8Str(0,5,"RtE_02",0);}//ֱ��λ��}
                                         else{v_MonoRev_6x8Str(0,5,"      ",0);}
    if(m_ImageAbstract.Rt_Angle_error & 0x04){v_MonoRev_6x8Str(0,6,"RtE_04",0);}//ֱ��λ��}
                                         else{v_MonoRev_6x8Str(0,6,"      ",0);}
    if(m_ImageAbstract.Rt_Angle_error & 0x08){v_MonoRev_6x8Str(0,7,"RtE_08",0);}//ֱ��λ��}
                                         else{v_MonoRev_6x8Str(0,7,"      ",0);}
    
    v_MonoRev_Number(64,7,m_ImageAbstract.RtAngleLength,10);
    
    s_color Red;
    Red.A_Blue_31 = 0;Red.B_Green_63 = 0;Red.C_Red_31 = 31;
    for(uint8 loop = 0;loop < 60;loop++)
    {
        v_ColorRev_PutPoint(loop,m_ImageAbstract.Rt_Angle_End_Y,&Red);
        v_ColorRev_PutPoint(loop,m_ImageAbstract.Rt_Angle_Start_Y,&Red);
    }
}

void modeMachine_set_form1to2_paraments(void)
{
    FuncSet(0,0,0,0,0,0,0);
    UpDownSureBack(modeMachine_ImageOutPut_TurnOnMode,
                   0,
                   modeMachine_SpecialStatusDisplay_Leaf,
                   0);//����
    
    AlwaysSet(modeMachine_Always_ImageOutput);
    v_Panel_DisplayCommandLine(6,1);
}


//============================================================================//
void modeMachine_set_speed_max_min_TurnOnMode(void)
{
    FuncSet(0,0,0,0,0,0,0);
    UpDownSureBack(modeMachine_ServoFunction_TurnOnMode,//��һ�ڵ�=>�ⲿ����
                   0,//��һ�ڵ�=>�ⲿ����
                   modeMachine_set_speed_max_min_SettingSpeedMax,
                   0);//����=>�ⲿ����
    
    AlwaysSet(modeMachine_Always_ImageOutput);
    v_Panel_DisplayCommandLine(1,5);
}
/*�ӹ���*/void modeMachine_set_speed_max_min_SettingSpeedMax(void)
{
    FuncSet(0,0,0,0,0,0,0);
    UpDownSureBack(0,//��һ�ڵ�
                   modeMachine_set_speed_max_min_SettingSpeedMin,//��һ�ڵ�
                   0,
                   modeMachine_set_speed_max_min_TurnOnMode);//����
    UpDownS5S4(modeMachine_set_speed_max_min_DisplayParaments_addMaxSpeed,
               modeMachine_set_speed_max_min_DisplayParaments_cutMaxSpeed);
    AlwaysSet(modeMachine_set_speed_max_min_DisplayParaments_firstPara);
    //v_Panel_DisplayCommandLine(6,1);
}
/*�ӹ���*/void modeMachine_set_speed_max_min_SettingSpeedMin(void)
{
    FuncSet(0,0,0,0,0,0,0);
    UpDownSureBack(modeMachine_set_speed_max_min_SettingSpeedMax,//��һ�ڵ�
                   modeMachine_set_speed_max_min_SettingSpeedCut,//��һ�ڵ�
                   0,
                   modeMachine_set_speed_max_min_TurnOnMode);//����
    UpDownS5S4(modeMachine_set_speed_max_min_DisplayParaments_addMinSpeed,
               modeMachine_set_speed_max_min_DisplayParaments_cutMinSpeed);
    AlwaysSet(modeMachine_set_speed_max_min_DisplayParaments_secondPara);
}
/*�ӹ���*/void modeMachine_set_speed_max_min_SettingSpeedCut(void)
{
    FuncSet(0,0,0,0,0,0,0);
    UpDownSureBack(modeMachine_set_speed_max_min_SettingSpeedMin,//��һ�ڵ�
                   modeMachine_set_speed_max_min_SettingMutilServoPID,//��һ�ڵ�
                   0,
                   modeMachine_set_speed_max_min_TurnOnMode);//����
    UpDownS5S4(modeMachine_set_speed_max_min_DisplayParaments_addCutSpeed,
               modeMachine_set_speed_max_min_DisplayParaments_cutCutSpeed);
    AlwaysSet(modeMachine_set_speed_max_min_DisplayParaments_thirdPara);
}
/*�ӹ���*/void modeMachine_set_speed_max_min_SettingMutilServoPID(void)
{
    FuncSet(0,0,0,0,0,0,0);
    m_ModeMachine.button_S1_done = modeMachine_set_speed_max_min_DisplayParaments_closeLighting;
    UpDownSureBack(modeMachine_set_speed_max_min_SettingSpeedCut,//��һ�ڵ�
                   0,//��һ�ڵ�
                   modeMachine_set_speed_max_min_DisplayParaments_changeMutilServoPID,
                   modeMachine_set_speed_max_min_TurnOnMode);//����
    UpDownS5S4(modeMachine_set_speed_max_min_DisplayParaments_changeMutilServoPID_AddParaments,
               modeMachine_set_speed_max_min_DisplayParaments_changeMutilServoPID_CutParaments);
    AlwaysSet(modeMachine_set_speed_max_min_DisplayParaments_mutilServoPIDPara);
}
/*�ӹ���*//*�ӹ���*//*�ӹ���*//*�ӹ���*//*�ӹ���*//*�ӹ���*//*�ӹ���*//*�ӹ���*/
void modeMachine_set_speed_max_min_DisplayParaments_closeLighting()
{
    if(0 == m_CarRunningMode.isCloseTheLightingStop){m_CarRunningMode.isCloseTheLightingStop = 1;}
    else{m_CarRunningMode.isCloseTheLightingStop = 0;}
}
void modeMachine_set_speed_max_min_DisplayParaments_changeMutilServoPID()
{
    if(0 == m_CarRunningMode.isUsedDoubleServoPID){m_CarRunningMode.isUsedDoubleServoPID = 1;}
    else{m_CarRunningMode.isUsedDoubleServoPID = 0;}
}
void modeMachine_set_speed_max_min_DisplayParaments_changeMutilServoPID_AddParaments()
{m_CarRunningMode.DoubleServoPIDRatio += 0.1f;}
void modeMachine_set_speed_max_min_DisplayParaments_changeMutilServoPID_CutParaments()
{m_CarRunningMode.DoubleServoPIDRatio -= 0.1f;if(m_CarRunningMode.DoubleServoPIDRatio<0.f){m_CarRunningMode.DoubleServoPIDRatio = 0.f;}}

void modeMachine_set_speed_max_min_DisplayParaments_addMaxSpeed(){m_Control.speed_max += 10;}
void modeMachine_set_speed_max_min_DisplayParaments_cutMaxSpeed(){m_Control.speed_max -= 10;}
void modeMachine_set_speed_max_min_DisplayParaments_addMinSpeed(){m_Control.speed_min += 10;}
void modeMachine_set_speed_max_min_DisplayParaments_cutMinSpeed(){m_Control.speed_min -= 10;}
void modeMachine_set_speed_max_min_DisplayParaments_addCutSpeed(){m_Control.speed_cut += 10;}
void modeMachine_set_speed_max_min_DisplayParaments_cutCutSpeed(){m_Control.speed_cut -= 10;}
/*�ӹ���*/void modeMachine_set_speed_max_min_DisplayParaments_firstPara(void)
{
    modeMachine_Always_ImageOutput();
    v_MonoRev_6x8Str(0,0,">SpeedMax:",0);//����λ��
    v_MonoRev_Number(64,0,m_Control.speed_max,10);//����λ��
    v_MonoRev_6x8Str(0,1," SpeedMin:",0);//����λ��
    v_MonoRev_Number(64,1,m_Control.speed_min,10);//����λ��
    v_MonoRev_6x8Str(0,2," SpeedCut:",0);//����λ��
    v_MonoRev_Number(64,2,m_Control.speed_cut,10);//����λ��
    v_MonoRev_6x8Str(0,3," mSvoPID:",0);//����λ��
    v_MonoRev_Number(64,3,m_CarRunningMode.isUsedDoubleServoPID,10);//����λ��
    v_MonoRev_Number(64,4,m_CarRunningMode.DoubleServoPIDRatio,10);//����λ��
}
/*�ӹ���*/void modeMachine_set_speed_max_min_DisplayParaments_secondPara(void)
{
    modeMachine_Always_ImageOutput();
    v_MonoRev_6x8Str(0,0," SpeedMax:",0);//����λ��
    v_MonoRev_Number(64,0,m_Control.speed_max,10);//����λ��
    v_MonoRev_6x8Str(0,1,">SpeedMin:",0);//����λ��
    v_MonoRev_Number(64,1,m_Control.speed_min,10);//����λ��
    v_MonoRev_6x8Str(0,2," SpeedCut:",0);//����λ��
    v_MonoRev_Number(64,2,m_Control.speed_cut,10);//����λ��
    v_MonoRev_6x8Str(0,3," mSvoPID:",0);//����λ��
    v_MonoRev_Number(64,3,m_CarRunningMode.isUsedDoubleServoPID,10);//����λ��
    v_MonoRev_Number(64,4,m_CarRunningMode.DoubleServoPIDRatio,10);//����λ��
}

void modeMachine_set_speed_max_min_DisplayParaments_thirdPara(void)
/*�ӹ���*/
{
    modeMachine_Always_ImageOutput();
    v_MonoRev_6x8Str(0,0," SpeedMax:",0);//����λ��
    v_MonoRev_Number(64,0,m_Control.speed_max,10);//����λ��
    v_MonoRev_6x8Str(0,1," SpeedMin:",0);//����λ��
    v_MonoRev_Number(64,1,m_Control.speed_min,10);//����λ��
    v_MonoRev_6x8Str(0,2,">SpeedCut:",0);//����λ��
    v_MonoRev_Number(64,2,m_Control.speed_cut,10);//����λ��
    v_MonoRev_6x8Str(0,3," mSvoPID:",0);//����λ��
    v_MonoRev_Number(64,3,m_CarRunningMode.isUsedDoubleServoPID,10);//����λ��
    v_MonoRev_Number(64,4,m_CarRunningMode.DoubleServoPIDRatio,10);//����λ��
}

void modeMachine_set_speed_max_min_DisplayParaments_mutilServoPIDPara(void)
/*�ӹ���*/
{
    modeMachine_Always_ImageOutput();
    v_MonoRev_6x8Str(0,0," SpeedMax:",0);//����λ��
    v_MonoRev_Number(64,0,m_Control.speed_max,10);//����λ��
    v_MonoRev_6x8Str(0,1," SpeedMin:",0);//����λ��
    v_MonoRev_Number(64,1,m_Control.speed_min,10);//����λ��
    v_MonoRev_6x8Str(0,2," SpeedCut:",0);//����λ��
    v_MonoRev_Number(64,2,m_Control.speed_cut,10);//����λ��
    v_MonoRev_6x8Str(0,3,">mSvoPID:",0);//����λ��
    v_MonoRev_Number(64,3,m_CarRunningMode.isUsedDoubleServoPID,10);//����λ��
    v_MonoRev_Number(64,4,m_CarRunningMode.DoubleServoPIDRatio,10);//����λ��
    v_MonoRev_6x8Str(0,5,"--CloseLight:",0);//����λ��
    v_MonoRev_Number(80,5,m_CarRunningMode.isCloseTheLightingStop,10);//����λ��
}

void modeMachine_BlackBar2Littele()
{
    m_ModeMachine.always_done = modeMachine_BlackBar2Littele_Display;
}
void modeMachine_BlackBar2Littele_Display()
{
    modeMachine_Always_ImageOutput();
    v_MonoRev_Number(0,1,m_ImageTesting.centralPosTurning,10);
    if(Sid_Left == m_ImageTesting.TurningSide)
    {
        v_MonoRev_6x8Str(0,0,"Left",0);
    }
    if(Sid_Right == m_ImageTesting.TurningSide)
    {
        v_MonoRev_6x8Str(0,0,"Right",0);
    }
    if(Sid_NaN == m_ImageTesting.TurningSide)
    {
        v_MonoRev_6x8Str(0,0,"NaN",0);
    }
    v_MonoRev_Number(0,2,m_ImageTesting.var,10);
    //�ӵ��������
    char ch;
    ch = m_ImageTesting.showLonlyLineFindAboutUpSet;
    v_MonoRev_6x8Str(0,3,&ch,0);//�������ۿ��°�
    
    v_MonoRev_6x8Str(20,4,"fsDraw:",0);
    if(1 == m_ImageTesting.firstAndSecond_isBeenDrawing)
    {v_MonoRev_6x8Str(64,4,"Yes",0);}
    else
    {v_MonoRev_6x8Str(64,4,"No",0);}
    
    
    //========================================================================//
    v_MonoRev_6x8Str(0,4,"Lonly:",0);
    if(1 == m_ImageAbstract.isLonlyLineNow)
    {v_MonoRev_6x8Str(64,4,"Yes",0);}
    else
    {v_MonoRev_6x8Str(64,4,"No",0);}
    
    v_MonoRev_6x8Str(0,5,"LLBreak:",0);
    if(1 == m_ImageTesting.isOccurLonlyLineBreak)
    {v_MonoRev_6x8Str(64,5,"Yes",0);}
    else
    {v_MonoRev_6x8Str(64,5,"No",0);}
    
    v_MonoRev_6x8Str(0,6,"Cross:",0);
    if(1 == m_ImageTesting.isOccurCross)
    {v_MonoRev_6x8Str(64,6,"Yes",0);}
    else
    {v_MonoRev_6x8Str(64,6,"No",0);}
    
    v_MonoRev_6x8Str(0,7,"LittleTurn:",0);
    if(1 == m_ImageTesting.FindLitteWidthTurning)
    {v_MonoRev_6x8Str(64,7,"Lef",0);}else 
    if(2 == m_ImageTesting.FindLitteWidthTurning)
    {v_MonoRev_6x8Str(64,7,"Rig",0);}
    else
    {v_MonoRev_6x8Str(64,7,"   ",0);}
    
    v_MonoRev_Number(96,5,m_ImageTesting.FindLitteWidthTurning_LeftFinder,10);
    v_MonoRev_Number(96,6,m_ImageTesting.FindLitteWidthTurning_RightFinder,10);
    
    v_MonoRev_6x8Str(30,0,"Hzard:",0);
    if(1 == m_ImageTesting.isMeetingHazard)
    {v_MonoRev_6x8Str(64,0,"yes",0);}else 
    if(0 == m_ImageTesting.isMeetingHazard)
    {v_MonoRev_6x8Str(64,0,"no ",0);}
    
    v_MonoRev_6x8Str(30,1,"Ramp:",0);
    if(1 == m_ImageAbstract.isRampOccur)
    {v_MonoRev_6x8Str(64,1,"yes",0);}else 
    if(0 == m_ImageAbstract.isRampOccur)
    {v_MonoRev_6x8Str(64,1,"no ",0);}
    
    
    v_MonoRev_6x8Str(30,2,"SiC:",0);
    v_MonoRev_Number(64,2,m_ImageTesting.SideChangeOccur,10);
    
    v_MonoRev_6x8Str(30,3,"LBrIn:",0);
    if(1 == m_ImageTesting.TurnOnTheLonlyLine)
    {v_MonoRev_6x8Str(64,3,"yes",0);}else 
    if(0 == m_ImageTesting.TurnOnTheLonlyLine)
    {v_MonoRev_6x8Str(64,3,"no ",0);}
        
    s_color Green;
    Green.A_Blue_31 = 0;Green.B_Green_63 = 63;Green.C_Red_31 = 0;
    if(255 != m_ImageTesting.Back2Angel_LineCounter)
    {
        for(uint8 inter = 0;inter < 96;inter ++)
        {
            v_ColorRev_PutPoint(inter,m_ImageTesting.Back2Angel_LineCounter,&Green);
        }
    }
    s_color Red;
    Red.A_Blue_31 = 0;Red.B_Green_63 = 0;Red.C_Red_31 = 31;
    for(uint8 loop = 0;loop < 60;loop++)
    {
        v_ColorRev_PutPoint(loop,m_ImageAbstract.Rt_Angle_End_Y,&Red);
        v_ColorRev_PutPoint(loop,m_ImageAbstract.Rt_Angle_Start_Y,&Red);
    }
    
}


PUBLIC void modeMachine_RtAngel()
{
    m_ModeMachine.always_done = modeMachine_RtAngel_Display;
}

PUBLIC void modeMachine_RtAngel_Display()
{
    modeMachine_Always_ImageOutput();
    s_color Red;
    Red.A_Blue_31 = 0;Red.B_Green_63 = 0;Red.C_Red_31 = 31;
    for(uint8 loop = 0;loop < 60;loop++)
    {
        v_ColorRev_PutPoint(loop,m_ImageTesting.RampStart,&Red);
        v_ColorRev_PutPoint(loop,m_ImageTesting.RampEnd,&Red);
    }
    
    v_MonoRev_6x8Str(0,0,"Ramp:",0);
    if(1 == m_ImageAbstract.RampExist)
    {v_MonoRev_6x8Str(42,0,"yes",0);}else 
    if(0 == m_ImageAbstract.RampExist)
    {v_MonoRev_6x8Str(42,0,"no ",0);}
    
    v_MonoRev_6x8Str(0,1,"Zard:",0);
    if(1 == m_ImageTesting.isMeetingHazard)
    {v_MonoRev_6x8Str(42,1,"yes",0);}else 
    if(0 == m_ImageTesting.isMeetingHazard)
    {v_MonoRev_6x8Str(42,1,"no ",0);}   
}

void StartRunningShunAnThird()
{m_Control.starting_time = m_system.timer + 2000;m_Control.runningEnd_time = m_Control.starting_time + 5000;}
void modeMachine_StartCarRunning_Paraments()
{
    FuncSet(0,0,0,0,0,0,0);
    m_ModeMachine.button_S1_done = modeMachine_ImageBeholderTesting_TurnOnMode;
    UpDownSureBack(0,
                   0,
                   StartRunningShunAnThird,
                   0);//����
    UpDownS5S4(0,modeMachine_StartCarSpeedLow_Paraments);
    AlwaysSet(modeMachine_StartCar_Paraments_Display);
    v_Panel_DisplayCommandLine(0,6);
}
void modeMachine_StartCarSpeedLow_Paraments()
{
    FuncSet(0,0,0,0,0,0,0);
    m_ModeMachine.button_S1_done = modeMachine_ImageBeholderTesting_TurnOnMode;
    UpDownSureBack(0,
                   0,
                   0,
                   0);//����
    UpDownS5S4(modeMachine_StartCarRunning_Paraments,modeMachine_StartCarSpeedHigh_Paraments);
    AlwaysSet(modeMachine_StartCar_Paraments_Display);
    v_Panel_DisplayCommandLine(1,6);
}
void modeMachine_StartCarSpeedHigh_Paraments()
{
    FuncSet(0,0,0,0,0,0,0);
    m_ModeMachine.button_S1_done = modeMachine_ImageBeholderTesting_TurnOnMode;
    UpDownSureBack(0,
                   0,
                   modeMachine_StartCarSpeedMax_Setting,
                   modeMachine_StartCarSpeedMax_Setting_01);//����
    UpDownS5S4(modeMachine_StartCarSpeedLow_Paraments,modeMachine_StartCarSpeedAverage_Paraments);
    AlwaysSet(modeMachine_StartCar_Paraments_Display);
    v_Panel_DisplayCommandLine(2,6);
}
void modeMachine_StartCarSpeedMax_Setting()
{m_Control.speed_max = 230;m_Control.speed_min = 170;}
void modeMachine_StartCarSpeedMax_Setting_01()
{m_Control.speed_max = 250;m_Control.speed_min = 180;}

void modeMachine_StartCarSpeedAverage_Paraments()
{
    FuncSet(0,0,0,0,0,0,0);
    m_ModeMachine.button_S1_done = modeMachine_ImageBeholderTesting_TurnOnMode;
    UpDownSureBack(0,
                   0,
                   modeMachine_StartCarSpeedAverage_Setting,
                   modeMachine_StartCarSpeedAverage_Setting_01);//����
    UpDownS5S4(modeMachine_StartCarSpeedHigh_Paraments,0);
    AlwaysSet(modeMachine_StartCar_Paraments_Display);
    v_Panel_DisplayCommandLine(3,6);
}
void modeMachine_StartCarSpeedAverage_Setting()
{m_Control.speed_max = 170;m_Control.speed_min = 170;}
void modeMachine_StartCarSpeedAverage_Setting_01()
{m_Control.speed_max = 180;m_Control.speed_min = 180;}


void modeMachine_StartCar_Paraments_Display()
{
    AlwaysSet(modeMachine_Always_ImageOutput);
    v_MonoRev_Number(80,4,m_Control.speed_min,10);
    v_MonoRev_Number(80,5,m_Control.speed_max,10);
    v_MonoRev_Number(80,6,0,10);
}