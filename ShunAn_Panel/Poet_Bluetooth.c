/**
/. -----------------------//k60底层库//-------------------------

/. 测试硬件平台：K60
 . 版权所有：朱葛峻 
 . 制作者：朱葛峻
 . 文件名：alienUART.c
 . 用途：
 . 最后修改日期: 20140117
*/
#include "MK60F15.h"
#include "ShunAn_Lib.h"
#include "start_ShunAn.h"
#include "BlessedAlien.h"

#include "Pendulum_EndlessFormsMostBeautiful.h"

#include "Poet_ImageBeholder.h"
#include "Poet_Bluetooth.h"
#include <stdio.h>
#define Bluetooth_BasePtr             UART3_BASE_PTR
//============================================================================//
//E5
//E4
//GND
//VCC
s_need_tx m_need_tx;
void v_UartInit(uint32 BaudRate)
{   
    // 常参量
    uint32 tempReg  = 0;
    uint32 BdRtBits = 0;
    uint32 BRFAdjst = 0;
    
    // 设置时钟
    SIM_SCGC4 |= SIM_SCGC4_UART3_MASK;
    SIM_SCGC5 |= SIM_SCGC5_PORTE_MASK ;
    // 设置引脚参数
    PORTE_PCR4 = PORT_PCR_MUX(3);//引脚复用选择UART4_TX
    PORTE_PCR5 = PORT_PCR_MUX(3);//引脚复用选择UART4_RX
    
    // 关闭接收及发送器，等待触发时波特率生成
    (Bluetooth_BasePtr)->C2 &= ~( UART_C2_TE_MASK | UART_C2_RE_MASK );
    
    // C1设置默认
    (Bluetooth_BasePtr)->C1  = 0;
    
    // 设置波特率
    // 设置 Band Rate Bits
    BdRtBits = (uint16)((bus_clk_khz * 1000)/(BaudRate << 4));
    tempReg = UART_BDH_REG(Bluetooth_BasePtr) & ~(UART_BDH_SBR(0x1F));
    (Bluetooth_BasePtr)->BDH = tempReg |  UART_BDH_SBR(((BdRtBits & 0x1F00) >> 8));
    (Bluetooth_BasePtr)->BDL = (uint8)(BdRtBits & UART_BDL_SBR_MASK);
    
    // 设置 Band Rate Find Adjust
    BRFAdjst = ((((bus_clk_khz*1000)<<5)/(BaudRate <<4)) - (BdRtBits <<5));
    tempReg = UART_C4_REG(Bluetooth_BasePtr) & ~(UART_C4_BRFA(0x1F));
    (Bluetooth_BasePtr)->C4 = tempReg |  UART_C4_BRFA(BRFAdjst);
    // 波特率设置完毕
    
    // 触发接收器及发送器使能，触发生成波特率
    UART_C2_REG(Bluetooth_BasePtr) |= (UART_C2_TE_MASK | UART_C2_RE_MASK );
    //
    (Bluetooth_BasePtr)->C5 = 0x00u;
    return;
}

/*************************************************************************
//函数名：__v_Uart_TxOne_
//制作：朱葛峻
//用途：发送一个字符
//目前参数：BaudRate
//可扩展参数：引脚配置信息
//使用波特率：9600
//
*************************************************************************/

void v_UartTxOne(unsigned char sendInfor)
{
    // 等待发送缓冲区空 Transmit Data Register Empty Flag == 1 时退出循环
    while(!( (Bluetooth_BasePtr->S1) & UART_S1_TDRE_MASK));
    
    // 当TDRE为1时，执行发送数据指令。
    // 发送数据
    (Bluetooth_BasePtr)->D = (uint8)sendInfor;
}

