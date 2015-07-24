/**
/. -----------------------//k60�ײ��//-------------------------

/. ����Ӳ��ƽ̨��K60
 . ��Ȩ���У����� 
 . �����ߣ�����
 . �ļ�����alienUART.c
 . ��;��
 . ����޸�����: 20140117
*/
#include "MK60F15.h"
#include "ShunAn_Lib.h"
#include "start_ShunAn.h"
#include "BlessedAlien.h"

#include "Pendulum_EndlessFormsMostBeautiful.h"

#include "Poet_ImageBeholder.h"
#include "Poet_Bluetooth.h"
#include <stdio.h>
#define Bluetooth_BasePtr             UART3_BASE_PTR
//============================================================================//
//E5
//E4
//GND
//VCC
s_need_tx m_need_tx;
void v_UartInit(uint32 BaudRate)
{   
    // ������
    uint32 tempReg  = 0;
    uint32 BdRtBits = 0;
    uint32 BRFAdjst = 0;
    
    // ����ʱ��
    SIM_SCGC4 |= SIM_SCGC4_UART3_MASK;
    SIM_SCGC5 |= SIM_SCGC5_PORTE_MASK ;
    // �������Ų���
    PORTE_PCR4 = PORT_PCR_MUX(3);//���Ÿ���ѡ��UART4_TX
    PORTE_PCR5 = PORT_PCR_MUX(3);//���Ÿ���ѡ��UART4_RX
    
    // �رս��ռ����������ȴ�����ʱ����������
    (Bluetooth_BasePtr)->C2 &= ~( UART_C2_TE_MASK | UART_C2_RE_MASK );
    
    // C1����Ĭ��
    (Bluetooth_BasePtr)->C1  = 0;
    
    // ���ò�����
    // ���� Band Rate Bits
    BdRtBits = (uint16)((bus_clk_khz * 1000)/(BaudRate << 4));
    tempReg = UART_BDH_REG(Bluetooth_BasePtr) & ~(UART_BDH_SBR(0x1F));
    (Bluetooth_BasePtr)->BDH = tempReg |  UART_BDH_SBR(((BdRtBits & 0x1F00) >> 8));
    (Bluetooth_BasePtr)->BDL = (uint8)(BdRtBits & UART_BDL_SBR_MASK);
    
    // ���� Band Rate Find Adjust
    BRFAdjst = ((((bus_clk_khz*1000)<<5)/(BaudRate <<4)) - (BdRtBits <<5));
    tempReg = UART_C4_REG(Bluetooth_BasePtr) & ~(UART_C4_BRFA(0x1F));
    (Bluetooth_BasePtr)->C4 = tempReg |  UART_C4_BRFA(BRFAdjst);
    // �������������
    
    // ������������������ʹ�ܣ��������ɲ�����
    UART_C2_REG(Bluetooth_BasePtr) |= (UART_C2_TE_MASK | UART_C2_RE_MASK );
    //
    (Bluetooth_BasePtr)->C5 = 0x00u;
    return;
}

/*************************************************************************
//��������__v_Uart_TxOne_
//����������
//��;������һ���ַ�
//Ŀǰ������BaudRate
//����չ����������������Ϣ
//ʹ�ò����ʣ�9600
//
*************************************************************************/

void v_UartTxOne(unsigned char sendInfor)
{
    // �ȴ����ͻ������� Transmit Data Register Empty Flag == 1 ʱ�˳�ѭ��
    while(!( (Bluetooth_BasePtr->S1) & UART_S1_TDRE_MASK));
    
    // ��TDREΪ1ʱ��ִ�з�������ָ�
    // ��������
    (Bluetooth_BasePtr)->D = (uint8)sendInfor;
}

