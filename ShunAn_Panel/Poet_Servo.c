#include "arm_cm4.h"
#include "MK60F15.h"
#include "ShunAn_Lib.h"
#include "start_ShunAn.h"

#include "Poet_Servo.h"
#include "Poet_Buzzer.h"
#include "Poet_InputInterface.h"


#include "Pendulum_EndlessFormsMostBeautiful.h"
//==============================================================
// 函数名：void v_Servo_Init()
// 0.5/10 * 46875 =  2343.75 =  2344
// 1.5/10 * 46875 =  7031.25 =  7031
// 2.5/10 * 46875 = 11718.75 = 11718
//==============================================================
#define DE_Servo_Central                1755//3516//3516//7031//=>1.5ms
#define DE_Servo_offset                 1169//2343//2343//3000//4687
#define DE_Servo_Left                   582//(DE_Servo_Central - DE_Servo_offset)
#define DE_Servo_Right                  (DE_Servo_Central + DE_Servo_offset)

#define DE_Servo_Start_DeadTime         20
#define DE_Servo_End_0_5ms              586
#define DE_Servo_End_2_5ms              2924

void v_Servo_Init()
{
    /**************************************************************************/
    // 定位器初始化 // E12 // ADC3_SE17
    SIM_SCGC3 |= SIM_SCGC3_ADC3_MASK;//使能ADC1模块时钟 
    SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;//使能PORTE时钟 
    PORTB_PCR7 |= PORT_PCR_MUX(0);//引脚复用选择模拟输入
    /**************************************************************************/
    // PWM开启 // PTA6？
    SIM_SCGC6 |= SIM_SCGC6_FTM0_MASK;//使能FTM3时钟
    SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;//使能PORTE时钟
    //PORTA_PCR5 = PORT_PCR_MUX(3);//引脚复用选择ALT3(FTM CH3)
    PORTA_PCR6 = PORT_PCR_MUX(3);//引脚复用选择ALT3(FTM CH3)
    // 特性设定
    /**************************************************************************/
    FTM0_MODE = FTM_MODE_FTMEN_MASK | FTM_MODE_PWMSYNC_MASK;//开启PWM异步模式 FTM_MODE_PWMSYNC_MASK
    
    FTM0_COMBINE = FTM_COMBINE_COMBINE1_MASK | FTM_COMBINE_SYNCEN1_MASK;//FTM_COMBINE_SYNCEN0_MASK
    
    FTM0_SYNCONF = 0x1F1FB5;
    
    FTM0_C3SC &= ~FTM_CnSC_ELSA_MASK;// MSnB:MSnA = 1x       边沿对齐PWM
    FTM0_C3SC |=  FTM_CnSC_ELSB_MASK;// ELSnB:ELSnA = 10     先高后低
    FTM0_C2SC &= ~FTM_CnSC_ELSA_MASK;// MSnB:MSnA = 1x       边沿对齐PWM
    FTM0_C2SC |=  FTM_CnSC_ELSB_MASK;// ELSnB:ELSnA = 10     先高后低
    
    
//    FTM0_PWMLOAD = FTM_PWMLOAD_LDOK_MASK | FTM_PWMLOAD_CH2SEL_MASK | FTM_PWMLOAD_CH3SEL_MASK;
    
    //FTM0_MOD = 46875;//模数, EPWM的周期为 ：MOD - CNTIN + 0x0001 // 46875 => 35.76333 >> 2 Hz//56ms 20Hz
    FTM0_CNTIN = 0;//脉冲宽度：(CnV - CNTIN)
    FTM0_MOD = 46875;//25Hz => 40ms
    // 0.5 / 40 = x / 46875 => 586 1755 2924
    FTM0_C2V = 0;//脉冲宽度：(CnV - CNTIN)
    FTM0_C3V = 1294 + DE_Servo_End_0_5ms;//2408;//脉冲宽度：(CnV - CNTIN)
    
    FTM0_CNT = 0;//计数器。只有低16位可用（写任何值到此寄存器，都会加载 CNTIN 的值）
    
    FTM0_SC = 0 | FTM_SC_PS(6) | FTM_SC_CLKS(1);//75MHz / 32 // 1.171875 MHz
    
    
    
    //FTM0_SYNC &=~ FTM_SYNC_SWSYNC_MASK;
    //FTM0_C3V = 40000;
}

