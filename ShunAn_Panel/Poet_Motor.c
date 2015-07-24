#include "arm_cm4.h"
#include "MK60F15.h"
#include "ShunAn_Lib.h"
#include "start_ShunAn.h"

#include "Poet_Motor.h"
#include "Pendulum_EndlessFormsMostBeautiful.h"
#include "Poet_Servo.h"
//============================================================================//
// v_motor_Init 电机初始化
//第一代板子顺序 C16 C8 C9 C17 AD0 AD1 C10 C18 C19 C11
//              DL  CL  BL AL 36  35  DR  CR   BR  AR

#define MOTOR_def_PWM_com                       FTM3_BASE_PTR
#define DE_number_pwm_mod                       (37500)//1kHz
//(3750 * 2)//1.19//4k
// 3.26k => 稳定
// 1.119k => 功率高
//============================================================================//
self_Motor_Para m_self_Motor_Para;//私有内部文件
void v_motor_Init()
{
    m_self_Motor_Para.L_counter = 0;
    m_self_Motor_Para.R_counter = 0;
    m_self_Motor_Para.L_e = 0;
    m_self_Motor_Para.R_e = 0;
    //ADC1_SE16
    //ADC0_SE16
    //Left
    //D//C16 => IO
    //C//C8  => FTM3 CH4
    //B//C9  => FTM3 CH5
    //A//C17 => IO
    /**************************************************************************/
    // 电流检测初始化 // 需要两个
    SIM_SCGC6 |= SIM_SCGC6_ADC0_MASK;//使能ADC0模块时钟 
    SIM_SCGC3 |= SIM_SCGC3_ADC1_MASK;//使能ADC1模块时钟 
    //1 => 16
    //0 => 16
    //SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK;//使能PORTC时钟 
    //PORTB_PCR7 |= PORT_PCR_MUX(0);//引脚复用选择模拟输入
    /**************************************************************************/
    // 速度检测初始化  // 使能正交解码 // 需要两个
    
    SIM_SCGC6 |= SIM_SCGC6_FTM1_MASK;
    SIM_SCGC3 |= SIM_SCGC3_FTM2_MASK;//
    
    SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;//使能PORTA时钟 
    PORTA_BASE_PTR->PCR[8] |= PORT_PCR_MUX(6);//引脚复用选择正交解码
    PORTA_BASE_PTR->PCR[9] |= PORT_PCR_MUX(6);//引脚复用选择正交解码
    PORTA_BASE_PTR->PCR[10] |= PORT_PCR_MUX(6);//引脚复用选择正交解码
    PORTA_BASE_PTR->PCR[11] |= PORT_PCR_MUX(6);//引脚复用选择正交解码
    
    FTM1_BASE_PTR->MOD = 0xFFFF;//设置上限，其实没啥用
    FTM1_BASE_PTR->MODE |= FTM_MODE_FTMEN_MASK
                         | FTM_MODE_WPDIS_MASK;//使能FTM，禁止写
    FTM1_BASE_PTR->QDCTRL |= FTM_QDCTRL_QUADMODE_MASK 
                           | FTM_QDCTRL_QUADEN_MASK
                           | FTM_QDCTRL_QUADIR_MASK;//使能正交解码
    FTM1_BASE_PTR->CNTIN = 0;//设置最低位
    FTM1_BASE_PTR->CNT = 0;//初始清零
    
    FTM2_BASE_PTR->MOD = 0xFFFF;//设置上限，其实没啥用
    FTM2_BASE_PTR->MODE |= FTM_MODE_FTMEN_MASK
                         | FTM_MODE_WPDIS_MASK;//使能FTM，禁止写
    FTM2_BASE_PTR->QDCTRL |= FTM_QDCTRL_QUADMODE_MASK 
                           | FTM_QDCTRL_QUADEN_MASK
                           | FTM_QDCTRL_QUADIR_MASK;//使能正交解码
    FTM2_BASE_PTR->CNTIN = 0;//设置最低位
    FTM2_BASE_PTR->CNT = 0;//初始清零
    
    /**************************************************************************/
    // 左电机输出初始化
    SIM_SCGC3 |= SIM_SCGC3_FTM3_MASK;//使能FTM0时钟
    SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK;//使能PORTC时钟 
    // FTM 输出端口
    PORTC_BASE_PTR->PCR[8] |= PORT_PCR_MUX(3);//引脚复用选择ALT3(FTM)
    PORTC_BASE_PTR->PCR[9] |= PORT_PCR_MUX(3);//引脚复用选择ALT3(FTM)
    PORTC_BASE_PTR->PCR[10] |= PORT_PCR_MUX(3);//引脚复用选择ALT3(FTM)
    PORTC_BASE_PTR->PCR[11] |= PORT_PCR_MUX(3);//引脚复用选择ALT3(FTM)
    
    PORTC_BASE_PTR->PCR[16] |= PORT_PCR_MUX(1);//引脚复用选择ALT3()
    PORTC_BASE_PTR->PCR[17] |= PORT_PCR_MUX(1);//引脚复用选择ALT3()
    PORTC_BASE_PTR->PCR[18] |= PORT_PCR_MUX(1);//引脚复用选择ALT3()
    PORTC_BASE_PTR->PCR[19] |= PORT_PCR_MUX(1);//引脚复用选择ALT3()
    
    PTC_BASE_PTR->PDDR |= (1 << 16);
    PTC_BASE_PTR->PDDR |= (1 << 17);
    PTC_BASE_PTR->PDDR |= (1 << 18);
    PTC_BASE_PTR->PDDR |= (1 << 19);
    
    PTC_BASE_PTR->PDOR &=~(1 << 16);
    PTC_BASE_PTR->PDOR &=~(1 << 17);
    PTC_BASE_PTR->PDOR &=~(1 << 18);
    PTC_BASE_PTR->PDOR &=~(1 << 19);
    /**************************************************************************/
    // 特性设定
    MOTOR_def_PWM_com->CONTROLS[4].CnSC &=~FTM_CnSC_ELSA_MASK;  // MSnB:MSnA = 1x       边沿对齐PWM
    MOTOR_def_PWM_com->CONTROLS[4].CnSC = FTM_CnSC_MSB_MASK     // ELSnB:ELSnA = 10     先高后低
                                        | FTM_CnSC_ELSB_MASK;   // ELSnB:ELSnA = 11     先低后高
    MOTOR_def_PWM_com->CONTROLS[5].CnSC &=~FTM_CnSC_ELSA_MASK;  // MSnB:MSnA = 1x       边沿对齐PWM
    MOTOR_def_PWM_com->CONTROLS[5].CnSC = FTM_CnSC_MSB_MASK     // ELSnB:ELSnA = 10     先高后低
                                        | FTM_CnSC_ELSB_MASK;   // ELSnB:ELSnA = 11     先低后高
    MOTOR_def_PWM_com->CONTROLS[6].CnSC &=~FTM_CnSC_ELSA_MASK;  // MSnB:MSnA = 1x       边沿对齐PWM
    MOTOR_def_PWM_com->CONTROLS[6].CnSC = FTM_CnSC_MSB_MASK     // ELSnB:ELSnA = 10     先高后低
                                        | FTM_CnSC_ELSB_MASK;   // ELSnB:ELSnA = 11     先低后高
    MOTOR_def_PWM_com->CONTROLS[7].CnSC &=~FTM_CnSC_ELSA_MASK;  // MSnB:MSnA = 1x       边沿对齐PWM
    MOTOR_def_PWM_com->CONTROLS[7].CnSC = FTM_CnSC_MSB_MASK     // ELSnB:ELSnA = 10     先高后低
                                        | FTM_CnSC_ELSB_MASK;   // ELSnB:ELSnA = 11     先低后高    
    /**************************************************************************/
    MOTOR_def_PWM_com->SC = 0 | FTM_SC_PS(1) | FTM_SC_CLKS(1);                //上升沿计数模式、分频系数为2^3(300Hz)2^5(75Hz)、时钟选择为bus 时钟、禁止中断
    MOTOR_def_PWM_com->MOD = DE_number_pwm_mod;//模数, EPWM的周期为 ：MOD - CNTIN + 0x0001 // 46875
    MOTOR_def_PWM_com->CONTROLS[4].CnV = 0;//脉冲宽度：(CnV - CNTIN)
    MOTOR_def_PWM_com->CONTROLS[5].CnV = 0;//脉冲宽度：(CnV - CNTIN)
    MOTOR_def_PWM_com->CONTROLS[6].CnV = 0;//脉冲宽度：(CnV - CNTIN)
    MOTOR_def_PWM_com->CONTROLS[7].CnV = 0;//脉冲宽度：(CnV - CNTIN)
    MOTOR_def_PWM_com->CNT = 0;//计数器。只有低16位可用（写任何值到此寄存器，都会加载 CNTIN 的值）
    //========================================================================//
    v_leftMotor_pwmOut(0,3);//能耗制动
    v_rightMotor_pwmOut(0,3);//能耗制动
    return;
}