/*************************************************************************
//��������__v_Uart_TxOne_
//����������
//��;������һ���ַ�
//Ŀǰ������BaudRate
//����չ����������������Ϣ
//ʹ�ò����ʣ�9600
//
*************************************************************************/
/*
void __v_Uart_TxInt16_(unsigned short int sendUint)
{
    __v_Uart_TxOne_((uint8)((sendUint>>8)&(0x00FFu)));
    //vDelayMuchMs(100);
    __v_Uart_TxOne_((uint8)((sendUint)&(0x00FFu)));
}

void __v_Uart_TxInt32_(unsigned long int sendUint)
{
    __v_Uart_TxInt16_((uint16)((sendUint>>16)&(0x0000FFFFu)));
    //vDelayMuchMs(100);
    __v_Uart_TxInt16_((uint16)((sendUint)&(0x0000FFFFu)));
}
*/
/*!
 *  @brief      �����ڽ����ж�
 *  @param      UARTn_e       ģ��ţ�UART0~UART5��
 *  @since      v5.0
 *  Sample usage:       uart_rx_irq_en(UART4);         //������3�����ж�
 */
void __v_uart_rx_irq_en()
{
    UART_C2_REG(Bluetooth_BasePtr) |= UART_C2_RIE_MASK;                          //ʹ��UART�����ж�
    enable_irq((3 << 1) + 45);                  //ʹ��IRQ�ж�
}

/*!
 *  @brief      �ȴ�����1���ֽ�
 *  @param      UARTn_e       ģ��ţ�UART0~UART5��
 *  @param      ch          ���յ�ַ
 *  @since      v5.0
 *  @note       �����Ҫ��ѯ����״̬������ uart_query ��
                �����Ҫ��ѯ�������ݣ����� uart_querychar
 *  Sample usage:       char ch = uart_getchar (UART4);   //�ȴ�����1���ֽڣ����浽 ch��
 */
uint8 b_uart_getchar (char *ch)
{
    //�ȴ����յ����ݣ�ʹ����FIFO���������ַ��������У�����һ������˼��
    //while( !UART_RCFIFO_REG(UARTN[uratn]) );                                //�ȴ����յ�����������0
    //while( (UART_SFIFO_REG(UARTN[uratn]) & UART_SFIFO_RXEMPT_MASK)) ;     //�ȴ����ջ�����/FIFO �ǿյ�

    //���·����Ƿ�˼�����ٷ������ṩ�ķ���
    uint32 time = 0;
    while (!(UART_S1_REG(Bluetooth_BasePtr) & UART_S1_RDRF_MASK))       //�ȴ���������
    {
        ++time;
        if(time >= 100000)
        {
            return 0;//���ؼ�
        }
    }
    // ��ȡ���յ���8λ����
    *ch =  UART_D_REG(Bluetooth_BasePtr);
    return 1;
    // ��ȡ 9λ���ݣ�Ӧ���ǣ���Ҫ�޸ĺ����ķ������ͣ���
    // *ch =   ((( UARTx_C3_REG(UARTN[uratn]) & UART_C3_R8_MASK ) >> UART_C3_R8_SHIFT ) << 8)   |   UART_D_REG(UARTN[uratn]);  //����9bit

}

