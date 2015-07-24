#include "arm_cm4.h"
#include "MK60F15.h"
#include "ShunAn_Lib.h"
#include "start_ShunAn.h"
#include "BlessedAlien.h"

#include "Poet_Revelation.h"

#include "Poet_ImageBeholder.h"

#include <stdio.h>

const s_Revelation_PinSet m_MonoOLED_pins =//m_MonoOLED_pins
{.RES_Port = PTA_BASE_PTR,
.RES_Pin = 13,

.CS_Port = PTC_BASE_PTR,
.CS_Pin = 0,//C0

.SCLK_Port = PTA_BASE_PTR,
.SCLK_Pin = 15,
.SDATA_Port = PTA_BASE_PTR,
.SDATA_Pin = 17,
.SDC_Port = PTA_BASE_PTR,
.SDC_Pin = 16,};//
const s_Revelation_PinSet m_ColorOLED_pins =//m_ColorOLED_pins
{.RES_Port = PTA_BASE_PTR,
.RES_Pin = 13,

.CS_Port = PTA_BASE_PTR,
.CS_Pin = 14,//A14

.SCLK_Port = PTA_BASE_PTR,
.SCLK_Pin = 15,
.SDATA_Port = PTA_BASE_PTR,
.SDATA_Pin = 17,
.SDC_Port = PTA_BASE_PTR,
.SDC_Pin = 16,};//




#define de_colorReve_ClearWindow()              do\
                                                {\
                                                    color_OLED_WrCmd(0x25);\
                                                    color_OLED_WrCmd(0);\
                                                    color_OLED_WrCmd(0);\
                                                    color_OLED_WrCmd(95);\
                                                    color_OLED_WrCmd(63);\
                                                }while(0)
                                                  
                                                  
#define de_colorReve_ClearRect(x0,y0,xt,yt)     do\
                                                {\
                                                    color_OLED_WrCmd(0x25);\
                                                    color_OLED_WrCmd(x0);\
                                                    color_OLED_WrCmd(y0);\
                                                    color_OLED_WrCmd(xt);\
                                                    color_OLED_WrCmd(yt);\
                                                }while(0)

void v_shudderBeforeReve_Init(void)
{
    SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK | SIM_SCGC5_PORTC_MASK;
    PORTA_PCR13  |= PORT_PCR_MUX(1);
    PORTA_PCR15  |= PORT_PCR_MUX(1);
    PORTA_PCR16  |= PORT_PCR_MUX(1);
    PORTA_PCR17  |= PORT_PCR_MUX(1);
    PORTA_PCR14  |= PORT_PCR_MUX(1);
    PORTC_PCR0  |= PORT_PCR_MUX(1);
//    PORTB_PCR18  |= PORT_PCR_MUX(7);
//    PORTB_PCR1   |= PORT_PCR_MUX(1);
    RevelationPortPin_Init(m_ColorOLED_pins.SDC_Port,m_ColorOLED_pins.SDC_Pin);
    RevelationPortPin_Init(m_ColorOLED_pins.SCLK_Port,m_ColorOLED_pins.SCLK_Pin);
    RevelationPortPin_Init(m_ColorOLED_pins.SDATA_Port,m_ColorOLED_pins.SDATA_Pin);
    RevelationPortPin_Init(m_ColorOLED_pins.RES_Port,m_ColorOLED_pins.RES_Pin);
    
    RevelationPortPin_Init(m_ColorOLED_pins.CS_Port,m_ColorOLED_pins.CS_Pin);
    RevelationPortPin_Init(m_MonoOLED_pins.CS_Port,m_MonoOLED_pins.CS_Pin);
//    bin_CS_Init;
    // 配置信息
//    bin_CS_turn_1;
    //CLK_turn_1;
    Revelation_CLK_1(m_ColorOLED_pins);
    Revelation_DATA_1(m_ColorOLED_pins);
    Revelation_REST_0(m_ColorOLED_pins);
    Revelation_DC_1(m_ColorOLED_pins);
    
    Revelation_CS_1(m_ColorOLED_pins);
    Revelation_CS_1(m_MonoOLED_pins);
    
    for(unsigned short int i = 0;i<1000;i++);//延时
    //DELAY_MS(50);
    Revelation_REST_1(m_ColorOLED_pins);
    
    //Revelation_CS_1(m_MonoOLED_pins);
//    Revelation_CS_0(m_ColorOLED_pins);
    v_ColorRevelation_Init();
    //Revelation_CS_1(m_MonoOLED_pins);
//    Revelation_CS_1(m_ColorOLED_pins);
//    Revelation_CS_0(m_MonoOLED_pins);
    v_MonoRevelation_Init();
//    Revelation_CS_1(m_MonoOLED_pins);
    
}

