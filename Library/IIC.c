#include "arm_cm4.h"
#include "MK60F15.h"
#include "ShunAn_Lib.h"
#include "start_ShunAn.h"

#include "IIC.h"

/***********************************************************************************************************/
/***********************************************************************************************************/
/***********************************************************************************************************/
/***********************************************************************************************************/
/***********************************************************************************************************/
// K60 硬件实现 IIC
/******************************************************************************/
// IIC_Start
#define IIC_Start(IIC_ADDR)             IIC_ADDR->C1 |= I2C_C1_TX_MASK;\
                                        IIC_ADDR->C1 |= I2C_C1_MST_MASK
/******************************************************************************/
// IIC_Stop
#define IIC_Stop(IIC_ADDR)              IIC_ADDR->C1 &= ~I2C_C1_MST_MASK;\
                                        IIC_ADDR->C1 &= ~I2C_C1_TX_MASK; \
                                        while(0!=(IIC_ADDR->S & I2C_S_BUSY_MASK)){}
/******************************************************************************/
// IIC_Wait
#define IIC_Wait(IIC_ADDR)              {uint32 delay = 120000;\
                                        while((0==(IIC_ADDR->S & I2C_S_IICIF_MASK))&&(--delay)){}\
                                        if(0==delay){return 'F';}\
                                        IIC_ADDR->S |= I2C_S_IICIF_MASK;}
/******************************************************************************/
// 初始化 IIC 为通用 400k
void v_IIC_Init()
{
    // 模块与引脚开启
    SIM_SCGC4 |= SIM_SCGC4_IIC0_MASK; // SIM_SCGC4_IIC0_MASK
    SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
    PORTB_BASE_PTR->PCR[2] = 0x00000200u; // SCL
    PORTB_BASE_PTR->PCR[3] = 0x00000200u; // SDA
    
    I2C0_BASE_PTR->F = 0; // 75MHz 分频45
    I2C0_BASE_PTR->C1 =  I2C_C1_IICEN_MASK; // 开启IIC模式 
}

/******************************************************************************/
// 选定目标 // Mode => Write 0 / Read 1
void v_IIC_Start_Transmission(I2C_MemMapPtr IIC_Addr ,uint8 SlaveID ,uint8 Mode)
{
    SlaveID = (SlaveID << 1)|Mode;
    IIC_Addr->C1 |= I2C_C1_TX_MASK;IIC_Addr->C1 |= I2C_C1_MST_MASK; // Start
    IIC_Addr->D = SlaveID;
}

/******************************************************************************/
// 写寄存器数值
uint8 u8_IIC_WriteReg(I2C_MemMapPtr IIC_Addr ,uint8 SlaveID ,uint8 Num ,uint8 u8RegAddress)
{
    v_IIC_Start_Transmission(IIC_Addr ,SlaveID ,0);
    IIC_Wait(IIC_Addr);
    
    IIC_Addr->D = u8RegAddress;
    IIC_Wait(IIC_Addr);

    IIC_Addr->D = Num;
    IIC_Wait(IIC_Addr);

    IIC_Stop(IIC_Addr);
    
    //uint8 time = 200;while(time--){asm("nop");};
    return 0;
}
/******************************************************************************/
// 读取寄存器数值
uint8 u8_IIC_ReadReg(I2C_MemMapPtr IIC_Addr ,uint8 SlaveID ,uint8 * Num ,uint8 u8RegAddress)
{
    v_IIC_Start_Transmission(IIC_Addr ,SlaveID ,0);
    IIC_Wait(IIC_Addr);
    
    IIC_Addr->D = u8RegAddress;
    IIC_Wait(IIC_Addr);
    
    IIC_Addr->C1 |= I2C_C1_RSTA_MASK; // repeated start
    
    SlaveID = (SlaveID << 1)|0x01;IIC_Addr->D = SlaveID;
    IIC_Wait(IIC_Addr);
    
    IIC_Addr->C1 &= (~I2C_C1_TX_MASK);
    IIC_Addr->C1 |= I2C_C1_TXAK_MASK;
    
    (*Num) = IIC_Addr->D; // Dummy read
    IIC_Wait(IIC_Addr);
    
    IIC_Stop(IIC_Addr);
    
    (*Num) = IIC_Addr->D;
    
    return 'T';
}