/*************************************************************************
//函数名：__v_Uart_TxOne_
//制作：朱葛峻
//用途：发送一个字符
//目前参数：BaudRate
//可扩展参数：引脚配置信息
//使用波特率：9600
//
*************************************************************************/
/*
void __v_Uart_TxInt16_(unsigned short int sendUint)
{
    __v_Uart_TxOne_((uint8)((sendUint>>8)&(0x00FFu)));
    //vDelayMuchMs(100);
    __v_Uart_TxOne_((uint8)((sendUint)&(0x00FFu)));
}

void __v_Uart_TxInt32_(unsigned long int sendUint)
{
    __v_Uart_TxInt16_((uint16)((sendUint>>16)&(0x0000FFFFu)));
    //vDelayMuchMs(100);
    __v_Uart_TxInt16_((uint16)((sendUint)&(0x0000FFFFu)));
}
*/
/*!
 *  @brief      开串口接收中断
 *  @param      UARTn_e       模块号（UART0~UART5）
 *  @since      v5.0
 *  Sample usage:       uart_rx_irq_en(UART4);         //开串口3接收中断
 */
void __v_uart_rx_irq_en()
{
    UART_C2_REG(Bluetooth_BasePtr) |= UART_C2_RIE_MASK;                          //使能UART接收中断
    enable_irq((3 << 1) + 45);                  //使能IRQ中断
}

/*!
 *  @brief      等待接受1个字节
 *  @param      UARTn_e       模块号（UART0~UART5）
 *  @param      ch          接收地址
 *  @since      v5.0
 *  @note       如果需要查询接收状态，可用 uart_query ，
                如果需要查询接收数据，可用 uart_querychar
 *  Sample usage:       char ch = uart_getchar (UART4);   //等待接受1个字节，保存到 ch里
 */
uint8 b_uart_getchar (char *ch)
{
    //等待接收到数据（使能了FIFO后，以下两种方法都可行，都是一样的意思）
    //while( !UART_RCFIFO_REG(UARTN[uratn]) );                                //等待接收到数据数量非0
    //while( (UART_SFIFO_REG(UARTN[uratn]) & UART_SFIFO_RXEMPT_MASK)) ;     //等待接收缓冲区/FIFO 非空的

    //如下方法是飞思卡尔官方例程提供的方法
    uint32 time = 0;
    while (!(UART_S1_REG(Bluetooth_BasePtr) & UART_S1_RDRF_MASK))       //等待接收满了
    {
        ++time;
        if(time >= 100000)
        {
            return 0;//返回假
        }
    }
    // 获取接收到的8位数据
    *ch =  UART_D_REG(Bluetooth_BasePtr);
    return 1;
    // 获取 9位数据，应该是（需要修改函数的返回类型）：
    // *ch =   ((( UARTx_C3_REG(UARTN[uratn]) & UART_C3_R8_MASK ) >> UART_C3_R8_SHIFT ) << 8)   |   UART_D_REG(UARTN[uratn]);  //返回9bit

}