void v_ColorRevelation_Init(void)
{
    Revelation_CS_0(m_ColorOLED_pins);
    color_OLED_WrCmd(0xAD);color_OLED_WrCmd(0x8E);//Select external VCC supply
    
    color_OLED_WrCmd(0xAE);//Display OFF
    
    color_OLED_WrCmd(0x81);color_OLED_WrCmd(255);//A
    color_OLED_WrCmd(0x82);color_OLED_WrCmd(255);//B
    color_OLED_WrCmd(0x83);color_OLED_WrCmd(255);//C
    color_OLED_WrCmd(0x87);color_OLED_WrCmd(0x06);//Master Current Set
    color_OLED_WrCmd(0x8A);color_OLED_WrCmd(0xFF);//Pre-charge Speed
    color_OLED_WrCmd(0x8B);color_OLED_WrCmd(0xFF);//
    color_OLED_WrCmd(0x8C);color_OLED_WrCmd(0xFF);//
    
    color_OLED_WrCmd(0xA1);color_OLED_WrCmd(0);//Start Line
    color_OLED_WrCmd(0xA2);color_OLED_WrCmd(0);//vertical offset
    color_OLED_WrCmd(0xA8);color_OLED_WrCmd(0x3F);//Mutil Ratio
    
    color_OLED_WrCmd(0xA0);color_OLED_WrCmd(0x62);//Set driver remap and color depth
    
    color_OLED_WrCmd(0xB9);//Enable Linear Gray Scale Table
    
    color_OLED_WrCmd(0xB1);color_OLED_WrCmd(0xFF);//period adjustment
    color_OLED_WrCmd(0xB3);color_OLED_WrCmd(0xF0);//Display Clock Divider / Oscillator Frequency
    color_OLED_WrCmd(0xBB);color_OLED_WrCmd(0x3E);//Set COM deselect voltage level
    
    color_OLED_WrCmd(0xBE);color_OLED_WrCmd(0x3E);//Set COM deselect voltage level
    
    color_OLED_WrCmd(0xA4);//Normal 
    //清除全屏
    
    color_OLED_WrCmd(0x2E);//Stop Scrolling
    color_OLED_WrCmd(0xAF);//Display On
    
    /*------------------------Color-初始化结束--------------------------------*/
    s_color color_set;
    for(uint8 loop = 0;loop < 96;loop++)
    {
        for(uint8 inter = 0;inter < 64;inter++)
        {
            color_set.A_Blue_31 = 0;
            color_set.B_Green_63 = 0;
            color_set.C_Red_31 = 0;
            v_ColorRev_PutPoint(loop,inter,&color_set);
        }
    }
    Revelation_CS_1(m_ColorOLED_pins);
}


