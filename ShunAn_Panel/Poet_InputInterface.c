#include "MK60F15.h"
#include "ShunAn_Lib.h"
#include "start_ShunAn.h"
#include "BlessedAlien.h"

#include "Poet_InputInterface.h"

s_Button_TimeInformation m_Button_Timer = {0};//������ʱ��ȫ�ֳ�ʼ��


void v_ExInterface_Init ( void )
{
    // ��ʼ�����뿪�� / ����
    SIM_SCGC5 |= (SIM_SCGC5_PORTA_MASK|SIM_SCGC5_PORTE_MASK);//ʹ��PORTA��Bʱ��
    
    PORTE_PCR24 |= 0x00000100u;//���Ÿ���ѡ����ͨIO()
    PORTE_PCR25 |= 0x00000100u;//���Ÿ���ѡ����ͨIO()
    PORTE_PCR26 |= 0x00000100u;//���Ÿ���ѡ����ͨIO()
    PORTE_PCR27 |= 0x00000100u;//���Ÿ���ѡ����ͨIO()
    PORTE_PCR28 |= 0x00000100u;//���Ÿ���ѡ����ͨIO()
    
    PORTA_PCR5  |= 0x00000100u;//���Ÿ���ѡ����ͨIO()
    
    PORTA_PCR24 |= 0x00000100u;//���Ÿ���ѡ����ͨIO()
    PORTA_PCR25 |= 0x00000100u;//���Ÿ���ѡ����ͨIO()
    PORTA_PCR26 |= 0x00000100u;//���Ÿ���ѡ����ͨIO()
    PORTA_PCR27 |= 0x00000100u;//���Ÿ���ѡ����ͨIO()
    PORTA_PCR12 |= 0x00000100u;//���Ÿ���ѡ����ͨIO()
    
    GPIOE_PDDR &= ~(1<<24);//����ѡ�����뷽��()
    GPIOE_PDDR &= ~(1<<25);//����ѡ�����뷽��()
    GPIOE_PDDR &= ~(1<<26);//����ѡ�����뷽��()
    GPIOE_PDDR &= ~(1<<27);//����ѡ�����뷽��()
    GPIOE_PDDR &= ~(1<<28);//����ѡ�����뷽��()
    
    GPIOA_PDDR &= ~(1<<5);//����ѡ�����뷽��()
    
    GPIOA_PDDR &= ~(1<<24);//����ѡ�����뷽��()
    GPIOA_PDDR &= ~(1<<25);//����ѡ�����뷽��()
    GPIOA_PDDR &= ~(1<<26);//����ѡ�����뷽��()
    GPIOA_PDDR &= ~(1<<27);//����ѡ�����뷽��()
    GPIOA_PDDR &= ~(1<<12);//����ѡ�����뷽��()
}


unsigned char u8_ExInterface0_get(void){return (GPIOA_PDIR >> 24) & 0x01;}
unsigned char u8_ExInterface1_get(void){return (GPIOA_PDIR >> 25) & 0x01;}
unsigned char u8_ExInterface2_get(void){return (GPIOA_PDIR >> 26) & 0x01;}
unsigned char u8_ExInterface3_get(void){return (GPIOA_PDIR >> 27) & 0x01;}

unsigned char u8_ExInterface4_get(void){return (GPIOA_PDIR >> 12) & 0x01;}
unsigned char u8_ExInterface5_get(void){return (GPIOA_PDIR >> 5) & 0x01;}
unsigned char u8_ExInterface6_get(void){return (GPIOE_PDIR >> 24) & 0x01;}
unsigned char u8_ExInterface7_get(void){return (GPIOE_PDIR >> 25) & 0x01;}

unsigned char u8_ExInterface8_get(void){return (GPIOE_PDIR >> 26) & 0x01;}
unsigned char u8_ExInterface9_get(void){return (GPIOE_PDIR >> 27) & 0x01;}
unsigned char u8_ExInterface10_get(void){return (GPIOE_PDIR >> 28) & 0x01;}