//============================================================================//
// b_GetMotor_electric 获取电流
uint8 b_GetMotor_electric(ADC_MemMapPtr ADCx_PTR ,uint8 PinNumber ,uint16 * result)
{
    //75MHz / 2 => 37.5MHz => 4.6875MHz
    ADCx_PTR->CFG1 |= ADC_CFG1_ADIV(3)|ADC_CFG1_MODE(3)|ADC_CFG1_ADICLK(1)|ADC_CFG1_ADLSMP_MASK;////ADC1设置为总线时钟频率/2，长采样时间，8 / 12 / 10 / 16
    ADCx_PTR->CFG2 |= 0x00000004u;//ADC1设置为a通道，禁止异步时钟，高速序列转换，最长采样时间
    
    ADCx_PTR->SC3 = ADC_SC3_AVGS(3) | ADC_SC3_AVGE_MASK;
    ADCx_PTR->SC1[0] = PinNumber;//ADC1设置为禁止中断，单端采样，通道4a采样，这个寄存器写入后就会开始转换
    uint32 delay = 120000;//用于安全
    while (((ADCx_PTR->SC1[0] & ADC_SC1_COCO_MASK ) != ADC_SC1_COCO_MASK)&&(--delay)){};//等待单次转换完成   
    if(0 == delay){return 'F';}//安全处理
    (*result) = ADCx_PTR->R[0];
    return 'T';
}
void v_SetCurrentStart()
{
    MOTOR_def_Left_I_AD_com->CFG1 |= ADC_CFG1_ADIV(3)|ADC_CFG1_MODE(3)|ADC_CFG1_ADICLK(1)|ADC_CFG1_ADLSMP_MASK;////ADC1设置为总线时钟频率/2，长采样时间，8 / 12 / 10 / 16
    MOTOR_def_Left_I_AD_com->CFG2 |= 0x00000004u;//ADC1设置为a通道，禁止异步时钟，高速序列转换，最长采样时间
    MOTOR_def_Left_I_AD_com->SC3 = ADC_SC3_AVGS(3) | ADC_SC3_AVGE_MASK;
    MOTOR_def_Right_I_AD_com->CFG1 |= ADC_CFG1_ADIV(3)|ADC_CFG1_MODE(3)|ADC_CFG1_ADICLK(1)|ADC_CFG1_ADLSMP_MASK;////ADC1设置为总线时钟频率/2，长采样时间，8 / 12 / 10 / 16
    MOTOR_def_Right_I_AD_com->CFG2 |= 0x00000004u;//ADC1设置为a通道，禁止异步时钟，高速序列转换，最长采样时间
    MOTOR_def_Right_I_AD_com->SC3 = ADC_SC3_AVGS(3) | ADC_SC3_AVGE_MASK;
    
    MOTOR_def_Left_I_AD_com->SC1[0] = 16;//ADC1设置为禁止中断，单端采样，通道4a采样，这个寄存器写入后就会开始转换
    MOTOR_def_Right_I_AD_com->SC1[0] = 16;//ADC1设置为禁止中断，单端采样，通道4a采样，这个寄存器写入后就会开始转换
}
uint8 b_GetCurrent(uint16 * left,uint16 * right)
{
    uint32 delay = 120000;//用于安全
    while (((MOTOR_def_Left_I_AD_com->SC1[0] & ADC_SC1_COCO_MASK ) != ADC_SC1_COCO_MASK)&&(--delay)){};//等待单次转换完成   
    if(0 == delay){return 'F';}//安全处理
    (*left) = MOTOR_def_Left_I_AD_com->R[0];//左边
    
    delay = 120000;//用于安全
    while (((MOTOR_def_Right_I_AD_com->SC1[0] & ADC_SC1_COCO_MASK ) != ADC_SC1_COCO_MASK)&&(--delay)){};//等待单次转换完成   
    if(0 == delay){return 'F';}//安全处理
    (*right) = MOTOR_def_Right_I_AD_com->R[0];//右边
    
    return 'T';
}
/*
电流环因为采样不及时放弃使用
*/

