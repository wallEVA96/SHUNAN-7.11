#ifndef __POET_BUZZER_
#define __POET_BUZZER_


void v_Buzzer_Init();//·äÃùÆ÷³õÊ¼»¯
void v_Buzzer_OutPut(unsigned char dir);//·äÃùÆ÷Êä³ö

void v_BuzzerBeepSet(unsigned long int lastingTime);//·äÃùÆ÷×àÏì


void v_LightingChaser_Init();
uint8 b_GetLightChaserStatus();//»ñÈ¡

#endif