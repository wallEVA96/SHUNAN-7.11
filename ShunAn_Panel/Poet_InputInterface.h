//#include "ControlPads.h"
#ifndef __POET_INPUTINTERFACE
#define __POET_INPUTINTERFACE

void v_ExInterface_Init ( void );//初始化

unsigned char u8_ExInterface0_get(void);//{return (GPIOA_PDIR >> 24) & 0x01;}
unsigned char u8_ExInterface1_get(void);//{return (GPIOA_PDIR >> 25) & 0x01;}
unsigned char u8_ExInterface2_get(void);//{return (GPIOA_PDIR >> 26) & 0x01;}
unsigned char u8_ExInterface3_get(void);//{return (GPIOA_PDIR >> 27) & 0x01;}

unsigned char u8_ExInterface4_get(void);//{return (GPIOA_PDIR >> 12) & 0x01;}
unsigned char u8_ExInterface5_get(void);//{return (GPIOA_PDIR >> 5) & 0x01;}

unsigned char u8_ExInterface6_get(void);//{return (GPIOE_PDIR >> 24) & 0x01;}
unsigned char u8_ExInterface7_get(void);//{return (GPIOE_PDIR >> 25) & 0x01;}

unsigned char u8_ExInterface8_get(void);//{return (GPIOE_PDIR >> 26) & 0x01;}
unsigned char u8_ExInterface9_get(void);//{return (GPIOE_PDIR >> 27) & 0x01;}
unsigned char u8_ExInterface10_get(void);//{return (GPIOE_PDIR >> 28) & 0x01;}


#define button_S1               (u8_ExInterface4_get())
#define button_S2               (u8_ExInterface5_get())
#define button_S3               (u8_ExInterface10_get())
#define button_S5               (u8_ExInterface0_get())
#define button_S4               (u8_ExInterface1_get())
#define button_S6               (u8_ExInterface3_get())
#define button_S8               (u8_ExInterface2_get())

#define switch_4                (u8_ExInterface9_get())//蓝色
#define switch_3                (u8_ExInterface8_get())//舵机//u8_ExInterface8_get
#define switch_2                (u8_ExInterface7_get())//蜂鸣器

#define switch_1                (u8_ExInterface6_get())//展示路径 Y

//6789
typedef
struct
{
//    unsigned long int TickTimeCounter;
    unsigned long int BottonTotaltime; //
    unsigned long int ButtonS1_time; //
    unsigned long int ButtonS2_time; //
    unsigned long int ButtonS3_time; //
    unsigned long int ButtonS4_time; //
    unsigned long int ButtonS5_time; //
    unsigned long int ButtonS6_time; //
    unsigned long int ButtonS8_time; //
}
s_Button_TimeInformation;

extern s_Button_TimeInformation m_Button_Timer;//按键计时器

#endif