//============================================================================//
// n_GetMotor_speed 获取转速
sint16 n_GetMotor_speed(FTM_MemMapPtr FTMx_PTR)
{
    sint16 result;
    result = FTMx_PTR->CNT;
    FTMx_PTR->CNT = 0;
    return result;
}


void v_leftMotor_pwmOut(uint16 left_pwm_duty,uint16 left_dir)//电机输出
{
    //第一代板子顺序 C16 C8 C9 C17 AD0 AD1 C10 C18 C19 C11
    //              DL  CL  BL AL 36  35  DR  CR   BR  AR
    //============================//
    PTC_BASE_PTR->PDOR &=~(1 << 16);
    PTC_BASE_PTR->PDOR &=~(1 << 17);
    //============================//
    unsigned short int PWMtemp = 0;//3750为满占空比
    float float_temp = 0.0f;
    if(left_pwm_duty > 1000){left_pwm_duty = 1000;}//限幅防止错误
    float_temp = (float)left_pwm_duty;
    float_temp = float_temp * (float)DE_number_pwm_mod / 1000.0;//获取合适PWM
    PWMtemp = (unsigned short int)float_temp;
    //============================//
    switch(left_dir)
    {
    case 0://管子全关闭
        //PTC_BASE_PTR->PDOR &=~(1 << 16);
        //PTC_BASE_PTR->PDOR &=~(1 << 17);
        MOTOR_def_PWM_com->CONTROLS[4].CnV = 0;//
        MOTOR_def_PWM_com->CONTROLS[5].CnV = 0;//
        break;
    case 2:
        MOTOR_def_PWM_com->CONTROLS[4].CnV = PWMtemp;//CL C8
        MOTOR_def_PWM_com->CONTROLS[5].CnV = 0;//BL
        PTC_BASE_PTR->PDOR &=~(1 << 16);//DL
        PTC_BASE_PTR->PDOR |= (1 << 17);//AL
        break;
    case 1:
        MOTOR_def_PWM_com->CONTROLS[4].CnV = 0;//
        MOTOR_def_PWM_com->CONTROLS[5].CnV = PWMtemp;//BL C9
        PTC_BASE_PTR->PDOR |= (1 << 16);//DL
        PTC_BASE_PTR->PDOR &=~(1 << 17);//AL
        break;
    case 3://能耗制动
        MOTOR_def_PWM_com->CONTROLS[4].CnV = 0;//
        MOTOR_def_PWM_com->CONTROLS[5].CnV = 0;//
        PTC_BASE_PTR->PDOR |= (1 << 16);
        PTC_BASE_PTR->PDOR |= (1 << 17);
        break;
    }
    return;
}


