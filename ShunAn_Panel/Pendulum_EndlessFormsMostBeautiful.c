#include "arm_cm4.h"
#include "MK60F15.h"
#include "ShunAn_Lib.h"
#include "start_ShunAn.h"
#include "ThePoet_ThePendulum.h"
#include "Pendulum_EndlessFormsMostBeautiful.h"

#include "Poet_ImageBeholder.h"//摄像头
#include "Poet_Revelation.h"//

#include "Poet_Buzzer.h"

#include "Poet_InputInterface.h"
#include "Poet_Motor.h"

#include "Poet_Servo.h"
s_CarRunningMode m_CarRunningMode;
s_Control m_Control = {0};//控制参数定义
s_ImageAbstract m_ImageAbstract = {0};//图像处理
unsigned short int u16_RevePanel[96][60];////图像数组

s_ImageTesting m_ImageTesting;

void v_motor_doneFunc(void)
{//这里涉及到中断操作，需要清中断
    //这里
    PIT_Flag_Clear(PIT1);//清中断
    m_Control.motor_control_time ++;//控制时间自加
    
    m_Control.LightChaserLogic_time_cut_1 = m_Control.LightChaserLogic;
    m_Control.LightChaserLogic = b_GetLightChaserStatus();
    
    if(0 != vPtr_CheckLightingChaser){vPtr_CheckLightingChaser();}
    if(!(m_Control.motor_control_time % 5))//限制控制周期为4ms一控制
    {//10 ms一次
        m_Control.LeftMotorSpeed_n_cut_1 = m_Control.LeftMotorSpeed;//以下为参数获取
        m_Control.RightMotorSpeed_n_cut_1 = m_Control.RightMotorSpeed;
        m_Control.LeftMotorSpeed = n_GetMotor_speed(MOTOR_def_Left_speed_QD_com);//转速获取
        m_Control.RightMotorSpeed = -n_GetMotor_speed(MOTOR_def_Right_speed_QD_com);
        m_Control.ServoAngle = n_GetServoAngle();//获取当前舵机数值
        
        if((0 == m_Control.start_motorRunning_flag)//计算当前的
        &&((m_Control.runningEnd_time > m_system.timer)&&(m_system.timer > m_Control.starting_time)))
        {
            //v_leftMotor_pwmOut(500,1);
            //v_rightMotor_pwmOut(500,1);
            m_Control.LeftRightRatio = n_GetServoGraduated(m_Control.ServoAngle);//给定转速率  
            
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
        }//电机控制至此结束
    }
    
}

void v_ImageCutInformationShow(uint8 mode)//===== -图像展示- =====//
{
    //if(0 == m_ImageAbstract.isImageInformationShowing)
    //{
    //    return;//如果不展示则退出
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
    //m_ImageAbstract.DataShowOK_flag = 0;//消除标志位
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
    for(uint8 loop = 0;loop < 60;loop++)//检测跳变次数
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
{//最核心代码，根据曲率绘制点 
    math_f32 X_Mid = (near_X + far_X) * 0.5f;
    math_f32 Y_Mid = (near_Y + far_Y) * 0.5f;//确定中间位置
    math_f32 Round_halfLong = 0.f;
    if(0.f == Curve)
    {//直线 
	*used_X = (used_Y-near_Y)*(far_X-near_X)/(far_Y-near_Y) + near_X;
	return 1;
    }
    else
    {
	math_f32 isRight = (Curve < 0.f)?-1.f:1.f;//确定曲率走向 //小于零右旋 
        Round_halfLong = 1.f / __F_ABS(Curve);
        math_f32 X_Cut = (far_X - near_X);// * 0.5f;
	math_f32 Y_Cut = (far_Y - near_Y);// * 0.5f;//半长 
		
	math_f32 Round_halfLong_Down = (X_Cut*X_Cut + Y_Cut*Y_Cut);//半径下面的那条线
	math_f32 RoundPoint_LastWilds = (Round_halfLong*Round_halfLong - 0.25f*Round_halfLong_Down);//求最后一步的长度
	math_f32 small_change = SquareRootFloat(__F_ABS(RoundPoint_LastWilds / Round_halfLong_Down));//(y2-y1)y = (x1-x2)x + C
		
	math_f32 RoundX0 = isRight*Y_Cut*(small_change) + X_Mid;//确定原点 
	math_f32 RoundY0 = -isRight*X_Cut*(small_change) + Y_Mid;

	math_f32 Y_CutVar_WithRoundUsed = (RoundY0 - used_Y);//Y偏置 
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
    float S_4 = (x_32_cut * y_12_cut - x_12_cut * y_32_cut) * 2.f;//面积
    float l_12 = (x_12_cut*x_12_cut + y_12_cut*y_12_cut);
    float l_23 = (x_32_cut*x_32_cut + y_32_cut*y_32_cut);
    float l_13 = (x_31_cut*x_31_cut + y_31_cut*y_31_cut);
    float curve = S_4 * SquareRootBedivFloat(l_12 * l_23 * l_13);
    return curve;
}

//全主元高斯法
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
	// 矩阵赋值[行][列]
	uint8 Row_MainElementChange_Temp[8] = { 0, 1, 2, 3, 4, 5, 6, 7 };//列主元保留交换特性//与列变换同时进行 
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
	//以下为初等行变换 
	uint8 Line_BeWithRowChange = 0;//AB矩阵的秩//非0，列变行变，列变行不变 
	uint8 Row_Ctr = 0;//列计数 
	for (Row_Ctr = 0; Row_Ctr < 9; Row_Ctr++)//选取每列，目标就是消去此列所有元素或只剩下一个1//依赖行信息 
	{
		//====================================================================//
		//秩确认 
		if (8 == Row_Ctr)//确认AB矩阵秩是否满秩 
		{
			if (8 == Line_BeWithRowChange)
			{
				//cout << "满秩" << endl;
			}
			else
			{
				//cout << "不满秩" <<endl;//return 'F';//非满秩 
                                return 'F';
			}
			break;//满秩 
		}
		//====================================================================//
		//求解方程组 
		do//获取本行信息//换取全主元消去法 
		{
			//获取最大值信息 
			uint8 Max_Num_Line_address = Line_BeWithRowChange;//认定此时数值最大
			uint8 Max_Num_Row_address = Row_Ctr;
			float Max_Num_Var = __F_ABS(AB[Line_BeWithRowChange][Row_Ctr]);//最大值 
			for (uint8 Line_ForFindMax_loop = Max_Num_Line_address; Line_ForFindMax_loop < 8; Line_ForFindMax_loop++)
			{
				for (uint8 Row_ForFindMax_loop = Max_Num_Row_address; Row_ForFindMax_loop<8; Row_ForFindMax_loop++)
				{
					if ((__F_ABS(AB[Line_ForFindMax_loop][Row_ForFindMax_loop])) > Max_Num_Var)
					{
						Max_Num_Var = __F_ABS(AB[Line_ForFindMax_loop][Row_ForFindMax_loop]);//最大值赋值
						Max_Num_Line_address = Line_ForFindMax_loop;//行赋值 
						Max_Num_Row_address = Row_ForFindMax_loop;//列赋值 
					}
				}
			}
			//行列交换 
			if ((0.0 != Max_Num_Var) && (Line_BeWithRowChange != Max_Num_Line_address) && (Row_Ctr != Max_Num_Row_address))//同列各行最大值确定非零 
			{
				//行变换
				float lineRow_tempForChange = 0.0;
				for (uint8 loop = 0; loop < 9; loop++)//行交换 
				{
					lineRow_tempForChange = AB[Line_BeWithRowChange][loop];
					AB[Line_BeWithRowChange][loop] = AB[Max_Num_Line_address][loop];
					AB[Max_Num_Line_address][loop] = lineRow_tempForChange;
				}
				//列变换 
				for (uint8 loop = 0; loop < 8; loop++)
				{
					//列交换 
					lineRow_tempForChange = AB[loop][Row_Ctr];
					AB[loop][Row_Ctr] = AB[loop][Max_Num_Row_address];
					AB[loop][Max_Num_Row_address] = lineRow_tempForChange;
					//参数变换
				}
				uint8 changeFloatTemp = 0;
				changeFloatTemp = Row_MainElementChange_Temp[Row_Ctr];//Row_Ctr有可能不等于 Row_MainElementChange_Temp[Row_Ctr]
				Row_MainElementChange_Temp[Row_Ctr] = Row_MainElementChange_Temp[Max_Num_Row_address];
				Row_MainElementChange_Temp[Max_Num_Row_address] = changeFloatTemp;
			}
		} while (0);
		//
		if (0.0 != AB[Line_BeWithRowChange][Row_Ctr])//本次元素是否为0
		{
			//本行以外信息 （下次从此更新）//行信息继承、列信息继承
			float self_Line_GaiaNum = AB[Line_BeWithRowChange][Row_Ctr];//选取本行归一化数值
			for (uint8 self_Line_RowCtr = Row_Ctr; self_Line_RowCtr < 9; self_Line_RowCtr++)
			{
				AB[Line_BeWithRowChange][self_Line_RowCtr] = AB[Line_BeWithRowChange][self_Line_RowCtr] / self_Line_GaiaNum;//本行归一化
			}
			for (uint8 Cal_Line_Ctr = Line_BeWithRowChange + 1; Cal_Line_Ctr < 8; Cal_Line_Ctr++)//行增广，列起始点与行同向
			{
				//主元素不为0，消去本行所有元素
				//删除本行外其余行的数值
				float Die_SammLikeGaiaLinesRow = AB[Cal_Line_Ctr][Row_Ctr] / AB[Line_BeWithRowChange][Row_Ctr];//获取消除增益
				//cout << "Die_SammLikeGaiaLinesRow" << Die_SammLikeGaiaLinesRow << endl;//用于测试 
				//*****************************************************************************//
				for (uint8 ExLine_RowNumCtr = Row_Ctr; ExLine_RowNumCtr < 9; ExLine_RowNumCtr++)//从目标原始行开始，每行固定消去
				{
					AB[Cal_Line_Ctr][ExLine_RowNumCtr] = AB[Cal_Line_Ctr][ExLine_RowNumCtr] - //行固定，列增广
						Die_SammLikeGaiaLinesRow * AB[Line_BeWithRowChange][ExLine_RowNumCtr];//
					//参数描述
				}//****************************************************************************//
			}
			Line_BeWithRowChange++;//与列变换同行 			
		}//else//{//为0则忽略本次 //}
	}//=======================================================================//
	//回代计算//满秩时候可得最优解
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
		//cout << X[Row_MainElementChange_Temp[loop]] << endl;//loop行所在信息即 Row_MainElementChange_Temp[loop]应存储信息 
	}
	*/

	//cout << "秩" << (float)Line_BeWithRowChange << endl;
	Line_BeWithRowChange -= 1;//秩为行秩，满秩的时候数值为8，故必须删去一个数值//求取秩所在的行坐标
	for (sint8 LineCtr_Cyclotron = Line_BeWithRowChange; LineCtr_Cyclotron >= 0; LineCtr_Cyclotron--)//从秩开始，逐步向上减去
	{
		//break;
		uint8 LineMaxFinder_UpperNum = 8;//总共选有行//计数用//可以将每行起始位置赋值给此数，不过这样就要求这个得跳出这个循环
		uint8 EachLine_StarRowNum = 0;//初始化失误：Line_BeWithRowChange - 1;2015.2.8
		while (LineMaxFinder_UpperNum)//获取所在行的纵坐标//满秩时将不服从主阵
		{
			if (0.0 != AB[LineCtr_Cyclotron][EachLine_StarRowNum])//此步为的是获取需要减去行的首有数值的数据 
			{
				break;
			}
			EachLine_StarRowNum++;
			LineMaxFinder_UpperNum--;
		}
		//cout <<"EachLine_StarRowNum"<<(float)EachLine_StarRowNum<<endl;//测试用 
		//cout << "LineMaxFinder_UpperNum" <<(float)LineMaxFinder_UpperNum<<endl;
		if (0 != LineMaxFinder_UpperNum)//为搜寻到最后一行
		{
			//EachLine_StarRowNum为本行起始位置
			//先行减，后移动列
			for (uint8 Line_Ctr = 0; Line_Ctr < LineCtr_Cyclotron; Line_Ctr++)//从RowCtr到LineCtr_Cyclotron所在行
			{
				float Die_ForLine = AB[Line_Ctr][EachLine_StarRowNum] / AB[LineCtr_Cyclotron][EachLine_StarRowNum];//先求取截去增益

				//cout << "Die_ForLine" << Die_ForLine <<endl;
				for (uint8 RowCtr_ForChace = EachLine_StarRowNum; RowCtr_ForChace < 9; RowCtr_ForChace++)//为回代计数
				{
					AB[Line_Ctr][RowCtr_ForChace] = AB[Line_Ctr][RowCtr_ForChace] - Die_ForLine * AB[LineCtr_Cyclotron][RowCtr_ForChace];
				}
			}
		}
	}
	//========================================================================//
	//存入X中 => 最后的元素 
	for (uint8 loop = 0; loop < 8; loop++)
	{
		X[Row_MainElementChange_Temp[loop]] = AB[loop][8];//loop行所在信息即 Row_MainElementChange_Temp[loop]应存储信息 
	}
	//Line_BeWithRowChange => 行秩 
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
		//cout << X[Row_MainElementChange_Temp[loop]] << endl;//loop行所在信息即 Row_MainElementChange_Temp[loop]应存储信息 
	}
	*/

	return 'T';
}