/*
void BLagreeT(uint8  DirPWM    , uint8  D_DirPWM,
              
              uint8  Central   , uint8 centralChangeRate,       // ͨ����ʾ
              
              uint8  isAdvance , uint16 Motor_PWM,
              
              uint16  GiveSpeed , uint16  D_GiveSpeed,
              uint16  NowSpeed  )
{
    // ���俪ʼ
    __v_Uart_TxInt16_(0xFEFEu);        // ��ʼ
    
    __v_Uart_TxOne_(DirPWM);
    __v_Uart_TxOne_(D_DirPWM);
    
    __v_Uart_TxOne_(Central);
    __v_Uart_TxOne_(centralChangeRate);
    
    __v_Uart_TxOne_(isAdvance);         // 1 ǰ����2 ���ˣ�3 ֹͣ
    
    
    __v_Uart_TxInt16_(NowSpeed);
    __v_Uart_TxInt16_(GiveSpeed);
    __v_Uart_TxInt16_(D_GiveSpeed);
    
    __v_Uart_TxInt16_(Motor_PWM);
    
    //__v_Uart_TxInt16_(0xFDFDu);        // ֹͣ
}

*/
/*************************************************************************
//��������unsigned char GR_ReceiveStop()
//��;������ͣ����־�����㼴Ϊͣ��
//Ŀǰ������BaudRate
//����չ����������������Ϣ
//
*************************************************************************/
/*
unsigned char GR_ReceiveStop()
{
  uint8 RecChar = 0;
  if(UART_S1_REG(UART4_BASE_PTR) & UART_S1_RDRF_MASK)   //�������ݼĴ�����
  {
    __v_uart_getchar(&RecChar);
    if(0xFFu == RecChar)
    {
      return 1;
    }
    return 0;
  }
  else
  {
    return 0;
  }
}
*/
/*************************************************************************
//��������unsigned char b_()
//��;������ͣ����־�����㼴Ϊͣ��
//Ŀǰ������BaudRate
//����չ����������������Ϣ
//
*************************************************************************/
uint8 b_TxImageInformation(uint8 CMOS_Pixel_org[][Beholder_PixNum_MAX])
{
    v_UartTxOne(0xFF);v_UartTxOne(0xFE);
    v_UartTxOne('I');
    v_UartTxOne('M');
    v_UartTxOne('A');
    v_UartTxOne('G');
    v_UartTxOne('E');
    
    
    for(uint8 loop_LineNum = 0;loop_LineNum < Beholder_LineY_MAX;loop_LineNum++)
    {
        for(uint8 loop_PixNum = 0;loop_PixNum < Beholder_PixNum_MAX;loop_PixNum++)
        {
            uint8 rec_temp = CMOS_Pixel_org[loop_LineNum][loop_PixNum];
            v_UartTxOne(rec_temp);
        }
    }
    
    return 'T';
}

void v_UartTxSInt16(unsigned short int * sendUint)
{
    v_UartTxOne((*sendUint)&0x00FF);
    v_UartTxOne(((*sendUint)>>8)&0x00FF);
}

void v_UartTxStr(char TxArray[],uint32 TxLength)//�����ַ���
{
    for(uint32 CheckLoop = 0;CheckLoop < TxLength;CheckLoop++)
    {
        v_UartTxOne(TxArray[CheckLoop]);
        if('\0' == TxArray[CheckLoop])
        {
            break;
        }
    }
}




