#include "arm_cm4.h"
#include "MK60F15.h"
#include "ShunAn_Lib.h"
#include "start_ShunAn.h"

#include "Poet_Buzzer.h"
#include "Poet_InputInterface.h"

void v_Buzzer_Init()//��������ʼ��
{
    SIM_SCGC6 |= SIM_SCGC6_FTM0_MASK;//ʹ��FTM3ʱ��
    SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;//ʹ��PORTEʱ�� 
    PORTA_PCR7 = 0x00000100u;//���Ÿ���ѡ��ALT1()
    PTA_BASE_PTR->PDDR |= (1 << 7);
    PTA_BASE_PTR->PDOR |= (1 << 7);
    /*
    FTM0_C4SC &= ~FTM_CnSC_ELSA_MASK;                  // MSnB:MSnA = 1x       ���ض���PWM
    FTM0_C4SC = FTM_CnSC_MSB_MASK | FTM_CnSC_ELSB_MASK;// ELSnB:ELSnA = 10     �ȸߺ��
                                                         // ELSnB:ELSnA = 11     �ȵͺ��
    // �趨Ϊ 100Hz
    FTM0_SC = 0 | FTM_SC_PS(5) | FTM_SC_CLKS(1);                //�����ؼ���ģʽ����Ƶϵ��Ϊ2^3(300Hz)2^5(75Hz)��ʱ��ѡ��Ϊbus ʱ�ӡ���ֹ�ж�
    // 75 / 16 = 4687500 Hz
    FTM0_MOD = 46874;//ģ��, EPWM������Ϊ ��MOD - CNTIN + 0x0001 // 46875
    FTM0_CNTIN = 0;//�����ȣ�(CnV - CNTIN)
    FTM0_C4V = 46874;//�����ȣ�(CnV - CNTIN)
    FTM0_CNT = 0;//��������ֻ�е�16λ���ã�д�κ�ֵ���˼Ĵ������������ CNTIN ��ֵ��
    */
}


void v_Buzzer_OutPut(uint8 dir)//���������
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
        m_system.BuzzerBeep_time = m_system.timer;//����ǰʱ�丳ֵ��������ʱ��
        m_system.BuzzerBeep_LastingTime = lastingTime;
    }
}


PUBLIC void v_LightingChaser_Init()
{
    //E8
    SIM_SCGC5 |= SIM_SCGC5_PORTE_MASK;//ʹ��PORTA��Bʱ��
    PORTE_PCR7 = PORT_PCR_MUX(1) | PORT_PCR_IRQC(11);//���Ÿ���ѡ����ͨIO()
    
    //GPIOE_PDDR &= ~(1<<7);
    GPIOE_PDDR &= ~(1<<7);//����ѡ�����뷽��()
    //GPIOE_PDDR &= ~(1<<9);
}

PUBLIC uint8 b_GetLightChaserStatus()
{
    if(0 != (PORTE_PCR7 & PORT_PCR_ISF_MASK))//��⵽�������
    {
        PORTE_PCR7 |= PORT_PCR_ISF_MASK;//���
        return 1;
    }
    return 0;
}