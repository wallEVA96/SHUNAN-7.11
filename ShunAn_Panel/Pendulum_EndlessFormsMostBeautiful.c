#include "arm_cm4.h"
#include "MK60F15.h"
#include "ShunAn_Lib.h"
#include "start_ShunAn.h"
#include "ThePoet_ThePendulum.h"
#include "Pendulum_EndlessFormsMostBeautiful.h"

#include "Poet_ImageBeholder.h"//����ͷ
#include "Poet_Revelation.h"//

#include "Poet_Buzzer.h"

#include "Poet_InputInterface.h"
#include "Poet_Motor.h"

#include "Poet_Servo.h"
s_CarRunningMode m_CarRunningMode;
s_Control m_Control = {0};//���Ʋ�������
s_ImageAbstract m_ImageAbstract = {0};//ͼ����
unsigned short int u16_RevePanel[96][60];////ͼ������

s_ImageTesting m_ImageTesting;

void v_motor_doneFunc(void)
{//�����漰���жϲ�������Ҫ���ж�
    //����
    PIT_Flag_Clear(PIT1);//���ж�
    m_Control.motor_control_time ++;//����ʱ���Լ�
    
    m_Control.LightChaserLogic_time_cut_1 = m_Control.LightChaserLogic;
    m_Control.LightChaserLogic = b_GetLightChaserStatus();
    
    if(0 != vPtr_CheckLightingChaser){vPtr_CheckLightingChaser();}
    if(!(m_Control.motor_control_time % 5))//���ƿ�������Ϊ4msһ����
    {//10 msһ��
        m_Control.LeftMotorSpeed_n_cut_1 = m_Control.LeftMotorSpeed;//����Ϊ������ȡ
        m_Control.RightMotorSpeed_n_cut_1 = m_Control.RightMotorSpeed;
        m_Control.LeftMotorSpeed = n_GetMotor_speed(MOTOR_def_Left_speed_QD_com);//ת�ٻ�ȡ
        m_Control.RightMotorSpeed = -n_GetMotor_speed(MOTOR_def_Right_speed_QD_com);
        m_Control.ServoAngle = n_GetServoAngle();//��ȡ��ǰ�����ֵ
        
        if((0 == m_Control.start_motorRunning_flag)//���㵱ǰ��
        &&((m_Control.runningEnd_time > m_system.timer)&&(m_system.timer > m_Control.starting_time)))
        {
            //v_leftMotor_pwmOut(500,1);
            //v_rightMotor_pwmOut(500,1);
            m_Control.LeftRightRatio = n_GetServoGraduated(m_Control.ServoAngle);//����ת����  
            
            float Ratio = (__F_ABS((float)((float)m_Control.ServoDeg - 100.f)/100.f));//0-100
            Ratio = Ratio * 100.f;
            //low = 10000*a - 2a*low*100 + high
            //a = (low-high)/(10000-2*100*low)
            /*float a = (m_Control.speed_min-m_Control.speed_max)/(10000-2*100*m_Control.speed_min);
            float b = - m_Control.speed_min * 2 * a;
            float c = m_Control.speed_max;*/
            
            if(Ratio < 25)
            {//Max - Min
                float K = (m_Control.speed_max - m_Control.speed_cut)/(0-25);
                float B = m_Control.speed_cut - K*25;
                m_Control.GiveSpeed = K*Ratio + B;
            }
            else
            {
                float K = (m_Control.speed_cut - m_Control.speed_min)/(25-100);
                float B = m_Control.speed_min - K*100;
                m_Control.GiveSpeed = K*Ratio + B;
            }
            
            //m_Control.GiveSpeed = GR_MotorSpeed3[(unsigned int)Ratio];//m_Control.speed_min;//a*Ratio*Ratio + b*Ratio + c;
            //if(m_Control.GiveSpeed > 220){m_Control.GiveSpeed = 220;}
                ///(uint16)((1.f-Ratio*Ratio)*(m_Control.speed_max-m_Control.speed_min) + m_Control.speed_min);
            if((20 == m_Control.servo_imageYstopLine)||(1 == m_ImageAbstract.RtAngle_isLasting))
            {m_Control.GiveSpeed = m_Control.speed_min;}
            m_Control.v_MotorControlSpeed((sint16)(m_Control.GiveSpeed));
            //v_speed_Give((sint16)(m_Control.GiveSpeed / 10.f));
        }//����������˽���
    }
    
}

void v_ImageCutInformationShow(uint8 mode)//===== -ͼ��չʾ- =====//
{
    //if(0 == m_ImageAbstract.isImageInformationShowing)
    //{
    //    return;//�����չʾ���˳�
    //}
    //if(0 == m_ImageAbstract.DataShowOK_flag)
    //{return;}
    s_color Red;
    Red.A_Blue_31 = 0;Red.B_Green_63 = 0;Red.C_Red_31 = 31;
    s_color Green;
    Green.A_Blue_31 = 0;Green.B_Green_63 = 63;Green.C_Red_31 = 0;
    s_color Black;
    Black.A_Blue_31 = 0;Black.B_Green_63 = 0;Black.C_Red_31 = 0;
    s_color Blue;
    Blue.A_Blue_31 = 31;Blue.B_Green_63 = 0;Blue.C_Red_31 = 0;
    
    for(uint8 loop = m_ImageAbstract.Show_Start_Y_Position;loop < m_ImageAbstract.Show_Last_Y_Position;loop++)
    {
        if(255 != m_ImageAbstract.Right_UpBlack2White[loop])
        {
            v_ColorRev_PutPoint(m_ImageAbstract.Right_UpBlack2White[loop]/2,loop,&Blue);
        }
        if(255 != m_ImageAbstract.Left_UpBlack2White[loop])
        {
            v_ColorRev_PutPoint(m_ImageAbstract.Left_UpBlack2White[loop]/2,loop,&Green);
        }
        if(255 != m_ImageAbstract.Right[loop])
        {
            v_ColorRev_PutPoint(m_ImageAbstract.Right[loop]/2,loop,&Blue);
        }
        if(255 != m_ImageAbstract.Left[loop])
        {
            v_ColorRev_PutPoint(m_ImageAbstract.Left[loop]/2,loop,&Green);
        }
        if(255 != m_ImageAbstract.Central[loop])
        {
            v_ColorRev_PutPoint(m_ImageAbstract.Central[loop]/2,loop,&Red);
        }
        //v_ColorRev_PutPoint((uint8)m_Control.image_control_n,loop,&Blue);
    }
    if(1 == mode){return;}
    for(uint8 loop = 0;loop < 90;loop++)
    {
        if(loop<45)
        {
            v_ColorRev_PutPoint(m_ImageAbstract.LastFrame_CentralPos/2,loop,&Blue);
        }
        else
        {
            v_ColorRev_PutPoint(m_ImageAbstract.LastFrame_CentralPos/2,loop,&Red);
        }
        
    }
    for(uint8 loop = 0;loop < 60;loop++)
    {
        //v_ColorRev_PutPoint(m_ImageAbstract.LastFrame_CentralPos,loop,&Blue);
        v_ColorRev_PutPoint(loop,m_ImageAbstract.Last_Y_Position,&Black);
        //if((loop < 20)&&(loop > 40))
        //{
        //    //v_ColorRev_PutPoint(loop,m_Control.servo_imageYstopLine,&Black);
        //    v_ColorRev_PutPoint(loop,m_ImageAbstract.Last_Y_Position,&Blue);
        //}
    }
    //m_ImageAbstract.DataShowOK_flag = 0;//������־λ
    if(255 != m_ImageAbstract.LonlyLine_ShutDown_Y)
    {
        for(uint8 inter = 0;inter < 96;inter ++)
        {
            v_ColorRev_PutPoint(inter,m_ImageAbstract.LonlyLine_ShutDown_Y,&Red);
            //v_ColorRev_PutPoint(inter,m_ImageAbstract.LonlyLine_Line_End_About_Y,&Blue);
        }
    }
    
    
    if(255 != m_ImageAbstract.CutY_secondLine)
    {
        for(uint8 inter = 0;inter < 96;inter ++)
        {
            v_ColorRev_PutPoint(inter,m_ImageAbstract.CutY_secondLine,&Red);
        }
    }
    if(255 != m_ImageAbstract.CutY_firstLine)
    {
        for(uint8 inter = 0;inter < 96;inter ++)
        {
            v_ColorRev_PutPoint(inter,m_ImageAbstract.CutY_firstLine,&Red);
        }
    }
        
        
    if(255 != m_ImageAbstract.BlackBarHeight_End)
    {
        for(uint8 inter = 0;inter < 96;inter ++)
        {
            v_ColorRev_PutPoint(inter,m_ImageAbstract.BlackBarHeight_Start,&Blue);
        }
    }
    if(255 != m_ImageAbstract.BlackBarHeight_Start)
    {
        for(uint8 inter = 0;inter < 96;inter ++)
        {
            v_ColorRev_PutPoint(inter,m_ImageAbstract.BlackBarHeight_End,&Blue);
        }
    }
    
    
    if(255 != m_ImageAbstract.LonlyLine_ShutDown_X)
    {
        for(uint8 inter = 0;inter < 60;inter ++)
        {
            v_ColorRev_PutPoint(m_ImageAbstract.LonlyLine_ShutDown_X/2,inter,&Black);
        }
    }
    for(uint8 loop = 0;loop < 60;loop++)//����������
    {
        
        
        if('K' == m_ImageAbstract.happened_suddenly_True[loop])
        {
            for(uint8 inter = 0;inter < 96;inter ++)
            {
                v_ColorRev_PutPoint(inter,loop,&Black);
            }
        }
        if('W' == m_ImageAbstract.happened_suddenly_True[loop])
        {
            for(uint8 inter = 0;inter < 96;inter ++)
            {
                v_ColorRev_PutPoint(inter,loop,&Red);
            }
        }
        if('B' == m_ImageAbstract.happened_suddenly_True[loop])
        {
            for(uint8 inter = 0;inter < 96;inter ++)
            {
                v_ColorRev_PutPoint(inter,loop,&Green);
            }
        }
    }
}


uint8 b_getCurve_Point(math_f32* used_X,math_f32 used_Y,math_f32 near_X,math_f32 near_Y,math_f32 far_X,math_f32 far_Y,math_f32 Curve)
{//����Ĵ��룬�������ʻ��Ƶ� 
    math_f32 X_Mid = (near_X + far_X) * 0.5f;
    math_f32 Y_Mid = (near_Y + far_Y) * 0.5f;//ȷ���м�λ��
    math_f32 Round_halfLong = 0.f;
    if(0.f == Curve)
    {//ֱ�� 
	*used_X = (used_Y-near_Y)*(far_X-near_X)/(far_Y-near_Y) + near_X;
	return 1;
    }
    else
    {
	math_f32 isRight = (Curve < 0.f)?-1.f:1.f;//ȷ���������� //С�������� 
        Round_halfLong = 1.f / __F_ABS(Curve);
        math_f32 X_Cut = (far_X - near_X);// * 0.5f;
	math_f32 Y_Cut = (far_Y - near_Y);// * 0.5f;//�볤 
		
	math_f32 Round_halfLong_Down = (X_Cut*X_Cut + Y_Cut*Y_Cut);//�뾶�����������
	math_f32 RoundPoint_LastWilds = (Round_halfLong*Round_halfLong - 0.25f*Round_halfLong_Down);//�����һ���ĳ���
	math_f32 small_change = SquareRootFloat(__F_ABS(RoundPoint_LastWilds / Round_halfLong_Down));//(y2-y1)y = (x1-x2)x + C
		
	math_f32 RoundX0 = isRight*Y_Cut*(small_change) + X_Mid;//ȷ��ԭ�� 
	math_f32 RoundY0 = -isRight*X_Cut*(small_change) + Y_Mid;

	math_f32 Y_CutVar_WithRoundUsed = (RoundY0 - used_Y);//Yƫ�� 
	math_f32 X_Change = SquareRootFloat(Round_halfLong*Round_halfLong 
					- Y_CutVar_WithRoundUsed*Y_CutVar_WithRoundUsed);
	*used_X = -isRight*X_Change + RoundX0;
	return 0;
    }
}

float f_Get3pointsCurve(uint8 x_1,uint8 x_2,uint8 x_3,uint8 y_1,uint8 y_2,uint8 y_3)
{
    sint16 x_12_cut = (x_1 - x_2);
    sint16 x_32_cut = (x_3 - x_2);
    sint16 x_31_cut = (x_3 - x_1);
    sint16 y_12_cut = (y_1 - y_2);
    sint16 y_32_cut = (y_3 - y_2);
    sint16 y_31_cut = (y_3 - y_1);
    float S_4 = (x_32_cut * y_12_cut - x_12_cut * y_32_cut) * 2.f;//���
    float l_12 = (x_12_cut*x_12_cut + y_12_cut*y_12_cut);
    float l_23 = (x_32_cut*x_32_cut + y_32_cut*y_32_cut);
    float l_13 = (x_31_cut*x_31_cut + y_31_cut*y_31_cut);
    float curve = S_4 * SquareRootBedivFloat(l_12 * l_23 * l_13);
    return curve;
}

//ȫ��Ԫ��˹��
uint8 b_solve8x8_Ax_b(float AB_input[8][9], float X[8])
{
    float AB[8][9];
        for(uint8 loop = 0;loop < 8;loop++)
        {
            for(uint8 inter = 0;inter < 9;inter++)
            {
                AB[loop][inter] = AB_input[loop][inter];
            }
        }
	// AX = B
	// ����ֵ[��][��]
	uint8 Row_MainElementChange_Temp[8] = { 0, 1, 2, 3, 4, 5, 6, 7 };//����Ԫ������������//���б任ͬʱ���� 
	//float AB[8][9];
        /*
	for (uint16 lineNum = 0; lineNum < 8; lineNum++)
	{
		for (uint8 RowCtr = 0; RowCtr < 8; RowCtr++)
		{
			AB[lineNum][RowCtr] = A[lineNum][RowCtr];
		}
	}
	for (uint8 ExRow_LineCtr = 0; ExRow_LineCtr<8; ExRow_LineCtr++)
	{
		AB[ExRow_LineCtr][8] = B[ExRow_LineCtr];
	}
        */
	//========================================================================//
	//����Ϊ�����б任 
	uint8 Line_BeWithRowChange = 0;//AB�������//��0���б��б䣬�б��в��� 
	uint8 Row_Ctr = 0;//�м��� 
	for (Row_Ctr = 0; Row_Ctr < 9; Row_Ctr++)//ѡȡÿ�У�Ŀ�������ȥ��������Ԫ�ػ�ֻʣ��һ��1//��������Ϣ 
	{
		//====================================================================//
		//��ȷ�� 
		if (8 == Row_Ctr)//ȷ��AB�������Ƿ����� 
		{
			if (8 == Line_BeWithRowChange)
			{
				//cout << "����" << endl;
			}
			else
			{
				//cout << "������" <<endl;//return 'F';//������ 
                                return 'F';
			}
			break;//���� 
		}
		//====================================================================//
		//��ⷽ���� 
		do//��ȡ������Ϣ//��ȡȫ��Ԫ��ȥ�� 
		{
			//��ȡ���ֵ��Ϣ 
			uint8 Max_Num_Line_address = Line_BeWithRowChange;//�϶���ʱ��ֵ���
			uint8 Max_Num_Row_address = Row_Ctr;
			float Max_Num_Var = __F_ABS(AB[Line_BeWithRowChange][Row_Ctr]);//���ֵ 
			for (uint8 Line_ForFindMax_loop = Max_Num_Line_address; Line_ForFindMax_loop < 8; Line_ForFindMax_loop++)
			{
				for (uint8 Row_ForFindMax_loop = Max_Num_Row_address; Row_ForFindMax_loop<8; Row_ForFindMax_loop++)
				{
					if ((__F_ABS(AB[Line_ForFindMax_loop][Row_ForFindMax_loop])) > Max_Num_Var)
					{
						Max_Num_Var = __F_ABS(AB[Line_ForFindMax_loop][Row_ForFindMax_loop]);//���ֵ��ֵ
						Max_Num_Line_address = Line_ForFindMax_loop;//�и�ֵ 
						Max_Num_Row_address = Row_ForFindMax_loop;//�и�ֵ 
					}
				}
			}
			//���н��� 
			if ((0.0 != Max_Num_Var) && (Line_BeWithRowChange != Max_Num_Line_address) && (Row_Ctr != Max_Num_Row_address))//ͬ�и������ֵȷ������ 
			{
				//�б任
				float lineRow_tempForChange = 0.0;
				for (uint8 loop = 0; loop < 9; loop++)//�н��� 
				{
					lineRow_tempForChange = AB[Line_BeWithRowChange][loop];
					AB[Line_BeWithRowChange][loop] = AB[Max_Num_Line_address][loop];
					AB[Max_Num_Line_address][loop] = lineRow_tempForChange;
				}
				//�б任 
				for (uint8 loop = 0; loop < 8; loop++)
				{
					//�н��� 
					lineRow_tempForChange = AB[loop][Row_Ctr];
					AB[loop][Row_Ctr] = AB[loop][Max_Num_Row_address];
					AB[loop][Max_Num_Row_address] = lineRow_tempForChange;
					//�����任
				}
				uint8 changeFloatTemp = 0;
				changeFloatTemp = Row_MainElementChange_Temp[Row_Ctr];//Row_Ctr�п��ܲ����� Row_MainElementChange_Temp[Row_Ctr]
				Row_MainElementChange_Temp[Row_Ctr] = Row_MainElementChange_Temp[Max_Num_Row_address];
				Row_MainElementChange_Temp[Max_Num_Row_address] = changeFloatTemp;
			}
		} while (0);
		//
		if (0.0 != AB[Line_BeWithRowChange][Row_Ctr])//����Ԫ���Ƿ�Ϊ0
		{
			//����������Ϣ ���´δӴ˸��£�//����Ϣ�̳С�����Ϣ�̳�
			float self_Line_GaiaNum = AB[Line_BeWithRowChange][Row_Ctr];//ѡȡ���й�һ����ֵ
			for (uint8 self_Line_RowCtr = Row_Ctr; self_Line_RowCtr < 9; self_Line_RowCtr++)
			{
				AB[Line_BeWithRowChange][self_Line_RowCtr] = AB[Line_BeWithRowChange][self_Line_RowCtr] / self_Line_GaiaNum;//���й�һ��
			}
			for (uint8 Cal_Line_Ctr = Line_BeWithRowChange + 1; Cal_Line_Ctr < 8; Cal_Line_Ctr++)//�����㣬����ʼ������ͬ��
			{
				//��Ԫ�ز�Ϊ0����ȥ��������Ԫ��
				//ɾ�������������е���ֵ
				float Die_SammLikeGaiaLinesRow = AB[Cal_Line_Ctr][Row_Ctr] / AB[Line_BeWithRowChange][Row_Ctr];//��ȡ��������
				//cout << "Die_SammLikeGaiaLinesRow" << Die_SammLikeGaiaLinesRow << endl;//���ڲ��� 
				//*****************************************************************************//
				for (uint8 ExLine_RowNumCtr = Row_Ctr; ExLine_RowNumCtr < 9; ExLine_RowNumCtr++)//��Ŀ��ԭʼ�п�ʼ��ÿ�й̶���ȥ
				{
					AB[Cal_Line_Ctr][ExLine_RowNumCtr] = AB[Cal_Line_Ctr][ExLine_RowNumCtr] - //�й̶���������
						Die_SammLikeGaiaLinesRow * AB[Line_BeWithRowChange][ExLine_RowNumCtr];//
					//��������
				}//****************************************************************************//
			}
			Line_BeWithRowChange++;//���б任ͬ�� 			
		}//else//{//Ϊ0����Ա��� //}
	}//=======================================================================//
	//�ش�����//����ʱ��ɵ����Ž�
	/*
	cout << endl;
	for (uint8 loop = 0; loop < 8; loop++)
	{
		for (uint8 row_loop = 0; row_loop < 9; row_loop++)
		{
			cout << AB[loop][row_loop] << " ";
		}
		cout << endl;
		cout << endl;
		cout << endl;
		//cout << X[Row_MainElementChange_Temp[loop]] << endl;//loop��������Ϣ�� Row_MainElementChange_Temp[loop]Ӧ�洢��Ϣ 
	}
	*/

	//cout << "��" << (float)Line_BeWithRowChange << endl;
	Line_BeWithRowChange -= 1;//��Ϊ���ȣ����ȵ�ʱ����ֵΪ8���ʱ���ɾȥһ����ֵ//��ȡ�����ڵ�������
	for (sint8 LineCtr_Cyclotron = Line_BeWithRowChange; LineCtr_Cyclotron >= 0; LineCtr_Cyclotron--)//���ȿ�ʼ�������ϼ�ȥ
	{
		//break;
		uint8 LineMaxFinder_UpperNum = 8;//�ܹ�ѡ����//������//���Խ�ÿ����ʼλ�ø�ֵ������������������Ҫ��������������ѭ��
		uint8 EachLine_StarRowNum = 0;//��ʼ��ʧ��Line_BeWithRowChange - 1;2015.2.8
		while (LineMaxFinder_UpperNum)//��ȡ�����е�������//����ʱ������������
		{
			if (0.0 != AB[LineCtr_Cyclotron][EachLine_StarRowNum])//�˲�Ϊ���ǻ�ȡ��Ҫ��ȥ�е�������ֵ������ 
			{
				break;
			}
			EachLine_StarRowNum++;
			LineMaxFinder_UpperNum--;
		}
		//cout <<"EachLine_StarRowNum"<<(float)EachLine_StarRowNum<<endl;//������ 
		//cout << "LineMaxFinder_UpperNum" <<(float)LineMaxFinder_UpperNum<<endl;
		if (0 != LineMaxFinder_UpperNum)//Ϊ��Ѱ�����һ��
		{
			//EachLine_StarRowNumΪ������ʼλ��
			//���м������ƶ���
			for (uint8 Line_Ctr = 0; Line_Ctr < LineCtr_Cyclotron; Line_Ctr++)//��RowCtr��LineCtr_Cyclotron������
			{
				float Die_ForLine = AB[Line_Ctr][EachLine_StarRowNum] / AB[LineCtr_Cyclotron][EachLine_StarRowNum];//����ȡ��ȥ����

				//cout << "Die_ForLine" << Die_ForLine <<endl;
				for (uint8 RowCtr_ForChace = EachLine_StarRowNum; RowCtr_ForChace < 9; RowCtr_ForChace++)//Ϊ�ش�����
				{
					AB[Line_Ctr][RowCtr_ForChace] = AB[Line_Ctr][RowCtr_ForChace] - Die_ForLine * AB[LineCtr_Cyclotron][RowCtr_ForChace];
				}
			}
		}
	}
	//========================================================================//
	//����X�� => ����Ԫ�� 
	for (uint8 loop = 0; loop < 8; loop++)
	{
		X[Row_MainElementChange_Temp[loop]] = AB[loop][8];//loop��������Ϣ�� Row_MainElementChange_Temp[loop]Ӧ�洢��Ϣ 
	}
	//Line_BeWithRowChange => ���� 
	/*
	cout << endl;
	for (uint8 loop = 0; loop < 8; loop++)
	{
		for (uint8 row_loop = 0; row_loop < 9; row_loop++)
		{
			cout << AB[loop][row_loop] << " ";
		}
		cout << endl;
		cout << endl;
		cout << endl;
		//cout << X[Row_MainElementChange_Temp[loop]] << endl;//loop��������Ϣ�� Row_MainElementChange_Temp[loop]Ӧ�洢��Ϣ 
	}
	*/

	return 'T';
}


