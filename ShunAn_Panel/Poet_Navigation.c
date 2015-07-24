#include "arm_cm4.h"
#include "MK60F15.h"
#include "ShunAn_Lib.h"
#include "start_ShunAn.h"

#include "IIC.h"

#include "Poet_Navigation.h"
//======================================================================================================//
//======================================================================================================//
//======================================================================================================//
//======================================================================================================//
// 加速度的世界
//============================================================================//
// FXLS8471QR1 - 加速度计
// 6.1号正式更新
uint8 b_Accel_Init()
{
    // 模块与引脚开启
    SIM_SCGC4 |= SIM_SCGC4_IIC0_MASK; // SIM_SCGC4_IIC0_MASK
    SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
    PORTB_BASE_PTR->PCR[0] = 0x00000200u; // SCL
    PORTB_BASE_PTR->PCR[1] = 0x00000200u; // SDA
    
    I2C0_BASE_PTR->F = 0; //0x16; // 75MHz 分频45 0x21 => 400kHz
    I2C0_BASE_PTR->C1 = I2C_C1_IICEN_MASK; // 开启IIC模式
    
    I2C_MemMapPtr iic_num = I2C0_BASE_PTR;
    // 初始化过程
    uint8 returnNum = 0;
    // ====================================================================== //
    /* 目标确认 */
    if('F' == u8_IIC_ReadReg(iic_num ,ACCELreg_IIC_ADDR_LOW_1E ,&returnNum , ACCELreg_WHO_AM_I_0D)){return 'F';}; // 标定加速度计
    if(ACCEL_WHOAMI_VAR != returnNum){return 'F';} // 目标确认
    // ====================================================================== //
    /* FIFO 配置 */
    if('F' == u8_IIC_WriteReg(iic_num ,ACCELreg_IIC_ADDR_LOW_1E ,0 , 0x09)){return 'F';}; //  //
    if('F' == u8_IIC_ReadReg(iic_num ,ACCELreg_IIC_ADDR_LOW_1E ,&returnNum , 0x09)){return 'F';}; // 标定加速度计
    if(0 != returnNum){return 'F';} //
    // ====================================================================== //
    /* 传感器数据配置 */ // ctrl 0x0E
    returnNum = 0;
    if('F' == u8_IIC_WriteReg(iic_num ,ACCELreg_IIC_ADDR_LOW_1E ,0|0 , 0x0E)){return 'F';}; // 关闭滤波 // 最大量程
    if('F' == u8_IIC_ReadReg(iic_num ,ACCELreg_IIC_ADDR_LOW_1E ,&returnNum , 0x0E)){return 'F';}; // 标定加速度计
    if(0 != returnNum){return 'F';} //
    // ====================================================================== //
    /* 高通滤波 */
    if('F' == u8_IIC_WriteReg(iic_num ,ACCELreg_IIC_ADDR_LOW_1E ,0 , 0x0F)){return 'F';};
    if('F' == u8_IIC_ReadReg(iic_num ,ACCELreg_IIC_ADDR_LOW_1E ,&returnNum , 0x0F)){return 'F';}; // 标定加速度计
    if(0 != returnNum){return 'F';} //    
    
    // ====================================================================== //
    /* 芯片控制 */ // ctrl 0x2A -> 0x2E
    if('F' == u8_IIC_WriteReg(iic_num ,ACCELreg_IIC_ADDR_LOW_1E ,(1<<3)|3 , 0x2A)){return 'F';}; //  // 
    if('F' == u8_IIC_ReadReg(iic_num ,ACCELreg_IIC_ADDR_LOW_1E ,&returnNum , 0x2A)){return 'F';}; // 标定加速度计
    if(3 != returnNum){return 'F';} //    
    if('F' == u8_IIC_WriteReg(iic_num ,ACCELreg_IIC_ADDR_LOW_1E ,0 , 0x2B)){return 'F';}; //  //
    if('F' == u8_IIC_ReadReg(iic_num ,ACCELreg_IIC_ADDR_LOW_1E ,&returnNum , 0x2B)){return 'F';}; // 标定加速度计
    if(0 != returnNum){return 'F';} //
    /*
    if('F' == u8_IIC_WriteReg(iic_num ,ACCELreg_IIC_ADDR_LOW_1E ,0 , 0x2C)){return 'F';}; //  // 
    if('F' == u8_IIC_WriteReg(iic_num ,ACCELreg_IIC_ADDR_LOW_1E ,0 , 0x2D)){return 'F';}; //  // 
    if('F' == u8_IIC_WriteReg(iic_num ,ACCELreg_IIC_ADDR_LOW_1E ,0 , 0x2E)){return 'F';}; //  // 
    */
    

    // 
    return 'T';
}