//============================================================================//
// v_motor_pwm_out 获取转速// 输入参数：左pwm占空比（千精度），左导通方向，右pwm占空比（千精度），右导通方向
void v_rightMotor_pwmOut(uint16 left_pwm_duty,uint16 left_dir)//电机输出
{
    //第一代板子顺序 C16 C8 C9 C17 AD0 AD1 C10 C18 C19 C11
    //              DL  CL  BL AL 36  35  DR  CR   BR  AR
    //============================//
    PTC_BASE_PTR->PDOR &=~(1 << 18);
    PTC_BASE_PTR->PDOR &=~(1 << 19);
    //============================//
    unsigned short int PWMtemp = 0;//3750为满占空比
    float float_temp = 0.0f;
    if(left_pwm_duty > 1000){left_pwm_duty = 1000;}//限幅防止错误
    float_temp = (float)left_pwm_duty;
    float_temp = float_temp * (float)DE_number_pwm_mod / 1000.0;//获取合适PWM
    PWMtemp = (unsigned short int)float_temp;
    //============================//
    switch(left_dir)
    {
    case 0://管子全关闭
        MOTOR_def_PWM_com->CONTROLS[6].CnV = 0;//
        MOTOR_def_PWM_com->CONTROLS[7].CnV = 0;//
        break;
    case 2:
        MOTOR_def_PWM_com->CONTROLS[6].CnV = PWMtemp;//DR C10
        MOTOR_def_PWM_com->CONTROLS[7].CnV = 0;//AR C19
        PTC_BASE_PTR->PDOR &=~(1 << 18);//CR
        PTC_BASE_PTR->PDOR |= (1 << 19);//BR
        break;
    case 1:
        MOTOR_def_PWM_com->CONTROLS[6].CnV = 0;//
        MOTOR_def_PWM_com->CONTROLS[7].CnV = PWMtemp;//AR C19
        PTC_BASE_PTR->PDOR |= (1 << 18);//CR
        PTC_BASE_PTR->PDOR &=~(1 << 19);//BR
        break;
    case 3://能耗制动
        MOTOR_def_PWM_com->CONTROLS[6].CnV = 0;//
        MOTOR_def_PWM_com->CONTROLS[7].CnV = 0;//
        PTC_BASE_PTR->PDOR |= (1 << 18);
        PTC_BASE_PTR->PDOR |= (1 << 19);
        break;
    }
    return;
}

