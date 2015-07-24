#ifndef __POET_REVELATION
#define __POET_REVELATION

// ========================== //
// ssd1306 // ssd1331
typedef
struct
{
    uint8 C_Red_31;
    uint8 B_Green_63;
    uint8 A_Blue_31;
}s_color;

typedef
struct
{
    GPIO_MemMapPtr RES_Port;//CS端口
    uint32 RES_Pin;
    GPIO_MemMapPtr CS_Port;//CS端口
    uint32 CS_Pin;
    GPIO_MemMapPtr SCLK_Port;//时钟端口
    uint32 SCLK_Pin;
    GPIO_MemMapPtr SDATA_Port;//数据端口
    uint32 SDATA_Pin;
    GPIO_MemMapPtr SDC_Port;//Data or command
    uint32 SDC_Pin;
}s_Revelation_PinSet;
extern const s_Revelation_PinSet m_ColorOLED_pins;//
extern const s_Revelation_PinSet m_MonoOLED_pins;//

#define DE_MonoReve_X_WIDTH 128
#define DE_MonoReve_Y_WIDTH 64

#define DE_ColorReve_X_WIDTH 96
#define DE_ColorReve_Y_WIDTH 64

#define De_Wr_Data                      1
#define De_Wr_Command                   0


#define RevelationPortPin_Init(Port,Pin)                                        (Port->PDDR |= (1<<Pin))
#define RevelationPortPin_High(Port,Pin)                                        (Port->PDOR |= (1<<Pin))
#define RevelationPortPin_Low(Port,Pin)                                         (Port->PDOR &=~(1<<Pin))

#define Revelation_CLK_1(PortPin)    RevelationPortPin_High(PortPin.SCLK_Port,PortPin.SCLK_Pin)
#define Revelation_CLK_0(PortPin)    RevelationPortPin_Low(PortPin.SCLK_Port,PortPin.SCLK_Pin)

#define Revelation_DATA_1(PortPin)    RevelationPortPin_High(PortPin.SDATA_Port,PortPin.SDATA_Pin)
#define Revelation_DATA_0(PortPin)    RevelationPortPin_Low(PortPin.SDATA_Port,PortPin.SDATA_Pin)

#define Revelation_REST_1(PortPin)    RevelationPortPin_High(PortPin.RES_Port,PortPin.RES_Pin)
#define Revelation_REST_0(PortPin)    RevelationPortPin_Low(PortPin.RES_Port,PortPin.RES_Pin)

#define Revelation_DC_1(PortPin)    RevelationPortPin_High(PortPin.SDC_Port,PortPin.SDC_Pin)
#define Revelation_DC_0(PortPin)    RevelationPortPin_Low(PortPin.SDC_Port,PortPin.SDC_Pin)

#define Revelation_CS_1(PortPin)    RevelationPortPin_High(PortPin.CS_Port,PortPin.CS_Pin)
#define Revelation_CS_0(PortPin)    RevelationPortPin_Low(PortPin.CS_Port,PortPin.CS_Pin)


#define color_OLED_WrDat(data)                  v_Revelation_WriteBytes(&m_ColorOLED_pins,data,De_Wr_Data)
#define color_OLED_WrCmd(data)                  v_Revelation_WriteBytes(&m_ColorOLED_pins,data,De_Wr_Command)
#define Mono_OLED_WrDat(data)                   v_Revelation_WriteBytes(&m_MonoOLED_pins,data,De_Wr_Data)
#define Mono_OLED_WrCmd(data)                   v_Revelation_WriteBytes(&m_MonoOLED_pins,data,De_Wr_Command)


void v_shudderBeforeReve_Init(void);//整体初始化

void v_MonoRevelation_Init(void);//黑白寄存器初始化
void v_ColorRevelation_Init(void);//彩色寄存器初始化

void v_Revelation_WriteBytes(const s_Revelation_PinSet * owner,uint8 data,uint8 data_command_choose);

void v_ColorRev_PutPoint(uint8 x,uint8 y,s_color * color);//彩色绘制点
void v_MonoRev_PutPixel(uint8 x,uint8 y);//黑白画点

void v_65kcolor2Mono(uint8 MonoValue,s_color * color);//颜色转灰度    

void v_MonoRev_Fill(uint8 bmp_data);//灰阶清屏
void v_MonoRev_6x8Str(uint8 x,uint8 y,char ch[],uint8 isUnderline);//灰阶输出Str
void v_ColorRev_6x8str(uint16 X,uint16 Y,s_color * color,char ch[]);//彩色输出Str
/////void v_ColorRev_6x8Str(uint8 x, uint8 y, uint8 ch[], s_color* color);//彩色输出Str
void v_ColorRev_ImageOutput(uint8 color[][64]);

void v_MonoRev_Number(uint8 x,uint8 y,float number,uint8 numCounting);//输出数字

void v_MonoShow_Buzzer(char ch);
void v_MonoShow_isLonly(char ch);
void v_MonoShow_BlackBar(char ch);                                                          
void v_MonoShow_BlackRtAngle(char ch);                                                          
void v_MonoShow_BlackTurning(char ch);                                                          
void v_MonoShow_BlackCutBar(char ch);                                                         
void v_MonoShow_OutOfTheRtAngle(char ch);                                                         
                                                          
                                                          
                                                          
void v_ColorRev_Beholder_60_185_Output();//摄像头输出

#endif