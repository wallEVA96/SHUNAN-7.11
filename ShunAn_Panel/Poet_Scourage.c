#include "MK60F15.h"
#include "ShunAn_Lib.h"
#include "start_ShunAn.h"
#include "BlessedAlien.h"

#include "Poet_Scourage.h"
// ����������ܷ�������ȡ��
// ========================================================================== //
#define Flash_SPI_PTR           SPI0_BASE_PTR
// CS           B20
// DO           B22
// WP           B19 --
// HOLD         B18 --
// CLK          B21
// DI           B23

//#define v_DSPI_SetFrameSize(FrameSize)          do{Flash_SPI_PTR->CTAR[0] |= SPI_CTAR_FMSZ(FrameSize-1);}while(0)  
//#define v_DSPI_HaltTx()                         do{Flash_SPI_PTR->MCR |= SPI_MCR_HALT_MASK;}while(0)
//#define v_DSPI_GoonTx()                         do{Flash_SPI_PTR->MCR &=~SPI_MCR_HALT_MASK;}while(0)

uint8 b_DSPI_Init()
{
    // ====================================================================== //
    /* �������� */
    SIM_SCGC6 |= SIM_SCGC6_DSPI0_MASK; //
    SIM_SCGC5 |= SIM_SCGC5_PORTE_MASK;
    PORTE_BASE_PTR->PCR[0] = 0x00000200u; // 
    PORTE_BASE_PTR->PCR[1] = 0x00000200u; // 
    PORTE_BASE_PTR->PCR[2] = 0x00000200u; // 
    PORTE_BASE_PTR->PCR[3] = 0x00000200u; // 
    
    PORTE_BASE_PTR->PCR[10] = 0x00000100u; // 
    PORTE_BASE_PTR->PCR[11] = 0x00000100u; //
    
    GPIOE_PDDR |= (1<<10);//����ѡ���������()
    GPIOE_PDDR |= (1<<11);//����ѡ���������()
    
    GPIOE_PDOR |= (1<<10);//����ѡ���������()
    GPIOE_PDOR |= (1<<11);//����ѡ���������()
    // ====================================================================== //
    /* ֹͣ���� */
    Flash_SPI_PTR->MCR |= SPI_MCR_HALT_MASK; // ֹͣ����
    /* �����Ϣ */
    Flash_SPI_PTR->MCR |= SPI_MCR_CLR_RXF_MASK | SPI_MCR_CLR_TXF_MASK; // ���FIFO
    Flash_SPI_PTR->SR  = SPI_SR_EOQF_MASK 
                       | SPI_SR_TFUF_MASK 
                       | SPI_SR_TFFF_MASK
                       | SPI_SR_RFOF_MASK 
                       | SPI_SR_RFDF_MASK
                      // | SPI_SR_TXRXS_MASK
                      // | SPI_SR_TCF_MASK        // ��շ���
                       ; 
    /* ���û�����Ϣ */
    Flash_SPI_PTR->MCR =  SPI_MCR_MSTR_MASK
                        | SPI_MCR_CONT_SCKE_MASK
                        | SPI_MCR_PCSIS_MASK
                        | SPI_MCR_PCSSE_MASK
                       //==================//
                        | SPI_MCR_ROOE_MASK
                        | SPI_MCR_MTFE_MASK
                       // | SPI_MCR_PCSIS_MASK
                       // | SPI_MCR_DIS_TXF_MASK  // �ر�FIFO
                       // | SPI_MCR_DIS_RXF_MASK  // �ر�FIFO
                       // | SPI_MCR_SMPL_PT(2)    // one system clock 
                        ;
                         //����//�������//�������//Ƭѡλ��
    // ====================================================================== //
    // ʱ���Ƶ // ����Bus Clock => ���ֵ����Ϊ75MHz ������δ���ģ�
    Flash_SPI_PTR->CTAR[0] = SPI_CTAR_FMSZ(7)           // ��λģʽ
                           // =============================================== //
                           | SPI_CTAR_PBR(3)//1
                           | SPI_CTAR_BR(2)//0//1
                          // | SPI_CTAR_DBR_MASK //
                           // =============================================== //
                           // Ӧ��С��֤ 5ns
                           | SPI_CTAR_PCSSCK(1)         // PCS to SCK Delay Prescaler
                           | SPI_CTAR_CSSCK(0)          // PCS to SCK Delay Scaler
                           // =============================================== //
                           // Ӧ��С��֤ 5ns
                           | SPI_CTAR_PASC(1)
                           | SPI_CTAR_ASC(0)
                           // =============================================== //
                           // Ӧ��С��֤ 50ns
                           | SPI_CTAR_PDT(1)
                           | SPI_CTAR_DT(4)  
                           // =============================================== // 
                           | SPI_CTAR_CPHA_MASK 
                           | SPI_CTAR_CPOL_MASK
                           | SPI_CTAR_DBR_MASK
                           ;
    Flash_SPI_PTR->CTAR[1] = SPI_CTAR_FMSZ(15)           // ʮ��λģʽ
                           // =============================================== //
                           | SPI_CTAR_PBR(3)//1
                           | SPI_CTAR_BR(2)//0//1
                          // | SPI_CTAR_DBR_MASK //
                           // =============================================== //
                           // Ӧ��С��֤ 5ns
                           | SPI_CTAR_PCSSCK(1)         // PCS to SCK Delay Prescaler
                           | SPI_CTAR_CSSCK(0)          // PCS to SCK Delay Scaler
                           // =============================================== //
                           // Ӧ��С��֤ 5ns
                           | SPI_CTAR_PASC(1)
                           | SPI_CTAR_ASC(0)
                           // =============================================== //
                           // Ӧ��С��֤ 50ns
                           | SPI_CTAR_PDT(1)
                           | SPI_CTAR_DT(4)  
                           // =============================================== // 
                           | SPI_CTAR_CPHA_MASK 
                           | SPI_CTAR_CPOL_MASK
                           | SPI_CTAR_DBR_MASK
                           ;
    // ====================================================================== //
    Flash_SPI_PTR->MCR &=~SPI_MCR_HALT_MASK; // ʹ�ܴ���
    return 'T';
}