/*
void v_DAC_Init ( DAC_MemMapPtr dacN )
{
    if(DAC0_BASE_PTR == dacN){SIM_SCGC2 |= SIM_SCGC2_DAC0_MASK;}
    else if(DAC1_BASE_PTR == dacN){SIM_SCGC2 |= SIM_SCGC2_DAC1_MASK;}
    
    dacN -> C0 = ( 0 
                        | DAC_C0_DACEN_MASK             // 开启DAC模块
                        | 0x40                     // Reference Source Select
                        | DAC_C0_DACTRGSEL_MASK         // 软件触发启用
                        );
    
    dacN -> C1 = 0;
}

void v_DAC_SetVar( DAC_MemMapPtr dacN , uint16 DACvar )
{
    dacN-> DAT[0].DATL =  DACvar & 0x00FF;
    dacN-> DAT[0].DATH = (DACvar & 0x0F00) >> 8;
}
*/
/*
vL - vR => 这个是速度差
第一次             0  0   => 0
第二次可能         10 20  => 10
                   5+  -5
                  20 10 => -10
                如若速度差变化较大，那么~
*/
void v_speed_set2pwm(sint16 leftSpeed,sint16 rightSpeed,uint8 speedMode)
{//1 => 右//10 => 左//3 => 双
    float speed_P = (float)m_Control.Motor_ControlPara_P_Number;//124.f;//最后参数6.5f//122
    float speed_I = (float)m_Control.Motor_ControlPara_I_Number;//5.f;
    float speed_D = (float)m_Control.Motor_ControlPara_D_Number;//30.f;//60
            //1.3f时刻，直道很稳定，但是过弯却会有一定的振荡
            
    float Left_OutPWM = 0.f;
    float Right_OutPWM = 0.f;
            
    sint16 v_e_L = leftSpeed - m_Control.LeftMotorSpeed;
    sint16 v_e_R = rightSpeed - m_Control.RightMotorSpeed;
    
    static sint32 v_e_Counter_L = 0;
    static sint32 v_e_Counter_R = 0;
            
    sint32 v_e_Counter_MayBeNotChange = (v_e_Counter_L + v_e_L + v_e_Counter_R + v_e_R)/2;
            
    sint16 v_e = (v_e_L + v_e_R)/2;
    
    float I_endless = (float)v_e_Counter_MayBeNotChange * speed_I;
    if((I_endless > 960)&&(v_e > 0)){v_e_Counter_MayBeNotChange = (v_e_Counter_L  + v_e_Counter_R)/2;}
    else{v_e_Counter_L = v_e_Counter_L + v_e_L;v_e_Counter_R = v_e_Counter_R + v_e_R;}
    if((I_endless < -960)&&(v_e < 0)){v_e_Counter_MayBeNotChange = (v_e_Counter_L + v_e_Counter_R)/2;}
    else{v_e_Counter_L = v_e_Counter_L + v_e_L;v_e_Counter_R = v_e_Counter_R + v_e_R;}
    
    sint32 v_e_counter = (v_e_Counter_L + v_e_Counter_R)/2;
    /*
    if(m_Control.LeftMotorSpeed < m_Control.RightMotorSpeed)
    {
        if((L_I_endless > 960)&&(0 == add_for_Int_Left)&&(add_for_Int_Right < 0)){add_for_Int_Left = add_for_Int_Right;}
        if((L_I_endless <-960)&&(0 == add_for_Int_Left)&&(add_for_Int_Right > 0)){add_for_Int_Left = add_for_Int_Right;} 
    }
    if(m_Control.LeftMotorSpeed > m_Control.RightMotorSpeed)
    {
        if((R_I_endless > 960)&&(0 == add_for_Int_Right)&&(add_for_Int_Left < 0)){add_for_Int_Right = add_for_Int_Left;}
        if((R_I_endless <-960)&&(0 == add_for_Int_Right)&&(add_for_Int_Left > 0)){add_for_Int_Right = add_for_Int_Left;}
    }
    */
            
            float OutPWM = v_e * speed_P + v_e_counter * speed_I;
            Left_OutPWM = OutPWM;
            Right_OutPWM = OutPWM;
            
            if(Left_OutPWM > 950.f){Left_OutPWM = 950.f;}
            if(Left_OutPWM < -950.f){Left_OutPWM = -950.f;}
            
            if(Right_OutPWM > 950.f){Right_OutPWM = 950.f;}
            if(Right_OutPWM < -950.f){Right_OutPWM = -950.f;}
            
            m_Control.LeftMotorPWM = (sint16)Left_OutPWM;
            m_Control.RightMotorPWM = (sint16)Right_OutPWM;
            
            float LeftRightRatio = //右转为正
            (n_GetServoGraduated(m_Control.ServoAngle) -number_ServoGraduated/2)/(float)(number_ServoGraduated/2);//-200~200
            
            m_Control.RightMotorPWM -= LeftRightRatio * 400;
            m_Control.LeftMotorPWM += LeftRightRatio * 400;
    if(m_Control.LeftMotorPWM > 970){m_Control.LeftMotorPWM = 970;}
    if(m_Control.LeftMotorPWM < -970){m_Control.LeftMotorPWM = -970;}
    if(m_Control.RightMotorPWM > 970){m_Control.RightMotorPWM = 970;}
    if(m_Control.RightMotorPWM < -970){m_Control.RightMotorPWM = -970;}
    /*
    m_self_Motor_Para.L_e_Last = m_self_Motor_Para.L_e;
    m_self_Motor_Para.R_e_Last = m_self_Motor_Para.R_e;
            
    m_self_Motor_Para.L_e = (leftSpeed - m_Control.LeftMotorSpeed);
    m_self_Motor_Para.R_e = (rightSpeed -m_Control.RightMotorSpeed);
      
    
    sint16 add_for_Int_Left = m_self_Motor_Para.L_e;//饱和限制
    sint16 add_for_Int_Right = m_self_Motor_Para.R_e;
    
    float L_I_endless = (float)m_self_Motor_Para.L_counter * speed_I;//幅度限制
    float R_I_endless = (float)m_self_Motor_Para.R_counter * speed_I;
    
    
    if((L_I_endless > 960)&&(add_for_Int_Left > 0)){add_for_Int_Left = 0;}
    if((L_I_endless < -960)&&(add_for_Int_Left < 0)){add_for_Int_Left = 0;}
    if((R_I_endless > 960)&&(add_for_Int_Right > 0)){add_for_Int_Right = 0;}
    if((R_I_endless < -960)&&(add_for_Int_Right < 0)){add_for_Int_Right = 0;}
    
        if(m_Control.LeftMotorSpeed < m_Control.RightMotorSpeed)
        {
            if((L_I_endless > 960)&&(0 == add_for_Int_Left)&&(add_for_Int_Right < 0)){add_for_Int_Left = add_for_Int_Right;}
            if((L_I_endless <-960)&&(0 == add_for_Int_Left)&&(add_for_Int_Right > 0)){add_for_Int_Left = add_for_Int_Right;} 
        }
        if(m_Control.LeftMotorSpeed > m_Control.RightMotorSpeed)
        {
            if((R_I_endless > 960)&&(0 == add_for_Int_Right)&&(add_for_Int_Left < 0)){add_for_Int_Right = add_for_Int_Left;}
            if((R_I_endless <-960)&&(0 == add_for_Int_Right)&&(add_for_Int_Left > 0)){add_for_Int_Right = add_for_Int_Left;}
        }
    
    float add_ratio = 1.f;
    if(__F_ABS(L_I_endless) >= 50.f)
    {
        add_ratio = 0.4;
    }
    m_self_Motor_Para.L_counter += add_ratio*add_for_Int_Left;
    
    add_ratio = 1.f;
    if(__F_ABS(R_I_endless) >= 50.f)
    {
        add_ratio = 0.4;
    }
    m_self_Motor_Para.R_counter += add_ratio*add_for_Int_Right;
    
    float Left_OutPWM = 0.f;
    float Right_OutPWM = 0.f;
    
    L_I_endless = (float)m_self_Motor_Para.L_counter * speed_I;//幅度限制
    L_I_endless = (L_I_endless > 999.f)?999.f:L_I_endless;
    L_I_endless = (L_I_endless < -999.f)?-999.f:L_I_endless;
    
    R_I_endless = (float)m_self_Motor_Para.R_counter * speed_I;
    R_I_endless = (R_I_endless > 999.f)?999.f:R_I_endless;
    R_I_endless = (R_I_endless < -999.f)?-999.f:R_I_endless;
    
    
    Left_OutPWM  = ((float)m_self_Motor_Para.L_e * speed_P + L_I_endless + speed_D*(m_self_Motor_Para.L_e - m_self_Motor_Para.L_e_Last));
    Right_OutPWM = ((float)m_self_Motor_Para.R_e * speed_P + R_I_endless + speed_D*(m_self_Motor_Para.R_e - m_self_Motor_Para.R_e_Last));
            
    if(Left_OutPWM > 999.f){Left_OutPWM = 999.f;}
    if(Left_OutPWM < -999.f){Left_OutPWM = -999.f;}
            
    if(Right_OutPWM > 999.f){Right_OutPWM = 999.f;}
    if(Right_OutPWM < -999.f){Right_OutPWM = -999.f;}
            

    sint16 s16_Left_OutPWM = 0;
    sint16 s16_Right_OutPWM = 0;
    s16_Left_OutPWM = (sint16)Left_OutPWM;
    s16_Right_OutPWM = (sint16)Right_OutPWM;
    sint16 s16_Left_OutPWM_gaia = s16_Left_OutPWM;
    sint16 s16_Right_OutPWM_gaia = s16_Right_OutPWM;
    if(s16_Left_OutPWM > 970){s16_Left_OutPWM = 970;}
    if(s16_Left_OutPWM < -970){s16_Left_OutPWM = -970;}
    if(s16_Right_OutPWM > 970){s16_Right_OutPWM = 970;}
    if(s16_Right_OutPWM < -970){s16_Right_OutPWM = -970;}
    
    //========================================================================//
    m_Control.LeftMotorPWM = s16_Left_OutPWM;
    m_Control.RightMotorPWM = s16_Right_OutPWM;
    */
    
    if(m_Control.LeftMotorPWM > 0){v_leftMotor_pwmOut(m_Control.LeftMotorPWM,1);}
    else if(m_Control.LeftMotorPWM < 0){v_leftMotor_pwmOut(-m_Control.LeftMotorPWM,2);}
    else{v_leftMotor_pwmOut(m_Control.LeftMotorPWM,3);}
    
    
    if(m_Control.RightMotorPWM > 0){v_rightMotor_pwmOut(m_Control.RightMotorPWM,1);}
    else if(m_Control.RightMotorPWM < 0){v_rightMotor_pwmOut(-m_Control.RightMotorPWM,2);}
    else{v_rightMotor_pwmOut(m_Control.RightMotorPWM,3);}
}