/*
void BLagreeT(uint8  DirPWM    , uint8  D_DirPWM,
              
              uint8  Central   , uint8 centralChangeRate,       // 通用显示
              
              uint8  isAdvance , uint16 Motor_PWM,
              
              uint16  GiveSpeed , uint16  D_GiveSpeed,
              uint16  NowSpeed  )
{
    // 传输开始
    __v_Uart_TxInt16_(0xFEFEu);        // 起始
    
    __v_Uart_TxOne_(DirPWM);
    __v_Uart_TxOne_(D_DirPWM);
    
    __v_Uart_TxOne_(Central);
    __v_Uart_TxOne_(centralChangeRate);
    
    __v_Uart_TxOne_(isAdvance);         // 1 前进，2 后退，3 停止
    
    
    __v_Uart_TxInt16_(NowSpeed);
    __v_Uart_TxInt16_(GiveSpeed);
    __v_Uart_TxInt16_(D_GiveSpeed);
    
    __v_Uart_TxInt16_(Motor_PWM);
    
    //__v_Uart_TxInt16_(0xFDFDu);        // 停止
}

*/
/*************************************************************************
//函数名：unsigned char GR_ReceiveStop()
//用途：接收停车标志，非零即为停车
//目前参数：BaudRate
//可扩展参数：引脚配置信息
//
*************************************************************************/
/*
unsigned char GR_ReceiveStop()
{
  uint8 RecChar = 0;
  if(UART_S1_REG(UART4_BASE_PTR) & UART_S1_RDRF_MASK)   //接收数据寄存器满
  {
    __v_uart_getchar(&RecChar);
    if(0xFFu == RecChar)
    {
      return 1;
    }
    return 0;
  }
  else
  {
    return 0;
  }
}
*/
/*************************************************************************
//函数名：unsigned char b_()
//用途：接收停车标志，非零即为停车
//目前参数：BaudRate
//可扩展参数：引脚配置信息
//
*************************************************************************/
uint8 b_TxImageInformation(uint8 CMOS_Pixel_org[][Beholder_PixNum_MAX])
{
    v_UartTxOne(0xFF);v_UartTxOne(0xFE);
    v_UartTxOne('I');
    v_UartTxOne('M');
    v_UartTxOne('A');
    v_UartTxOne('G');
    v_UartTxOne('E');
    
    
    for(uint8 loop_LineNum = 0;loop_LineNum < Beholder_LineY_MAX;loop_LineNum++)
    {
        for(uint8 loop_PixNum = 0;loop_PixNum < Beholder_PixNum_MAX;loop_PixNum++)
        {
            uint8 rec_temp = CMOS_Pixel_org[loop_LineNum][loop_PixNum];
            v_UartTxOne(rec_temp);
        }
    }
    
    return 'T';
}

void v_UartTxSInt16(unsigned short int * sendUint)
{
    v_UartTxOne((*sendUint)&0x00FF);
    v_UartTxOne(((*sendUint)>>8)&0x00FF);
}

void v_UartTxStr(char TxArray[],uint32 TxLength)//发送字符串
{
    for(uint32 CheckLoop = 0;CheckLoop < TxLength;CheckLoop++)
    {
        v_UartTxOne(TxArray[CheckLoop]);
        if('\0' == TxArray[CheckLoop])
        {
            break;
        }
    }
}