// ========================================================================== //
// 
void v_DSPI_PushTx(uint16 pushNum,uint8 isClkCoun,uint8 isClrCounter,uint8 isEndQueue,uint8 CTARn)
{
    // ====================================================================== //
    // ������ջ
    Flash_SPI_PTR->PUSHR = ( 0
                                 | SPI_PUSHR_CTAS(CTARn)                 //ѡ��CTAR0�Ĵ���
                                 | SPI_PUSHR_PCS(1 << 1)
                                 | (isClrCounter << SPI_PUSHR_CTCNT_SHIFT )
                                 | (isClkCoun << SPI_PUSHR_CONT_SHIFT)                //1Ϊ ����SPI��������
                                 | SPI_PUSHR_TXDATA( pushNum )
                                 | (isEndQueue << SPI_PUSHR_EOQ_SHIFT)
                                 );
}


// ========================================================================== //
uint8 b_DSPI_PoP_PoP(void * popArray,uint8 popArrayCounter,uint8 * popCounter,uint8 CTARn)
{
    // �������� //
    uint8 readCounter = 0;//��ȡ����
    readCounter = Flash_SPI_PTR->SR;
    readCounter = (readCounter & SPI_SR_RXCTR_MASK) >> SPI_SR_RXCTR_SHIFT;
    if(readCounter > popArrayCounter){return 'F';}//�޷�
    //popArrayCounter--;//��Ϊ�����޼�popArrayCounter
    uint16 time = 60000;
    time = 0;//Ϊ�˽��ܽ����޼�
    popArrayCounter = 0;//��ϵ���޼�
    do
    {
        time++;
        if(CTARn)
        {//1
            ((uint16*)(popArray))[popArrayCounter] = Flash_SPI_PTR->POPR;
        }
        else
        {//0 
            ((uint8*)(popArray))[popArrayCounter] = Flash_SPI_PTR->POPR;
        }
        popArrayCounter++;
        readCounter = ((Flash_SPI_PTR->SR & SPI_SR_RXCTR_MASK) >> SPI_SR_RXCTR_SHIFT);
        if(0 == readCounter){Flash_SPI_PTR->SR |= SPI_SR_RFDF_MASK;}
    }
    while(Flash_SPI_PTR->SR & SPI_SR_RFDF_MASK);
    (*popCounter) = time;//���ص�������
    return 'T';
}
// 
uint8 b_DSPI_PoP(void * popArray,uint8 popArrayCounter,uint8 * popCounter,uint8 CTARn)
{
    // �������� //
    uint16 time = 60000;
    while(Flash_SPI_PTR->SR & SPI_SR_TXRXS_MASK)
    {
        if(!(time--)){return 'F';}
    }
    uint8 readCounter = 0;//��ȡ����
    readCounter = Flash_SPI_PTR->SR;
    readCounter = (readCounter & SPI_SR_RXCTR_MASK) >> SPI_SR_RXCTR_SHIFT;
    if(readCounter > popArrayCounter){return 'F';}//�޷�
    //popArrayCounter--;//��Ϊ�����޼�popArrayCounter
    time = 0;//Ϊ�˽��ܽ����޼�
    popArrayCounter = 0;//��ϵ���޼�
    do
    {
        time++;
        if(CTARn)
        {//1
            ((uint16*)(popArray))[popArrayCounter] = Flash_SPI_PTR->POPR;
        }
        else
        {//0 
            ((uint8*)(popArray))[popArrayCounter] = Flash_SPI_PTR->POPR;
        }
        popArrayCounter++;
        readCounter = ((Flash_SPI_PTR->SR & SPI_SR_RXCTR_MASK) >> SPI_SR_RXCTR_SHIFT);
        if(0 == readCounter){Flash_SPI_PTR->SR |= SPI_SR_RFDF_MASK;}
    }
    while(Flash_SPI_PTR->SR & SPI_SR_RFDF_MASK);
    (*popCounter) = time;//���ص�������
    return 'T';
}