//============================================================================//
//载入控制参数
void v_LoadingControlPara(s_Control* temp_Control,s_ImageAbstract* ImageAbstract)
{//标定摄像头
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
void v_ImageCut()//图像信息处理//selfjudge_SendMessage=>
{
   // uint8 mayBeRampHappened = 0;
    
    uint8 LonlyLineCounter = 0;//更名以便于更改代码
    
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
    //常数设置
    uint8 isHaveLonlyLineStartCorner = 0;
    uint8 HaveLonlyLineStartCornerLastLine = 255;
    
    const uint16 constNum_X_MaxCounter = 184;//=>消除最后一个零点情况
    const uint16 constNum_Line_MaxCounter = 60;//
    const uint16 constn_xFindJumpLine_Width = 3;//横向跨线//固定值
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
    struct ___vaild_heightInterval//高度的最佳有效区域
    {
	uint8 n_lastEnd_Y;// = m_height;//最终的Y数值 => 可以由绝对宽度定 => 但可以由break跳出循环结束
	uint8 n_firstStart_Y;// = 0;//初始值
    }vaild_heightInterval;
    vaild_heightInterval.n_firstStart_Y = 0;
    vaild_heightInterval.n_lastEnd_Y = constNum_Line_MaxCounter;//
    
    typedef 
    struct//图像绝对数据框架
    {
	float f_width_ratio[2];//宽度变化率
	float f_depth_ratio[5];//向前等量宽度对应的长度信息=>除以15即当前的纵向情况
    }s_Frame_Trk;
    s_Frame_Trk Frame_Trk;
    do//框架赋值//认定30为标准框架
    {
	float a = m_Control.image_ratio[0];//float b = m_Control.image_ratio[1];//float c = m_Control.image_ratio[2];
	float e = m_Control.image_ratio[4];//float d = m_Control.image_ratio[3];
	float f = m_Control.image_ratio[5];//float g = m_Control.image_ratio[6];
	float h = m_Control.image_ratio[7];
	Frame_Trk.f_width_ratio[1] = 30.f * h / a;//float f_width_ratio[2];//x = (30*h/a)*y + 30/a//绝对宽度系数
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
    uint16 perLine_vaild_width = constNum_X_MaxCounter;// - 1;//185-1//一行有效宽度 => 184
    //========================================================================//
    //sint16 lostDouble_UpestHeight = 0;//丢双边计数最大值
    uint8 lostDouble_TimerCounter = 0;//双边计时器
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
    }s_LostDouble;//绘制丢失双边 => 最主要用的地方在十字
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



    /* //以下为基本流程
     * 持续 是 => 进行特殊寻线
     *      否 => 寻找是否满足直角条件
     * ------------------------------------------------------------------- *
     *
     */    
    uint16 x_startPos = m_ImageAbstract.LastFrame_CentralPos;//x轴起始位置，取值范围为0 - m_width//即中线所在位置
    sint16 x_startPos_n_add_one = m_ImageAbstract.LastFrame_CentralPos;//x(n+1)
    //========================================================================//
    //========================================================================//
    //由跳变决定的边沿位置
    typedef
    struct//边沿数据情况
    {
	uint8 n_right_end;//Right截止下降沿
	uint8 n_left_end;//Left截止下降沿
	uint8 n_right_banDone;//Right侧出现上升沿
	uint8 n_left_banDone;//Left侧出现上升沿
        uint8 n_left_banDone_firstLine;
        uint8 n_right_banDone_firstLine;
    }s_number_Trk;//赛道数据信息
    s_number_Trk number_Trk;//数值信号//以下一行为初始化
    number_Trk.n_left_banDone = 0;number_Trk.n_right_banDone = 0;number_Trk.n_left_end = 0;number_Trk.n_right_end = 0;
    //========================================================================//

    typedef
    struct
    {
        uint8 Last_BlackLine_suddenlyHappen;//最近一次黑色行计数
        /*uint8 LastBlackLine_add_15cm_Line;//15cm开外的X的位置
        float LastBlackLine_add_15cm_LeftRow;//15cm开外的Y的位置
        float LastBlackLine_add_15cm_RightRow;//15cm开外的Y的位置*/
        uint8 LastBlackLine_RowSideWhich;
        uint8 AllBeforeisBlack;
        uint8 hasHappened_Once;
    }s_LastSide;//最后边
    s_LastSide LastSide;//最后一边
    //LastSide.now_color = color_NaN;
    LastSide.Last_BlackLine_suddenlyHappen = 255;//最后一次黑
    LastSide.AllBeforeisBlack = 0;
    LastSide.hasHappened_Once = 0;
    //========================================================================//
    typedef
    struct
    {
	uint8 leftSide_isDown;//是否有效边沿
	uint8 rightSide_isDown;
        
	uint8 leftSide_isUp;//上升沿是否存在
	uint8 rightSide_isUp;
    }s_LogicCondition;//逻辑信号结构体
    s_LogicCondition LogicCondition;//逻辑信息存在//以下一行为逻辑判定
    LogicCondition.leftSide_isDown = 0;LogicCondition.leftSide_isUp = 0;LogicCondition.rightSide_isDown = 0;LogicCondition.rightSide_isUp = 0;

	//以下为信息值
    uint16 perLine_JumpNumVaild = 0;//跳变阈值//一行大于此数值时，跳变可以认定为合理
    uint16 perLine_JumpNumNonVaild = 0;//跳变无效值//一行小于此数值时，跳变认为为不合理
	//理论来说，赛道在范围内越多，此数值越合理。
	//而第一次获取跳变仍是不可知情形
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
	//=>故有一种思路，获取所有合理跳变数值，然后进行连续性判定
	//若连续性判定合理，则认定为合适的点或边
	//具体操作时，可以暂存另一数组，然后将情形填入

	//===================================================//
	//进入处理部分
	//前部处理函数
    //=>有效高度区间设定
    vaild_heightInterval.n_firstStart_Y = 0;//
    vaild_heightInterval.n_lastEnd_Y = constNum_Line_MaxCounter;//行数计时
    //
    do//首尾确认//vaild_heightInterval
    {
	for (uint16 loop = 0; loop < constNum_Line_MaxCounter; loop++)//遍历全部宽度
	{
            float TrkAll_width = Frame_Trk.f_width_ratio[1] * loop + Frame_Trk.f_width_ratio[0];
            float Trk_onePoint_width = TrkAll_width / 15.f;
            if (TrkAll_width >= constNum_X_MaxCounter)//获取最近点
            {
                vaild_heightInterval.n_firstStart_Y = loop;//获取最近
            }
            if (Trk_onePoint_width <= 1)
            {
		vaild_heightInterval.n_lastEnd_Y = loop;//获取最远
		break;//结束
            }
	}
    } while (0);
    m_ImageAbstract.Start_Y_Position = vaild_heightInterval.n_firstStart_Y;
    //========================================================================//
    //========================================================================//
    //========================================================================//
    x_startPos = m_ImageAbstract.LastFrame_CentralPos;//将上次中值继承于本次 => 上一场的中值继承 =>这里跟单线有关系，需要将单线将此耦合删除
    //========================================================================//
    //========================================================================//
    //========================================================================//
//	x_startPos = m_width / 2;//初始赋值
    sint16 process_find_timer = -1;//进程搜寻时间
    //=====================================================================================================//
    //进入判断环节
    // Number全部初始化
    uint8 lr_n_cut_1_isExist = 3;//左右是否存在标志3=>不存在，0边1边2边
    
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
    uint8 end_y_ctr = vaild_heightInterval.n_lastEnd_Y;//提前赋值给最终可能情况
    for (uint8 y_ctr = vaild_heightInterval.n_firstStart_Y;
                y_ctr < vaild_heightInterval.n_lastEnd_Y;
                y_ctr++)//数值循环判定=>基本最早环节为185点以内，且最外处的宽度应小于 constn_xFindJumpLine_Width
    {
        //m_ImageAbstract.Central[y_ctr] = x_startPos_n_add_one;
        number_Trk.n_left_end = 255;
        number_Trk.n_right_end = 255;
        number_Trk.n_left_banDone = 255;
        number_Trk.n_right_banDone = 255;
        //程序进行时间=============================================//
	process_find_timer++;//搜寻次数判定=>防止因为代码次序导致的失控
        //
	perLine_vaild_width = (uint16)(Frame_Trk.f_width_ratio[1] * (float)y_ctr + Frame_Trk.f_width_ratio[0]);//有效行的赛道有效宽
	m_ImageAbstract.width[y_ctr] = perLine_vaild_width;
        
        //目标会一直寻找到下降沿或者寻找失败
        
        uint8 isMaybefoundShutDown = 0;
        //====================================================================//
        if(process_find_timer > 0)//肯定与上一场的信息做甄别
        {
            sint16 n_jumpVar = m_ImageBeholder_Data[y_ctr][x_startPos] - 
                               m_ImageBeholder_Data[y_ctr - 1][x_startPos];
            sint16 absn_jumpVar = __ABS(n_jumpVar);
            if ((absn_jumpVar > perLine_JumpNumVaild)&&(absn_jumpVar > perLine_JumpNumNonVaild))
            {
                if(n_jumpVar < 0)
                {
                    LastSide.Last_BlackLine_suddenlyHappen = y_ctr;//本次是
                    LastSide.hasHappened_Once = 1;
                    isMaybefoundShutDown = 1;
                    //break;这里找到了一个黑点
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
                        LastSide.Last_BlackLine_suddenlyHappen = y_ctr;//本次是
                        LastSide.hasHappened_Once = 1;
                        isMaybefoundShutDown = 1;
                        //break;这里找到了一个黑点
                    }
                }
            }
            LastJumpVaildNumber = (perLine_JumpNumVaild > perLine_JumpNumNonVaild)?perLine_JumpNumVaild:perLine_JumpNumNonVaild;
        }//这里判断的是本次中心点的颜色
        
        
        
        do//获取每行的信息-----------------------------------------------------//
	{//这段代码已经可以正确运行，故删去一些行剪短行数。这段代码的本意是得出合适的跳变数值。
            uint8 perline_aver_pixelNumber = 0;uint8 perline_jump_max2min = 0;uint32 AllPixel_Counter = 0;
            uint8 maxPixel = 0;uint8 minPixel = 255;uint8 BookLineNumber = 0;//记录的行数
            for (uint16 loop = 0; loop < constNum_X_MaxCounter; loop++)//循环开始
            {
                if(0 != m_ImageBeholder_Data[y_ctr][loop])
                {
                    BookLineNumber ++;AllPixel_Counter += m_ImageBeholder_Data[y_ctr][loop];
                    if (m_ImageBeholder_Data[y_ctr][loop] > maxPixel){ maxPixel = m_ImageBeholder_Data[y_ctr][loop]; }
                    if (m_ImageBeholder_Data[y_ctr][loop] < minPixel){ minPixel = m_ImageBeholder_Data[y_ctr][loop]; }
                }
            }//计数循环结束
            perline_aver_pixelNumber = AllPixel_Counter / BookLineNumber;//均值
            perline_jump_max2min = maxPixel - minPixel;//差值
            perLine_JumpNumVaild = (uint8)((float)perline_jump_max2min * 0.4f);//两个跳变值
            perLine_JumpNumNonVaild = (uint8)((float)perline_aver_pixelNumber * 0.4f);//两个跳变值
	} while (0);//特征提取完毕---------------------------------------------//
        /*如果是第一次判定，可以进行一次关于这个点究竟是黑点还是白点的判断*/
        do//寻找左右线
	{
            //======宽度匹配==================================================//
            uint16 n_find_half_mutlwidth = (uint16)((perLine_vaild_width * 1.414f * 1.25f)/2.f);//半绝对宽度乘以合理偏置=>分配给理论数值
            sint16 x_rightLimitNum = x_startPos + n_find_half_mutlwidth;//右侧距离
            sint16 x_leftLimitNum = x_startPos - n_find_half_mutlwidth;//左侧距离//理论合理限制
			
            uint16 tempx_rightLimitNum = x_rightLimitNum;
            if (x_rightLimitNum > constNum_X_MaxCounter - constn_xFindJumpLine_Width)
            { tempx_rightLimitNum = constNum_X_MaxCounter - constn_xFindJumpLine_Width; }//幅度限制

            uint16 tempx_leftLimitNum = x_leftLimitNum;
            if (x_leftLimitNum < constn_xFindJumpLine_Width){ tempx_leftLimitNum = constn_xFindJumpLine_Width; }//幅度限制
			
            if(process_find_timer <= constn_DeadLine_BeWith)//3啊！
            {//更改前行
                tempx_leftLimitNum = constn_xFindJumpLine_Width + constn_xFindJumpLine_Width;
                tempx_rightLimitNum = constNum_X_MaxCounter - constn_xFindJumpLine_Width - constn_xFindJumpLine_Width;
            }//这里的作用是忽略了当过度在左或右导致的循迹失败
            
            if(1 == TurningBeacauseVeryLittle.isHappened)
            {
                if(Sid_Left == TurningBeacauseVeryLittle.side)
                {tempx_rightLimitNum = constNum_X_MaxCounter - constn_xFindJumpLine_Width - constn_xFindJumpLine_Width;}
                if(Sid_Right == TurningBeacauseVeryLittle.side)
                {tempx_leftLimitNum = constn_xFindJumpLine_Width + constn_xFindJumpLine_Width;}
            }
            //======右线是否存在==============================================//
            LogicCondition.rightSide_isUp = 0;//是否存在上升沿
            LogicCondition.rightSide_isDown = 0;//是否存在有效边沿
            for (sint16 LINE_CTR = x_startPos;
                        LINE_CTR + constn_xFindJumpLine_Width < tempx_rightLimitNum; 
                        LINE_CTR++)//向右提线
            {
		sint16 n_jumpVar = m_ImageBeholder_Data[y_ctr][LINE_CTR] - m_ImageBeholder_Data[y_ctr][LINE_CTR + constn_xFindJumpLine_Width];
                sint16 absn_jumpVar = __ABS(n_jumpVar);

		if ((absn_jumpVar > perLine_JumpNumVaild)
                 && (absn_jumpVar > perLine_JumpNumNonVaild))
                {
                    if (n_jumpVar > 0)//下降沿
                    {
			number_Trk.n_right_end = LINE_CTR;
			LogicCondition.rightSide_isDown = 1;
			break;//跳出本循环
                    }
                    else//上升沿
                    {
                        number_Trk.n_right_banDone = LINE_CTR;
                        LogicCondition.rightSide_isUp = 1;
                    }
                }
            }//右线搜寻完毕
            //======左线是否存在================================================================//
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
                    if (n_jumpVar > 0)//下降沿
                    {
			number_Trk.n_left_end = LINE_CTR;
			LogicCondition.leftSide_isDown = 1;
			break;//跳出本循环
                    }
                    else//广义宽度
                    {
			number_Trk.n_left_banDone = LINE_CTR;
			LogicCondition.leftSide_isUp = 1;
                    }
                }
            }//左线搜寻完毕
        } while (0);//左右线寻找完毕
        
        if(0 == process_find_timer)//0搜寻
        {
            number_Trk.n_left_banDone_firstLine = number_Trk.n_left_banDone;
            number_Trk.n_right_banDone_firstLine = number_Trk.n_right_banDone;
        }
        
        //====================================================================//
        //以下这些用作处理终止线
        
        if(1 == isMaybefoundShutDown)
        {//发发现了需要关闭的东西
            if(((255!=number_Trk.n_right_banDone)&&(255!=number_Trk.n_left_banDone)
              &&((number_Trk.n_right_banDone-number_Trk.n_left_banDone)<=1.414*(m_ImageAbstract.width[y_ctr]/15.f))))
            { 
                //这里仍需要认定下
                //isHaveLonlyLineStartCorner = 1;//这里
                HaveLonlyLineStartCornerLastLine = y_ctr;//认定这一行
                //LonlyLine_Counter ++;
            }
            else
            {
                if((process_find_timer>0)/*&&(1 != m_ImageAbstract.RtAngle_isLasting)*/)//可以在这里强制关闭RtAngle
                {//两个特殊处理不要在一起进行，虽然很好，但很悲惨
                    if((0 == TurningBeacauseVeryLittle.isHappened)&&(Sid_Double == TrkSide[y_ctr-1])
                    &&(__ABS(m_ImageAbstract.Right[y_ctr-1]-m_ImageAbstract.Left[y_ctr-1])<=m_ImageAbstract.width[y_ctr-1]/5))//9cm
                    {//当赛道情况为双边都存在的时候，并且上一条线非常小的时候，就可以这么断言//如若还不能完全判断，再说
//============================================================================//
                        showYcutDown = 'H'; 
                        uint8 central_Pos = m_ImageAbstract.Central[y_ctr-1];
                        uint8 finderStartY = y_ctr - 1;
                        //这里搜寻的是y_ctr-1；//设定距离为宽度的一半就可以了
                        uint8 right_pluto_Pos = 255;
                        sint16 right_notTry = central_Pos + m_ImageAbstract.width[finderStartY]/2;//22.5cm这个就很不正常了，正常情况下应该在10*0.866
                        if(right_notTry > 181-3){right_notTry = 181 - 3;}
                        if(right_notTry < 3+3){right_notTry = 3+3;}
                        for (sint16 LINE_CTR = central_Pos
                            ;LINE_CTR + constn_xFindJumpLine_Width <= right_notTry;LINE_CTR++)//向右提线
                        {sint16 n_jumpVar = m_ImageBeholder_Data[finderStartY][LINE_CTR]                           //这里是个实际的数
                                          - m_ImageBeholder_Data[finderStartY][LINE_CTR + constn_xFindJumpLine_Width];
                        sint16 absn_jumpVar = __ABS(n_jumpVar);//获取绝对值
                        if ((absn_jumpVar > perLine_JumpNumVaild) && (absn_jumpVar > perLine_JumpNumNonVaild)
                            && (n_jumpVar < 0)){right_pluto_Pos = LINE_CTR + constn_xFindJumpLine_Width;break;}//跳出本循环
                        }//右线搜寻完毕
                        uint8 left_pluto_Pos = 255;
                        sint16 left_notTry = central_Pos - m_ImageAbstract.width[finderStartY]/2;
                        if(left_notTry > 181-3){right_notTry = 181 - 3;}
                        if(left_notTry < 3+3){right_notTry = 3+3;}
                        for (sint16 LINE_CTR = central_Pos
                            ;LINE_CTR - constn_xFindJumpLine_Width >= left_notTry;LINE_CTR--)
                        {sint16 n_jumpVar = m_ImageBeholder_Data[finderStartY][LINE_CTR]
                                          - m_ImageBeholder_Data[finderStartY][LINE_CTR - constn_xFindJumpLine_Width];
                        sint16 absn_jumpVar = __ABS(n_jumpVar);//获取绝对值
                        if ((absn_jumpVar > perLine_JumpNumVaild) && (absn_jumpVar > perLine_JumpNumNonVaild)
                            && (n_jumpVar < 0)){left_pluto_Pos = LINE_CTR - constn_xFindJumpLine_Width;break;}//=>寻找到下一个边沿
                        }//左线搜寻完毕
                        if((left_pluto_Pos >= m_ImageAbstract.Left[finderStartY])&&(255 != m_ImageAbstract.Left[finderStartY]))
                        {
                            left_pluto_Pos = 255;
                        }
                        if((right_pluto_Pos <= m_ImageAbstract.Right[finderStartY])&&(255 != m_ImageAbstract.Right[finderStartY]))
                        {
                            right_pluto_Pos = 255;
                        }//以上这里是维护pluto_Pos
                        //以上维护pluto_Pos获取正常数值
                        m_ImageTesting.FindLitteWidthTurning_LeftFinder = left_pluto_Pos;
                        m_ImageTesting.FindLitteWidthTurning_RightFinder = right_pluto_Pos;
                        //但这样还是存在误判，比如说撞上了某个角就整体出问题了
                        //将2.5改为了2，但是还是存在两侧都不能找到边沿的情况，这时候要依赖另一种做法
                        
                        
                        //以上是基本代码
                        u_Side Dir = Sid_NaN;
                        if(__ABS(left_pluto_Pos - central_Pos)>__ABS(right_pluto_Pos - central_Pos))
                        {central_Pos = right_pluto_Pos;
                        if(255 != central_Pos){Dir = Sid_Right;}}
                        if(__ABS(left_pluto_Pos - central_Pos)<__ABS(right_pluto_Pos - central_Pos))
                        {central_Pos = left_pluto_Pos;
                        if(255 != central_Pos){Dir = Sid_Left;}}//确定中心点应在的位置
                        if(Sid_NaN == Dir)//==============================//
                        {//此处应跳出
                            Dir = Sid_NaN;
                            sint16 Y_counter_cut_5 = y_ctr-1 - 5;if(Y_counter_cut_5 < 0){Y_counter_cut_5 = 0;}
                            sint16 counter_cutAdd = 0;//差分计数
                            for(sint16 Y_counter = y_ctr-1;Y_counter > Y_counter_cut_5;Y_counter--)
                            {
                                counter_cutAdd += (m_ImageAbstract.Central[Y_counter] - m_ImageAbstract.Central[Y_counter-1]);
                            }
                            if(counter_cutAdd < 0){Dir = Sid_Right;}
                            if(counter_cutAdd > 0){Dir = Sid_Left;}
                        }//===================================================//
                        //到目前为止，应该是稳定识别了
                        
                        
                        //m_ImageTesting.centralPosTurning = central_Pos;
                        m_ImageTesting.TurningSide = Dir;
                        uint8 wirte_Pos[60];
                        uint8 y_Cut = 255;//y_Cut记录
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
                            /*m_ImageAbstract.RtAngle_isLasting = 0;*/ //这里的话如果有直角就直接退出直角。
                            /*m_ModeMachine.*//*becauseThisOutOfTheBlackRtAngle = 'K';*/
                            //这里添加
                            isMaybefoundShutDown = 0;
                            goto endOfthisIf;
                    }
                }
                
                end_y_ctr = LastSide.Last_BlackLine_suddenlyHappen;//控制本次
                break;
            }
            isMaybefoundShutDown = 0;
        }/*(1 == isMaybefoundShutDown)*/