// 88us
uint8 b_getAccelVar(s_Navigation * Navigation_ptr)
{
    uint8 temp_H = 0; uint8 temp_L = 0;
    if(('F' == u8_IIC_ReadReg(I2C0_BASE_PTR,ACCELreg_IIC_ADDR_LOW_1E,&temp_H,0x01))||
       ('F' == u8_IIC_ReadReg(I2C0_BASE_PTR,ACCELreg_IIC_ADDR_LOW_1E,&temp_L,0x02)))
    {return 'F';}
    Navigation_ptr->s_Accel.x = ((temp_H << 8)|temp_L);
    Navigation_ptr->s_Accel.x /= 4;
    temp_H = 0; temp_L = 0;
    if(('F' == u8_IIC_ReadReg(I2C0_BASE_PTR,ACCELreg_IIC_ADDR_LOW_1E,&temp_H,0x03))||
       ('F' == u8_IIC_ReadReg(I2C0_BASE_PTR,ACCELreg_IIC_ADDR_LOW_1E,&temp_L,0x04)))
    {return 'F';}
    Navigation_ptr->s_Accel.y = ((temp_H << 8)|temp_L);
    Navigation_ptr->s_Accel.y /= 4;
    temp_H = 0; temp_L = 0;
    if(('F' == u8_IIC_ReadReg(I2C0_BASE_PTR,ACCELreg_IIC_ADDR_LOW_1E,&temp_H,0x05))||
       ('F' == u8_IIC_ReadReg(I2C0_BASE_PTR,ACCELreg_IIC_ADDR_LOW_1E,&temp_L,0x06)))
    {return 'F';}
    Navigation_ptr->s_Accel.z = ((temp_H << 8)|temp_L);
    Navigation_ptr->s_Accel.z /= 4;
    return 'T';
}

//======================================================================================================//
//======================================================================================================//
//======================================================================================================//
//======================================================================================================//
// 陀螺的世界
//======================================================================================================//
/* b_Gyro_Init */ 
#define DEreg_GYRO_WHO_AM_I_0F                          0x0F
#define DEreg_GYRO_CTRL1_20                             0x20
#define DEreg_GYRO_CTRL2_21                             0x21
#define DEreg_GYRO_CTRL3_22                             0x22
#define DEreg_GYRO_CTRL4_23                             0x23
#define DEreg_GYRO_CTRL5_24                             0x24

#define DEreg_GYRO_OutxL_28                             0x28
#define DEreg_GYRO_OutxH_29                             0x29
#define DEreg_GYRO_OutyL_30                             0x2A
#define DEreg_GYRO_OutyH_31                             0x2B
#define DEreg_GYRO_OutzL_32                             0x2C
#define DEreg_GYRO_OutzH_33                             0x2D

#define DEadr_GYRO_ADDR_LOW_6A                          0x6A // CS == 1 // _HIGH => CS + 1