/*
//#define DE_BUTTON_TICK  13
Buttons g_Buttons;
ExInterfaces g_ExInterfaces;
*/
/*
uint8 u8_Button_set(Message * _Message , Buttons * _Buttons , ExInterfaces * _ExInterfaces)
{
    uint8 DownEventStart = 0;
    uint8 DownButton = 0;
    uint8 DownSwitch = 0;
    if( ( 0 == Button1 ) && ( _Buttons->BottonTotaltime - _Buttons->Button1time > DE_BUTTON_TICK ) )
    {
        // �¼�����
        DownButton |= 0x01;
        DownEventStart = 1;
        _Buttons->Button1time = _Buttons->BottonTotaltime;
    }
    if( ( 0 == Button2 ) && ( _Buttons->BottonTotaltime - _Buttons->Button2time > DE_BUTTON_TICK ) )
    {
        // �¼�����
        DownButton |= 0x02;
        DownEventStart = 1;
        _Buttons->Button2time = _Buttons->BottonTotaltime;
    }
    if( ( 0 == Button3 ) && ( _Buttons->BottonTotaltime - _Buttons->Button3time > DE_BUTTON_TICK ) )
    {
        // �¼�����
        DownButton |= 0x04;
        DownEventStart = 1;
        _Buttons->Button3time = _Buttons->BottonTotaltime;
    }
    if( ( 0 == Button4 ) && ( _Buttons->BottonTotaltime - _Buttons->Button4time > DE_BUTTON_TICK ) )
    {
        // �¼�����
        DownButton |= 0x08;
        DownEventStart = 1;
        _Buttons->Button4time = _Buttons->BottonTotaltime;
    }
    if(1 == DownEventStart)
    {
        DownSwitch |= Switch1 << 0;
        DownSwitch |= Switch2 << 1;
        DownSwitch |= Switch3 << 2;
        DownSwitch |= Switch4 << 3;
        DownSwitch |= Switch5 << 4;
        DownSwitch |= Switch6 << 5;
        DownSwitch |= Switch7 << 6;
        DownSwitch |= Switch8 << 7;
        _ExInterfaces->ButtonsOn = DownButton;
        _ExInterfaces->SwitchsOn = DownSwitch;
        _Message->msgGaia = (void*)_ExInterfaces;
        _Message->time = _Buttons->BottonTotaltime;
        return 0;
    }
    return 1;
}
*/

/*
#define Accel_SPI_PTR           SPI1_BASE_PTR
uint8 b_Accel_DSPI_Init()
{
    SIM_SCGC6 |= SIM_SCGC6_DSPI1_MASK; //
    SIM_SCGC5 |= SIM_SCGC5_PORTE_MASK;
    PORTE_BASE_PTR->PCR[0] = 0x00000200u; // 
    PORTE_BASE_PTR->PCR[1] = 0x00000200u; // 
    PORTE_BASE_PTR->PCR[2] = 0x00000200u; // 
    PORTE_BASE_PTR->PCR[3] = 0x00000200u; // 
    PORTE_BASE_PTR->PCR[4] = 0x00000200u; //
    Accel_SPI_PTR->MCR |= SPI_MCR_HALT_MASK; // ֹͣ����
    Accel_SPI_PTR->SR  = SPI_SR_EOQF_MASK | SPI_SR_TFUF_MASK | SPI_SR_TFFF_MASK
                            | SPI_SR_RFOF_MASK | SPI_SR_RFDF_MASK; // ������� 
    Accel_SPI_PTR->MCR = SPI_MCR_MSTR_MASK  | SPI_MCR_CLR_RXF_MASK | SPI_MCR_CLR_TXF_MASK | SPI_MCR_PCSIS(1) | SPI_MCR_PCSSE_SHIFT | SPI_MCR_CONT_SCKE_MASK
                        | SPI_MCR_DIS_TXF_MASK | SPI_MCR_DIS_RXF_MASK | SPI_MCR_SMPL_PT(1);//SPI_MCR_PCSIS(1);
                         //����//�������//�������//Ƭѡλ��
    
    Accel_SPI_PTR->CTAR[0] = SPI_CTAR_PBR(3) | SPI_CTAR_BR(5) | SPI_CTAR_CPOL_MASK | SPI_CTAR_CPHA_MASK// ��Ƶ
                        | SPI_CTAR_FMSZ(7) ; // λ��
    Accel_SPI_PTR->MCR &=~SPI_MCR_HALT_MASK; // ʹ�ܴ���
    
    uint8 returnNum = 0;
    if( 'F' == b_Accel_TxByte(0x80 | 0x0F,0)){return 'F';};
    if( 'F' == b_Accel_RxByte(&returnNum)){return 'F';};
    if(0xD7 != returnNum){return 'F';} // Ŀ��ȷ��
    return 'T';
}

uint8 b_Accel_RxByte(uint8 * returnNum)
{
    uint8 time = 255;
    while( !((Accel_SPI_PTR->SR) & SPI_SR_RFDF_MASK) )
    {
        if(!(time--)){return 'F';}  
    }
    *returnNum = (uint8)Accel_SPI_PTR->POPR;
    Accel_SPI_PTR->SR |= SPI_SR_RFDF_MASK;
    return 'T';
}

uint8 b_Accel_TxByte(uint8 returnNum,uint8 coun)
{
    uint8 time = 255;
    do
    {
        Accel_SPI_PTR->SR  |= SPI_SR_EOQF_MASK | SPI_SR_TFUF_MASK | SPI_SR_TFFF_MASK
                            | SPI_SR_RFOF_MASK | SPI_SR_RFDF_MASK;
        Accel_SPI_PTR->MCR |= SPI_MCR_CLR_TXF_MASK | SPI_MCR_CLR_RXF_MASK;
        if(!(time--)){return 'F';} 
    } while( (Accel_SPI_PTR->SR) & SPI_SR_RFDF_MASK );
    // ��������
    Accel_SPI_PTR->PUSHR = ( 0
                                 | SPI_PUSHR_CTAS(0)                 //ѡ��CTAR0�Ĵ���
                                 | SPI_PUSHR_PCS(1)
                                 | (coun << SPI_PUSHR_EOQ_SHIFT)                //1Ϊ ����SPI��������
                                 | SPI_PUSHR_TXDATA( returnNum )
                                 );
    //time = 255;
    //while(  (Accel_SPI_PTR->SR & SPI_SR_EOQF_MASK ) == 0 )       //�ȴ��������
    //{
    //    if(!(time--)){return 'F';}
    //}
    return 'T';
}
*/

