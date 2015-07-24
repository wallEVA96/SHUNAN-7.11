#include "arm_cm4.h"
#include "MK60F15.h"
#include "ShunAn_Lib.h"
#include "start_ShunAn.h"

#include "Poet_ImageBeholder.h"
#include "Poet_Revelation.h"
#include "Poet_Bluetooth.h"
#include "ThePoet_ThePendulum.h"
#include "Pendulum_EndlessFormsMostBeautiful.h"

#include "Poet_Servo.h"
#include "Poet_Motor.h"

#include "Poet_InputInterface.h"

#include "Poet_Bluetooth.h"

#include "Poet_Buzzer.h"
/***********************************************************************************************************/
/***********************************************************************************************************/
// K60 ���ʱ�� SCCB
/******************************************************************************/
// SCCB ReadReg
/******************************************************************************/
// SCCB Read A Byte
//      // MIDH => 0x7F
//      // MIDL => 0xA2
/******************************************************************************/
#define SCCB_TRUE               return 'T'
#define SCCB_ERROR              return 'F'
/******************************************************************************/
// ����ʹ�� ���ʵ�ֲ��� ʵ��
// ��ʼ�� IIC Ϊͨ�� 400k
// 
#define SCCB_SDA_port           PTD_BASE_PTR           
#define SCCB_SDA_pin            12
#define SCCB_SCL_port           PTD_BASE_PTR           
#define SCCB_SCL_pin            13
//
#define SCCB_SDA_IN             ((SCCB_SDA_port->PDIR >> SCCB_SDA_pin)&0x01)
#define SCCB_SDA_0              (SCCB_SDA_port->PDOR &=~(1<< SCCB_SDA_pin ))
#define SCCB_SDA_1              (SCCB_SDA_port->PDOR |= (1<< SCCB_SDA_pin ))
#define SCCB_SCL_0              (SCCB_SCL_port->PDOR &=~(1<< SCCB_SCL_pin ))
#define SCCB_SCL_1              (SCCB_SCL_port->PDOR |= (1<< SCCB_SCL_pin ))
#define SCCB_SCL_DDR_OUT        (SCCB_SCL_port->PDDR |= (1<< SCCB_SCL_pin ))
#define SCCB_SDA_DDR_OUT        (SCCB_SDA_port->PDDR |= (1<< SCCB_SDA_pin ))
#define SCCB_SDA_DDR_IN         (SCCB_SDA_port->PDDR &=~(1<< SCCB_SDA_pin ))

void v_SCCB_Init()
{
    // ģ�������ſ���
    SIM_SCGC5 |= SIM_SCGC5_PORTD_MASK;
    PORTD_BASE_PTR->PCR[SCCB_SCL_pin] = 0x00000123u; // SCL
    PORTD_BASE_PTR->PCR[SCCB_SDA_pin] = 0x00000123u; // SDA
    SCCB_SDA_DDR_OUT;
    SCCB_SCL_DDR_OUT;
}

/******************************************************************************/
// v_SCCB_Delay // �ӳ�
//void v_SCCB_Delay()
//{
//    uint16 time = 130; // 1.3 us
//    while(time){time--;asm("nop");}
//}

void v_SCCB_Delay_Time(uint16 time)
{
    while(time){time--;asm("nop");}
}

#define v_SCCB_SCL_0_Delay()                v_SCCB_Delay_Time(37)               // 4000 ns
#define v_SCCB_SCL_1_Delay()                v_SCCB_Delay_Time(37)               // 370 ns
// 370ns
/******************************************************************************/
// u8_SCCB_Start // ��ʼ
uint8 u8_SCCB_Start()
{
    SCCB_SDA_1;SCCB_SCL_1; // ȫ��̬
    SCCB_SDA_DDR_IN;
    if(!SCCB_SDA_IN) // æ���
    {
        SCCB_SDA_DDR_OUT;SCCB_ERROR;
    }SCCB_SDA_DDR_OUT;
    SCCB_SDA_0;v_SCCB_SCL_1_Delay();SCCB_SCL_0; // ��ʼ̬
    if(SCCB_SDA_IN) // æ���
    {
        SCCB_SDA_DDR_OUT;SCCB_ERROR;
    }SCCB_SDA_DDR_OUT;
    SCCB_TRUE;
}

/******************************************************************************/
// u8_SCCB_Stop // ֹͣ
uint8 u8_SCCB_Stop()
{
    SCCB_SCL_0; v_SCCB_SCL_0_Delay(); SCCB_SDA_0; v_SCCB_SCL_1_Delay(); // ȫ��̬
    SCCB_SCL_1; v_SCCB_SCL_1_Delay(); SCCB_SDA_1; v_SCCB_SCL_1_Delay(); // ֹ̬ͣ
    SCCB_TRUE;
}

/******************************************************************************/
// u8_SCCB_Data_TxByte //
uint8 u8_SCCB_Data_TxByte(uint8 InData)
{
    uint8 loop = 8; // ѭ�� 7 - 0
    while(loop)
    {
        uint8 TxData = ((InData >> (loop-1))& 0x01); loop--; // ���ݸ���
        if(TxData){SCCB_SDA_1;}
              else{SCCB_SDA_0;}
        v_SCCB_SCL_0_Delay();
        SCCB_SCL_1;v_SCCB_SCL_1_Delay();
        SCCB_SCL_0;
    }
    SCCB_TRUE;
}

/******************************************************************************/
// u8_SCCB_Data_RxByte // ʱ����޸�
uint8 u8_SCCB_Data_RxByte(uint8 * RxByte)
{
    uint8 InData = 0; // ����������
    SCCB_SDA_DDR_IN; // ����SDAΪ��������
    uint8 loop = 8; // ѭ�� 7 - 0
    while(loop--)
    {
        InData = (InData << 1);
        SCCB_SCL_0;v_SCCB_SCL_0_Delay();
        SCCB_SCL_1;v_SCCB_SCL_1_Delay();
        if( SCCB_SDA_IN ){InData |= 0x01;} // �������ݸ���
                     else{InData &=~0x01;}
    }
    (*RxByte) = InData;
    SCCB_SDA_DDR_OUT; SCCB_SCL_0;
    SCCB_TRUE;
}