void v_UartTxNeedtx()
{
    v_Uart_SendPictures();
    //v_Uart_GetPicture_InRunning(1);
    //v_UartTxInformationAboutPara();//���Ͳο���Ϣ
   /*
    char Tx[21];
    uint16 loop;
    const uint16 TXCOUNTER = 1500 / 2;
    
    sprintf(Tx,"LeftMotorPWM=[");
    v_UartTxStr(Tx,21);
    for(loop = 0;loop < TXCOUNTER;loop++)
    {
        sprintf(Tx,"%d ",m_need_tx.LeftMotorPWM[loop]);
        v_UartTxStr(Tx,21);
    }
    sprintf(Tx,"];RightMotorPWM=[");
    v_UartTxStr(Tx,21);
    for(loop = 0;loop < TXCOUNTER;loop++)
    {
        sprintf(Tx,"%d ",m_need_tx.RightMotorPWM[loop]);
        v_UartTxStr(Tx,21);
    }
    sprintf(Tx,"];LeftMotorSpd=[");
    v_UartTxStr(Tx,21);
    for(loop = 0;loop < TXCOUNTER;loop++)
    {
        sprintf(Tx,"%d ",m_need_tx.LeftMotorSpeed[loop]);
        v_UartTxStr(Tx,21);
    }
    sprintf(Tx,"];RightMotorSpd=[");
    v_UartTxStr(Tx,21);
    for(loop = 0;loop < TXCOUNTER;loop++)
    {
        sprintf(Tx,"%d ",m_need_tx.RightMotorSpeed[loop]);
        v_UartTxStr(Tx,21);
    }
    sprintf(Tx,"];Servo=[");
    v_UartTxStr(Tx,21);
    for(loop = 0;loop < TXCOUNTER;loop++)
    {
        sprintf(Tx,"%d ",m_need_tx.ServoGraduated[loop]);
        v_UartTxStr(Tx,21);
    }
    sprintf(Tx,"];ServoVar=[");
    v_UartTxStr(Tx,21);
    for(loop = 0;loop < TXCOUNTER;loop++)
    {
        sprintf(Tx,"%d ",m_need_tx.ServoVar[loop]);
        v_UartTxStr(Tx,21);
    }
    
    //sprintf(Tx,"];Buzzer=[");
    //v_UartTxStr(Tx,21);
    //for(loop = 0;loop < TXCOUNTER;loop++)
    //{
    //    sprintf(Tx,"%d ",m_need_tx.Buzzer[loop]);
    //    v_UartTxStr(Tx,21);
    //}

    sprintf(Tx,"];MidLine=[");
    v_UartTxStr(Tx,21);
    for(loop = 0;loop < TXCOUNTER;loop++)
    {
        sprintf(Tx,"%d ",m_need_tx.MidLine[loop]);
        v_UartTxStr(Tx,21);
    }
    sprintf(Tx,"];LGivSpeed=[");
    v_UartTxStr(Tx,21);
    for(loop = 0;loop < TXCOUNTER;loop++)
    {
        sprintf(Tx,"%d ",m_need_tx.LeftMotorGiV[loop]);
        v_UartTxStr(Tx,21);
    }
    sprintf(Tx,"];RGivSpeed=[");
    v_UartTxStr(Tx,21);
    for(loop = 0;loop < TXCOUNTER;loop++)
    {
        sprintf(Tx,"%d ",m_need_tx.RightMotorGiV[loop]);
        v_UartTxStr(Tx,21);
    }
    sprintf(Tx,"];t = 1:1:750;");v_UartTxStr(Tx,21);
        
    sprintf(Tx,"RightMotorPWM=");v_UartTxStr(Tx,21);
    sprintf(Tx,"RightMotorPWM./100;");v_UartTxStr(Tx,21);
    
    sprintf(Tx,"LeftMotorPWM=");v_UartTxStr(Tx,21);
    sprintf(Tx,"LeftMotorPWM./100;");v_UartTxStr(Tx,21);
    
    
    sprintf(Tx,"plot(t,");v_UartTxStr(Tx,21);
    sprintf(Tx,"RightMotorPWM,'rx-',");v_UartTxStr(Tx,21);
    sprintf(Tx,"t,LeftMotorPWM,'bx-'");v_UartTxStr(Tx,21);
    sprintf(Tx,",t,LGivSpeed,'b*-'");v_UartTxStr(Tx,21);
    sprintf(Tx,",t,RGivSpeed,'r*-'");v_UartTxStr(Tx,21);
    sprintf(Tx,",t,LeftMotorSpd,'b'");v_UartTxStr(Tx,21);
    sprintf(Tx,",t,RightMotorSpd,'r'");v_UartTxStr(Tx,21);
    sprintf(Tx,",t,Servo,'b+'");v_UartTxStr(Tx,21);
    sprintf(Tx,",t,ServoVar,'r+'");v_UartTxStr(Tx,21);
    sprintf(Tx,",t,MidLine,'g'");v_UartTxStr(Tx,21);
    //sprintf(Tx,",t,Buzzer,'k*'");v_UartTxStr(Tx,21);
    sprintf(Tx,");grid on;");v_UartTxStr(Tx,21);
    sprintf(Tx,"legend(");v_UartTxStr(Tx,21);    
    sprintf(Tx,"'RightMotorPWM'");v_UartTxStr(Tx,21);  
    sprintf(Tx,",");v_UartTxStr(Tx,21);
    sprintf(Tx,"'LeftMotorPWM'");v_UartTxStr(Tx,21);  
    sprintf(Tx,",");v_UartTxStr(Tx,21);
    
    sprintf(Tx,"'LeftMotorGiV'");v_UartTxStr(Tx,21);  
    sprintf(Tx,",");v_UartTxStr(Tx,21);
    sprintf(Tx,"'RightMotorGiV'");v_UartTxStr(Tx,21);  
    sprintf(Tx,",");v_UartTxStr(Tx,21);
    
    sprintf(Tx,"'LeftMotorSpd'");v_UartTxStr(Tx,21);  
    sprintf(Tx,",");v_UartTxStr(Tx,21);
    sprintf(Tx,"'RightMotorSpd'");v_UartTxStr(Tx,21);  
    sprintf(Tx,",");v_UartTxStr(Tx,21);
    sprintf(Tx,"'Angel'");v_UartTxStr(Tx,21);
    sprintf(Tx,",");v_UartTxStr(Tx,21);
    sprintf(Tx,"'ServoDeg'");v_UartTxStr(Tx,21);  
    sprintf(Tx,",");v_UartTxStr(Tx,21);
    sprintf(Tx,"'MidLine'");v_UartTxStr(Tx,21);
    //sprintf(Tx,",");v_UartTxStr(Tx,21);
    //sprintf(Tx,"'BuzzerPoint'");v_UartTxStr(Tx,21);
    sprintf(Tx,");");v_UartTxStr(Tx,21);
    
    sprintf(Tx,"figure(2);");v_UartTxStr(Tx,21);
    sprintf(Tx,"LeftI=[");v_UartTxStr(Tx,21);
    for(loop = 0;loop < 750;loop++)
    {
        sprintf(Tx,"%d ",m_need_tx.Information_Unnamed_Mark001[loop]);
        v_UartTxStr(Tx,21);
    }
    sprintf(Tx,"];RightI=[");v_UartTxStr(Tx,21);
    for(loop = 750;loop < 1500;loop++)
    {
        sprintf(Tx,"%d ",m_need_tx.Information_Unnamed_Mark001[loop]);
        v_UartTxStr(Tx,21);
    }
    sprintf(Tx,"];plot(");v_UartTxStr(Tx,21);
    sprintf(Tx,"t,LeftI,'b*-',");v_UartTxStr(Tx,21);
    sprintf(Tx,"t,RightI,'r*-');");v_UartTxStr(Tx,21);
    
    sprintf(Tx,"legend(");v_UartTxStr(Tx,21);    
    sprintf(Tx,"'LeftMotorI'");v_UartTxStr(Tx,21);  
    sprintf(Tx,",");v_UartTxStr(Tx,21);
    sprintf(Tx,"'RightMotorI'");v_UartTxStr(Tx,21);  
    sprintf(Tx,");");v_UartTxStr(Tx,21);
    
    sprintf(Tx,"FromShunAn");v_UartTxStr(Tx,21);
    */
}