//==============================================================
// 函数名：v_Servo_Out
// 功能描述：转向舵机PWM输出
// 参数：占空比(0-200)，100为正中间，0为最左边，200为最右边
// 返回：无
//==============================================================
//输入舵机参考量 => 输出PWM
void v_Servo_Out(signed short int dutyNumber)//因子为 DE_Servo_offset * 2
{
    signed short int PWMtemp;
    const unsigned short int div_ratio = 200;
      
    //1173              3516            5859 <=总量程
    //          2113       3063     =>相差950
    //20ms*2113 / 46875 => 0.9ms
    //20ms*3063 / 46875 => 1.3ms
    // 0.9 / 40 = x / 46875
    //153100+211400
    const unsigned short int const_ServoLeftPWM = 1055;//46875*((20*2113 / 46875)/40);//1055;//46875*((3063 / 46875)/40);
    const unsigned short int const_offset = 1531 - const_ServoLeftPWM;//46875*((20*3063 / 46875)/40) - const_ServoLeftPWM;
    if(dutyNumber > div_ratio) {dutyNumber = div_ratio;}//限制幅度
    if(dutyNumber < 0) {dutyNumber = 0;}//限制幅度
    PWMtemp = (dutyNumber*const_offset + const_ServoLeftPWM*div_ratio)/div_ratio
              + DE_Servo_Left;//给定输出 2603 + DE_Servo_Left
                                            //2113 3063
    if(PWMtemp > const_offset + const_ServoLeftPWM + DE_Servo_Left)
    {PWMtemp = const_offset + const_ServoLeftPWM + DE_Servo_Left;}//幅度限制
    else if(PWMtemp < const_ServoLeftPWM + DE_Servo_Left){PWMtemp = const_ServoLeftPWM + DE_Servo_Left;}//同上
    
    FTM0_C2V = 0;
    FTM0_C3V = PWMtemp;//输出
    FTM0_SYNC |= FTM_SYNC_SWSYNC_MASK;
}

//==============================================================
// 函数名：n_GetServoAngle
// 功能描述：获取当前舵机的角度值
//==============================================================
#define DE_ServoADC_BASE_PTR            ADC3_BASE_PTR
uint16 n_GetServoAngle()
{
    uint16 result = 0;
    DE_ServoADC_BASE_PTR->CFG1 = ADC_CFG1_ADIV(0)      //ADC1设置为总线时钟频率/8
                        | ADC_CFG1_MODE(1)      //8位采样//8 12 10 16
                        | ADC_CFG1_ADLSMP_MASK;  //长采样时间
    DE_ServoADC_BASE_PTR->CFG2 = ADC_CFG2_ADHSC_MASK;//ADC1设置为a通道，禁止异步时钟，高速序列转换，最长采样时间
    DE_ServoADC_BASE_PTR->SC1[0] = 17;//ADC1设置为禁止中断，单端采样，通道4a采样，这个寄存器写入后就会开始转换
    while (ADC_SC1_COCO_MASK != (DE_ServoADC_BASE_PTR->SC1[0] & ADC_SC1_COCO_MASK ));//等待单次转换完成   
    result = DE_ServoADC_BASE_PTR->R[0];
    return result;
}


