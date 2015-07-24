///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     16/Aug/2014  22:17:46 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\pc\Desktop\继续做的事情\四旋翼飞行器 -         /
//                    TM4123G\代码\遥控器\ShunAn2\Air_TFT.c                   /
//    Command line =  "C:\Users\pc\Desktop\继续做的事情\四旋翼飞行器 -        /
//                    TM4123G\代码\遥控器\ShunAn2\Air_TFT.c" -D IAR -D        /
//                    ShunAn2 -lCN "C:\Users\pc\Desktop\继续做的事情\四旋翼飞 /
//                    行器 - TM4123G\代码\遥控器\FLASH_1M\List\" -lB          /
//                    "C:\Users\pc\Desktop\继续做的事情\四旋翼飞行器 -        /
//                    TM4123G\代码\遥控器\FLASH_1M\List\" -o                  /
//                    "C:\Users\pc\Desktop\继续做的事情\四旋翼飞行器 -        /
//                    TM4123G\代码\遥控器\FLASH_1M\Obj\" --no_cse             /
//                    --no_unroll --no_inline --no_code_motion --no_tbaa      /
//                    --no_clustering --no_scheduling --debug                 /
//                    --endian=little --cpu=Cortex-M4 -e --fpu=None           /
//                    --dlib_config "C:\Program Files (x86)\IAR               /
//                    Systems\Embedded Workbench                              /
//                    6.5\arm\INC\c\DLib_Config_Normal.h" -I                  /
//                    "C:\Users\pc\Desktop\继续做的事情\四旋翼飞行器 -        /
//                    TM4123G\代码\遥控器\ShunAn2\" -I                        /
//                    "C:\Users\pc\Desktop\继续做的事情\四旋翼飞行器 -        /
//                    TM4123G\代码\遥控器\Library\" -I                        /
//                    "C:\Users\pc\Desktop\继续做的事情\四旋翼飞行器 -        /
//                    TM4123G\代码\遥控器\Library\BlessedAlien\" -Ol          /
//                    --use_c++_inline                                        /
//    List file    =  C:\Users\pc\Desktop\继续做的事情\四旋翼飞行器 -         /
//                    TM4123G\代码\遥控器\FLASH_1M\List\Air_TFT.s             /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN PORTx
        EXTERN __aeabi_d2f
        EXTERN __aeabi_ddiv
        EXTERN __aeabi_memcpy4
        EXTERN __aeabi_ui2d
        EXTERN __v_uart_getchar
        EXTERN uart_getchar
        EXTERN vDelayMs

        PUBLIC C12x12
        PUBLIC C6x8
        PUBLIC Chinese
        PUBLIC LCD_12x12show
        PUBLIC LCD_8x6show
        PUBLIC LCD_8x6show_string
        PUBLIC LCD_8x8show
        PUBLIC LCD_Clear
        PUBLIC LCD_ClearShowWindow
        PUBLIC LCD_ClearSomeThing
        PUBLIC LCD_Init
        PUBLIC LCD_PinInit
        PUBLIC LCD_SetCursor
        PUBLIC LCD_SetLine
        PUBLIC LCD_SetPoint
        PUBLIC LCD_ShowInfor
        PUBLIC LCD_XYaxes
        PUBLIC LCD_XYaxesNum
        PUBLIC LCD_axis_aircraft
        PUBLIC LCD_clearwindow_aircraft
        PUBLIC LCD_clearwindow_juxing
        PUBLIC LCD_readReg
        PUBLIC LCD_setpoint
        PUBLIC LCD_showDecFour
        PUBLIC LCD_showware
        PUBLIC LCD_writeIndex
        PUBLIC LCD_writeReg
        PUBLIC Num4X8
        PUBLIC data_PWM1
        PUBLIC data_PWM2
        PUBLIC data_PWM3
        PUBLIC data_PWM4
        PUBLIC data_axis_receive16


        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "PWM1">`:
        DATA
        DC8 "PWM1"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "PWM2">`:
        DATA
        DC8 "PWM2"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "PWM3">`:
        DATA
        DC8 "PWM3"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "PWM4">`:
        DATA
        DC8 "PWM4"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "axis x:">`:
        DATA
        DC8 "axis x:"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "axis y:">`:
        DATA
        DC8 "axis y:"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "axis z:">`:
        DATA
        DC8 "axis z:"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "cm/s x:">`:
        DATA
        DC8 "cm/s x:"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "cm/s y:">`:
        DATA
        DC8 "cm/s y:"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "cm/s z:">`:
        DATA
        DC8 "cm/s z:"

        SECTION `.rodata`:CONST:REORDER:NOROOT(1)
        DATA
        DC8 "0"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "20"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "40"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "60"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "80"
        DC8 0
// C:\Users\pc\Desktop\继续做的事情\四旋翼飞行器 - TM4123G\代码\遥控器\ShunAn2\Air_TFT.c
//    1 /***
//    2 /. -----------------------//外部器件驱动//-------------------------
//    3 
//    4 /. 测试硬件平台：MK60FX512VLQ15
//    5  . 工作频率：
//    6  . 版权所有：朱葛峻 中南大学
//    7  . 制作者：朱葛峻 中南大学
//    8  . 驱动器件：SSD1289，器件来源：微雪电子
//    9  . 最后修改日期: 20140403
//   10  
//   11 ***/
//   12 
//   13 #include "MK60F15.h"
//   14 #include "ShunAn_lib.h"
//   15 #include "start_ShunAn.h"
//   16 #include "BlessedAlien.h"
//   17 #include "GR_Bluetoothx11_12.h"
//   18 #include "Air_TFT.h"
//   19 #define GP_In    0                        //定义管脚输入方向      GPIOx_PDDRn里，0表示输入，1表示输出
//   20 #define GP_Out   1                          //定义管脚输出方向
//   21 #define gpioPDOstart(x)         (x = 1)
//   22 #define gpioPDOhold(x)          (x = 0)
//   23 #define gpioDDrIn(x)            (x = GP_In)
//   24 #define gpioDDrOut(x)           (x = GP_Out)
//   25 #define gpioPDIget(x)           (x)
//   26 #define gpioHIGH(x)             (x = 0xFFu)     // 点亮8位
//   27 #define gpioLOW(x)              (x = 0)
//   28 #define PTD0_DDR    PTD_BASE_PTR->PDDRs.Pin0
//   29 #define PTD1_DDR    PTD_BASE_PTR->PDDRs.Pin1
//   30 #define PTD2_DDR    PTD_BASE_PTR->PDDRs.Pin2
//   31 #define PTD3_DDR    PTD_BASE_PTR->PDDRs.Pin3
//   32 #define PTD4_DDR    PTD_BASE_PTR->PDDRs.Pin4
//   33 #define PTD5_DDR    PTD_BASE_PTR->PDDRs.Pin5
//   34 #define PTD6_DDR    PTD_BASE_PTR->PDDRs.Pin6
//   35 #define PTD7_DDR    PTD_BASE_PTR->PDDRs.Pin7
//   36 #define PTD8_DDR    PTD_BASE_PTR->PDDRs.Pin8
//   37 #define PTD9_DDR    PTD_BASE_PTR->PDDRs.Pin9
//   38 #define PTD10_DDR   PTD_BASE_PTR->PDDRs.Pin10
//   39 #define PTD11_DDR   PTD_BASE_PTR->PDDRs.Pin11
//   40 #define PTD12_DDR   PTD_BASE_PTR->PDDRs.Pin12
//   41 #define PTD13_DDR   PTD_BASE_PTR->PDDRs.Pin13
//   42 #define PTD14_DDR   PTD_BASE_PTR->PDDRs.Pin14
//   43 #define PTD15_DDR   PTD_BASE_PTR->PDDRs.Pin15
//   44 #define PTE24_DDR   PTE_BASE_PTR->PDDRs.Pin24
//   45 #define PTE25_DDR   PTE_BASE_PTR->PDDRs.Pin25
//   46 #define PTE26_DDR   PTE_BASE_PTR->PDDRs.Pin26
//   47 #define PTE27_DDR   PTE_BASE_PTR->PDDRs.Pin27
//   48 #define PTE28_DDR   PTE_BASE_PTR->PDDRs.Pin28
//   49 #define PTE24_OUT   PTE_BASE_PTR->PDORs.Pin24
//   50 #define PTE25_OUT   PTE_BASE_PTR->PDORs.Pin25
//   51 #define PTE26_OUT   PTE_BASE_PTR->PDORs.Pin26
//   52 #define PTE27_OUT   PTE_BASE_PTR->PDORs.Pin27
//   53 #define PTE28_OUT   PTE_BASE_PTR->PDORs.Pin28
//   54 #define PTD0_OUT    PTD_BASE_PTR->PDORs.Pin0
//   55 #define PTD1_OUT    PTD_BASE_PTR->PDORs.Pin1
//   56 #define PTD2_OUT    PTD_BASE_PTR->PDORs.Pin2
//   57 #define PTD3_OUT    PTD_BASE_PTR->PDORs.Pin3
//   58 #define PTD4_OUT    PTD_BASE_PTR->PDORs.Pin4
//   59 #define PTD5_OUT    PTD_BASE_PTR->PDORs.Pin5
//   60 #define PTD6_OUT    PTD_BASE_PTR->PDORs.Pin6
//   61 #define PTD7_OUT    PTD_BASE_PTR->PDORs.Pin7
//   62 #define PTD8_OUT    PTD_BASE_PTR->PDORs.Pin8
//   63 #define PTD9_OUT    PTD_BASE_PTR->PDORs.Pin9
//   64 #define PTD10_OUT   PTD_BASE_PTR->PDORs.Pin10
//   65 #define PTD11_OUT   PTD_BASE_PTR->PDORs.Pin11
//   66 #define PTD12_OUT   PTD_BASE_PTR->PDORs.Pin12
//   67 #define PTD13_OUT   PTD_BASE_PTR->PDORs.Pin13
//   68 #define PTD14_OUT   PTD_BASE_PTR->PDORs.Pin14
//   69 #define PTD15_OUT   PTD_BASE_PTR->PDORs.Pin15
//   70 /* 寄存器描述 by 朱葛峻 20140403 */
//   71 // #define IR(Index)       The index instruction specifies the RAM control indexes (R00h to RFFh).
//   72 /* 读芯片 */
//   73 #define R00_DeviceCodeRead      0x0000u
//   74 /* 振荡器 */
//   75 #define R00_OSC                 0x0000u
//   76 /* 屏幕控制 */
//   77 #define R01_DriverOutC          0x0001u
//   78 #define R02_LCDdriveAC          0x0002u
//   79 /* 比较 */
//   80 #define R05_CmpReg              0x0005u
//   81 #define R06_CmpReg              0x0006u
//   82 /*  */
//   83 #define R07_DisplayC            0x0007u
//   84 #define R0B_FrameCycle          0x000Bu
//   85 #define R0F_GateScanPos         0x000Fu
//   86 /* 模式选择 */
//   87 #define R10_SleepMode           0x0010u
//   88 #define R11_EntryMode           0x0011u         //
//   89 /* 接口控制 */
//   90 #define R15_GenInterfaceC       0x0015u         // 一般接口控制 // 00dx，设置信号极性
//   91 #define R16_LinePorch           0x0016u         //
//   92 #define R17_VerPorch            0x0017u         // 
//   93 /* Power 控制 */
//   94 #define R03_PowerC_1            0x0003u
//   95 #define R0C_PowerC_2            0x000Cu
//   96 #define R0D_PowerC_3            0x000Du
//   97 #define R0E_PowerC_4            0x000Eu
//   98 #define R1E_PowerC_5            0x001Eu
//   99 /* GRAM 操作 */
//  100 #define DRAWPOINT               0x0022u
//  101 #define R22_WdataToGRAM         0x0022u         // SSD1289 selects the grayscale level according to the GDDRAM data.
//  102 #define R22_RdataFrGRAM         0x0022u         // RW = W then write ; RW = R then read ;
//  103 #define R23_RAMwDataMask        0x0023u
//  104 #define R24_RAMwDataMask        0x0024u
//  105 /* Gamma 控制 */
//  106 // function for the 262,144-color display.
//  107 #define R30_GammaC_0            0x0030u
//  108 #define R31_GammaC_1            0x0031u
//  109 #define R32_GammaC_2            0x0032u
//  110 #define R33_GammaC_3            0x0033u
//  111 #define R34_GammaC_4            0x0034u
//  112 #define R35_GammaC_5            0x0035u
//  113 #define R36_GammaC_6            0x0036u
//  114 #define R37_GammaC_7            0x0037u
//  115 #define R3A_GammaC_8            0x003Au
//  116 #define R3B_GammaC_9            0x003Bu
//  117 //
//  118 /* 窗口显示 */
//  119 #define R41_VerScrC_1           0x0041u
//  120 #define R42_VerScrC_2           0x0042u
//  121 #define R44_LineRAMpos          0x0044u
//  122 #define R45_VerticalRAMpos      0x0045u
//  123 #define R46_VerticalRAMpos      0x0046u
//  124 #define R48_1stWindow           0x0048u
//  125 #define R49_1stWindowEnd        0x0049u
//  126 #define R4A_2ndWindow           0x004Au
//  127 #define R4B_2ndWindowEnd        0x004Bu
//  128 #define R4E_XAD                 0x004Eu         // Make initial settings for the GDDRAM X address in the AC
//  129 #define R4F_YAD                 0x004Fu
//  130 /*  */
//  131 #define R25_FrameFreC           0x0025u         // 框架频率控制
//  132 #define R28_VcomOTP_1           0x0028u         // When OTP is access, these registers must be set accordantly.
//  133 #define R29_VcomOTP_2           0x0029u 
//  134 /* 寄存器描述结束 */
//  135 
//  136 #define D0              PTD0_OUT
//  137 #define D1              PTD1_OUT
//  138 #define D2              PTD2_OUT
//  139 #define D3              PTD3_OUT
//  140 #define D4              PTD4_OUT
//  141 #define D5              PTD5_OUT
//  142 #define D6              PTD6_OUT
//  143 #define D7              PTD7_OUT
//  144 #define D8              PTD8_OUT
//  145 #define D9              PTD9_OUT
//  146 #define D10             PTD10_OUT
//  147 #define D11             PTD11_OUT
//  148 #define D12             PTD12_OUT
//  149 #define D13             PTD13_OUT
//  150 #define D14             PTD14_OUT
//  151 #define D15             PTD15_OUT
//  152 #define Data_Var        PTD_BASE_PTR->PDORwords.PIN0_15
//  153 #define Data_DDR        PTD_BASE_PTR->PDDRwords.PIN0_15
//  154 
//  155 #define CS              PTE25_OUT
//  156 
//  157 #define DC              PTE24_OUT
//  158 #define RS              PTE24_OUT
//  159 
//  160 #define WR              PTE27_OUT
//  161 #define RD              PTE26_OUT
//  162 #define RESET           PTE28_OUT
//  163 
//  164 
//  165 #define X_MAX   320
//  166 #define Y_MAX   240
//  167 
//  168 
//  169 #define Pin_READ    1
//  170 #define Pin_WRITE   0
//  171 
//  172 

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//  173 const uint8 Num4X8 [][8] = 
Num4X8:
        DATA
        DC8 60, 66, 66, 60, 0, 0, 0, 0, 68, 66, 126, 64, 0, 0, 0, 0, 102, 82
        DC8 78, 0, 0, 0, 0, 0, 102, 74, 118, 0, 0, 0, 0, 0, 24, 20, 126, 0, 0
        DC8 0, 0, 0, 110, 74, 122, 0, 0, 0, 0, 0, 60, 74, 74, 48, 0, 0, 0, 0, 0
        DC8 2, 122, 6, 0, 0, 0, 0, 126, 74, 126, 0, 0, 0, 0, 0, 12, 82, 60, 0
        DC8 0, 0, 0, 0
//  174 {
//  175     {0x3C,0x42,0x42,0x3C},/*"0",0*/
//  176     {0x44,0x42,0x7E,0x40},/*"1",1*/
//  177     {0x66,0x52,0x4E,0x00},/*"2",2*/
//  178     {0x66,0x4A,0x76,0x00},/*"3",3*/
//  179     {0x18,0x14,0x7E,0x00},/*"4",4*/
//  180     {0x6E,0x4A,0x7A,0x00},/*"5",5*/       
//  181     {0x3C,0x4A,0x4A,0x30},/*"6",6*/
//  182     {0x00,0x02,0x7A,0x06},/*"7",7*/     
//  183     {0x7E,0x4A,0x7E,0x00},/*"8",8*/
//  184     {0x0C,0x52,0x3C,0x00},/*"9",9*/
//  185 };
//  186 

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//  187 const uint8 Chinese[][8] =
Chinese:
        DATA
        DC8 0, 28, 36, 126, 36, 36, 28, 0, 0, 16, 120, 66, 68, 64, 16, 0