uint8 b_Gyro_Init()
{
    // 模块与引脚开启
    SIM_SCGC4 |= SIM_SCGC4_IIC0_MASK; // SIM_SCGC4_IIC0_MASK
    SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
    PORTB_BASE_PTR->PCR[0] = 0x00000200u; // SCL
    PORTB_BASE_PTR->PCR[1] = 0x00000200u; // SDA
    
    I2C0_BASE_PTR->F = 0; //0x16; // 75MHz 分频45
    I2C0_BASE_PTR->C1 = I2C_C1_IICEN_MASK; // 开启IIC模式
    
    I2C_MemMapPtr iic_num = I2C0_BASE_PTR;
    // 初始化过程
    uint8 returnNum = 0;
    
    // ======================================= //
    if('F' == u8_IIC_ReadReg(iic_num ,DEadr_GYRO_ADDR_LOW_6A ,&returnNum , DEreg_GYRO_WHO_AM_I_0F))
    {return 'F';} // 标定加速度计
    if(0xD7 != returnNum){return 'F';} // 目标确认
    // ======================================= //
    if('F' == u8_IIC_WriteReg(iic_num ,DEadr_GYRO_ADDR_LOW_6A , 0x0F , DEreg_GYRO_CTRL1_20))
    {return 'F';} // 控制1
    returnNum = 0;
    if('F' == u8_IIC_ReadReg(iic_num ,DEadr_GYRO_ADDR_LOW_6A ,&returnNum , DEreg_GYRO_CTRL1_20)){return 'F';} // 输出控制
    if(0x0F != returnNum){return 'F';} // 目标确认
    // ======================================= //
    if('F' == u8_IIC_WriteReg(iic_num ,DEadr_GYRO_ADDR_LOW_6A , 0x29 , DEreg_GYRO_CTRL2_21))
    {return 'F';} // 控制2
    returnNum = 0;
    if('F' == u8_IIC_ReadReg(iic_num ,DEadr_GYRO_ADDR_LOW_6A ,&returnNum , DEreg_GYRO_CTRL2_21)){return 'F';} // 输出控制
    if(0x29 != returnNum){return 'F';} // 目标确认
    // ======================================= //
    if('F' == u8_IIC_WriteReg(iic_num ,DEadr_GYRO_ADDR_LOW_6A , 0x20 , DEreg_GYRO_CTRL4_23))
    {return 'F';} // 控制4
    returnNum = 0;
    if('F' == u8_IIC_ReadReg(iic_num ,DEadr_GYRO_ADDR_LOW_6A ,&returnNum , DEreg_GYRO_CTRL4_23)){return 'F';} // 幅值控制
    if(0x20 != returnNum){return 'F';} // 目标确认
    // ======================================= //
    if('F' == u8_IIC_WriteReg(iic_num ,DEadr_GYRO_ADDR_LOW_6A , 0x00 , DEreg_GYRO_CTRL5_24))
    {return 'F';} // 控制5
    returnNum = 0;
    if('F' == u8_IIC_ReadReg(iic_num ,DEadr_GYRO_ADDR_LOW_6A ,&returnNum , DEreg_GYRO_CTRL5_24)){return 'F';} // 幅值控制
    if(0x00 != returnNum){return 'F';} // 目标确认
    // ======================================= //
    
    return 'T';
}

// 0x16 17500 us / 50 => 350 us
// 0x12 11101 us
// 0x10 8450  us
// 0x02 5000  us
// 0x00 4500  us
uint8 b_getGyroVar(s_Gyro * Gyro_ptr)
{
    uint8 temp_H = 0; uint8 temp_L = 0;
    if(('F' == u8_IIC_ReadReg(I2C0_BASE_PTR,DEadr_GYRO_ADDR_LOW_6A,&temp_H,DEreg_GYRO_OutxH_29))||
       ('F' == u8_IIC_ReadReg(I2C0_BASE_PTR,DEadr_GYRO_ADDR_LOW_6A,&temp_L,DEreg_GYRO_OutxL_28)))
    {return 'F';}
    Gyro_ptr->x = ((temp_H << 8)|temp_L);
    temp_H = 0; temp_L = 0;
    if(('F' == u8_IIC_ReadReg(I2C0_BASE_PTR,DEadr_GYRO_ADDR_LOW_6A,&temp_H,DEreg_GYRO_OutyH_31))||
       ('F' == u8_IIC_ReadReg(I2C0_BASE_PTR,DEadr_GYRO_ADDR_LOW_6A,&temp_L,DEreg_GYRO_OutyL_30)))
    {return 'F';}
    Gyro_ptr->y = ((temp_H << 8)|temp_L);
    temp_H = 0; temp_L = 0;
    if(('F' == u8_IIC_ReadReg(I2C0_BASE_PTR,DEadr_GYRO_ADDR_LOW_6A,&temp_H,DEreg_GYRO_OutzH_33))||
       ('F' == u8_IIC_ReadReg(I2C0_BASE_PTR,DEadr_GYRO_ADDR_LOW_6A,&temp_L,DEreg_GYRO_OutzL_32)))
    {return 'F';}
    Gyro_ptr->z = ((temp_H << 8)|temp_L);
    
    //Gyro_ptr->x = Gyro_ptr->x;// >> 1;
    //Gyro_ptr->y = Gyro_ptr->y;// >> 1;
    //Gyro_ptr->z = Gyro_ptr->z;// >> 1;
    return 'T';
}