//============================================================================//
//������Ʋ���
void v_LoadingControlPara(s_Control* temp_Control,s_ImageAbstract* ImageAbstract)
{//�궨����ͷ
    temp_Control->image_ratio[0] = 0.208748;//0.201252;//0.197369;//0.204188;//0.208997;//0.197502;//0.208333;//0.211618;//0.210896;//0.219466;//0.208334;//0.205882;//0.197133;//0.199867;//0.203863;//0.196078;//0.211268;//0.21544;//0.214521;
    temp_Control->image_ratio[1] = -0.28492;//-0.330947;//-0.346889;//-0.319372;//-0.322453;//-0.28698;//-0.347223;//-0.342706;//-0.368956;//-0.353542;//-0.359477;//-0.388292;//-0.339773;//-0.321889;//-0.372046;//-0.352113;//-0.314186;//-0.313531;
    temp_Control->image_ratio[2] = 4.49617;//7.18246;//7.02152;//5.69634;//7.00238;//6.60703;//6.66668;//6.15114;//6.85113;//7.229797;//8.11765;//8.04659;//7.80144;//6.65236;//7.45099;//5.98592;//4.9641;//6.10561;
    temp_Control->image_ratio[3] = 1.49012e-08;//-1.49012e-08;//8.9407e-08;//-2.98023e-8;//0;//5.96046e-08;//2.98023e-08;//-1.49012e-08;//0;//4.47035e-08;//9.9407e-08;//2.98023e-08;//-2.98023e-08;//5.96046e-08;//-4.47035e-08;//-1.49012e-08;//-1.04308e-07;//1.49012e-8;
    temp_Control->image_ratio[4] = 0.548993;//0.299642;//0.460528;//0.418847;//0.286626;//0.259964;//0.3373;//0.303164;//0.470739;//0.34091;//0.48366;//0.382318;//0.499667;//0.515022;//0.351936;//0.598591;//0.399462;//0.41254;
    temp_Control->image_ratio[5] = -8.01251;//3.98927;//-2.43424;//2.30367;//8.32802;//9.61512;//4.28573;//8.20738;//0.839639;//9.5202;//-1.29413;//0.860222;//-3.43105;//-7.38198;//3.52942;//-9.96478;//8.4246;//-6.23711;//2.37625;
    temp_Control->image_ratio[6] = -5.82077e-10;//4.07454e-10;//4.42378e-09;//-1.5134e-9;//5.82077e-11;//7.85803e-10;//-1.86265e-09;//-1.01863e-09;//2.32831e-09;//2.46291e-09;//5.82077e-10;//5.82077e-10;//-5.82077e-10;//2.32831e-10;//-2.79397e-09;//1.16415e-09;//-5.19503e-09;//1.28057e-9;
    temp_Control->image_ratio[7] = -0.0118138;//-0.0129696;//-0.0131579;//-0.013089;//-0.0131369;//-0.0124914;//-0.0138889;//-0.0144991;//-0.0139949;//-0.0138889;//-0.0143791;//-0.0155317;//-0.0139907;//-0.0128755;//-0.0145802;//-0.0140845;//-0.0125673;//-0.0132013;
    
    ImageAbstract->LastFrame_CentralPos = 185/2;
}
//uint8 x_Jumpread = 0;
//uint8 viewer_car[60];
void v_ImageCut()//ͼ����Ϣ����//selfjudge_SendMessage=>
{
   // uint8 mayBeRampHappened = 0;
    
    uint8 LonlyLineCounter = 0;//�����Ա��ڸ��Ĵ���
    
    uint8 TurnOnTheLonlyLine = 0;
    
    uint8 SideChangeOccur = 0;
    
    uint8 FindLitteWidthTurning = 0;
    uint8 TurningBeacauseVeryLittle__isHappened = 0;
    /*
    for(uint8 loop = 0;loop < 60;loop++)
    {
        m_ImageTesting.Left_Side[loop] = 255;
        m_ImageTesting.Right_Side[loop] = 255;
    }
    */
    uint8 showLonlyLineFindAboutUpSet = '.';
    uint8 becauseThisOutOfTheBlackRtAngle = '.';
    uint8 showBlackCutBar = ' ';
    //uint8 show_BuzzerInfor = ' ';
    uint8 show_About_RtAngle = ' ';
    uint8 show_About_LonlyLine = ' ';
    uint8 show_isWrong = ' ';
    uint8 showYcutDown = 's';
    uint8 isOccurCross = 0;
    //uint8 firstAbout_ShutDownBackAbout_BlackLine = 0;
    //��������
    uint8 isHaveLonlyLineStartCorner = 0;
    uint8 HaveLonlyLineStartCornerLastLine = 255;
    
    const uint16 constNum_X_MaxCounter = 184;//=>�������һ��������
    const uint16 constNum_Line_MaxCounter = 60;//
    const uint16 constn_xFindJumpLine_Width = 3;//�������//�̶�ֵ
    const uint8  constn_DeadLine_BeWith = 3;
    //========================================================================//
    //
    /*
    typedef
    struct
    {
        uint8 y_start;
        uint8 
    }s_BlackBarFindSecond;
    s_BlackBarFindSecond BlackBarFindSecond;
    */
    struct ___vaild_heightInterval//�߶ȵ������Ч����
    {
	uint8 n_lastEnd_Y;// = m_height;//���յ�Y��ֵ => �����ɾ��Կ�ȶ� => ��������break����ѭ������
	uint8 n_firstStart_Y;// = 0;//��ʼֵ
    }vaild_heightInterval;
    vaild_heightInterval.n_firstStart_Y = 0;
    vaild_heightInterval.n_lastEnd_Y = constNum_Line_MaxCounter;//
    
    typedef 
    struct//ͼ��������ݿ��
    {
	float f_width_ratio[2];//��ȱ仯��
	float f_depth_ratio[5];//��ǰ������ȶ�Ӧ�ĳ�����Ϣ=>����15����ǰ���������
    }s_Frame_Trk;
    s_Frame_Trk Frame_Trk;
    do//��ܸ�ֵ//�϶�30Ϊ��׼���
    {
	float a = m_Control.image_ratio[0];//float b = m_Control.image_ratio[1];//float c = m_Control.image_ratio[2];
	float e = m_Control.image_ratio[4];//float d = m_Control.image_ratio[3];
	float f = m_Control.image_ratio[5];//float g = m_Control.image_ratio[6];
	float h = m_Control.image_ratio[7];
	Frame_Trk.f_width_ratio[1] = 30.f * h / a;//float f_width_ratio[2];//x = (30*h/a)*y + 30/a//���Կ��ϵ��
	Frame_Trk.f_width_ratio[0] = 30.f / a;

	Frame_Trk.f_depth_ratio[0] = -30.f * h * h;//y*y
	Frame_Trk.f_depth_ratio[1] = -60.f * h;//y
	Frame_Trk.f_depth_ratio[2] = -30.f;//1

	Frame_Trk.f_depth_ratio[3] = 30.f * h * h;//y
	Frame_Trk.f_depth_ratio[4] = (30.f + f)*h - e;//1

#define GetYaxis(Y)                     ((m_Control.image_ratio[4]*Y+m_Control.image_ratio[5])/(m_Control.image_ratio[7]*Y+1))

#define GetWidthFromY(Y)                (Frame_Trk.f_depth_ratio[0]*y*y+\
                                         Frame_Trk.f_depth_ratio[1]*y+\
                                         Frame_Trk.f_depth_ratio[2])
        
#define Get45cmLengthFromY(y)        (Frame_Trk.f_depth_ratio[0]*y*y\
                                     +Frame_Trk.f_depth_ratio[1]*y\
                                     +Frame_Trk.f_depth_ratio[2])/\
                                     (Frame_Trk.f_depth_ratio[3]*y\
                                     +Frame_Trk.f_depth_ratio[4])
        
    } while (0);
    //========================================================================//
    uint16 perLine_vaild_width = constNum_X_MaxCounter;// - 1;//185-1//һ����Ч��� => 184
    //========================================================================//
    //sint16 lostDouble_UpestHeight = 0;//��˫�߼������ֵ
    uint8 lostDouble_TimerCounter = 0;//˫�߼�ʱ��
    uint8 lostDouble_UpestHeight = 255;
    //uint8 lostDouble_AllCounter = 0;
    
    typedef
    enum
    {
        LDb_WaitingDrawing,
        LDb_None,
    }u_LostDoubleFlag;
    typedef
    struct
    {
        u_LostDoubleFlag Flag;// = 0;
        uint8 Gaia_X;// = 0;
        uint8 Gaia_Y;// = 0;
    }s_LostDouble;//���ƶ�ʧ˫�� => ����Ҫ�õĵط���ʮ��
    s_LostDouble LostDouble;
    LostDouble.Flag = LDb_None;
    LostDouble.Gaia_X = 0;
    LostDouble.Gaia_Y = 0;
    
    /*
    typedef
    struct
    {
        uint8 startLine;
        uint8 LastWidthVar;
        //uint8 LostDoubleTimer;
        uint8 LastWitdh_YaxisVal;
        u_Side TurnSide;
    }s_BlackBarAbout10cm;
    s_BlackBarAbout10cm BlackBarAbout10cm;
    BlackBarAbout10cm.startLine = 255;
    BlackBarAbout10cm.LastWidthVar = 255;
    BlackBarAbout10cm.LastWitdh_YaxisVal = 255;
    */
    //BlackBarAbout10cm.LostDoubleTimer = 0;



    /* //����Ϊ��������
     * ���� �� => ��������Ѱ��
     *      �� => Ѱ���Ƿ�����ֱ������
     * ------------------------------------------------------------------- *
     *
     */    
    uint16 x_startPos = m_ImageAbstract.LastFrame_CentralPos;//x����ʼλ�ã�ȡֵ��ΧΪ0 - m_width//����������λ��
    sint16 x_startPos_n_add_one = m_ImageAbstract.LastFrame_CentralPos;//x(n+1)
    //========================================================================//
    //========================================================================//
    //����������ı���λ��
    typedef
    struct//�����������
    {
	uint8 n_right_end;//Right��ֹ�½���
	uint8 n_left_end;//Left��ֹ�½���
	uint8 n_right_banDone;//Right�����������
	uint8 n_left_banDone;//Left�����������
        uint8 n_left_banDone_firstLine;
        uint8 n_right_banDone_firstLine;
    }s_number_Trk;//����������Ϣ
    s_number_Trk number_Trk;//��ֵ�ź�//����һ��Ϊ��ʼ��
    number_Trk.n_left_banDone = 0;number_Trk.n_right_banDone = 0;number_Trk.n_left_end = 0;number_Trk.n_right_end = 0;
    //========================================================================//

    typedef
    struct
    {
        uint8 Last_BlackLine_suddenlyHappen;//���һ�κ�ɫ�м���
        /*uint8 LastBlackLine_add_15cm_Line;//15cm�����X��λ��
        float LastBlackLine_add_15cm_LeftRow;//15cm�����Y��λ��
        float LastBlackLine_add_15cm_RightRow;//15cm�����Y��λ��*/
        uint8 LastBlackLine_RowSideWhich;
        uint8 AllBeforeisBlack;
        uint8 hasHappened_Once;
    }s_LastSide;//����
    s_LastSide LastSide;//���һ��
    //LastSide.now_color = color_NaN;
    LastSide.Last_BlackLine_suddenlyHappen = 255;//���һ�κ�
    LastSide.AllBeforeisBlack = 0;
    LastSide.hasHappened_Once = 0;
    //========================================================================//
    typedef
    struct
    {
	uint8 leftSide_isDown;//�Ƿ���Ч����
	uint8 rightSide_isDown;
        
	uint8 leftSide_isUp;//�������Ƿ����
	uint8 rightSide_isUp;
    }s_LogicCondition;//�߼��źŽṹ��
    s_LogicCondition LogicCondition;//�߼���Ϣ����//����һ��Ϊ�߼��ж�
    LogicCondition.leftSide_isDown = 0;LogicCondition.leftSide_isUp = 0;LogicCondition.rightSide_isDown = 0;LogicCondition.rightSide_isUp = 0;

	//����Ϊ��Ϣֵ
    uint16 perLine_JumpNumVaild = 0;//������ֵ//һ�д��ڴ���ֵʱ����������϶�Ϊ����
    uint16 perLine_JumpNumNonVaild = 0;//������Чֵ//һ��С�ڴ���ֵʱ��������ΪΪ������
	//������˵�������ڷ�Χ��Խ�࣬����ֵԽ����
	//����һ�λ�ȡ�������ǲ���֪����
    typedef
    struct
    {
        u_Side side;
        uint8 y_start;
        uint8 y_end;
        uint8 isHappened;
    }
    s_TurningBeacauseVeryLittle;
    s_TurningBeacauseVeryLittle TurningBeacauseVeryLittle;
    TurningBeacauseVeryLittle.isHappened = 0;
	//=>����һ��˼·����ȡ���к���������ֵ��Ȼ������������ж�
	//���������ж��������϶�Ϊ���ʵĵ���
	//�������ʱ�������ݴ���һ���飬Ȼ����������

	//===================================================//
	//���봦����
	//ǰ��������
    //=>��Ч�߶������趨
    vaild_heightInterval.n_firstStart_Y = 0;//
    vaild_heightInterval.n_lastEnd_Y = constNum_Line_MaxCounter;//������ʱ
    //
    do//��βȷ��//vaild_heightInterval
    {
	for (uint16 loop = 0; loop < constNum_Line_MaxCounter; loop++)//����ȫ�����
	{
            float TrkAll_width = Frame_Trk.f_width_ratio[1] * loop + Frame_Trk.f_width_ratio[0];
            float Trk_onePoint_width = TrkAll_width / 15.f;
            if (TrkAll_width >= constNum_X_MaxCounter)//��ȡ�����
            {
                vaild_heightInterval.n_firstStart_Y = loop;//��ȡ���
            }
            if (Trk_onePoint_width <= 1)
            {
		vaild_heightInterval.n_lastEnd_Y = loop;//��ȡ��Զ
		break;//����
            }
	}
    } while (0);
    m_ImageAbstract.Start_Y_Position = vaild_heightInterval.n_firstStart_Y;
    //========================================================================//
    //========================================================================//
    //========================================================================//
    x_startPos = m_ImageAbstract.LastFrame_CentralPos;//���ϴ���ֵ�̳��ڱ��� => ��һ������ֵ�̳� =>����������й�ϵ����Ҫ�����߽������ɾ��
    //========================================================================//
    //========================================================================//
    //========================================================================//