void v_ele_set2pwm(sint16 leftPWM,sint16 rightPWM)
{
    
}


void v_speed_Test(sint16 speed)//电机测试
{
    m_Control.LeftGiveSpd = speed;
    v_speed_set2pwm(speed,speed,10);
}


void v_speed_Give(sint16 speed)
{//速度给定代码
     //= speed * 2 - 10;//这里重新修正
  
    float LeftRightRatio = //
         (n_GetServoGraduated(m_Control.ServoAngle) -number_ServoGraduated/2)
        /(float)(number_ServoGraduated/2);//-1.f~1.f//<0.f左转 .0.f右转
    
    
    m_Control.LimitedSlipDiffSpd = (speed*2 - 10);//*( __F_ABS((float)((float)m_Control.LeftRightRatio - 200.f)/200.f));//*((float)(__F_ABS((float)m_Control.LeftRightRatio - 200.f))/200.f) + 20.f;
                                                //200   0
                                                //speed * 2 - 2      
                                                //speed * 2 - 10
    if(m_Control.LimitedSlipDiffSpd > speed*2){m_Control.LimitedSlipDiffSpd = speed*2;}
    if(m_Control.LimitedSlipDiffSpd < 10){m_Control.LimitedSlipDiffSpd = 10;}
    //以下为机械差速
    sint16 speed_average = (m_Control.LeftMotorSpeed + m_Control.RightMotorSpeed) / 2;//实际速度的均值
    sint16 error_beWith = speed - speed_average;//给定速度与实际速度均值的偏差
    
    sint16 Last_LeftGiveSpd = m_Control.LeftGiveSpd;
    sint16 Last_RightGiveSpd = m_Control.RightGiveSpd;//记录数值
    
    if(m_Control.LeftMotorSpeed < m_Control.RightMotorSpeed)//引入轻微的低通滤波
    {
        m_Control.LeftGiveSpd = m_Control.LeftMotorSpeed;
        m_Control.RightGiveSpd = 2 * speed - m_Control.LeftGiveSpd;
    }
    else
    {
        m_Control.RightGiveSpd = m_Control.RightMotorSpeed;
        m_Control.LeftGiveSpd = 2 * speed - m_Control.RightGiveSpd;
    }

    if((__ABS(m_Control.LeftGiveSpd - m_Control.RightGiveSpd) >= m_Control.LimitedSlipDiffSpd)||((m_Control.LeftGiveSpd < 5)||(m_Control.RightGiveSpd < 5)))
    {//限制幅度
        if(m_Control.LeftGiveSpd > m_Control.RightGiveSpd)
        {
            m_Control.LeftGiveSpd = speed + m_Control.LimitedSlipDiffSpd / 2;
            m_Control.RightGiveSpd = speed - m_Control.LimitedSlipDiffSpd / 2;
        }
        else
        {
            m_Control.LeftGiveSpd = speed - m_Control.LimitedSlipDiffSpd / 2;
            m_Control.RightGiveSpd = speed + m_Control.LimitedSlipDiffSpd / 2;
        }
    }
    //增加低通滤波
    
    v_speed_set2pwm(m_Control.LeftGiveSpd,m_Control.RightGiveSpd,3);
}