/*惯性导航*/
//角速度 => 相对惯性空间的角速度
//加速度 => 绝对加速度

uint8 b_Navigation_Init()
{
    //导航传感器初始化
    SIM_SCGC4 |= SIM_SCGC4_IIC0_MASK; // SIM_SCGC4_IIC0_MASK
    SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK; // 引脚
    PORTB_BASE_PTR->PCR[0] = 0x00000200u; // SCL
    PORTB_BASE_PTR->PCR[1] = 0x00000200u; // SDA
    //中断配置
    
    PORTB_BASE_PTR->PCR[2] = PORT_PCR_MUX(1);//GPIO
    PORTB_BASE_PTR->PCR[3] = PORT_PCR_MUX(1);//GPIO
    PORTB_BASE_PTR->PCR[4] = PORT_PCR_MUX(1);//GPIO
    PORTB_BASE_PTR->PCR[5] = PORT_PCR_MUX(1);//GPIO
    
    PTB_BASE_PTR->PDDR &=~ (1 << 2);
    PTB_BASE_PTR->PDDR &=~ (1 << 3);
    PTB_BASE_PTR->PDDR &=~ (1 << 4);
    PTB_BASE_PTR->PDDR &=~ (1 << 5);
    
    I2C0_BASE_PTR->F = 0x16; //0x16; // 75MHz 分频45
    I2C0_BASE_PTR->C1 = I2C_C1_IICEN_MASK; // 开启IIC模式
    
    const I2C_MemMapPtr iic_num = I2C0_BASE_PTR; // 方便更改
    // 初始化过程
    uint8 returnNum = 0;
    
    // ====================================================================== //
    /* 目标确认 */
    if('F' == u8_IIC_ReadReg(iic_num ,ACCELreg_IIC_ADDR_LOW_1E ,&returnNum , ACCELreg_WHO_AM_I_0D))
    {return 'F';}; // 确定加速度计
    if(ACCEL_WHOAMI_VAR != returnNum){return 'F';} // 目标确认
    if('F' == u8_IIC_ReadReg(iic_num ,DEadr_GYRO_ADDR_LOW_6A ,&returnNum , DEreg_GYRO_WHO_AM_I_0F))
    {return 'F';} // 确定陀螺仪
    if(0xD7 != returnNum){return 'F';} // 目标确认
    
    
    // ====================================================================== //
    /* 对寄存器进行更改 */ // 要开启LowODR
    if('F' == u8_IIC_WriteReg(iic_num ,DEadr_GYRO_ADDR_LOW_6A , 0xCF , DEreg_GYRO_CTRL1_20))
    {return 'F';} // 控制确定 = 20ms控制周期，故选择ODR = 50Hz => Cut-Off 16.6Hz
    if('F' == u8_IIC_WriteReg(iic_num ,DEadr_GYRO_ADDR_LOW_6A , 0x29 , DEreg_GYRO_CTRL2_21))
    {return 'F';} // Normal Mode // 高通滤波截止频率：0.005 Hz
    if('F' == u8_IIC_WriteReg(iic_num ,DEadr_GYRO_ADDR_LOW_6A , 0x08 , DEreg_GYRO_CTRL3_22))
    {return 'F';} // Date Ready on DRDY/INT2 pin.
    //if('F' == u8_IIC_WriteReg(iic_num ,DEadr_GYRO_ADDR_LOW_6A , 0x00 , DEreg_GYRO_CTRL4_23))
    //{return 'F';} //
    if('F' == u8_IIC_WriteReg(iic_num ,DEadr_GYRO_ADDR_LOW_6A , 0x10 , DEreg_GYRO_CTRL5_24))
    {return 'F';} // 未配置好
    if('F' == u8_IIC_WriteReg(iic_num ,DEadr_GYRO_ADDR_LOW_6A , 0x01 , 0x39))
    {return 'F';} // 低速使能
    
    
    
    return 'T';
}