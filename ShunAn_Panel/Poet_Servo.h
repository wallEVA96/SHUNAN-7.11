#ifndef __POET_SERVO
#define __POET_SERVO

#define Servo_GetVar_ADC_PTR    ADC1_BASE_PTR



void v_Servo_Init(void);
void v_Servo_Out(signed short int duty);
uint16 n_GetServoAngle(void);
//void OnOutput_ServoDeg(sint16 ServoDeg);
uint16 n_GetServoGraduated(uint16);


void v_steer_set2pwm();
#endif