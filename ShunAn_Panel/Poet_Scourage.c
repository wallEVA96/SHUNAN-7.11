#include "MK60F15.h"
#include "ShunAn_Lib.h"
#include "start_ShunAn.h"
#include "BlessedAlien.h"

#include "Poet_Scourage.h"
// 单个解决、能否连续读取？
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
    /* 引脚配置 */
    SIM_SCGC6 |= SIM_SCGC6_DSPI0_MASK; //
    SIM_SCGC5 |= SIM_SCGC5_PORTE_MASK;
    PORTE_BASE_PTR->PCR[0] = 0x00000200u; // 
    PORTE_BASE_PTR->PCR[1] = 0x00000200u; // 
    PORTE_BASE_PTR->PCR[2] = 0x00000200u; // 
    PORTE_BASE_PTR->PCR[3] = 0x00000200u; // 
    
    PORTE_BASE_PTR->PCR[10] = 0x00000100u; // 
    PORTE_BASE_PTR->PCR[11] = 0x00000100u; //
    
    GPIOE_PDDR |= (1<<10);//引脚选择输出方向()
    GPIOE_PDDR |= (1<<11);//引脚选择输出方向()
    
    GPIOE_PDOR |= (1<<10);//引脚选择输出方向()
    GPIOE_PDOR |= (1<<11);//引脚选择输出方向()
    // ====================================================================== //
    /* 停止传输 */
    Flash_SPI_PTR->MCR |= SPI_MCR_HALT_MASK; // 停止传输
    /* 清除信息 */
    Flash_SPI_PTR->MCR |= SPI_MCR_CLR_RXF_MASK | SPI_MCR_CLR_TXF_MASK; // 清空FIFO
    Flash_SPI_PTR->SR  = SPI_SR_EOQF_MASK 
                       | SPI_SR_TFUF_MASK 
                       | SPI_SR_TFFF_MASK
                       | SPI_SR_RFOF_MASK 
                       | SPI_SR_RFDF_MASK
                      // | SPI_SR_TXRXS_MASK
                      // | SPI_SR_TCF_MASK        // 清空发送
                       ; 
    /* 配置基础信息 */
    Flash_SPI_PTR->MCR =  SPI_MCR_MSTR_MASK
                        | SPI_MCR_CONT_SCKE_MASK
                        | SPI_MCR_PCSIS_MASK
                        | SPI_MCR_PCSSE_MASK
                       //==================//
                        | SPI_MCR_ROOE_MASK
                        | SPI_MCR_MTFE_MASK
                       // | SPI_MCR_PCSIS_MASK
                       // | SPI_MCR_DIS_TXF_MASK  // 关闭FIFO
                       // | SPI_MCR_DIS_RXF_MASK  // 关闭FIFO
                       // | SPI_MCR_SMPL_PT(2)    // one system clock 
                        ;
                         //主机//接收清空//传输清空//片选位置
    // ====================================================================== //
    // 时间分频 // 输入Bus Clock => 最大值限制为75MHz （数据未更改）
    Flash_SPI_PTR->CTAR[0] = SPI_CTAR_FMSZ(7)           // 八位模式
                           // =============================================== //
                           | SPI_CTAR_PBR(3)//1
                           | SPI_CTAR_BR(2)//0//1
                          // | SPI_CTAR_DBR_MASK //
                           // =============================================== //
                           // 应最小保证 5ns
                           | SPI_CTAR_PCSSCK(1)         // PCS to SCK Delay Prescaler
                           | SPI_CTAR_CSSCK(0)          // PCS to SCK Delay Scaler
                           // =============================================== //
                           // 应最小保证 5ns
                           | SPI_CTAR_PASC(1)
                           | SPI_CTAR_ASC(0)
                           // =============================================== //
                           // 应最小保证 50ns
                           | SPI_CTAR_PDT(1)
                           | SPI_CTAR_DT(4)  
                           // =============================================== // 
                           | SPI_CTAR_CPHA_MASK 
                           | SPI_CTAR_CPOL_MASK
                           | SPI_CTAR_DBR_MASK
                           ;
    Flash_SPI_PTR->CTAR[1] = SPI_CTAR_FMSZ(15)           // 十六位模式
                           // =============================================== //
                           | SPI_CTAR_PBR(3)//1
                           | SPI_CTAR_BR(2)//0//1
                          // | SPI_CTAR_DBR_MASK //
                           // =============================================== //
                           // 应最小保证 5ns
                           | SPI_CTAR_PCSSCK(1)         // PCS to SCK Delay Prescaler
                           | SPI_CTAR_CSSCK(0)          // PCS to SCK Delay Scaler
                           // =============================================== //
                           // 应最小保证 5ns
                           | SPI_CTAR_PASC(1)
                           | SPI_CTAR_ASC(0)
                           // =============================================== //
                           // 应最小保证 50ns
                           | SPI_CTAR_PDT(1)
                           | SPI_CTAR_DT(4)  
                           // =============================================== // 
                           | SPI_CTAR_CPHA_MASK 
                           | SPI_CTAR_CPOL_MASK
                           | SPI_CTAR_DBR_MASK
                           ;
    // ====================================================================== //
    Flash_SPI_PTR->MCR &=~SPI_MCR_HALT_MASK; // 使能传输
    return 'T';
}


