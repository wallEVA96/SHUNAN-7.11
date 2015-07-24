#include "arm_cm4.h"
#include "MK60F15.h"
#include "ShunAn_Lib.h"
#include "start_ShunAn.h"

#include "Poet_Buzzer.h"
#include "Poet_InputInterface.h"

void v_Buzzer_Init()//蜂鸣器初始化
{
    SIM_SCGC6 |= SIM_SCGC6_FTM0_MASK;//使能FTM3时钟
    SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;//使能PORTE时钟 
    PORTA_PCR7 = 0x00000100u;//引脚复用选择ALT1()
    PTA_BASE_PTR->PDDR |= (1 << 7);
    PTA_BASE_PTR->PDOR |= (1 << 7);
    /*
    FTM0_C4SC &= ~FTM_CnSC_ELSA_MASK;                  // MSnB:MSnA = 1x       边沿对齐PWM
    FTM0_C4SC = FTM_CnSC_MSB_MASK | FTM_CnSC_ELSB_MASK;// ELSnB:ELSnA = 10     先高后低
                                                         // ELSnB:ELSnA = 11     先低后高
    // 设定为 100Hz
    FTM0_SC = 0 | FTM_SC_PS(5) | FTM_SC_CLKS(1);                //上升沿计数模式、分频系数为2^3(300Hz)2^5(75Hz)、时钟选择为bus 时钟、禁止中断
    // 75 / 16 = 4687500 Hz
    FTM0_MOD = 46874;//模数, EPWM的周期为 ：MOD - CNTIN + 0x0001 // 46875
    FTM0_CNTIN = 0;//脉冲宽度：(CnV - CNTIN)
    FTM0_C4V = 46874;//脉冲宽度：(CnV - CNTIN)
    FTM0_CNT = 0;//计数器。只有低16位可用（写任何值到此寄存器，都会加载 CNTIN 的值）
    */
}


void v_Buzzer_OutPut(uint8 dir)//蜂鸣器输出
{
    if(1 == dir)
    {
        PTA_BASE_PTR->PDOR &=~(1 << 7);
        //FTM0_C4V = 0;
    }
    else
    {
        PTA_BASE_PTR->PDOR |= (1 << 7);
        //FTM0_C4V = 46874;
    }
}


void v_BuzzerBeepSet(unsigned long int lastingTime)
{
    if(1 == switch_2)
    {
        m_system.BuzzerBeep_time = m_system.timer;//将当前时间赋值给蜂鸣器时间
        m_system.BuzzerBeep_LastingTime = lastingTime;
    }
}


PUBLIC void v_LightingChaser_Init()
{
    //E8
    SIM_SCGC5 |= SIM_SCGC5_PORTE_MASK;//使能PORTA、B时钟
    PORTE_PCR7 = PORT_PCR_MUX(1) | PORT_PCR_IRQC(11);//引脚复用选择普通IO()
    
    //GPIOE_PDDR &= ~(1<<7);
    GPIOE_PDDR &= ~(1<<7);//引脚选择输入方向()
    //GPIOE_PDDR &= ~(1<<9);
}

PUBLIC uint8 b_GetLightChaserStatus()
{
    if(0 != (PORTE_PCR7 & PORT_PCR_ISF_MASK))//检测到脉冲出现
    {
        PORTE_PCR7 |= PORT_PCR_ISF_MASK;//清除
        return 1;
    }
    return 0;
}