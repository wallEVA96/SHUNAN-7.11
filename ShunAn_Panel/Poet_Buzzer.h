#ifndef __POET_BUZZER_
#define __POET_BUZZER_


void v_Buzzer_Init();//��������ʼ��
void v_Buzzer_OutPut(unsigned char dir);//���������

void v_BuzzerBeepSet(unsigned long int lastingTime);//����������


void v_LightingChaser_Init();
uint8 b_GetLightChaserStatus();//��ȡ

#endif