//  188 {
//  189     {0x00,0x1C,0x24,0x7E,0x24,0x24,0x1C,0x00},/*"中",0*/
//  190     {0x00,0x10,0x78,0x42,0x44,0x40,0x10,0x00},/*"心",1*/
//  191 };
//  192 

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//  193 const uint8 C12x12[][12][2] =
C12x12:
        DATA
        DC8 136, 0, 104, 0, 255, 15, 40, 8, 64, 4, 254, 3, 2, 0, 2, 0, 254, 7
        DC8 0, 8, 0, 14, 0, 0, 252, 3, 36, 1, 36, 1, 36, 1, 255, 7, 36, 9, 36
        DC8 9, 36, 9, 252, 9, 0, 8, 0, 14, 0, 0, 17, 8, 242, 7, 0, 8, 122, 10
        DC8 74, 9, 202, 8, 255, 15, 202, 8, 74, 9, 122, 10, 2, 8, 0, 0, 0, 8
        DC8 254, 7, 10, 0, 138, 8, 190, 9, 170, 10, 171, 4, 170, 4, 190, 10
        DC8 138, 9, 10, 8, 0, 0, 4, 2, 252, 3, 36, 2, 36, 0, 24, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 0, 224, 3, 60, 0, 224, 3, 28, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 252, 3, 60, 0, 192, 3, 60
        DC8 0, 252, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 2, 252, 3
        DC8 4, 2, 4, 2, 248, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 9
        DC8 222, 8, 16, 4, 255, 2, 18, 1, 146, 0, 249, 9, 13, 4, 235, 3, 9, 4
        DC8 249, 9, 0, 0, 2, 2, 138, 2, 82, 2, 154, 2, 214, 2, 179, 15, 210, 2
        DC8 138, 2, 82, 2, 138, 2, 2, 2, 0, 0, 0, 0, 0, 0, 48, 3, 48, 3, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 34, 4, 68, 2, 0, 8, 252
        DC8 7, 36, 8, 228, 8, 36, 5, 63, 2, 36, 5, 228, 8, 12, 8, 0, 0, 34, 8
        DC8 254, 7, 34, 0, 34, 0, 254, 15, 34, 0, 0, 8, 136, 8, 68, 4, 35, 2
        DC8 24, 1, 0, 0, 252, 1, 4, 0, 255, 15, 4, 1, 252, 1, 0, 0, 221, 15, 85
        DC8 5, 213, 7, 85, 5, 221, 15, 0, 0, 0, 8, 254, 7, 10, 0, 138, 8, 190
        DC8 9, 170, 10, 171, 4, 170, 4, 190, 10, 138, 9, 10, 8, 0, 0, 0, 8, 2
        DC8 8, 226, 15, 2, 8, 2, 8, 254, 15, 66, 8, 66, 8, 66, 8, 66, 8, 0, 8
        DC8 0, 0, 242, 8, 146, 8, 158, 7, 0, 0, 68, 4, 100, 6, 85, 5, 206, 4
        DC8 68, 4, 36, 6, 4, 12, 0, 0, 152, 0, 247, 15, 148, 4, 148, 8, 0, 6
        DC8 254, 1, 170, 15, 170, 4, 250, 4, 170, 4, 174, 15, 0, 0, 32, 0, 160
        DC8 15, 62, 8, 32, 12, 32, 10, 191, 9, 36, 10, 36, 12, 36, 8, 164, 15
        DC8 32, 0, 0, 0, 0, 8, 2, 8, 66, 8, 66, 8, 66, 8, 66, 8, 66, 8, 66, 8
        DC8 66, 8, 2, 8, 0, 8, 0, 0, 8, 8, 244, 7, 83, 1, 82, 1, 82, 1, 242, 7
        DC8 90, 1, 86, 1, 80, 9, 240, 15, 0, 0, 0, 0, 4, 8, 4, 4, 4, 3, 252, 0
        DC8 37, 0, 38, 0, 36, 8, 36, 8, 36, 8, 228, 7, 4, 0, 0, 0, 4, 0, 124, 0
        DC8 128, 3, 224, 0, 28, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 32, 8, 224, 15, 32, 10, 32, 2, 192, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 4, 2, 252, 3, 32, 0, 32, 0, 252, 3, 4, 2, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 2, 160, 3, 96, 2, 32, 2, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 255, 255, 255, 255, 255, 255
        DC8 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255
        DC8 255, 255, 255, 255, 0, 0, 32, 0, 32, 0, 32, 0, 32, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 248, 1, 4, 2, 4, 2, 4, 2, 248, 1, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 2, 252, 3, 0, 2, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 3, 132, 2, 68, 2, 36
        DC8 2, 24, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 1, 4, 2, 36
        DC8 2, 36, 2, 216, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, 0
        DC8 176, 0, 136, 0, 252, 3, 128, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 60, 1, 36, 2, 36, 2, 36, 2, 196, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 248, 1, 36, 2, 36, 2, 44, 2, 192, 1, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 0, 4, 0, 228, 3, 28, 0, 4, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 216, 1, 36, 2, 36, 2, 36, 2
        DC8 216, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 56, 0, 68, 3, 68
        DC8 2, 68, 2, 248, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
//  194 {
//  195   
//  196   {{0x88,0x00},{0x68,0x00},{0xFF,0x0F},{0x28,0x08},{0x40,0x04},{0xFE,0x03},{0x02,0x00},{0x02,0x00},{0xFE,0x07},{0x00,0x08},{0x00,0x0E},{0x00,0x00}},/*"机",6*/
//  197   {{0xFC,0x03},{0x24,0x01},{0x24,0x01},{0x24,0x01},{0xFF,0x07},{0x24,0x09},{0x24,0x09},{0x24,0x09},{0xFC,0x09},{0x00,0x08},{0x00,0x0E},{0x00,0x00}},/*"电",7*/
//  198   {{0x11,0x08},{0xF2,0x07},{0x00,0x08},{0x7A,0x0A},{0x4A,0x09},{0xCA,0x08},{0xFF,0x0F},{0xCA,0x08},{0x4A,0x09},{0x7A,0x0A},{0x02,0x08},{0x00,0x00}},/*"速",10*/
//  199   {{0x00,0x08},{0xFE,0x07},{0x0A,0x00},{0x8A,0x08},{0xBE,0x09},{0xAA,0x0A},{0xAB,0x04},{0xAA,0x04},{0xBE,0x0A},{0x8A,0x09},{0x0A,0x08},{0x00,0x00}},/*"度",11*/
//  200   {{0x04,0x02},{0xFC,0x03},{0x24,0x02},{0x24,0x00},{0x18,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00}},/*"P",14*/
//  201   {{0x1C,0x00},{0xE0,0x03},{0x3C,0x00},{0xE0,0x03},{0x1C,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00}},/*"W",15*/
//  202   {{0xFC,0x03},{0x3C,0x00},{0xC0,0x03},{0x3C,0x00},{0xFC,0x03},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00}},/*"M",16*/
//  203   {{0x04,0x02},{0xFC,0x03},{0x04,0x02},{0x04,0x02},{0xF8,0x01},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00}},/*"D",17*/
//  204   // 以下字符用于电设比赛
//  205   {{0x10,0x09},{0xDE,0x08},{0x10,0x04},{0xFF,0x02},{0x12,0x01},{0x92,0x00},{0xF9,0x09},{0x0D,0x04},{0xEB,0x03},{0x09,0x04},{0xF9,0x09},{0x00,0x00}},/*"频",18*/
//  206   {{0x02,0x02},{0x8A,0x02},{0x52,0x02},{0x9A,0x02},{0xD6,0x02},{0xB3,0x0F},{0xD2,0x02},{0x8A,0x02},{0x52,0x02},{0x8A,0x02},{0x02,0x02},{0x00,0x00}},/*"率",19*/
//  207   {{0x00,0x00},{0x00,0x00},{0x30,0x03},{0x30,0x03},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00}},/*"：",20*/
//  208   {{0x22,0x04},{0x44,0x02},{0x00,0x08},{0xFC,0x07},{0x24,0x08},{0xE4,0x08},{0x24,0x05},{0x3F,0x02},{0x24,0x05},{0xE4,0x08},{0x0C,0x08},{0x00,0x00}},/*"波",21*/
//  209   {{0x22,0x08},{0xFE,0x07},{0x22,0x00},{0x22,0x00},{0xFE,0x0F},{0x22,0x00},{0x00,0x08},{0x88,0x08},{0x44,0x04},{0x23,0x02},{0x18,0x01},{0x00,0x00}},/*"形",22*/
//  210   {{0xFC,0x01},{0x04,0x00},{0xFF,0x0F},{0x04,0x01},{0xFC,0x01},{0x00,0x00},{0xDD,0x0F},{0x55,0x05},{0xD5,0x07},{0x55,0x05},{0xDD,0x0F},{0x00,0x00}},/*"幅",23*/
//  211   {{0x00,0x08},{0xFE,0x07},{0x0A,0x00},{0x8A,0x08},{0xBE,0x09},{0xAA,0x0A},{0xAB,0x04},{0xAA,0x04},{0xBE,0x0A},{0x8A,0x09},{0x0A,0x08},{0x00,0x00}},/*"度",24*/
//  212   {{0x00,0x08},{0x02,0x08},{0xE2,0x0F},{0x02,0x08},{0x02,0x08},{0xFE,0x0F},{0x42,0x08},{0x42,0x08},{0x42,0x08},{0x42,0x08},{0x00,0x08},{0x00,0x00}},/*"正",25*/
//  213   {{0xF2,0x08},{0x92,0x08},{0x9E,0x07},{0x00,0x00},{0x44,0x04},{0x64,0x06},{0x55,0x05},{0xCE,0x04},{0x44,0x04},{0x24,0x06},{0x04,0x0C},{0x00,0x00}},/*"弦",26*/
//  214   {{0x98,0x00},{0xF7,0x0F},{0x94,0x04},{0x94,0x08},{0x00,0x06},{0xFE,0x01},{0xAA,0x0F},{0xAA,0x04},{0xFA,0x04},{0xAA,0x04},{0xAE,0x0F},{0x00,0x00}},/*"锯",27*/
//  215   {{0x20,0x00},{0xA0,0x0F},{0x3E,0x08},{0x20,0x0C},{0x20,0x0A},{0xBF,0x09},{0x24,0x0A},{0x24,0x0C},{0x24,0x08},{0xA4,0x0F},{0x20,0x00},{0x00,0x00}},/*"齿",28*/
//  216   {{0x00,0x08},{0x02,0x08},{0x42,0x08},{0x42,0x08},{0x42,0x08},{0x42,0x08},{0x42,0x08},{0x42,0x08},{0x42,0x08},{0x02,0x08},{0x00,0x08},{0x00,0x00}},/*"三",29*/
//  217   {{0x08,0x08},{0xF4,0x07},{0x53,0x01},{0x52,0x01},{0x52,0x01},{0xF2,0x07},{0x5A,0x01},{0x56,0x01},{0x50,0x09},{0xF0,0x0F},{0x00,0x00},{0x00,0x00}},/*"角",30*/
//  218   {{0x04,0x08},{0x04,0x04},{0x04,0x03},{0xFC,0x00},{0x25,0x00},{0x26,0x00},{0x24,0x08},{0x24,0x08},{0x24,0x08},{0xE4,0x07},{0x04,0x00},{0x00,0x00}},/*"方",31*/
//  219   {{0x04,0x00},{0x7C,0x00},{0x80,0x03},{0xE0,0x00},{0x1C,0x00},{0x04,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00}},/*"V",32*/
//  220   {{0x00,0x00},{0x00,0x02},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00}},/*".",33*/
//  221   {{0x20,0x08},{0xE0,0x0F},{0x20,0x0A},{0x20,0x02},{0xC0,0x01},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00}},/*"p",34*/
//  222   {{0x04,0x02},{0xFC,0x03},{0x20,0x00},{0x20,0x00},{0xFC,0x03},{0x04,0x02},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00}},/*"H",35*/
//  223   {{0x00,0x00},{0x20,0x02},{0xA0,0x03},{0x60,0x02},{0x20,0x02},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00}},/*"z",36*/
//  224   {{0xFF,0xFF},{0xFF,0xFF},{0xFF,0xFF},{0xFF,0xFF},{0xFF,0xFF},{0xFF,0xFF},{0xFF,0xFF},{0xFF,0xFF},{0xFF,0xFF},{0xFF,0xFF},{0xFF,0xFF},{0xFF,0xFF}},/*CLEAR,37*/
//  225   {{0x00,0x00},{0x20,0x00},{0x20,0x00},{0x20,0x00},{0x20,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00}},/*"-",38*/
//  226   {{0xF8,0x01},{0x04,0x02},{0x04,0x02},{0x04,0x02},{0xF8,0x01},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00}},/*"0",39*/
//  227   {{0x00,0x00},{0x08,0x02},{0xFC,0x03},{0x00,0x02},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00}},/*"1",40*/
//  228   {{0x18,0x03},{0x84,0x02},{0x44,0x02},{0x24,0x02},{0x18,0x02},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00}},/*"2",41*/
//  229   {{0x08,0x01},{0x04,0x02},{0x24,0x02},{0x24,0x02},{0xD8,0x01},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00}},/*"3",42*/
//  230   {{0x40,0x00},{0xB0,0x00},{0x88,0x00},{0xFC,0x03},{0x80,0x02},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00}},/*"4",43*/
//  231   {{0x3C,0x01},{0x24,0x02},{0x24,0x02},{0x24,0x02},{0xC4,0x01},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00}},/*"5",44*/
//  232   {{0xF8,0x01},{0x24,0x02},{0x24,0x02},{0x2C,0x02},{0xC0,0x01},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00}},/*"6",45*/
//  233   {{0x0C,0x00},{0x04,0x00},{0xE4,0x03},{0x1C,0x00},{0x04,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00}},/*"7",46*/
//  234   {{0xD8,0x01},{0x24,0x02},{0x24,0x02},{0x24,0x02},{0xD8,0x01},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00}},/*"8",47*/
//  235   {{0x38,0x00},{0x44,0x03},{0x44,0x02},{0x44,0x02},{0xF8,0x01},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00},{0x00,0x00}},/*"9",48*/
//  236   
//  237 };
//  238 

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//  239 const uint8 C6x8[][6]=
C6x8:
        DATA
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 47, 0, 0, 0, 0, 7, 0, 7, 0, 0, 20, 127
        DC8 20, 127, 20, 0, 36, 42, 127, 42, 18, 0, 98, 100, 8, 19, 35, 0, 54
        DC8 73, 85, 34, 80, 0, 0, 5, 3, 0, 0, 0, 0, 28, 34, 65, 0, 0, 0, 65, 34
        DC8 28, 0, 0, 20, 8, 62, 8, 20, 0, 8, 8, 62, 8, 8, 0, 0, 0, 160, 96, 0
        DC8 0, 8, 8, 8, 8, 8, 0, 0, 96, 96, 0, 0, 0, 32, 16, 8, 4, 2, 0, 62, 81
        DC8 73, 69, 62, 0, 0, 66, 127, 64, 0, 0, 66, 97, 81, 73, 70, 0, 33, 65
        DC8 69, 75, 49, 0, 24, 20, 18, 127, 16, 0, 39, 69, 69, 69, 57, 0, 60
        DC8 74, 73, 73, 48, 0, 1, 113, 9, 5, 3, 0, 54, 73, 73, 73, 54, 0, 6, 73
        DC8 73, 41, 30, 0, 0, 54, 54, 0, 0, 0, 0, 86, 54, 0, 0, 0, 8, 20, 34
        DC8 65, 0, 0, 20, 20, 20, 20, 20, 0, 0, 65, 34, 20, 8, 0, 2, 1, 81, 9
        DC8 6, 0, 50, 73, 89, 81, 62, 0, 124, 18, 17, 18, 124, 0, 127, 73, 73
        DC8 73, 54, 0, 62, 65, 65, 65, 34, 0, 127, 65, 65, 34, 28, 0, 127, 73
        DC8 73, 73, 65, 0, 127, 9, 9, 9, 1, 0, 62, 65, 73, 73, 122, 0, 127, 8
        DC8 8, 8, 127, 0, 0, 65, 127, 65, 0, 0, 32, 64, 65, 63, 1, 0, 127, 8
        DC8 20, 34, 65, 0, 127, 64, 64, 64, 64, 0, 127, 2, 12, 2, 127, 0, 127
        DC8 4, 8, 16, 127, 0, 62, 65, 65, 65, 62, 0, 127, 9, 9, 9, 6, 0, 62, 65
        DC8 81, 33, 94, 0, 127, 9, 25, 41, 70, 0, 70, 73, 73, 73, 49, 0, 1, 1
        DC8 127, 1, 1, 0, 63, 64, 64, 64, 63, 0, 31, 32, 64, 32, 31, 0, 63, 64
        DC8 56, 64, 63, 0, 99, 20, 8, 20, 99, 0, 7, 8, 112, 8, 7, 0, 97, 81, 73
        DC8 69, 67, 0, 0, 127, 65, 65, 0, 0, 85, 42, 85, 42, 85, 0, 0, 65, 65
        DC8 127, 0, 0, 4, 2, 1, 2, 4, 0, 64, 64, 64, 64, 64, 0, 0, 1, 2, 4, 0
        DC8 0, 32, 84, 84, 84, 120, 0, 127, 72, 68, 68, 56, 0, 56, 68, 68, 68
        DC8 32, 0, 56, 68, 68, 72, 127, 0, 56, 84, 84, 84, 24, 0, 8, 126, 9, 1
        DC8 2, 0, 24, 164, 164, 164, 124, 0, 127, 8, 4, 4, 120, 0, 0, 68, 125
        DC8 64, 0, 0, 64, 128, 132, 125, 0, 0, 127, 16, 40, 68, 0, 0, 0, 65
        DC8 127, 64, 0, 0, 124, 4, 24, 4, 120, 0, 124, 8, 4, 4, 120, 0, 56, 68
        DC8 68, 68, 56, 0, 252, 36, 36, 36, 24, 0, 24, 36, 36, 24, 252, 0, 124
        DC8 8, 4, 4, 8, 0, 72, 84, 84, 84, 32, 0, 4, 63, 68, 64, 32, 0, 60, 64
        DC8 64, 32, 124, 0, 28, 32, 64, 32, 28, 0, 60, 64, 48, 64, 60, 0, 68
        DC8 40, 16, 40, 68, 0, 28, 160, 160, 160, 124, 0, 68, 100, 84, 76, 68
        DC8 20, 20, 20, 20, 20, 20