/******************************************************************************/
// u8_SCCB_WaitACK // �ȴ�Ӧ��
uint8 u8_SCCB_WaitACK()
{
    SCCB_SCL_0; v_SCCB_SCL_0_Delay(); SCCB_SDA_DDR_IN;
    SCCB_SCL_1; v_SCCB_SCL_1_Delay();
    if(SCCB_SDA_IN) // ����ⲿ
    {
        SCCB_SDA_DDR_OUT;
        SCCB_SCL_0;
        SCCB_ERROR;
    }SCCB_SDA_DDR_OUT;
    SCCB_SCL_0;
    SCCB_TRUE;
}

void v_SCCB_ACK()
{
    SCCB_SCL_0; v_SCCB_SCL_0_Delay();
    SCCB_SDA_0;
    SCCB_SCL_1; //v_SCCB_SCL_0_Delay();
    SCCB_SCL_0;
}



/******************************************************************************/
// v_SCCB_NoAck
void v_SCCB_NoAck(void)
{
    SCCB_SCL_0;v_SCCB_SCL_0_Delay();
    SCCB_SDA_1;v_SCCB_SCL_1_Delay();
    SCCB_SCL_1;v_SCCB_SCL_1_Delay();
    SCCB_SCL_0;v_SCCB_SCL_0_Delay();
}

/******************************************************************************/
/******************************************************************************/
// ���ģ�� ʵ�� SCCBʱ��
//============================================================================//
// ��
uint8 u8_SCCB_ReadReg_u8(uint8 SlaveID ,uint8 * result ,uint8 u8RegAddress)
{
    if('F' == u8_SCCB_Start()){return 'F';}                             // Start
    u8_SCCB_Data_TxByte((SlaveID << 1)|0);                              // дģʽ => �ӻ���ַ
    if('F' == u8_SCCB_WaitACK()){u8_SCCB_Stop();return 'F';}            // �ȴ�Ӧ��
    u8_SCCB_Data_TxByte(u8RegAddress);                                  // дģʽ => �Ĵ���
    if('F' == u8_SCCB_WaitACK()){u8_SCCB_Stop();return 'F';}            // �ȴ�Ӧ��
    u8_SCCB_Stop();                                                     // ����ֹͣ 
    if('F' == u8_SCCB_Start()){u8_SCCB_Stop();return 'F';}              // ���߼���
    u8_SCCB_Data_TxByte((SlaveID << 1)|1);                              // ��ģʽ => �ӻ���ַ
    if('F' == u8_SCCB_WaitACK()){u8_SCCB_Stop();return 'F';}            // �ȴ�Ӧ��
    u8_SCCB_Data_RxByte(result);v_SCCB_NoAck();                         // ���ݽ���
    u8_SCCB_Stop();                                                     // ֹͣ
    SCCB_TRUE;                                                          // ����TRUE
}

uint8 u8_SCCB_ReadReg_u16(uint8 SlaveID ,uint16 * result ,uint8 u8RegAddress)
{
    uint8 temp_High_eight = 0;
    uint8 temp_Low_eight  = 0;
    if('F' == u8_SCCB_Start()){return 'F';}                             // Start
    u8_SCCB_Data_TxByte((SlaveID << 1)|0);                              // дģʽ => �ӻ���ַ
    if('F' == u8_SCCB_WaitACK()){u8_SCCB_Stop();return 'F';}            // �ȴ�Ӧ��
    u8_SCCB_Data_TxByte(u8RegAddress);                                  // дģʽ => �Ĵ���
    if('F' == u8_SCCB_WaitACK()){u8_SCCB_Stop();return 'F';}            // �ȴ�Ӧ��
    u8_SCCB_Stop();                                                     // ����ֹͣ 
    if('F' == u8_SCCB_Start()){u8_SCCB_Stop();return 'F';}              // ���߼���
    u8_SCCB_Data_TxByte((SlaveID << 1)|1);                              // ��ģʽ => �ӻ���ַ
    if('F' == u8_SCCB_WaitACK()){u8_SCCB_Stop();return 'F';}            // �ȴ�Ӧ��
    u8_SCCB_Data_RxByte( &temp_High_eight );                            // ��8λ
    v_SCCB_ACK();                                                       // ��������ACK
    u8_SCCB_Data_RxByte( &temp_Low_eight );                             // ��8λ
    *result = temp_Low_eight | ((temp_High_eight << 8) & 0xFF00);       // ���ݴ洢
    v_SCCB_NoAck();                                                     // ���ݽ���
    u8_SCCB_Stop();                                                     // ֹͣ
    SCCB_TRUE;                                                          // ����TRUE
}

//============================================================================//
// д
uint8 u8_SCCB_WriteReg_u8(uint8 SlaveID ,uint8 data ,uint8 u8RegAddress)
{
    if('F' == u8_SCCB_Start()){return 'F';}                             // Start
    u8_SCCB_Data_TxByte((SlaveID << 1)|0);                              // дģʽ => �ӻ���ַ
    if('F' == u8_SCCB_WaitACK()){u8_SCCB_Stop();return 'F';}            // �ȴ�Ӧ��
    u8_SCCB_Data_TxByte(u8RegAddress);                                  // дģʽ => �Ĵ���
    if('F' == u8_SCCB_WaitACK()){u8_SCCB_Stop();return 'F';}            // �ȴ�Ӧ��
    u8_SCCB_Data_TxByte(data);                                          // дģʽ => ����
    if('F' == u8_SCCB_WaitACK()){u8_SCCB_Stop();return 'F';}            // �ȴ�Ӧ��
    u8_SCCB_Stop();                                                     // ֹͣ
    SCCB_TRUE;                                                          // ����TRUE
}