void v_UartTxNeedtx()
{
    v_Uart_SendPictures();
    //v_Uart_GetPicture_InRunning(1);
    //v_UartTxInformationAboutPara();//发送参考信息
   /*
    char Tx[21];
    uint16 loop;
    const uint16 TXCOUNTER = 1500 / 2;
    
    sprintf(Tx,"LeftMotorPWM=[");
    v_UartTxStr(Tx,21);
    for(loop = 0;loop < TXCOUNTER;loop++)
    {
        sprintf(Tx,"%d ",m_need_tx.LeftMotorPWM[loop]);
        v_UartTxStr(Tx,21);
    }
    sprintf(Tx,"];RightMotorPWM=[");
    v_UartTxStr(Tx,21);
    for(loop = 0;loop < TXCOUNTER;loop++)
    {
        sprintf(Tx,"%d ",m_need_tx.RightMotorPWM[loop]);
        v_UartTxStr(Tx,21);
    }
    sprintf(Tx,"];LeftMotorSpd=[");
    v_UartTxStr(Tx,21);
    for(loop = 0;loop < TXCOUNTER;loop++)
    {
        sprintf(Tx,"%d ",m_need_tx.LeftMotorSpeed[loop]);
        v_UartTxStr(Tx,21);
    }
    sprintf(Tx,"];RightMotorSpd=[");
    v_UartTxStr(Tx,21);
    for(loop = 0;loop < TXCOUNTER;loop++)
    {
        sprintf(Tx,"%d ",m_need_tx.RightMotorSpeed[loop]);
        v_UartTxStr(Tx,21);
    }
    sprintf(Tx,"];Servo=[");
    v_UartTxStr(Tx,21);
    for(loop = 0;loop < TXCOUNTER;loop++)
    {
        sprintf(Tx,"%d ",m_need_tx.ServoGraduated[loop]);
        v_UartTxStr(Tx,21);
    }
    sprintf(Tx,"];ServoVar=[");
    v_UartTxStr(Tx,21);
    for(loop = 0;loop < TXCOUNTER;loop++)
    {
        sprintf(Tx,"%d ",m_need_tx.ServoVar[loop]);
        v_UartTxStr(Tx,21);
    }
    
    //sprintf(Tx,"];Buzzer=[");
    //v_UartTxStr(Tx,21);
    //for(loop = 0;loop < TXCOUNTER;loop++)
    //{
    //    sprintf(Tx,"%d ",m_need_tx.Buzzer[loop]);
    //    v_UartTxStr(Tx,21);
    //}

    sprintf(Tx,"];MidLine=[");
    v_UartTxStr(Tx,21);
    for(loop = 0;loop < TXCOUNTER;loop++)
    {
        sprintf(Tx,"%d ",m_need_tx.MidLine[loop]);
        v_UartTxStr(Tx,21);
    }
    sprintf(Tx,"];LGivSpeed=[");
    v_UartTxStr(Tx,21);
    for(loop = 0;loop < TXCOUNTER;loop++)
    {
        sprintf(Tx,"%d ",m_need_tx.LeftMotorGiV[loop]);
        v_UartTxStr(Tx,21);
    }
    sprintf(Tx,"];RGivSpeed=[");
    v_UartTxStr(Tx,21);
    for(loop = 0;loop < TXCOUNTER;loop++)
    {
        sprintf(Tx,"%d ",m_need_tx.RightMotorGiV[loop]);
        v_UartTxStr(Tx,21);
    }
    sprintf(Tx,"];t = 1:1:750;");v_UartTxStr(Tx,21);
        
    sprintf(Tx,"RightMotorPWM=");v_UartTxStr(Tx,21);
    sprintf(Tx,"RightMotorPWM./100;");v_UartTxStr(Tx,21);
    
    sprintf(Tx,"LeftMotorPWM=");v_UartTxStr(Tx,21);
    sprintf(Tx,"LeftMotorPWM./100;");v_UartTxStr(Tx,21);
    
    
    sprintf(Tx,"plot(t,");v_UartTxStr(Tx,21);
    sprintf(Tx,"RightMotorPWM,'rx-',");v_UartTxStr(Tx,21);
    sprintf(Tx,"t,LeftMotorPWM,'bx-'");v_UartTxStr(Tx,21);
    sprintf(Tx,",t,LGivSpeed,'b*-'");v_UartTxStr(Tx,21);
    sprintf(Tx,",t,RGivSpeed,'r*-'");v_UartTxStr(Tx,21);
    sprintf(Tx,",t,LeftMotorSpd,'b'");v_UartTxStr(Tx,21);
    sprintf(Tx,",t,RightMotorSpd,'r'");v_UartTxStr(Tx,21);
    sprintf(Tx,",t,Servo,'b+'");v_UartTxStr(Tx,21);
    sprintf(Tx,",t,ServoVar,'r+'");v_UartTxStr(Tx,21);
    sprintf(Tx,",t,MidLine,'g'");v_UartTxStr(Tx,21);
    //sprintf(Tx,",t,Buzzer,'k*'");v_UartTxStr(Tx,21);
    sprintf(Tx,");grid on;");v_UartTxStr(Tx,21);
    sprintf(Tx,"legend(");v_UartTxStr(Tx,21);    
    sprintf(Tx,"'RightMotorPWM'");v_UartTxStr(Tx,21);  
    sprintf(Tx,",");v_UartTxStr(Tx,21);
    sprintf(Tx,"'LeftMotorPWM'");v_UartTxStr(Tx,21);  
    sprintf(Tx,",");v_UartTxStr(Tx,21);
    
    sprintf(Tx,"'LeftMotorGiV'");v_UartTxStr(Tx,21);  
    sprintf(Tx,",");v_UartTxStr(Tx,21);
    sprintf(Tx,"'RightMotorGiV'");v_UartTxStr(Tx,21);  
    sprintf(Tx,",");v_UartTxStr(Tx,21);
    
    sprintf(Tx,"'LeftMotorSpd'");v_UartTxStr(Tx,21);  
    sprintf(Tx,",");v_UartTxStr(Tx,21);
    sprintf(Tx,"'RightMotorSpd'");v_UartTxStr(Tx,21);  
    sprintf(Tx,",");v_UartTxStr(Tx,21);
    sprintf(Tx,"'Angel'");v_UartTxStr(Tx,21);
    sprintf(Tx,",");v_UartTxStr(Tx,21);
    sprintf(Tx,"'ServoDeg'");v_UartTxStr(Tx,21);  
    sprintf(Tx,",");v_UartTxStr(Tx,21);
    sprintf(Tx,"'MidLine'");v_UartTxStr(Tx,21);
    //sprintf(Tx,",");v_UartTxStr(Tx,21);
    //sprintf(Tx,"'BuzzerPoint'");v_UartTxStr(Tx,21);
    sprintf(Tx,");");v_UartTxStr(Tx,21);
    
    sprintf(Tx,"figure(2);");v_UartTxStr(Tx,21);
    sprintf(Tx,"LeftI=[");v_UartTxStr(Tx,21);
    for(loop = 0;loop < 750;loop++)
    {
        sprintf(Tx,"%d ",m_need_tx.Information_Unnamed_Mark001[loop]);
        v_UartTxStr(Tx,21);
    }
    sprintf(Tx,"];RightI=[");v_UartTxStr(Tx,21);
    for(loop = 750;loop < 1500;loop++)
    {
        sprintf(Tx,"%d ",m_need_tx.Information_Unnamed_Mark001[loop]);
        v_UartTxStr(Tx,21);
    }
    sprintf(Tx,"];plot(");v_UartTxStr(Tx,21);
    sprintf(Tx,"t,LeftI,'b*-',");v_UartTxStr(Tx,21);
    sprintf(Tx,"t,RightI,'r*-');");v_UartTxStr(Tx,21);
    
    sprintf(Tx,"legend(");v_UartTxStr(Tx,21);    
    sprintf(Tx,"'LeftMotorI'");v_UartTxStr(Tx,21);  
    sprintf(Tx,",");v_UartTxStr(Tx,21);
    sprintf(Tx,"'RightMotorI'");v_UartTxStr(Tx,21);  
    sprintf(Tx,");");v_UartTxStr(Tx,21);
    
    sprintf(Tx,"FromShunAn");v_UartTxStr(Tx,21);
    */
}

