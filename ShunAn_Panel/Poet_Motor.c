#include "arm_cm4.h"
#include "MK60F15.h"
#include "ShunAn_Lib.h"
#include "start_ShunAn.h"

#include "Poet_Motor.h"
#include "Pendulum_EndlessFormsMostBeautiful.h"
#include "Poet_Servo.h"
//============================================================================//
// v_motor_Init �����ʼ��
//��һ������˳�� C16 C8 C9 C17 AD0 AD1 C10 C18 C19 C11
//              DL  CL  BL AL 36  35  DR  CR   BR  AR

#define MOTOR_def_PWM_com                       FTM3_BASE_PTR
#define DE_number_pwm_mod                       (37500)//1kHz
//(3750 * 2)//1.19//4k
// 3.26k => �ȶ�
// 1.119k => ���ʸ�
//============================================================================//
self_Motor_Para m_self_Motor_Para;//˽���ڲ��ļ�
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
    // ��������ʼ�� // ��Ҫ����
    SIM_SCGC6 |= SIM_SCGC6_ADC0_MASK;//ʹ��ADC0ģ��ʱ�� 
    SIM_SCGC3 |= SIM_SCGC3_ADC1_MASK;//ʹ��ADC1ģ��ʱ�� 
    //1 => 16
    //0 => 16
    //SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK;//ʹ��PORTCʱ�� 
    //PORTB_PCR7 |= PORT_PCR_MUX(0);//���Ÿ���ѡ��ģ������
    /**************************************************************************/
    // �ٶȼ���ʼ��  // ʹ���������� // ��Ҫ����
    
    SIM_SCGC6 |= SIM_SCGC6_FTM1_MASK;
    SIM_SCGC3 |= SIM_SCGC3_FTM2_MASK;//
    
    SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;//ʹ��PORTAʱ�� 
    PORTA_BASE_PTR->PCR[8] |= PORT_PCR_MUX(6);//���Ÿ���ѡ����������
    PORTA_BASE_PTR->PCR[9] |= PORT_PCR_MUX(6);//���Ÿ���ѡ����������
    PORTA_BASE_PTR->PCR[10] |= PORT_PCR_MUX(6);//���Ÿ���ѡ����������
    PORTA_BASE_PTR->PCR[11] |= PORT_PCR_MUX(6);//���Ÿ���ѡ����������
    
    FTM1_BASE_PTR->MOD = 0xFFFF;//�������ޣ���ʵûɶ��
    FTM1_BASE_PTR->MODE |= FTM_MODE_FTMEN_MASK
                         | FTM_MODE_WPDIS_MASK;//ʹ��FTM����ֹд
    FTM1_BASE_PTR->QDCTRL |= FTM_QDCTRL_QUADMODE_MASK 
                           | FTM_QDCTRL_QUADEN_MASK
                           | FTM_QDCTRL_QUADIR_MASK;//ʹ����������
    FTM1_BASE_PTR->CNTIN = 0;//�������λ
    FTM1_BASE_PTR->CNT = 0;//��ʼ����
    
    FTM2_BASE_PTR->MOD = 0xFFFF;//�������ޣ���ʵûɶ��
    FTM2_BASE_PTR->MODE |= FTM_MODE_FTMEN_MASK
                         | FTM_MODE_WPDIS_MASK;//ʹ��FTM����ֹд
    FTM2_BASE_PTR->QDCTRL |= FTM_QDCTRL_QUADMODE_MASK 
                           | FTM_QDCTRL_QUADEN_MASK
                           | FTM_QDCTRL_QUADIR_MASK;//ʹ����������
    FTM2_BASE_PTR->CNTIN = 0;//�������λ
    FTM2_BASE_PTR->CNT = 0;//��ʼ����
    
    /**************************************************************************/
    // ���������ʼ��
    SIM_SCGC3 |= SIM_SCGC3_FTM3_MASK;//ʹ��FTM0ʱ��
    SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK;//ʹ��PORTCʱ�� 
    // FTM ����˿�
    PORTC_BASE_PTR->PCR[8] |= PORT_PCR_MUX(3);//���Ÿ���ѡ��ALT3(FTM)
    PORTC_BASE_PTR->PCR[9] |= PORT_PCR_MUX(3);//���Ÿ���ѡ��ALT3(FTM)
    PORTC_BASE_PTR->PCR[10] |= PORT_PCR_MUX(3);//���Ÿ���ѡ��ALT3(FTM)
    PORTC_BASE_PTR->PCR[11] |= PORT_PCR_MUX(3);//���Ÿ���ѡ��ALT3(FTM)
    
    PORTC_BASE_PTR->PCR[16] |= PORT_PCR_MUX(1);//���Ÿ���ѡ��ALT3()
    PORTC_BASE_PTR->PCR[17] |= PORT_PCR_MUX(1);//���Ÿ���ѡ��ALT3()
    PORTC_BASE_PTR->PCR[18] |= PORT_PCR_MUX(1);//���Ÿ���ѡ��ALT3()
    PORTC_BASE_PTR->PCR[19] |= PORT_PCR_MUX(1);//���Ÿ���ѡ��ALT3()
    
    PTC_BASE_PTR->PDDR |= (1 << 16);
    PTC_BASE_PTR->PDDR |= (1 << 17);
    PTC_BASE_PTR->PDDR |= (1 << 18);
    PTC_BASE_PTR->PDDR |= (1 << 19);
    
    PTC_BASE_PTR->PDOR &=~(1 << 16);
    PTC_BASE_PTR->PDOR &=~(1 << 17);
    PTC_BASE_PTR->PDOR &=~(1 << 18);
    PTC_BASE_PTR->PDOR &=~(1 << 19);
    /**************************************************************************/
    // �����趨
    MOTOR_def_PWM_com->CONTROLS[4].CnSC &=~FTM_CnSC_ELSA_MASK;  // MSnB:MSnA = 1x       ���ض���PWM
    MOTOR_def_PWM_com->CONTROLS[4].CnSC = FTM_CnSC_MSB_MASK     // ELSnB:ELSnA = 10     �ȸߺ��
                                        | FTM_CnSC_ELSB_MASK;   // ELSnB:ELSnA = 11     �ȵͺ��
    MOTOR_def_PWM_com->CONTROLS[5].CnSC &=~FTM_CnSC_ELSA_MASK;  // MSnB:MSnA = 1x       ���ض���PWM
    MOTOR_def_PWM_com->CONTROLS[5].CnSC = FTM_CnSC_MSB_MASK     // ELSnB:ELSnA = 10     �ȸߺ��
                                        | FTM_CnSC_ELSB_MASK;   // ELSnB:ELSnA = 11     �ȵͺ��
    MOTOR_def_PWM_com->CONTROLS[6].CnSC &=~FTM_CnSC_ELSA_MASK;  // MSnB:MSnA = 1x       ���ض���PWM
    MOTOR_def_PWM_com->CONTROLS[6].CnSC = FTM_CnSC_MSB_MASK     // ELSnB:ELSnA = 10     �ȸߺ��
                                        | FTM_CnSC_ELSB_MASK;   // ELSnB:ELSnA = 11     �ȵͺ��
    MOTOR_def_PWM_com->CONTROLS[7].CnSC &=~FTM_CnSC_ELSA_MASK;  // MSnB:MSnA = 1x       ���ض���PWM
    MOTOR_def_PWM_com->CONTROLS[7].CnSC = FTM_CnSC_MSB_MASK     // ELSnB:ELSnA = 10     �ȸߺ��
                                        | FTM_CnSC_ELSB_MASK;   // ELSnB:ELSnA = 11     �ȵͺ��    
    /**************************************************************************/
    MOTOR_def_PWM_com->SC = 0 | FTM_SC_PS(1) | FTM_SC_CLKS(1);                //�����ؼ���ģʽ����Ƶϵ��Ϊ2^3(300Hz)2^5(75Hz)��ʱ��ѡ��Ϊbus ʱ�ӡ���ֹ�ж�
    MOTOR_def_PWM_com->MOD = DE_number_pwm_mod;//ģ��, EPWM������Ϊ ��MOD - CNTIN + 0x0001 // 46875
    MOTOR_def_PWM_com->CONTROLS[4].CnV = 0;//�����ȣ�(CnV - CNTIN)
    MOTOR_def_PWM_com->CONTROLS[5].CnV = 0;//�����ȣ�(CnV - CNTIN)
    MOTOR_def_PWM_com->CONTROLS[6].CnV = 0;//�����ȣ�(CnV - CNTIN)
    MOTOR_def_PWM_com->CONTROLS[7].CnV = 0;//�����ȣ�(CnV - CNTIN)
    MOTOR_def_PWM_com->CNT = 0;//��������ֻ�е�16λ���ã�д�κ�ֵ���˼Ĵ������������ CNTIN ��ֵ��
    //========================================================================//
    v_leftMotor_pwmOut(0,3);//�ܺ��ƶ�
    v_rightMotor_pwmOut(0,3);//�ܺ��ƶ�
    return;
}