/*                    m_need_tx.LeftMotorPWM[m_need_tx.counter] = m_Control.e_LeftSpeed;
                    m_need_tx.LeftMotorSpeed[m_need_tx.counter] = m_Control.LeftMotorSpeed;
                    m_need_tx.RightMotorPWM[m_need_tx.counter] = m_Control.LeftMotorPWM;
                    m_need_tx.RightMotorSpeed[m_need_tx.counter] = m_Control.RightMotorSpeed;//m_Control.RightMotorSpeed;
                    m_need_tx.ServoVar[m_need_tx.counter] = m_Control.ServoDeg;
                    m_need_tx.ServoGraduated[m_need_tx.counter] = m_Control.LeftRightRatio;*/

void v_UartTxInformationAboutPara()
{
    char Tx[100];//��ȡTx�ź�
    sprintf(Tx,"'This Time is ShunAn Showing,Para:");v_UartTxStr(Tx,100);//
    
    sprintf(Tx,"v=%d,P=%g,I=%g,D=%g,",m_Control.GiveSpeed
                                     ,m_Control.Motor_ControlPara_P_Number
                                     ,m_Control.Motor_ControlPara_I_Number
                                     ,m_Control.Motor_ControlPara_D_Number);//�ٶȲο�
                                     v_UartTxStr(Tx,100);
    sprintf(Tx,"P_Curve=%g,StopY=%d,Servo_Diff=%g",m_Control.P_Curve
                                                  ,m_Control.servo_imageYstopLine
                                                  ,m_Control.ServoDiff);//���ת�ǲο�
                                                  v_UartTxStr(Tx,100);
    sprintf(Tx,"';");v_UartTxStr(Tx,100);//
}