//	x_startPos = m_width / 2;//��ʼ��ֵ
    sint16 process_find_timer = -1;//������Ѱʱ��
    //=====================================================================================================//
    //�����жϻ���
    // Numberȫ����ʼ��
    uint8 lr_n_cut_1_isExist = 3;//�����Ƿ���ڱ�־3=>�����ڣ�0��1��2��
    
    m_Control.need_TurnLeft = 0;
    m_Control.need_TurnRight = 0;
    m_Control.need_Hold = 0;
    number_Trk.n_left_banDone_firstLine = 255;
    number_Trk.n_right_banDone_firstLine = 255;
    //=====================================================================================================//
    uint16 LastJumpVaildNumber = 0;
    //uint8 isNeed2FinderRight = 0;
    //uint8 isShould2FinderLeft = 0;
    
    u_Side TrkSide[60];
    //
    uint8 end_y_ctr = vaild_heightInterval.n_lastEnd_Y;//��ǰ��ֵ�����տ������
    for (uint8 y_ctr = vaild_heightInterval.n_firstStart_Y;
                y_ctr < vaild_heightInterval.n_lastEnd_Y;
                y_ctr++)//��ֵѭ���ж�=>�������绷��Ϊ185�����ڣ������⴦�Ŀ��ӦС�� constn_xFindJumpLine_Width
    {
        //m_ImageAbstract.Central[y_ctr] = x_startPos_n_add_one;
        number_Trk.n_left_end = 255;
        number_Trk.n_right_end = 255;
        number_Trk.n_left_banDone = 255;
        number_Trk.n_right_banDone = 255;
        //�������ʱ��=============================================//
	process_find_timer++;//��Ѱ�����ж�=>��ֹ��Ϊ��������µ�ʧ��
        //
	perLine_vaild_width = (uint16)(Frame_Trk.f_width_ratio[1] * (float)y_ctr + Frame_Trk.f_width_ratio[0]);//��Ч�е�������Ч��
	m_ImageAbstract.width[y_ctr] = perLine_vaild_width;
        
        //Ŀ���һֱѰ�ҵ��½��ػ���Ѱ��ʧ��
        
        uint8 isMaybefoundShutDown = 0;
        //====================================================================//
        if(process_find_timer > 0)//�϶�����һ������Ϣ�����
        {
            sint16 n_jumpVar = m_ImageBeholder_Data[y_ctr][x_startPos] - 
                               m_ImageBeholder_Data[y_ctr - 1][x_startPos];
            sint16 absn_jumpVar = __ABS(n_jumpVar);
            if ((absn_jumpVar > perLine_JumpNumVaild)&&(absn_jumpVar > perLine_JumpNumNonVaild))
            {
                if(n_jumpVar < 0)
                {
                    LastSide.Last_BlackLine_suddenlyHappen = y_ctr;//������
                    LastSide.hasHappened_Once = 1;
                    isMaybefoundShutDown = 1;
                    //break;�����ҵ���һ���ڵ�
                }
            }
            if(process_find_timer > 1)
            {
                n_jumpVar = m_ImageBeholder_Data[y_ctr][x_startPos] - m_ImageBeholder_Data[y_ctr - 2][x_startPos];
                absn_jumpVar = __ABS(n_jumpVar);
                if (absn_jumpVar > LastJumpVaildNumber)
                {
                    if(n_jumpVar < 0)
                    {
                        LastSide.Last_BlackLine_suddenlyHappen = y_ctr;//������
                        LastSide.hasHappened_Once = 1;
                        isMaybefoundShutDown = 1;
                        //break;�����ҵ���һ���ڵ�
                    }
                }
            }
            LastJumpVaildNumber = (perLine_JumpNumVaild > perLine_JumpNumNonVaild)?perLine_JumpNumVaild:perLine_JumpNumNonVaild;
        }//�����жϵ��Ǳ������ĵ����ɫ
        
        
        
        do//��ȡÿ�е���Ϣ-----------------------------------------------------//
	{//��δ����Ѿ�������ȷ���У���ɾȥһЩ�м�����������δ���ı����ǵó����ʵ�������ֵ��
            uint8 perline_aver_pixelNumber = 0;uint8 perline_jump_max2min = 0;uint32 AllPixel_Counter = 0;
            uint8 maxPixel = 0;uint8 minPixel = 255;uint8 BookLineNumber = 0;//��¼������
            for (uint16 loop = 0; loop < constNum_X_MaxCounter; loop++)//ѭ����ʼ
            {
                if(0 != m_ImageBeholder_Data[y_ctr][loop])
                {
                    BookLineNumber ++;AllPixel_Counter += m_ImageBeholder_Data[y_ctr][loop];
                    if (m_ImageBeholder_Data[y_ctr][loop] > maxPixel){ maxPixel = m_ImageBeholder_Data[y_ctr][loop]; }
                    if (m_ImageBeholder_Data[y_ctr][loop] < minPixel){ minPixel = m_ImageBeholder_Data[y_ctr][loop]; }
                }
            }//����ѭ������
            perline_aver_pixelNumber = AllPixel_Counter / BookLineNumber;//��ֵ
            perline_jump_max2min = maxPixel - minPixel;//��ֵ
            perLine_JumpNumVaild = (uint8)((float)perline_jump_max2min * 0.4f);//��������ֵ
            perLine_JumpNumNonVaild = (uint8)((float)perline_aver_pixelNumber * 0.4f);//��������ֵ
	} while (0);//������ȡ���---------------------------------------------//
        /*����ǵ�һ���ж������Խ���һ�ι�������㾿���Ǻڵ㻹�ǰ׵���ж�*/
        do//Ѱ��������
	{
            //======���ƥ��==================================================//
            uint16 n_find_half_mutlwidth = (uint16)((perLine_vaild_width * 1.414f * 1.25f)/2.f);//����Կ�ȳ��Ժ���ƫ��=>�����������ֵ
            sint16 x_rightLimitNum = x_startPos + n_find_half_mutlwidth;//�Ҳ����
            sint16 x_leftLimitNum = x_startPos - n_find_half_mutlwidth;//������//���ۺ�������
			
            uint16 tempx_rightLimitNum = x_rightLimitNum;
            if (x_rightLimitNum > constNum_X_MaxCounter - constn_xFindJumpLine_Width)
            { tempx_rightLimitNum = constNum_X_MaxCounter - constn_xFindJumpLine_Width; }//��������

            uint16 tempx_leftLimitNum = x_leftLimitNum;
            if (x_leftLimitNum < constn_xFindJumpLine_Width){ tempx_leftLimitNum = constn_xFindJumpLine_Width; }//��������
			
            if(process_find_timer <= constn_DeadLine_BeWith)//3����
            {//����ǰ��
                tempx_leftLimitNum = constn_xFindJumpLine_Width + constn_xFindJumpLine_Width;
                tempx_rightLimitNum = constNum_X_MaxCounter - constn_xFindJumpLine_Width - constn_xFindJumpLine_Width;
            }//����������Ǻ����˵�����������ҵ��µ�ѭ��ʧ��
            
            if(1 == TurningBeacauseVeryLittle.isHappened)
            {
                if(Sid_Left == TurningBeacauseVeryLittle.side)
                {tempx_rightLimitNum = constNum_X_MaxCounter - constn_xFindJumpLine_Width - constn_xFindJumpLine_Width;}
                if(Sid_Right == TurningBeacauseVeryLittle.side)
                {tempx_leftLimitNum = constn_xFindJumpLine_Width + constn_xFindJumpLine_Width;}
            }
            //======�����Ƿ����==============================================//
            LogicCondition.rightSide_isUp = 0;//�Ƿ����������
            LogicCondition.rightSide_isDown = 0;//�Ƿ������Ч����
            for (sint16 LINE_CTR = x_startPos;
                        LINE_CTR + constn_xFindJumpLine_Width < tempx_rightLimitNum; 
                        LINE_CTR++)//��������
            {
		sint16 n_jumpVar = m_ImageBeholder_Data[y_ctr][LINE_CTR] - m_ImageBeholder_Data[y_ctr][LINE_CTR + constn_xFindJumpLine_Width];
                sint16 absn_jumpVar = __ABS(n_jumpVar);

		if ((absn_jumpVar > perLine_JumpNumVaild)
                 && (absn_jumpVar > perLine_JumpNumNonVaild))
                {
                    if (n_jumpVar > 0)//�½���
                    {
			number_Trk.n_right_end = LINE_CTR;
			LogicCondition.rightSide_isDown = 1;
			break;//������ѭ��
                    }
                    else//������
                    {
                        number_Trk.n_right_banDone = LINE_CTR;
                        LogicCondition.rightSide_isUp = 1;
                    }
                }
            }//������Ѱ���
            //======�����Ƿ����================================================================//
            LogicCondition.leftSide_isUp = 0;
            LogicCondition.leftSide_isDown = 0;
            for (sint16 LINE_CTR = x_startPos; 
                        LINE_CTR - constn_xFindJumpLine_Width >= tempx_leftLimitNum; 
                        LINE_CTR--)
            {
                sint16 n_jumpVar = m_ImageBeholder_Data[y_ctr][LINE_CTR] - m_ImageBeholder_Data[y_ctr][LINE_CTR - constn_xFindJumpLine_Width];
		sint16 absn_jumpVar = __ABS(n_jumpVar);

		if ((absn_jumpVar > perLine_JumpNumVaild)
		 && (absn_jumpVar > perLine_JumpNumNonVaild))
		{
                    if (n_jumpVar > 0)//�½���
                    {
			number_Trk.n_left_end = LINE_CTR;
			LogicCondition.leftSide_isDown = 1;
			break;//������ѭ��
                    }
                    else//������
                    {
			number_Trk.n_left_banDone = LINE_CTR;
			LogicCondition.leftSide_isUp = 1;
                    }
                }
            }//������Ѱ���
        } while (0);//������Ѱ�����
        
        if(0 == process_find_timer)//0��Ѱ
        {
            number_Trk.n_left_banDone_firstLine = number_Trk.n_left_banDone;
            number_Trk.n_right_banDone_firstLine = number_Trk.n_right_banDone;
        }
        
        //====================================================================//
        //������Щ����������ֹ��
        
        if(1 == isMaybefoundShutDown)
        {//����������Ҫ�رյĶ���
            if(((255!=number_Trk.n_right_banDone)&&(255!=number_Trk.n_left_banDone)
              &&((number_Trk.n_right_banDone-number_Trk.n_left_banDone)<=1.414*(m_ImageAbstract.width[y_ctr]/15.f))))
            { 
                //��������Ҫ�϶���
                //isHaveLonlyLineStartCorner = 1;//����
                HaveLonlyLineStartCornerLastLine = y_ctr;//�϶���һ��
                //LonlyLine_Counter ++;
            }
            else
            {
                if((process_find_timer>0)/*&&(1 != m_ImageAbstract.RtAngle_isLasting)*/)//����������ǿ�ƹر�RtAngle
                {//�������⴦��Ҫ��һ����У���Ȼ�ܺã����ܱ���
                    if((0 == TurningBeacauseVeryLittle.isHappened)&&(Sid_Double == TrkSide[y_ctr-1])
                    &&(__ABS(m_ImageAbstract.Right[y_ctr-1]-m_ImageAbstract.Left[y_ctr-1])<=m_ImageAbstract.width[y_ctr-1]/5))//9cm
                    {//���������Ϊ˫�߶����ڵ�ʱ�򣬲�����һ���߷ǳ�С��ʱ�򣬾Ϳ�����ô����//������������ȫ�жϣ���˵
//============================================================================//
                        showYcutDown = 'H'; 
                        uint8 central_Pos = m_ImageAbstract.Central[y_ctr-1];
                        uint8 finderStartY = y_ctr - 1;
                        //������Ѱ����y_ctr-1��//�趨����Ϊ��ȵ�һ��Ϳ�����
                        uint8 right_pluto_Pos = 255;
                        sint16 right_notTry = central_Pos + m_ImageAbstract.width[finderStartY]/2;//22.5cm����ͺܲ������ˣ����������Ӧ����10*0.866
                        if(right_notTry > 181-3){right_notTry = 181 - 3;}
                        if(right_notTry < 3+3){right_notTry = 3+3;}
                        for (sint16 LINE_CTR = central_Pos
                            ;LINE_CTR + constn_xFindJumpLine_Width <= right_notTry;LINE_CTR++)//��������
                        {sint16 n_jumpVar = m_ImageBeholder_Data[finderStartY][LINE_CTR]                           //�����Ǹ�ʵ�ʵ���
                                          - m_ImageBeholder_Data[finderStartY][LINE_CTR + constn_xFindJumpLine_Width];
                        sint16 absn_jumpVar = __ABS(n_jumpVar);//��ȡ����ֵ
                        if ((absn_jumpVar > perLine_JumpNumVaild) && (absn_jumpVar > perLine_JumpNumNonVaild)
                            && (n_jumpVar < 0)){right_pluto_Pos = LINE_CTR + constn_xFindJumpLine_Width;break;}//������ѭ��
                        }//������Ѱ���
                        uint8 left_pluto_Pos = 255;
                        sint16 left_notTry = central_Pos - m_ImageAbstract.width[finderStartY]/2;
                        if(left_notTry > 181-3){right_notTry = 181 - 3;}
                        if(left_notTry < 3+3){right_notTry = 3+3;}
                        for (sint16 LINE_CTR = central_Pos
                            ;LINE_CTR - constn_xFindJumpLine_Width >= left_notTry;LINE_CTR--)
                        {sint16 n_jumpVar = m_ImageBeholder_Data[finderStartY][LINE_CTR]
                                          - m_ImageBeholder_Data[finderStartY][LINE_CTR - constn_xFindJumpLine_Width];
                        sint16 absn_jumpVar = __ABS(n_jumpVar);//��ȡ����ֵ
                        if ((absn_jumpVar > perLine_JumpNumVaild) && (absn_jumpVar > perLine_JumpNumNonVaild)
                            && (n_jumpVar < 0)){left_pluto_Pos = LINE_CTR - constn_xFindJumpLine_Width;break;}//=>Ѱ�ҵ���һ������
                        }//������Ѱ���
                        if((left_pluto_Pos >= m_ImageAbstract.Left[finderStartY])&&(255 != m_ImageAbstract.Left[finderStartY]))
                        {
                            left_pluto_Pos = 255;
                        }
                        if((right_pluto_Pos <= m_ImageAbstract.Right[finderStartY])&&(255 != m_ImageAbstract.Right[finderStartY]))
                        {
                            right_pluto_Pos = 255;
                        }//����������ά��pluto_Pos
                        //����ά��pluto_Pos��ȡ������ֵ
                        m_ImageTesting.FindLitteWidthTurning_LeftFinder = left_pluto_Pos;
                        m_ImageTesting.FindLitteWidthTurning_RightFinder = right_pluto_Pos;
                        //���������Ǵ������У�����˵ײ����ĳ���Ǿ������������
                        //��2.5��Ϊ��2�����ǻ��Ǵ������඼�����ҵ����ص��������ʱ��Ҫ������һ������
                        
                        
                        //�����ǻ�������
                        u_Side Dir = Sid_NaN;
                        if(__ABS(left_pluto_Pos - central_Pos)>__ABS(right_pluto_Pos - central_Pos))
                        {central_Pos = right_pluto_Pos;
                        if(255 != central_Pos){Dir = Sid_Right;}}
                        if(__ABS(left_pluto_Pos - central_Pos)<__ABS(right_pluto_Pos - central_Pos))
                        {central_Pos = left_pluto_Pos;
                        if(255 != central_Pos){Dir = Sid_Left;}}//ȷ�����ĵ�Ӧ�ڵ�λ��
                        if(Sid_NaN == Dir)//==============================//
                        {//�˴�Ӧ����
                            Dir = Sid_NaN;
                            sint16 Y_counter_cut_5 = y_ctr-1 - 5;if(Y_counter_cut_5 < 0){Y_counter_cut_5 = 0;}
                            sint16 counter_cutAdd = 0;//��ּ���
                            for(sint16 Y_counter = y_ctr-1;Y_counter > Y_counter_cut_5;Y_counter--)
                            {
                                counter_cutAdd += (m_ImageAbstract.Central[Y_counter] - m_ImageAbstract.Central[Y_counter-1]);
                            }
                            if(counter_cutAdd < 0){Dir = Sid_Right;}
                            if(counter_cutAdd > 0){Dir = Sid_Left;}
                        }//===================================================//
                        //��ĿǰΪֹ��Ӧ�����ȶ�ʶ����
                        
                        
                        //m_ImageTesting.centralPosTurning = central_Pos;
                        m_ImageTesting.TurningSide = Dir;
                        uint8 wirte_Pos[60];
                        uint8 y_Cut = 255;//y_Cut��¼
                        if(Sid_Right == Dir)
                        {
                            FindLitteWidthTurning = 2;
                            showYcutDown = 'J';
                        }else
                        if(Sid_Left == Dir)
                        {
                            FindLitteWidthTurning = 1;
                            showYcutDown = 'j';
                        }
                        TurningBeacauseVeryLittle.y_end = y_ctr;

                            TurningBeacauseVeryLittle.side = Dir;
                            TurningBeacauseVeryLittle.isHappened = 1;
                            //showYcutDown = 'K';
                            if(Sid_Left == TurningBeacauseVeryLittle.side)
                            {
                                number_Trk.n_right_end = x_startPos;
                                x_startPos = x_startPos - m_ImageAbstract.width[y_ctr]*0.45;
                                if(y_ctr > 2)
                                {
                                    m_ImageAbstract.Central[y_ctr-1] = x_startPos;
                                    m_ImageAbstract.Central[y_ctr-2] = x_startPos;
                                }
                                LogicCondition.leftSide_isDown = 0;
                                LogicCondition.rightSide_isDown = 1;
                            }
                            else if(Sid_Right == TurningBeacauseVeryLittle.side)
                            {
                                number_Trk.n_left_end = x_startPos;
                                x_startPos = x_startPos + m_ImageAbstract.width[y_ctr]*0.45;
                                if(y_ctr > 2)
                                {
                                    m_ImageAbstract.Central[y_ctr-1] = x_startPos;
                                    m_ImageAbstract.Central[y_ctr-2] = x_startPos;
                                }
                                LogicCondition.leftSide_isDown = 1;
                                LogicCondition.rightSide_isDown = 0;
                            }
                            /************************************/
                            /*m_ImageAbstract.RtAngle_isLasting = 0;*/ //����Ļ������ֱ�Ǿ�ֱ���˳�ֱ�ǡ�
                            /*m_ModeMachine.*//*becauseThisOutOfTheBlackRtAngle = 'K';*/
                            //�������
                            isMaybefoundShutDown = 0;
                            goto endOfthisIf;
                    }
                }
                
                end_y_ctr = LastSide.Last_BlackLine_suddenlyHappen;//���Ʊ���
                break;
            }
            isMaybefoundShutDown = 0;
        }/*(1 == isMaybefoundShutDown)*/
endOfthisIf:
        //====================================================================//
        //��Ϣ�ۺ������ѧϰЧ����������
        m_ImageAbstract.Left_UpBlack2White[y_ctr] = 255;
        m_ImageAbstract.Right_UpBlack2White[y_ctr] = 255;
	if(2 == LogicCondition.leftSide_isDown + LogicCondition.rightSide_isDown)
	{//˫�߶����ڣ���ʱ����������Ҫ�Ĵ���
            TrkSide[y_ctr] = Sid_Double;
            lostDouble_TimerCounter = 0;//���߼Ĵ������
            x_startPos_n_add_one = (number_Trk.n_left_end + number_Trk.n_right_end) / 2;//��ȡ����ֵλ��
            /*
            if(m_ImageAbstract.Right[y_ctr] - m_ImageAbstract.Left[y_ctr] >= 1.5*m_ImageAbstract.width[y_ctr])
            {
                mayBeRampHappened = 1;
            }
            */
            lr_n_cut_1_isExist = 2;//
	}
	else//���������߶϶�
	{
            if ((1 == LogicCondition.leftSide_isDown) || (1 == LogicCondition.rightSide_isDown))
            {
                lostDouble_TimerCounter = 0;//���߼Ĵ������
		if (1 == LogicCondition.leftSide_isDown)//��߽���Ч
		{
                    TrkSide[y_ctr] = Sid_Left;
                    x_startPos_n_add_one = (sint16)(number_Trk.n_left_end + perLine_vaild_width*0.45f);//�൱�ڲ���
                    if((x_startPos_n_add_one < x_startPos)&&(process_find_timer > 2))//������ֵ���ϴ���ֵ�����
                    {
                        x_startPos_n_add_one = m_ImageAbstract.Central[y_ctr-1]//·����PD����
                                            + (m_ImageAbstract.Central[y_ctr-2]-m_ImageAbstract.Central[y_ctr-3]);
                    }
                    if((process_find_timer < constn_DeadLine_BeWith)&&(process_find_timer > 0))
                    {
                        if(x_startPos_n_add_one < m_ImageAbstract.Central[y_ctr-1]){x_startPos_n_add_one = m_ImageAbstract.Central[y_ctr-1];}
                    }
                }
                else//�ұ߽���Ч
		{
                    TrkSide[y_ctr] = Sid_Right;
                    x_startPos_n_add_one = (sint16)(number_Trk.n_right_end - perLine_vaild_width*0.45f);//�൱�ڲ���
                    if((x_startPos_n_add_one > x_startPos)&&(process_find_timer > 2))//������ֵ���ϴ���ֵ���ұ�
                    {// 0 1 2 (3)
                        x_startPos_n_add_one = m_ImageAbstract.Central[y_ctr-1] 
                                            + (m_ImageAbstract.Central[y_ctr-2]-m_ImageAbstract.Central[y_ctr-3]);
                    }
                    if((process_find_timer < constn_DeadLine_BeWith)&&(process_find_timer > 0))
                    {
                        if(x_startPos_n_add_one > m_ImageAbstract.Central[y_ctr-1]){x_startPos_n_add_one = m_ImageAbstract.Central[y_ctr-1];}
                    }
                }//Ѱ�߽���
                if(2 == lr_n_cut_1_isExist)
                {
                    if(process_find_timer > 2)//Ϊ�˹���
                    {
                        m_ImageAbstract.Central[y_ctr - 1] = x_startPos_n_add_one;//��ֵ���ϴ�
                        m_ImageAbstract.Central[y_ctr - 2] = x_startPos_n_add_one;//��ֵ�����ϴ�
                    }
                }
                lr_n_cut_1_isExist = 1;//����һ����                
            }
            if (((0 == LogicCondition.leftSide_isDown) && (0 == LogicCondition.rightSide_isDown))
            && (!(((255!=number_Trk.n_right_banDone)&&(255!=number_Trk.n_left_banDone)
        &&((number_Trk.n_right_banDone-number_Trk.n_left_banDone)<=1.414*(m_ImageAbstract.width[y_ctr]/15.f))))))
            {
                TrkSide[y_ctr] = Sid_None;
                                
                if((process_find_timer < constn_DeadLine_BeWith)&&(lostDouble_TimerCounter == process_find_timer))
                {//ȫ��ȫ�ں̣ܶ����Ҹ���ǰ�ܽ���
                //���������������ʮ��ȫ�ס����䶪�ߡ����ȿ��������ڲ෶Χ
                    x_startPos_n_add_one = m_ImageAbstract.LastFrame_CentralPos;//
                    //�϶��ϴδ�ʱ��Χ�����̷�Χ��ά���ý��������ȫ�����
                }
                else//�������ʹ����һ�������
                {
                    x_startPos_n_add_one = x_startPos;//���ϴ���ֵ����ǰ��ֵ//��������С���ˣ������㸴��
                }
                    
                if(process_find_timer > 3)//ǰ������=>�����βŻ���Ч
                {
                    x_startPos_n_add_one = m_ImageAbstract.Central[y_ctr-1] + 
                                         ((m_ImageAbstract.Central[y_ctr-1] - m_ImageAbstract.Central[y_ctr-2])
                                         +(m_ImageAbstract.Central[y_ctr-2] - m_ImageAbstract.Central[y_ctr-3]))/2;
                }
                
                lostDouble_TimerCounter++;//���߼���
                
                if(1 == lostDouble_TimerCounter)//��ʧ��������
                {//��һ��˫�߶���ʧ��¼�´˿�����ʮ�ֵĻ�����Ӧ���߶�Զ
                    float son = Frame_Trk.f_depth_ratio[0] * y_ctr*y_ctr + Frame_Trk.f_depth_ratio[1] * y_ctr + Frame_Trk.f_depth_ratio[2];
                    float mother = Frame_Trk.f_depth_ratio[3] * y_ctr + Frame_Trk.f_depth_ratio[4];
                    lostDouble_UpestHeight = (sint16)(son / mother);//��ǰ�������ֵ
                    //�����¼��ֵ
                    LostDouble.Gaia_Y = y_ctr;
                } 
                if(lostDouble_TimerCounter > lostDouble_UpestHeight/2)//���ߴ�������һ��Ļ�
                {
                    LostDouble.Flag = LDb_WaitingDrawing;
                    //����ȴ���ֵ
                }
                
                
                lr_n_cut_1_isExist = 0;//��������ڴ˴����ĩβ
            }//�����ޱ�������Ĵ���
	}//��ĿǰΪֹ���½��ص���Ϣʶ��ȫ�����
        if(((255!=number_Trk.n_right_banDone)&&(255!=number_Trk.n_left_banDone)
        &&((number_Trk.n_right_banDone-number_Trk.n_left_banDone)<=1.414*(m_ImageAbstract.width[y_ctr]/15.f))))
        {
            lostDouble_TimerCounter = 0;//���߼Ĵ������
            
            TrkSide[y_ctr] = Sid_DoubleBlack;
            isHaveLonlyLineStartCorner = 1;
            x_startPos_n_add_one = (number_Trk.n_right_banDone+number_Trk.n_left_banDone)/2;
            
            HaveLonlyLineStartCornerLastLine = y_ctr;//�϶���һ��
        }
        
        if((LDb_WaitingDrawing == LostDouble.Flag)&&(0 == lostDouble_TimerCounter))
        {
            if(m_ImageAbstract.Start_Y_Position != LostDouble.Gaia_Y)
            {
                LostDouble.Flag = LDb_None;lostDouble_UpestHeight = 255;
                isOccurCross = 1;
                float Y_cut = y_ctr - (LostDouble.Gaia_Y - 1);
                float X_cut = m_ImageAbstract.Central[y_ctr] - 
                              m_ImageAbstract.Central[LostDouble.Gaia_Y - 1];
                float K = X_cut / Y_cut;
                float B = m_ImageAbstract.Central[LostDouble.Gaia_Y - 1] 
                        - K*(LostDouble.Gaia_Y - 1);
                for(uint8 loop = LostDouble.Gaia_Y - 1;
                          loop < y_ctr;
                          loop ++)
                {
                    m_ImageAbstract.Central[loop] = (uint8)(K * (float)loop + B);
                }
            }
            else
            {
                LostDouble.Flag = LDb_None;lostDouble_UpestHeight = 255;
                isOccurCross = 1;
                float Y_cut = y_ctr - (m_ImageAbstract.Start_Y_Position);
                float X_cut = m_ImageAbstract.Central[y_ctr] - 
                              m_ImageAbstract.Central[m_ImageAbstract.Start_Y_Position];
                float K = X_cut / Y_cut;
                float B = m_ImageAbstract.Central[m_ImageAbstract.Start_Y_Position] 
                        - K*(m_ImageAbstract.Start_Y_Position);
                for(uint8 loop = m_ImageAbstract.Start_Y_Position;
                          loop < y_ctr;
                          loop ++)
                {
                    m_ImageAbstract.Central[loop] = (uint8)(K * (float)loop + B);
                }
            }
        }
        
        if(255 != number_Trk.n_right_end)
        {
            uint8 right_pluto_Pos = 255;
            sint16 rightShutDown = number_Trk.n_right_end + m_ImageAbstract.width[y_ctr]/5;//9cm/�����ſ�11.5cm��Щ
            if(rightShutDown>181){rightShutDown = 181;}
            if(rightShutDown<3){rightShutDown = 3;}
            for (sint16 LINE_CTR = number_Trk.n_right_end;LINE_CTR + constn_xFindJumpLine_Width <= rightShutDown;LINE_CTR++)//��������
            {sint16 n_jumpVar = m_ImageBeholder_Data[y_ctr][LINE_CTR]                           //�����Ǹ�ʵ�ʵ���
                              - m_ImageBeholder_Data[y_ctr][LINE_CTR + constn_xFindJumpLine_Width];
            sint16 absn_jumpVar = __ABS(n_jumpVar);//��ȡ����ֵ
            if ((absn_jumpVar > perLine_JumpNumVaild) && (absn_jumpVar > perLine_JumpNumNonVaild)
                && (n_jumpVar < 0)){right_pluto_Pos = LINE_CTR + constn_xFindJumpLine_Width;break;}//������ѭ��
            }//������Ѱ���
            m_ImageAbstract.Right_UpBlack2White[y_ctr] = right_pluto_Pos;//255;
        }
        if(255 != number_Trk.n_left_end)
        {
            uint8 left_pluto_Pos = 255;
            sint16 leftShutDown = number_Trk.n_left_end - m_ImageAbstract.width[y_ctr]/5;//9cm
            if(leftShutDown>181){leftShutDown = 181;}
            if(leftShutDown<3){leftShutDown = 3;}
            for (sint16 LINE_CTR = number_Trk.n_left_end;LINE_CTR - constn_xFindJumpLine_Width >= leftShutDown;LINE_CTR--)
            {sint16 n_jumpVar = m_ImageBeholder_Data[y_ctr][LINE_CTR]
                              - m_ImageBeholder_Data[y_ctr][LINE_CTR - constn_xFindJumpLine_Width];
            sint16 absn_jumpVar = __ABS(n_jumpVar);//��ȡ����ֵ
            if ((absn_jumpVar > perLine_JumpNumVaild) && (absn_jumpVar > perLine_JumpNumNonVaild)
                && (n_jumpVar < 0)){left_pluto_Pos = LINE_CTR - constn_xFindJumpLine_Width;break;}//=>Ѱ�ҵ���һ������
            }//������Ѱ���
            m_ImageAbstract.Left_UpBlack2White[y_ctr] = left_pluto_Pos;//255;
        }
            
        if(x_startPos_n_add_one > constNum_X_MaxCounter - constn_xFindJumpLine_Width * 2)
        {x_startPos_n_add_one = constNum_X_MaxCounter - constn_xFindJumpLine_Width * 2;}//�޷�������Ϣ
        if(x_startPos_n_add_one < constn_xFindJumpLine_Width * 2)
        {x_startPos_n_add_one = constn_xFindJumpLine_Width * 2;}
        

        
        m_ImageAbstract.Central[y_ctr] = x_startPos_n_add_one;
        m_ImageAbstract.Left[y_ctr] = number_Trk.n_left_end;//���߼�Ϊ255
        m_ImageAbstract.Right[y_ctr] = number_Trk.n_right_end;
        //m_ImageTesting.hazardvaildLine[y_ctr] = m_ImageAbstract.Central[y_ctr];
        
        end_y_ctr = y_ctr;//ÿ�ζ�����   
        x_startPos = x_startPos_n_add_one;//���߼̳�
        
        if(1 == LastSide.AllBeforeisBlack)//����һ��ʼ�Ǻ�ɫ
        {
            LastSide.AllBeforeisBlack = 0;
            for(uint8 loop = 0;loop < y_ctr;loop++)
            {
                m_ImageAbstract.Central[loop] = m_ImageAbstract.Central[y_ctr];//
            }
        }
        /*
        if(process_find_timer < 3)
        {//����С��3�Ļ�
            if((x_startPos<=6)&&(Sid_Right == TrkSide[y_ctr]))
            {
                sint16 x_should_pos = (number_Trk.n_right_end + m_ImageAbstract.width[y_ctr]/9);//+5cm
                if(x_should_pos > 181){x_should_pos = 181;}
                if(x_should_pos < 3){x_should_pos = 3;}
                x_startPos = x_should_pos;
                uint8 MarkTimer = process_find_timer;
                while(0!=MarkTimer)
                {
                    m_ImageAbstract.Central[y_ctr - MarkTimer] = x_startPos;
                    MarkTimer--;
                }
            }
            if((x_startPos>=181-3)&&(Sid_Left == TrkSide[y_ctr]))
            {
                sint16 x_should_pos = (number_Trk.n_left_end - m_ImageAbstract.width[y_ctr]/9);//-5cm
                if(x_should_pos > 181){x_should_pos = 181;}
                if(x_should_pos < 3){x_should_pos = 3;}
                x_startPos = x_should_pos;
                uint8 MarkTimer = process_find_timer;
                while(0!=MarkTimer)
                {
                    m_ImageAbstract.Central[y_ctr - MarkTimer] = x_startPos;
                    MarkTimer--;
                }
            }
        }*/
    }//���ν��� => ����Ҳ��һ��Ѱ�߽���
    uint8 end_y_ctr_AfterFinder = end_y_ctr;
    /*
    if(1 == m_ImageAbstract.openTheRamp)
    {
        uint8 isNeedJumpOut = 1;
        
        u_Side FirstSide = TrkSide[m_ImageAbstract.Start_Y_Position];
        uint8 FirstSideCounter = 0;
        uint8 DoubleSideCounter = 0;
        uint8 isOccurDoubleHave = 0;uint8 isOccurBreak = 0;
        
        for(uint8 loop = m_ImageAbstract.Start_Y_Position;loop < end_y_ctr;loop++)
        {
            if(Sid_Double != FirstSide)
            {
                if(FirstSide != TrkSide[loop]) 
                {
                    isOccurDoubleHave = 1;
                    if(Sid_Double != TrkSide[loop])
                    {
                        isOccurBreak = 1;break;
                    }
                    else
                    {
                        DoubleSideCounter++;
                    }
                }else{if(0==isOccurDoubleHave){FirstSideCounter++;}else{isOccurBreak = 1;break;}}
            }
            else
            {
                DoubleSideCounter ++;
                if(FirstSide != TrkSide[loop]){isOccurBreak = 1;break;}
            }
        }
        
        //���Դ������֪���µ��ļ���λ��
        uint8 RampEndYLine = DoubleSideCounter + FirstSideCounter;//�õ�
        uint8 RampStartLine = FirstSideCounter;
        
        uint8 width_cut = 0;
        uint8 check_counter = 0;
        //float Ratio = 0.f;
        
        m_ImageTesting.RampStart = RampStartLine;
        m_ImageTesting.RampEnd = RampEndYLine;
        
        uint8 RightCutLeft_New = 0;
        
        for(uint8 loop = RampStartLine + 1;loop < RampEndYLine;loop++)
        {//�������ȫ���Ĺ���
            if((255 == m_ImageAbstract.Right[loop])||(255 == m_ImageAbstract.Left[loop]))
            {continue;}
            check_counter ++;
            uint8 RightCutLeft = m_ImageAbstract.Right[loop] - m_ImageAbstract.Left[loop];
            //float RatioNew = (float)RightCutLeft / (float)m_ImageAbstract.width[loop];
            if(1.25*RightCutLeft < RightCutLeft_New)
            {
                RampEndYLine = loop;
                isNeedJumpOut = 0;
                break;
            }
            RightCutLeft_New = RightCutLeft;
        }
        
        if(1 == isNeedJumpOut){goto endOfRampCut;}
         
        RightCutLeft_New = m_ImageAbstract.Right[RampStartLine + 1] - m_ImageAbstract.Left[RampStartLine + 1];
        sint16 cutChange = 0;sint16 cutChangeNew = 0;
        //sint16 cutChangeOK_Left = 0;sint16 cutChangeOK_Right = 0;
        uint8 RampExist = 0;//RampExist
        for(uint8 loop = RampStartLine + 1;loop < RampEndYLine;loop++)
        {
            uint8 RightCutLeft = m_ImageAbstract.Right[loop] - m_ImageAbstract.Left[loop];
            cutChange = RightCutLeft - RightCutLeft_New;
            
            if(loop > RampStartLine + 1)
            {
                if((!((cutChangeNew > -2*cutChange)&&(cutChangeNew < 2*cutChange)))&&(__ABS(cutChange)>3))
                {//�����б�ÿ���������ߵ�ͻ�����
                    RampExist = 1;
                    RampEndYLine = loop;//��¼��Ӧ�õ�
                    //������
                    isNeedJumpOut = 0;
                    break;
                }
            }
            
            cutChangeNew = cutChange;
            RightCutLeft_New = RightCutLeft;
        }
        if(1 == isNeedJumpOut){goto endOfRampCut;}
endOfRampCut://endOfRampCut => m_ImageAbstract.openTheRamp
        m_ImageAbstract.RampExist = RampExist;
    }
    */
    
    /*uint8 Back = 1;*/
    if(/*(0 == Back)&&*/(1 == TurningBeacauseVeryLittle.isHappened)&&(0 == m_ImageAbstract.RtAngle_isLasting)&&(0 == m_ImageAbstract.isLonlyLineNow))
    {//����ֱ�ǵĺڿ���
        
        sint16 centralPos = 0;sint16 centralPos_n_add_one = 0;
        TurningBeacauseVeryLittle__isHappened = 1;
        
        uint8 lastLine = TurningBeacauseVeryLittle.y_end + 10;
        if(lastLine > end_y_ctr){lastLine = end_y_ctr;}
        for(uint8 loop = m_ImageAbstract.Start_Y_Position;loop < end_y_ctr;loop++)
        {
            if(Sid_Left == TurningBeacauseVeryLittle.side)
            {
                if(255 != m_ImageAbstract.Right[loop])
                {
                    centralPos_n_add_one = (sint16)(m_ImageAbstract.Right[loop] - m_ImageAbstract.width[loop]*0.45f);//�൱�ڲ���
                    if((centralPos_n_add_one > centralPos)&&(loop > m_ImageAbstract.Start_Y_Position+2))//������ֵ���ϴ���ֵ�����
                    {
                        centralPos_n_add_one = m_ImageAbstract.Central[loop-1]//·����PD����
                                            + (m_ImageAbstract.Central[loop-2]-m_ImageAbstract.Central[loop-3]);
                    }
                    if((process_find_timer < constn_DeadLine_BeWith)&&(loop > m_ImageAbstract.Start_Y_Position))
                    {
                        if(centralPos_n_add_one < m_ImageAbstract.Central[loop-1]){centralPos_n_add_one = m_ImageAbstract.Central[loop-1];}
                    }
                    if((loop > TurningBeacauseVeryLittle.y_end)&&(loop < lastLine)&&(loop>2))
                    {
                        if(((m_ImageAbstract.Right[loop] < m_ImageAbstract.Right[loop+1]))
                          &&(255 != m_ImageAbstract.Right[loop])
                          &&(255 != m_ImageAbstract.Right[loop+1])) 
                        {
                            centralPos_n_add_one = m_ImageAbstract.Central[loop-1]
                                                 +(m_ImageAbstract.Central[loop-2]-m_ImageAbstract.Central[loop-3]);
                        }
                    }
                    if(centralPos_n_add_one > 181){centralPos_n_add_one = 181;}
                    if(centralPos_n_add_one < 3){centralPos_n_add_one = 3;}
                    centralPos = centralPos_n_add_one;
                    m_ImageAbstract.Central[loop] = centralPos;
                }
                
            }else
            if(Sid_Right == TurningBeacauseVeryLittle.side)
            {
                if(255 != m_ImageAbstract.Left[loop])
                {
                    centralPos_n_add_one = (sint16)(m_ImageAbstract.Left[loop] + m_ImageAbstract.width[loop]*0.45f);//�൱�ڲ���
                    if((centralPos_n_add_one < centralPos)&&(loop > m_ImageAbstract.Start_Y_Position+2))//������ֵ���ϴ���ֵ�����
                    {
                        centralPos_n_add_one = m_ImageAbstract.Central[loop-1]//·����PD����
                                            + (m_ImageAbstract.Central[loop-2]-m_ImageAbstract.Central[loop-3]);
                    }
                    if((process_find_timer < constn_DeadLine_BeWith)&&(loop > m_ImageAbstract.Start_Y_Position))
                    {
                        if(centralPos_n_add_one < m_ImageAbstract.Central[loop-1]){centralPos_n_add_one = m_ImageAbstract.Central[loop-1];}
                    }
                    if((loop > TurningBeacauseVeryLittle.y_end)&&(loop < lastLine)&&(loop>2))
                    {
                        if(((m_ImageAbstract.Left[loop] > m_ImageAbstract.Left[loop+1])&&(loop>2))
                          &&(255 != m_ImageAbstract.Left[loop])
                          &&(255 != m_ImageAbstract.Left[loop+1])) 
                        {
                            centralPos_n_add_one = m_ImageAbstract.Central[loop-1]
                                                 +(m_ImageAbstract.Central[loop-2]-m_ImageAbstract.Central[loop-3]);
                        }
                    }
                    if(centralPos_n_add_one > 181){centralPos_n_add_one = 181;}
                    if(centralPos_n_add_one < 3){centralPos_n_add_one = 3;}
                    centralPos = centralPos_n_add_one;
                    m_ImageAbstract.Central[loop] = centralPos;
                }
            }
        }

        //�������������ѭ��
        //TurningBeacauseVeryLittle.isHappened = 0;
    }
    
    /*
    if(255 != LastSide.Last_BlackLine_suddenlyHappen)//��ֹ15cm���߿���
    {
        end_y_ctr = LastSide.Last_BlackLine_suddenlyHappen;
        LastSide.Last_BlackLine_suddenlyHappen = 255;
    }
    */
    /*
    do//���������кܴ������
    {
        uint8 isLostDouble = 0;
        uint8 LostStart_Ypos = 0;
        uint8 isLostFirstFindAnother = 0;
        for(uint8 loop = m_ImageAbstract.Start_Y_Position;loop <= end_y_ctr;loop++)
        {
            isLostFirstFindAnother = 1;//ǰ��
            if(255 == m_ImageAbstract.Left[loop])
            {
                if(255 == m_ImageAbstract.Right[loop])//Ҳ����Խ�����ĵ�����������߲�����
                {
                    isLostFirstFindAnother = 0;//
                    if(0 == isLostDouble)
                    {
                        isLostDouble = 1;
                        if(m_ImageAbstract.Start_Y_Position != loop){LostStart_Ypos = loop - 1;}
                        else{LostStart_Ypos = loop;}//�������ṩ��ʧ��Yλ��
                    }
                }
                else//��ඪ��
                {
                }
            }
            else
            {
                if(255 == m_ImageAbstract.Right[loop])//�Ҳඪ��
                {
                }
                else//˫�߶�����
                {
                }
            }//�����жϽ���
            if((1 == isLostDouble)&&(1 == isLostFirstFindAnother))
            {
                isLostDouble = 0;
                float K = (m_ImageAbstract.Central[loop] - m_ImageAbstract.Central[LostStart_Ypos])/(loop - LostStart_Ypos);
                float B = m_ImageAbstract.Central[LostStart_Ypos] - K * LostStart_Ypos;
                
                for(uint8 inter = LostStart_Ypos;inter < loop;inter++)//����
                {//��δ��������������� => 6.3������
                    sint16 central_signed = (sint16)(B + K * inter);//���ߴ�����
                    if(central_signed > constNum_X_MaxCounter - constn_xFindJumpLine_Width)//����Ҳ������
                    {central_signed = constNum_X_MaxCounter - constn_xFindJumpLine_Width;}
                    if(central_signed < constn_xFindJumpLine_Width)
                    {central_signed = constn_xFindJumpLine_Width;}//����Ϊ���Ʒ�
                    m_ImageAbstract.Central[inter] = central_signed;//��ͼ
                }
                
            }//���߽���
        }//=======================================================================////
    }while(0);
    */
    /*
    m_ImageAbstract.BlackBarHeight_Start = BlackBarAbout10cm.startLine;
    m_ImageAbstract.BlackBarHeight_End = BlackBarAbout10cm.LastWitdh_YaxisVal;
    if(BlackBarAbout10cm.startLine != BlackBarAbout10cm.LastWitdh_YaxisVal)
    {//ֱ�Ӻ���ȫ��һ�����
        sint16 x_MidPos = 0.f;
        for(uint8 loop = BlackBarAbout10cm.startLine;loop < BlackBarAbout10cm.LastWitdh_YaxisVal;loop++)
        {
            if(Sid_Left == BlackBarAbout10cm.TurnSide)//�����Ч
            {
                x_MidPos = (sint16)(m_ImageAbstract.Left[loop] + m_ImageAbstract.width[loop] * 0.45);
            }
            if(Sid_Right == BlackBarAbout10cm.TurnSide)//�����Ч
            {
                x_MidPos = (sint16)(m_ImageAbstract.Right[loop] - m_ImageAbstract.width[loop] * 0.45);
            }
            if(x_MidPos > 184 - 3){x_MidPos = 184 - 3;}
            if(x_MidPos < 3){x_MidPos = 3;}
            m_ImageAbstract.Central[loop] = x_MidPos;
        }
    }
    */
    

    uint8 isMayBeHappenedHazard = 0;//���ܷ������ϰ�
    uint8 isHaveLonlyLine = 0;
    m_ImageTesting.isOccurLonlyLineBreak = 0;
    uint8 firstAndSecond_isBeenDrawing = 0;
    do//���е������ϰ�������
    {//���еı���ȫ��������������=>�ڿ顢�ϰ�������ȫ�����������
        //���������ܺ���ȷ���ҳ����߳��ֵĵط�����ȴ����׼ȷ���жϳ�����Ӧ������ĵط�
        //���ǵ����޷�ʶ�𣬶��ǵ�����ȫ��ʧ��ʱ�򣬶���������������Ҫ�޸ģ�����һ�����ǳ����ߵ�ʱ��Ľ�ֹ����
        //�����˳�������ߣ�����
        //������ǰ��ȫ������
        //u_LonlyLine thisTimeStatus = LLT_NaN;
        /*if(1 == TurningBeacauseVeryLittle.isHappened){break;}*/
        
        
        
        uint8 LonlyLineStartLine = 0;
        uint8 LonlyLineOccurCounter = 0;//���߷�������������
        uint8 temp_x_startPos_central[60];
        
        sint16 central_Pos_number = m_ImageAbstract.LastFrame_CentralPos;
        //��Ҫ��һ�ζ϶���ʼ��PosNumber����ֹ����
        sint16 left_Pos_number_CUT = 0;sint16 right_Pos_number_CUT = 0;
        //uint8 isOccurLonlyLine = 0;
        sint8 finderYtimeCounter = -1;
        //uint8 LonlyLineisHave_1isL_2isR = 0;
        
        uint8 firstTimeCut2LonlyLine = 255;
        uint8 isHaveLonlyLineOnce = 0;
        
        /*uint8 isNeedFindTheNearestsides = 1;*/
        uint8 leftSide_whoisnearestwithRight = 0;
        uint8 rightSide_whoisnearestwithLeft = 255;
        //uint8 lastOccurFilter_Line = 255;
        for(uint8 yCounter = m_ImageAbstract.Start_Y_Position;yCounter < end_y_ctr;yCounter ++)
        {//ֻҪ��ӵ�������䶼������ʶ��
            
            if(m_ImageAbstract.Start_Y_Position != yCounter)
            {
                left_Pos_number_CUT  = m_ImageAbstract.Central[yCounter-1]
                                     - m_ImageAbstract.width[yCounter]*0.3;
                right_Pos_number_CUT = m_ImageAbstract.Central[yCounter-1]
                                     + m_ImageAbstract.width[yCounter]*0.3;
                if(__ABS(m_ImageAbstract.Central[yCounter] - m_ImageAbstract.Central[yCounter-1])
                 >= m_ImageAbstract.width[yCounter]/4
                   )
                {
                    if(m_ImageAbstract.Central[yCounter]<m_ImageAbstract.Central[yCounter-1])
                    {
                        right_Pos_number_CUT = 181;
                    }
                    else
                    {
                        left_Pos_number_CUT = 3;
                    }
                }
            }
            else
            {
                left_Pos_number_CUT  = 3;
                right_Pos_number_CUT = 181;
            }
            
            if(left_Pos_number_CUT>181){left_Pos_number_CUT=181;}
            if(left_Pos_number_CUT<3){left_Pos_number_CUT=3;}
            if(right_Pos_number_CUT>181){right_Pos_number_CUT=181;}
            if(right_Pos_number_CUT<3){right_Pos_number_CUT=3;}
            m_ImageTesting.hazardvaildLine[yCounter] = left_Pos_number_CUT;
            //central_Pos_number = m_ImageAbstract.Central[yCounter];
            if(yCounter > m_ImageAbstract.Start_Y_Position)
            {
                if(Sid_None == TrkSide[yCounter]){TrkSide[yCounter] = TrkSide[yCounter-1];}
            }//�����϶�
            //m_ImageTesting.is140double130left150right160none_aboutUp[yCounter] = 80;
            /*m_ImageTesting.is140double130left150right160none_aboutUp[yCounter]
                = (uint8)(TrkSide[yCounter]);*/
            
            
            temp_x_startPos_central[yCounter] = m_ImageAbstract.Central[yCounter];//�ݴ����ڻָ�
            isHaveLonlyLineOnce = 0;
            //isHaveLonlyLine = 0;//����isHaveLonlyLine���Ա��ڼ���
            finderYtimeCounter++;//��ֹ��countinue��

            if((255 == m_ImageAbstract.Left_UpBlack2White[yCounter])&&
               (255 == m_ImageAbstract.Right_UpBlack2White[yCounter])
               &&(yCounter > m_ImageAbstract.Start_Y_Position))    
            {//��ȥ������������������ǿ����ҵ��˵���
                sint16 should_inThis;
                if(finderYtimeCounter > 1)
                {
                    if(finderYtimeCounter > 2)//����Ա��ε�������������
                    {////���ߴ������ؼ�����
                        should_inThis = m_ImageAbstract.Central[yCounter-1] + //��������Ӧ��������
                                (m_ImageAbstract.Central[yCounter-2] - m_ImageAbstract.Central[yCounter-3]);
                    }
                    else
                    {
                        should_inThis = m_ImageAbstract.Central[yCounter-1];
                    }
                    
                    if(should_inThis < 3){should_inThis = 3;}
                    if(should_inThis > 181){should_inThis = 181;}
                    
                    if((__ABS(should_inThis - m_ImageAbstract.Central[yCounter])>m_ImageAbstract.width[yCounter]/9)
                     &&((1 == isHaveLonlyLineStartCorner)||(1 == isHaveLonlyLine))
                     )
                    {//�������������=>�������������Ӧ�ø�Ϊ��ȷ//7cm//9cm�ֺη�//���ĳ�5cm=>7cm

#define DE_isLonlyLinePoint(y)          ((Sid_LonlyLine == TrkSide[y])||(Sid_DoubleBlack == TrkSide[y]))
                       
                        if(
        (DE_isLonlyLinePoint(((yCounter-4)>m_ImageAbstract.Start_Y_Position)?yCounter-4:m_ImageAbstract.Start_Y_Position+1))
     || (DE_isLonlyLinePoint(((yCounter-3)>m_ImageAbstract.Start_Y_Position)?yCounter-3:m_ImageAbstract.Start_Y_Position+1))
     || (DE_isLonlyLinePoint(((yCounter-2)>m_ImageAbstract.Start_Y_Position)?yCounter-2:m_ImageAbstract.Start_Y_Position+1))
     || (DE_isLonlyLinePoint(((yCounter-1)>m_ImageAbstract.Start_Y_Position)?yCounter-1:m_ImageAbstract.Start_Y_Position+1))
     /*|| (DE_isLonlyLinePoint((yCounter)>m_ImageAbstract.Start_Y_Position?yCounter:m_ImageAbstract.Start_Y_Position+1))
     || (DE_isLonlyLinePoint((yCounter+1)<m_ImageAbstract.Last_Y_Position?yCounter+1:m_ImageAbstract.Last_Y_Position-1))
     || (DE_isLonlyLinePoint((yCounter+2)<m_ImageAbstract.Last_Y_Position?yCounter+2:m_ImageAbstract.Last_Y_Position-1))
     || (DE_isLonlyLinePoint((yCounter+3)<m_ImageAbstract.Last_Y_Position?yCounter+3:m_ImageAbstract.Last_Y_Position-1))
     || (DE_isLonlyLinePoint((yCounter+5)<m_ImageAbstract.Last_Y_Position?yCounter+4:m_ImageAbstract.Last_Y_Position-1))*/
         )
                        {
                        m_ImageTesting.is140double130left150right160none_aboutUp[yCounter] += 100;
                        m_ImageTesting.isOccurLonlyLineBreak = 1;
                        end_y_ctr = yCounter;
                        isMayBeHappenedHazard = 1;//������ܷ������ϰ�=>ͨ�������ж�
                        break;//����Ӧ������
                        }
                        TurnOnTheLonlyLine = 1;
                    }
                }
                else
                {//������0 1��̬
                    //���ȵø����ϴΣ��ǲ��ǵ��ߣ��ٸ��ݵ�ǰ�������ǲ��ǣ�ֻ��ͨ������������
                    if((0 == finderYtimeCounter)&&(1==m_ImageAbstract.LonlyLine_isXposLonlyLineFirstLine))
                    {
                        if(__ABS(m_ImageAbstract.Central[m_ImageAbstract.Start_Y_Position] - 
                           m_ImageAbstract.LonlyLine_firstLineXpos)
                          >m_ImageAbstract.width[m_ImageAbstract.Start_Y_Position]/3)
                        {
                            if(255 != m_ImageAbstract.Left[m_ImageAbstract.Start_Y_Position])
                            {
                                if(255 != m_ImageAbstract.Right[m_ImageAbstract.Start_Y_Position])
                                {
                                    
                                }
                                else
                                {
                                    m_ImageAbstract.Central[m_ImageAbstract.Start_Y_Position]
                                  = m_ImageAbstract.Left[m_ImageAbstract.Start_Y_Position];
                                  isHaveLonlyLine = 1;
                                  isHaveLonlyLineOnce = 1;
                                  TrkSide[yCounter] = Sid_LonlyLine;
                                  //LonlyLine_Counter ++;
                                  firstAndSecond_isBeenDrawing = 1;
                                }
                            }
                            else
                            {
                                if(255 != m_ImageAbstract.Right[m_ImageAbstract.Start_Y_Position])
                                {
                                    m_ImageAbstract.Central[m_ImageAbstract.Start_Y_Position]
                                  = m_ImageAbstract.Right[m_ImageAbstract.Start_Y_Position];
                                  isHaveLonlyLine = 1;isHaveLonlyLineOnce = 1;
                                  TrkSide[yCounter] = Sid_LonlyLine;
                                  //LonlyLine_Counter ++;
                                  firstAndSecond_isBeenDrawing = 1;
                                }
                                else
                                {
                                    if((255 == m_ImageAbstract.Left_UpBlack2White[m_ImageAbstract.Start_Y_Position])
                                     &&(255 == m_ImageAbstract.Right_UpBlack2White[m_ImageAbstract.Start_Y_Position]))
                                    {
                                        m_ImageAbstract.Central[m_ImageAbstract.Start_Y_Position]
                                      = m_ImageAbstract.LastFrame_CentralPos;
                                      /*
                                        isHaveLonlyLine = 1;isHaveLonlyLineOnce = 1;
                                        TrkSide[yCounter] = Sid_LonlyLine;
                                        LonlyLine_Counter ++;*/
                                        firstAndSecond_isBeenDrawing = 1;
                                    }
                                }
                            }//���if����
                        }
                    }
                    if((1 == finderYtimeCounter)&&(1==m_ImageAbstract.LonlyLine_isXposLonlyLineSecondLine))
                    {
                        if(__ABS(m_ImageAbstract.Central[m_ImageAbstract.Start_Y_Position+1] - 
                           m_ImageAbstract.LonlyLine_secondLineXpos)
                          >m_ImageAbstract.width[m_ImageAbstract.Start_Y_Position+1]/3)
                        {
                            if(255 != m_ImageAbstract.Left[m_ImageAbstract.Start_Y_Position+1])
                            {
                                if(255 != m_ImageAbstract.Right[m_ImageAbstract.Start_Y_Position+1])
                                {
                                    
                                }
                                else
                                {
                                    m_ImageAbstract.Central[m_ImageAbstract.Start_Y_Position+1]
                                  = m_ImageAbstract.Left[m_ImageAbstract.Start_Y_Position+1];
                                  isHaveLonlyLine = 1;isHaveLonlyLineOnce = 1;
                                  TrkSide[m_ImageAbstract.Start_Y_Position+1] = Sid_LonlyLine;
                                  //LonlyLine_Counter ++;
                                  firstAndSecond_isBeenDrawing = 1;
                                }
                            }
                            else
                            {
                                if(255 != m_ImageAbstract.Right[m_ImageAbstract.Start_Y_Position+1])
                                {
                                    m_ImageAbstract.Central[m_ImageAbstract.Start_Y_Position+1]
                                  = m_ImageAbstract.Right[m_ImageAbstract.Start_Y_Position+1];
                                  isHaveLonlyLine = 1;isHaveLonlyLineOnce = 1;
                                  TrkSide[m_ImageAbstract.Start_Y_Position] = Sid_LonlyLine;
                                  //LonlyLine_Counter ++;
                                  firstAndSecond_isBeenDrawing = 1;
                                }
                                else
                                {
                                    if((255 == m_ImageAbstract.Left_UpBlack2White[m_ImageAbstract.Start_Y_Position+1])
                                     &&(255 == m_ImageAbstract.Right_UpBlack2White[m_ImageAbstract.Start_Y_Position+1]))
                                    {
                                        m_ImageAbstract.Central[m_ImageAbstract.Start_Y_Position+1]
                                      = m_ImageAbstract.Central[m_ImageAbstract.Start_Y_Position];
                                      /*  isHaveLonlyLine = 1;isHaveLonlyLineOnce = 1;
                                        TrkSide[m_ImageAbstract.Start_Y_Position+1] = Sid_LonlyLine;
                                        LonlyLine_Counter ++;*/
                                        firstAndSecond_isBeenDrawing = 1;
                                    }
                                }
                            }//���if����
                        }
                    }
                }
                //����ȼ�С��ʱ�򣬵��ߵĿ����Ȼ�ͻ�����ʱ����Ҫ�����ƶ�=>Ҳ����0/1 == finderYtimeCounter��ʱ��
                /*
                if(1 == isNeedFindTheNearestsides)
                {
                    if(leftSide_whoisnearestwithRight < m_ImageAbstract.Left[yCounter])//===
                    {leftSide_whoisnearestwithRight = m_ImageAbstract.Left[yCounter];}
                    if(rightSide_whoisnearestwithLeft > m_ImageAbstract.Right[yCounter])
                    {rightSide_whoisnearestwithLeft = m_ImageAbstract.Right[yCounter];}//===
                }
                */
                //finderYtimeCounter = 0;//��һ���Ǹ�ɶ�ģ�����ע�͵�
                central_Pos_number = m_ImageAbstract.Central[yCounter];//�����ڲ�����Ĺսǣ�����ߵ��
                continue;//����Ѿ���Ѱ��ʱ���������֤�´εļ�����������
            }//���������������������������ҵ����
            else
            {
                //isNeedFindTheNearestsides = 0;
            }
            //else{thisFrameisHaveLonlyLine = 1;}//����Ѿ����˵���
            if(255 == firstTimeCut2LonlyLine){firstTimeCut2LonlyLine = yCounter;}//��¼��һ������������ʱ��
            uint8 LeftCut = 0;uint8 RightCut = 0;
            
            
            
            
            LeftCut = 0;RightCut = 0;
            if((255 != m_ImageAbstract.Left_UpBlack2White[yCounter])
             &&(left_Pos_number_CUT <= m_ImageAbstract.Left_UpBlack2White[yCounter])
             &&(right_Pos_number_CUT>= m_ImageAbstract.Left_UpBlack2White[yCounter]))
            {
                LeftCut = 1;
                //isOccurLonlyLine = 1;
                central_Pos_number = 
               (m_ImageAbstract.Left[yCounter] + m_ImageAbstract.Left_UpBlack2White[yCounter])/2;
            }
            if((255 != m_ImageAbstract.Right_UpBlack2White[yCounter])
             &&(left_Pos_number_CUT <= m_ImageAbstract.Right_UpBlack2White[yCounter])
             &&(right_Pos_number_CUT>= m_ImageAbstract.Right_UpBlack2White[yCounter]))
            {
                RightCut = 1;
                //isOccurLonlyLine = 1;
                central_Pos_number = 
               (m_ImageAbstract.Right[yCounter] + m_ImageAbstract.Right_UpBlack2White[yCounter])/2;
            }
            //===============================���ﻹû������һ�ε���Ϣ���Լ���Ӧ���������ж�
            if(1 == (LeftCut + RightCut))
            {
                //thisTimeStatus = LLT_Lasting;
                showLonlyLineFindAboutUpSet = 'D';
                //ʱ��Ӧ����������֣�����Ҳ�������ֵ����
                
                /*ɾ����������ʲô�����أ�
                if(m_ImageAbstract.Start_Y_Position == yCounter)
                {
                    central_Pos_number = (uint8)(0.7*central_Pos_number + 0.3*m_ImageAbstract.Central[yCounter]);
                }*/
                isHaveLonlyLine = 1;isHaveLonlyLineOnce = 1;
                TrkSide[yCounter] = Sid_LonlyLine;
                //m_ImageTesting.hazardvaildLine[yCounter] = central_Pos_number;
                //LonlyLine_Counter++;
                //if(1==LeftCut){LonlyLineisHave_1isL_2isR = 1;}
                //if(1==LeftCut){LonlyLineisHave_1isL_2isR = 2;}
            }
            else
            {
                showLonlyLineFindAboutUpSet = 'N';
                if((255!=m_ImageAbstract.Left_UpBlack2White[yCounter])&&(255!=m_ImageAbstract.Right_UpBlack2White[yCounter]))
                {//˫�߶����ڵ��ߵĻ�������
                    central_Pos_number = (m_ImageAbstract.Left[yCounter] + m_ImageAbstract.Right[yCounter])/2;
                    uint8 centralViewer = (m_ImageAbstract.Central[yCounter]+m_ImageAbstract.LastFrame_CentralPos)/2;
                    if(m_ImageAbstract.Right[yCounter]-m_ImageAbstract.Left[yCounter]<=0.866*m_ImageAbstract.width[yCounter])
                    {
                        if((m_ImageAbstract.Right[yCounter]-centralViewer)<(m_ImageAbstract.Left[yCounter]-centralViewer))
                        {
                            //thisTimeStatus = LLT_Lasting;
                            isHaveLonlyLine = 1;isHaveLonlyLineOnce = 1;
                            //LonlyLine_Counter++;
                            TrkSide[yCounter] = Sid_LonlyLine;
                            //LonlyLineisHave_1isL_2isR = 2;
                            central_Pos_number = 
                            (m_ImageAbstract.Right[yCounter] + m_ImageAbstract.Right_UpBlack2White[yCounter])/2;
                        }
                        else
                        {
                            //thisTimeStatus = LLT_Lasting;
                            isHaveLonlyLine = 1;isHaveLonlyLineOnce = 1;
                            //LonlyLine_Counter++;
                            TrkSide[yCounter] = Sid_LonlyLine;
                            //LonlyLineisHave_1isL_2isR = 1;
                            central_Pos_number = 
                            (m_ImageAbstract.Left[yCounter] + m_ImageAbstract.Left_UpBlack2White[yCounter])/2;
                        }
                    }
                    else
                    {
                        if(yCounter>0)
                        {
                            if(255==m_ImageAbstract.Right[yCounter-1])
                            {
                                //thisTimeStatus = LLT_Lasting;
                                isHaveLonlyLine = 1;isHaveLonlyLineOnce = 1;
                                //LonlyLine_Counter++;
                                TrkSide[yCounter] = Sid_LonlyLine;
                                //LonlyLineisHave_1isL_2isR = 2;
                                central_Pos_number = 
                                (m_ImageAbstract.Right[yCounter] + m_ImageAbstract.Right_UpBlack2White[yCounter])/2;
                            }
                            if(255==m_ImageAbstract.Left[yCounter-1])
                            {
                                //thisTimeStatus = LLT_Lasting;
                                isHaveLonlyLine = 1;isHaveLonlyLineOnce = 1;
                                //LonlyLine_Counter++;
                                TrkSide[yCounter] = Sid_LonlyLine;
                                //LonlyLineisHave_1isL_2isR = 1;
                                central_Pos_number = 
                                (m_ImageAbstract.Left[yCounter] + m_ImageAbstract.Left_UpBlack2White[yCounter])/2;
                            }
                        }
                    }
                }
                else
                {
                    central_Pos_number = m_ImageAbstract.Central[yCounter];
                    //������Ҫ����һ��
                    /*
                    if((__ABS(central_Pos_number - m_ImageAbstract.Central[yCounter])>m_ImageAbstract.width[yCounter]/9))
                    {
                        showYcutDown = 'L';
                        end_y_ctr = yCounter;
                        break;//����Ӧ������
                    }
                    */
                }
                
            }
            
            /*last_Left_Viewer_X_n_cut_0 = last_Left_Viewer_X;
            last_Left_Viewer_Y_n_cut_0 = last_Left_Viewer_Y;
            last_Right_Viewer_X_n_cut_0 = last_Right_Viewer_X;
            last_Right_Viewer_Y_n_cut_0 = last_Right_Viewer_Y;*/
            
            
            m_ImageAbstract.Central[yCounter] = central_Pos_number;
            //================================================================//            
        }//ѭ������
        
        m_ImageAbstract.LonlyLine_firstLineXpos = m_ImageAbstract.Central[m_ImageAbstract.Start_Y_Position];
        m_ImageAbstract.LonlyLine_secondLineXpos = m_ImageAbstract.Central[m_ImageAbstract.Start_Y_Position+1];
        if(((255!=m_ImageAbstract.Left_UpBlack2White[m_ImageAbstract.Start_Y_Position])
         ||(255!=m_ImageAbstract.Right_UpBlack2White[m_ImageAbstract.Start_Y_Position])
         ||(1 == firstAndSecond_isBeenDrawing))
         &&(end_y_ctr > 10))//(end_y_ctr > 10)��������Ӱ��
        {m_ImageAbstract.LonlyLine_isXposLonlyLineFirstLine = 1;}
        else{m_ImageAbstract.LonlyLine_isXposLonlyLineFirstLine = 0;}///////////////////////
        if(((255!=m_ImageAbstract.Left_UpBlack2White[m_ImageAbstract.Start_Y_Position+1])
         ||(255!=m_ImageAbstract.Right_UpBlack2White[m_ImageAbstract.Start_Y_Position+1])
         ||(1 == firstAndSecond_isBeenDrawing))
         &&(end_y_ctr > 10))
        {m_ImageAbstract.LonlyLine_isXposLonlyLineSecondLine = 1;}
        else{m_ImageAbstract.LonlyLine_isXposLonlyLineSecondLine = 0;}///////////////////////
        
    }while(0);

    //if(1 == isHaveLonlyLine){end_y_ctr-=5;}
    

    uint8 LonlyLineVaildLineCounter = 0;
    do//������Ӧ���ϰ��Ĵ���//���ﻹ��Ҫ�ٴ��Ż�
    {//��ν�ϰ��ı�׼�����ں�С�Ŀ�ȴ�û����ν��������
        //break;
        if(1 == m_ImageAbstract.RtAngle_isLasting){break;}//ǿ�ƾܾ��ж�
        
        if((1 == isHaveLonlyLine)||(1 == isHaveLonlyLineStartCorner))
        {//���ߴ��ڵ�ʱ��
            LonlyLineVaildLineCounter = 0;
            for(uint8 LineReader = m_ImageAbstract.Start_Y_Position;LineReader < end_y_ctr;LineReader++)
            {
                if((Sid_DoubleBlack == TrkSide[LineReader])||(Sid_LonlyLine == TrkSide[LineReader]))
                {LonlyLineVaildLineCounter++;}
                //m_ImageTesting.hazardvaildLine[LineReader] = 0;
            }
        }
        if(LonlyLineVaildLineCounter > 5){break;}//������ֱ���þ�������ϵ
        
        uint8 hazardStartLine = 0;
        for(uint8 loop = m_ImageAbstract.Start_Y_Position+1;loop < end_y_ctr;loop++)
        {
            if(__ABS(m_ImageAbstract.Central[loop] - m_ImageAbstract.Central[loop-1])>(m_ImageAbstract.width[loop]/6))
            {
                hazardStartLine = loop;break;
            }
        }
        if(0 == hazardStartLine){break;}
        uint8 y_height_useful = Get45cmLengthFromY(hazardStartLine)/2;
        uint8 y_height_allHave = y_height_useful;//Ӧ�õ����������
        
        uint8 y_world_height = ((GetYaxis(hazardStartLine)-GetYaxis(m_ImageAbstract.Start_Y_Position))*45/30);
        if(y_world_height >= 70){break;}//�������ʵ������˳� 
        //if(end_y_ctr <= 10){break;}//����Ч����ܶ�ʱ�������ϰ�����仰�᲻����������أ�
        
        uint8 loop = 0;
        if(hazardStartLine + y_height_useful > 60){y_height_useful = 60;}//y_height_useful������ֵ
        else{y_height_useful = hazardStartLine + y_height_useful;}//���Ƹ߶�
        
        
        uint8 hazard_counter = 0;
        for(loop = hazardStartLine + 1;loop <= y_height_useful;loop++)
        {//if 'HazarfStartLine' is not a vaild number,we will find It's hard to find the trouble.
            uint8 perLine_usefulWidth = 0;
            perLine_usefulWidth = m_ImageAbstract.Right[loop] - m_ImageAbstract.Left[loop];
            if(((perLine_usefulWidth >= 0.48*m_ImageAbstract.width[loop])
             &&(perLine_usefulWidth <= 0.8*m_ImageAbstract.width[loop]))
             &&(255 != m_ImageAbstract.Right[loop])
             &&(255 != m_ImageAbstract.Left[loop]))
            {
                hazard_counter++;//���������ж�Hazard
                //m_ImageTesting.hazardvaildLine[loop] = 100;//��Ч
            }//�������������ߵ��������жϣ����ϰ�������ȫ�ж�
        }
        if(hazard_counter >= 0.8 * y_height_allHave)//����ȫ��
        {m_ImageTesting.isMeetingHazard = 1;}
        else
        {m_ImageTesting.isMeetingHazard = 0;}
        
        if(1 == m_ImageTesting.isMeetingHazard)
        {
            uint8 _1isLeft_2isRight = 0;
            
            if((hazardStartLine != m_ImageAbstract.Start_Y_Position)&&
               ((m_ImageAbstract.Central[hazardStartLine] + m_ImageAbstract.Central[hazardStartLine-1])/2
               <(m_ImageAbstract.Central[hazardStartLine+1] + m_ImageAbstract.Central[hazardStartLine+2])/2))
            {
                _1isLeft_2isRight = 2;
            }
            else if((hazardStartLine != m_ImageAbstract.Start_Y_Position)&&
               ((m_ImageAbstract.Central[hazardStartLine] + m_ImageAbstract.Central[hazardStartLine-1])/2
               >(m_ImageAbstract.Central[hazardStartLine+1] + m_ImageAbstract.Central[hazardStartLine+2])/2))
            {
                _1isLeft_2isRight = 1;
            }
            
            for(uint8 inter = m_ImageAbstract.Start_Y_Position;inter <= y_height_useful;inter++)
            {
                if((1 == _1isLeft_2isRight)&&(255 != m_ImageAbstract.Left[inter]))
                {
                    m_ImageAbstract.Central[inter] = 
                   /*(m_ImageAbstract.Central[inter] +*/
                   (m_ImageAbstract.Left[inter] + m_ImageAbstract.Central[inter])/2/*)/2*/;
                }
                else if((2 == _1isLeft_2isRight)&&(255 != m_ImageAbstract.Right[inter]))
                {
                    m_ImageAbstract.Central[inter] = 
                   /*(m_ImageAbstract.Central[inter] +*/
                   (m_ImageAbstract.Right[inter] + m_ImageAbstract.Central[inter])/2/*)/2*/;
                }
            }
            end_y_ctr = y_height_useful;
        }
    }while(0);

    /*����ܺ������ǶԹռ���ܲ�����
    uint8 think_end = end_y_ctr;
    uint8 used_mode = 0;
    for(sint8 loop = end_y_ctr;loop >= m_ImageAbstract.Start_Y_Position;loop--)
    {
        if(0 == used_mode)
        {
            if((constNum_X_MaxCounter - constn_xFindJumpLine_Width * 2 == m_ImageAbstract.Central[loop])
             ||(constn_xFindJumpLine_Width * 2 == m_ImageAbstract.Central[loop]))
            {
                think_end = loop;
            }
            else
            {
                used_mode = 1;
            }
        }
        else//1 == used_mode
        {
            if(Sid_None != TrkSide[loop])
            {
                break;
            }
            else
            {
                think_end = loop;
            }
        }
    }
    end_y_ctr = think_end;
    */
    m_ImageAbstract.Last_Y_Position = end_y_ctr;//��ֵ���<=�������������һ���ж��������
    //��⵽�µ��Ļ������������ʮ�����Ϣ
    
    

    
    
    do//����ֱ�ǵĴ���=>�������ֱ�Ǵ����úܶ�
    {
        //if(0 == m_ImageTesting.isMeetingHazard){break;}
        /*��������Ǿ��Դ����
        if(1 == TurningBeacauseVeryLittle.isHappened)
        {
            m_ImageAbstract.RtAngle_isLasting = 0;
        }
        */
        //if(1 == TurningBeacauseVeryLittle.isHappened){break;}
        //1.�ж�ֱ������
        /*
        if(1 == isHaveLonlyLine)
        {
            break;//�ر�
        }*/
        uint8 finder_timer = 0;
        //
        u_Side Rt_WhiteTurningSide = Sid_NaN;
        

        uint8 step_isfind_Rt_WhiteSide_UpestLine = 0;//��ֱ�����ϱ�
        uint8 step_isfind_Rt_WhiteSide_LowestLine = 0;//��ֱ�����±�
        //uint8 step_isfind_Rt_WhiteSide_DoubleIsStraight = 0;//�ж�����ֱ��ֱ
        
        //uint8 step_RthasFound_TurningProcess = 0;//�Ѿ��ҵ�ֱ�ǣ���ת��
            
        //uint8 step_hasOccurWrong = 0;//�����˴���
        //
        uint8 flag_Rt_hasfound = 0;
        
        typedef
        struct
        {
            uint8 RtWhiteSide_StartLine;//��ʼ��
            uint8 RtWhiteSide_EndLine;//
            uint8 RtStepTwoLostWhiteCounter;//��ʧ�ģ���ɫ����ģ�����
        }s_RtAngleCondtion;
        s_RtAngleCondtion RtAngleCondtion;
        RtAngleCondtion.RtWhiteSide_EndLine = 255;
        RtAngleCondtion.RtWhiteSide_StartLine = 255;
        RtAngleCondtion.RtStepTwoLostWhiteCounter = 0;//���
        
        for(sint8 loop = m_ImageAbstract.Last_Y_Position - 1;loop >= m_ImageAbstract.Start_Y_Position;loop--)//-128 128
        {//���ۼ�=>�����ʼ
            if(1 == TurningBeacauseVeryLittle.isHappened)
            {//�����ϴ�������Զ
                step_isfind_Rt_WhiteSide_UpestLine = 0;
                break;//������ֵ�ģʽ=>
            }
            finder_timer++;//��һ������
            if((0 == step_isfind_Rt_WhiteSide_UpestLine)//���ﻹû���
           &&(((255 == m_ImageAbstract.Left[loop])&&(255 != m_ImageAbstract.Right[loop]))
            ||((255 != m_ImageAbstract.Left[loop])&&(255 == m_ImageAbstract.Right[loop]))))
            {//����������һ�����ߣ�ǰ���Ǳ�֤�ҵ���Զ���С�
                step_isfind_Rt_WhiteSide_UpestLine = 1;//�궨��һ������
                if(255 == m_ImageAbstract.Left[loop]){/*becauseThisOutOfTheBlackRtAngle='l';*/Rt_WhiteTurningSide = Sid_Left;}
                if(255 == m_ImageAbstract.Right[loop]){/*becauseThisOutOfTheBlackRtAngle='r';*/Rt_WhiteTurningSide = Sid_Right;}
                RtAngleCondtion.RtWhiteSide_EndLine = loop;
                if(finder_timer > 5){step_isfind_Rt_WhiteSide_UpestLine = 0;break;} //�϶��ж�ʧ��=>��Զ������ֵĶ���
            }
            else
            {
                if(0 == step_isfind_Rt_WhiteSide_LowestLine)//(1 == step_isfind_Rt_WhiteSide_UpestLine)
                {//��Ϊ��else����������������
                    if(Sid_Left == Rt_WhiteTurningSide)
                    {
                        if(255 != m_ImageAbstract.Left[loop])
                        {
                            //m_ImageAbstract.RtAngle_isLasting = 1;
                            RtAngleCondtion.RtWhiteSide_StartLine = loop;
                            step_isfind_Rt_WhiteSide_LowestLine = 1;//�궨��һ����
                            break;
                        }
                        if(255 == m_ImageAbstract.Right[loop]){RtAngleCondtion.RtStepTwoLostWhiteCounter++;}
                    }
                    if(Sid_Right == Rt_WhiteTurningSide)
                    {
                        if(255 != m_ImageAbstract.Right[loop])
                        {
                            //m_ImageAbstract.RtAngle_isLasting = 1;
                            RtAngleCondtion.RtWhiteSide_StartLine = loop;
                            step_isfind_Rt_WhiteSide_LowestLine = 1;//�궨��һ����
                            break;
                        }
                        if(255 == m_ImageAbstract.Left[loop]){RtAngleCondtion.RtStepTwoLostWhiteCounter++;}
                    }
                }/*else//��������� => ���Խ�����һ����{}*/
            }
            if((0 == step_isfind_Rt_WhiteSide_UpestLine)&&(finder_timer > 6)){break;}
        }//ѭ������
        
        if(1 == step_isfind_Rt_WhiteSide_UpestLine)//����˿����Ҳ�������Զ����û�е�
        {
            do{
            if(0 == step_isfind_Rt_WhiteSide_LowestLine)
            {
                if(1 == m_ImageAbstract.RtAngle_isLasting)//
                {/*becauseThisOutOfTheBlackRtAngle = 'S';*/ //�޶���ʼλ�õĴ���//���ﵼ�µĴ��󡣵���Ϊʲô���Ҳ�������
                    RtAngleCondtion.RtWhiteSide_StartLine = m_ImageAbstract.Start_Y_Position;}
                else
                {RtAngleCondtion.RtWhiteSide_EndLine = m_ImageAbstract.Last_Y_Position;
                RtAngleCondtion.RtWhiteSide_StartLine = m_ImageAbstract.Start_Y_Position;
                SideChangeOccur = 7;break;}//��ʱ�Ĵ�ʩ
            }
            float length = Get45cmLengthFromY(RtAngleCondtion.RtWhiteSide_StartLine);
            m_ImageAbstract.RtAngleLength = 
            ((float)GetYaxis(RtAngleCondtion.RtWhiteSide_EndLine) - (float)GetYaxis(RtAngleCondtion.RtWhiteSide_StartLine))/
            ((float)GetYaxis(m_ImageAbstract.Last_Y_Position) - (float)GetYaxis(m_ImageAbstract.Start_Y_Position));
            show_isWrong = 'P';
            if(
                ((RtAngleCondtion.RtWhiteSide_EndLine - RtAngleCondtion.RtWhiteSide_StartLine)>=1*length/2)
                &&((RtAngleCondtion.RtWhiteSide_EndLine - RtAngleCondtion.RtWhiteSide_StartLine)<=3*length/2)  
                &&((RtAngleCondtion.RtStepTwoLostWhiteCounter) < length/10)//����Ҳ�������⣿
                &&((float)(GetYaxis(RtAngleCondtion.RtWhiteSide_EndLine) - (float)GetYaxis(RtAngleCondtion.RtWhiteSide_StartLine))*3>=
                   (float)(GetYaxis(m_ImageAbstract.Last_Y_Position) - (float)GetYaxis(m_ImageAbstract.Start_Y_Position)))//���һ��3����Ҫ�޸�
                &&((float)(GetYaxis(RtAngleCondtion.RtWhiteSide_EndLine) - (float)GetYaxis(RtAngleCondtion.RtWhiteSide_StartLine))*2<=
                   (float)(GetYaxis(m_ImageAbstract.Last_Y_Position) - (float)GetYaxis(m_ImageAbstract.Start_Y_Position)))
                )
            {
                show_isWrong = 'A';
                float K = 255.f;
                float var = 255.f;
                if(Sid_NaN == Rt_WhiteTurningSide)
                {
                    Rt_WhiteTurningSide = m_ImageAbstract.Rt_LastTurning;
                }
                
                if((Sid_Left == Rt_WhiteTurningSide)&&(RtAngleCondtion.RtWhiteSide_EndLine-RtAngleCondtion.RtWhiteSide_StartLine>4))
                {
                    float cut_number = (RtAngleCondtion.RtWhiteSide_EndLine + RtAngleCondtion.RtWhiteSide_StartLine)/2 - (RtAngleCondtion.RtWhiteSide_StartLine + m_ImageAbstract.Start_Y_Position)/2;
                    float cut_son = m_ImageAbstract.Right[(RtAngleCondtion.RtWhiteSide_EndLine + RtAngleCondtion.RtWhiteSide_StartLine)/2]
                                  - m_ImageAbstract.Right[(RtAngleCondtion.RtWhiteSide_StartLine + m_ImageAbstract.Start_Y_Position)/2];
                    K = cut_son / cut_number;//���������������
                    float B = m_ImageAbstract.Right[(RtAngleCondtion.RtWhiteSide_StartLine + m_ImageAbstract.Start_Y_Position)/2]
                            - K*(RtAngleCondtion.RtWhiteSide_StartLine + m_ImageAbstract.Start_Y_Position)/2;//m_ImageAbstract.Left[];                
                    uint32 counter = 0;                    
                    for(uint8 inter = (m_ImageAbstract.Start_Y_Position + 2);
                        inter < (m_ImageAbstract.Last_Y_Position - 2);inter++)
                    {
                        if(255 != m_ImageAbstract.Right[inter])
                        {
                            counter ++;
                            float ThinkGoodNumber = inter * K + B;
                            var += (float)((ThinkGoodNumber - m_ImageAbstract.Right[inter])*(ThinkGoodNumber - m_ImageAbstract.Right[inter]));
                        }
                    }
                    var /= counter;
                    if((__F_ABS(var) >= 8.f)||(__F_ABS(K) >= 2.f))
                    {//������?
                        show_isWrong = 'S';
                        flag_Rt_hasfound = 0;//��һ��ֱ�Ǳ�־û�ҵ�
                        m_ImageAbstract.Rt_Angle_End_Y = RtAngleCondtion.RtWhiteSide_EndLine;
                        m_ImageAbstract.Rt_Angle_Start_Y = RtAngleCondtion.RtWhiteSide_StartLine;
                        //SideChangeOccur = 6;
                    }
                    else
                    {
                        show_isWrong = 'D';
                        flag_Rt_hasfound = 1;
                        m_ImageAbstract.Rt_Angle_End_Y = RtAngleCondtion.RtWhiteSide_EndLine;
                        m_ImageAbstract.Rt_Angle_Start_Y = RtAngleCondtion.RtWhiteSide_StartLine;//(RtAngleCondtion.RtWhiteSide_EndLine-RtAngleCondtion.RtWhiteSide_StartLine>4)
                        SideChangeOccur = 5;
                    }
                }
                if((Sid_Right == Rt_WhiteTurningSide)&&(RtAngleCondtion.RtWhiteSide_EndLine-RtAngleCondtion.RtWhiteSide_StartLine>4))
                {
                    float cut_number = (RtAngleCondtion.RtWhiteSide_EndLine + RtAngleCondtion.RtWhiteSide_StartLine)/2
                                     - (RtAngleCondtion.RtWhiteSide_StartLine + m_ImageAbstract.Start_Y_Position)/2;
                    float cut_son = m_ImageAbstract.Left[(RtAngleCondtion.RtWhiteSide_EndLine + RtAngleCondtion.RtWhiteSide_StartLine)/2]
                                  - m_ImageAbstract.Left[(RtAngleCondtion.RtWhiteSide_StartLine + m_ImageAbstract.Start_Y_Position)/2];
                    K = cut_son / cut_number;//���������������
                    float B = m_ImageAbstract.Left[(RtAngleCondtion.RtWhiteSide_StartLine + m_ImageAbstract.Start_Y_Position)/2]
                            - K*(RtAngleCondtion.RtWhiteSide_StartLine + m_ImageAbstract.Start_Y_Position)/2;//m_ImageAbstract.Left[];                
                    uint32 counter = 0; 
                    for(uint8 inter = (m_ImageAbstract.Start_Y_Position + 2);
                        inter < (m_ImageAbstract.Last_Y_Position - 2);inter++)
                    {
                        if(255 != m_ImageAbstract.Left[inter])
                        {
                            counter ++;
                            float ThinkGoodNumber = inter * K + B;
                            var += (float)((ThinkGoodNumber - m_ImageAbstract.Left[inter])*(ThinkGoodNumber - m_ImageAbstract.Left[inter]));
                        }
                    }
                    var /= counter;
                    if((__F_ABS(var) >= 12.f)||(__F_ABS(K) >= 2.f))
                    {
                        show_isWrong = 'S';
                        flag_Rt_hasfound = 0;
                        m_ImageAbstract.Rt_Angle_End_Y = RtAngleCondtion.RtWhiteSide_EndLine;
                        m_ImageAbstract.Rt_Angle_Start_Y = RtAngleCondtion.RtWhiteSide_StartLine;
                        SideChangeOccur = 1;
                    }
                    else
                    {
                        show_isWrong = 'D';
                        flag_Rt_hasfound = 1;
                        m_ImageAbstract.Rt_Angle_End_Y = RtAngleCondtion.RtWhiteSide_EndLine;
                        m_ImageAbstract.Rt_Angle_Start_Y = RtAngleCondtion.RtWhiteSide_StartLine;
                        SideChangeOccur = 2;
                    }
                }
                m_ImageAbstract.Rt_K_Var = K;
                m_ImageAbstract.Rt_Var = var;
                m_ImageAbstract.Rt_LastTurning = Rt_WhiteTurningSide;
            }
            else
            {
                RtAngleCondtion.RtWhiteSide_EndLine = m_ImageAbstract.Last_Y_Position;
                RtAngleCondtion.RtWhiteSide_StartLine = m_ImageAbstract.Start_Y_Position;
                SideChangeOccur = 3;
                    m_ImageAbstract.Rt_Angle_error = 0;
                    if(!((RtAngleCondtion.RtWhiteSide_EndLine - RtAngleCondtion.RtWhiteSide_StartLine)>=1*length/2))
                    {m_ImageAbstract.Rt_Angle_error = 0x01;}
                    if(!((RtAngleCondtion.RtWhiteSide_EndLine - RtAngleCondtion.RtWhiteSide_StartLine)<=3*length/2))  
                    {m_ImageAbstract.Rt_Angle_error = 0x02;}
                    if(!((RtAngleCondtion.RtStepTwoLostWhiteCounter) < length/10))
                    {m_ImageAbstract.Rt_Angle_error = 0x04;}
                    if(!(length > 6))
                    {m_ImageAbstract.Rt_Angle_error = 0x08;}
            }
            }while(0);
        }
        else
        {
            if(1 == m_ImageAbstract.RtAngle_isLasting)
            {
                RtAngleCondtion.RtWhiteSide_EndLine = m_ImageAbstract.Last_Y_Position;
                RtAngleCondtion.RtWhiteSide_StartLine = m_ImageAbstract.Start_Y_Position;
                SideChangeOccur = 4;
            }
        }
        
        if(1 == flag_Rt_hasfound)
        {
            m_ImageAbstract.RtAngle_isLasting = 1;//����isLasting��һ���ҵ�
        }
        
        uint8 isTime2BackAngel = 0;
        do
        {
            //break;
            if(1 == m_ImageAbstract.RtAngle_isLasting)
            {
                float change_X = 0.f;
                if(Sid_NaN == Rt_WhiteTurningSide)
                {
                    /*becauseThisOutOfTheBlackRtAngle = 'Z';*///ȫ��Zero���
                    Rt_WhiteTurningSide = m_ImageAbstract.Rt_LastTurning;//����Ҳ��һ���޲�
                }//���ڳ���Zero�����������ᵼ����Щ����ĳ���
                
                uint8 choose_theLast = m_ImageAbstract.Last_Y_Position;
                uint8 end_findLeftOrRight = (m_ImageAbstract.Last_Y_Position + RtAngleCondtion.RtWhiteSide_StartLine)/2;/*(m_ImageAbstract.Last_Y_Position+(m_ImageAbstract.Last_Y_Position + RtAngleCondtion.RtWhiteSide_StartLine)/2)/2*/ //;
#define         DE_CalTheBetween(y)             (((__ABS(m_ImageAbstract.Left[y]\
                                              -m_ImageAbstract.Right[y])\
                                              <=1.1*m_ImageAbstract.width[y])\
                                            &&\
                                                (__ABS(m_ImageAbstract.Left[y]\
                                              -m_ImageAbstract.Right[y])\
                                              >=0.9*m_ImageAbstract.width[y]))\
                                            &&(255 != m_ImageAbstract.Left[y])\
                                            &&(255 != m_ImageAbstract.Right[y]))
                                                    
                

                if(1 == TurningBeacauseVeryLittle.isHappened)
                {
                    isTime2BackAngel = 1;break;
                    //end_findLeftOrRight = (TurningBeacauseVeryLittle.y_end + m_ImageAbstract.Start_Y_Position)/2;
                    //choose_theLast = TurningBeacauseVeryLittle.y_end;
                    //isTime2BackAngel = 1;break;
                }
                uint8 endJudgeLine =(choose_theLast+
                                    (choose_theLast+
                                    (choose_theLast+end_findLeftOrRight)/2)/2)/2;
                if(Sid_Right == Rt_WhiteTurningSide)
                {//=========================================================
                    /*
                    if((255 != m_ImageAbstract.Left[m_ImageAbstract.Last_Y_Position])
                     &&(m_ImageAbstract.Left[m_ImageAbstract.Last_Y_Position] >= 181-3-6))
                    {
                        m_ImageAbstract.Last_Y_Position = (m_ImageAbstract.Last_Y_Position + m_ImageAbstract.Start_Y_Position)/2;
                    }
                    */
                    show_About_RtAngle = 'l';
                    change_X = m_ImageAbstract.Right[end_findLeftOrRight];
                    if((255.f == m_ImageAbstract.Right[end_findLeftOrRight])/*||(1 == TurningBeacauseVeryLittle.isHappened)*/)
                    {   becauseThisOutOfTheBlackRtAngle = 'H';
                        change_X = 2.5*m_ImageAbstract.width[end_findLeftOrRight];
                        /*change_X -= m_ImageAbstract.Central[end_findLeftOrRight];
                        change_X = __F_ABS(change_X);*/
                    }
                    else
                    {
                        becauseThisOutOfTheBlackRtAngle = 'N';
                        change_X -= m_ImageAbstract.Central[end_findLeftOrRight];
                        change_X = __F_ABS(change_X);
                        if(255!= m_ImageAbstract.Left[endJudgeLine])
                        {
                            if(DE_CalTheBetween(endJudgeLine)/*&&
                               DE_CalTheBetween((m_ImageAbstract.Last_Y_Position+(m_ImageAbstract.Last_Y_Position+end_findLeftOrRight)/2)/2)*/
                               )
                            {
                                isTime2BackAngel = 1;break;
                            }
                        }
                    }
                    //if(change_X < 3.f){change_X = 3.f;}
                    //if(change_X > 185.f){change_X = 185.f;}
                }
                if(Sid_Left == Rt_WhiteTurningSide)
                {
                    /*
                    if((255 != m_ImageAbstract.Right[m_ImageAbstract.Last_Y_Position])
                     &&(m_ImageAbstract.Right[m_ImageAbstract.Last_Y_Position] <= 6+6))
                    {
                        m_ImageAbstract.Last_Y_Position = (m_ImageAbstract.Last_Y_Position + m_ImageAbstract.Start_Y_Position)/2;
                    }
                    */
                    show_About_RtAngle = 'r';
                    change_X = m_ImageAbstract.Left[end_findLeftOrRight];
                    if((255.f == m_ImageAbstract.Left[end_findLeftOrRight])/*||(1 == TurningBeacauseVeryLittle.isHappened)*/)
                    {   becauseThisOutOfTheBlackRtAngle = 'H';
                        change_X = 2.5*m_ImageAbstract.width[end_findLeftOrRight];
                        //change_X = __F_ABS(change_X);
                    }
                    else
                    {
                        //m_ImageTesting.Back2Angel_LineCounter = end_findLeftOrRight;
                        becauseThisOutOfTheBlackRtAngle = 'N';
                        change_X -= m_ImageAbstract.Central[end_findLeftOrRight];
                        change_X = __F_ABS(change_X);
                        if(255!=m_ImageAbstract.Right[endJudgeLine])
                        {
                            if(DE_CalTheBetween(endJudgeLine)/*&&
                               DE_CalTheBetween((m_ImageAbstract.Last_Y_Position+(m_ImageAbstract.Last_Y_Position+end_findLeftOrRight)/2)/2)*/
                               )
                            {
                                isTime2BackAngel = 1;break;
                            }
                        }
                    }
                    //if(change_X < 0.f){change_X = 0.f;}
                    //if(change_X > 185.f){change_X = 185.f;}
                    change_X = -change_X;
                }//=========================================================
                m_ImageTesting.Back2Angel_LineCounter = endJudgeLine;
                if((RtAngleCondtion.RtWhiteSide_StartLine - (m_ImageAbstract.Last_Y_Position - RtAngleCondtion.RtWhiteSide_StartLine)/2) > 0)
                {
                    RtAngleCondtion.RtWhiteSide_StartLine = (uint8)((float)RtAngleCondtion.RtWhiteSide_StartLine - (m_ImageAbstract.Last_Y_Position - RtAngleCondtion.RtWhiteSide_StartLine)*0.5f);
                }
                else
                {
                    RtAngleCondtion.RtWhiteSide_StartLine = 0;//��֤�����
                }
                
                
                /*
                if((m_ImageAbstract.Central[m_ImageAbstract.Last_Y_Position] <= 6 + 6)
                 ||(m_ImageAbstract.Central[m_ImageAbstract.Last_Y_Position] >= 181 - 6))
                {
                    change_X = 6*change_X;
                }//
                */
                sint16 Rt_central_Pos = 0;//
                for(uint8 y_counter = RtAngleCondtion.RtWhiteSide_StartLine;y_counter < m_ImageAbstract.Last_Y_Position;y_counter++)
                {
                    //break;//��ʱע�͸���Ч��
                    Rt_central_Pos = (sint16)(m_ImageAbstract.Central[RtAngleCondtion.RtWhiteSide_StartLine]
                                    + ((float)(y_counter - RtAngleCondtion.RtWhiteSide_StartLine) * change_X / 
                                    (float)(m_ImageAbstract.Last_Y_Position - RtAngleCondtion.RtWhiteSide_StartLine)));
                    if(Rt_central_Pos > 184){Rt_central_Pos = 184;}
                    if(Rt_central_Pos < 0){Rt_central_Pos = 0;}//��������Ϊ�޷�
                    m_ImageAbstract.Central[y_counter] = Rt_central_Pos;//��ֵ
                }
            }
        }while(0);
        
        if(1 == m_ImageAbstract.RtAngle_isLasting)
        {
            show_About_RtAngle = 'T';
        }
        else
        {
            show_About_RtAngle = 'N';
        }
            
        
        if(0 == step_isfind_Rt_WhiteSide_UpestLine)
        {
            if(0 == step_isfind_Rt_WhiteSide_LowestLine)
            {
                show_About_LonlyLine = 'Z';//����û�У�Զ��Ҳû��
            }
            else
            {
                show_About_LonlyLine = 'X';
            }
        }
        else
        {
            if(0 == step_isfind_Rt_WhiteSide_LowestLine)//���ҵ�Զ�ˣ����Ҳ�������
            {
                show_About_LonlyLine = 'C';
            }
            else
            {
                show_About_LonlyLine = 'V';
            }
        }
        
        if(1 == isTime2BackAngel)//��ֹ����
        {
            m_ImageAbstract.RtAngle_isLasting = 0;
        }
    }while(0);

    /*
    if(1 == isHaveLonlyLine)
    {
        m_ImageAbstract.LastFrame_CentralPos = m_ImageAbstract.Central[m_ImageAbstract.Start_Y_Position];//�����ϴ�����
    }
    else
    {
        //����Ӧ���õ�һ������������Ϊ����
        m_ImageAbstract.LastFrame_CentralPos = m_ImageAbstract.Central[m_ImageAbstract.Start_Y_Position];
    }
    */
    
    do//Last Of The wilds;
    {
        uint8 RampExist = 0;
        if(0 == m_ImageAbstract.openTheRamp){break;}
        for(uint8 loop = m_ImageAbstract.Start_Y_Position;loop < m_ImageAbstract.Last_Y_Position;loop++)
        {
            if((Sid_Double == TrkSide[loop])
             &&(255 != m_ImageAbstract.Left[loop])
             &&(255 != m_ImageAbstract.Right[loop]))
            {
                uint8 witdh = m_ImageAbstract.Right[loop] - m_ImageAbstract.Left[loop];
                if(witdh >= 1.5*m_ImageAbstract.width[loop])
                {
                    //RampExist = 1;
                }
            }
        }
        m_ImageAbstract.RampExist = RampExist;
    }while(0);
    
    uint8 isCanOutPut = 0;
    for(uint8 loop = m_ImageAbstract.Start_Y_Position;loop < m_ImageAbstract.Last_Y_Position;loop++)
    {
        m_Control.SideWhat[loop] = TrkSide[loop];
        if((m_ImageAbstract.Central[loop] <= 6)||(m_ImageAbstract.Central[loop] >= 181 - 3))
        {
            isCanOutPut = 1;
        }
        else
        {
            if(1 == isCanOutPut)
            {
                m_ImageAbstract.Last_Y_Position = loop;break;
            }
        }
    }
    
    
    m_ImageAbstract.LastFrame_CentralPos = m_ImageAbstract.Central[m_ImageAbstract.Start_Y_Position]
       /*+ (m_ImageAbstract.Central[m_ImageAbstract.Start_Y_Position] - m_ImageAbstract.LastFrame_CentralPos)*/;
    //���ԣ�����Ӧ����һ������������һ�εĵ�һ�У������Ǹ�ɶ
    
    m_ImageAbstract.Show_Start_Y_Position = m_ImageAbstract.Start_Y_Position;
    m_ImageAbstract.Show_Last_Y_Position = m_ImageAbstract.Last_Y_Position;
    
    
    
    m_ImageAbstract.LonlyLine_VeryStraightGetCorner_AboutDeadLine_Val_Y = 255;
    m_ImageAbstract.LonlyLine_VeryStraightGetCorner_AboutDeadLine_Var_x = 255;//����
    
    /**************************************************************************/
    //����
    /*
    if(1 == m_ImageAbstract.RtAngle_isLasting)//ֱ���������
    {
        v_BuzzerBeepSet(100);//
    }
    */
    
    if(/*(1 == TurningBeacauseVeryLittle__isHappened)||*//*(1 == m_ImageTesting.isMeetingHazard)*/
       (1 == m_ImageAbstract.RtAngle_isLasting)||(1 == m_ImageTesting.isMeetingHazard))
    {
        
        //m_Control.servo_imageYstopLine = 20;
        v_BuzzerBeepSet(300);//
    }
    else
    {
        //m_Control.servo_imageYstopLine = 40;
    }
    
    
    m_ModeMachine.showRtBlackAngle = show_About_RtAngle;
    m_ModeMachine.showLonlyInformation = show_About_LonlyLine;
    //m_ModeMachine.showBuzzerInformation = show_BuzzerInfor;
    m_ModeMachine.showBlackBar = show_isWrong;
    m_ModeMachine.showYcutDown = showYcutDown;
    m_ModeMachine.showBlackCutBar = showBlackCutBar;
    m_ModeMachine.becauseThisOutOfTheBlackRtAngle = becauseThisOutOfTheBlackRtAngle;
    
    m_ImageTesting.showLonlyLineFindAboutUpSet = showLonlyLineFindAboutUpSet;
    m_ImageTesting.HaveLonlyLineStartCornerLastLine = HaveLonlyLineStartCornerLastLine;
    m_ImageTesting.isOccurCross = isOccurCross;
    m_ImageTesting.FindLitteWidthTurning= FindLitteWidthTurning;
    m_ImageTesting.firstAndSecond_isBeenDrawing = firstAndSecond_isBeenDrawing;
    m_ImageTesting.SideChangeOccur = SideChangeOccur;
    
    m_ImageTesting.TurnOnTheLonlyLine = TurnOnTheLonlyLine;
}