//============================================================================//
// b_GetMotor_electric ��ȡ����
uint8 b_GetMotor_electric(ADC_MemMapPtr ADCx_PTR ,uint8 PinNumber ,uint16 * result)
{
    //75MHz / 2 => 37.5MHz => 4.6875MHz
    ADCx_PTR->CFG1 |= ADC_CFG1_ADIV(3)|ADC_CFG1_MODE(3)|ADC_CFG1_ADICLK(1)|ADC_CFG1_ADLSMP_MASK;////ADC1����Ϊ����ʱ��Ƶ��/2��������ʱ�䣬8 / 12 / 10 / 16
    ADCx_PTR->CFG2 |= 0x00000004u;//ADC1����Ϊaͨ������ֹ�첽ʱ�ӣ���������ת���������ʱ��
    
    ADCx_PTR->SC3 = ADC_SC3_AVGS(3) | ADC_SC3_AVGE_MASK;
    ADCx_PTR->SC1[0] = PinNumber;//ADC1����Ϊ��ֹ�жϣ����˲�����ͨ��4a����������Ĵ���д���ͻῪʼת��
    uint32 delay = 120000;//���ڰ�ȫ
    while (((ADCx_PTR->SC1[0] & ADC_SC1_COCO_MASK ) != ADC_SC1_COCO_MASK)&&(--delay)){};//�ȴ�����ת�����   
    if(0 == delay){return 'F';}//��ȫ����
    (*result) = ADCx_PTR->R[0];
    return 'T';
}
void v_SetCurrentStart()
{
    MOTOR_def_Left_I_AD_com->CFG1 |= ADC_CFG1_ADIV(3)|ADC_CFG1_MODE(3)|ADC_CFG1_ADICLK(1)|ADC_CFG1_ADLSMP_MASK;////ADC1����Ϊ����ʱ��Ƶ��/2��������ʱ�䣬8 / 12 / 10 / 16
    MOTOR_def_Left_I_AD_com->CFG2 |= 0x00000004u;//ADC1����Ϊaͨ������ֹ�첽ʱ�ӣ���������ת���������ʱ��
    MOTOR_def_Left_I_AD_com->SC3 = ADC_SC3_AVGS(3) | ADC_SC3_AVGE_MASK;
    MOTOR_def_Right_I_AD_com->CFG1 |= ADC_CFG1_ADIV(3)|ADC_CFG1_MODE(3)|ADC_CFG1_ADICLK(1)|ADC_CFG1_ADLSMP_MASK;////ADC1����Ϊ����ʱ��Ƶ��/2��������ʱ�䣬8 / 12 / 10 / 16
    MOTOR_def_Right_I_AD_com->CFG2 |= 0x00000004u;//ADC1����Ϊaͨ������ֹ�첽ʱ�ӣ���������ת���������ʱ��
    MOTOR_def_Right_I_AD_com->SC3 = ADC_SC3_AVGS(3) | ADC_SC3_AVGE_MASK;
    
    MOTOR_def_Left_I_AD_com->SC1[0] = 16;//ADC1����Ϊ��ֹ�жϣ����˲�����ͨ��4a����������Ĵ���д���ͻῪʼת��
    MOTOR_def_Right_I_AD_com->SC1[0] = 16;//ADC1����Ϊ��ֹ�жϣ����˲�����ͨ��4a����������Ĵ���д���ͻῪʼת��
}
uint8 b_GetCurrent(uint16 * left,uint16 * right)
{
    uint32 delay = 120000;//���ڰ�ȫ
    while (((MOTOR_def_Left_I_AD_com->SC1[0] & ADC_SC1_COCO_MASK ) != ADC_SC1_COCO_MASK)&&(--delay)){};//�ȴ�����ת�����   
    if(0 == delay){return 'F';}//��ȫ����
    (*left) = MOTOR_def_Left_I_AD_com->R[0];//���
    
    delay = 120000;//���ڰ�ȫ
    while (((MOTOR_def_Right_I_AD_com->SC1[0] & ADC_SC1_COCO_MASK ) != ADC_SC1_COCO_MASK)&&(--delay)){};//�ȴ�����ת�����   
    if(0 == delay){return 'F';}//��ȫ����
    (*right) = MOTOR_def_Right_I_AD_com->R[0];//�ұ�
    
    return 'T';
}
/*
��������Ϊ��������ʱ����ʹ��
*/