//============================================================================//
void v_MonoRevelation_Init(void)        
{
    Revelation_CS_0(m_MonoOLED_pins);
    Mono_OLED_WrCmd(0xae);//--turn off oled panel
    Mono_OLED_WrCmd(0x00);//---set low column address
    Mono_OLED_WrCmd(0x10);//---set high column address
    Mono_OLED_WrCmd(0x40);//--set start line address  Set Mapping RAM Display Start Line (0x00~0x3F)
    Mono_OLED_WrCmd(0x81);//--set contrast control register
    Mono_OLED_WrCmd(0xcf); // Set SEG Output Current Brightness
    Mono_OLED_WrCmd(0xa1);//--Set SEG/Column Mapping     0xa0左右反置 0xa1正常
    Mono_OLED_WrCmd(0xc8);//Set COM/Row Scan Direction   0xc0上下反置 0xc8正常
    Mono_OLED_WrCmd(0xa6);//--set normal display
    Mono_OLED_WrCmd(0xa8);//--set multiplex ratio(1 to 64)
    Mono_OLED_WrCmd(0x3f);//--1/64 duty
    Mono_OLED_WrCmd(0xd3);//-set display offset	Shift Mapping RAM Counter (0x00~0x3F)
    Mono_OLED_WrCmd(0x00);//-not offset
    Mono_OLED_WrCmd(0xd5);//--set display clock divide ratio/oscillator frequency
    Mono_OLED_WrCmd(0x80);//--set divide ratio, Set Clock as 100 Frames/Sec
    Mono_OLED_WrCmd(0xd9);//--set pre-charge period
    Mono_OLED_WrCmd(0xf1);//Set Pre-Charge as 15 Clocks & Discharge as 1 Clock
    Mono_OLED_WrCmd(0xda);//--set com pins hardware configuration
    Mono_OLED_WrCmd(0x12);
    Mono_OLED_WrCmd(0xdb);//--set vcomh
    Mono_OLED_WrCmd(0x40);//Set VCOM Deselect Level
    Mono_OLED_WrCmd(0x20);//-Set Page Addressing Mode (0x00/0x01/0x02)
    Mono_OLED_WrCmd(0x02);//
    Mono_OLED_WrCmd(0x8d);//--set Charge Pump enable/disable
    Mono_OLED_WrCmd(0x14);//--set(0x10) disable
    Mono_OLED_WrCmd(0xa4);// Disable Entire Display On (0xa4/0xa5)
    Mono_OLED_WrCmd(0xa6);// Disable Inverse Display On (0xa6/a7) 
    Mono_OLED_WrCmd(0xaf);//--turn on oled panel
    
    v_MonoRev_Fill(0x00);  //初始清屏
    
    Mono_OLED_WrCmd(0xb0+0);                         // 设置目标页地址（y轴）
    Mono_OLED_WrCmd(((0&0xf0)>>4)|0x10);             // High
    Mono_OLED_WrCmd(0&0x0f);                         // Low
    Revelation_CS_1(m_MonoOLED_pins);
} 


//============================================================================//
//Revelation
void v_Revelation_WriteBytes(const s_Revelation_PinSet * owner,uint8 data,uint8 data_command_choose)
{
//    bin_CS_turn_0;
    s_Revelation_PinSet Temp = * owner;
    uint8 loop = 8;
    if(data_command_choose)//Data=>1//Command=>0
    {
        Revelation_DC_1(Temp);//DC=0//DC=1
    }
    else
    {
        Revelation_DC_0(Temp);//DC=0//DC=1
    }
    Revelation_CLK_0(Temp);//CLK/D0=0
    while(loop --)
    {
        if(data&0x80){Revelation_DATA_1(Temp);}//SDA/D1=1
        else{Revelation_DATA_0(Temp);}//SDA/D1=0
        Revelation_CLK_1(Temp);//SCL//CLK/D0=1
        Revelation_CLK_0(Temp);//SCL//CLK/D0=0    
        data<<=1;    
    }
//    bin_CS_turn_1;
}