void v_UartSaveImage_sint16(void * Save)//�洢
{
    sint16 * Save_sint16 = Save;
    for(uint8 loop = 0;loop < 60;loop ++)
    {
        *Save_sint16       = (m_ImageAbstract.Left[loop]);
        *(Save_sint16 + 60) = (m_ImageAbstract.Right[loop]);
        *(Save_sint16 + 120) = (m_ImageAbstract.Central[loop]);
        *(Save_sint16 + 180) = (m_ImageTesting.hazardvaildLine[loop]);
        Save_sint16 = Save_sint16 + 1;//����
    }
    *(Save_sint16 + 180) = (m_ImageAbstract.Start_Y_Position);
    *(Save_sint16 + 181) = (m_ImageAbstract.Last_Y_Position);
    *(Save_sint16 + 182) = (m_Control.ServoDeg);
    *(Save_sint16 + 183) = (m_ImageTesting.Back2Angel_LineCounter);
    
}

void v_UartTxImageSix2PC(void * Tx)
{
    sint16 * Save = Tx;
    char TxChar[21];
    sprintf(TxChar,"Left=[");v_UartTxStr(TxChar,21);
    for(uint8 loop = 0;loop < 60;loop ++)
    {
        Save = Save + 1;//�ƶ�
        sprintf(TxChar,"%d ",*Save);v_UartTxStr(TxChar,21);
    }
    sprintf(TxChar,"];Right=[");v_UartTxStr(TxChar,21);
    for(uint8 loop = 0;loop < 60;loop ++)
    {
        Save = Save + 1;//�ƶ�
        sprintf(TxChar,"%d ",*Save);v_UartTxStr(TxChar,21);
    }
    sprintf(TxChar,"];Mid=[");v_UartTxStr(TxChar,21);
    for(uint8 loop = 0;loop < 60;loop ++)
    {
        Save = Save + 1;//�ƶ�
        sprintf(TxChar,"%d ",*Save);v_UartTxStr(TxChar,21);
    }
    sprintf(TxChar,"];");v_UartTxStr(TxChar,21);
    
    sprintf(TxChar,"RightRight=[");v_UartTxStr(TxChar,21);
    for(uint8 loop = 0;loop < 60;loop ++)
    {
        Save = Save + 1;//�ƶ�
        sprintf(TxChar,"%d ",*Save);v_UartTxStr(TxChar,21);
    }
    sprintf(TxChar,"];");v_UartTxStr(TxChar,21);
    
    
    sprintf(TxChar,"Beg=%d;",*Save);v_UartTxStr(TxChar,21);//�ƶ�
    Save = Save + 1;
    sprintf(TxChar,"Shut=%d;",*Save);v_UartTxStr(TxChar,21);//�ƶ�
    
    Save = Save + 1;
    sprintf(TxChar,"LonY=%d;",*Save);v_UartTxStr(TxChar,21);//�ƶ�
    Save = Save + 1;
    sprintf(TxChar,"LonX=%d;",*Save);v_UartTxStr(TxChar,21);//�ƶ�
    Save = Save + 1;
    
    sprintf(TxChar,"ShowImageInformation");v_UartTxStr(TxChar,21);//�ƶ�
    sprintf(TxChar,"_ShunAnGolden");v_UartTxStr(TxChar,21);//�ƶ�
    sprintf(TxChar,"(Left,Right,Mid,");v_UartTxStr(TxChar,21);//�ƶ�
    sprintf(TxChar,"RightRight,");v_UartTxStr(TxChar,21);//�ƶ�
    sprintf(TxChar,"LonY,LonX,");v_UartTxStr(TxChar,21);//�ƶ�
    sprintf(TxChar,"Shut,Beg);");v_UartTxStr(TxChar,21);//�ƶ�
    //sprintf(TxChar,"FromShunAn");v_UartTxStr(TxChar,21);//�ƶ�
}