//#undef DE_BUTTON_TICK 

/*

            if(now_width * 3 <= m_ImageAbstract.width[y_ctr])//�˴μ��϶�Ϊ���ʵ�
            {//���ˣ�����Ӧ��ѡ��һ���ܺõķ�ʽȥ������Ӧ�ĺ�ɫ����
                //�����Ƿ�Ӧ�ö��ѭ������˵�Ҹ�������ķ���
                //�������գ�����Ӧ�ü������<=��б������ϰ�
                //�������գ�����Ӧ�ø���գ�=>�Ƿ���ǿ�ҵĹ��䣿<=Ш��·��
                //�򵥵ķ���=>������ӦѰ��=>��ʵ���۵Ĺ���=>���ݵ�ǰ��Ƚ���ƥ��
                do//���ж����ѭ��
                {
                    uint8 left_pluto_Pos = 255;
                    for (sint16 LINE_CTR = number_Trk.n_left_end;//�˲�ΪѰ������
                        LINE_CTR - constn_xFindJumpLine_Width >= constn_xFindJumpLine_Width;//���Ʒ���Ϊ����
                        LINE_CTR--)
                    {
                        sint16 n_jumpVar = m_ImageBeholder_Data[y_ctr][LINE_CTR]//��ȡ���ʵ�����ֵ
                                         - m_ImageBeholder_Data[y_ctr][LINE_CTR - constn_xFindJumpLine_Width];
                        sint16 absn_jumpVar = __ABS(n_jumpVar);//��ȡ����ֵ
                        if ((absn_jumpVar > perLine_JumpNumVaild) && (absn_jumpVar > perLine_JumpNumNonVaild)
                        && (n_jumpVar > 0)){left_pluto_Pos = LINE_CTR;break;}//=>Ѱ�ҵ���һ������
                    }//������Ѱ���
                    uint8 right_pluto_Pos = 255;
                    for (sint16 LINE_CTR = number_Trk.n_right_end;//�˲�ΪѰ������
                        LINE_CTR + constn_xFindJumpLine_Width < constNum_X_MaxCounter - constn_xFindJumpLine_Width;//���Ʒ���Ϊ����
                        LINE_CTR++)//��������
                    {
                        sint16 n_jumpVar = m_ImageBeholder_Data[y_ctr][LINE_CTR]//��ȡ���ʵ�����ֵ
                                         - m_ImageBeholder_Data[y_ctr][LINE_CTR + constn_xFindJumpLine_Width];
                        sint16 absn_jumpVar = __ABS(n_jumpVar);//��ȡ����ֵ
                        if ((absn_jumpVar > perLine_JumpNumVaild) && (absn_jumpVar > perLine_JumpNumNonVaild)
                         && (n_jumpVar > 0)){right_pluto_Pos = LINE_CTR;break;}//������ѭ��
                    }//������Ѱ���
                    
                    //�������ֿ��=>������Ҫ�ٴο���
                    //������Һ���
                    //�����Һ���
                    //������Ҽ���
                    //�����Ҽ��� => һ�㲻����
                    
                    uint8 width_Left_Pluto = 0;
                    uint8 width_right_Pluto = 0;
                    
                    uint8 temp_cut_var[3] = {0,0,0};//���ֲ�ֵ
                    temp_cut_var[0] = __ABS(now_width - m_ImageAbstract.width[y_ctr]);
                    
                    if(255 != left_pluto_Pos)
                    {width_Left_Pluto = number_Trk.n_right_end - left_pluto_Pos;
                    temp_cut_var[1] = __ABS(width_Left_Pluto - m_ImageAbstract.width[y_ctr]);}
                    else{temp_cut_var[1] = 255;}
                    
                    if(255 != right_pluto_Pos)
                    {width_right_Pluto = right_pluto_Pos - number_Trk.n_left_end;
                    temp_cut_var[2] = __ABS(width_right_Pluto - m_ImageAbstract.width[y_ctr]);}
                    else{temp_cut_var[2] = 255;}
                    //����Ϊ�������
                    uint8 min = 255;uint8 mark = 0;
                    for(uint8 loop = 0;loop < 3;loop++)
                    {
                        if(min > temp_cut_var[loop]){min = temp_cut_var[loop];mark = loop;}
                    }
                    if(255 != min)
                    {
                        if(1 == mark){number_Trk.n_left_end = left_pluto_Pos;}
                        if(2 == mark){number_Trk.n_right_end = width_right_Pluto;}
                    }
                }while(0);//���ˣ����⴦�����
                
            }
*/


    /*
    if(__ABS(process_find_timer - lostDouble_AllCounter) <= 1)
    {
        m_Control.need_Hold = 1;
    }
    */
    /*
    if(all_height_Y_last_cut_first < 20)//С�ڴ�ʱ�������ж�
    {
        uint8 last = (all_height_Y_last_cut_first > 30)?30:all_height_Y_last_cut_first;
        uint8 left_counter = 0;
        uint8 right_counter = 0;
        for(uint8 loop = m_ImageAbstract.Start_Y_Position;//����ѭ��
                  loop < last + m_ImageAbstract.Start_Y_Position;
                  loop ++)
        {
            if(255 == m_ImageAbstract.Left[loop]){left_counter++;}
            if(255 == m_ImageAbstract.Right[loop]){right_counter++;}
        }
        if(((left_counter > all_height_Y_last_cut_first/2)
          &&(right_counter > all_height_Y_last_cut_first/2))
         ||(all_height_Y_last_cut_first < 10))
        {
            m_Control.need_Hold = 1;
        }
        else
        {
            
            if(left_counter > all_height_Y_last_cut_first/2)
            {
                m_Control.need_TurnLeft = 1;
            }
            if(right_counter > all_height_Y_last_cut_first/2)
            {
                m_Control.need_TurnRight = 1;
            }
            
        }
    }
    */
    /*
    do//����ȫ����������
    {
        sint16 all_height_Y_last_cut_first = m_ImageAbstract.Last_Y_Position - m_ImageAbstract.Start_Y_Position;
        if(all_height_Y_last_cut_first < 25)//��30ҪС//Magic Number
        {
            float cutVar = 0; //30 - all_height_Y_last_cut_first;
            for(uint8 loop = 0;loop < all_height_Y_last_cut_first;loop++)
            {
                uint8 Mark = m_ImageAbstract.Start_Y_Position + loop;
                sint16 Central_Pos = 0;
                do//��������
                {
                    
                }while(0);
                
                if(255 == m_ImageAbstract.Left[Mark])
                {
                    if(255 == m_ImageAbstract.Right[Mark])
                    {
                        if(Mark > m_ImageAbstract.Start_Y_Position)
                        {Central_Pos = m_ImageAbstract.Central[Mark - 1];}
                        else
                        {Central_Pos = m_ImageAbstract.LastFrame_CentralPos;}
                    }
                    else//(255 != m_ImageAbstract.Right[Mark])
                    {
                        Central_Pos = (sint16)
                      ((m_ImageAbstract.Right[Mark] + constn_xFindJumpLine_Width)/2 - 3 * cutVar);
                    }
                }
                else//255 != m_ImageAbstract.Left[Mark]
                {
                    if(255 == m_ImageAbstract.Right[Mark])
                    {
                        Central_Pos = (sint16)
                      ((m_ImageAbstract.Left[Mark] + constNum_X_MaxCounter - constn_xFindJumpLine_Width)/2 + 2 * cutVar);
                    }
                    else//(255 != m_ImageAbstract.Right[Mark])
                    {//���ù�
                    }
                }//
                cutVar += 30.f / all_height_Y_last_cut_first;
                if(Central_Pos < constn_xFindJumpLine_Width){Central_Pos = constn_xFindJumpLine_Width;}
                if(Central_Pos > constNum_X_MaxCounter - constn_xFindJumpLine_Width)
                {Central_Pos = constNum_X_MaxCounter - constn_xFindJumpLine_Width;}
                m_ImageAbstract.Central[Mark] = Central_Pos;
                
                if(m_ImageAbstract.Central[Mark] > constNum_X_MaxCounter - constn_xFindJumpLine_Width * 2)
                {m_ImageAbstract.Central[Mark] = constNum_X_MaxCounter - constn_xFindJumpLine_Width * 2;}//�޷�������Ϣ
                if(m_ImageAbstract.Central[Mark] < constn_xFindJumpLine_Width * 2)
                {m_ImageAbstract.Central[Mark] = constn_xFindJumpLine_Width * 2;}
            }
        }
    }while(0);
    */