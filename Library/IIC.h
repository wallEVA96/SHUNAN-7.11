#ifndef __HardWare_IIC_
#define __HardWare_IIC_

void v_IIC_Init();
//void v_SCCB_Init();

//============================================================================//
uint8 u8_IIC_WriteReg(I2C_MemMapPtr IIC_Addr ,uint8 SlaveID ,uint8 Num ,uint8 u8RegAddress);
uint8 u8_IIC_ReadReg(I2C_MemMapPtr IIC_Addr ,uint8 SlaveID ,uint8 * Num ,uint8 u8RegAddress);
//============================================================================//




#endif