uint8 u8_SCCB_WriteReg_u16(uint8 SlaveID ,uint16 data ,uint8 u8RegAddress)
{
    if('F' == u8_SCCB_Start()){return 'F';}                             // Start
    u8_SCCB_Data_TxByte((SlaveID << 1)|0);                              // дģʽ => �ӻ���ַ
    if('F' == u8_SCCB_WaitACK()){u8_SCCB_Stop();return 'F';}            // �ȴ�Ӧ��
    u8_SCCB_Data_TxByte(u8RegAddress);                                  // дģʽ => �Ĵ���
    if('F' == u8_SCCB_WaitACK()){u8_SCCB_Stop();return 'F';}            // �ȴ�Ӧ��
    u8_SCCB_Data_TxByte( (data >> 8) & 0x00FF );                        // дģʽ => ����
    if('F' == u8_SCCB_WaitACK()){u8_SCCB_Stop();return 'F';}            // �ȴ�Ӧ��
    u8_SCCB_Data_TxByte( data & 0x00FF );                               // дģʽ => ����
    if('F' == u8_SCCB_WaitACK()){u8_SCCB_Stop();return 'F';}            // �ȴ�Ӧ��
    u8_SCCB_Stop();                                                     // ֹͣ
    SCCB_TRUE;                                                          // ����TRUE
}

//============================================================================//
//============================================================================//
//============================================================================//
// ����ͷ��ʼ��
#define Beholder_Addr                   (0xB8 >> 1)
#define Beholder_ChipVer                (0xFF)
#define Beholder_Col_Start              (0x01)

#define BeholderReg_Read_Mode_0D                        (0x0D)
#define BeholderReg_Gain_Set_35                         (0x35)
#define BeholderReg_Auto_GainExp_0xAF                   (0xAF)
// 0x80 - 0x98
#define BeholderReg_ADCref_2C                           (0x2C)
// �ڵ�ƽУ׼ 42 4C 46 47 48

//#define Beholder_offsetC_Var            (0x48)
s_ImageInfor m_self_Beholder;//����ͷ��Ϣ