uint8 b_DSPI_ClrRx()
{
    uint16 time = 60000;
    while(Flash_SPI_PTR->SR & SPI_SR_TXRXS_MASK)
    {
        if(!(time--)){return 'F';}
    }
    Flash_SPI_PTR->SR |= SPI_SR_RFDF_MASK;
    Flash_SPI_PTR->MCR |= (SPI_MCR_CLR_RXF_MASK);
    return 'T';
}
// ========================================================================== //
// Flash��ʼ��
// дʹ��
uint16 g_Tx[] = {0xFF,0xFF,0xFe,0xFe,0xFF,0xFF,0xFF,0xFF};
uint16 g_Tx_Tx[] = {0xFF,0xFF,0xFe,0xFe,0xFF,0xFF,0xFF,0xFF};
uint8 g_RxCounter = 0;

uint16 g16_1 = 0;
uint16 g16_2 = 0;
uint16 g16_3 = 0;
uint16 g16_4 = 0;
uint16 g16_5 = 0;
uint16 g16_6 = 0;
uint16 g16_7 = 0;
uint16 g16_8 = 0;
uint8 b_Flash_Init()
{
    if('F' == b_DSPI_Init()){return 'F';}
    // ==================== //
    //uint8 error_occur = 0;//�������
    do /* ȷ��оƬ�ͺ� */
    {
        //v_DSPI_SetFrameSize(8);
        uint8 Tx[] = {0x9F,0xFF,0xFF,0xFF};
        uint8 RxCounter = 0;
        v_DSPI_PushTx(Tx[0],1,1,0,CATR0);
        v_DSPI_PushTx(Tx[1],1,0,0,CATR0);
        v_DSPI_PushTx(Tx[2],1,0,0,CATR0);
        v_DSPI_PushTx(Tx[3],0,0,1,CATR0);//���Ϳ�ʼ
        if('F' == b_DSPI_PopRx(Tx,&RxCounter,Rec_u8)){return 'F';}
        if( (sizeof(Tx)/sizeof(Tx[0])) != RxCounter){/*error_occur = 1;*/return 'F';}
        if(0xEF != Tx[1]){return 'F';}
        if(0x40 != Tx[2]){return 'F';}
        if(0x17 != Tx[3]){return 'F';}
        return 'T';
    }
    while(0);
    do // == ״̬λ���� == //
    {
        break;
        v_DSPI_PushTx(0x06,0,1,1,CATR0); // д�Ĵ���ʹ��
        uint8 Tx[] = {0xFF,0xFF};
        uint8 RxCounter = 0;
        if('F' == b_DSPI_ClrRx()){return 'F';}
        // �Ĵ��� 1
        v_DSPI_PushTx(0x35,1,1,0,CATR0); // ���Ĵ���
        v_DSPI_PushTx(0xFF,0,0,1,CATR0);
        if('F' == b_DSPI_PopRx(Tx,&RxCounter,Rec_u8)){return 'F';}
        if(2 != RxCounter){return 'F';}
        if(Tx[1]){return 'F';}
        // �Ĵ��� 2
        v_DSPI_PushTx(0x05,1,1,0,CATR0); // ���Ĵ���
        v_DSPI_PushTx(0xFF,0,0,1,CATR0);
        if('F' == b_DSPI_PopRx(Tx,&RxCounter,Rec_u8)){return 'F';}
        if(2 != RxCounter){return 'F';}
        if(!(Tx[1] & 0x02)){return 'F';}
        v_DSPI_PushTx(0x04,0,1,1,CATR0); // д�Ĵ�����Ч
        if('F' == b_DSPI_ClrRx()){return 'F';}
    }
    while(0);
    do /* ���Բɼ����� */
    {
        //break;
       // uint16 Tx[] = {0xFF,0xFF,0xFF,0xFF};
       // uint8 RxCounter = 0;
     //   if('F' == b_Flash_EnsureWillWrite()){return 'F';} // ȷ�����
     //   v_DSPI_PushTx(0x4400,1,1,0,CATR1);
     //   v_DSPI_PushTx(0x3000,0,0,1,CATR1);
     //   if('F' == b_DSPI_ClrRx()){return 'F';}
     //   if('F' == b_Flash_EnsureRest()){return 'F';} // ȷ�Ͽ���
      //  if('F' == b_Flash_EnsureWillWrite()){return 'F';} // ȷ�����
    /*
      if('F' == b_Flash_EnsureWillWrite()){return 'F';} // ȷ�����
       
        v_DSPI_PushTx(0x4200,1,1,0,CATR1);
        v_DSPI_PushTx(0x3001,1,0,0,CATR1);
        v_DSPI_PushTx(0x1234,1,0,0,CATR1);
        v_DSPI_PushTx(0x4321,1,0,1,CATR1);
        //while( ((Flash_SPI_PTR->SR) & SPI_SR_TXRXS_MASK) );
        v_DSPI_PushTx(0x4200,1,0,0,CATR1);
        v_DSPI_PushTx(0x3001,1,0,0,CATR1);
        v_DSPI_PushTx(0x1234,1,0,0,CATR1);
        v_DSPI_PushTx(0x5678,0,0,1,CATR1);
       // if('F' == b_DSPI_ClrRx()){return 'F';}
        if('F' == b_Flash_EnsureRest()){return 'F';} // ȷ�Ͽ���
        if('F' == b_Flash_EnsureWillWrite()){return 'F';} // ȷ�����
        */
        v_DSPI_PushTx(0x4800,1,0,0,CATR1);     
        v_DSPI_PushTx(0x3000,1,0,0,CATR1);
        v_DSPI_PushTx(0xF111,1,0,0,CATR1);
        v_DSPI_PushTx(0xF111,1,0,1,CATR1);
        while( ((Flash_SPI_PTR->SR) & SPI_SR_TXRXS_MASK) );
        Flash_SPI_PTR->SR |= SPI_SR_EOQF_MASK;
        g16_1 = Flash_SPI_PTR->POPR;
        g16_2 = Flash_SPI_PTR->POPR;
        g16_3 = Flash_SPI_PTR->POPR;
        g16_4 = Flash_SPI_PTR->POPR;
        
        
        v_DSPI_PushTx(0xF111,1,0,0,CATR1);
        v_DSPI_PushTx(0xF111,1,0,0,CATR1);
        v_DSPI_PushTx(0xF111,1,0,0,CATR1);
        v_DSPI_PushTx(0xF111,0,0,1,CATR1);
        while( ((Flash_SPI_PTR->SR) & SPI_SR_TXRXS_MASK) );
        Flash_SPI_PTR->SR |= SPI_SR_EOQF_MASK;
        g16_5 = Flash_SPI_PTR->POPR;
        g16_6 = Flash_SPI_PTR->POPR;
        g16_7 = Flash_SPI_PTR->POPR;
        g16_8 = Flash_SPI_PTR->POPR;
       // if('F' == b_DSPI_PoP_PoP_Rx(g_Tx_Tx,&g_RxCounter,Rec_u16)){return 'F';}
        
       // if('F' == b_Flash_EnsureRest()){return 'F';} // ȷ�Ͽ���
       // if('F' == b_Flash_EnsureWillWrite()){return 'F';} // ȷ�����
        
        //v_DSPI_SetFrameSize(8);
    }
    while(0);
    //if('F' == b_Flash_Write(0,0,0)){return 'F';}
    return 'T';
}