/*                    m_need_tx.LeftMotorPWM[m_need_tx.counter] = m_Control.e_LeftSpeed;
                    m_need_tx.LeftMotorSpeed[m_need_tx.counter] = m_Control.LeftMotorSpeed;
                    m_need_tx.RightMotorPWM[m_need_tx.counter] = m_Control.LeftMotorPWM;
                    m_need_tx.RightMotorSpeed[m_need_tx.counter] = m_Control.RightMotorSpeed;//m_Control.RightMotorSpeed;
                    m_need_tx.ServoVar[m_need_tx.counter] = m_Control.ServoDeg;
                    m_need_tx.ServoGraduated[m_need_tx.counter] = m_Control.LeftRightRatio;*/

void v_UartTxInformationAboutPara()
{
    char Tx[100];//获取Tx信号
    sprintf(Tx,"'This Time is ShunAn Showing,Para:");v_UartTxStr(Tx,100);//
    
    sprintf(Tx,"v=%d,P=%g,I=%g,D=%g,",m_Control.GiveSpeed
                                     ,m_Control.Motor_ControlPara_P_Number
                                     ,m_Control.Motor_ControlPara_I_Number
                                     ,m_Control.Motor_ControlPara_D_Number);//速度参考
                                     v_UartTxStr(Tx,100);
    sprintf(Tx,"P_Curve=%g,StopY=%d,Servo_Diff=%g",m_Control.P_Curve
                                                  ,m_Control.servo_imageYstopLine
                                                  ,m_Control.ServoDiff);//舵机转角参考
                                                  v_UartTxStr(Tx,100);
    sprintf(Tx,"';");v_UartTxStr(Tx,100);//
}