uint8 b_Beholder_Init()
{
    m_self_Beholder.errorNum = 0;
    m_self_Beholder.FrameNum = 0;
    m_self_Beholder.LineCounter = 0;
    m_self_Beholder.regRewrite = 0;
    m_self_Beholder.regRewriteNumber = 0;
    m_self_Beholder.regReNumber_RegName = 0;  
    
    v_SCCB_Init();
    uint16 result = 0;
    uint8 writeEnable = 0;
//    uint8 writeDone = 0;//д���
      
    //Magic Number//=>����
    const uint16 regFE_BEEF_unlocked = 0xBEEF;
    const uint16 reg03_480u_height = 480;
    const uint16 reg05_94u_lineShadowTime = 94;
    const uint16 reg06_45u_fieldShadowTime = 500;
    
    const uint16 reg07_188_chipCtl = 0x388;
    const uint16 reg0B_number_totalShutterWdith = 35;//30//80ʵ���ұ�׼��ǿ
    m_ImageAbstract.TotalShutterTime = reg0B_number_totalShutterWdith;
    
    
    const uint16 reg0F_11_cameraSetting = 0x11;
    const uint16 reg1C_3_dataConverting = 3;
    
    const uint16 reg2C_7_ADCref = 7;
    const uint16 regAF_0_AGEC_unlocked = 0;
    const uint16 reg0D_32A_readMode = 0x32A;
    const uint16 reg0A_64_ShutterWdithCtl = 0x64;
    
    const uint16 reg35_number_Gain = 32;
    
    if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,Beholder_ChipVer) ){return 'F';}//ȷ��оƬ�ͺ�
    if(!((0x1311 == result)||(0x1313 == result))){return 'F';}//0x1311 0x1313//ȷ���ͺ�
    
    do//�Ĵ�������
    {    
        //====================================================================//
      
        if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,regFE_BEEF_unlocked,0xFE) ){return 'F';}
        if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,reg03_480u_height,0x03) ){return 'F';}
        if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,reg05_94u_lineShadowTime,0x05) ){return 'F';}
        if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,reg06_45u_fieldShadowTime,0x06) ){return 'F';}
        if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,reg07_188_chipCtl,0x07) ){return 'F';}
        if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,reg0A_64_ShutterWdithCtl,0x0A) ){return 'F';}
        if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,reg0B_number_totalShutterWdith,0x0B) ){return 'F';}
        if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,reg0D_32A_readMode,0x0D) ){return 'F';}
        if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,reg0F_11_cameraSetting,0x0F) ){return 'F';}
        if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,reg1C_3_dataConverting,0x1C) ){return 'F';}
        if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,reg2C_7_ADCref,0x2C) ){return 'F';}
        if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,regAF_0_AGEC_unlocked,0xAF) ){return 'F';}
        if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,reg35_number_Gain,0x35) ){return 'F';}
      
        if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,1,0x0C) ){return 'F';}
        if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,0,0x0C) ){return 'F';}
        /*
        if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x03) ){return 'F';}
        if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x05) ){return 'F';}
        if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x06) ){return 'F';}
        if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x07) ){return 'F';}
        if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x0A) ){return 'F';} 
        if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x0B) ){return 'F';} 
        if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x0D) ){return 'F';} 
        if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x0F) ){return 'F';} 
        if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x1C) ){return 'F';} 
        if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x2C) ){return 'F';} 
        if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0xAF) ){return 'F';} 
        if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x35) ){return 'F';} 
        //====================================================================//        
        if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x03) ){return 'F';} 
        if(!(reg03_480u_height == result)){m_self_Beholder.regRewriteNumber = 0x03;writeEnable = 1;break;}//�߶��趨�Ƿ�Ϊ480
        
        if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x05) ){return 'F';} 
        if(!(reg05_94u_lineShadowTime == result)){m_self_Beholder.regRewriteNumber = 0x05;writeEnable = 1;break;}//������
        
        if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x06) ){return 'F';} 
        if(!(reg06_45u_fieldShadowTime == result)){m_self_Beholder.regRewriteNumber = 0x06;writeEnable = 1;break;}//������
        
        if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x07) ){return 'F';} 
        if(!(reg07_188_chipCtl == result)){m_self_Beholder.regRewriteNumber = 0x07;writeEnable = 1;break;}//оƬ����
        
        if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x0A) ){return 'F';} 
        if(!(reg0A_64_ShutterWdithCtl == result)){m_self_Beholder.regRewriteNumber = 0x0A;writeEnable = 1;break;}//�ع�ʱ�����
          
        if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x0B) ){return 'F';} 
        if(!(reg0B_number_totalShutterWdith == result)){m_self_Beholder.regRewriteNumber = 0x0B;writeEnable = 1;break;}//
        
        if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x0D) ){return 'F';} 
        if(!(reg0D_32A_readMode == result)){m_self_Beholder.regRewriteNumber = 0x0D;writeEnable = 1;break;}//�����ȳ�ģʽ
        
        if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x0F) ){return 'F';} 
        if(!(reg0F_11_cameraSetting == result)){m_self_Beholder.regRewriteNumber = 0x0F;writeEnable = 1;break;}//����ģʽ
        
        if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x1C) ){return 'F';} 
        if(!(reg1C_3_dataConverting == result)){m_self_Beholder.regRewriteNumber = 0x1C;writeEnable = 1;break;}//ADC
        
        if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x2C) ){return 'F';} 
        if(!(reg2C_7_ADCref == result)){m_self_Beholder.regRewriteNumber = 0x2C;writeEnable = 1;break;}//ADC�ο�
        
        if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0xAF) ){return 'F';} 
        if(!(regAF_0_AGEC_unlocked == result)){m_self_Beholder.regRewriteNumber = 0xAF;writeEnable = 1;break;}//AEC/AGC Enable

        if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x35) ){return 'F';} 
        if(!(reg35_number_Gain == result)){m_self_Beholder.regRewriteNumber = 0x35;writeEnable = 1;break;}//Analog Gain
        */
    }while(0);
    if(1 == writeEnable)//u8_SCCB_WriteReg_u16//����доƬ
    {
        m_self_Beholder.regReNumber_RegName = result;//д��Ϣ
        m_self_Beholder.regRewrite = 1;
        return 'F';
        /*
        if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x03) ){return 'F';} 
        if(!(reg03_480u_height == result)){return 'F';}//�߶��趨�Ƿ�Ϊ480
        if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x05) ){return 'F';} 
        if(!(reg05_94u_lineShadowTime == result)){return 'F';}//������
        if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x06) ){return 'F';} 
        if(!(reg06_45u_fieldShadowTime == result)){return 'F';}//������
        if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x07) ){return 'F';} 
        if(!(reg07_188_chipCtl == result)){return 'F';}//оƬ����
        if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x0A) ){return 'F';} 
        if(!(reg0A_64_ShutterWdithCtl == result)){return 'F';}//�ع�ʱ�����
        if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x0B) ){return 'F';} 
        if(!(reg0B_number_totalShutterWdith == result)){return 'F';}//
        if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x0D) ){return 'F';} 
        if(!(reg0D_32A_readMode == result)){return 'F';}//�����ȳ�ģʽ
        if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x0F) ){return 'F';} 
        if(!(reg0F_11_cameraSetting == result)){return 'F';}//����ģʽ
        if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x1C) ){return 'F';} 
        if(!(reg1C_3_dataConverting == result)){return 'F';}//ADC
        if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x2C) ){return 'F';} 
        if(!(reg2C_7_ADCref == result)){return 'F';}//ADC�ο�
        if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0xAF) ){return 'F';} 
        if(!(regAF_0_AGEC_unlocked == result)){return 'F';}//AEC/AGC Enable
        if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x35) ){return 'F';} 
        if(!(reg35_number_Gain == result)){return 'F';}//Analog Gain
        */
    }
    
    // ====================================================================== //
    
    //����������
//if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,100,0x05) ){return 'F';} // ������
//    if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,50,0x06) ){return 'F';} // ������
    //оƬ����
 //   if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,0x188,0x07) ){return 'F';} // оƬģʽ����
    // ====================================================================== //
    //�ع���
//    if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,0x64,0x0A) ){return 'F';} // 
    // ====================================================================== //
    //�����ع���
    //Total integration time in number of rows. This value is used only when AEC is disabled
 //   if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,100,0x0B) ){return 'F';} //
    // ====================================================================== //
    //����ģʽ
  //  if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,0x32A,0x0D) ){return 'F';} // ����ģʽ
    // ====================================================================== //
 //   //��ɫģʽ=>��Ϊ�̶�����=>ֻ��Ҫȷ�ϼ���
  //  if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,0x11,0x0F) ){return 'F';}
 //   if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0x0F) ){return 'F';}//ȷ�Ϻڰ����
//    if(0 != result){return 'F';}
    // ====================================================================== //
    /* ������� */
//    if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,64,0x36) ){return 'F';}
//   if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,7,0x2C) ){return 'F';} // ADC�ο���ѹ��
//    sint16 num = -127;
//    if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,0,0x48) ){return 'F';} // �ڼ������ο�
//    if( 'F' == b_Beholder_SetGain_35(16)){return 'F';};
    // ====================================================================== //
    //�����ȳ�
 //   if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,3,0x1C) ){return 'F';} // �߹���� 2 - ���� / 3 - �߹�ѹ��
    // ====================================================================== //
    //Row-wise Noise//70 72 73
    
    