/*
Status Bits
15      suspend status
14      complement protect
13      security register lock bits
12      
11      
10      
9       quad enable
8       status regisrer protect 1
7       status register protect 0
6       sector protect
5       top/bottom protect
4       block protect bits
3
2
1       write enable latch
0       erase or write in progress
*/

// ========================================================================== //
// ��ַ���룺000000h �C 7F FFFF h
// 1 Block => 64K // 128 Blocks => 8M
// 25MHz => 40ns*8*2080 => 665600ns => 665.6 us => 0.6656 ms => 256 bytes
// ========================================================================== //
// ȷ�Ͻ�Ҫ���Զ�ȡ
// ���ܴ���
uint8 b_Flash_EnsureWillWrite()
{
    uint16 time = 60000;
    uint8 Tx[] = {0,0xFF};
    uint8 RxCounter = 0;
    uint8 Bit_Much = (Flash_SPI_PTR->CTAR[0] & SPI_CTAR_FMSZ_MASK)>>SPI_CTAR_FMSZ_SHIFT;
    do
    {
        
        v_DSPI_PushTx(0x06,0,1,1,CTAR0); // д�Ĵ���ʹ��
        if('F' == b_DSPI_ClrRx()){return 'F';}
        v_DSPI_PushTx(0x05,1,1,0,CTAR0); // 
        v_DSPI_PushTx(0xFF,0,0,1,CTAR0); // 
        if('F' == b_DSPI_PopRx(Tx,&RxCounter,Rec_u8)){return 'F';}
        if(!(time--)){return 'F';}
     }
     while(!(Tx[1] & 0x02)); // 1������˳�
     Flash_SPI_PTR->CTAR[0] |= SPI_CTAR_FMSZ(Bit_Much);
     return 'T';
}


// ========================================================================== //
//
// ���ܴ���
uint8 b_Flash_EnsureRest()
{    
    uint16 time = 60000;
    uint8 Tx[] = {0,0};            
    uint8 RxCounter = 0;
    Flash_SPI_PTR->MCR |= (SPI_MCR_CLR_TXF_MASK);
    uint8 Bit_Much = (Flash_SPI_PTR->CTAR[0] & SPI_CTAR_FMSZ_MASK)>>SPI_CTAR_FMSZ_SHIFT;
    do
    {
        //v_DSPI_SetFrameSize(8);
        v_DSPI_PushTx(0x05,1,1,0,CTAR0); // 
        v_DSPI_PushTx(0xFF,0,0,1,CTAR0); // 
        if('F' == b_DSPI_PopRx(Tx,&RxCounter,Rec_u8)){return 'F';}
        if(!(time--)){return 'F';}
    }
    while(Tx[1] & 0x01);//����æʱ����ѭ��
    Flash_SPI_PTR->CTAR[0] |= SPI_CTAR_FMSZ(Bit_Much);
    return 'T';
}