//============================================================================//
//画点
void v_ColorRev_PutPoint(uint8 x,uint8 y,s_color * color)
{
    Revelation_CS_0(m_ColorOLED_pins);
    color_OLED_WrCmd(0x15);color_OLED_WrCmd(x);color_OLED_WrCmd(95);//Setup Column
    color_OLED_WrCmd(0x75);color_OLED_WrCmd(y);color_OLED_WrCmd(63);//Setup Row
    color_OLED_WrDat((color->C_Red_31 << 3)|(color->B_Green_63 >> 3));
    color_OLED_WrDat((color->B_Green_63 << 5)|(color->A_Blue_31));//color
    Revelation_CS_1(m_ColorOLED_pins);
}
void v_MonoRev_PutPixel(uint8 x,uint8 y)
{
    Revelation_CS_0(m_MonoOLED_pins);
    uint8 data1;  //data1当前点的数据 
    data1 = 0x01<<(y%8); 	
    Mono_OLED_WrCmd(0xb0+(y>>3));//设置页号，y右移3位相当于除以8，即由行号得出页号
    Mono_OLED_WrCmd(((x&0xf0)>>4)|0x10);//设置列号的高4位
    Mono_OLED_WrCmd(x&0x0f);//设置列号的低4位
    Mono_OLED_WrDat(data1); 	 
    Revelation_CS_1(m_MonoOLED_pins);
}
//============================================================================//
//灰阶
void v_65kcolor2Mono(uint8 MonoValue,s_color * color)
{
    //256 => 64
    //0   => 0
    MonoValue = (uint8)(-((float)MonoValue*(float)MonoValue)/1024.f + ((float)MonoValue)/2.f);//高光压缩
    color->C_Red_31 = MonoValue >> 1;
    color->B_Green_63 = MonoValue;
    color->A_Blue_31 = MonoValue >> 1;
}


//============================================================================//
//灰阶清屏
void v_MonoRev_Fill(uint8 bmp_data)
{
    Revelation_CS_0(m_MonoOLED_pins);
    uint8 y,x;	
    for(y=0;y<8;y++)
    {
        Mono_OLED_WrCmd(0xb0+y);
        Mono_OLED_WrCmd(0x01);
        Mono_OLED_WrCmd(0x10);
        for(x=0;x < DE_MonoReve_X_WIDTH;x++)
        {
            Mono_OLED_WrDat(bmp_data);
        }
    }
    Revelation_CS_1(m_MonoOLED_pins);
}


//============================================================================//
//灰阶输出字符串
void v_MonoRev_6x8Str(uint8 x,uint8 y,char ch[],uint8 isUnderline)
{
    Revelation_CS_0(m_MonoOLED_pins);
    uint8 c=0,i=0,j=0;
    while (ch[j]!='\0')
    {    
        c =ch[j]-32;
        if(x>126){x=0;y++;} // MOD(126,6) = 0
        /////
        Mono_OLED_WrCmd(0xb0+y);
        Mono_OLED_WrCmd(((x&0xf0)>>4)|0x10);
        Mono_OLED_WrCmd(x&0x0f);  
        /////
        if(1 == isUnderline)
        {
            for(i=0;i<6;i++){Mono_OLED_WrDat(C6x8[c][i] | 0x80);}
        }
        else
        {
            for(i=0;i<6;i++){Mono_OLED_WrDat(C6x8[c][i]);}
        }
        
        x+=6;
        j++;
    }
    Revelation_CS_1(m_MonoOLED_pins);
}
//输出彩色Str
void v_ColorRev_6x8str(uint16 X,uint16 Y,s_color * color,char ch[])
{
    Revelation_CS_0(m_ColorOLED_pins);
    uint8 char_Num = 0; // 显示个数数量
    for(uint8 Line_show = 0;Line_show < 8;Line_show++) // 行显示 - 8
    {
        /////
        color_OLED_WrCmd(0x15);color_OLED_WrCmd(X);color_OLED_WrCmd(95);//Setup Column
        color_OLED_WrCmd(0x75);color_OLED_WrCmd(Y + Line_show);color_OLED_WrCmd(63);//Setup Row
        /////
        while('\0' != ch[char_Num]) // 检测是否到最后
        {
            for(uint8 loop = 0;loop < 6;loop++) // 列控制 - 6
            {
                uint8 c = ch[char_Num] - 32;
                if(0 != (C6x8[c][loop]&(1<<(7-Line_show)))) // 若为真则为空，若为假则为实在
                {
                    color_OLED_WrDat((color->C_Red_31 << 3)|(color->B_Green_63 >> 3));
                    color_OLED_WrDat((color->B_Green_63 << 5)|(color->A_Blue_31));//color
                }
                else
                {
                    color_OLED_WrDat(0);
                    color_OLED_WrDat(0);//black color
                }
            }
            char_Num ++; // 字符移动
        }
        char_Num = 0; // 回复最早字符
    }
    Revelation_CS_1(m_ColorOLED_pins);
}