//============================================================================//
// n_GetMotor_speed ��ȡת��
sint16 n_GetMotor_speed(FTM_MemMapPtr FTMx_PTR)
{
    sint16 result;
    result = FTMx_PTR->CNT;
    FTMx_PTR->CNT = 0;
    return result;
}


void v_leftMotor_pwmOut(uint16 left_pwm_duty,uint16 left_dir)//������
{
    //��һ������˳�� C16 C8 C9 C17 AD0 AD1 C10 C18 C19 C11
    //              DL  CL  BL AL 36  35  DR  CR   BR  AR
    //============================//
    PTC_BASE_PTR->PDOR &=~(1 << 16);
    PTC_BASE_PTR->PDOR &=~(1 << 17);
    //============================//
    unsigned short int PWMtemp = 0;//3750Ϊ��ռ�ձ�
    float float_temp = 0.0f;
    if(left_pwm_duty > 1000){left_pwm_duty = 1000;}//�޷���ֹ����
    float_temp = (float)left_pwm_duty;
    float_temp = float_temp * (float)DE_number_pwm_mod / 1000.0;//��ȡ����PWM
    PWMtemp = (unsigned short int)float_temp;
    //============================//
    switch(left_dir)
    {
    case 0://����ȫ�ر�
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
    case 3://�ܺ��ƶ�
        MOTOR_def_PWM_com->CONTROLS[4].CnV = 0;//
        MOTOR_def_PWM_com->CONTROLS[5].CnV = 0;//
        PTC_BASE_PTR->PDOR |= (1 << 16);
        PTC_BASE_PTR->PDOR |= (1 << 17);
        break;
    }
    return;
}