void v_UartSaveImage_sint16(void * Save)//存储
{
    sint16 * Save_sint16 = Save;
    for(uint8 loop = 0;loop < 60;loop ++)
    {
        *Save_sint16       = (m_ImageAbstract.Left[loop]);
        *(Save_sint16 + 60) = (m_ImageAbstract.Right[loop]);
        *(Save_sint16 + 120) = (m_ImageAbstract.Central[loop]);
        *(Save_sint16 + 180) = (m_ImageTesting.hazardvaildLine[loop]);
        Save_sint16 = Save_sint16 + 1;//递增
    }
    *(Save_sint16 + 180) = (m_ImageAbstract.Start_Y_Position);
    *(Save_sint16 + 181) = (m_ImageAbstract.Last_Y_Position);
    *(Save_sint16 + 182) = (m_Control.ServoDeg);
    *(Save_sint16 + 183) = (m_ImageTesting.Back2Angel_LineCounter);
    
}

void v_UartTxImageSix2PC(void * Tx)
{
    sint16 * Save = Tx;
    char TxChar[21];
    sprintf(TxChar,"Left=[");v_UartTxStr(TxChar,21);
    for(uint8 loop = 0;loop < 60;loop ++)
    {
        Save = Save + 1;//移动
        sprintf(TxChar,"%d ",*Save);v_UartTxStr(TxChar,21);
    }
    sprintf(TxChar,"];Right=[");v_UartTxStr(TxChar,21);
    for(uint8 loop = 0;loop < 60;loop ++)
    {
        Save = Save + 1;//移动
        sprintf(TxChar,"%d ",*Save);v_UartTxStr(TxChar,21);
    }
    sprintf(TxChar,"];Mid=[");v_UartTxStr(TxChar,21);
    for(uint8 loop = 0;loop < 60;loop ++)
    {
        Save = Save + 1;//移动
        sprintf(TxChar,"%d ",*Save);v_UartTxStr(TxChar,21);
    }
    sprintf(TxChar,"];");v_UartTxStr(TxChar,21);
    
    sprintf(TxChar,"RightRight=[");v_UartTxStr(TxChar,21);
    for(uint8 loop = 0;loop < 60;loop ++)
    {
        Save = Save + 1;//移动
        sprintf(TxChar,"%d ",*Save);v_UartTxStr(TxChar,21);
    }
    sprintf(TxChar,"];");v_UartTxStr(TxChar,21);
    
    
    sprintf(TxChar,"Beg=%d;",*Save);v_UartTxStr(TxChar,21);//移动
    Save = Save + 1;
    sprintf(TxChar,"Shut=%d;",*Save);v_UartTxStr(TxChar,21);//移动
    
    Save = Save + 1;
    sprintf(TxChar,"LonY=%d;",*Save);v_UartTxStr(TxChar,21);//移动
    Save = Save + 1;
    sprintf(TxChar,"LonX=%d;",*Save);v_UartTxStr(TxChar,21);//移动
    Save = Save + 1;
    
    sprintf(TxChar,"ShowImageInformation");v_UartTxStr(TxChar,21);//移动
    sprintf(TxChar,"_ShunAnGolden");v_UartTxStr(TxChar,21);//移动
    sprintf(TxChar,"(Left,Right,Mid,");v_UartTxStr(TxChar,21);//移动
    sprintf(TxChar,"RightRight,");v_UartTxStr(TxChar,21);//移动
    sprintf(TxChar,"LonY,LonX,");v_UartTxStr(TxChar,21);//移动
    sprintf(TxChar,"Shut,Beg);");v_UartTxStr(TxChar,21);//移动
    //sprintf(TxChar,"FromShunAn");v_UartTxStr(TxChar,21);//移动
}


