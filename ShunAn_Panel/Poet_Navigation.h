#ifndef __POET_NAVIGATION_
#define __POET_NAVIGATION_

//============================================================================//
// FXLS8471QR1 - 加速度计
// FXLS8471Q I2C address
// #define ACCEL_Name           FXLS8471Q
#define ACCELreg_IIC_ADDR_LOW_1E                              0x1E    // with pins SA0=0, SA1=0
#define ACCELreg_WHO_AM_I_0D                                  0x0D    // 自我确认模式


// 1 - 6 => Var
#define ACCEL_Int_Enable        0x2D    // CTRL_REG4
#define ACCEL_IntPin_Enable     0x2E    // CTRL_REG5

#define ACCEL_WHOAMI_VAR        0x6A

typedef
struct _Accel
{
    uint16 x;
    uint16 y;
    uint16 z;
}
s_Accel;

typedef
struct _Navigation
{
    struct
    {
        sint16 x;
        sint16 y;
        sint16 z;
    }
    s_Accel;
}
s_Navigation;
// ========================================================================== //
/*
自由响应 => 0.25 Hz 
*/
uint8 b_Accel_Init(); // 加速度计初始化
uint8 b_getAccelVar(s_Navigation *); // 获取加速度数值

//uint8 b_Accel_DSPI_Init();
//uint8 b_Accel_RxByte(uint8 * returnNum);
//uint8 b_Accel_TxByte(uint8 returnNum,uint8 coun);

typedef
struct _Gyro
{
    sint16 x;
    sint16 y;
    sint16 z;
}
s_Gyro;

uint8 b_Gyro_Init(); // 陀螺仪初始化
uint8 b_getGyrVar(s_Gyro *);

uint8 b_Navigation_Init();//惯性导航器件初始化

#endif