// ========================================================================== //
// 
void v_DSPI_PushTx(uint16 pushNum,uint8 isClkCoun,uint8 isClrCounter,uint8 isEndQueue,uint8 CTARn)
{
    // ====================================================================== //
    // 数据入栈
    Flash_SPI_PTR->PUSHR = ( 0
                                 | SPI_PUSHR_CTAS(CTARn)                 //选择CTAR0寄存器
                                 | SPI_PUSHR_PCS(1 << 1)
                                 | (isClrCounter << SPI_PUSHR_CTCNT_SHIFT )
                                 | (isClkCoun << SPI_PUSHR_CONT_SHIFT)                //1为 传输SPI最后的数据
                                 | SPI_PUSHR_TXDATA( pushNum )
                                 | (isEndQueue << SPI_PUSHR_EOQ_SHIFT)
                                 );
}


// ========================================================================== //
uint8 b_DSPI_PoP_PoP(void * popArray,uint8 popArrayCounter,uint8 * popCounter,uint8 CTARn)
{
    // 接收问题 //
    uint8 readCounter = 0;//读取计数
    readCounter = Flash_SPI_PTR->SR;
    readCounter = (readCounter & SPI_SR_RXCTR_MASK) >> SPI_SR_RXCTR_SHIFT;
    if(readCounter > popArrayCounter){return 'F';}//限幅
    //popArrayCounter--;//因为数组修剪popArrayCounter
    uint16 time = 60000;
    time = 0;//为了接受进行修剪
    popArrayCounter = 0;//常系数修剪
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
    (*popCounter) = time;//返回弹出个数
    return 'T';
}
// 
uint8 b_DSPI_PoP(void * popArray,uint8 popArrayCounter,uint8 * popCounter,uint8 CTARn)
{
    // 接收问题 //
    uint16 time = 60000;
    while(Flash_SPI_PTR->SR & SPI_SR_TXRXS_MASK)
    {
        if(!(time--)){return 'F';}
    }
    uint8 readCounter = 0;//读取计数
    readCounter = Flash_SPI_PTR->SR;
    readCounter = (readCounter & SPI_SR_RXCTR_MASK) >> SPI_SR_RXCTR_SHIFT;
    if(readCounter > popArrayCounter){return 'F';}//限幅
    //popArrayCounter--;//因为数组修剪popArrayCounter
    time = 0;//为了接受进行修剪
    popArrayCounter = 0;//常系数修剪
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
    (*popCounter) = time;//返回弹出个数
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
// Flash初始化
// 写使能
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
    //uint8 error_occur = 0;//错误计数
    do /* 确认芯片型号 */
    {
        //v_DSPI_SetFrameSize(8);
        uint8 Tx[] = {0x9F,0xFF,0xFF,0xFF};
        uint8 RxCounter = 0;
        v_DSPI_PushTx(Tx[0],1,1,0,CATR0);
        v_DSPI_PushTx(Tx[1],1,0,0,CATR0);
        v_DSPI_PushTx(Tx[2],1,0,0,CATR0);
        v_DSPI_PushTx(Tx[3],0,0,1,CATR0);//传送开始
        if('F' == b_DSPI_PopRx(Tx,&RxCounter,Rec_u8)){return 'F';}
        if( (sizeof(Tx)/sizeof(Tx[0])) != RxCounter){/*error_occur = 1;*/return 'F';}
        if(0xEF != Tx[1]){return 'F';}
        if(0x40 != Tx[2]){return 'F';}
        if(0x17 != Tx[3]){return 'F';}
        return 'T';
    }
    while(0);
    do // == 状态位控制 == //
    {
        break;
        v_DSPI_PushTx(0x06,0,1,1,CATR0); // 写寄存器使能
        uint8 Tx[] = {0xFF,0xFF};
        uint8 RxCounter = 0;
        if('F' == b_DSPI_ClrRx()){return 'F';}
        // 寄存器 1
        v_DSPI_PushTx(0x35,1,1,0,CATR0); // 读寄存器
        v_DSPI_PushTx(0xFF,0,0,1,CATR0);
        if('F' == b_DSPI_PopRx(Tx,&RxCounter,Rec_u8)){return 'F';}
        if(2 != RxCounter){return 'F';}
        if(Tx[1]){return 'F';}
        // 寄存器 2
        v_DSPI_PushTx(0x05,1,1,0,CATR0); // 读寄存器
        v_DSPI_PushTx(0xFF,0,0,1,CATR0);
        if('F' == b_DSPI_PopRx(Tx,&RxCounter,Rec_u8)){return 'F';}
        if(2 != RxCounter){return 'F';}
        if(!(Tx[1] & 0x02)){return 'F';}
        v_DSPI_PushTx(0x04,0,1,1,CATR0); // 写寄存器无效
        if('F' == b_DSPI_ClrRx()){return 'F';}
    }
    while(0);
    do /* 测试采集程序 */
    {
        //break;
       // uint16 Tx[] = {0xFF,0xFF,0xFF,0xFF};
       // uint8 RxCounter = 0;
     //   if('F' == b_Flash_EnsureWillWrite()){return 'F';} // 确认清除
     //   v_DSPI_PushTx(0x4400,1,1,0,CATR1);
     //   v_DSPI_PushTx(0x3000,0,0,1,CATR1);
     //   if('F' == b_DSPI_ClrRx()){return 'F';}
     //   if('F' == b_Flash_EnsureRest()){return 'F';} // 确认空闲
      //  if('F' == b_Flash_EnsureWillWrite()){return 'F';} // 确认清除
    /*
      if('F' == b_Flash_EnsureWillWrite()){return 'F';} // 确认清除
       
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
        if('F' == b_Flash_EnsureRest()){return 'F';} // 确认空闲
        if('F' == b_Flash_EnsureWillWrite()){return 'F';} // 确认清除
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
        
       // if('F' == b_Flash_EnsureRest()){return 'F';} // 确认空闲
       // if('F' == b_Flash_EnsureWillWrite()){return 'F';} // 确认清除
        
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
// 地址输入：000000h – 7F FFFF h
// 1 Block => 64K // 128 Blocks => 8M
// 25MHz => 40ns*8*2080 => 665600ns => 665.6 us => 0.6656 ms => 256 bytes
// ========================================================================== //
// 确认将要可以读取
// 功能代码
uint8 b_Flash_EnsureWillWrite()
{
    uint16 time = 60000;
    uint8 Tx[] = {0,0xFF};
    uint8 RxCounter = 0;
    uint8 Bit_Much = (Flash_SPI_PTR->CTAR[0] & SPI_CTAR_FMSZ_MASK)>>SPI_CTAR_FMSZ_SHIFT;
    do
    {
        
        v_DSPI_PushTx(0x06,0,1,1,CTAR0); // 写寄存器使能
        if('F' == b_DSPI_ClrRx()){return 'F';}
        v_DSPI_PushTx(0x05,1,1,0,CTAR0); // 
        v_DSPI_PushTx(0xFF,0,0,1,CTAR0); // 
        if('F' == b_DSPI_PopRx(Tx,&RxCounter,Rec_u8)){return 'F';}
        if(!(time--)){return 'F';}
     }
     while(!(Tx[1] & 0x02)); // 1则可以退出
     Flash_SPI_PTR->CTAR[0] |= SPI_CTAR_FMSZ(Bit_Much);
     return 'T';
}


// ========================================================================== //
//
// 功能代码
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
    while(Tx[1] & 0x01);//当不忙时跳出循环
    Flash_SPI_PTR->CTAR[0] |= SPI_CTAR_FMSZ(Bit_Much);
    return 'T';
}