void v_Uart_GetPicture_InRunning(uint8 mode,uint8 time)
{
    static uint8 pic_counter = 0;
    if(0 == mode){pic_counter = 0;return;}
    static uint8 counter = 0;
    if(time != (++counter))
    {
        return;
    }
    counter = 0;
    if(1 == mode)
    {
        if(pic_counter < 5)//0 1 2 3 4
        {
            v_UartSaveImage_sint16(m_need_tx.Information_Unnamed_Mark001 + 300*pic_counter);//m_need_tx.Information_Unnamed_Mark001
        }
        else
        {
            if(pic_counter < 10)//5 6 7 8 9
            {
                v_UartSaveImage_sint16(m_need_tx.ServoVar + 300*(pic_counter-5));
            }
            else
            {
                if(pic_counter < 15)//10 11 12 13 14
                {
                    v_UartSaveImage_sint16(m_need_tx.RightMotorGiV + 300*(pic_counter-10));
                }
                else
                {
                    if(pic_counter < 20)//15 16 17 18 19
                    {
                        v_UartSaveImage_sint16(m_need_tx.LeftMotorGiV + 300*(pic_counter-15));
                    }
                    else
                    {
                        if(pic_counter < 25)//20 21 22 23 24
                        {
                            v_UartSaveImage_sint16(m_need_tx.RightMotorPWM + 300*(pic_counter-20));
                        }
                        else
                        {
                            if(pic_counter < 30)//25 26 27 28 29
                            {
                                v_UartSaveImage_sint16(m_need_tx.LeftMotorPWM + 300*(pic_counter-25));
                            }
                            else
                            {
                                if(pic_counter < 35)//25 26 27 28 29
                                {
                                    v_UartSaveImage_sint16(m_need_tx.RightMotorSpeed + 300*(pic_counter-30));
                                }
                                else
                                {
                                    if(pic_counter < 40)//25 26 27 28 29
                                    {
                                        v_UartSaveImage_sint16(m_need_tx.LeftMotorSpeed + 300*(pic_counter-35));
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        pic_counter++;
    }
}


void v_Uart_SendPictures()
{
    char TxChar[21];
    for(sint8 pic_counter = 39;pic_counter >= 0;pic_counter--)
    {
        sprintf(TxChar,"figure(%d);",pic_counter+1);v_UartTxStr(TxChar,21);//移动
        if(pic_counter < 5)//0 1 2 3 4
        {
            v_UartTxImageSix2PC(m_need_tx.Information_Unnamed_Mark001 + 300*pic_counter);//m_need_tx.Information_Unnamed_Mark001
        }
        else
        {
            if(pic_counter < 10)//5 6 7 8 9
            {
                v_UartTxImageSix2PC(m_need_tx.ServoVar + 300*(pic_counter-5));
            }
            else
            {
                if(pic_counter < 15)//10 11 12 13 14
                {
                    v_UartTxImageSix2PC(m_need_tx.RightMotorGiV + 300*(pic_counter-10));
                }
                else
                {
                    if(pic_counter < 20)//15 16 17 18 19
                    {
                        v_UartTxImageSix2PC(m_need_tx.LeftMotorGiV + 300*(pic_counter-15));
                    }
                    else
                    {
                        if(pic_counter < 25)//20 21 22 23 24
                        {
                            v_UartTxImageSix2PC(m_need_tx.RightMotorPWM + 300*(pic_counter-20));
                        }
                        else
                        {
                            if(pic_counter < 30)//25 26 27 28 29
                            {
                                v_UartTxImageSix2PC(m_need_tx.LeftMotorPWM + 300*(pic_counter-25));
                            }
                            else
                            {
                                if(pic_counter < 35)//25 26 27 28 29
                                {
                                    v_UartTxImageSix2PC(m_need_tx.RightMotorSpeed + 300*(pic_counter-30));
                                }
                                else
                                {
                                    if(pic_counter < 40)//25 26 27 28 29
                                    {
                                        v_UartTxImageSix2PC(m_need_tx.LeftMotorSpeed + 300*(pic_counter-35));
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    sprintf(TxChar,"FromShunAn");v_UartTxStr(TxChar,21);//移动
}