//    if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,3,0x0C) ){return 'F';}//ȷ�Ϻڰ����
//    if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,0x1E0,0xBD) ){return 'F';} // 2400 //�ع����ڣ�
//    if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,2000,0x0B) ){return 'F';} // 2400 //�ع����ڣ�
    /*  */
       
//    if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,29,0x31) ){return 'F';}
//    if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,24,0x32) ){return 'F';}
//    if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,21,0x33) ){return 'F';}
//    if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,4,0x34) ){return 'F';}
    
    
    
//   if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,2,0x1C) ){return 'F';} // �߹���� 2 - ���� / 3 - �߹�ѹ��
    
    
    // ====================================================================== //
    /* ��ֵ */
//    if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,0x4000,0x46) ){return 'F';}//������ֵ
//    if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,0x8080,0x47) ){return 'F';}

    
//    if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,0x14,0x70) ){return 'F';}
    /* ����Ӧ�ع� */
//    if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,2400,0xBD) ){return 'F';} // ����ع�ʱ���޷�
//    if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,2,0xA8) ){return 'F';} // ���ü���
//    if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,2,0xA6) ){return 'F';} // ��������
//    if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,30,0xA5) ){return 'F';} // Desired Bin 1- 64
    // if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,30,0xBC) ){return 'F';} // Desired Bin ��
    // ====================================================================== //
    /* �ع���������� */
 //   if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,0,BeholderReg_Auto_GainExp_0xAF) ){return 'F';} // 0x - �ر��Զ����� // 1 - �����Զ��ع�
//    if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&result,0xAF) ){return 'F';}//ȷ�Ϻڰ����
//    if(0 != result){return 'F';}
    // ====================================================================== //
//    if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,0,0xB1) )
//    {return 'F';} 
    
    
    //if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,8,Beholder_Read_Mode) ){return 'F';} // ����ģʽ
    return 'T';
}


//============================================================================//
// �����ж�Ƶ�ʣ�26.663 MHz // ��������أ�Ѹ�ٶ�ȡ
    // B8
// Line       ��28.5   kHz // ���������
    // B6
// ���ж�     ��60      Hz // �����ؿ�ʼ => �½��ؽ���
    // B4
#define Pix_Port                PORTD_BASE_PTR
#define Pix_GPIO_Port           PTD_BASE_PTR
#define Pix_Pin                 15

#define Pix_read_Port                   PORTD_BASE_PTR
#define Pix_GPIO_read_Port              PTD_BASE_PTR
#define Pix_GPIO_read_Port_input        PTD_BASE_PTR->PDIR

#define Line_Port               PORTD_BASE_PTR
#define Line_GPIO_Port          PTD_BASE_PTR
#define Line_Pin                10
#define Line_Pin_InReg          0x400//(1<< 10)

#define Frame_Port              PORTD_BASE_PTR
#define Frame_GPIO_Port         PTD_BASE_PTR
#define Frame_Pin               11

//#define Frame_Pin               6

#define DMA_MUX0_Source_PORTA                   49
#define DMA_MUX0_Source_PORTB                   50
#define DMA_MUX0_Source_PORTC                   51
#define DMA_MUX0_Source_PORTD                   52
#define DMA_MUX0_Source_PORTE                   53
#define DMA_MUX0_AlwaysEnabled_54               54

uint16 view_BeholderDataArray[Beholder_LineY_MAX][Beholder_PixNum_MAX];//����ͷ��Чλ����
//uint8 selfjudge_SendMessage[Beholder_LineY_MAX][Beholder_PixNum_MAX];//�ж�����
uint8 m_ImageBeholder_Data[Beholder_LineY_MAX][Beholder_PixNum_MAX];
//uint8 static_n_markerDatas[Beholder_LineY_MAX][Beholder_PixNum_MAX];