//============================================================================//
// v_motor_pwm_out ��ȡת��// �����������pwmռ�ձȣ�ǧ���ȣ�����ͨ������pwmռ�ձȣ�ǧ���ȣ����ҵ�ͨ����
void v_rightMotor_pwmOut(uint16 left_pwm_duty,uint16 left_dir)//������
{
    //��һ������˳�� C16 C8 C9 C17 AD0 AD1 C10 C18 C19 C11
    //              DL  CL  BL AL 36  35  DR  CR   BR  AR
    //============================//
    PTC_BASE_PTR->PDOR &=~(1 << 18);
    PTC_BASE_PTR->PDOR &=~(1 << 19);
    //============================//
    unsigned short int PWMtemp = 0;//3750Ϊ��ռ�ձ�
    float float_temp = 0.0f;
    if(left_pwm_duty > 1000){left_pwm_duty = 1000;}//�޷���ֹ����
    float_temp = (float)left_pwm_duty;
    float_temp = float_temp * (float)DE_number_pwm_mod / 1000.0;//��ȡ����PWM
    PWMtemp = (unsigned short int)float_temp;
    //============================//
    switch(left_dir)
    {
    case 0://����ȫ�ر�
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
    case 3://�ܺ��ƶ�
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
                        | DAC_C0_DACEN_MASK             // ����DACģ��
                        | 0x40                     // Reference Source Select
                        | DAC_C0_DACTRGSEL_MASK         // �����������
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
vL - vR => ������ٶȲ�
��һ��             0  0   => 0
�ڶ��ο���         10 20  => 10
                   5+  -5
                  20 10 => -10
                �����ٶȲ�仯�ϴ���ô~
*/
void v_speed_set2pwm(sint16 leftSpeed,sint16 rightSpeed,uint8 speedMode)
{//1 => ��//10 => ��//3 => ˫
    float speed_P = (float)m_Control.Motor_ControlPara_P_Number;//124.f;//������6.5f//122
    float speed_I = (float)m_Control.Motor_ControlPara_I_Number;//5.f;
    float speed_D = (float)m_Control.Motor_ControlPara_D_Number;//30.f;//60
            //1.3fʱ�̣�ֱ�����ȶ������ǹ���ȴ����һ������
            
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
            
            float LeftRightRatio = //��תΪ��
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
      
    
    sint16 add_for_Int_Left = m_self_Motor_Para.L_e;//��������
    sint16 add_for_Int_Right = m_self_Motor_Para.R_e;
    
    float L_I_endless = (float)m_self_Motor_Para.L_counter * speed_I;//��������
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
    
    L_I_endless = (float)m_self_Motor_Para.L_counter * speed_I;//��������
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


void v_speed_Test(sint16 speed)//�������
{
    m_Control.LeftGiveSpd = speed;
    v_speed_set2pwm(speed,speed,10);
}


void v_speed_Give(sint16 speed)
{//�ٶȸ�������
     //= speed * 2 - 10;//������������
  
    float LeftRightRatio = //
         (n_GetServoGraduated(m_Control.ServoAngle) -number_ServoGraduated/2)
        /(float)(number_ServoGraduated/2);//-1.f~1.f//<0.f��ת .0.f��ת
    
    
    m_Control.LimitedSlipDiffSpd = (speed*2 - 10);//*( __F_ABS((float)((float)m_Control.LeftRightRatio - 200.f)/200.f));//*((float)(__F_ABS((float)m_Control.LeftRightRatio - 200.f))/200.f) + 20.f;
                                                //200   0
                                                //speed * 2 - 2      
                                                //speed * 2 - 10
    if(m_Control.LimitedSlipDiffSpd > speed*2){m_Control.LimitedSlipDiffSpd = speed*2;}
    if(m_Control.LimitedSlipDiffSpd < 10){m_Control.LimitedSlipDiffSpd = 10;}
    //����Ϊ��е����
    sint16 speed_average = (m_Control.LeftMotorSpeed + m_Control.RightMotorSpeed) / 2;//ʵ���ٶȵľ�ֵ
    sint16 error_beWith = speed - speed_average;//�����ٶ���ʵ���ٶȾ�ֵ��ƫ��
    
    sint16 Last_LeftGiveSpd = m_Control.LeftGiveSpd;
    sint16 Last_RightGiveSpd = m_Control.RightGiveSpd;//��¼��ֵ
    
    if(m_Control.LeftMotorSpeed < m_Control.RightMotorSpeed)//������΢�ĵ�ͨ�˲�
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
    {//���Ʒ���
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
    //���ӵ�ͨ�˲�
    
    v_speed_set2pwm(m_Control.LeftGiveSpd,m_Control.RightGiveSpd,3);
}


void v_speed_Give_UsedsmallChange(sint16 speed)
{
    m_Control.LimitedSlipDiffSpd = speed * 2 - 10;
  
    float LeftRightRatio = //
         (n_GetServoGraduated(m_Control.ServoAngle) -number_ServoGraduated/2)
        /(float)(number_ServoGraduated/2);//-1.f~1.f//<0.f��ת .0.f��ת
    
    m_Control.LeftRightRatio = n_GetServoGraduated(m_Control.ServoAngle);//����ת����        
    //����Ϊ��е����
    sint16 speed_average = (m_Control.LeftMotorSpeed + m_Control.RightMotorSpeed) / 2;//ʵ���ٶȵľ�ֵ
    sint16 error_beWith = speed - speed_average;//�����ٶ���ʵ���ٶȾ�ֵ��ƫ��
    
    float smallChange = //�������ٶ����=>����Ϊ������//1-�����ٶȱ����ִ�
    (float)(m_Control.LeftMotorSpeed - m_Control.RightMotorSpeed)/(float)(m_Control.LeftMotorSpeed + m_Control.RightMotorSpeed);
    if(smallChange > 1.f){smallChange = 1.f;}
    if(smallChange <-1.f){smallChange =-1.f;}
    smallChange = (smallChange + 1.f)/2.f;//0.f-2.f => 0.5f - 1.f������������ֿ� / ����������ֿ�
    m_Control.LeftGiveSpd  = m_Control.LeftMotorSpeed + smallChange*error_beWith*2.f;
    m_Control.RightGiveSpd = m_Control.RightMotorSpeed + (1.f-smallChange)*error_beWith*2.f;
    
    if((__ABS(m_Control.LeftGiveSpd - m_Control.RightGiveSpd) >= m_Control.LimitedSlipDiffSpd)||((m_Control.LeftGiveSpd < 5)||(m_Control.RightGiveSpd < 5)))
    {//���Ʒ���
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
    float ratio = (float)(m_Control.LeftMotorSpeed - m_Control.RightMotorSpeed)//��Ⱥ�
                 /(float)(2 * speed);//=>��ĸ�ӽ���2*speed
    //����ת�ٲ����ת�٣���ת�ٷ�������ת�ٿ�������� => ʵ���Ͽ��Բ����޻�������
//    float ratio_mark = (__F_ABS(ratio) / ratio);
//    ratio = ratio_mark * (2*__F_ABS(ratio) - ratio*ratio);//x^3
    //ratio = ratio * ratio; => �����Ϊ0�����
    //�����ܱ���������ת��ƫ�� => �����ٶȵĲ�ֵ
    //-1����ת�ٸ�����������//1����ת�ٸ�����������
    ratio = (ratio + 1.f)/2.f;//��һ��//0 ~ 1
    if(ratio > 1.f){ratio = 1.f;}
    if(ratio < 0.f){ratio = 0.f;}
    //����������ϸ��Ĳ���
    
    sint16 Last_LeftGiveSpd = m_Control.LeftGiveSpd;
    sint16 Last_RightGiveSpd = m_Control.RightGiveSpd;//��¼��ֵ
    
    m_Control.LeftGiveSpd = (sint16)((float)(m_Control.LeftMotorSpeed) + ((float)error_beWith *(1.f - ratio)*2.f));
    m_Control.RightGiveSpd = (sint16)((float)(m_Control.RightMotorSpeed) + ((float)error_beWith * ratio * 2.f));
    */