uint16 n_GetServoGraduated(uint16 Angle)
{
    const uint16 nLeftVar = 2182;//
    const uint16 nRightVar = 3912;//
    float ratio = ((float)(Angle - nLeftVar)/(float)(nRightVar - nLeftVar));
    if(ratio < 0.f){ratio = 0.f;v_BuzzerBeepSet(1000);}
    if(ratio > 1.f){ratio = 1.f;v_BuzzerBeepSet(1000);}
    uint16 ServoGraduated = (uint16)(ratio*number_ServoGraduated);
    return ServoGraduated;
}


void v_steer_set2pwm()
{
    const sint16 middle_Line_Turn_Average = 86;//83;
    uint16 servo_middline = n_getSteerMiddleLine_UsedAverage();//m_Control.u16_SteerControlSevro();//得取中线                
    
    m_ImageAbstract.servo_gaiaInfor_image = servo_middline;//将中线给定
    
    m_Control.image_control_n_cut_one = m_Control.image_control_n;//信息反馈
    m_Control.image_control_n = servo_middline;//给定本次信息
                    
    //P
    servo_middline = servo_middline;
    //m_Control.ServoBeforeDiff = servo_middline;//观测用
    //D
    servo_middline += m_Control.ServoDiff*(m_Control.image_control_n - m_Control.image_control_n_cut_one);
    //m_Control.ServoDiff = servo_middline;//观测用
    //servo_middline = servo_middline + 1.f*(m_Control.image_control_n - m_Control.image_control_n_cut_one);
                    
    //m_Control.ServoBeforeDiff = (sint16)(1.2f*(middle_Line_Turn_Average - m_Control.ServoBeforeDiff));//观测用
    
    sint16 servo_middline_set = (sint16)(1.28f*(middle_Line_Turn_Average - servo_middline));//舵机PD
    //1.2f或许有问题，改为1.28试试
    /*
    if((1 == m_CarRunningMode.isUsedDoubleServoPID)
     &&(0 == m_ImageAbstract.RtAngle_isLasting)
     &&(0 == m_ImageTesting.isMeetingHazard))
    {
        if(__ABS(servo_middline_set) > 50)
        {
            servo_middline_set = servo_middline_set * m_CarRunningMode.DoubleServoPIDRatio;
        }//以上这句用于变PID路径
    }
    */
    if(servo_middline_set > 98){servo_middline_set = 98;}
    if(servo_middline_set < -98){servo_middline_set = -98;}
    servo_middline_set += 100;//前馈
    //m_Control.ServoBeforeDiff += 100;            
    
    
    //servo_middline_set = (uint16)((float)servo_middline_set);//
    //m_Control.ServoDiff = servo_middline_set;//观测用   
    
    if(0 == m_Control.need_Hold)
    {
        if((1 == m_Control.need_TurnLeft)&&((198 == servo_middline_set)||(servo_middline_set < 160)))
        {
            servo_middline_set = 198;
        }
        if((1 == m_Control.need_TurnRight)&&((2 == servo_middline_set)||(servo_middline_set > 40)))
        {
            servo_middline_set = 2;
        }
        m_Control.ServoDeg = servo_middline_set;//赋值最新舵机数值
    }
    if(1 == m_Control.need_turnRobustly_flag)
    {
        m_Control.ServoDeg = m_Control.servo_turn_Robustly;
    }
                   
    if(1 == switch_3)
    {
        v_Servo_Out(m_Control.ServoDeg);
    }
    else
    {//不输出即保证上次角度
    }
      
    /*
    if((1 == m_CarRunningMode.isUsedDoubleServoPID)
     &&(0 == m_ImageAbstract.RtAngle_isLasting)
     &&(0 == m_ImageTesting.isMeetingHazard))
    {
        if(__ABS(m_Control.ServoDeg) > 30)
        {
            m_Control.ServoDeg = m_Control.ServoDeg * m_CarRunningMode.DoubleServoPIDRatio;
        }//以上这句用于变PID路径
    }
    */
    m_Control.servo_turn_Robustly = 0;
    m_Control.need_Hold = 0;
}