//  240 {
//  241     { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 },   // sp
//  242     { 0x00, 0x00, 0x00, 0x2f, 0x00, 0x00 },   // !
//  243     { 0x00, 0x00, 0x07, 0x00, 0x07, 0x00 },   // "
//  244     { 0x00, 0x14, 0x7f, 0x14, 0x7f, 0x14 },   // #
//  245     { 0x00, 0x24, 0x2a, 0x7f, 0x2a, 0x12 },   // $
//  246     { 0x00, 0x62, 0x64, 0x08, 0x13, 0x23 },   // %
//  247     { 0x00, 0x36, 0x49, 0x55, 0x22, 0x50 },   // &
//  248     { 0x00, 0x00, 0x05, 0x03, 0x00, 0x00 },   // '
//  249     { 0x00, 0x00, 0x1c, 0x22, 0x41, 0x00 },   // (
//  250     { 0x00, 0x00, 0x41, 0x22, 0x1c, 0x00 },   // )
//  251     { 0x00, 0x14, 0x08, 0x3E, 0x08, 0x14 },   // *
//  252     { 0x00, 0x08, 0x08, 0x3E, 0x08, 0x08 },   // +
//  253     { 0x00, 0x00, 0x00, 0xA0, 0x60, 0x00 },   // ,
//  254     { 0x00, 0x08, 0x08, 0x08, 0x08, 0x08 },   // -
//  255     { 0x00, 0x00, 0x60, 0x60, 0x00, 0x00 },   // .
//  256     { 0x00, 0x20, 0x10, 0x08, 0x04, 0x02 },   // /
//  257     { 0x00, 0x3E, 0x51, 0x49, 0x45, 0x3E },   // 0
//  258     { 0x00, 0x00, 0x42, 0x7F, 0x40, 0x00 },   // 1
//  259     { 0x00, 0x42, 0x61, 0x51, 0x49, 0x46 },   // 2
//  260     { 0x00, 0x21, 0x41, 0x45, 0x4B, 0x31 },   // 3
//  261     { 0x00, 0x18, 0x14, 0x12, 0x7F, 0x10 },   // 4
//  262     { 0x00, 0x27, 0x45, 0x45, 0x45, 0x39 },   // 5
//  263     { 0x00, 0x3C, 0x4A, 0x49, 0x49, 0x30 },   // 6
//  264     { 0x00, 0x01, 0x71, 0x09, 0x05, 0x03 },   // 7
//  265     { 0x00, 0x36, 0x49, 0x49, 0x49, 0x36 },   // 8
//  266     { 0x00, 0x06, 0x49, 0x49, 0x29, 0x1E },   // 9
//  267     { 0x00, 0x00, 0x36, 0x36, 0x00, 0x00 },   // :
//  268     { 0x00, 0x00, 0x56, 0x36, 0x00, 0x00 },   // ;
//  269     { 0x00, 0x08, 0x14, 0x22, 0x41, 0x00 },   // <
//  270     { 0x00, 0x14, 0x14, 0x14, 0x14, 0x14 },   // =
//  271     { 0x00, 0x00, 0x41, 0x22, 0x14, 0x08 },   // >
//  272     { 0x00, 0x02, 0x01, 0x51, 0x09, 0x06 },   // ?
//  273     { 0x00, 0x32, 0x49, 0x59, 0x51, 0x3E },   // @
//  274     { 0x00, 0x7C, 0x12, 0x11, 0x12, 0x7C },   // A
//  275     { 0x00, 0x7F, 0x49, 0x49, 0x49, 0x36 },   // B
//  276     { 0x00, 0x3E, 0x41, 0x41, 0x41, 0x22 },   // C
//  277     { 0x00, 0x7F, 0x41, 0x41, 0x22, 0x1C },   // D
//  278     { 0x00, 0x7F, 0x49, 0x49, 0x49, 0x41 },   // E
//  279     { 0x00, 0x7F, 0x09, 0x09, 0x09, 0x01 },   // F
//  280     { 0x00, 0x3E, 0x41, 0x49, 0x49, 0x7A },   // G
//  281     { 0x00, 0x7F, 0x08, 0x08, 0x08, 0x7F },   // H
//  282     { 0x00, 0x00, 0x41, 0x7F, 0x41, 0x00 },   // I
//  283     { 0x00, 0x20, 0x40, 0x41, 0x3F, 0x01 },   // J
//  284     { 0x00, 0x7F, 0x08, 0x14, 0x22, 0x41 },   // K
//  285     { 0x00, 0x7F, 0x40, 0x40, 0x40, 0x40 },   // L
//  286     { 0x00, 0x7F, 0x02, 0x0C, 0x02, 0x7F },   // M
//  287     { 0x00, 0x7F, 0x04, 0x08, 0x10, 0x7F },   // N
//  288     { 0x00, 0x3E, 0x41, 0x41, 0x41, 0x3E },   // O
//  289     { 0x00, 0x7F, 0x09, 0x09, 0x09, 0x06 },   // P
//  290     { 0x00, 0x3E, 0x41, 0x51, 0x21, 0x5E },   // Q
//  291     { 0x00, 0x7F, 0x09, 0x19, 0x29, 0x46 },   // R
//  292     { 0x00, 0x46, 0x49, 0x49, 0x49, 0x31 },   // S
//  293     { 0x00, 0x01, 0x01, 0x7F, 0x01, 0x01 },   // T
//  294     { 0x00, 0x3F, 0x40, 0x40, 0x40, 0x3F },   // U
//  295     { 0x00, 0x1F, 0x20, 0x40, 0x20, 0x1F },   // V
//  296     { 0x00, 0x3F, 0x40, 0x38, 0x40, 0x3F },   // W
//  297     { 0x00, 0x63, 0x14, 0x08, 0x14, 0x63 },   // X
//  298     { 0x00, 0x07, 0x08, 0x70, 0x08, 0x07 },   // Y
//  299     { 0x00, 0x61, 0x51, 0x49, 0x45, 0x43 },   // Z
//  300     { 0x00, 0x00, 0x7F, 0x41, 0x41, 0x00 },   // [
//  301     { 0x00, 0x55, 0x2A, 0x55, 0x2A, 0x55 },   // 55
//  302     { 0x00, 0x00, 0x41, 0x41, 0x7F, 0x00 },   // ]
//  303     { 0x00, 0x04, 0x02, 0x01, 0x02, 0x04 },   // ^
//  304     { 0x00, 0x40, 0x40, 0x40, 0x40, 0x40 },   // _
//  305     { 0x00, 0x00, 0x01, 0x02, 0x04, 0x00 },   // '
//  306     { 0x00, 0x20, 0x54, 0x54, 0x54, 0x78 },   // a
//  307     { 0x00, 0x7F, 0x48, 0x44, 0x44, 0x38 },   // b
//  308     { 0x00, 0x38, 0x44, 0x44, 0x44, 0x20 },   // c
//  309     { 0x00, 0x38, 0x44, 0x44, 0x48, 0x7F },   // d
//  310     { 0x00, 0x38, 0x54, 0x54, 0x54, 0x18 },   // e
//  311     { 0x00, 0x08, 0x7E, 0x09, 0x01, 0x02 },   // f
//  312     { 0x00, 0x18, 0xA4, 0xA4, 0xA4, 0x7C },   // g
//  313     { 0x00, 0x7F, 0x08, 0x04, 0x04, 0x78 },   // h
//  314     { 0x00, 0x00, 0x44, 0x7D, 0x40, 0x00 },   // i
//  315     { 0x00, 0x40, 0x80, 0x84, 0x7D, 0x00 },   // j
//  316     { 0x00, 0x7F, 0x10, 0x28, 0x44, 0x00 },   // k
//  317     { 0x00, 0x00, 0x41, 0x7F, 0x40, 0x00 },   // l
//  318     { 0x00, 0x7C, 0x04, 0x18, 0x04, 0x78 },   // m
//  319     { 0x00, 0x7C, 0x08, 0x04, 0x04, 0x78 },   // n
//  320     { 0x00, 0x38, 0x44, 0x44, 0x44, 0x38 },   // o
//  321     { 0x00, 0xFC, 0x24, 0x24, 0x24, 0x18 },   // p
//  322     { 0x00, 0x18, 0x24, 0x24, 0x18, 0xFC },   // q
//  323     { 0x00, 0x7C, 0x08, 0x04, 0x04, 0x08 },   // r
//  324     { 0x00, 0x48, 0x54, 0x54, 0x54, 0x20 },   // s
//  325     { 0x00, 0x04, 0x3F, 0x44, 0x40, 0x20 },   // t
//  326     { 0x00, 0x3C, 0x40, 0x40, 0x20, 0x7C },   // u
//  327     { 0x00, 0x1C, 0x20, 0x40, 0x20, 0x1C },   // v
//  328     { 0x00, 0x3C, 0x40, 0x30, 0x40, 0x3C },   // w
//  329     { 0x00, 0x44, 0x28, 0x10, 0x28, 0x44 },   // x
//  330     { 0x00, 0x1C, 0xA0, 0xA0, 0xA0, 0x7C },   // y
//  331     { 0x00, 0x44, 0x64, 0x54, 0x4C, 0x44 },   // z
//  332     { 0x14, 0x14, 0x14, 0x14, 0x14, 0x14 }    // horiz lines
//  333 
//  334 
//  335 };
//  336 
//  337 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  338  char data_PWM1[308];
data_PWM1:
        DS8 308

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  339  char data_PWM2[308];
data_PWM2:
        DS8 308

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  340   char data_PWM3[308];
data_PWM3:
        DS8 308

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  341    char data_PWM4[308];
data_PWM4:
        DS8 308
//  342 
//  343 
//  344 
//  345 
//  346 
//  347 
//  348 // 8x8范围内输出字模，以左下角为标准位置参考

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  349 void LCD_8x8show(uint16 startXPos,uint8 YPos,uint16 color,uint8 Num)
//  350 {
LCD_8x8show:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
//  351     uint8 LineLoop = 0;
        MOVS     R8,#+0
//  352     uint8 ColLoop = 0;
        MOVS     R9,#+0
//  353     for(LineLoop=0;LineLoop<8;LineLoop++)
        MOVS     R0,#+0
        MOV      R8,R0
        B.N      ??LCD_8x8show_0
//  354     {
//  355         for(ColLoop=0;ColLoop<8;ColLoop++)
//  356         {
//  357             if(0x80 == (0x80&((Chinese[Num][LineLoop])<<ColLoop)))
??LCD_8x8show_1:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??DataTable7
        ADDS     R0,R0,R7, LSL #+3
        LDRB     R0,[R8, R0]
        LSLS     R0,R0,R9
        LSLS     R0,R0,#+24
        BPL.N    ??LCD_8x8show_2
//  358             {
//  359                 LCD_SetCursor(startXPos+LineLoop,YPos+ColLoop);
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        UXTAB    R1,R9,R5
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        UXTAB    R0,R4,R8
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_SetCursor
//  360                 LCD_writeReg(DRAWPOINT,color);
        MOVS     R1,R6
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+34
        BL       LCD_writeReg
//  361             }
//  362         }
??LCD_8x8show_2:
        ADDS     R9,R9,#+1
??LCD_8x8show_3:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+8
        BLT.N    ??LCD_8x8show_1
        ADDS     R8,R8,#+1
??LCD_8x8show_0:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+8
        BGE.N    ??LCD_8x8show_4
        MOVS     R9,#+0
        B.N      ??LCD_8x8show_3
//  363     }
//  364 }
??LCD_8x8show_4:
        POP      {R0,R4-R9,PC}    ;; return
//  365 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  366 void LCD_12x12show(uint16 startXPos,uint8 YPos,uint16 color,uint8 Num)
//  367 {
LCD_12x12show:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
//  368     // 以下必须各种修改
//  369     uint8 LineLoop = 0;
        MOVS     R8,#+0
//  370     uint8 ColLoop = 0;
        MOVS     R9,#+0
//  371     for(LineLoop=0;LineLoop<12;LineLoop++)
        MOVS     R0,#+0
        MOV      R8,R0
        B.N      ??LCD_12x12show_0
