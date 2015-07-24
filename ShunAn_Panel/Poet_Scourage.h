#ifndef __POET_FLASH
#define __POET_FLASH

// ========================================================================== //
//

// ========================================================================== //
//
uint8 b_DSPI_Init();
#define CATR0   0
#define CATR1   1
#define CTAR0   0
#define CTAR1   1
#define Rec_u8  0
#define Rec_u16 1

void v_DSPI_PushTx(uint16 pushNum,uint8 isClkCoun,uint8 isQueueFirst,uint8 isQueueEnd,uint8 CTARn);//数据入栈

//#define v_DSPI_PushTx(pushNum,isClkCoun,isClrCounter,isEndQueue)        v_DSPI_PushTx(pushNum,isClkCoun,isClrCounter,isEndQueue,0) 
uint8 b_DSPI_PoP_PoP(void * popArray,uint8 popArrayCounter,uint8 * popCounter,uint8 CTARn);
#define b_DSPI_PoP_PoP_Rx(popArray,popCounter,CTARn)       b_DSPI_PoP_PoP(popArray,(sizeof(popArray)/sizeof(popArray[0])),popCounter,CTARn) // 正确用法

uint8 b_DSPI_PoP(void * popArray,uint8 popArrayCounter,uint8 * popCounter,uint8 CTARn);//数据出栈
#define b_DSPI_PopRx(popArray,popCounter,CTARn)       b_DSPI_PoP(popArray,(sizeof(popArray)/sizeof(popArray[0])),popCounter,CTARn) // 正确用法
uint8 b_DSPI_ClrRx();
// ========================================================================== //
//
uint8 b_Flash_Init();
uint8 b_Flash_Write(uint32 wr_addr,uint8 * wr_array_ptr,uint8 array_watersize);//写段
uint8 b_Flash_Read();//读段

uint8 b_Flash_EnsureWillWrite();
uint8 b_Flash_EnsureRest();

#endif