uint8 b_Beholder_InteruptInit(void * Target_Ptr)
{
    // ��������
    m_self_Beholder.errorNum = 0;
    m_self_Beholder.FrameNum = 0;
    // �Ĵ�������
    SIM_SCGC5 |= SIM_SCGC5_PORTD_MASK;// | SIM_SCGC5_PORTE_MASK | SIM_SCGC5_PORTD_MASK;
    
    Pix_read_Port->PCR[0] = PORT_PCR_MUX(1);
    Pix_read_Port->PCR[1] = PORT_PCR_MUX(1);
    Pix_read_Port->PCR[2] = PORT_PCR_MUX(1);
    Pix_read_Port->PCR[3] = PORT_PCR_MUX(1);
    Pix_read_Port->PCR[4] = PORT_PCR_MUX(1);
    Pix_read_Port->PCR[5] = PORT_PCR_MUX(1);
    Pix_read_Port->PCR[6] = PORT_PCR_MUX(1);
    Pix_read_Port->PCR[7] = PORT_PCR_MUX(1);
    
    Pix_read_Port->PCR[8] = PORT_PCR_MUX(1);
    Pix_read_Port->PCR[9] = PORT_PCR_MUX(1);
    
    
    Pix_Port->PCR[Pix_Pin] = PORT_PCR_MUX(1)|PORT_PCR_IRQC(1);          // DMA�������أ�GPIO
    Line_Port->PCR[Line_Pin] = PORT_PCR_MUX(1)|PORT_PCR_IRQC(9);        // �������жϣ�GPIO
    Frame_Port->PCR[Frame_Pin] = PORT_PCR_MUX(1)|PORT_PCR_IRQC(11);     // ˫�����жϣ�GPIO
    
    Pix_GPIO_Port->PDDR &=~( 1<< Pix_Pin );
    
    Pix_GPIO_read_Port->PDDR &=~( 1<< 0 );
    Pix_GPIO_read_Port->PDDR &=~( 1<< 1 );
    Pix_GPIO_read_Port->PDDR &=~( 1<< 2 );
    Pix_GPIO_read_Port->PDDR &=~( 1<< 3 );
    Pix_GPIO_read_Port->PDDR &=~( 1<< 4 );
    Pix_GPIO_read_Port->PDDR &=~( 1<< 5 );
    Pix_GPIO_read_Port->PDDR &=~( 1<< 6 );
    Pix_GPIO_read_Port->PDDR &=~( 1<< 7 );
    Pix_GPIO_read_Port->PDDR &=~( 1<< 8 );
    Pix_GPIO_read_Port->PDDR &=~( 1<< 9 );
    
    Line_GPIO_Port->PDDR &=~( 1<< Line_Pin );
    Frame_GPIO_Port->PDDR &=~( 1<< Frame_Pin );
    
    //========================================================================//
    SIM_SCGC7 |= SIM_SCGC7_DMA_MASK; // DMAʱ�ӿ���
    SIM_SCGC6 |= SIM_SCGC6_DMAMUX0_MASK; // DMA����MUX0
    //
    DMAMUX0_BASE_PTR ->CHCFG[0] = 0;
    DMAMUX0_BASE_PTR ->CHCFG[0] = DMAMUX_CHCFG_ENBL_MASK | DMAMUX_CHCFG_SOURCE(DMA_MUX0_Source_PORTD); // ѡ��ͨ��
//    DMAMUX0_BASE_PTR ->CHCFG[1] = 0;
//    DMAMUX0_BASE_PTR ->CHCFG[1] = DMAMUX_CHCFG_ENBL_MASK | DMAMUX_CHCFG_SOURCE(DMA_MUX0_Source_PORTD); // ѡ��ͨ��

    //    DMAMUX0_BASE_PTR ->CHCFG[1] = 0;
//    DMAMUX0_BASE_PTR ->CHCFG[1] = DMAMUX_CHCFG_ENBL_MASK | DMAMUX_CHCFG_SOURCE(DMA_MUX0_Source_PORTD); // ѡ��ͨ��

    //========================================================================//
    // ��ַѡ��
    DMA_BASE_PTR->CR = DMA_CR_GRP1PRI_MASK;
    DMA_BASE_PTR->TCD[0].CSR = DMA_CSR_BWC(0) | DMA_CSR_DREQ_MASK; // ��ʱ
    //
    DMA_BASE_PTR ->TCD[0].SADDR = (uint32)((void*)&(Pix_GPIO_read_Port_input));//(uint32)((void*)&(Pix_GPIO_read_Port_input)); // ѡ������Ϊ����
    //�˴��Ѿ������޸ģ��ʿ����ж���DMAʱ��û�����⣬���������������
    DMA_BASE_PTR ->TCD[0].SOFF  = 0; // Դ��ַƫ�����
    DMA_BASE_PTR ->TCD[0].DADDR = (uint32)(uint16*)view_BeholderDataArray; // ѡ�����λ��
    DMA_BASE_PTR ->TCD[0].DOFF  = 2; // ƫ�� one byte
    //
    DMA_BASE_PTR ->TCD[0].CITER_ELINKNO = DMA_CITER_ELINKNO_CITER(Beholder_PerLine_MaxActivePix);
    DMA_BASE_PTR ->TCD[0].BITER_ELINKNO = DMA_BITER_ELINKNO_BITER(Beholder_PerLine_MaxActivePix);
    DMA_BASE_PTR ->TCD[0].SLAST = 0; // Դͷ��ƫ��
    //
    //sint32 adder_temp = -Beholder_PixALL_Num;
    DMA_BASE_PTR ->TCD[0].DLAST_SGA = 0; // ����ƶ�һλ
    //
    DMA_BASE_PTR ->TCD[0].NBYTES_MLNO = 2; // ����д������
    //
    DMA_BASE_PTR ->TCD[0].ATTR  = DMA_ATTR_SSIZE(1) | DMA_ATTR_DSIZE(1); // ��������
    //
//    DMA_BASE_PTR->CR = DMA_CR_GRP1PRI_MASK;
    /*
    DMA_BASE_PTR->TCD[1].CSR = DMA_CSR_BWC(0) | DMA_CSR_DREQ_MASK; // ��ʱ
    //
    DMA_BASE_PTR ->TCD[1].SADDR = ((uint32)((void*)&(Pix_GPIO_read_Port_input)) + 1);//(uint32)((void*)&(Pix_GPIO_read_Port_input)); // ѡ������Ϊ����
    //�˴��Ѿ������޸ģ��ʿ����ж���DMAʱ��û�����⣬���������������
    DMA_BASE_PTR ->TCD[1].SOFF  = 0; // Դ��ַƫ�����
    DMA_BASE_PTR ->TCD[1].DADDR = (uint32)(uint16*)selfjudge_SendMessage; // ѡ�����λ��
    DMA_BASE_PTR ->TCD[1].DOFF  = 2; // ƫ�� one byte
    //
    DMA_BASE_PTR ->TCD[1].CITER_ELINKNO = DMA_CITER_ELINKNO_CITER(Beholder_PerLine_MaxActivePix);
    DMA_BASE_PTR ->TCD[1].BITER_ELINKNO = DMA_BITER_ELINKNO_BITER(Beholder_PerLine_MaxActivePix);
    DMA_BASE_PTR ->TCD[1].SLAST = 0; // Դͷ��ƫ��
    //
    //sint32 adder_temp = -Beholder_PixALL_Num;
    DMA_BASE_PTR ->TCD[1].DLAST_SGA = 0; // ����ƶ�һλ
    //
    DMA_BASE_PTR ->TCD[1].NBYTES_MLNO = 1; // ����д������
    //
    DMA_BASE_PTR ->TCD[1].ATTR  = DMA_ATTR_SSIZE(0) | DMA_ATTR_DSIZE(0); // ��������
    */
    /*
    DMA_BASE_PTR->TCD[1].CSR = DMA_CSR_BWC(0) | DMA_CSR_DREQ_MASK; // ��ʱ
    //
    DMA_BASE_PTR ->TCD[1].SADDR = (uint32)((void*)&(input));//(uint32)((void*)&(Pix_GPIO_read_Port_input)); // ѡ������Ϊ����
    //�˴��Ѿ������޸ģ��ʿ����ж���DMAʱ��û�����⣬���������������
    DMA_BASE_PTR ->TCD[1].SOFF  = 0; // Դ��ַƫ�����
    DMA_BASE_PTR ->TCD[1].DADDR = (uint32)(uint8*)output; // ѡ�����λ��
    DMA_BASE_PTR ->TCD[1].DOFF  = 0; // ƫ�� one byte
    //
    DMA_BASE_PTR ->TCD[1].CITER_ELINKNO = DMA_CITER_ELINKNO_CITER(1);
    DMA_BASE_PTR ->TCD[1].BITER_ELINKNO = DMA_BITER_ELINKNO_BITER(1);
    DMA_BASE_PTR ->TCD[1].SLAST = 0; // Դͷ��ƫ��
    //
    //sint32 adder_temp = -Beholder_PixALL_Num;
    DMA_BASE_PTR ->TCD[1].DLAST_SGA = 0; // ����ƶ�һλ
    //
    DMA_BASE_PTR ->TCD[1].NBYTES_MLNO = 1; // ����д������
    //
    DMA_BASE_PTR ->TCD[1].ATTR  = DMA_ATTR_SSIZE(0) | DMA_ATTR_DSIZE(0); // ��������
    
    DMA_BASE_PTR ->ERQ |= DMA_ERQ_ERQ1_MASK;
    */
//    DMA_BASE_PTR ->ERQ &=~ DMA_ERQ_ERQ1_MASK;
    DMA_BASE_PTR ->ERQ &=~ DMA_ERQ_ERQ0_MASK; // ���� //DMA_BASE_PTR->ERQ |= DMA_ERQ_ERQ0_MASK;
    // 
    set_vector_handler(PORTD_VECTORn,v_Beholder_Interupt_FuncPtr); // �趨B���жϺ���ָ��
    disable_irq(PORTD_IRQn);
    
    
    return 'T';
}
//#define Line_MaxNum             120


