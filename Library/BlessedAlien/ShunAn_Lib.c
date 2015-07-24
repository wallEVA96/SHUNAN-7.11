// 单精度转换为整形
#include "arm_cm4.h"
#include "MK60F15.h"
#include "ShunAn_Lib.h"
#include "start_ShunAn.h"

const unsigned short int number_ServoGraduated = 400;

signed long int RoundToInt32 (float dval)
{
    signed long int val = 0;
    static float magic = 12582912.0;
    dval += magic;
    val = *(signed long int*)&dval;
    return val;
}
// 双精度转换为整形
signed long int RoundToInt64 (double dval)
{
    signed long int val = 0;
    static double magic = 6755399441055744.0;
    dval += magic;
    val = *(signed long int*)&dval;
    return val;
}
// 延迟函数
/*
void vDelayMs( unsigned int MuchMs )
{
  	unsigned int pool_Much = 0;  
	unsigned int pool_ms = 0;
	for(pool_Much=0;pool_Much<MuchMs;pool_Much++)
	{
          for(pool_ms=0;pool_ms<19100;pool_ms++);//约为1ms延迟
	}
}
*/
// 平方根
// 测试时间 0.6 us / 2 => 0.3 us // 开启浮点
// 77ms / 10000 / 2 // 关闭浮点
// 精度约为后五位
// 标准库 sqrt 98 ms
float SquareRootFloat(float number)
{
    long i;
    float x, y;
    const float f = 1.5F;
    x = number * 0.5F;
    y  = number;
    i  = * ( long * ) &y;
    i  = 0x5f3759df - ( i >> 1 ); // 取合理初值 // 0x5f375a86
    y  = * ( float * ) &i;
    y  = y * ( f - ( x * y * y ) ); // 可以适当增加 // y 为 根号下(number)
    y  = y * ( f - ( x * y * y ) );
    y  = y * ( f - ( x * y * y ) );
    return number * y;
}

float SquareRootBedivFloat(float number)
{
    long i;
    float x, y;
    const float f = 1.5F;
    x = number * 0.5F;
    y  = number;
    i  = * ( long * ) &y;
    i  = 0x5f3759df - ( i >> 1 ); // 取合理初值 // 0x5f375a86
    y  = * ( float * ) &i;
    y  = y * ( f - ( x * y * y ) ); // 可以适当增加 // y 为 根号下(number)
    y  = y * ( f - ( x * y * y ) );
    y  = y * ( f - ( x * y * y ) );
    return y;
}

void v_Disable_ControlProcess()
{
    m_system.control_isDone = 0;//关闭
}
/*
//#pragma inline
sint16 _camera_10_to_8( sint16 n)
{////-n*n/4096 + n/2 => (-n*n + n*2048)/4096
    sint16 result = 0;
    asm("smlal %0, %1, %2, %3" : "=r" (result) : "r" (0), "r" (n), "r" (-n) );
    asm("smlal %0, %1, %2, %3" : "=r" (result) : "r" (0), "r" (n), "r" (2048) );
    asm("sdiv %0, %1, %2" : "=r" (result) : "r" (result), "r" (4096) );
    return(result);
}
*/