endOfthisIf:
        //====================================================================//
        //信息综合与机器学习效果所在区域
        m_ImageAbstract.Left_UpBlack2White[y_ctr] = 255;
        m_ImageAbstract.Right_UpBlack2White[y_ctr] = 255;
	if(2 == LogicCondition.leftSide_isDown + LogicCondition.rightSide_isDown)
	{//双边都存在，有时候这是最重要的代码
            TrkSide[y_ctr] = Sid_Double;
            lostDouble_TimerCounter = 0;//丢线寄存器清空
            x_startPos_n_add_one = (number_Trk.n_left_end + number_Trk.n_right_end) / 2;//获取中心值位置
            /*
            if(m_ImageAbstract.Right[y_ctr] - m_ImageAbstract.Left[y_ctr] >= 1.5*m_ImageAbstract.width[y_ctr])
            {
                mayBeRampHappened = 1;
            }
            */
            lr_n_cut_1_isExist = 2;//
	}
	else//进行左右线断定
	{
            if ((1 == LogicCondition.leftSide_isDown) || (1 == LogicCondition.rightSide_isDown))
            {
                lostDouble_TimerCounter = 0;//丢线寄存器清空
		if (1 == LogicCondition.leftSide_isDown)//左边界有效
		{
                    TrkSide[y_ctr] = Sid_Left;
                    x_startPos_n_add_one = (sint16)(number_Trk.n_left_end + perLine_vaild_width*0.45f);//相当于补边
                    if((x_startPos_n_add_one < x_startPos)&&(process_find_timer > 2))//本次数值在上次数值的左边
                    {
                        x_startPos_n_add_one = m_ImageAbstract.Central[y_ctr-1]//路径的PD作用
                                            + (m_ImageAbstract.Central[y_ctr-2]-m_ImageAbstract.Central[y_ctr-3]);
                    }
                    if((process_find_timer < constn_DeadLine_BeWith)&&(process_find_timer > 0))
                    {
                        if(x_startPos_n_add_one < m_ImageAbstract.Central[y_ctr-1]){x_startPos_n_add_one = m_ImageAbstract.Central[y_ctr-1];}
                    }
                }
                else//右边界有效
		{
                    TrkSide[y_ctr] = Sid_Right;
                    x_startPos_n_add_one = (sint16)(number_Trk.n_right_end - perLine_vaild_width*0.45f);//相当于补边
                    if((x_startPos_n_add_one > x_startPos)&&(process_find_timer > 2))//本次数值在上次数值的右边
                    {// 0 1 2 (3)
                        x_startPos_n_add_one = m_ImageAbstract.Central[y_ctr-1] 
                                            + (m_ImageAbstract.Central[y_ctr-2]-m_ImageAbstract.Central[y_ctr-3]);
                    }
                    if((process_find_timer < constn_DeadLine_BeWith)&&(process_find_timer > 0))
                    {
                        if(x_startPos_n_add_one > m_ImageAbstract.Central[y_ctr-1]){x_startPos_n_add_one = m_ImageAbstract.Central[y_ctr-1];}
                    }
                }//寻线结束
                if(2 == lr_n_cut_1_isExist)
                {
                    if(process_find_timer > 2)//为了拐弯
                    {
                        m_ImageAbstract.Central[y_ctr - 1] = x_startPos_n_add_one;//赋值给上次
                        m_ImageAbstract.Central[y_ctr - 2] = x_startPos_n_add_one;//赋值给上上次
                    }
                }
                lr_n_cut_1_isExist = 1;//存在一条边                
            }
            if (((0 == LogicCondition.leftSide_isDown) && (0 == LogicCondition.rightSide_isDown))
            && (!(((255!=number_Trk.n_right_banDone)&&(255!=number_Trk.n_left_banDone)
        &&((number_Trk.n_right_banDone-number_Trk.n_left_banDone)<=1.414*(m_ImageAbstract.width[y_ctr]/15.f))))))
            {
                TrkSide[y_ctr] = Sid_None;
                                
                if((process_find_timer < constn_DeadLine_BeWith)&&(lostDouble_TimerCounter == process_find_timer))
                {//全白全黑很短，并且跟以前很近。
                //出现情况包括近端十字全白、急弯丢线、极度靠近单线内侧范围
                    x_startPos_n_add_one = m_ImageAbstract.LastFrame_CentralPos;//
                    //认定上次此时范围即本刻范围，维护好近处三点的全部情况
                }
                else//其余情况使用这一方法解决
                {
                    x_startPos_n_add_one = x_startPos;//将上次数值给当前数值//可以用最小二乘，但运算复杂
                }
                    
                if(process_find_timer > 3)//前馈补偿=>下三次才会生效
                {
                    x_startPos_n_add_one = m_ImageAbstract.Central[y_ctr-1] + 
                                         ((m_ImageAbstract.Central[y_ctr-1] - m_ImageAbstract.Central[y_ctr-2])
                                         +(m_ImageAbstract.Central[y_ctr-2] - m_ImageAbstract.Central[y_ctr-3]))/2;
                }
                
                lostDouble_TimerCounter++;//丢线计数
                
                if(1 == lostDouble_TimerCounter)//丢失次数计数
                {//第一次双边都丢失记录下此刻若是十字的话，线应该走多远
                    float son = Frame_Trk.f_depth_ratio[0] * y_ctr*y_ctr + Frame_Trk.f_depth_ratio[1] * y_ctr + Frame_Trk.f_depth_ratio[2];
                    float mother = Frame_Trk.f_depth_ratio[3] * y_ctr + Frame_Trk.f_depth_ratio[4];
                    lostDouble_UpestHeight = (sint16)(son / mother);//向前行走最大值
                    //这里记录初值
                    LostDouble.Gaia_Y = y_ctr;
                } 
                if(lostDouble_TimerCounter > lostDouble_UpestHeight/2)//丢线次数大于一半的话
                {
                    LostDouble.Flag = LDb_WaitingDrawing;
                    //这里等待终值
                }
                
                
                lr_n_cut_1_isExist = 0;//这个必须在此代码的末尾
            }//处理无边线情况的代码
	}//到目前为止，下降沿的信息识别全部完毕
        if(((255!=number_Trk.n_right_banDone)&&(255!=number_Trk.n_left_banDone)
        &&((number_Trk.n_right_banDone-number_Trk.n_left_banDone)<=1.414*(m_ImageAbstract.width[y_ctr]/15.f))))
        {
            lostDouble_TimerCounter = 0;//丢线寄存器清空
            
            TrkSide[y_ctr] = Sid_DoubleBlack;
            isHaveLonlyLineStartCorner = 1;
            x_startPos_n_add_one = (number_Trk.n_right_banDone+number_Trk.n_left_banDone)/2;
            
            HaveLonlyLineStartCornerLastLine = y_ctr;//认定这一行
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
            sint16 rightShutDown = number_Trk.n_right_end + m_ImageAbstract.width[y_ctr]/5;//9cm/继续放开11.5cm多些
            if(rightShutDown>181){rightShutDown = 181;}
            if(rightShutDown<3){rightShutDown = 3;}
            for (sint16 LINE_CTR = number_Trk.n_right_end;LINE_CTR + constn_xFindJumpLine_Width <= rightShutDown;LINE_CTR++)//向右提线
            {sint16 n_jumpVar = m_ImageBeholder_Data[y_ctr][LINE_CTR]                           //这里是个实际的数
                              - m_ImageBeholder_Data[y_ctr][LINE_CTR + constn_xFindJumpLine_Width];
            sint16 absn_jumpVar = __ABS(n_jumpVar);//获取绝对值
            if ((absn_jumpVar > perLine_JumpNumVaild) && (absn_jumpVar > perLine_JumpNumNonVaild)
                && (n_jumpVar < 0)){right_pluto_Pos = LINE_CTR + constn_xFindJumpLine_Width;break;}//跳出本循环
            }//右线搜寻完毕
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
            sint16 absn_jumpVar = __ABS(n_jumpVar);//获取绝对值
            if ((absn_jumpVar > perLine_JumpNumVaild) && (absn_jumpVar > perLine_JumpNumNonVaild)
                && (n_jumpVar < 0)){left_pluto_Pos = LINE_CTR - constn_xFindJumpLine_Width;break;}//=>寻找到下一个边沿
            }//左线搜寻完毕
            m_ImageAbstract.Left_UpBlack2White[y_ctr] = left_pluto_Pos;//255;
        }
            
        if(x_startPos_n_add_one > constNum_X_MaxCounter - constn_xFindJumpLine_Width * 2)
        {x_startPos_n_add_one = constNum_X_MaxCounter - constn_xFindJumpLine_Width * 2;}//限幅抑制信息
        if(x_startPos_n_add_one < constn_xFindJumpLine_Width * 2)
        {x_startPos_n_add_one = constn_xFindJumpLine_Width * 2;}
        

        
        m_ImageAbstract.Central[y_ctr] = x_startPos_n_add_one;
        m_ImageAbstract.Left[y_ctr] = number_Trk.n_left_end;//丢线即为255
        m_ImageAbstract.Right[y_ctr] = number_Trk.n_right_end;
        //m_ImageTesting.hazardvaildLine[y_ctr] = m_ImageAbstract.Central[y_ctr];
        
        end_y_ctr = y_ctr;//每次都更新   
        x_startPos = x_startPos_n_add_one;//中线继承
        
        if(1 == LastSide.AllBeforeisBlack)//消除一开始是黑色
        {
            LastSide.AllBeforeisBlack = 0;
            for(uint8 loop = 0;loop < y_ctr;loop++)
            {
                m_ImageAbstract.Central[loop] = m_ImageAbstract.Central[y_ctr];//
            }
        }
        /*
        if(process_find_timer < 3)
        {//次数小于3的话
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
    }//单次结束 => 这里也是一次寻线结束
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
        
        //所以从这里可知，坡道的极致位置
        uint8 RampEndYLine = DoubleSideCounter + FirstSideCounter;//得到
        uint8 RampStartLine = FirstSideCounter;
        
        uint8 width_cut = 0;
        uint8 check_counter = 0;
        //float Ratio = 0.f;
        
        m_ImageTesting.RampStart = RampStartLine;
        m_ImageTesting.RampEnd = RampEndYLine;
        
        uint8 RightCutLeft_New = 0;
        
        for(uint8 loop = RampStartLine + 1;loop < RampEndYLine;loop++)
        {//这里就是全部的过程
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
                {//这是判别，每次赛道两边的突变情况
                    RampExist = 1;
                    RampEndYLine = loop;//记录下应该的
                    //将存在
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
    {//弯入直角的黑块检测
        
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
                    centralPos_n_add_one = (sint16)(m_ImageAbstract.Right[loop] - m_ImageAbstract.width[loop]*0.45f);//相当于补边
                    if((centralPos_n_add_one > centralPos)&&(loop > m_ImageAbstract.Start_Y_Position+2))//本次数值在上次数值的左边
                    {
                        centralPos_n_add_one = m_ImageAbstract.Central[loop-1]//路径的PD作用
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
                    centralPos_n_add_one = (sint16)(m_ImageAbstract.Left[loop] + m_ImageAbstract.width[loop]*0.45f);//相当于补边
                    if((centralPos_n_add_one < centralPos)&&(loop > m_ImageAbstract.Start_Y_Position+2))//本次数值在上次数值的左边
                    {
                        centralPos_n_add_one = m_ImageAbstract.Central[loop-1]//路径的PD作用
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

        //这里得做个继续循迹
        //TurningBeacauseVeryLittle.isHappened = 0;
    }
    
    /*
    if(255 != LastSide.Last_BlackLine_suddenlyHappen)//防止15cm在线开外
    {
        end_y_ctr = LastSide.Last_BlackLine_suddenlyHappen;
        LastSide.Last_BlackLine_suddenlyHappen = 255;
    }
    */
    /*
    do//补线这里有很大的问题
    {
        uint8 isLostDouble = 0;
        uint8 LostStart_Ypos = 0;
        uint8 isLostFirstFindAnother = 0;
        for(uint8 loop = m_ImageAbstract.Start_Y_Position;loop <= end_y_ctr;loop++)
        {
            isLostFirstFindAnother = 1;//前移
            if(255 == m_ImageAbstract.Left[loop])
            {
                if(255 == m_ImageAbstract.Right[loop])//也许可以将这里的单独提出，或者补边线
                {
                    isLostFirstFindAnother = 0;//
                    if(0 == isLostDouble)
                    {
                        isLostDouble = 1;
                        if(m_ImageAbstract.Start_Y_Position != loop){LostStart_Ypos = loop - 1;}
                        else{LostStart_Ypos = loop;}//这两处提供丢失的Y位置
                    }
                }
                else//左侧丢线
                {
                }
            }
            else
            {
                if(255 == m_ImageAbstract.Right[loop])//右侧丢线
                {
                }
                else//双边都存在
                {
                }
            }//基本判断结束
            if((1 == isLostDouble)&&(1 == isLostFirstFindAnother))
            {
                isLostDouble = 0;
                float K = (m_ImageAbstract.Central[loop] - m_ImageAbstract.Central[LostStart_Ypos])/(loop - LostStart_Ypos);
                float B = m_ImageAbstract.Central[LostStart_Ypos] - K * LostStart_Ypos;
                
                for(uint8 inter = LostStart_Ypos;inter < loop;inter++)//补线
                {//这段代码曾经出了问题 => 6.3发现了
                    sint16 central_signed = (sint16)(B + K * inter);//中线带符号
                    if(central_signed > constNum_X_MaxCounter - constn_xFindJumpLine_Width)//以下也是限制
                    {central_signed = constNum_X_MaxCounter - constn_xFindJumpLine_Width;}
                    if(central_signed < constn_xFindJumpLine_Width)
                    {central_signed = constn_xFindJumpLine_Width;}//以上为限制幅
                    m_ImageAbstract.Central[inter] = central_signed;//绘图
                }
                
            }//补线结束
        }//=======================================================================////
    }while(0);
    */
    /*
    m_ImageAbstract.BlackBarHeight_Start = BlackBarAbout10cm.startLine;
    m_ImageAbstract.BlackBarHeight_End = BlackBarAbout10cm.LastWitdh_YaxisVal;
    if(BlackBarAbout10cm.startLine != BlackBarAbout10cm.LastWitdh_YaxisVal)
    {//直接忽略全部一侧得了
        sint16 x_MidPos = 0.f;
        for(uint8 loop = BlackBarAbout10cm.startLine;loop < BlackBarAbout10cm.LastWitdh_YaxisVal;loop++)
        {
            if(Sid_Left == BlackBarAbout10cm.TurnSide)//左侧有效
            {
                x_MidPos = (sint16)(m_ImageAbstract.Left[loop] + m_ImageAbstract.width[loop] * 0.45);
            }
            if(Sid_Right == BlackBarAbout10cm.TurnSide)//左侧有效
            {
                x_MidPos = (sint16)(m_ImageAbstract.Right[loop] - m_ImageAbstract.width[loop] * 0.45);
            }
            if(x_MidPos > 184 - 3){x_MidPos = 184 - 3;}
            if(x_MidPos < 3){x_MidPos = 3;}
            m_ImageAbstract.Central[loop] = x_MidPos;
        }
    }
    */
    

    uint8 isMayBeHappenedHazard = 0;//可能发生了障碍
    uint8 isHaveLonlyLine = 0;
    m_ImageTesting.isOccurLonlyLineBreak = 0;
    uint8 firstAndSecond_isBeenDrawing = 0;
    do//进行单线与障碍的区分
    {//所有的边线全都有往两边搜索=>黑块、障碍、单线全都有两侧的线
        //现在这里能很明确地找出单线出现的地方，但却不能准确地判断出单线应该走向的地方
        //并非单线无法识别，而是单线完全丢失的时候，舵机会摆正，这里需要修改，还有一个就是出单线的时候的截止问题
        //论如何顺畅出单线（？）
        //处理单线前的全白区域
        //u_LonlyLine thisTimeStatus = LLT_NaN;
        /*if(1 == TurningBeacauseVeryLittle.isHappened){break;}*/
        
        
        
        uint8 LonlyLineStartLine = 0;
        uint8 LonlyLineOccurCounter = 0;//单线发生次数计数器
        uint8 temp_x_startPos_central[60];
        
        sint16 central_Pos_number = m_ImageAbstract.LastFrame_CentralPos;
        //需要第一次断定初始的PosNumber，防止误判
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
        {//只要是拥有了跳变都进行了识别
            
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
            }//增加认定
            //m_ImageTesting.is140double130left150right160none_aboutUp[yCounter] = 80;
            /*m_ImageTesting.is140double130left150right160none_aboutUp[yCounter]
                = (uint8)(TrkSide[yCounter]);*/
            
            
            temp_x_startPos_central[yCounter] = m_ImageAbstract.Central[yCounter];//暂存用于恢复
            isHaveLonlyLineOnce = 0;
            //isHaveLonlyLine = 0;//更新isHaveLonlyLine，以便于计数
            finderYtimeCounter++;//防止被countinue掉

            if((255 == m_ImageAbstract.Left_UpBlack2White[yCounter])&&
               (255 == m_ImageAbstract.Right_UpBlack2White[yCounter])
               &&(yCounter > m_ImageAbstract.Start_Y_Position))    
            {//刨去上面这样的情况，都是可能找到了单线
                sint16 should_inThis;
                if(finderYtimeCounter > 1)
                {
                    if(finderYtimeCounter > 2)//这里对本次的跳出进行描述
                    {////单线代码的最关键部分
                        should_inThis = m_ImageAbstract.Central[yCounter-1] + //所有问题应该在这里
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
                    {//改善这里的条件=>这里的限制条件应该更为明确//7cm//9cm又何妨//这块改成5cm=>7cm

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
                        isMayBeHappenedHazard = 1;//这里可能发生了障碍=>通过这里判定
                        break;//这里应当跳出
                        }
                        TurnOnTheLonlyLine = 1;
                    }
                }
                else
                {//这里是0 1两态
                    //首先得根据上次，是不是单线，再根据当前的中线是不是，只有通过这两处处理
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
                            }//多次if结束
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
                            }//多次if结束
                        }
                    }
                }
                //当宽度极小的时候，单线的宽度自然就会变大，这时候，需要主动移动=>也就是0/1 == finderYtimeCounter的时候
                /*
                if(1 == isNeedFindTheNearestsides)
                {
                    if(leftSide_whoisnearestwithRight < m_ImageAbstract.Left[yCounter])//===
                    {leftSide_whoisnearestwithRight = m_ImageAbstract.Left[yCounter];}
                    if(rightSide_whoisnearestwithLeft > m_ImageAbstract.Right[yCounter])
                    {rightSide_whoisnearestwithLeft = m_ImageAbstract.Right[yCounter];}//===
                }
                */
                //finderYtimeCounter = 0;//这一步是干啥的？？？注释掉
                central_Pos_number = m_ImageAbstract.Central[yCounter];//问题在不经意的拐角，轻轻叩门
                continue;//清除已经搜寻的时间计数，保证下次的计数，并继续
            }//在上面这种情况里面分析最左最右的情况
            else
            {
                //isNeedFindTheNearestsides = 0;
            }
            //else{thisFrameisHaveLonlyLine = 1;}//这个已经有了单线
            if(255 == firstTimeCut2LonlyLine){firstTimeCut2LonlyLine = yCounter;}//记录第一次切入赛道的时间
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
            //===============================这里还没有与上一次的信息，以及相应的事情做判断
            if(1 == (LeftCut + RightCut))
            {
                //thisTimeStatus = LLT_Lasting;
                showLonlyLineFindAboutUpSet = 'D';
                //时常应该在这里出现，不过也会出现奇怪的情况
                
                /*删除这里会出现什么问题呢？
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
                {//双边都存在单线的话（？）
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
                    //这里需要处理一下
                    /*
                    if((__ABS(central_Pos_number - m_ImageAbstract.Central[yCounter])>m_ImageAbstract.width[yCounter]/9))
                    {
                        showYcutDown = 'L';
                        end_y_ctr = yCounter;
                        break;//这里应当跳出
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
        }//循环结束
        
        m_ImageAbstract.LonlyLine_firstLineXpos = m_ImageAbstract.Central[m_ImageAbstract.Start_Y_Position];
        m_ImageAbstract.LonlyLine_secondLineXpos = m_ImageAbstract.Central[m_ImageAbstract.Start_Y_Position+1];
        if(((255!=m_ImageAbstract.Left_UpBlack2White[m_ImageAbstract.Start_Y_Position])
         ||(255!=m_ImageAbstract.Right_UpBlack2White[m_ImageAbstract.Start_Y_Position])
         ||(1 == firstAndSecond_isBeenDrawing))
         &&(end_y_ctr > 10))//(end_y_ctr > 10)消除出弯影响
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
    do//这里做应对障碍的处理。//这里还需要再次优化
    {//所谓障碍的标准就是在很小的宽度处没有所谓的上升沿
        //break;
        if(1 == m_ImageAbstract.RtAngle_isLasting){break;}//强制拒绝判断
        
        if((1 == isHaveLonlyLine)||(1 == isHaveLonlyLineStartCorner))
        {//单线存在的时候
            LonlyLineVaildLineCounter = 0;
            for(uint8 LineReader = m_ImageAbstract.Start_Y_Position;LineReader < end_y_ctr;LineReader++)
            {
                if((Sid_DoubleBlack == TrkSide[LineReader])||(Sid_LonlyLine == TrkSide[LineReader]))
                {LonlyLineVaildLineCounter++;}
                //m_ImageTesting.hazardvaildLine[LineReader] = 0;
            }
        }
        if(LonlyLineVaildLineCounter > 5){break;}//有问题直接用绝对坐标系
        
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
        uint8 y_height_allHave = y_height_useful;//应该的纵坐标距离
        
        uint8 y_world_height = ((GetYaxis(hazardStartLine)-GetYaxis(m_ImageAbstract.Start_Y_Position))*45/30);
        if(y_world_height >= 70){break;}//根据这个实际左边退出 
        //if(end_y_ctr <= 10){break;}//当有效距离很短时，忽略障碍，这句话会不会造成问题呢？
        
        uint8 loop = 0;
        if(hazardStartLine + y_height_useful > 60){y_height_useful = 60;}//y_height_useful更新数值
        else{y_height_useful = hazardStartLine + y_height_useful;}//限制高度
        
        
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
                hazard_counter++;//有问题再判断Hazard
                //m_ImageTesting.hazardvaildLine[loop] = 100;//有效
            }//可以增加左右线的连续性判断，对障碍进行完全判断
        }
        if(hazard_counter >= 0.8 * y_height_allHave)//基本全是
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

    /*这个很合理，但是对拐急弯很不合理
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
    m_ImageAbstract.Last_Y_Position = end_y_ctr;//赋值最后<=根据搜索结果第一次判定最终情况
    //检测到坡道的话，就利用最近十点的信息
    
    

    
    
    do//进行直角的处理=>这里进行直角处理会好很多
    {
        //if(0 == m_ImageTesting.isMeetingHazard){break;}
        /*这个做法是绝对错误的
        if(1 == TurningBeacauseVeryLittle.isHappened)
        {
            m_ImageAbstract.RtAngle_isLasting = 0;
        }
        */
        //if(1 == TurningBeacauseVeryLittle.isHappened){break;}
        //1.判断直角区间
        /*
        if(1 == isHaveLonlyLine)
        {
            break;//关闭
        }*/
        uint8 finder_timer = 0;
        //
        u_Side Rt_WhiteTurningSide = Sid_NaN;
        

        uint8 step_isfind_Rt_WhiteSide_UpestLine = 0;//找直角最上边
        uint8 step_isfind_Rt_WhiteSide_LowestLine = 0;//找直角最下边
        //uint8 step_isfind_Rt_WhiteSide_DoubleIsStraight = 0;//判定两侧直不直
        
        //uint8 step_RthasFound_TurningProcess = 0;//已经找到直角，在转向
            
        //uint8 step_hasOccurWrong = 0;//发生了错误
        //
        uint8 flag_Rt_hasfound = 0;
        
        typedef
        struct
        {
            uint8 RtWhiteSide_StartLine;//起始行
            uint8 RtWhiteSide_EndLine;//
            uint8 RtStepTwoLostWhiteCounter;//丢失的（白色区域的）长度
        }s_RtAngleCondtion;
        s_RtAngleCondtion RtAngleCondtion;
        RtAngleCondtion.RtWhiteSide_EndLine = 255;
        RtAngleCondtion.RtWhiteSide_StartLine = 255;
        RtAngleCondtion.RtStepTwoLostWhiteCounter = 0;//清空
        
        for(sint8 loop = m_ImageAbstract.Last_Y_Position - 1;loop >= m_ImageAbstract.Start_Y_Position;loop--)//-128 128
        {//行累加=>从最后开始
            if(1 == TurningBeacauseVeryLittle.isHappened)
            {//根据上次修正最远
                step_isfind_Rt_WhiteSide_UpestLine = 0;
                break;//进入奇怪的模式=>
            }
            finder_timer++;//第一次搜素
            if((0 == step_isfind_Rt_WhiteSide_UpestLine)//这里还没完成
           &&(((255 == m_ImageAbstract.Left[loop])&&(255 != m_ImageAbstract.Right[loop]))
            ||((255 != m_ImageAbstract.Left[loop])&&(255 == m_ImageAbstract.Right[loop]))))
            {//持续搜索至一边有线，前提是保证找到最远的行。
                step_isfind_Rt_WhiteSide_UpestLine = 1;//标定第一步结束
                if(255 == m_ImageAbstract.Left[loop]){/*becauseThisOutOfTheBlackRtAngle='l';*/Rt_WhiteTurningSide = Sid_Left;}
                if(255 == m_ImageAbstract.Right[loop]){/*becauseThisOutOfTheBlackRtAngle='r';*/Rt_WhiteTurningSide = Sid_Right;}
                RtAngleCondtion.RtWhiteSide_EndLine = loop;
                if(finder_timer > 5){step_isfind_Rt_WhiteSide_UpestLine = 0;break;} //认定判定失败=>当远处有奇怪的东西
            }
            else
            {
                if(0 == step_isfind_Rt_WhiteSide_LowestLine)//(1 == step_isfind_Rt_WhiteSide_UpestLine)
                {//因为在else，后面是隐藏条件
                    if(Sid_Left == Rt_WhiteTurningSide)
                    {
                        if(255 != m_ImageAbstract.Left[loop])
                        {
                            //m_ImageAbstract.RtAngle_isLasting = 1;
                            RtAngleCondtion.RtWhiteSide_StartLine = loop;
                            step_isfind_Rt_WhiteSide_LowestLine = 1;//标定这一条件
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
                            step_isfind_Rt_WhiteSide_LowestLine = 1;//标定这一条件
                            break;
                        }
                        if(255 == m_ImageAbstract.Left[loop]){RtAngleCondtion.RtStepTwoLostWhiteCounter++;}
                    }
                }/*else//这里结束了 => 所以进行下一条件{}*/
            }
            if((0 == step_isfind_Rt_WhiteSide_UpestLine)&&(finder_timer > 6)){break;}
        }//循环结束
        
        if(1 == step_isfind_Rt_WhiteSide_UpestLine)//最近端可能找不到，但远端是没有的
        {
            do{
            if(0 == step_isfind_Rt_WhiteSide_LowestLine)
            {
                if(1 == m_ImageAbstract.RtAngle_isLasting)//
                {/*becauseThisOutOfTheBlackRtAngle = 'S';*/ //限定开始位置的错误//这里导致的错误。但是为什么会找不到近端
                    RtAngleCondtion.RtWhiteSide_StartLine = m_ImageAbstract.Start_Y_Position;}
                else
                {RtAngleCondtion.RtWhiteSide_EndLine = m_ImageAbstract.Last_Y_Position;
                RtAngleCondtion.RtWhiteSide_StartLine = m_ImageAbstract.Start_Y_Position;
                SideChangeOccur = 7;break;}//暂时的措施
            }
            float length = Get45cmLengthFromY(RtAngleCondtion.RtWhiteSide_StartLine);
            m_ImageAbstract.RtAngleLength = 
            ((float)GetYaxis(RtAngleCondtion.RtWhiteSide_EndLine) - (float)GetYaxis(RtAngleCondtion.RtWhiteSide_StartLine))/
            ((float)GetYaxis(m_ImageAbstract.Last_Y_Position) - (float)GetYaxis(m_ImageAbstract.Start_Y_Position));
            show_isWrong = 'P';
            if(
                ((RtAngleCondtion.RtWhiteSide_EndLine - RtAngleCondtion.RtWhiteSide_StartLine)>=1*length/2)
                &&((RtAngleCondtion.RtWhiteSide_EndLine - RtAngleCondtion.RtWhiteSide_StartLine)<=3*length/2)  
                &&((RtAngleCondtion.RtStepTwoLostWhiteCounter) < length/10)//这里也许有问题？
                &&((float)(GetYaxis(RtAngleCondtion.RtWhiteSide_EndLine) - (float)GetYaxis(RtAngleCondtion.RtWhiteSide_StartLine))*3>=
                   (float)(GetYaxis(m_ImageAbstract.Last_Y_Position) - (float)GetYaxis(m_ImageAbstract.Start_Y_Position)))//最后一个3件需要修改
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
                    K = cut_son / cut_number;//根据纵轴决定横轴
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
                    {//不满足?
                        show_isWrong = 'S';
                        flag_Rt_hasfound = 0;//第一次直角标志没找到
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
                    K = cut_son / cut_number;//根据纵轴决定横轴
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
            m_ImageAbstract.RtAngle_isLasting = 1;//如若isLasting第一次找到
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
                    /*becauseThisOutOfTheBlackRtAngle = 'Z';*///全局Zero情况
                    Rt_WhiteTurningSide = m_ImageAbstract.Rt_LastTurning;//这里也做一个修补
                }//由于出现Zero的情况，或许会导致这些问题的出现
                
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
                    RtAngleCondtion.RtWhiteSide_StartLine = 0;//保证切弯道
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
                    //break;//暂时注释更改效果
                    Rt_central_Pos = (sint16)(m_ImageAbstract.Central[RtAngleCondtion.RtWhiteSide_StartLine]
                                    + ((float)(y_counter - RtAngleCondtion.RtWhiteSide_StartLine) * change_X / 
                                    (float)(m_ImageAbstract.Last_Y_Position - RtAngleCondtion.RtWhiteSide_StartLine)));
                    if(Rt_central_Pos > 184){Rt_central_Pos = 184;}
                    if(Rt_central_Pos < 0){Rt_central_Pos = 0;}//以上两行为限幅
                    m_ImageAbstract.Central[y_counter] = Rt_central_Pos;//赋值
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
                show_About_LonlyLine = 'Z';//近端没有，远端也没有
            }
            else
            {
                show_About_LonlyLine = 'X';
            }
        }
        else
        {
            if(0 == step_isfind_Rt_WhiteSide_LowestLine)//能找到远端，但找不到近端
            {
                show_About_LonlyLine = 'C';
            }
            else
            {
                show_About_LonlyLine = 'V';
            }
        }
        
        if(1 == isTime2BackAngel)//终止条件
        {
            m_ImageAbstract.RtAngle_isLasting = 0;
        }
    }while(0);

    /*
    if(1 == isHaveLonlyLine)
    {
        m_ImageAbstract.LastFrame_CentralPos = m_ImageAbstract.Central[m_ImageAbstract.Start_Y_Position];//定义上次中线
    }
    else
    {
        //这里应该用第一次遇到单线作为修正
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
    //所以，这里应该做一个处理。关于上一次的第一行，到底是个啥
    
    m_ImageAbstract.Show_Start_Y_Position = m_ImageAbstract.Start_Y_Position;
    m_ImageAbstract.Show_Last_Y_Position = m_ImageAbstract.Last_Y_Position;
    
    
    
    m_ImageAbstract.LonlyLine_VeryStraightGetCorner_AboutDeadLine_Val_Y = 255;
    m_ImageAbstract.LonlyLine_VeryStraightGetCorner_AboutDeadLine_Var_x = 255;//更改
    
    /**************************************************************************/
    //声响
    /*
    if(1 == m_ImageAbstract.RtAngle_isLasting)//直角声响控制
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

void v_ImageMixis()//图像融合
{//这里有极大问题
    
}
/*
不管怎么说，如果想要识别出直角，要么强拐，要么在图上绘制出不合时宜的拐线。
所以说不想做前者，只能是后者。
那么怎么判别呢？
可以将直角归纳为：长直道后，需要一个强行拐弯的区域
如若根据实际情况更改数值的话，会遇到另外一个蛋疼的情况。
那就是当靠近一边时候，会出现误判的情况。
如果没有宽度限制，那么除非极致出弯，否则不会出现强拐不过去的情况。
就算极致出弯，照样强拐不过去。
那么不如用这种方法。
当检测到丢失的情况大于全丢失长度3/4时，更改方式
检测方差系数，小于数值时，
*/

void v_ImageOptimalization()
{//图像优化
    //float curve[58];//总共点数有60个，故声明58个曲率//并不需要维护这个曲率
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
        //此处为移动
        //uint8 newPoint = 0;
        //newPoint = setLeftInterVal(newPoint);
        //newPoint = setRightInterVal(newPoint);
        //m_ImageAbstract.Central[loop] = newPoint;
    }
}
void v_ImageAbstractEnhanced()
{
}


            //ratio = 1.f;// => 求平均值
            //从严格意义上来讲，任何的方法都可以看成对一行的转向
            //我原来想法是根据某一参数在任何情况下都能走中线
            //实践证明这一参数只有可能是速度，选取一行根据速度，或者根据速度选取某一行
            
            //我们本身想的是按照曲率过弯，但实际上，这个需要舵机电机的双重配合，所以，可能舵机的一次打角并不合适全部情况
            //同时，曲率作为全部的信号，应当同时输入给电机舵机。
            //但是，这种情况不如设计成，舵机决定电机速度，电机决定舵机的实际打角情况。
            //至于舵机打角跟什么有关，首先由沿着舵机轮向的转向，以及切向的外移误差。
            //所以根据曲率给舵机打角这是不合理的 => S(1/R) 实际应当是 S(1/R,V)
            //楼上公式才是舵机的实际情况，然而比赛的时候，更多还是关注速度，所以我们应当将速度作为一个重要参考量高于舵量
            
            //此时什么才是最适合描述舵机的呢？很显然根据速度导致的切向误差是关键因素，如若将切向误差具体化。
            //驳：如若打滑，我们打更多舵量，或许在一定范围内很合适，但向外滑动会剧烈，如若导致推头，反而得不偿失。
            
            //只能从直觉上来讲，速度会有一定的影响，但更多还应当是响应情况。就如同前瞻很远可以提前打角。
            //所以我们应当根据速度反馈量决定前瞻 => 即有效行，当有效行足够少时一定会影响打角
            //但当有效行足够多时，我觉得并不会造成太多的影响，所以应当是，速度乘以控制时间=>这里决定打角的最外因素。