/*
uint32 viewer1 = 0;
uint32 viewer2 = 0;
uint32 viewer3 = 0;
*/
/* v_Beholder_Interupt_FuncPtr */
//uint8 SendMessage[Beholder_LineY_MAX][Beholder_PixNum_MAX];

uint32 Image_Timer = 0;

void v_Beholder_Interupt_FuncPtr()//�жϺ�������
{
    static volatile uint8 FrameVaild_flag = 0;
    static uint16 Line_counter = 0;
    static volatile uint8 sure_open_framePositive = 0;
    
    /* ���ж� */
    if( ((Line_Port->ISFR >> Line_Pin)&1) ) // ���ж�
    {
       // temp_line_viewer++;
        if( FrameVaild_flag )
        {
            if(Line_counter%2)
            {
                DMA_BASE_PTR->ERQ |= DMA_ERQ_ERQ0_MASK;
            }
            Line_counter ++; // ��������
        }
        Line_Port->ISFR |= 1 << Line_Pin; // ���ж�
    } 

//    static uint8 temp_forSave = 0;
    /* ���ж� */
    if( 1 == ((Frame_Port->ISFR >> Frame_Pin)&1) ) // ���ж�
    {
       // temp_frame_viewer++;
        Frame_Port->ISFR |= 1 << Frame_Pin; // ���ж�
        if( 1 == (( Frame_GPIO_Port->PDIR >> Frame_Pin )&1) ) //������
        {
            //if( 1 == FrameVaild_flag ){self_Beholder.errorNum |= 0x1;}
            if( 1 == sure_open_framePositive )
            {
                FrameVaild_flag = 1; // ��������Ч
                set_irq_priority(PIT1_IRQn,4);//�����ж����ȼ�
            }
//            Line_counter = 0;
        }
        else // �½���
        { 
            DMA_BASE_PTR->ERQ &=~ DMA_ERQ_ERQ0_MASK;//�ر�DMA
            set_irq_priority(PIT1_IRQn,2);
            enable_irq(PIT1_IRQn);
            m_Control.image_Be2control_time++;
            
            do//�ɼ������
            {
                /*----- ����Ϊ��Ϣ�ɼ� -----*/
                m_Control.CanCheck = 0;
                modeMachine(' ');//����
                //b_GetMotor_electric(ADC1_BASE_PTR,16,&m_Control.LeftMotorElec);//��ѹ��Ϣ��ȡ
                //b_GetMotor_electric(ADC0_BASE_PTR,16,&m_Control.RightMotorElec);
                
                if(m_Control.starting_time > m_system.timer)
                {
                    if((m_Control.starting_time - 1000 == m_system.timer)
                     //||(m_Control.starting_time - 2000 == m_system.timer)  
                     ||(m_Control.starting_time - 3000 == m_system.timer)
                     ||(m_Control.starting_time - 4000 == m_system.timer)
                     //||(m_Control.starting_time - 5000 == m_system.timer)
                       )
                    {
                        v_BuzzerBeepSet(500);
                        v_speed_set2pwm(0,0,2);
                        set_irq_priority(PIT1_IRQn,4);//�����ж����ȼ�
                        //disable_irq(PIT1_IRQn);
                    }
                }
                
                if((m_Control.runningEnd_time > m_system.timer)&&(m_system.timer > m_Control.starting_time))//��������
                {
                    set_irq_priority(PIT1_IRQn,2);//�����ж����ȼ�=>�����ж�
                    
                    if(1 == m_Control.start_motorRunning_flag)
                    {
                        for(uint8 loop = 0;loop < 10;loop++)
                        {
                            v_leftMotor_pwmOut(loop * 50,1);
                            v_rightMotor_pwmOut(loop * 50,1);
                        }
                        m_Control.start_motorRunning_flag = 0;
                    }
                    
                    
                    if((m_system.timer > m_Control.starting_time + 1000))
                    {
                        v_Uart_GetPicture_InRunning(1,2);
                    }
                    
                    
                    /*
                    m_need_tx.MidLine[m_need_tx.counter] = m_Control.image_control_n;
                    
                    m_need_tx.LeftMotorGiV[m_need_tx.counter] = m_Control.LeftGiveSpd;
                    m_need_tx.RightMotorGiV[m_need_tx.counter] = m_Control.RightGiveSpd;
                    
                    m_need_tx.LeftMotorPWM[m_need_tx.counter] = m_Control.LeftMotorPWM;
                    m_need_tx.LeftMotorSpeed[m_need_tx.counter] = m_Control.LeftMotorSpeed;
                    
                    
                    m_need_tx.RightMotorPWM[m_need_tx.counter] = m_Control.RightMotorPWM;
                    m_need_tx.RightMotorSpeed[m_need_tx.counter] = m_Control.RightMotorSpeed;//m_Control.RightMotorSpeed;
                    m_need_tx.ServoVar[m_need_tx.counter] = m_Control.ServoDeg;
                    m_need_tx.ServoGraduated[m_need_tx.counter] = m_Control.LeftRightRatio;
                    
                    m_need_tx.Information_Unnamed_Mark001[m_need_tx.counter / 2] = m_self_Motor_Para.L_counter * m_Control.Motor_ControlPara_I_Number;
                    m_need_tx.Information_Unnamed_Mark001[1500/2 + m_need_tx.counter / 2] = m_self_Motor_Para.R_counter * m_Control.Motor_ControlPara_I_Number;

                    m_need_tx.counter ++;
                    
                    if((1 == m_need_tx.counter)||//20msһ�Σ�50Hz=>�԰����
                       (51 == m_need_tx.counter)||
                       (101 == m_need_tx.counter)||
                       (151 == m_need_tx.counter)||
                       (201 == m_need_tx.counter)||
                       (251 == m_need_tx.counter)  
                      )
                    {
                        m_Control.BuzzerPoint = 0;
                        v_BuzzerBeepSet(200);//����������
                    }
                    else
                    {
                        m_Control.BuzzerPoint = -5000;
                    }
                    */
                    
                }
                else
                {
                    m_Control.start_motorRunning_flag = 1;
                    m_need_tx.counter = 0;
                    v_leftMotor_pwmOut(0,3);
                    v_rightMotor_pwmOut(0,3);
                }
            }while(0);
                        
            
            
            
            m_self_Beholder.LineCounter = Line_counter;//��������
            Line_counter = 0; // ����
            
            
            FrameVaild_flag = 0;
            DMA_BASE_PTR ->TCD[0].DADDR = (uint32)(uint16*)view_BeholderDataArray; // ѡ�����λ��
            DMA_BASE_PTR ->TCD[0].CITER_ELINKNO = DMA_CITER_ELINKNO_CITER(Beholder_PerLine_MaxActivePix);
            DMA_BASE_PTR ->TCD[0].BITER_ELINKNO = DMA_BITER_ELINKNO_BITER(Beholder_PerLine_MaxActivePix);
            

            
            
            v_system_clocked();//ϵͳʱ��
            
            for(uint8 loop = 0;loop < Beholder_LineY_MAX;loop++)
            {
                for(uint8 inter = 0;inter < 185;inter++)
                {
                    uint16 n = view_BeholderDataArray[loop][inter]&0x03FFu;
                    float f_n = (float)n;
                    n = (uint8)(-f_n*f_n/4096.f + f_n/2.f);
                    m_ImageBeholder_Data[loop][inter] = n;//�߹�ѹ��
                }
            }
            
            if(0 == m_system.uart_Txflag)//δ����
            {
                m_system.uarttx_timer ++;
                m_system.uart_Txflag = 1;//�趨���ƽ��б�־λ
            }
            //================================================================//
            //������ƴ��벿��
            /*----------ͼ������----------*/
            if(0 != m_Control.image_ratio[7])//x = (30*h/a)*y + 30/a
            {
                
                v_ImageCut();//����ͼ����
                m_Control.CanCheck = 1;

                v_ImageOptimalization();
                //f_getSteerCurve();//����ʱ�����
                do//������
                {
                    v_steer_set2pwm();
                }while(0);
                
            }
            
            sure_open_framePositive = 1;
            m_self_Beholder.FrameNum ++;
        }
    }
    
    
}

uint8 b_Beholder_SetGain_35(uint8 GainSet)
{
    if(GainSet > 0x3Fu)
    {
        return 'F';
    }
    if( 'T' != u8_SCCB_WriteReg_u16(Beholder_Addr,GainSet,BeholderReg_Gain_Set_35) )
    {
        return 'F';
    }
    uint16 read_out = 0;
    if( 'T' != u8_SCCB_ReadReg_u16(Beholder_Addr,&read_out,BeholderReg_Gain_Set_35) )
    {
        return 'F';
    }
    if(GainSet != read_out)
    {
        return 'F';
    }
    return 'T';
}

void v_setShutterTime(uint16 shutterTime)
{
    u8_SCCB_WriteReg_u16(Beholder_Addr,shutterTime,0x0B);
}