//  372     {
//  373         for(ColLoop=0;ColLoop<12;ColLoop++)
//  374         {
//  375             if(0x80 == (0x80&((C12x12[Num][LineLoop][0])<<ColLoop)))
??LCD_12x12show_1:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOVS     R0,#+24
        LDR.W    R1,??DataTable7_1
        MLA      R0,R0,R7,R1
        LDRB     R0,[R0, R8, LSL #+1]
        LSLS     R0,R0,R9
        LSLS     R0,R0,#+24
        BPL.N    ??LCD_12x12show_2
//  376             {
//  377                 LCD_SetCursor(startXPos+LineLoop,YPos+ColLoop);
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        UXTAB    R1,R9,R5
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        UXTAB    R0,R4,R8
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_SetCursor
//  378                 LCD_writeReg(DRAWPOINT,color);
        MOVS     R1,R6
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+34
        BL       LCD_writeReg
//  379             }
//  380             if(0x80 == (0x80&((C12x12[Num][LineLoop][1])<<ColLoop)))
??LCD_12x12show_2:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOVS     R0,#+24
        LDR.W    R1,??DataTable7_1
        MLA      R0,R0,R7,R1
        ADDS     R0,R0,R8, LSL #+1
        LDRB     R0,[R0, #+1]
        LSLS     R0,R0,R9
        LSLS     R0,R0,#+24
        BPL.N    ??LCD_12x12show_3
//  381             {
//  382                 LCD_SetCursor(startXPos+LineLoop,YPos+ColLoop-8);
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        UXTAB    R0,R9,R5
        SUBS     R1,R0,#+8
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        UXTAB    R0,R4,R8
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_SetCursor
//  383                 LCD_writeReg(DRAWPOINT,color);
        MOVS     R1,R6
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+34
        BL       LCD_writeReg
//  384             }
//  385         }
??LCD_12x12show_3:
        ADDS     R9,R9,#+1
??LCD_12x12show_4:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+12
        BLT.N    ??LCD_12x12show_1
        ADDS     R8,R8,#+1
??LCD_12x12show_0:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+12
        BGE.N    ??LCD_12x12show_5
        MOVS     R9,#+0
        B.N      ??LCD_12x12show_4
//  386     }
//  387     //
//  388 }
??LCD_12x12show_5:
        POP      {R0,R4-R9,PC}    ;; return
//  389 
//  390 
//  391 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  392 void LCD_PinInit(uint8 RW)
//  393 {
//  394     // 输出端初始化
//  395     PORTx[PTD]->PCR[0] = PORT_PCR_MUX(1);
LCD_PinInit:
        LDR.W    R1,??DataTable7_2
        LDR      R1,[R1, #+12]
        MOV      R2,#+256
        STR      R2,[R1, #+0]
//  396     PORTx[PTD]->PCR[1] = PORT_PCR_MUX(1);
        LDR.W    R1,??DataTable7_2
        LDR      R1,[R1, #+12]
        MOV      R2,#+256
        STR      R2,[R1, #+4]
//  397     PORTx[PTD]->PCR[2] = PORT_PCR_MUX(1);
        LDR.W    R1,??DataTable7_2
        LDR      R1,[R1, #+12]
        MOV      R2,#+256
        STR      R2,[R1, #+8]
//  398     PORTx[PTD]->PCR[3] = PORT_PCR_MUX(1);
        LDR.W    R1,??DataTable7_2
        LDR      R1,[R1, #+12]
        MOV      R2,#+256
        STR      R2,[R1, #+12]
//  399     PORTx[PTD]->PCR[4] = PORT_PCR_MUX(1);
        LDR.W    R1,??DataTable7_2
        LDR      R1,[R1, #+12]
        MOV      R2,#+256
        STR      R2,[R1, #+16]
//  400     PORTx[PTD]->PCR[5] = PORT_PCR_MUX(1);
        LDR.W    R1,??DataTable7_2
        LDR      R1,[R1, #+12]
        MOV      R2,#+256
        STR      R2,[R1, #+20]
//  401     PORTx[PTD]->PCR[6] = PORT_PCR_MUX(1);
        LDR.W    R1,??DataTable7_2
        LDR      R1,[R1, #+12]
        MOV      R2,#+256
        STR      R2,[R1, #+24]
//  402     PORTx[PTD]->PCR[7] = PORT_PCR_MUX(1);
        LDR.W    R1,??DataTable7_2
        LDR      R1,[R1, #+12]
        MOV      R2,#+256
        STR      R2,[R1, #+28]
//  403     PORTx[PTD]->PCR[8] = PORT_PCR_MUX(1);
        LDR.W    R1,??DataTable7_2
        LDR      R1,[R1, #+12]
        MOV      R2,#+256
        STR      R2,[R1, #+32]
//  404     PORTx[PTD]->PCR[9] = PORT_PCR_MUX(1);
        LDR.W    R1,??DataTable7_2
        LDR      R1,[R1, #+12]
        MOV      R2,#+256
        STR      R2,[R1, #+36]
//  405     PORTx[PTD]->PCR[10] = PORT_PCR_MUX(1);
        LDR.W    R1,??DataTable7_2
        LDR      R1,[R1, #+12]
        MOV      R2,#+256
        STR      R2,[R1, #+40]
//  406     PORTx[PTD]->PCR[11] = PORT_PCR_MUX(1);
        LDR.W    R1,??DataTable7_2
        LDR      R1,[R1, #+12]
        MOV      R2,#+256
        STR      R2,[R1, #+44]
//  407     PORTx[PTD]->PCR[12] = PORT_PCR_MUX(1);
        LDR.W    R1,??DataTable7_2
        LDR      R1,[R1, #+12]
        MOV      R2,#+256
        STR      R2,[R1, #+48]
//  408     PORTx[PTD]->PCR[13] = PORT_PCR_MUX(1);
        LDR.W    R1,??DataTable7_2
        LDR      R1,[R1, #+12]
        MOV      R2,#+256
        STR      R2,[R1, #+52]
//  409     PORTx[PTD]->PCR[14] = PORT_PCR_MUX(1);
        LDR.W    R1,??DataTable7_2
        LDR      R1,[R1, #+12]
        MOV      R2,#+256
        STR      R2,[R1, #+56]
//  410     PORTx[PTD]->PCR[15] = PORT_PCR_MUX(1);
        LDR.W    R1,??DataTable7_2
        LDR      R1,[R1, #+12]
        MOV      R2,#+256
        STR      R2,[R1, #+60]
//  411     if(Pin_WRITE == RW)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.W    ??LCD_PinInit_0
//  412     {
//  413         gpioDDrOut(PTD0_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  414         gpioDDrOut(PTD1_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  415         gpioDDrOut(PTD2_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  416         gpioDDrOut(PTD3_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  417         gpioDDrOut(PTD4_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  418         gpioDDrOut(PTD5_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x20
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  419         gpioDDrOut(PTD6_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  420         gpioDDrOut(PTD7_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  421         gpioDDrOut(PTD8_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  422         gpioDDrOut(PTD9_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x200
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  423         gpioDDrOut(PTD10_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x400
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  424         gpioDDrOut(PTD11_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x800
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  425         gpioDDrOut(PTD12_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  426         gpioDDrOut(PTD13_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  427         gpioDDrOut(PTD14_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4000
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  428         gpioDDrOut(PTD15_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8000
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
        B.N      ??LCD_PinInit_1
//  429     }
//  430     else // Pin_READ == RW
//  431     {
//  432         gpioDDrIn(PTD0_DDR);
??LCD_PinInit_0:
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  433         gpioDDrIn(PTD1_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x2
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  434         gpioDDrIn(PTD2_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x4
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  435         gpioDDrIn(PTD3_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x8
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  436         gpioDDrIn(PTD4_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x10
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  437         gpioDDrIn(PTD5_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x20
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  438         gpioDDrIn(PTD6_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x40
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  439         gpioDDrIn(PTD7_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x80
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  440         gpioDDrIn(PTD8_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x100
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  441         gpioDDrIn(PTD9_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x200
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  442         gpioDDrIn(PTD10_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x400
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  443         gpioDDrIn(PTD11_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x800
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  444         gpioDDrIn(PTD12_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x1000
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  445         gpioDDrIn(PTD13_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x2000
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  446         gpioDDrIn(PTD14_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x4000
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  447         gpioDDrIn(PTD15_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x8000
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  448     }
//  449     // 芯片控制端初始化
//  450     PORTx[PTE]->PCR[24] = PORT_PCR_MUX(1);
??LCD_PinInit_1:
        LDR.W    R0,??DataTable7_2
        LDR      R0,[R0, #+16]
        MOV      R1,#+256
        STR      R1,[R0, #+96]
//  451     PORTx[PTE]->PCR[25] = PORT_PCR_MUX(1);
        LDR.W    R0,??DataTable7_2
        LDR      R0,[R0, #+16]
        MOV      R1,#+256
        STR      R1,[R0, #+100]
//  452     PORTx[PTE]->PCR[26] = PORT_PCR_MUX(1);
        LDR.W    R0,??DataTable7_2
        LDR      R0,[R0, #+16]
        MOV      R1,#+256
        STR      R1,[R0, #+104]
//  453     PORTx[PTE]->PCR[27] = PORT_PCR_MUX(1);
        LDR.W    R0,??DataTable7_2
        LDR      R0,[R0, #+16]
        MOV      R1,#+256
        STR      R1,[R0, #+108]
//  454     PORTx[PTE]->PCR[28] = PORT_PCR_MUX(1);
        LDR.W    R0,??DataTable7_2
        LDR      R0,[R0, #+16]
        MOV      R1,#+256
        STR      R1,[R0, #+112]
//  455     gpioDDrOut(PTE24_DDR);
        LDR.W    R0,??DataTable8_1  ;; 0x400ff114
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000000
        LDR.W    R1,??DataTable8_1  ;; 0x400ff114
        STR      R0,[R1, #+0]
//  456     gpioDDrOut(PTE25_DDR);
        LDR.W    R0,??DataTable8_1  ;; 0x400ff114
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000000
        LDR.W    R1,??DataTable8_1  ;; 0x400ff114
        STR      R0,[R1, #+0]
//  457     gpioDDrOut(PTE26_DDR);
        LDR.W    R0,??DataTable8_1  ;; 0x400ff114
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4000000
        LDR.W    R1,??DataTable8_1  ;; 0x400ff114
        STR      R0,[R1, #+0]
//  458     gpioDDrOut(PTE27_DDR);
        LDR.W    R0,??DataTable8_1  ;; 0x400ff114
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8000000
        LDR.W    R1,??DataTable8_1  ;; 0x400ff114
        STR      R0,[R1, #+0]
//  459     gpioDDrOut(PTE28_DDR);
        LDR.W    R0,??DataTable8_1  ;; 0x400ff114
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000000
        LDR.W    R1,??DataTable8_1  ;; 0x400ff114
        STR      R0,[R1, #+0]
//  460 }
        BX       LR               ;; return
//  461     

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  462 void LCD_writeIndex(uint16 Index)
//  463 {
//  464     DC = 0;
LCD_writeIndex:
        LDR.W    R1,??DataTable8_2  ;; 0x400ff100
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x1000000
        LDR.W    R2,??DataTable8_2  ;; 0x400ff100
        STR      R1,[R2, #+0]
//  465     CS = 0;
        LDR.W    R1,??DataTable8_2  ;; 0x400ff100
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x2000000
        LDR.W    R2,??DataTable8_2  ;; 0x400ff100
        STR      R1,[R2, #+0]
//  466     Data_Var = Index;
        LDR.W    R1,??DataTable8_3  ;; 0x400ff0c0
        STRH     R0,[R1, #+0]
//  467     WR = 0;
        LDR.W    R0,??DataTable8_2  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x8000000
        LDR.W    R1,??DataTable8_2  ;; 0x400ff100
        STR      R0,[R1, #+0]
//  468     WR = 1;
        LDR.W    R0,??DataTable8_2  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8000000
        LDR.W    R1,??DataTable8_2  ;; 0x400ff100
        STR      R0,[R1, #+0]
//  469     CS = 1;
        LDR.W    R0,??DataTable8_2  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000000
        LDR.W    R1,??DataTable8_2  ;; 0x400ff100
        STR      R0,[R1, #+0]
//  470 }
        BX       LR               ;; return
//  471 
//  472 #define LCD_writeData(Data)     {\ 
//  473     DC = 1;\ 
//  474     CS = 0;\ 
//  475     Data_Var = Data;\ 
//  476     WR = 0;\ 
//  477     WR = 1;\ 
//  478     CS = 1;\ 
//  479 }
//  480 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  481 void LCD_writeReg(uint16 Index,uint16 Data)
//  482 {
LCD_writeReg:
        PUSH     {R4,LR}
        MOVS     R4,R1
//  483     CS = 0;
        LDR.W    R1,??DataTable8_2  ;; 0x400ff100
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x2000000
        LDR.W    R2,??DataTable8_2  ;; 0x400ff100
        STR      R1,[R2, #+0]
//  484     LCD_writeIndex(Index);
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_writeIndex
//  485     LCD_writeData(Data);
        LDR.W    R0,??DataTable8_2  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000000
        LDR.W    R1,??DataTable8_2  ;; 0x400ff100
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable8_2  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x2000000
        LDR.W    R1,??DataTable8_2  ;; 0x400ff100
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable8_3  ;; 0x400ff0c0
        STRH     R4,[R0, #+0]
        LDR.W    R0,??DataTable8_2  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x8000000
        LDR.W    R1,??DataTable8_2  ;; 0x400ff100
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable8_2  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8000000
        LDR.W    R1,??DataTable8_2  ;; 0x400ff100
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable8_2  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000000
        LDR.W    R1,??DataTable8_2  ;; 0x400ff100
        STR      R0,[R1, #+0]
//  486     CS = 1;
        LDR.W    R0,??DataTable8_2  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000000
        LDR.W    R1,??DataTable8_2  ;; 0x400ff100
        STR      R0,[R1, #+0]
//  487 }
        POP      {R4,PC}          ;; return
//  488 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  489 unsigned short int LCD_readReg(uint16 Index)
//  490 {
LCD_readReg:
        PUSH     {R4,LR}
//  491     unsigned short int test = 0;
        MOVS     R4,#+0
//  492     gpioDDrOut(PTD0_DDR);
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x1
        LDR.W    R2,??DataTable8  ;; 0x400ff0d4
        STR      R1,[R2, #+0]
//  493     gpioDDrOut(PTD1_DDR);
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x2
        LDR.W    R2,??DataTable8  ;; 0x400ff0d4
        STR      R1,[R2, #+0]
//  494     gpioDDrOut(PTD2_DDR);
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x4
        LDR.W    R2,??DataTable8  ;; 0x400ff0d4
        STR      R1,[R2, #+0]
//  495     gpioDDrOut(PTD3_DDR);
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x8
        LDR.W    R2,??DataTable8  ;; 0x400ff0d4
        STR      R1,[R2, #+0]
//  496     gpioDDrOut(PTD4_DDR);
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x10
        LDR.W    R2,??DataTable8  ;; 0x400ff0d4
        STR      R1,[R2, #+0]
//  497     gpioDDrOut(PTD5_DDR);
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x20
        LDR.W    R2,??DataTable8  ;; 0x400ff0d4
        STR      R1,[R2, #+0]
//  498     gpioDDrOut(PTD6_DDR);
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x40
        LDR.W    R2,??DataTable8  ;; 0x400ff0d4
        STR      R1,[R2, #+0]
//  499     gpioDDrOut(PTD7_DDR);
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x80
        LDR.W    R2,??DataTable8  ;; 0x400ff0d4
        STR      R1,[R2, #+0]
//  500     gpioDDrOut(PTD8_DDR);
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x100
        LDR.W    R2,??DataTable8  ;; 0x400ff0d4
        STR      R1,[R2, #+0]
//  501     gpioDDrOut(PTD9_DDR);
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x200
        LDR.W    R2,??DataTable8  ;; 0x400ff0d4
        STR      R1,[R2, #+0]
//  502     gpioDDrOut(PTD10_DDR);
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x400
        LDR.W    R2,??DataTable8  ;; 0x400ff0d4
        STR      R1,[R2, #+0]
//  503     gpioDDrOut(PTD11_DDR);
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x800
        LDR.W    R2,??DataTable8  ;; 0x400ff0d4
        STR      R1,[R2, #+0]
//  504     gpioDDrOut(PTD12_DDR);
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x1000
        LDR.W    R2,??DataTable8  ;; 0x400ff0d4
        STR      R1,[R2, #+0]
//  505     gpioDDrOut(PTD13_DDR);
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x2000
        LDR.W    R2,??DataTable8  ;; 0x400ff0d4
        STR      R1,[R2, #+0]
//  506     gpioDDrOut(PTD14_DDR);
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x4000
        LDR.W    R2,??DataTable8  ;; 0x400ff0d4
        STR      R1,[R2, #+0]
//  507     gpioDDrOut(PTD15_DDR);
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x8000
        LDR.W    R2,??DataTable8  ;; 0x400ff0d4
        STR      R1,[R2, #+0]
//  508     LCD_writeIndex(Index);  //写入要读的寄存器号
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_writeIndex
//  509     DC = 1;
        LDR.W    R0,??DataTable8_2  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000000
        LDR.W    R1,??DataTable8_2  ;; 0x400ff100
        STR      R0,[R1, #+0]
//  510     //DC = 0;
//  511     
//  512     CS = 0;
        LDR.W    R0,??DataTable8_2  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x2000000
        LDR.W    R1,??DataTable8_2  ;; 0x400ff100
        STR      R0,[R1, #+0]
//  513     //WR = 1;
//  514     RD = 0;
        LDR.W    R0,??DataTable8_2  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x4000000
        LDR.W    R1,??DataTable8_2  ;; 0x400ff100
        STR      R0,[R1, #+0]
//  515     Data_Var = 0xFFFFu;
        LDR.W    R0,??DataTable8_3  ;; 0x400ff0c0
        MOVW     R1,#+65535
        STRH     R1,[R0, #+0]
//  516     gpioDDrIn(PTD0_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  517     gpioDDrIn(PTD1_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x2
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  518     gpioDDrIn(PTD2_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x4
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  519     gpioDDrIn(PTD3_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x8
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  520     gpioDDrIn(PTD4_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x10
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  521     gpioDDrIn(PTD5_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x20
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  522     gpioDDrIn(PTD6_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x40
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  523     gpioDDrIn(PTD7_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x80
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  524     gpioDDrIn(PTD8_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x100
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  525     gpioDDrIn(PTD9_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x200
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  526     gpioDDrIn(PTD10_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x400
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  527     gpioDDrIn(PTD11_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x800
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  528     gpioDDrIn(PTD12_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x1000
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  529     gpioDDrIn(PTD13_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x2000
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  530     gpioDDrIn(PTD14_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x4000
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  531     gpioDDrIn(PTD15_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x8000
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  532     for(test=0;test<20;test++);         // 建议50ns
        MOVS     R0,#+0
        MOVS     R4,R0
        B.N      ??LCD_readReg_0
??LCD_readReg_1:
        ADDS     R4,R4,#+1
??LCD_readReg_0:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+20
        BLT.N    ??LCD_readReg_1
//  533     Delay50ns();
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
//  534     RD = 1;
        LDR.W    R0,??DataTable8_2  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4000000
        LDR.W    R1,??DataTable8_2  ;; 0x400ff100
        STR      R0,[R1, #+0]
//  535     test = PTD_BASE_PTR->PDIRwords.PIN0_15;
        LDR.W    R0,??DataTable10  ;; 0x400ff0d0
        LDRH     R4,[R0, #+0]
//  536     CS = 1;
        LDR.W    R0,??DataTable8_2  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000000
        LDR.W    R1,??DataTable8_2  ;; 0x400ff100
        STR      R0,[R1, #+0]
//  537     
//  538     
//  539     DC = 1;
        LDR.W    R0,??DataTable8_2  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000000
        LDR.W    R1,??DataTable8_2  ;; 0x400ff100
        STR      R0,[R1, #+0]
//  540     //DC = 0;
//  541     CS = 0;
        LDR.W    R0,??DataTable8_2  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x2000000
        LDR.W    R1,??DataTable8_2  ;; 0x400ff100
        STR      R0,[R1, #+0]
//  542     WR = 1;
        LDR.W    R0,??DataTable8_2  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8000000
        LDR.W    R1,??DataTable8_2  ;; 0x400ff100
        STR      R0,[R1, #+0]
//  543     RD = 0;
        LDR.W    R0,??DataTable8_2  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x4000000
        LDR.W    R1,??DataTable8_2  ;; 0x400ff100
        STR      R0,[R1, #+0]
//  544     Data_Var = 0xFFFFu;
        LDR.W    R0,??DataTable8_3  ;; 0x400ff0c0
        MOVW     R1,#+65535
        STRH     R1,[R0, #+0]
//  545     gpioDDrIn(PTD0_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  546     gpioDDrIn(PTD1_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x2
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  547     gpioDDrIn(PTD2_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x4
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  548     gpioDDrIn(PTD3_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x8
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  549     gpioDDrIn(PTD4_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x10
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  550     gpioDDrIn(PTD5_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x20
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  551     gpioDDrIn(PTD6_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x40
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  552     gpioDDrIn(PTD7_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x80
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  553     gpioDDrIn(PTD8_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x100
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  554     gpioDDrIn(PTD9_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x200
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  555     gpioDDrIn(PTD10_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x400
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  556     gpioDDrIn(PTD11_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x800
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  557     gpioDDrIn(PTD12_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x1000
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  558     gpioDDrIn(PTD13_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x2000
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  559     gpioDDrIn(PTD14_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x4000
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  560     gpioDDrIn(PTD15_DDR);
        LDR.W    R0,??DataTable8  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x8000
        LDR.W    R1,??DataTable8  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  561     for(test=0;test<20;test++);         // 建议50ns
        MOVS     R0,#+0
        MOVS     R4,R0
        B.N      ??LCD_readReg_2
??LCD_readReg_3:
        ADDS     R4,R4,#+1
??LCD_readReg_2:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+20
        BLT.N    ??LCD_readReg_3
//  562     Delay50ns();
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
//  563     RD = 1;
        LDR.W    R0,??DataTable8_2  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4000000
        LDR.W    R1,??DataTable8_2  ;; 0x400ff100
        STR      R0,[R1, #+0]
//  564     test = PTD_BASE_PTR->PDIRwords.PIN0_15;    
        LDR.W    R0,??DataTable10  ;; 0x400ff0d0
        LDRH     R4,[R0, #+0]
//  565     CS = 1;
        LDR.W    R0,??DataTable8_2  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000000
        LDR.W    R1,??DataTable8_2  ;; 0x400ff100
        STR      R0,[R1, #+0]
//  566     
//  567     return test;
        MOVS     R0,R4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R4,PC}          ;; return
//  568 }
//  569 
//  570 
//  571 
//  572 // #define LCD_WriteReg(x,y)       LCD_writeReg(x,y)
//  573 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  574 uint16 LCD_Init()
//  575 {
LCD_Init:
        PUSH     {R4,LR}
//  576     // sTFTconfig TFT;
//  577     uint16 CodeDevice = 0;
        MOVS     R4,#+0
//  578     LCD_PinInit(0);
        MOVS     R0,#+0
        BL       LCD_PinInit
//  579     // CS = 0;
//  580     RESET = 0;
        LDR.W    R0,??DataTable8_2  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x10000000
        LDR.W    R1,??DataTable8_2  ;; 0x400ff100
        STR      R0,[R1, #+0]
//  581     vDelayMs(100);
        MOVS     R0,#+100
        BL       vDelayMs
//  582     RESET = 1;
        LDR.W    R0,??DataTable8_2  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000000
        LDR.W    R1,??DataTable8_2  ;; 0x400ff100
        STR      R0,[R1, #+0]
//  583     vDelayMs(100);
        MOVS     R0,#+100
        BL       vDelayMs
//  584     
//  585     do
//  586     {
//  587         LCD_PinInit(0);
??LCD_Init_0:
        MOVS     R0,#+0
        BL       LCD_PinInit
//  588         RESET = 0;
        LDR.W    R0,??DataTable8_2  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x10000000
        LDR.W    R1,??DataTable8_2  ;; 0x400ff100
        STR      R0,[R1, #+0]
//  589         vDelayMs(100);
        MOVS     R0,#+100
        BL       vDelayMs
//  590         RESET = 1;
        LDR.W    R0,??DataTable8_2  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000000
        LDR.W    R1,??DataTable8_2  ;; 0x400ff100
        STR      R0,[R1, #+0]
//  591         vDelayMs(100);
        MOVS     R0,#+100
        BL       vDelayMs
//  592         CodeDevice = LCD_readReg(0x0000);
        MOVS     R0,#+0
        BL       LCD_readReg
        MOVS     R4,R0
//  593         vDelayMs(50);
        MOVS     R0,#+50
        BL       vDelayMs
//  594     }
//  595     while( 0x8989 != CodeDevice );
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        MOVW     R0,#+35209
        CMP      R4,R0
        BNE.N    ??LCD_Init_0
//  596     
//  597     LCD_PinInit(0);
        MOVS     R0,#+0
        BL       LCD_PinInit
//  598     // 打开晶振
//  599     LCD_writeReg(R00_OSC,0x0001);
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       LCD_writeReg
//  600     //
//  601     LCD_writeReg(R10_SleepMode,0x0000);         // 退出休眠
        MOVS     R1,#+0
        MOVS     R0,#+16
        BL       LCD_writeReg
//  602     vDelayMs(50);
        MOVS     R0,#+50
        BL       vDelayMs
//  603     
//  604     LCD_writeReg(R01_DriverOutC,0x693F);        // 横屏
        MOVW     R1,#+26943
        MOVS     R0,#+1
        BL       LCD_writeReg
//  605     LCD_writeReg(R07_DisplayC,0x0033);          //
        MOVS     R1,#+51
        MOVS     R0,#+7
        BL       LCD_writeReg
//  606     LCD_writeReg(R11_EntryMode,0x6030);         // 左手坐标系
        MOVW     R1,#+24624
        MOVS     R0,#+17
        BL       LCD_writeReg
//  607     // LCD_writeReg(R11_EntryMode,0x6030);
//  608     
//  609     LCD_writeReg(R02_LCDdriveAC,0x0600);
        MOV      R1,#+1536
        MOVS     R0,#+2
        BL       LCD_writeReg
//  610     
//  611     // Power supply setting
//  612     LCD_writeReg(R03_PowerC_1,0xA8A4);          // 0xA8A4
        MOVW     R1,#+43172
        MOVS     R0,#+3
        BL       LCD_writeReg
//  613     LCD_writeReg(R0C_PowerC_2,0x0000);    
        MOVS     R1,#+0
        MOVS     R0,#+12
        BL       LCD_writeReg
//  614     LCD_writeReg(R0D_PowerC_3,0x080C);   
        MOVW     R1,#+2060
        MOVS     R0,#+13
        BL       LCD_writeReg
//  615     LCD_writeReg(R0E_PowerC_4,0x2B00);    
        MOV      R1,#+11008
        MOVS     R0,#+14
        BL       LCD_writeReg
//  616     LCD_writeReg(R1E_PowerC_5,0x00B0);
        MOVS     R1,#+176
        MOVS     R0,#+30
        BL       LCD_writeReg
//  617 
//  618     // 开窗设置
//  619     ///LCD_writeReg(0x0044,0xEF00); //水平RAM的起始-结束地址位置 (00~EF)
//  620     ///LCD_writeReg(0x0045,0x0000);  //垂直RAM的起始地址 00
//  621     ///LCD_writeReg(0x0046,0x013F); //垂直RAM的结束地址 13F
//  622     
//  623     // Gama控制
//  624     LCD_writeReg(0x0030,0x0101);  
        MOVW     R1,#+257
        MOVS     R0,#+48
        BL       LCD_writeReg
//  625     LCD_writeReg(0x0031,0x0101);  
        MOVW     R1,#+257
        MOVS     R0,#+49
        BL       LCD_writeReg
//  626     LCD_writeReg(0x0032,0x0101);  
        MOVW     R1,#+257
        MOVS     R0,#+50
        BL       LCD_writeReg
//  627     LCD_writeReg(0x0033,0x0101);  
        MOVW     R1,#+257
        MOVS     R0,#+51
        BL       LCD_writeReg
//  628     LCD_writeReg(0x0034,0x0101);  
        MOVW     R1,#+257
        MOVS     R0,#+52
        BL       LCD_writeReg
//  629     LCD_writeReg(0x0035,0x0101);  
        MOVW     R1,#+257
        MOVS     R0,#+53
        BL       LCD_writeReg
//  630     LCD_writeReg(0x0036,0x0101);  
        MOVW     R1,#+257
        MOVS     R0,#+54
        BL       LCD_writeReg
//  631     LCD_writeReg(0x0037,0x0101);  
        MOVW     R1,#+257
        MOVS     R0,#+55
        BL       LCD_writeReg
//  632     LCD_writeReg(0x003A,0x0101);  
        MOVW     R1,#+257
        MOVS     R0,#+58
        BL       LCD_writeReg
//  633     LCD_writeReg(0x003B,0x0101);
        MOVW     R1,#+257
        MOVS     R0,#+59
        BL       LCD_writeReg
//  634     /*
//  635     TFT.Height = 240;
//  636     TFT.Width = 320;
//  637     
//  638     return TFT;
//  639     */
//  640     return CodeDevice;
        MOVS     R0,R4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R4,PC}          ;; return
//  641 }
//  642 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  643 void LCD_SetCursor( uint16 X, uint16 Y )
//  644 {
LCD_SetCursor:
        PUSH     {R4,LR}
        MOVS     R4,R1
//  645     // 横屏
//  646     LCD_writeReg(0x004f, X);
        MOVS     R1,R0
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+79
        BL       LCD_writeReg
//  647     LCD_writeReg(0x004e, Y); 
        MOVS     R1,R4
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+78
        BL       LCD_writeReg
//  648 }
        POP      {R4,PC}          ;; return
//  649 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  650 void LCD_SetPoint(uint16 Xpos,uint16 Ypos,uint16 point)
//  651 {
LCD_SetPoint:
        PUSH     {R4,LR}
        MOVS     R4,R2
//  652     LCD_SetCursor(Xpos,Ypos);
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_SetCursor
//  653     LCD_writeReg(R22_WdataToGRAM,point);
        MOVS     R1,R4
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+34
        BL       LCD_writeReg
//  654 }
        POP      {R4,PC}          ;; return
//  655 
//  656 // 垂直或水平画线
//  657 // 0 水平右移，1 竖直上移

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  658 void LCD_SetLine(uint16 Xgaia,uint16 Ygaia,uint16 Length,uint16 Color,uint8 Dir)
//  659 {
LCD_SetLine:
        PUSH     {R4-R8,LR}
        MOVS     R5,R0
        MOVS     R6,R1
        MOVS     R7,R2
        MOV      R8,R3
        LDR      R4,[SP, #+24]
        B.N      ??LCD_SetLine_0
//  660     while(Length > 0)
//  661     {
//  662         LCD_SetCursor( Xgaia , Ygaia );
//  663         LCD_writeReg( DRAWPOINT , Color );
//  664         if( 0 == Dir )
//  665         {
//  666             Xgaia ++ ;
//  667         }
//  668         else
//  669         {
//  670             Ygaia ++;
??LCD_SetLine_1:
        ADDS     R6,R6,#+1
//  671         }
//  672         Length --;
??LCD_SetLine_2:
        SUBS     R7,R7,#+1
??LCD_SetLine_0:
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        CMP      R7,#+0
        BEQ.N    ??LCD_SetLine_3
        MOVS     R1,R6
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_SetCursor
        MOV      R1,R8
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+34
        BL       LCD_writeReg
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??LCD_SetLine_1
        ADDS     R5,R5,#+1
        B.N      ??LCD_SetLine_2
//  673     }
//  674 }
??LCD_SetLine_3:
        POP      {R4-R8,PC}       ;; return
//  675 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  676 void LCD_Clear(uint16 Color)
//  677 {
LCD_Clear:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//  678     uint32 index=0;
        MOVS     R5,#+0
//  679     LCD_SetCursor(0,0);
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       LCD_SetCursor
//  680     LCD_writeIndex(0x0022);
        MOVS     R0,#+34
        BL       LCD_writeIndex
//  681     for( index = 0; index < 76800; index++ )
        MOVS     R0,#+0
        MOVS     R5,R0
        B.N      ??LCD_Clear_0
//  682     {
//  683         LCD_writeData(Color);
??LCD_Clear_1:
        LDR.W    R0,??DataTable8_2  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000000
        LDR.W    R1,??DataTable8_2  ;; 0x400ff100
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable8_2  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x2000000
        LDR.W    R1,??DataTable8_2  ;; 0x400ff100
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable8_3  ;; 0x400ff0c0
        STRH     R4,[R0, #+0]
        LDR.W    R0,??DataTable8_2  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x8000000
        LDR.W    R1,??DataTable8_2  ;; 0x400ff100
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable8_2  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8000000
        LDR.W    R1,??DataTable8_2  ;; 0x400ff100
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable8_2  ;; 0x400ff100
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000000
        LDR.W    R1,??DataTable8_2  ;; 0x400ff100
        STR      R0,[R1, #+0]
//  684     }
        ADDS     R5,R5,#+1
??LCD_Clear_0:
        CMP      R5,#+76800
        BCC.N    ??LCD_Clear_1
//  685 }
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DC32     Chinese

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_1:
        DC32     C12x12

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_2:
        DC32     PORTx
//  686 
//  687 #define TFT_HEIGHT              240
//  688 #define TFT_WIDTH               320
//  689 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  690 void LCD_XYaxes(void)
//  691 {
LCD_XYaxes:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
//  692     LCD_SetLine(284, 208 ,34,Color_Left_Sec,0);              // 中心线
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVW     R3,#+32767
        MOVS     R2,#+34
        MOVS     R1,#+208
        MOV      R0,#+284
        BL       LCD_SetLine
//  693     LCD_SetLine(284, 176 ,34,Color_Right_Sec,0);               // 中心线变化率
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVW     R3,#+1311
        MOVS     R2,#+34
        MOVS     R1,#+176
        MOV      R0,#+284
        BL       LCD_SetLine
//  694     LCD_SetLine(284, 144 ,34,Color_Left_Main,0);               // 给定速度
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVW     R3,#+65535
        MOVS     R2,#+34
        MOVS     R1,#+144
        MOV      R0,#+284
        BL       LCD_SetLine
//  695     LCD_SetLine(284, 112 ,34,Color_Left_Thr,0);                // D_给定速度
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOV      R3,#+2016
        MOVS     R2,#+34
        MOVS     R1,#+112
        MOV      R0,#+284
        BL       LCD_SetLine
//  696     LCD_SetLine(284, 80 ,34,Color_Left_Refer,0);              // 实际速度
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVW     R3,#+65504
        MOVS     R2,#+34
        MOVS     R1,#+80
        MOV      R0,#+284
        BL       LCD_SetLine
//  697     LCD_SetLine(284, 48  ,34,Color_Right_Main,0);        // 电机PWM
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOV      R3,#+63488
        MOVS     R2,#+34
        MOVS     R1,#+48
        MOV      R0,#+284
        BL       LCD_SetLine
//  698 
//  699     sint16 CutVar = 0;
        MOVS     R4,#+0
//  700     /***************************************************************/
//  701     // 左侧左手坐标系，右侧浮坐标系
//  702               // X      Y         LENGTH           COLOR              DIR
//  703     LCD_SetLine( 15  ,  0       , TFT_HEIGHT     , Color_Left_Main  , 1);
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        MOVW     R3,#+65535
        MOVS     R2,#+240
        MOVS     R1,#+0
        MOVS     R0,#+15
        BL       LCD_SetLine
//  704     LCD_SetLine( 0   ,  Fix_0   , TFT_WIDTH - 40 , Color_Left_Main  , 0);
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVW     R3,#+65535
        MOV      R2,#+280
        MOVS     R1,#+7
        MOVS     R0,#+0
        BL       LCD_SetLine
//  705     LCD_SetLine( 264 ,  0       , TFT_HEIGHT     , Color_Right_Main , 1);
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        MOV      R3,#+63488
        MOVS     R2,#+240
        MOVS     R1,#+0
        MOV      R0,#+264
        BL       LCD_SetLine
//  706     LCD_SetLine( 0   ,  Float_0 , TFT_WIDTH - 40 , Color_Right_Main , 0);
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOV      R3,#+63488
        MOV      R2,#+280
        MOVS     R1,#+120
        MOVS     R0,#+0
        BL       LCD_SetLine
//  707         
//  708     // 箭头 左纵轴
//  709     LCD_SetCursor(14,238);
        MOVS     R1,#+238
        MOVS     R0,#+14
        BL       LCD_SetCursor
//  710     LCD_writeReg(DRAWPOINT,Color_Left_Main);
        MOVW     R1,#+65535
        MOVS     R0,#+34
        BL       LCD_writeReg
//  711     LCD_SetCursor(16,238);
        MOVS     R1,#+238
        MOVS     R0,#+16
        BL       LCD_SetCursor
//  712     LCD_writeReg(DRAWPOINT,Color_Left_Main);
        MOVW     R1,#+65535
        MOVS     R0,#+34
        BL       LCD_writeReg
//  713     LCD_SetCursor(13,237);
        MOVS     R1,#+237
        MOVS     R0,#+13
        BL       LCD_SetCursor
//  714     LCD_writeReg(DRAWPOINT,Color_Left_Main);
        MOVW     R1,#+65535
        MOVS     R0,#+34
        BL       LCD_writeReg
//  715     LCD_SetCursor(17,237);
        MOVS     R1,#+237
        MOVS     R0,#+17
        BL       LCD_SetCursor
//  716     LCD_writeReg(DRAWPOINT,Color_Left_Main);
        MOVW     R1,#+65535
        MOVS     R0,#+34
        BL       LCD_writeReg
//  717     // 箭头 横轴下 264
//  718     LCD_SetCursor(279,8);
        MOVS     R1,#+8
        MOVW     R0,#+279
        BL       LCD_SetCursor
//  719     LCD_writeReg(DRAWPOINT,Color_Left_Main);
        MOVW     R1,#+65535
        MOVS     R0,#+34
        BL       LCD_writeReg
//  720     LCD_SetCursor(279,6);
        MOVS     R1,#+6
        MOVW     R0,#+279
        BL       LCD_SetCursor
//  721     LCD_writeReg(DRAWPOINT,Color_Left_Main);
        MOVW     R1,#+65535
        MOVS     R0,#+34
        BL       LCD_writeReg
//  722     LCD_SetCursor(278,9);
        MOVS     R1,#+9
        MOV      R0,#+278
        BL       LCD_SetCursor
//  723     LCD_writeReg(DRAWPOINT,Color_Left_Main);
        MOVW     R1,#+65535
        MOVS     R0,#+34
        BL       LCD_writeReg
//  724     LCD_SetCursor(278,5);
        MOVS     R1,#+5
        MOV      R0,#+278
        BL       LCD_SetCursor
//  725     LCD_writeReg(DRAWPOINT,Color_Left_Main);
        MOVW     R1,#+65535
        MOVS     R0,#+34
        BL       LCD_writeReg
//  726     // 箭头 右纵轴上 264
//  727     LCD_SetCursor(263,238);
        MOVS     R1,#+238
        MOVW     R0,#+263
        BL       LCD_SetCursor
//  728     LCD_writeReg(DRAWPOINT,Color_Right_Main);
        MOV      R1,#+63488
        MOVS     R0,#+34
        BL       LCD_writeReg
//  729     LCD_SetCursor(265,238);
        MOVS     R1,#+238
        MOVW     R0,#+265
        BL       LCD_SetCursor
//  730     LCD_writeReg(DRAWPOINT,Color_Right_Main);
        MOV      R1,#+63488
        MOVS     R0,#+34
        BL       LCD_writeReg
//  731     LCD_SetCursor(262,237);
        MOVS     R1,#+237
        MOV      R0,#+262
        BL       LCD_SetCursor
//  732     LCD_writeReg(DRAWPOINT,Color_Right_Main);
        MOV      R1,#+63488
        MOVS     R0,#+34
        BL       LCD_writeReg
//  733     LCD_SetCursor(266,237);
        MOVS     R1,#+237
        MOV      R0,#+266
        BL       LCD_SetCursor
//  734     LCD_writeReg(DRAWPOINT,Color_Right_Main);
        MOV      R1,#+63488
        MOVS     R0,#+34
        BL       LCD_writeReg
//  735     // 箭头 中横轴 264
//  736     LCD_SetCursor(263,1);
        MOVS     R1,#+1
        MOVW     R0,#+263
        BL       LCD_SetCursor
//  737     LCD_writeReg(DRAWPOINT,Color_Right_Main);
        MOV      R1,#+63488
        MOVS     R0,#+34
        BL       LCD_writeReg
//  738     LCD_SetCursor(265,1);
        MOVS     R1,#+1
        MOVW     R0,#+265
        BL       LCD_SetCursor
//  739     LCD_writeReg(DRAWPOINT,Color_Right_Main);
        MOV      R1,#+63488
        MOVS     R0,#+34
        BL       LCD_writeReg
//  740     LCD_SetCursor(262,2);
        MOVS     R1,#+2
        MOV      R0,#+262
        BL       LCD_SetCursor
//  741     LCD_writeReg(DRAWPOINT,Color_Right_Main);
        MOV      R1,#+63488
        MOVS     R0,#+34
        BL       LCD_writeReg
//  742     LCD_SetCursor(266,2);
        MOVS     R1,#+2
        MOV      R0,#+266
        BL       LCD_SetCursor
//  743     LCD_writeReg(DRAWPOINT,Color_Right_Main);
        MOV      R1,#+63488
        MOVS     R0,#+34
        BL       LCD_writeReg
//  744     //
//  745     LCD_SetCursor(1,Float_0+1);
        MOVS     R1,#+121
        MOVS     R0,#+1
        BL       LCD_SetCursor
//  746     LCD_writeReg(DRAWPOINT,Color_Right_Main);
        MOV      R1,#+63488
        MOVS     R0,#+34
        BL       LCD_writeReg
//  747     LCD_SetCursor(1,Float_0-1);
        MOVS     R1,#+119
        MOVS     R0,#+1
        BL       LCD_SetCursor
//  748     LCD_writeReg(DRAWPOINT,Color_Right_Main);
        MOV      R1,#+63488
        MOVS     R0,#+34
        BL       LCD_writeReg
//  749     LCD_SetCursor(2,Float_0-2);
        MOVS     R1,#+118
        MOVS     R0,#+2
        BL       LCD_SetCursor
//  750     LCD_writeReg(DRAWPOINT,Color_Right_Main);
        MOV      R1,#+63488
        MOVS     R0,#+34
        BL       LCD_writeReg
//  751     LCD_SetCursor(2,Float_0+2);
        MOVS     R1,#+122
        MOVS     R0,#+2
        BL       LCD_SetCursor
//  752     LCD_writeReg(DRAWPOINT,Color_Right_Main);
        MOV      R1,#+63488
        MOVS     R0,#+34
        BL       LCD_writeReg
//  753     
//  754     /***************************************************************/
//  755     // 比例尺
//  756     for(CutVar = 0;CutVar<5;CutVar++)
        MOVS     R0,#+0
        MOVS     R4,R0
        B.N      ??LCD_XYaxes_0
//  757     {
//  758         LCD_SetLine(12,Fix_0 + CutVar * Fix_Chat,3,Color_Left_Main,0);
??LCD_XYaxes_1:
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVW     R3,#+65535
        MOVS     R2,#+3
        MOVS     R0,#+56
        SMULBB   R0,R4,R0
        ADDS     R1,R0,#+7
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+12
        BL       LCD_SetLine
//  759         //                      4     * 56 = 224
//  760     }
        ADDS     R4,R4,#+1
??LCD_XYaxes_0:
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        CMP      R4,#+5
        BLT.N    ??LCD_XYaxes_1
//  761     for(CutVar = -3;CutVar<=3;CutVar++)
        MVNS     R4,#+2
        B.N      ??LCD_XYaxes_2
//  762     {
//  763         LCD_SetLine(264,Float_0 + CutVar * Float_Chat,3,Color_Right_Main,0);
??LCD_XYaxes_3:
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOV      R3,#+63488
        MOVS     R2,#+3
        MOVS     R0,#+38
        SMULBB   R0,R4,R0
        ADDS     R1,R0,#+120
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOV      R0,#+264
        BL       LCD_SetLine
//  764         //                         3     * 38 = 114
//  765     }
        ADDS     R4,R4,#+1
??LCD_XYaxes_2:
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        CMP      R4,#+4
        BLT.N    ??LCD_XYaxes_3
//  766     
//  767     LCD_SetLine(280,0,TFT_HEIGHT,Blue2,1);
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        MOVW     R3,#+1311
        MOVS     R2,#+240
        MOVS     R1,#+0
        MOV      R0,#+280
        BL       LCD_SetLine
//  768 }
        POP      {R0,R1,R4,PC}    ;; return
//  769 
//  770 
//  771 // 坐标系重构 20140411
//  772 /*
//  773 #define Fix_0           7
//  774 #define Fix_Top         232
//  775 #define Fix_Chat        ((Fix_Top - Fix_0 + 1)/4)
//  776 
//  777 #define Float_0         120
//  778 #define Float_Top       232
//  779 #define Float_Bottom    8
//  780 #define Float_Chat      ((Float_Top - Float_Bottom)/6)
//  781 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  782 sTFTaxesFlag LCD_XYaxesNum(uint16 LeftMax,uint16 LeftNexMax,uint16 RightMax,uint16 Right_2_Max)
//  783 {
LCD_XYaxesNum:
        PUSH     {R4-R9,LR}
        SUB      SP,SP,#+20
        MOV      R8,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
//  784     sTFTaxesFlag Amp;
//  785     Amp.Left_Fix_One_Amp = LeftMax      / 224.0;                // 4 * 56 = 224 + 7   = 231
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        MOVS     R0,R5
        BL       __aeabi_ui2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable12_3  ;; 0x406c0000
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        STR      R0,[SP, #+0]
//  786     Amp.Left_Fix_Two_Amp = LeftNexMax   / 224.0;        
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        MOVS     R0,R6
        BL       __aeabi_ui2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable12_3  ;; 0x406c0000
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        STR      R0,[SP, #+4]
//  787     Amp.RiAmp            = RightMax     / 114.0;                // 3 * 38 = 114 + 120 = 234
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        MOVS     R0,R7
        BL       __aeabi_ui2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable12_4  ;; 0x405c8000
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        STR      R0,[SP, #+8]
        LDR      R4,[SP, #+48]
//  788     Amp.RiAmp_Also       = Right_2_Max  / 114.0;
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        MOVS     R0,R4
        BL       __aeabi_ui2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable12_4  ;; 0x405c8000
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        STR      R0,[SP, #+12]
//  789     uint8 CutVar = 0;
        MOVS     R9,#+0
//  790     
//  791     LCD_8x6show(11,7,Color_Left_Main,0);
        MOVS     R3,#+0
        MOVW     R2,#+65535
        MOVS     R1,#+7
        MOVS     R0,#+11
        BL       LCD_8x6show
//  792     LCD_8x6show(265,120,Color_Right_Main,0);
        MOVS     R3,#+0
        MOV      R2,#+63488
        MOVS     R1,#+120
        MOVW     R0,#+265
        BL       LCD_8x6show
//  793 
//  794     for(CutVar = 1;CutVar<5;CutVar++)
        MOVS     R0,#+1
        MOV      R9,R0
        B.N      ??LCD_XYaxesNum_0
//  795     {
//  796         LCD_showDecFour( 0 , Fix_0 + CutVar * Fix_Chat     , Color_Left_Main , LeftMax * CutVar / 4 );
//  797         LCD_showDecFour( 0 , Fix_0 + CutVar * Fix_Chat - 8 , Color_Left_Sec  , LeftNexMax * CutVar / 4 );
//  798         if(CutVar<=2)
//  799         {
//  800             LCD_showDecFour( 264 , Float_0 + (CutVar-3) * Float_Chat , Color_Right_Main , RightMax * (3-CutVar) / 3 );
//  801             LCD_showDecFour( 264 , Float_0 + (CutVar-3) * Float_Chat - 8 , Color_Right_Sec , Right_2_Max * (3-CutVar) / 3 );
//  802         }
//  803         else
//  804         {
//  805             LCD_showDecFour( 264 , Float_0 + (5-CutVar) * Float_Chat , Color_Right_Main , RightMax * (5-CutVar) / 3 );
??LCD_XYaxesNum_1:
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        RSBS     R0,R9,#+5
        MUL      R0,R0,R7
        MOVS     R1,#+3
        SDIV     R3,R0,R1
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        MOV      R2,#+63488
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        RSBS     R0,R9,#+0
        MOVS     R1,#+38
        MULS     R0,R1,R0
        ADDS     R1,R0,#+310
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,#+264
        BL       LCD_showDecFour
//  806             LCD_showDecFour( 264 , Float_0 + (5-CutVar) * Float_Chat - 8 , Color_Right_Sec , Right_2_Max * (5-CutVar) / 3 );
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        RSBS     R0,R9,#+5
        MUL      R0,R0,R4
        MOVS     R1,#+3
        SDIV     R3,R0,R1
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        MOVW     R2,#+1311
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        RSBS     R0,R9,#+0
        MOVS     R1,#+38
        MULS     R0,R1,R0
        ADDS     R1,R0,#+302
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,#+264
        BL       LCD_showDecFour
//  807         }
??LCD_XYaxesNum_2:
        ADDS     R9,R9,#+1
??LCD_XYaxesNum_0:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+5
        BGE.N    ??LCD_XYaxesNum_3
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        MUL      R0,R9,R5
        MOVS     R1,#+4
        SDIV     R3,R0,R1
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        MOVW     R2,#+65535
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        MOVS     R0,#+56
        MUL      R0,R0,R9
        ADDS     R1,R0,#+7
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+0
        BL       LCD_showDecFour
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        MUL      R0,R9,R6
        MOVS     R1,#+4
        SDIV     R3,R0,R1
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        MOVW     R2,#+32767
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        MOVS     R0,#+56
        MUL      R0,R0,R9
        SUBS     R1,R0,#+1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+0
        BL       LCD_showDecFour
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+3
        BGE.N    ??LCD_XYaxesNum_1
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        RSBS     R0,R9,#+3
        MUL      R0,R0,R7
        MOVS     R1,#+3
        SDIV     R3,R0,R1
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        MOV      R2,#+63488
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        MOVS     R0,#+38
        MUL      R0,R0,R9
        ADDS     R1,R0,#+6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,#+264
        BL       LCD_showDecFour
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        RSBS     R0,R9,#+3
        MUL      R0,R0,R4
        MOVS     R1,#+3
        SDIV     R3,R0,R1
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        MOVW     R2,#+1311
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        MOVS     R0,#+38
        MUL      R0,R0,R9
        SUBS     R1,R0,#+2
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,#+264
        BL       LCD_showDecFour
        B.N      ??LCD_XYaxesNum_2
//  808     }
//  809     return Amp;
??LCD_XYaxesNum_3:
        MOV      R0,R8
        ADD      R1,SP,#+0
        MOVS     R2,#+16
        BL       __aeabi_memcpy4
        ADD      SP,SP,#+20
        POP      {R4-R9,PC}       ;; return
//  810 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8:
        DC32     0x400ff0d4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_1:
        DC32     0x400ff114

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_2:
        DC32     0x400ff100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_3:
        DC32     0x400ff0c0
//  811 
//  812 // 用户函数

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  813 void LCD_ClearShowWindow(uint16 Line,const uint16 ColTarget_01,uint16 Color_01,
//  814                                      const uint16 ColTarget_02,uint16 Color_02,
//  815                                      const uint16 ColTarget_03,uint16 Color_03,
//  816                                      const uint16 ColTarget_04,uint16 Color_04,
//  817                                      const uint16 ColTarget_05,uint16 Color_05,
//  818                                      const uint16 ColTarget_06,uint16 Color_06,
//  819                                      uint8 ValidNum)
//  820 {
LCD_ClearShowWindow:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
//  821     switch(ValidNum)
        LDR      R0,[SP, #+60]
        CMP      R0,#+1
        BEQ.N    ??LCD_ClearShowWindow_0
        BCC.N    ??LCD_ClearShowWindow_1
        CMP      R0,#+3
        BEQ.N    ??LCD_ClearShowWindow_2
        BCC.N    ??LCD_ClearShowWindow_3
        CMP      R0,#+5
        BEQ.N    ??LCD_ClearShowWindow_4
        BCC.N    ??LCD_ClearShowWindow_5
        CMP      R0,#+6
        BNE.N    ??LCD_ClearShowWindow_1
//  822     {
//  823         case 6:
//  824             LCD_SetCursor(Line,ColTarget_06);
??LCD_ClearShowWindow_6:
        LDR      R1,[SP, #+52]
        MOVS     R0,R4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_SetCursor
//  825             LCD_writeReg(DRAWPOINT,Color_06);
        LDR      R1,[SP, #+56]
        MOVS     R0,#+34
        BL       LCD_writeReg
//  826         case 5:
//  827             LCD_SetCursor(Line,ColTarget_05);
??LCD_ClearShowWindow_4:
        LDR      R1,[SP, #+44]
        MOVS     R0,R4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_SetCursor
//  828             LCD_writeReg(DRAWPOINT,Color_05);
        LDR      R1,[SP, #+48]
        MOVS     R0,#+34
        BL       LCD_writeReg
//  829         case 4:
//  830             LCD_SetCursor(Line,ColTarget_04);
??LCD_ClearShowWindow_5:
        LDR      R1,[SP, #+36]
        MOVS     R0,R4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_SetCursor
//  831             LCD_writeReg(DRAWPOINT,Color_04);
        LDR      R1,[SP, #+40]
        MOVS     R0,#+34
        BL       LCD_writeReg
//  832         case 3:
//  833             LCD_SetCursor(Line,ColTarget_03);
??LCD_ClearShowWindow_2:
        LDR      R1,[SP, #+28]
        MOVS     R0,R4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_SetCursor
//  834             LCD_writeReg(DRAWPOINT,Color_03);
        LDR      R1,[SP, #+32]
        MOVS     R0,#+34
        BL       LCD_writeReg
//  835         case 2:
//  836             LCD_SetCursor(Line,ColTarget_02);
??LCD_ClearShowWindow_3:
        MOVS     R1,R7
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_SetCursor
//  837             LCD_writeReg(DRAWPOINT,Color_02);
        LDR      R1,[SP, #+24]
        MOVS     R0,#+34
        BL       LCD_writeReg
//  838         case 1:
//  839             LCD_SetCursor(Line,ColTarget_01);
??LCD_ClearShowWindow_0:
        MOVS     R1,R5
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_SetCursor
//  840             LCD_writeReg(DRAWPOINT,Color_01);
        MOVS     R1,R6
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+34
        BL       LCD_writeReg
//  841         break;
//  842     }
//  843     LCD_SetCursor(Line,0);
??LCD_ClearShowWindow_1:
        MOVS     R1,#+0
        MOVS     R0,R4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_SetCursor
//  844     LCD_writeReg(DRAWPOINT,Black);
        MOVS     R1,#+0
        MOVS     R0,#+34
        BL       LCD_writeReg
//  845 }
        POP      {R0,R4-R7,PC}    ;; return
//  846 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  847 void LCD_ClearSomeThing(void)
//  848 {
LCD_ClearSomeThing:
        PUSH     {R3-R5,LR}
//  849     uint8  Col  = 0;
        MOVS     R4,#+0
//  850     uint16 Line = 0;
        MOVS     R5,#+0
//  851     for(Line=16;Line<=263;Line++)
        MOVS     R0,#+16
        MOVS     R5,R0
        B.N      ??LCD_ClearSomeThing_0
//  852     {
//  853         for(Col=8;Col<=234;Col++)
//  854         {
//  855             LCD_SetCursor(Line,Col);
??LCD_ClearSomeThing_1:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R1,R4
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_SetCursor
//  856             LCD_writeReg(DRAWPOINT,Black);
        MOVS     R1,#+0
        MOVS     R0,#+34
        BL       LCD_writeReg
//  857         }
        ADDS     R4,R4,#+1
??LCD_ClearSomeThing_2:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+235
        BLT.N    ??LCD_ClearSomeThing_1
//  858         LCD_SetCursor(Line,7);
        MOVS     R1,#+7
        MOVS     R0,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_SetCursor
//  859         LCD_writeReg(DRAWPOINT,Color_Left_Main);
        MOVW     R1,#+65535
        MOVS     R0,#+34
        BL       LCD_writeReg
//  860         LCD_SetCursor(Line,120);
        MOVS     R1,#+120
        MOVS     R0,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_SetCursor
//  861         LCD_writeReg(DRAWPOINT,Color_Right_Main);
        MOV      R1,#+63488
        MOVS     R0,#+34
        BL       LCD_writeReg
        ADDS     R5,R5,#+1
??LCD_ClearSomeThing_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+264
        BGE.N    ??LCD_ClearSomeThing_3
        MOVS     R4,#+8
        B.N      ??LCD_ClearSomeThing_2
//  862     }
//  863 }
??LCD_ClearSomeThing_3:
        POP      {R0,R4,R5,PC}    ;; return
//  864 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  865 void LCD_ShowInfor(uint8 ShowWhich)
//  866 {
LCD_ShowInfor:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  867     /*
//  868     LCD_SetLine(284, 208 ,34,Color_Left_Sec,0);              // 中心线
//  869     LCD_SetLine(284, 176 ,34,Color_Right_Sec,0);               // 中心线变化率
//  870 
//  871     */
//  872     /*
//  873     LCD_SetLine(284, 144 ,34,Color_Left_Main,0);        // 舵机PWM
//  874     LCD_SetLine(284, 112 ,34,Color_Left_Thr,0);        // 舵机D_PWM
//  875     */
//  876     // 中心
//  877     // LCD_8x8show(285,200,Color_Left_Sec,0);
//  878     // LCD_8x8show(293,200,Color_Left_Sec,1);
//  879     // LCD_12x12show(285,200,Color_Left_Sec,1);
//  880     // 变化率
//  881     
//  882     // 中心
//  883     LCD_12x12show(284,200,Color_Left_Sec,0);
        MOVS     R3,#+0
        MOVW     R2,#+32767
        MOVS     R1,#+200
        MOV      R0,#+284
        BL       LCD_12x12show
//  884     LCD_12x12show(296,200,Color_Left_Sec,1);
        MOVS     R3,#+1
        MOVW     R2,#+32767
        MOVS     R1,#+200
        MOV      R0,#+296
        BL       LCD_12x12show
//  885     // 中心变化率
//  886     LCD_12x12show(284,168,Color_Right_Sec,0);
        MOVS     R3,#+0
        MOVW     R2,#+1311
        MOVS     R1,#+168
        MOV      R0,#+284
        BL       LCD_12x12show
//  887     LCD_12x12show(296,168,Color_Right_Sec,1);
        MOVS     R3,#+1
        MOVW     R2,#+1311
        MOVS     R1,#+168
        MOV      R0,#+296
        BL       LCD_12x12show
//  888     LCD_12x12show(284,156,Color_Right_Sec,2);
        MOVS     R3,#+2
        MOVW     R2,#+1311
        MOVS     R1,#+156
        MOV      R0,#+284
        BL       LCD_12x12show
//  889     LCD_12x12show(296,156,Color_Right_Sec,3);
        MOVS     R3,#+3
        MOVW     R2,#+1311
        MOVS     R1,#+156
        MOV      R0,#+296
        BL       LCD_12x12show
//  890     LCD_12x12show(308,156,Color_Right_Sec,4);
        MOVS     R3,#+4
        MOVW     R2,#+1311
        MOVS     R1,#+156
        MOV      R0,#+308
        BL       LCD_12x12show
//  891     if( 0 == ShowWhich)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.W    ??LCD_ShowInfor_0
//  892     {
//  893         // 给定速度 Color_Left_Main
//  894         LCD_12x12show(284,136,Color_Left_Main,8);
        MOVS     R3,#+8
        MOVW     R2,#+65535
        MOVS     R1,#+136
        MOV      R0,#+284
        BL       LCD_12x12show
//  895         LCD_12x12show(296,136,Color_Left_Main,9);
        MOVS     R3,#+9
        MOVW     R2,#+65535
        MOVS     R1,#+136
        MOV      R0,#+296
        BL       LCD_12x12show
//  896         LCD_12x12show(284,124,Color_Left_Main,10);
        MOVS     R3,#+10
        MOVW     R2,#+65535
        MOVS     R1,#+124
        MOV      R0,#+284
        BL       LCD_12x12show
//  897         LCD_12x12show(296,124,Color_Left_Main,11);
        MOVS     R3,#+11
        MOVW     R2,#+65535
        MOVS     R1,#+124
        MOV      R0,#+296
        BL       LCD_12x12show
//  898         
//  899         // D_给定速度 Color_Left_Thr
//  900         LCD_12x12show(284,72,Color_Left_Refer,17);
        MOVS     R3,#+17
        MOVW     R2,#+65504
        MOVS     R1,#+72
        MOV      R0,#+284
        BL       LCD_12x12show
//  901         LCD_12x12show(290,72,Color_Left_Refer,8);
        MOVS     R3,#+8
        MOVW     R2,#+65504
        MOVS     R1,#+72
        MOV      R0,#+290
        BL       LCD_12x12show
//  902         LCD_12x12show(302,72,Color_Left_Refer,9);
        MOVS     R3,#+9
        MOVW     R2,#+65504
        MOVS     R1,#+72
        MOV      R0,#+302
        BL       LCD_12x12show
//  903         LCD_12x12show(284,60,Color_Left_Refer,10);
        MOVS     R3,#+10
        MOVW     R2,#+65504
        MOVS     R1,#+60
        MOV      R0,#+284
        BL       LCD_12x12show
//  904         LCD_12x12show(296,60,Color_Left_Refer,11);
        MOVS     R3,#+11
        MOVW     R2,#+65504
        MOVS     R1,#+60
        MOV      R0,#+296
        BL       LCD_12x12show
//  905       
//  906         // 实际速度 Color_Left_Refer
//  907         LCD_12x12show(284,104,Color_Left_Thr,12);
        MOVS     R3,#+12
        MOV      R2,#+2016
        MOVS     R1,#+104
        MOV      R0,#+284
        BL       LCD_12x12show
//  908         LCD_12x12show(296,104,Color_Left_Thr,13);
        MOVS     R3,#+13
        MOV      R2,#+2016
        MOVS     R1,#+104
        MOV      R0,#+296
        BL       LCD_12x12show
//  909         LCD_12x12show(284,92,Color_Left_Thr,10);
        MOVS     R3,#+10
        MOV      R2,#+2016
        MOVS     R1,#+92
        MOV      R0,#+284
        BL       LCD_12x12show
//  910         LCD_12x12show(296,92,Color_Left_Thr,11);
        MOVS     R3,#+11
        MOV      R2,#+2016
        MOVS     R1,#+92
        MOV      R0,#+296
        BL       LCD_12x12show
//  911      
//  912         // 电机PWM Color_Right_Main
//  913         LCD_12x12show(284,40,Color_Right_Main,7);
        MOVS     R3,#+7
        MOV      R2,#+63488
        MOVS     R1,#+40
        MOV      R0,#+284
        BL       LCD_12x12show
//  914         LCD_12x12show(296,40,Color_Right_Main,6);
        MOVS     R3,#+6
        MOV      R2,#+63488
        MOVS     R1,#+40
        MOV      R0,#+296
        BL       LCD_12x12show
//  915         LCD_12x12show(284,28,Color_Right_Main,14);
        MOVS     R3,#+14
        MOV      R2,#+63488
        MOVS     R1,#+28
        MOV      R0,#+284
        BL       LCD_12x12show
//  916         LCD_12x12show(290,28,Color_Right_Main,15);
        MOVS     R3,#+15
        MOV      R2,#+63488
        MOVS     R1,#+28
        MOV      R0,#+290
        BL       LCD_12x12show
//  917         LCD_12x12show(296,28,Color_Right_Main,16);
        MOVS     R3,#+16
        MOV      R2,#+63488
        MOVS     R1,#+28
        MOV      R0,#+296
        BL       LCD_12x12show
        B.N      ??LCD_ShowInfor_1
//  918     }
//  919     else
//  920     {
//  921         // 舵机PWM Color_Left_Main
//  922         LCD_12x12show(284,136,Color_Left_Main,5);
??LCD_ShowInfor_0:
        MOVS     R3,#+5
        MOVW     R2,#+65535
        MOVS     R1,#+136
        MOV      R0,#+284
        BL       LCD_12x12show
//  923         LCD_12x12show(296,136,Color_Left_Main,6);
        MOVS     R3,#+6
        MOVW     R2,#+65535
        MOVS     R1,#+136
        MOV      R0,#+296
        BL       LCD_12x12show
//  924         LCD_12x12show(284,124,Color_Left_Main,14);
        MOVS     R3,#+14
        MOVW     R2,#+65535
        MOVS     R1,#+124
        MOV      R0,#+284
        BL       LCD_12x12show
//  925         LCD_12x12show(290,124,Color_Left_Main,15);
        MOVS     R3,#+15
        MOVW     R2,#+65535
        MOVS     R1,#+124
        MOV      R0,#+290
        BL       LCD_12x12show
//  926         LCD_12x12show(296,124,Color_Left_Main,16);
        MOVS     R3,#+16
        MOVW     R2,#+65535
        MOVS     R1,#+124
        MOV      R0,#+296
        BL       LCD_12x12show
//  927         
//  928         // D舵机PWM Color_Left_Thr
//  929         LCD_12x12show(284,104,Color_Left_Thr,17);
        MOVS     R3,#+17
        MOV      R2,#+2016
        MOVS     R1,#+104
        MOV      R0,#+284
        BL       LCD_12x12show
//  930         LCD_12x12show(290,104,Color_Left_Thr,5);
        MOVS     R3,#+5
        MOV      R2,#+2016
        MOVS     R1,#+104
        MOV      R0,#+290
        BL       LCD_12x12show
//  931         LCD_12x12show(302,104,Color_Left_Thr,6);
        MOVS     R3,#+6
        MOV      R2,#+2016
        MOVS     R1,#+104
        MOV      R0,#+302
        BL       LCD_12x12show
//  932         LCD_12x12show(284,92,Color_Left_Thr,14);
        MOVS     R3,#+14
        MOV      R2,#+2016
        MOVS     R1,#+92
        MOV      R0,#+284
        BL       LCD_12x12show
//  933         LCD_12x12show(290,92,Color_Left_Thr,15);
        MOVS     R3,#+15
        MOV      R2,#+2016
        MOVS     R1,#+92
        MOV      R0,#+290
        BL       LCD_12x12show
//  934         LCD_12x12show(296,92,Color_Left_Thr,16);
        MOVS     R3,#+16
        MOV      R2,#+2016
        MOVS     R1,#+92
        MOV      R0,#+296
        BL       LCD_12x12show
//  935     }
//  936 }
??LCD_ShowInfor_1:
        POP      {R4,PC}          ;; return
//  937 
//  938 
//  939 
//  940 
//  941 
//  942 //以下为四轴用
//  943 // 8x6范围内输出字模，以左下角为标准位置参考
//  944 //  Magenta  PWM1
//  945 //  Cyan     PWM2
//  946 //  Blue2    PWM3
//  947 //  Grey     PWM4
//  948 //坐标系重构
//  949 #define xpos_aircraft 12
//  950 #define ypos_aircraft 40
//  951 
//  952 
//  953 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  954 void LCD_8x6show(uint16 startXPos,uint8 YPos,uint16 color,uint8 Num)  //显示单个字符， Num 为ASC码，大于等于32
//  955 {
LCD_8x6show:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
//  956     uint16 LineLoop = 0;
        MOVS     R8,#+0
//  957     uint16 ColLoop = 0;
        MOVS     R9,#+0
//  958     if(Num>31)
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+32
        BLT.N    ??LCD_8x6show_0
//  959     {
//  960     for(LineLoop=0;LineLoop<6;LineLoop++)
        MOVS     R8,#+0
        B.N      ??LCD_8x6show_1
//  961     {
//  962         for(ColLoop=0;ColLoop<8;ColLoop++)
//  963         {
//  964             if(0x80 == (0x80&(( C6x8[Num-32][LineLoop])<<ColLoop)))
??LCD_8x6show_2:
        UXTH     R8,R8            ;; ZeroExt  R8,R8,#+16,#+16
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOVS     R0,#+6
        LDR.W    R1,??DataTable12_5
        MLA      R0,R0,R7,R1
        ADDS     R0,R8,R0
        LDRB     R0,[R0, #-192]
        LSLS     R0,R0,R9
        LSLS     R0,R0,#+24
        BPL.N    ??LCD_8x6show_3
//  965             {
//  966                 LCD_SetCursor(startXPos+LineLoop,YPos+ColLoop);
        UXTAB    R1,R9,R5
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        ADDS     R0,R8,R4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_SetCursor
//  967                 LCD_writeReg(DRAWPOINT,color);
        MOVS     R1,R6
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+34
        BL       LCD_writeReg
//  968             }
//  969         }
??LCD_8x6show_3:
        ADDS     R9,R9,#+1
??LCD_8x6show_4:
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        CMP      R9,#+8
        BLT.N    ??LCD_8x6show_2
        ADDS     R8,R8,#+1
??LCD_8x6show_1:
        UXTH     R8,R8            ;; ZeroExt  R8,R8,#+16,#+16
        CMP      R8,#+6
        BGE.N    ??LCD_8x6show_0
        MOVS     R9,#+0
        B.N      ??LCD_8x6show_4
//  970     }
//  971     }
//  972 }
??LCD_8x6show_0:
        POP      {R0,R4-R9,PC}    ;; return
//  973 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  974 void LCD_8x6show_string(uint16 startXPos,uint8 YPos,uint16 color,unsigned char str[])  //显示一串字符
//  975 {
LCD_8x6show_string:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
//  976  
//  977   uint16 charloop=0;
        MOVS     R8,#+0
        B.N      ??LCD_8x6show_string_0
//  978    while(str[charloop]!='\0')
//  979    {
//  980      LCD_8x6show(startXPos,YPos,color,str[charloop]);
??LCD_8x6show_string_1:
        UXTH     R8,R8            ;; ZeroExt  R8,R8,#+16,#+16
        LDRB     R3,[R8, R7]
        MOVS     R2,R6
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_8x6show
//  981       startXPos += 6;
        ADDS     R4,R4,#+6
//  982       charloop++;
        ADDS     R8,R8,#+1
//  983    }
??LCD_8x6show_string_0:
        UXTH     R8,R8            ;; ZeroExt  R8,R8,#+16,#+16
        LDRB     R0,[R8, R7]
        CMP      R0,#+0
        BNE.N    ??LCD_8x6show_string_1
//  984 }
        POP      {R4-R8,PC}       ;; return
//  985 
//  986 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  987 void LCD_axis_aircraft(void)  //建立坐标系
//  988 {
LCD_axis_aircraft:
        PUSH     {R7,LR}
//  989   LCD_SetLine(12,39,320,Grey,0);    // 0 水平右移，1 竖直上移
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVW     R3,#+63454
        MOV      R2,#+320
        MOVS     R1,#+39
        MOVS     R0,#+12
        BL       LCD_SetLine
//  990 
//  991   LCD_8x6show_string(0,0,Magenta,"PWM1");
        LDR.W    R3,??DataTable12_6
        MOVW     R2,#+63519
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       LCD_8x6show_string
//  992   LCD_8x6show_string(0,8,Cyan,"PWM2");
        LDR.W    R3,??DataTable12_7
        MOVW     R2,#+32767
        MOVS     R1,#+8
        MOVS     R0,#+0
        BL       LCD_8x6show_string
//  993   LCD_8x6show_string(0,16,Blue2,"PWM3");
        LDR.W    R3,??DataTable12_8
        MOVW     R2,#+1311
        MOVS     R1,#+16
        MOVS     R0,#+0
        BL       LCD_8x6show_string
//  994   LCD_8x6show_string(0,24,Grey,"PWM4");
        LDR.W    R3,??DataTable12_9
        MOVW     R2,#+63454
        MOVS     R1,#+24
        MOVS     R0,#+0
        BL       LCD_8x6show_string
//  995   
//  996   LCD_8x6show_string(40,24,Grey,"axis x:");
        LDR.W    R3,??DataTable12_10
        MOVW     R2,#+63454
        MOVS     R1,#+24
        MOVS     R0,#+40
        BL       LCD_8x6show_string
//  997   LCD_8x6show_string(40,16,Grey,"axis y:");
        LDR.W    R3,??DataTable12_11
        MOVW     R2,#+63454
        MOVS     R1,#+16
        MOVS     R0,#+40
        BL       LCD_8x6show_string
//  998   LCD_8x6show_string(40,8,Grey,"axis z:");
        LDR.N    R3,??DataTable12_12
        MOVW     R2,#+63454
        MOVS     R1,#+8
        MOVS     R0,#+40
        BL       LCD_8x6show_string
//  999     
// 1000     LCD_8x6show_string(120,24,Grey,"cm/s x:");
        LDR.N    R3,??DataTable12_13
        MOVW     R2,#+63454
        MOVS     R1,#+24
        MOVS     R0,#+120
        BL       LCD_8x6show_string
// 1001       LCD_8x6show_string(120,16,Grey,"cm/s y:");
        LDR.N    R3,??DataTable12_14
        MOVW     R2,#+63454
        MOVS     R1,#+16
        MOVS     R0,#+120
        BL       LCD_8x6show_string
// 1002        LCD_8x6show_string(120,8,Grey,"cm/s z:");
        LDR.N    R3,??DataTable12_15
        MOVW     R2,#+63454
        MOVS     R1,#+8
        MOVS     R0,#+120
        BL       LCD_8x6show_string
// 1003  
// 1004   LCD_8x6show_string(0,40,White,"0");
        ADR.N    R3,??DataTable11  ;; "0"
        MOVW     R2,#+65535
        MOVS     R1,#+40
        MOVS     R0,#+0
        BL       LCD_8x6show_string
// 1005   LCD_8x6show_string(0,80,White,"20");
        ADR.N    R3,??DataTable11_1  ;; 0x32, 0x30, 0x00, 0x00
        MOVW     R2,#+65535
        MOVS     R1,#+80
        MOVS     R0,#+0
        BL       LCD_8x6show_string
// 1006   LCD_8x6show_string(0,120,White,"40");
        ADR.N    R3,??DataTable12  ;; 0x34, 0x30, 0x00, 0x00
        MOVW     R2,#+65535
        MOVS     R1,#+120
        MOVS     R0,#+0
        BL       LCD_8x6show_string
// 1007   LCD_8x6show_string(0,160,White,"60");
        ADR.N    R3,??DataTable12_1  ;; 0x36, 0x30, 0x00, 0x00
        MOVW     R2,#+65535
        MOVS     R1,#+160
        MOVS     R0,#+0
        BL       LCD_8x6show_string
// 1008   LCD_8x6show_string(0,200,White,"80");
        ADR.N    R3,??DataTable12_2  ;; 0x38, 0x30, 0x00, 0x00
        MOVW     R2,#+65535
        MOVS     R1,#+200
        MOVS     R0,#+0
        BL       LCD_8x6show_string
// 1009 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10:
        DC32     0x400ff0d0
// 1010 
// 1011 
// 1012 // 显示四位十进制数，用于坐标轴建立

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1013 void LCD_showDecFour(uint16 startXPos,uint8 YPos,uint16 color,uint16 Num)
// 1014 {
LCD_showDecFour:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
// 1015     uint16 tempNum = Num;
        MOVS     R1,R3
// 1016     uint8  haveMuch = 0;
        MOVS     R0,#+0
        B.N      ??LCD_showDecFour_0
// 1017     while(tempNum >= 1)
// 1018     {
// 1019         tempNum/=10;
??LCD_showDecFour_1:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R2,#+10
        SDIV     R1,R1,R2
// 1020         haveMuch++;
        ADDS     R0,R0,#+1
// 1021     }
??LCD_showDecFour_0:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+0
        BNE.N    ??LCD_showDecFour_1
// 1022     uint8 qian = (Num/1000);
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        MOV      R1,#+1000
        SDIV     R1,R3,R1
// 1023     uint8 bai  = (Num/100) - qian*10;
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        MOVS     R2,#+100
        SDIV     R2,R3,R2
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R7,#+10
        MLS      R7,R7,R1,R2
// 1024     uint8 shi  = (Num/10) - qian*100 - bai*10;
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        MOVS     R2,#+10
        SDIV     R2,R3,R2
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R12,#+100
        MLS      R2,R12,R1,R2
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOVS     R12,#+10
        MLS      R8,R12,R7,R2
// 1025     uint8 ge   = (Num%10);
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        MOVS     R2,#+10
        SDIV     R12,R3,R2
        MLS      R9,R2,R12,R3
// 1026     switch(haveMuch)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??LCD_showDecFour_2
        CMP      R0,#+2
        BEQ.N    ??LCD_showDecFour_3
        BCC.N    ??LCD_showDecFour_4
        CMP      R0,#+4
        BEQ.N    ??LCD_showDecFour_5
        BCC.N    ??LCD_showDecFour_6
        B.N      ??LCD_showDecFour_7
// 1027     {
// 1028         case 4:
// 1029             LCD_8x6show(startXPos,YPos,color,qian+48);
??LCD_showDecFour_5:
        ADDS     R3,R1,#+48
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,R6
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_8x6show
// 1030             startXPos+=4;
        ADDS     R4,R4,#+4
// 1031         case 3:
// 1032             LCD_8x6show(startXPos,YPos,color,bai+48);
??LCD_showDecFour_6:
        ADDS     R3,R7,#+48
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,R6
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_8x6show
// 1033             startXPos+=4;
        ADDS     R4,R4,#+4
// 1034         case 2:
// 1035             LCD_8x6show(startXPos,YPos,color,shi+48);
??LCD_showDecFour_3:
        ADDS     R3,R8,#+48
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,R6
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_8x6show
// 1036             startXPos+=4;
        ADDS     R4,R4,#+4
// 1037         case 1:
// 1038             LCD_8x6show(startXPos,YPos,color,ge+48);
??LCD_showDecFour_4:
        ADDS     R3,R9,#+48
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,R6
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_8x6show
// 1039             startXPos+=4;
        ADDS     R4,R4,#+4
// 1040         break;
        B.N      ??LCD_showDecFour_7
// 1041         case 0:
// 1042             LCD_8x6show(startXPos,YPos,color,0);
??LCD_showDecFour_2:
        MOVS     R3,#+0
        MOVS     R2,R6
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_8x6show
// 1043         break;
// 1044     }
// 1045 }
??LCD_showDecFour_7:
        POP      {R0,R4-R9,PC}    ;; return
// 1046 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1047 void LCD_clearwindow_aircraft(void) //清屏
// 1048 {
LCD_clearwindow_aircraft:
        PUSH     {R3-R5,LR}
// 1049  uint8 line_PWM;
// 1050  uint16 clearloop;
// 1051 
// 1052   // data_PWM[0][68]=40;
// 1053   for(line_PWM=0;line_PWM<4;line_PWM++)                       
        MOVS     R4,#+0
        B.N      ??LCD_clearwindow_aircraft_0
// 1054   {
// 1055     for(clearloop=0;clearloop<308;clearloop++)
// 1056         {
// 1057           LCD_SetCursor(clearloop+xpos_aircraft,ypos_aircraft+data_PWM1[clearloop]);  //数据data_PWM[line_PWM][clearloop]
??LCD_clearwindow_aircraft_1:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        LDR.N    R0,??DataTable12_16
        LDRB     R0,[R5, R0]
        ADDS     R1,R0,#+40
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        ADDS     R0,R5,#+12
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_SetCursor
// 1058           LCD_writeReg(DRAWPOINT,Black);
        MOVS     R1,#+0
        MOVS     R0,#+34
        BL       LCD_writeReg
// 1059            LCD_SetCursor(clearloop+xpos_aircraft,ypos_aircraft+data_PWM2[clearloop]);  //数据data_PWM[line_PWM][clearloop]
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        LDR.N    R0,??DataTable12_17
        LDRB     R0,[R5, R0]
        ADDS     R1,R0,#+40
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        ADDS     R0,R5,#+12
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_SetCursor
// 1060           LCD_writeReg(DRAWPOINT,Black);
        MOVS     R1,#+0
        MOVS     R0,#+34
        BL       LCD_writeReg
// 1061            LCD_SetCursor(clearloop+xpos_aircraft,ypos_aircraft+data_PWM3[clearloop]);  //数据data_PWM[line_PWM][clearloop]
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        LDR.N    R0,??DataTable12_18
        LDRB     R0,[R5, R0]
        ADDS     R1,R0,#+40
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        ADDS     R0,R5,#+12
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_SetCursor
// 1062           LCD_writeReg(DRAWPOINT,Black);
        MOVS     R1,#+0
        MOVS     R0,#+34
        BL       LCD_writeReg
// 1063            LCD_SetCursor(clearloop+xpos_aircraft,ypos_aircraft+data_PWM4[clearloop]);  //数据data_PWM[line_PWM][clearloop]
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        LDR.N    R0,??DataTable12_19
        LDRB     R0,[R5, R0]
        ADDS     R1,R0,#+40
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        ADDS     R0,R5,#+12
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_SetCursor
// 1064           LCD_writeReg(DRAWPOINT,Black);
        MOVS     R1,#+0
        MOVS     R0,#+34
        BL       LCD_writeReg
// 1065         }
        ADDS     R5,R5,#+1
??LCD_clearwindow_aircraft_2:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+308
        BLT.N    ??LCD_clearwindow_aircraft_1
        ADDS     R4,R4,#+1
??LCD_clearwindow_aircraft_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+4
        BGE.N    ??LCD_clearwindow_aircraft_3
        MOVS     R5,#+0
        B.N      ??LCD_clearwindow_aircraft_2
// 1066   }
// 1067 }
??LCD_clearwindow_aircraft_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11:
        DC8      "0",0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_1:
        DC8      0x32, 0x30, 0x00, 0x00
// 1068 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1069 void LCD_clearwindow_juxing(uint16 x1_leftup,uint8 y1_leftup,uint16 x2_rightdown,uint8 y2_rightdown)
// 1070 {
LCD_clearwindow_juxing:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
// 1071    uint8 ylineloop;
// 1072  uint16 xlineloop;
// 1073  for(xlineloop=0;xlineloop<(x2_rightdown-x1_leftup);xlineloop++)                       
        MOVS     R9,#+0
        B.N      ??LCD_clearwindow_juxing_0
// 1074   {
// 1075     for(ylineloop=0;ylineloop<(y1_leftup-y2_rightdown);ylineloop++)
// 1076         {
// 1077           LCD_SetCursor(x1_leftup+xlineloop,y2_rightdown+ylineloop);  //数据data_PWM[line_PWM][clearloop]
??LCD_clearwindow_juxing_1:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        UXTAB    R1,R8,R7
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        ADDS     R0,R9,R4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_SetCursor
// 1078           LCD_writeReg(DRAWPOINT,Black);
        MOVS     R1,#+0
        MOVS     R0,#+34
        BL       LCD_writeReg
// 1079         }
        ADDS     R8,R8,#+1
??LCD_clearwindow_juxing_2:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        SUBS     R0,R5,R7
        CMP      R8,R0
        BLT.N    ??LCD_clearwindow_juxing_1
        ADDS     R9,R9,#+1
??LCD_clearwindow_juxing_0:
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        SUBS     R0,R6,R4
        CMP      R9,R0
        BGE.N    ??LCD_clearwindow_juxing_3
        MOVS     R8,#+0
        B.N      ??LCD_clearwindow_juxing_2
// 1080   }
// 1081 }
??LCD_clearwindow_juxing_3:
        POP      {R0,R4-R9,PC}    ;; return
// 1082 
// 1083 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1084 void LCD_setpoint(uint16 data_xpos,uint8 data_ypos,uint16 color)
// 1085 {
LCD_setpoint:
        PUSH     {R4,LR}
        MOVS     R4,R2
// 1086       LCD_SetCursor(data_xpos,data_ypos);  
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_SetCursor
// 1087           LCD_writeReg(DRAWPOINT,color);
        MOVS     R1,R4
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+34
        BL       LCD_writeReg
// 1088 }
        POP      {R4,PC}          ;; return
// 1089 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1090 void data_axis_receive16(uint16 *num )
// 1091 {
data_axis_receive16:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
// 1092   char data_temp;
// 1093   *num = 0;
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
// 1094    __v_uart_getchar(&data_temp);
        ADD      R0,SP,#+0
        BL       __v_uart_getchar
// 1095    *num += ((data_temp-48)*10);
        LDRH     R0,[R4, #+0]
        LDRB     R1,[SP, #+0]
        SUBS     R1,R1,#+48
        MOVS     R2,#+10
        MULS     R1,R2,R1
        UXTAH    R0,R1,R0
        STRH     R0,[R4, #+0]
// 1096    __v_uart_getchar(&data_temp);
        ADD      R0,SP,#+0
        BL       __v_uart_getchar
// 1097    *num += (data_temp-48);
        LDRH     R0,[R4, #+0]
        LDRB     R1,[SP, #+0]
        SUBS     R1,R1,#+48
        ADDS     R0,R1,R0
        STRH     R0,[R4, #+0]
// 1098 }
        POP      {R0,R1,R4,PC}    ;; return
// 1099 
// 1100 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1101 void LCD_showware(void)
// 1102 {
LCD_showware:
        PUSH     {R3-R5,LR}
// 1103   uint16 lineloop;
// 1104   uint16 line_xpos;
// 1105 //  uint16 line_data;
// 1106   for(lineloop=0;lineloop<308;lineloop++)
        MOVS     R4,#+0
        B.N      ??LCD_showware_0
// 1107   {
// 1108     char data_temp;
// 1109   //  uint16 data_axis_temp;
// 1110     line_xpos=xpos_aircraft+lineloop;
??LCD_showware_1:
        ADDS     R5,R4,#+12
// 1111     
// 1112   /*    data_axis_receive16( &data_axis_temp );
// 1113     LCD_showDecFour(82,24,White,data_axis_temp);
// 1114       data_axis_receive16( &data_axis_temp );
// 1115     LCD_showDecFour(82,16,White,data_axis_temp);
// 1116       data_axis_receive16( &data_axis_temp );
// 1117     LCD_showDecFour(82,8,White,data_axis_temp);
// 1118       data_axis_receive16( &data_axis_temp );
// 1119     LCD_showDecFour(162,24,White,data_axis_temp);
// 1120       data_axis_receive16( &data_axis_temp );
// 1121     LCD_showDecFour(162,16,White,data_axis_temp);
// 1122       data_axis_receive16( &data_axis_temp );
// 1123     LCD_showDecFour(162,8,White,data_axis_temp);
// 1124   */
// 1125     uart_getchar(&data_temp);
        ADD      R0,SP,#+0
        BL       uart_getchar
// 1126     data_PWM1[lineloop]=data_temp;
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LDR.N    R0,??DataTable12_16
        LDRB     R1,[SP, #+0]
        STRB     R1,[R4, R0]
// 1127     LCD_setpoint(line_xpos,ypos_aircraft+data_temp,Magenta);
        MOVW     R2,#+63519
        LDRB     R0,[SP, #+0]
        ADDS     R1,R0,#+40
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_setpoint
// 1128     uart_getchar(&data_temp);
        ADD      R0,SP,#+0
        BL       uart_getchar
// 1129     data_PWM2[lineloop]=data_temp;
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LDR.N    R0,??DataTable12_17
        LDRB     R1,[SP, #+0]
        STRB     R1,[R4, R0]
// 1130     LCD_setpoint(line_xpos,ypos_aircraft+data_temp,Cyan);
        MOVW     R2,#+32767
        LDRB     R0,[SP, #+0]
        ADDS     R1,R0,#+40
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_setpoint
// 1131     uart_getchar(&data_temp);
        ADD      R0,SP,#+0
        BL       uart_getchar
// 1132     data_PWM3[lineloop]=data_temp;
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LDR.N    R0,??DataTable12_18
        LDRB     R1,[SP, #+0]
        STRB     R1,[R4, R0]
// 1133     LCD_setpoint(line_xpos,ypos_aircraft+data_temp,Blue2);
        MOVW     R2,#+1311
        LDRB     R0,[SP, #+0]
        ADDS     R1,R0,#+40
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_setpoint
// 1134     uart_getchar(&data_temp);
        ADD      R0,SP,#+0
        BL       uart_getchar
// 1135     data_PWM4[lineloop]=data_temp;
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LDR.N    R0,??DataTable12_19
        LDRB     R1,[SP, #+0]
        STRB     R1,[R4, R0]
// 1136     LCD_setpoint(line_xpos,ypos_aircraft+data_temp,Grey);
        MOVW     R2,#+63454
        LDRB     R0,[SP, #+0]
        ADDS     R1,R0,#+40
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_setpoint
// 1137 /*
// 1138     LCD_clearwindow_juxing(82,30,112,0);
// 1139     LCD_clearwindow_juxing(162,30,192,0);
// 1140     */
// 1141   }
        ADDS     R4,R4,#+1
??LCD_showware_0:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+308
        BLT.N    ??LCD_showware_1
// 1142  
// 1143 }
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12:
        DC8      0x34, 0x30, 0x00, 0x00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_1:
        DC8      0x36, 0x30, 0x00, 0x00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_2:
        DC8      0x38, 0x30, 0x00, 0x00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_3:
        DC32     0x406c0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_4:
        DC32     0x405c8000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_5:
        DC32     C6x8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_6:
        DC32     `?<Constant "PWM1">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_7:
        DC32     `?<Constant "PWM2">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_8:
        DC32     `?<Constant "PWM3">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_9:
        DC32     `?<Constant "PWM4">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_10:
        DC32     `?<Constant "axis x:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_11:
        DC32     `?<Constant "axis y:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_12:
        DC32     `?<Constant "axis z:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_13:
        DC32     `?<Constant "cm/s x:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_14:
        DC32     `?<Constant "cm/s y:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_15:
        DC32     `?<Constant "cm/s z:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_16:
        DC32     data_PWM1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_17:
        DC32     data_PWM2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_18:
        DC32     data_PWM3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_19:
        DC32     data_PWM4

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 1144 
// 1145 
// 1146 
// 1147 
// 1148 
// 1149 
// 1150 
// 1151 
// 1152 
// 
// 1 232 bytes in section .bss
// 1 682 bytes in section .rodata
// 6 354 bytes in section .text
// 
// 6 354 bytes of CODE  memory
// 1 682 bytes of CONST memory
// 1 232 bytes of DATA  memory
//
//Errors: none
//Warnings: 1
