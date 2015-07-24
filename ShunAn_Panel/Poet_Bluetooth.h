/**
/. -----------------------//k60�ײ��//-------------------------

/. ����Ӳ��ƽ̨��K60
 . ��Ȩ���У����� 
 . �����ߣ�����
 . �ļ�����alienUART.h
 . ��;��
 . ����޸�����: 20140519
*/
#ifndef __POET_BLUETOOTH
#define __POET_BLUETOOTH

typedef
struct
{
//    sint16 LeftMotorElec[1500];//��������
//    sint16 RightMotorElec[1500];//�ҵ������
    //
    sint16 LeftMotorSpeed[1500];//����ת��
    sint16 RightMotorSpeed[1500];//�ҵ��ת��
    //
    sint16 LeftMotorPWM[1500];//����PWM����
    sint16 RightMotorPWM[1500];//�ҵ��PWM����
    
    
    //sint16 RightMotorPWM1[1500];//�ҵ��PWM����
    
    sint16 LeftMotorGiV[1500];//����ת��
    sint16 RightMotorGiV[1500];//�ҵ��ת��
//    float LeftMotorPWMadd[1500];//����PWM����
//    float RightMotorPWMadd[1500];//�ҵ��PWM����
    
    uint16 ServoGraduated[1500];
    
    sint16 ServoVar[1500];
    //uint16 ServoBeforeDiff[1500];
    uint8 MidLine[1500];
    
    //sint16 Buzzer[1500];
    sint16 Information_Unnamed_Mark001[1500];//����PWM����//û�������ʣ�����ΪMark001
    uint16 counter;
}
s_need_tx;

extern s_need_tx m_need_tx;

extern void __v_uart_rx_irq_en();
extern void __v_uart_getchar (char *ch);

void v_UartInit(unsigned long int BaudRate);
void v_UartTxOne(unsigned char sendInfor);
void v_UartTxSInt16(unsigned short int * sendUint);
void v_UartTxStr(char TxArray[],uint32 TxLength);
//extern void __v_Uart_TxInt16_(unsigned short int sendUint);
//extern void __v_Uart_TxInt32_(unsigned long int sendUint);
uint8 b_TxImageInformation(uint8 CMOS_Pixel_org[][Beholder_PixNum_MAX]);

void v_UartTxInformationAboutPara();

void v_UartTxNeedtx();


void v_UartSaveImage_sint16(void * Save);//�洢
void v_UartTxImageSix2PC(void *);


void v_Uart_GetPicture_InRunning(uint8 mode,uint8 time);
void v_Uart_SendPictures();
#endif