uint16 n_getSteerMiddleLine_UsedAverage()//舵机控制策略
{//消除前十行影响又如何？//消除20cm以内的影响
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
    sint16 central_counter = 0;//返回的输出量
    
    uint16 LastY_Position = 0;//(m_ImageAbstract.Last_Y_Position > m_Control.servo_imageYstopLine)?
                             //m_Control.servo_imageYstopLine:m_ImageAbstract.Last_Y_Position;//选定最远距离
    if(m_ImageAbstract.Last_Y_Position > m_Control.servo_imageYstopLine)
    {
        LastY_Position = m_Control.servo_imageYstopLine;
    }
    else
    {
        LastY_Position = m_ImageAbstract.Last_Y_Position;//到这里就认定远处几行可能不可用
    } 
                             
    sint16 all_height = LastY_Position - m_ImageAbstract.Start_Y_Position;//高度全长
    float f_turning_para[60];//转向参数

    float central_ratio = 1.f;
    //绝对不变量 => 偏移引导中线的距离是绝对不变占两侧总长的距离是不变的
    //单边变换后可能会转向过度
    float y_10cm_world = 0.f;//真实世界的10cm以内，可以不用考虑 => 接近16或17cm
    do//这里就是一个很重要的条件
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
        y_10cm_world = (f-y_10cm_world)/(y_10cm_world*h-e);//获取
    }while(0);
    /*
    if(all_height <= y_10cm_world)//设置参数为转向
    {m_Control.need_Hold = 1;
    central_counter = m_ImageAbstract.servo_gaiaInfor_image;return central_counter;}
    */
    float counter_pisCut = 0.f;//被除数
    uint8 timer_counter = 0; float pos_counter = 0;
    for(uint8 loop = m_ImageAbstract.Start_Y_Position + 1;
              loop < LastY_Position - 1;
              loop ++)
    {//全部信息作为参考
        central_ratio = 1.f;//基本赛道宽度的系数问题
        //if(loop >= y_10cm_world)//当比10cm大的时候才要使用
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
        }//以上认定曲线
       // f_turning_para[loop] 
        f_turning_para[loop] = (30.f*(m_ImageAbstract.Central[loop] - 86)/(m_ImageAbstract.width[loop]/central_ratio));//还原// / 45.f
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
    central_counter = 86 + (sint16)(pos_counter / /*timer_counter*/counter_pisCut);//获取
    //central_counter += 0.2*(m_ImageAbstract.Central[m_ImageAbstract.Last_Y_Position-1] - m_ImageAbstract.Central[m_ImageAbstract.Start_Y_Position]);
    if(central_counter < 0){central_counter = 0;}
    if(central_counter > 184){central_counter = 184;}
    return central_counter;
}
/*
uint16 n_getSteerMiddleLine()//舵机控制策略
{
    sint16 central_counter = 0;//返回的输出量
    
    uint16 LastY_Position = (m_ImageAbstract.Last_Y_Position > m_Control.servo_imageYstopLine)?
                             m_Control.servo_imageYstopLine:m_ImageAbstract.Last_Y_Position;//选定最远距离
    sint16 all_height = LastY_Position - m_ImageAbstract.Start_Y_Position;//高度全长
    float f_turning_para[60];//转向参数
    if(all_height <= 10)//设置参数为转向
    {m_Control.need_Hold = 1;
    central_counter = m_ImageAbstract.servo_gaiaInfor_image;return central_counter;}
    float central_ratio = 1.f;
    //绝对不变量 => 偏移引导中线的距离是绝对不变占两侧总长的距离是不变的
    //单边变换后可能会转向过度
    
    do//这里就是一个很重要的条件
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
    {//全部信息作为参考
        if(((255 == m_ImageAbstract.Left[loop])&&(255 == m_ImageAbstract.Right[loop]))
            &&
        ((255 != m_ImageAbstract.Left[loop])&&(255 != m_ImageAbstract.Right[loop])))
        {
            central_ratio = 1.f;
        }
        else
        {
            central_ratio = 1.414f;
        }//以上认定曲线
        f_turning_para[loop] = (30.f*(m_ImageAbstract.Central[loop] - 85)/(m_ImageAbstract.width[loop]/central_ratio));//还原// / 45.f
        pos_counter += f_turning_para[loop] * m_Control.P_Curve;
        timer_counter ++;
    }
    central_counter = 85 + (sint16)(pos_counter / timer_counter);//获取
    if(central_counter < 0){central_counter = 0;}
    if(central_counter > 184){central_counter = 184;}
    return central_counter;
}
//加权平均不如改变有效行王道，相当于，有效行是大变动，而加权平均只是小变化
*/
uint16 n_getSteerByWire()
{
    //构造卷积函数，其目标应满足
    //首先有两个点可以考虑，一个是线的斜率分布，另一个就是前瞻的远
    //y = a*x*x + b*x + c//这里作为一个函数
    //y' = 2ax + b
    //也就是2a决定斜率的变化
    return 0;
}


/*单线思路
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
            {//还有一种方法叫做检测两侧的丢线情况=>即搜到可能单点的地方，然后检索距离两侧线终止区的距离进行识别
                if((__ABS(m_ImageAbstract.Central[loop-1] - m_ImageAbstract.Right[loop]) < m_ImageAbstract.width[loop]/4.5)&&(left_cut > right_cut))
                {
                    mark = 2;
                }
                if((__ABS(m_ImageAbstract.Central[loop-1] - m_ImageAbstract.Left[loop]) < m_ImageAbstract.width[loop]/4.5)&&(left_cut < right_cut))
                {
                    mark = 1;
                }
            }*/