void v_ImageMixis()//ͼ���ں�
{//�����м�������
    
}
/*
������ô˵�������Ҫʶ���ֱ�ǣ�Ҫôǿ�գ�Ҫô��ͼ�ϻ��Ƴ�����ʱ�˵Ĺ��ߡ�
����˵������ǰ�ߣ�ֻ���Ǻ��ߡ�
��ô��ô�б��أ�
���Խ�ֱ�ǹ���Ϊ����ֱ������Ҫһ��ǿ�й��������
��������ʵ�����������ֵ�Ļ�������������һ�����۵������
�Ǿ��ǵ�����һ��ʱ�򣬻�������е������
���û�п�����ƣ���ô���Ǽ��³��䣬���򲻻����ǿ�ղ���ȥ�������
���㼫�³��䣬����ǿ�ղ���ȥ��
��ô���������ַ�����
����⵽��ʧ���������ȫ��ʧ����3/4ʱ�����ķ�ʽ
��ⷽ��ϵ����С����ֵʱ��
*/

void v_ImageOptimalization()
{//ͼ���Ż�
    //float curve[58];//�ܹ�������60����������58������//������Ҫά���������
    for(uint8 loop = m_ImageAbstract.Start_Y_Position + 3;loop < m_ImageAbstract.Last_Y_Position - 2;loop++)
    {
        float curve_1 = 0;//GetCurve_n_cut_1(loop);//curve[loop - 1];
        float curve_2 = 0;//GetCurve_n_add_1(loop);//curve[loop + 1];
        if(curve_1*curve_2 < 0.f)
        {
            float curve_0 = 0;//GetCurve_n_cut_2(loop);//curve[loop - 2];
            float curve_3 = 0;//GetCurve_n_add_2(loop);//curve[loop + 2];
            if((curve_1*curve_2 > 0.f)&&(curve_2*curve_3 > 0.f))
            {
                if((__F_ABS(curve_1) < __F_ABS(curve_2))&&(__F_ABS(curve_1) < __F_ABS(curve_3)))
                {
                    curve_1 = - curve_1;
                }
                else if((__F_ABS(curve_2) < __F_ABS(curve_1))&&(__F_ABS(curve_2) < __F_ABS(curve_0)))
                {
                    curve_2 = - curve_2;
                }
            }
        }
        //�˴�Ϊ�ƶ�
        //uint8 newPoint = 0;
        //newPoint = setLeftInterVal(newPoint);
        //newPoint = setRightInterVal(newPoint);
        //m_ImageAbstract.Central[loop] = newPoint;
    }
}
void v_ImageAbstractEnhanced()
{
}


            //ratio = 1.f;// => ��ƽ��ֵ
            //���ϸ��������������κεķ��������Կ��ɶ�һ�е�ת��
            //��ԭ���뷨�Ǹ���ĳһ�������κ�����¶���������
            //ʵ��֤����һ����ֻ�п������ٶȣ�ѡȡһ�и����ٶȣ����߸����ٶ�ѡȡĳһ��
            
            //���Ǳ�������ǰ������ʹ��䣬��ʵ���ϣ������Ҫ��������˫����ϣ����ԣ����ܶ����һ�δ�ǲ�������ȫ�����
            //ͬʱ��������Ϊȫ�����źţ�Ӧ��ͬʱ�������������
            //���ǣ��������������Ƴɣ������������ٶȣ�������������ʵ�ʴ�������
            //���ڶ����Ǹ�ʲô�йأ����������Ŷ�������ת���Լ������������
            //���Ը������ʸ����������ǲ������ => S(1/R) ʵ��Ӧ���� S(1/R,V)
            //¥�Ϲ�ʽ���Ƕ����ʵ�������Ȼ��������ʱ�򣬸��໹�ǹ�ע�ٶȣ���������Ӧ�����ٶ���Ϊһ����Ҫ�ο������ڶ���
            
            //��ʱʲô�������ʺ�����������أ�����Ȼ�����ٶȵ��µ���������ǹؼ����أ����������������廯��
            //���������򻬣����Ǵ���������������һ����Χ�ںܺ��ʣ������⻬������ң�����������ͷ�������ò���ʧ��
            
            //ֻ�ܴ�ֱ�����������ٶȻ���һ����Ӱ�죬�����໹Ӧ������Ӧ���������ͬǰհ��Զ������ǰ��ǡ�
            //��������Ӧ�������ٶȷ���������ǰհ => ����Ч�У�����Ч���㹻��ʱһ����Ӱ����
            //������Ч���㹻��ʱ���Ҿ��ò��������̫���Ӱ�죬����Ӧ���ǣ��ٶȳ��Կ���ʱ��=>���������ǵ��������ء�
uint16 n_getSteerMiddleLine_UsedAverage()//������Ʋ���
{//����ǰʮ��Ӱ������Σ�//����20cm���ڵ�Ӱ��
    /*
    if(m_Control.GiveSpeed < 250)
    {
        m_Control.servo_imageYstopLine = 30;
    }
    else
    {
        m_Control.servo_imageYstopLine = 40;
    }
    */
    sint16 central_counter = 0;//���ص������
    
    uint16 LastY_Position = 0;//(m_ImageAbstract.Last_Y_Position > m_Control.servo_imageYstopLine)?
                             //m_Control.servo_imageYstopLine:m_ImageAbstract.Last_Y_Position;//ѡ����Զ����
    if(m_ImageAbstract.Last_Y_Position > m_Control.servo_imageYstopLine)
    {
        LastY_Position = m_Control.servo_imageYstopLine;
    }
    else
    {
        LastY_Position = m_ImageAbstract.Last_Y_Position;//��������϶�Զ�����п��ܲ�����
    } 
                             
    sint16 all_height = LastY_Position - m_ImageAbstract.Start_Y_Position;//�߶�ȫ��
    float f_turning_para[60];//ת�����

    float central_ratio = 1.f;
    //���Բ����� => ƫ���������ߵľ����Ǿ��Բ���ռ�����ܳ��ľ����ǲ����
    //���߱任����ܻ�ת�����
    float y_10cm_world = 0.f;//��ʵ�����10cm���ڣ����Բ��ÿ��� => �ӽ�16��17cm
    do//�������һ������Ҫ������
    {
        float d = m_Control.image_ratio[3];
	float e = m_Control.image_ratio[4];
	float f = m_Control.image_ratio[5];
	float g = m_Control.image_ratio[6];
	float h = m_Control.image_ratio[7];
        
        
        float y0 = (d*m_ImageAbstract.Central[0] + e*0.f + f)/(g*m_ImageAbstract.Central[0] + h*0.f + 1.f);
        //y0 = y0 + (30*100/45);
        //y0 = (f-y0)/(y0*h-e);
        
        y_10cm_world = y0 + (30*10/45);//10cm
        y_10cm_world = (f-y_10cm_world)/(y_10cm_world*h-e);//��ȡ
    }while(0);
    /*
    if(all_height <= y_10cm_world)//���ò���Ϊת��
    {m_Control.need_Hold = 1;
    central_counter = m_ImageAbstract.servo_gaiaInfor_image;return central_counter;}
    */
    float counter_pisCut = 0.f;//������
    uint8 timer_counter = 0; float pos_counter = 0;
    for(uint8 loop = m_ImageAbstract.Start_Y_Position + 1;
              loop < LastY_Position - 1;
              loop ++)
    {//ȫ����Ϣ��Ϊ�ο�
        central_ratio = 1.f;//����������ȵ�ϵ������
        //if(loop >= y_10cm_world)//����10cm���ʱ���Ҫʹ��
        //{
        if((1 == m_CarRunningMode.isUsedDoubleServoPID)
         &&((Sid_Left == m_Control.SideWhat[loop])
          ||(Sid_Right == m_Control.SideWhat[loop])))
        {
            central_ratio = 1.f;
        }
        else
        {
            central_ratio = 1.414f;
        }//�����϶�����
       // f_turning_para[loop] 
        f_turning_para[loop] = (30.f*(m_ImageAbstract.Central[loop] - 86)/(m_ImageAbstract.width[loop]/central_ratio));//��ԭ// / 45.f
        //pos_counter += f_turning_para[loop] * m_Control.P_Curve;
        timer_counter ++;
        
        float number = m_Control.K_Curve;//
        float a = (number / 2.f) - 1.f / (2.f * LastY_Position);
        const float b = 1;
        const float c = 1;
        float ratio = a * timer_counter * timer_counter + b * timer_counter + c;
        pos_counter += (f_turning_para[loop] * m_Control.P_Curve) * ratio;
        
        counter_pisCut += ratio;
        //}
    }
    central_counter = 86 + (sint16)(pos_counter / /*timer_counter*/counter_pisCut);//��ȡ
    //central_counter += 0.2*(m_ImageAbstract.Central[m_ImageAbstract.Last_Y_Position-1] - m_ImageAbstract.Central[m_ImageAbstract.Start_Y_Position]);
    if(central_counter < 0){central_counter = 0;}
    if(central_counter > 184){central_counter = 184;}
    return central_counter;
}
/*
uint16 n_getSteerMiddleLine()//������Ʋ���
{
    sint16 central_counter = 0;//���ص������
    
    uint16 LastY_Position = (m_ImageAbstract.Last_Y_Position > m_Control.servo_imageYstopLine)?
                             m_Control.servo_imageYstopLine:m_ImageAbstract.Last_Y_Position;//ѡ����Զ����
    sint16 all_height = LastY_Position - m_ImageAbstract.Start_Y_Position;//�߶�ȫ��
    float f_turning_para[60];//ת�����
    if(all_height <= 10)//���ò���Ϊת��
    {m_Control.need_Hold = 1;
    central_counter = m_ImageAbstract.servo_gaiaInfor_image;return central_counter;}
    float central_ratio = 1.f;
    //���Բ����� => ƫ���������ߵľ����Ǿ��Բ���ռ�����ܳ��ľ����ǲ����
    //���߱任����ܻ�ת�����
    
    do//�������һ������Ҫ������
    {
        //float a = m_Control.image_ratio[0];
	//float b = m_Control.image_ratio[1];
	//float c = m_Control.image_ratio[2];
        float d = m_Control.image_ratio[3];
	float e = m_Control.image_ratio[4];
	float f = m_Control.image_ratio[5];
	float g = m_Control.image_ratio[6];
	float h = m_Control.image_ratio[7];
        
        float y0 = (d*m_ImageAbstract.Central[0] + e*0.f + f)/(g*m_ImageAbstract.Central[0] + h*0.f + 1.f);
        y0 = y0 + (30*100/45);
        y0 = (f-y0)/(y0*h-e);//
    }while(0);
    
    uint8 timer_counter = 0; float pos_counter = 0;
    for(uint8 loop = m_ImageAbstract.Start_Y_Position + 1;
              loop < LastY_Position - 1;
              loop ++)
    {//ȫ����Ϣ��Ϊ�ο�
        if(((255 == m_ImageAbstract.Left[loop])&&(255 == m_ImageAbstract.Right[loop]))
            &&
        ((255 != m_ImageAbstract.Left[loop])&&(255 != m_ImageAbstract.Right[loop])))
        {
            central_ratio = 1.f;
        }
        else
        {
            central_ratio = 1.414f;
        }//�����϶�����
        f_turning_para[loop] = (30.f*(m_ImageAbstract.Central[loop] - 85)/(m_ImageAbstract.width[loop]/central_ratio));//��ԭ// / 45.f
        pos_counter += f_turning_para[loop] * m_Control.P_Curve;
        timer_counter ++;
    }
    central_counter = 85 + (sint16)(pos_counter / timer_counter);//��ȡ
    if(central_counter < 0){central_counter = 0;}
    if(central_counter > 184){central_counter = 184;}
    return central_counter;
}
//��Ȩƽ������ı���Ч���������൱�ڣ���Ч���Ǵ�䶯������Ȩƽ��ֻ��С�仯
*/
uint16 n_getSteerByWire()
{
    //��������������Ŀ��Ӧ����
    //��������������Կ��ǣ�һ�����ߵ�б�ʷֲ�����һ������ǰհ��Զ
    //y = a*x*x + b*x + c//������Ϊһ������
    //y' = 2ax + b
    //Ҳ����2a����б�ʵı仯
    return 0;
}


/*����˼·
    NaN => Start => ShutDown
             ||
     ^        V
    ||   <=  Pend
*/
/*            if(
               (mid_cut == min)
             &&(255 != m_ImageAbstract.Right[loop])
             &&(255 != m_ImageAbstract.Left[loop])    
             &&(m_ImageAbstract.Right[loop] - m_ImageAbstract.Left[loop] < 0.707*m_ImageAbstract.width[loop])
               )
            {//����һ�ַ��������������Ķ������=>���ѵ����ܵ���ĵط���Ȼ�����������������ֹ���ľ������ʶ��
                if((__ABS(m_ImageAbstract.Central[loop-1] - m_ImageAbstract.Right[loop]) < m_ImageAbstract.width[loop]/4.5)&&(left_cut > right_cut))
                {
                    mark = 2;
                }
                if((__ABS(m_ImageAbstract.Central[loop-1] - m_ImageAbstract.Left[loop]) < m_ImageAbstract.width[loop]/4.5)&&(left_cut < right_cut))
                {
                    mark = 1;
                }
            }*/