void v_Uart_GetPicture_InRunning(uint8 mode,uint8 time)
{
    static uint8 pic_counter = 0;
    if(0 == mode){pic_counter = 0;return;}
    static uint8 counter = 0;
    if(time != (++counter))
    {
        return;
    }
    counter = 0;
    if(1 == mode)
    {
        if(pic_counter < 5)//0 1 2 3 4
        {
            v_UartSaveImage_sint16(m_need_tx.Information_Unnamed_Mark001 + 300*pic_counter);//m_need_tx.Information_Unnamed_Mark001
        }
        else
        {
            if(pic_counter < 10)//5 6 7 8 9
            {
                v_UartSaveImage_sint16(m_need_tx.ServoVar + 300*(pic_counter-5));
            }
            else
            {
                if(pic_counter < 15)//10 11 12 13 14
                {
                    v_UartSaveImage_sint16(m_need_tx.RightMotorGiV + 300*(pic_counter-10));
                }
                else
                {
                    if(pic_counter < 20)//15 16 17 18 19
                    {
                        v_UartSaveImage_sint16(m_need_tx.LeftMotorGiV + 300*(pic_counter-15));
                    }
                    else
                    {
                        if(pic_counter < 25)//20 21 22 23 24
                        {
                            v_UartSaveImage_sint16(m_need_tx.RightMotorPWM + 300*(pic_counter-20));
                        }
                        else
                        {
                            if(pic_counter < 30)//25 26 27 28 29
                            {
                                v_UartSaveImage_sint16(m_need_tx.LeftMotorPWM + 300*(pic_counter-25));
                            }
                            else
                            {
                                if(pic_counter < 35)//25 26 27 28 29
                                {
                                    v_UartSaveImage_sint16(m_need_tx.RightMotorSpeed + 300*(pic_counter-30));
                                }
                                else
                                {
                                    if(pic_counter < 40)//25 26 27 28 29
                                    {
                                        v_UartSaveImage_sint16(m_need_tx.LeftMotorSpeed + 300*(pic_counter-35));
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        pic_counter++;
    }
}


void v_Uart_SendPictures()
{
    char TxChar[21];
    for(sint8 pic_counter = 39;pic_counter >= 0;pic_counter--)
    {
        sprintf(TxChar,"figure(%d);",pic_counter+1);v_UartTxStr(TxChar,21);//�ƶ�
        if(pic_counter < 5)//0 1 2 3 4
        {
            v_UartTxImageSix2PC(m_need_tx.Information_Unnamed_Mark001 + 300*pic_counter);//m_need_tx.Information_Unnamed_Mark001
        }
        else
        {
            if(pic_counter < 10)//5 6 7 8 9
            {
                v_UartTxImageSix2PC(m_need_tx.ServoVar + 300*(pic_counter-5));
            }
            else
            {
                if(pic_counter < 15)//10 11 12 13 14
                {
                    v_UartTxImageSix2PC(m_need_tx.RightMotorGiV + 300*(pic_counter-10));
                }
                else
                {
                    if(pic_counter < 20)//15 16 17 18 19
                    {
                        v_UartTxImageSix2PC(m_need_tx.LeftMotorGiV + 300*(pic_counter-15));
                    }
                    else
                    {
                        if(pic_counter < 25)//20 21 22 23 24
                        {
                            v_UartTxImageSix2PC(m_need_tx.RightMotorPWM + 300*(pic_counter-20));
                        }
                        else
                        {
                            if(pic_counter < 30)//25 26 27 28 29
                            {
                                v_UartTxImageSix2PC(m_need_tx.LeftMotorPWM + 300*(pic_counter-25));
                            }
                            else
                            {
                                if(pic_counter < 35)//25 26 27 28 29
                                {
                                    v_UartTxImageSix2PC(m_need_tx.RightMotorSpeed + 300*(pic_counter-30));
                                }
                                else
                                {
                                    if(pic_counter < 40)//25 26 27 28 29
                                    {
                                        v_UartTxImageSix2PC(m_need_tx.LeftMotorSpeed + 300*(pic_counter-35));
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    sprintf(TxChar,"FromShunAn");v_UartTxStr(TxChar,21);//�ƶ�
}