void v_speed_Give_UsedsmallChange(sint16 speed)
{
    m_Control.LimitedSlipDiffSpd = speed * 2 - 10;
  
    float LeftRightRatio = //
         (n_GetServoGraduated(m_Control.ServoAngle) -number_ServoGraduated/2)
        /(float)(number_ServoGraduated/2);//-1.f~1.f//<0.f左转 .0.f右转
    
    m_Control.LeftRightRatio = n_GetServoGraduated(m_Control.ServoAngle);//给定转速率        
    //以下为机械差速
    sint16 speed_average = (m_Control.LeftMotorSpeed + m_Control.RightMotorSpeed) / 2;//实际速度的均值
    sint16 error_beWith = speed - speed_average;//给定速度与实际速度均值的偏差
    
    float smallChange = //左右轮速度相差=>这里为正反馈//1-左轮速度比右轮大
    (float)(m_Control.LeftMotorSpeed - m_Control.RightMotorSpeed)/(float)(m_Control.LeftMotorSpeed + m_Control.RightMotorSpeed);
    if(smallChange > 1.f){smallChange = 1.f;}
    if(smallChange <-1.f){smallChange =-1.f;}
    smallChange = (smallChange + 1.f)/2.f;//0.f-2.f => 0.5f - 1.f这个区间是左轮快 / 否则就是右轮快
    m_Control.LeftGiveSpd  = m_Control.LeftMotorSpeed + smallChange*error_beWith*2.f;
    m_Control.RightGiveSpd = m_Control.RightMotorSpeed + (1.f-smallChange)*error_beWith*2.f;
    
    if((__ABS(m_Control.LeftGiveSpd - m_Control.RightGiveSpd) >= m_Control.LimitedSlipDiffSpd)||((m_Control.LeftGiveSpd < 5)||(m_Control.RightGiveSpd < 5)))
    {//限制幅度
        if(m_Control.LeftGiveSpd > m_Control.RightGiveSpd)
        {
            m_Control.LeftGiveSpd = speed + m_Control.LimitedSlipDiffSpd / 2;
            m_Control.RightGiveSpd = speed - m_Control.LimitedSlipDiffSpd / 2;
        }
        else
        {
            m_Control.LeftGiveSpd = speed - m_Control.LimitedSlipDiffSpd / 2;
            m_Control.RightGiveSpd = speed + m_Control.LimitedSlipDiffSpd / 2;
        }
    }
    
    v_speed_set2pwm(m_Control.LeftGiveSpd,m_Control.RightGiveSpd,3);
}


    //m_Control.LeftGiveSpd = (sint16)((float)(m_Control.LeftMotorSpeed) + ((float)error_beWith *(1.f - ratio)*2.f));
    //m_Control.RightGiveSpd = (sint16)((float)(m_Control.RightMotorSpeed) + ((float)error_beWith * ratio * 2.f));

    
    /*
    float ratio = (float)(m_Control.LeftMotorSpeed - m_Control.RightMotorSpeed)//差比和
                 /(float)(2 * speed);//=>分母接近于2*speed
    //根据转速差分配转速，将转速分配更多给转速快的轮子上 => 实际上可以不用限滑差速器
//    float ratio_mark = (__F_ABS(ratio) / ratio);
//    ratio = ratio_mark * (2*__F_ABS(ratio) - ratio*ratio);//x^3
    //ratio = ratio * ratio; => 会出现为0的情况
    //这里能表征左右轮转速偏差 => 分配速度的差值
    //-1表征转速更倾向于左轮//1表征转速更倾向于右轮
    ratio = (ratio + 1.f)/2.f;//归一化//0 ~ 1
    if(ratio > 1.f){ratio = 1.f;}
    if(ratio < 0.f){ratio = 0.f;}
    //在这个基础上更改差速
    
    sint16 Last_LeftGiveSpd = m_Control.LeftGiveSpd;
    sint16 Last_RightGiveSpd = m_Control.RightGiveSpd;//记录数值
    
    m_Control.LeftGiveSpd = (sint16)((float)(m_Control.LeftMotorSpeed) + ((float)error_beWith *(1.f - ratio)*2.f));
    m_Control.RightGiveSpd = (sint16)((float)(m_Control.RightMotorSpeed) + ((float)error_beWith * ratio * 2.f));
    */