//输出彩色Image
void v_ColorRev_ImageOutput(uint8 color[][64])
{
    Revelation_CS_0(m_ColorOLED_pins);
    s_color RGBcolor;
    for(uint8 Line_show = 0;Line_show < DE_ColorReve_Y_WIDTH;Line_show++) // 行显示 - 8
    {
        /////
        color_OLED_WrCmd(0x15);color_OLED_WrCmd(0);color_OLED_WrCmd(95);//Setup Column
        color_OLED_WrCmd(0x75);color_OLED_WrCmd(Line_show);color_OLED_WrCmd(63);//Setup Row
        /////
        for(uint8 X_show = 0;X_show < DE_ColorReve_X_WIDTH;X_show++)
        {
            v_65kcolor2Mono(color[X_show][Line_show],&RGBcolor);
            color_OLED_WrDat((RGBcolor.C_Red_31 << 3)|(RGBcolor.B_Green_63 >> 3));
            color_OLED_WrDat((RGBcolor.B_Green_63 << 5)|(RGBcolor.A_Blue_31));//color
        }
    }
    Revelation_CS_1(m_ColorOLED_pins);
}


//============================================================================//
void v_MonoRev_Number(uint8 x,uint8 y,float number,uint8 numCounting)
{
    char numStr[21];
    if(10 == numCounting)
    {
        sprintf(numStr,"%g",number);
    }
    else if(16 == numCounting)
    {
        sprintf(numStr,"0x%X",(uint8)number);
    }
    else
    {
        return;
    }
    
    v_MonoRev_6x8Str(x,y,numStr,0);
}


//============================================================================//
//特殊功能函数
void v_ColorRev_Beholder_60_185_Output()
{
    Revelation_CS_0(m_ColorOLED_pins);
    s_color RGBcolor;
    uint8 color_Message[60][93];
    
    for(uint8 Line_show = 0;Line_show < 60;Line_show++) // 行显示 - 8
    {//数据暂存
        for(uint8 X_show = 0;X_show < 93;X_show++)
        {
            color_Message[Line_show][X_show] = m_ImageBeholder_Data[Line_show][X_show * 2];
        }
    }
    
    for(uint8 Line_show = 0;Line_show < 60;Line_show++) // 行显示 - 8
    {
        /////
        color_OLED_WrCmd(0x15);color_OLED_WrCmd(2);color_OLED_WrCmd(95);//Setup Column
        color_OLED_WrCmd(0x75);color_OLED_WrCmd(Line_show);color_OLED_WrCmd(63);//Setup Row
        /////
        for(uint8 X_show = 0;X_show < 93;X_show++)
        {
            v_65kcolor2Mono(color_Message[Line_show][X_show],&RGBcolor);
            color_OLED_WrDat((RGBcolor.C_Red_31 << 3)|(RGBcolor.B_Green_63 >> 3));
            color_OLED_WrDat((RGBcolor.B_Green_63 << 5)|(RGBcolor.A_Blue_31));//color
        }
    }
    Revelation_CS_1(m_ColorOLED_pins);
}

void v_MonoShow_Buzzer(char ch)
{
    v_MonoRev_6x8Str(121,0,&ch,0);//展示字符
}
void v_MonoShow_isLonly(char ch)
{
    v_MonoRev_6x8Str(121,1,&ch,0);//展示字符
}
void v_MonoShow_BlackBar(char ch)
{
    v_MonoRev_6x8Str(121,3,&ch,0);//展示字符
}
void v_MonoShow_BlackRtAngle(char ch)
{
    v_MonoRev_6x8Str(121,2,&ch,0);//展示字符
}
void v_MonoShow_BlackTurning(char ch)
{
    v_MonoRev_6x8Str(121,7,&ch,0);//展示字符
}
void v_MonoShow_BlackCutBar(char ch)
{
    v_MonoRev_6x8Str(111,7,&ch,0);
}
void v_MonoShow_OutOfTheRtAngle(char ch)
{
    v_MonoRev_6x8Str(101,7,&ch,0);
}