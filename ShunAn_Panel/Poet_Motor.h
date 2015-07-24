#ifndef __POET_MOTOR_
#define __POET_MOTOR_

// ת�ٲ��� 700Hz
// ��������
#define MOTOR_def_Left_I_AD_com                 ADC1_BASE_PTR
#define MOTOR_def_Right_I_AD_com                ADC0_BASE_PTR
#define MOTOR_def_Left_speed_QD_com             FTM1_BASE_PTR
#define MOTOR_def_Right_speed_QD_com            FTM2_BASE_PTR

void v_motor_Init();
uint8 b_GetMotor_electric(ADC_MemMapPtr ADCx_PTR ,uint8 ,uint16 * result);
void v_SetCurrentStart();
uint8 b_GetCurrent(uint16 * left,uint16 * right);

void v_SetCurrentStart();//���õ�����ʼ����

sint16 n_GetMotor_speed(FTM_MemMapPtr FTMx_PTR);

typedef
struct
{
    sint32 L_e_Last;
    sint32 R_e_Last;
    sint32 L_e;
    sint32 R_e;
    sint32 L_counter;
    sint32 R_counter;
}
self_Motor_Para;
extern self_Motor_Para m_self_Motor_Para;//˽���ڲ��ļ�
void v_leftMotor_pwmOut(uint16 left_pwm,uint16 left_dir);
void v_rightMotor_pwmOut(uint16 left_pwm_duty,uint16 left_dir);
//void v_DAC_Init ( DAC_MemMapPtr dacN );
//void v_DAC_SetVar( DAC_MemMapPtr dacN , uint16 DACvar );
void v_speed_set2pwm(sint16 leftSpeed,sint16 rightSpeed,uint8 speedMode);
void v_ele_set2pwm(sint16 leftPWM,sint16 rightPWM);

void v_speed_Test(sint16 speed);
void v_speed_Give(sint16 speed);//�����ٶ�
void v_speed_Give_UsedsmallChange(sint16 speed);
#endif