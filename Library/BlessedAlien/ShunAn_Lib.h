#ifndef __SHUNAN_LIB_
#define __SHUNAN_LIB_

// 宏声明
#define __ABS(a)                                (((a) < 0) ? (-(a)) : (a))
#define __F_ABS(a)                              (((a) < 0.f) ? (-(a)) : (a))
#define __n_pi                                  3.1415926f

#define __Pin_Set_(Register,Pin,Data)           (Register = (((Register)&(~(0x1<<Pin)))|(Data<<Pin)))
// 数据运算
signed long int RoundToInt32 (float);
signed long int RoundToInt64 (double dval);
float SquareRootFloat(float number);
float SquareRootBedivFloat(float number);
//float f_sin(float rad);
extern const unsigned short int number_ServoGraduated;// = 400;
//extern s_selftest m_selftest;//自检变量
extern unsigned char Tx_flag;
//extern unsigned char Open_flag;
typedef
struct
{
    unsigned long int timer;//
    unsigned long int time_ratio;//
    //==============================//
    unsigned long int BuzzerBeep_time;//蜂鸣器响应时间
    unsigned long int BuzzerBeep_LastingTime;//蜂鸣器维持时间
    //==============================//
    volatile unsigned char uart_Txflag;//串口传输标志位
    volatile unsigned char control_isDone;//是否开启
    unsigned long int uarttx_timer;
}s_system;

void v_Disable_ControlProcess(void);
//m_system.uart_Txflag
extern s_system m_system;//系统变量

extern void v_system_clocked();
extern void v_system_clocker_user_done();//系统时钟变量函数用户使用部分
//高光压缩10 2 8
//signed short int _camera_10_to_8(signed short int n);

#define BuzzerBeep_Process()                    do\
                                                {\
                                                    if(m_system.timer - m_system.BuzzerBeep_time < m_system.BuzzerBeep_LastingTime)\
                                                    {v_Buzzer_OutPut(1);}\
                                                    else{v_Buzzer_OutPut(0);}\
                                                }while(0)
                                                  
                                                  

                                                  
#endif