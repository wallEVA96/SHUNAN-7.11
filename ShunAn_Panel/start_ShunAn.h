/*
*文件名：              start_ShunAn.h
*说明：                顺暗2号C语言启动头文件
*所用芯片型号：        MK60FX512VQL15
*创建时间：            2014/5/18
*作者：                中南大学弓箭
*/
#ifndef start_ShunAn
#define start_ShunAn
#include "arm_cm4.h"
#include "MK60F15.h"
//定义时钟相关宏定义
#define CORE_CLK                PLL150      // 从 PLL_e 里选择 已提供的 配置方案
                                            // bus 、 flex bus 、 flash 频率 都是 core 整数倍分频而来
#define MAX_BUS_CLK             75         // bus      (bus        >= core/16  )
#define MAX_FLEXBUS_CLK         25          // flex bus (flex bus   >= core/16  )
#define MAX_FLASH_CLK           25          // flash    (flash      >= core/16  )
/*
 * 定义晶振时钟，单位为MHz
 */
#define EXTAL_IN_MHz            (50)
//
extern int core_clk_khz;
extern int core_clk_mhz;
extern int bus_clk_khz;
//
/*********************   自定义 时钟频率 分频因子   ********************/
//如果 CORE_CLK 为 PLLUSR ，则为自定义模式 ，如下配置生效
//如果是 F15 系列： MCG_CLK_MHZ = 50u*(VDIV+16)/(PRDIV+1)/2
//如果是 DZ10 系列：MCG_CLK_MHZ = 50u/*(VDIV+24)(PRDIV+1)
#define PRDIV             10
#define VDIV              29
#define CORE_DIV          0         //  core = mcg/ ( CORE_DIV  + 1 )
#define BUS_DIV           1         //  bus  = mcg/ ( BUS_DIV   + 1 )
#define FLEX_DIV          9         //  flex = mcg/ ( FLEX_DIV  + 1 )
#define FLASH_DIV         8         //  flash= mcg/ ( FLASH_DIV + 1 )
extern void default_isr(void);                  //定义默认中断复位函数
extern void Reset_Handler (void);               //声明复位函数，在 start_ShunAn.s 文件里定义
extern unsigned long __BOOT_STACK_ADDRESS[];    //声明栈地址，从linker文件（*.icf ）获得
typedef void (*vector_entry)(void);             //定义中断向量表的函数类型
//中断向量定义开始
#define VECTOR_000      (vector_entry)__BOOT_STACK_ADDRESS  //          ARM core        Initial Supervisor SP
#define VECTOR_001      Reset_Handler   // 0x0000_0004 1 -          ARM core        Initial Program Counter
#define VECTOR_002      default_isr     // 0x0000_0008 2 -          ARM core        Non-maskable Interrupt (NMI)
#define VECTOR_003      default_isr     // 0x0000_000C 3 -          ARM core        Hard Fault
#define VECTOR_004      default_isr     // 0x0000_0010 4 -
#define VECTOR_005      default_isr     // 0x0000_0014 5 -          ARM core         Bus Fault
#define VECTOR_006      default_isr     // 0x0000_0018 6 -          ARM core         Usage Fault
#define VECTOR_007      default_isr     // 0x0000_001C 7 -                           
#define VECTOR_008      default_isr     // 0x0000_0020 8 -                           
#define VECTOR_009      default_isr     // 0x0000_0024 9 -
#define VECTOR_010      default_isr     // 0x0000_0028 10 -
#define VECTOR_011      default_isr     // 0x0000_002C 11 -         ARM core         Supervisor call (SVCall)
#define VECTOR_012      default_isr     // 0x0000_0030 12 -         ARM core         Debug Monitor
#define VECTOR_013      default_isr     // 0x0000_0034 13 -                          
#define VECTOR_014      default_isr     // 0x0000_0038 14 -         ARM core         Pendable request for system service (PendableSrvReq)
#define VECTOR_015      default_isr     // 0x0000_003C 15 -         ARM core         System tick timer (SysTick)
#define VECTOR_016      default_isr     // 0x0000_0040 16     0     DMA              DMA Channel 0 transfer complete
#define VECTOR_017      default_isr     // 0x0000_0044 17     1     DMA              DMA Channel 1 transfer complete
#define VECTOR_018      default_isr     // 0x0000_0048 18     2     DMA              DMA Channel 2 transfer complete
#define VECTOR_019      default_isr     // 0x0000_004C 19     3     DMA              DMA Channel 3 transfer complete
#define VECTOR_020      default_isr     // 0x0000_0050 20     4     DMA              DMA Channel 4 transfer complete
#define VECTOR_021      default_isr     // 0x0000_0054 21     5     DMA              DMA Channel 5 transfer complete
#define VECTOR_022      default_isr     // 0x0000_0058 22     6     DMA              DMA Channel 6 transfer complete
#define VECTOR_023      default_isr     // 0x0000_005C 23     7     DMA              DMA Channel 7 transfer complete
#define VECTOR_024      default_isr     // 0x0000_0060 24     8     DMA              DMA Channel 8 transfer complete
#define VECTOR_025      default_isr     // 0x0000_0064 25     9     DMA              DMA Channel 9 transfer complete
#define VECTOR_026      default_isr     // 0x0000_0068 26    10     DMA              DMA Channel 10 transfer complete
#define VECTOR_027      default_isr     // 0x0000_006C 27    11     DMA              DMA Channel 11 transfer complete
#define VECTOR_028      default_isr     // 0x0000_0070 28    12     DMA              DMA Channel 12 transfer complete
#define VECTOR_029      default_isr     // 0x0000_0074 29    13     DMA              DMA Channel 13 transfer complete
#define VECTOR_030      default_isr     // 0x0000_0078 30    14     DMA              DMA Channel 14 transfer complete
#define VECTOR_031      default_isr     // 0x0000_007C 31    15     DMA              DMA Channel 15 transfer complete
#define VECTOR_032      default_isr     // 0x0000_0080 32    16     DMA              DMA Error Interrupt Channels 0-15
#define VECTOR_033      default_isr     // 0x0000_0084 33    17     MCM              Normal interrupt
#define VECTOR_034      default_isr     // 0x0000_0088 34    18     Flash memory     Command Complete
#define VECTOR_035      default_isr     // 0x0000_008C 35    19     Flash memory     Read Collision
#define VECTOR_036      default_isr     // 0x0000_0090 36    20     Mode Controller  Low Voltage Detect,Low Voltage Warning, Low Leakage Wakeup
#define VECTOR_037      default_isr     // 0x0000_0094 37    21     LLWU
#define VECTOR_038      default_isr     // 0x0000_0098 38    22     WDOG
#define VECTOR_039      default_isr     // 0x0000_009C 39    23     RNGB
#define VECTOR_040      default_isr     // 0x0000_00A0 40    24     I2C0
#define VECTOR_041      default_isr     // 0x0000_00A4 41    25     I2C1
#define VECTOR_042      default_isr     // 0x0000_00A8 42    26     SPI0             Single interrupt vector for all sources
#define VECTOR_043      default_isr     // 0x0000_00AC 43    27     SPI1             Single interrupt vector for all sources
#define VECTOR_044      default_isr     // 0x0000_00B0 44    28     SPI2             Single interrupt vector for all sources
#define VECTOR_045      default_isr     // 0x0000_00B4 45    29     CAN0             OR'ed Message buffer (0-15)
#define VECTOR_046      default_isr     // 0x0000_00B8 46    30     CAN0             Bus Off
#define VECTOR_047      default_isr     // 0x0000_00BC 47    31     CAN0             Error
#define VECTOR_048      default_isr     // 0x0000_00C0 48    32     CAN0             Transmit Warning
#define VECTOR_049      default_isr     // 0x0000_00C4 49    33     CAN0             Receive Warning
#define VECTOR_050      default_isr     // 0x0000_00C8 50    34     CAN0             Wake Up
#define VECTOR_051      default_isr     // 0x0000_00CC 51    35     CAN0             Individual Matching Elements Update (IMEU)
#define VECTOR_052      default_isr     // 0x0000_00D0 52    36     CAN0             Lost receive
#define VECTOR_053      default_isr     // 0x0000_00D4 53    37     CAN1             OR'ed Message buffer (0-15)
#define VECTOR_054      default_isr     // 0x0000_00D8 54    38     CAN1             Bus off
#define VECTOR_055      default_isr     // 0x0000_00DC 55    39     CAN1             Error
#define VECTOR_056      default_isr     // 0x0000_00E0 56    40     CAN1             Transmit Warning
#define VECTOR_057      default_isr     // 0x0000_00E4 57    41     CAN1             Receive Warning
#define VECTOR_058      default_isr     // 0x0000_00E8 58    42     CAN1             Wake Up
#define VECTOR_059      default_isr     // 0x0000_00EC 59    43     CAN1             Individual Matching Elements Update (IMEU)
#define VECTOR_060      default_isr     // 0x0000_00F0 60    44     CAN1             Lost receive 
#define VECTOR_061      default_isr     // 0x0000_00F4 61    45     UART0            Single interrupt vector for UART status sources
#define VECTOR_062      default_isr     // 0x0000_00F8 62    46     UART0            Single interrupt vector for UART error sources
#define VECTOR_063      default_isr     // 0x0000_00FC 63    47     UART1            Single interrupt vector for UART status sources
#define VECTOR_064      default_isr     // 0x0000_0100 64    48     UART1            Single interrupt vector for UART error sources
#define VECTOR_065      default_isr     // 0x0000_0104 65    49     UART2            Single interrupt vector for UART status sources
#define VECTOR_066      default_isr     // 0x0000_0108 66    50     UART2            Single interrupt vector for UART error sources
#define VECTOR_067      default_isr     // 0x0000_010C 67    51     UART3            Single interrupt vector for UART status sources
#define VECTOR_068      default_isr     // 0x0000_0110 68    52     UART3            Single interrupt vector for UART error sources
#define VECTOR_069      default_isr     // 0x0000_0114 69    53     UART4            Single interrupt vector for UART status sources
#define VECTOR_070      default_isr     // 0x0000_0118 70    54     UART4            Single interrupt vector for UART error sources
#define VECTOR_071      default_isr     // 0x0000_011C 71    55     UART5            Single interrupt vector for UART status sources
#define VECTOR_072      default_isr     // 0x0000_0120 72    56     UART5            Single interrupt vector for UART error sources
#define VECTOR_073      default_isr     // 0x0000_0124 73    57     ADC0
#define VECTOR_074      default_isr     // 0x0000_0128 74    58     ADC1
#define VECTOR_075      default_isr     // 0x0000_012C 75    59     CMP0             High-speed comparator 
#define VECTOR_076      default_isr     // 0x0000_0130 76    60     CMP1
#define VECTOR_077      default_isr     // 0x0000_0134 77    61     CMP2
#define VECTOR_078      default_isr     // 0x0000_0138 78    62     FTM0             Single interrupt vector for all sources
#define VECTOR_079      default_isr     // 0x0000_013C 79    63     FTM1             Single interrupt vector for all sources
#define VECTOR_080      default_isr     // 0x0000_0140 80    64     FTM2             Single interrupt vector for all sources
#define VECTOR_081      default_isr     // 0x0000_0144 81    65     CMT
#define VECTOR_082      default_isr     // 0x0000_0148 82    66     RTC Timer interrupt
#define VECTOR_083      default_isr     // 0x0000_014C 83    67
#define VECTOR_084      default_isr     // 0x0000_0150 84    68     PIT Channel 0
#define VECTOR_085      default_isr     // 0x0000_0154 85    69     PIT Channel 1
#define VECTOR_086      default_isr     // 0x0000_0158 86    70     PIT Channel 2
#define VECTOR_087      default_isr     // 0x0000_015C 87    71     PIT Channel 3
#define VECTOR_088      default_isr     // 0x0000_0160 88    72     PDB
#define VECTOR_089      default_isr     // 0x0000_0164 89    73     USB OTG
#define VECTOR_090      default_isr     // 0x0000_0168 90    74     USB Charger Detect
#define VECTOR_091      default_isr     // 0x0000_016C 91    75     ENET             IEEE 1588 Timer interrupt           
#define VECTOR_092      default_isr     // 0x0000_0170 92    76     ENET             Transmit interrupt
#define VECTOR_093      default_isr     // 0x0000_0174 93    77     ENET             Receive interrupt
#define VECTOR_094      default_isr     // 0x0000_0178 94    78     ENET             Error and miscellaneous interrupt
#define VECTOR_095      default_isr     // 0x0000_017C 95    79     I2S
#define VECTOR_096      default_isr     // 0x0000_0180 96    80     SDHC
#define VECTOR_097      default_isr     // 0x0000_0184 97    81     DAC0
#define VECTOR_098      default_isr     // 0x0000_0188 98    82     DAC1
#define VECTOR_099      default_isr     // 0x0000_018C 99    83     TSI              Single interrupt vector for all sources
#define VECTOR_100      default_isr     // 0x0000_0190 100   84     MCG
#define VECTOR_101      default_isr     // 0x0000_0194 101   85     Low Power Timer
#define VECTOR_102      default_isr     // 0x0000_0198 102   86     Segment LCD      Single interrupt vector for all sources
#define VECTOR_103      default_isr     // 0x0000_019C 103   87     Port control module Pin Detect (Port A)
#define VECTOR_104      default_isr     // 0x0000_01A0 104   88     Port control module Pin Detect (Port B)
#define VECTOR_105      default_isr     // 0x0000_01A4 105   89     Port control module Pin Detect (Port C)
#define VECTOR_106      default_isr     // 0x0000_01A8 106   90     Port control module Pin Detect (Port D)
#define VECTOR_107      default_isr     // 0x0000_01AC 107   91     Port control module Pin Detect (Port E)
#define VECTOR_108      default_isr     // 0x0000_01B0 108   92    
#define VECTOR_109      default_isr     // 0x0000_01B4 109   93    
#define VECTOR_110      default_isr     // 0x0000_01B8 110   94    
#define VECTOR_111      default_isr     // 0x0000_01BC 111   95    
#define VECTOR_112      default_isr     // 0x0000_01C0 112   96    
#define VECTOR_113      default_isr     // 0x0000_01C4 113   97    
#define VECTOR_114      default_isr     // 0x0000_01C8 114   98    
#define VECTOR_115      default_isr     // 0x0000_01CC 115   99    
#define VECTOR_116      default_isr     // 0x0000_01D0 116   100
#define VECTOR_117      default_isr     // 0x0000_01D4 117   101
#define VECTOR_118      default_isr     // 0x0000_01D8 118   102
#define VECTOR_119      default_isr     // 0x0000_01DC 119   103
#define VECTOR_120      default_isr     // 
#define VECTOR_121      default_isr     // 
#define VECTOR_122      default_isr     // 
#define VECTOR_123      default_isr     // 
#define VECTOR_124      default_isr     // 
#define VECTOR_125      default_isr     // 
#define VECTOR_126      default_isr     // 
#define VECTOR_127      default_isr     // 
#define VECTOR_128      default_isr     // 
#define VECTOR_129      default_isr     // 
#define VECTOR_130      default_isr     // 
#define VECTOR_131      default_isr     // 
#define VECTOR_132      default_isr     // 
#define VECTOR_133      default_isr     // 
#define VECTOR_134      default_isr     // 
#define VECTOR_135      default_isr     // 
#define VECTOR_136      default_isr     // 
#define VECTOR_137      default_isr     // 
#define VECTOR_138      default_isr     // 
#define VECTOR_139      default_isr     // 
#define VECTOR_140      default_isr     // 
#define VECTOR_141      default_isr     // 
#define VECTOR_142      default_isr     // 
#define VECTOR_143      default_isr     // 
#define VECTOR_144      default_isr     // 
#define VECTOR_145      default_isr     // 
#define VECTOR_146      default_isr     // 
#define VECTOR_147      default_isr     // 
#define VECTOR_148      default_isr     // 
#define VECTOR_149      default_isr     // 
#define VECTOR_150      default_isr     // 
#define VECTOR_151      default_isr     // 
#define VECTOR_152      default_isr     // 
#define VECTOR_153      default_isr     // 
#define VECTOR_154      default_isr     // 
#define VECTOR_155      default_isr     // 
#define VECTOR_156      default_isr     // 
#define VECTOR_157      default_isr     // 
#define VECTOR_158      default_isr     // 
#define VECTOR_159      default_isr     // 
#define VECTOR_160      default_isr     // 
#define VECTOR_161      default_isr     // 
#define VECTOR_162      default_isr     // 
#define VECTOR_163      default_isr     // 
#define VECTOR_164      default_isr     // 
#define VECTOR_165      default_isr     // 
#define VECTOR_166      default_isr     // 
#define VECTOR_167      default_isr     // 
#define VECTOR_168      default_isr     // 
#define VECTOR_169      default_isr     // 
#define VECTOR_170      default_isr     // 
#define VECTOR_171      default_isr     // 
#define VECTOR_172      default_isr     // 
#define VECTOR_173      default_isr     // 
#define VECTOR_174      default_isr     // 
#define VECTOR_175      default_isr     // 
#define VECTOR_176      default_isr     // 
#define VECTOR_177      default_isr     // 
#define VECTOR_178      default_isr     // 
#define VECTOR_179      default_isr     // 
#define VECTOR_180      default_isr     // 
#define VECTOR_181      default_isr     // 
#define VECTOR_182      default_isr     // 
#define VECTOR_183      default_isr     // 
#define VECTOR_184      default_isr     // 
#define VECTOR_185      default_isr     // 
#define VECTOR_186      default_isr     // 
#define VECTOR_187      default_isr     // 
#define VECTOR_188      default_isr     // 
#define VECTOR_189      default_isr     // 
#define VECTOR_190      default_isr     // 
#define VECTOR_191      default_isr     // 
#define VECTOR_192      default_isr     // 
#define VECTOR_193      default_isr     // 
#define VECTOR_194      default_isr     // 
#define VECTOR_195      default_isr     // 
#define VECTOR_196      default_isr     // 
#define VECTOR_197      default_isr     // 
#define VECTOR_198      default_isr     // 
#define VECTOR_199      default_isr     // 
#define VECTOR_200      default_isr     // 
#define VECTOR_201      default_isr     // 
#define VECTOR_202      default_isr     // 
#define VECTOR_203      default_isr     // 
#define VECTOR_204      default_isr     // 
#define VECTOR_205      default_isr     // 
#define VECTOR_206      default_isr     // 
#define VECTOR_207      default_isr     // 
#define VECTOR_208      default_isr     // 
#define VECTOR_209      default_isr     // 
#define VECTOR_210      default_isr     // 
#define VECTOR_211      default_isr     // 
#define VECTOR_212      default_isr     // 
#define VECTOR_213      default_isr     // 
#define VECTOR_214      default_isr     // 
#define VECTOR_215      default_isr     // 
#define VECTOR_216      default_isr     // 
#define VECTOR_217      default_isr     // 
#define VECTOR_218      default_isr     // 
#define VECTOR_219      default_isr     // 
#define VECTOR_220      default_isr     // 
#define VECTOR_221      default_isr     // 
#define VECTOR_222      default_isr     // 
#define VECTOR_223      default_isr     // 
#define VECTOR_224      default_isr     // 
#define VECTOR_225      default_isr     // 
#define VECTOR_226      default_isr     // 
#define VECTOR_227      default_isr     // 
#define VECTOR_228      default_isr     // 
#define VECTOR_229      default_isr     // 
#define VECTOR_230      default_isr     // 
#define VECTOR_231      default_isr     // 
#define VECTOR_232      default_isr     // 
#define VECTOR_233      default_isr     // 
#define VECTOR_234      default_isr     // 
#define VECTOR_235      default_isr     // 
#define VECTOR_236      default_isr     // 
#define VECTOR_237      default_isr     // 
#define VECTOR_238      default_isr     // 
#define VECTOR_239      default_isr     // 
#define VECTOR_240      default_isr     // 
#define VECTOR_241      default_isr     // 
#define VECTOR_242      default_isr     // 
#define VECTOR_243      default_isr     // 
#define VECTOR_244      default_isr     // 
#define VECTOR_245      default_isr     // 
#define VECTOR_246      default_isr     // 
#define VECTOR_247      default_isr     // 
#define VECTOR_248      default_isr     // 
#define VECTOR_249      default_isr     // 
#define VECTOR_250      default_isr     // 
#define VECTOR_251      default_isr     // 
#define VECTOR_252      default_isr     // 
#define VECTOR_253      default_isr     // 
#define VECTOR_254      default_isr     // 
#define VECTOR_255      default_isr     // 

/* Flash configuration field values below */
/* Please be careful when modifying any of
 * the values below as it can secure the
 * flash (possibly permanently).
 */
#define CONFIG_1    (vector_entry)0xffffffff
#define CONFIG_2    (vector_entry)0xffffffff
#define CONFIG_3    (vector_entry)0xffffffff
#define CONFIG_4    (vector_entry)0xfffffffe

//中断向量定义结束

/*
 * 中断号类型声明
 */
typedef enum
{
    /******  Cortex-M4 Processor Exceptions Numbers ****************************************************************/
    NonMaskableInt_IRQn             = -14,      /*!< 2 Non Maskable Interrupt                                                                                    */
    HardFault_IRQn                  = -13 ,     /*!< 3 Hard Fault                                                                                */
    MemoryManagement_IRQn           = -12,      /*!< 4 Cortex-M4 Memory Management Interrupt                                                     */
    BusFault_IRQn                   = -11,      /*!< 5 Cortex-M4 Bus Fault Interrupt                                                                     */
    UsageFault_IRQn                 = -10,      /*!< 6 Cortex-M4 Usage Fault Interrupt                                                               */
    SVCall_IRQn                     = -5,       /*!< 11 Cortex-M4 SV Call Interrupt                                                                      */
    DebugMonitor_IRQn               = -4,       /*!< 12 Cortex-M4 Debug Monitor Interrupt                                                            */
    PendSV_IRQn                     = -2,       /*!< 14 Cortex-M4 Pend SV Interrupt                                                                      */
    SysTick_IRQn                    = -1,       /*!< 15 Cortex-M4 System Tick Interrupt                                                              */
    /******  Kinetis 60 specific Interrupt Numbers **********************************************************************/
    DMA0_IRQn                       = 0,        // DMA Channel 0 Transfer Complete
    DMA1_IRQn                       = 1,        // DMA Channel 1 Transfer Complete
    DMA2_IRQn                       = 2,        // DMA Channel 2 Transfer Complete
    DMA3_IRQn                       = 3,        // DMA Channel 3 Transfer Complete
    DMA4_IRQn                       = 4,        // DMA Channel 4 Transfer Complete
    DMA5_IRQn                       = 5,        // DMA Channel 5 Transfer Complete
    DMA6_IRQn                       = 6,        // DMA Channel 6 Transfer Complete
    DMA7_IRQn                       = 7,        // DMA Channel 7 Transfer Complete
    DMA8_IRQn                       = 8,        // DMA Channel 8 Transfer Complete
    DMA9_IRQn                       = 9,        // DMA Channel 9 Transfer Complete
    DMA10_IRQn                      = 10,       // DMA Channel 10 Transfer Complete
    DMA11_IRQn                      = 11,       // DMA Channel 11 Transfer Complete
    DMA12_IRQn                      = 12,       // DMA Channel 12 Transfer Complete
    DMA13_IRQn                      = 13,       // DMA Channel 13 Transfer Complete
    DMA14_IRQn                      = 14,       // DMA Channel 14 Transfer Complete
    DMA15_IRQn                      = 15,       // DMA Channel 15 Transfer Complete
    DMA_Error_IRQn                  = 16,       // DMA Error Interrupt
    MCM_IRQn                        = 17,       // Normal Interrupt
    FTFL_IRQn                       = 18,       // FTFL Interrupt
    Read_Collision_IRQn             = 19,       // Read Collision Interrupt
    LVD_LVW_IRQn                    = 20,       // Low Voltage Detect, Low Voltage Warning
    LLW_IRQn                        = 21,       // Low Leakage Wakeup
    Watchdog_IRQn                   = 22,       // WDOG Interrupt
    RNG_IRQn                        = 23,       // RNGB Interrupt
    I2C0_IRQn                       = 24,       // I2C0 interrupt
    I2C1_IRQn                       = 25,       // I2C1 interrupt
    SPI0_IRQn                       = 26,       // SPI0 Interrupt
    SPI1_IRQn                       = 27,       // SPI1 Interrupt
    SPI2_IRQn                       = 28,       // SPI2 Interrupt
    CAN0_ORed_MB_IRQn               = 29,       // CAN0 OR'd Message Buffers Interrupt
    CAN0_Bus_Off_IRQn               = 30,       // CAN0 Bus Off Interrupt
    CAN0_Error_IRQn                 = 31,       // CAN0 Error Interrupt
    CAN0_Tx_Warning_IRQn            = 32,       // CAN0 Tx Warning Interrupt
    CAN0_Rx_Warning_IRQn            = 33,       // CAN0 Rx Warning Interrupt
    CAN0_Wake_Up_IRQn               = 34,       // CAN0 Wake Up Interrupt
    Reserved51_IRQn                 = 35,       // 保留 interrupt 51
    Reserved52_IRQn                 = 36,       // 保留 interrupt 52
    CAN1_ORed_MB_IRQn               = 37,       // CAN1 OR'd Message Buffers Interrupt
    CAN1_Bus_Off_IRQn               = 38,       // CAN1 Bus Off Interrupt
    CAN1_Error_IRQn                 = 39,       // CAN1 Error Interrupt
    CAN1_Tx_Warning_IRQn            = 40,       // CAN1 Tx Warning Interrupt
    CAN1_Rx_Warning_IRQn            = 41,       // CAN1 Rx Warning Interrupt
    CAN1_Wake_Up_IRQn               = 42,       // CAN1 Wake Up Interrupt
    Reserved59_IRQn                 = 43,       // 保留 interrupt 59
    Reserved60_IRQn                 = 44,       // 保留 interrupt 60
    UART0_RX_TX_IRQn                = 45,       // UART0 Receive/Transmit interrupt
    UART0_ERR_IRQn                  = 46,       // UART0 Error interrupt
    UART1_RX_TX_IRQn                = 47,       // UART1 Receive/Transmit interrupt
    UART1_ERR_IRQn                  = 48,       // UART1 Error interrupt
    UART2_RX_TX_IRQn                = 49,       // UART2 Receive/Transmit interrupt
    UART2_ERR_IRQn                  = 50,       // UART2 Error interrupt
    UART3_RX_TX_IRQn                = 51,       // UART3 Receive/Transmit interrupt
    UART3_ERR_IRQn                  = 52,       // UART3 Error interrupt
    UART4_RX_TX_IRQn                = 53,       // UART4 Receive/Transmit interrupt
    UART4_ERR_IRQn                  = 54,       // UART4 Error interrupt
    UART5_RX_TX_IRQn                = 55,       // UART5 Receive/Transmit interrupt
    UART5_ERR_IRQn                  = 56,       // UART5 Error interrupt
    ADC0_IRQn                       = 57,       // ADC0 interrupt
    ADC1_IRQn                       = 58,       // ADC1 interrupt
    CMP0_IRQn                       = 59,       // CMP0 interrupt
    CMP1_IRQn                       = 60,       // CMP1 interrupt
    CMP2_IRQn                       = 61,       // CMP2 interrupt
    FTM0_IRQn                       = 62,       // FTM0 fault, overflow and channels interrupt
    FTM1_IRQn                       = 63,       // FTM1 fault, overflow and channels interrupt
    FTM2_IRQn                       = 64,       // FTM2 fault, overflow and channels interrupt
    CMT_IRQn                        = 65,       // CMT interrupt
    RTC_IRQn                        = 66,       // RTC interrupt
    Reserved83_IRQn                 = 67,       // 保留 interrupt 83
    PIT0_IRQn                       = 68,       // PIT timer channel 0 interrupt
    PIT1_IRQn                       = 69,       // PIT timer channel 1 interrupt
    PIT2_IRQn                       = 70,       // PIT timer channel 2 interrupt
    PIT3_IRQn                       = 71,       // PIT timer channel 3 interrupt
    PDB0_IRQn                       = 72,       // PDB0 Interrupt
    USB0_IRQn                       = 73,       // USB0 interrupt
    USBDCD_IRQn                     = 74,       // USBDCD Interrupt
    ENET_1588_Timer_IRQn            = 75,       // Ethernet MAC IEEE 1588 Timer Interrupt
    ENET_Transmit_IRQn              = 76,       // Ethernet MAC Transmit Interrupt
    ENET_Receive_IRQn               = 77,       // Ethernet MAC Receive Interrupt
    ENET_Error_IRQn                 = 78,       // Ethernet MAC Error and miscelaneous Interrupt
    I2S0_IRQn                       = 79,       // I2S0 Interrupt
    SDHC_IRQn                       = 80,       // SDHC Interrupt
    DAC0_IRQn                       = 81,       // DAC0 interrupt
    DAC1_IRQn                       = 82,       // DAC1 interrupt
    TSI0_IRQn                       = 83,       // TSI0 Interrupt
    MCG_IRQn                        = 84,       // MCG Interrupt
    LPTMR_IRQn                      = 85,       // LPTimer interrupt
    Reserved102_IRQn                = 86,       // 保留 interrupt 102
    PORTA_IRQn                      = 87,       // Port A interrupt
    PORTB_IRQn                      = 88,       // Port B interrupt
    PORTC_IRQn                      = 89,       // Port C interrupt
    PORTD_IRQn                      = 90,       // Port D interrupt
    PORTE_IRQn                      = 91,       // Port E interrupt
    Reserved108_IRQn                = 92,       // 保留 interrupt 108
    Reserved109_IRQn                = 93,       // 保留 interrupt 109
    Reserved110_IRQn                = 94,       // 保留 interrupt 110
    Reserved111_IRQn                = 95,       // 保留 interrupt 111
    Reserved112_IRQn                = 96,       // 保留 interrupt 112
    Reserved113_IRQn                = 97,       // 保留 interrupt 113
    Reserved114_IRQn                = 98,       // 保留 interrupt 114
    Reserved115_IRQn                = 99,       // 保留 interrupt 115
    Reserved116_IRQn                = 100,      // 保留 interrupt 116
    Reserved117_IRQn                = 101,      // 保留 interrupt 117
    Reserved118_IRQn                = 102,      // 保留 interrupt 118
    Reserved119_IRQn                = 103,      // 保留 interrupt 119
} IRQn_t, IRQn_Type;
//中断号声明结束

/*
 * 中断向量表编号声明
 */
typedef enum
{
    /******  Cortex-M4 Processor Exceptions Numbers ****************************************************************/
    NonMaskableInt_VECTORn          = 2 ,       /*!< 2 Non Maskable Interrupt                                                                                    */
    HardFault_VECTORn               = 3 ,       /*!< 3 Hard Fault                                                                                */
    MemoryManagement_VECTORn        = 4 ,       /*!< 4 Cortex-M4 Memory Management Interrupt                                                     */
    BusFault_VECTORn                = 5 ,       /*!< 5 Cortex-M4 Bus Fault Interrupt                                                                     */
    UsageFault_VECTORn              = 6 ,       /*!< 6 Cortex-M4 Usage Fault Interrupt
    */
    SVCall_VECTORn                  = 11,       /*!< 11 Cortex-M4 SV Call Interrupt                                                                      */
    DebugMonitor_VECTORn            = 12,       /*!< 12 Cortex-M4 Debug Monitor Interrupt
    */
    PendSV_VECTORn                  = 14,       /*!< 14 Cortex-M4 Pend SV Interrupt                                                                      */
    SysTick_VECTORn                 = 15,       /*!< 15 Cortex-M4 System Tick Interrupt                                                              */
    /******  Kinetis 60 specific Interrupt Numbers **********************************************************************/
    DMA0_VECTORn                        ,       // DMA Channel 0 Transfer Complete
    DMA1_VECTORn                        ,       // DMA Channel 1 Transfer Complete
    DMA2_VECTORn                        ,       // DMA Channel 2 Transfer Complete
    DMA3_VECTORn                        ,       // DMA Channel 3 Transfer Complete
    DMA4_VECTORn                        ,       // DMA Channel 4 Transfer Complete
    DMA5_VECTORn                        ,       // DMA Channel 5 Transfer Complete
    DMA6_VECTORn                        ,       // DMA Channel 6 Transfer Complete
    DMA7_VECTORn                        ,       // DMA Channel 7 Transfer Complete
    DMA8_VECTORn                        ,       // DMA Channel 8 Transfer Complete
    DMA9_VECTORn                        ,       // DMA Channel 9 Transfer Complete
    DMA10_VECTORn                       ,       // DMA Channel 10 Transfer Complete
    DMA11_VECTORn                       ,       // DMA Channel 11 Transfer Complete
    DMA12_VECTORn                       ,       // DMA Channel 12 Transfer Complete
    DMA13_VECTORn                       ,       // DMA Channel 13 Transfer Complete
    DMA14_VECTORn                       ,       // DMA Channel 14 Transfer Complete
    DMA15_VECTORn                       ,       // DMA Channel 15 Transfer Complete
    DMA_Error_VECTORn                   ,       // DMA Error Interrupt
    MCM_VECTORn                         ,       // Normal Interrupt
    FTFL_VECTORn                        ,       // FTFL Interrupt
    Read_Collision_VECTORn              ,       // Read Collision Interrupt
    LVD_LVW_VECTORn                     ,       // Low Voltage Detect, Low Voltage Warning
    LLW_VECTORn                         ,       // Low Leakage Wakeup
    Watchdog_VECTORn                    ,       // WDOG Interrupt
    RNG_VECTORn                         ,       // RNGB Interrupt
    I2C0_VECTORn                        ,       // I2C0 interrupt
    I2C1_VECTORn                        ,       // I2C1 interrupt
    SPI0_VECTORn                        ,       // SPI0 Interrupt
    SPI1_VECTORn                        ,       // SPI1 Interrupt
    SPI2_VECTORn                        ,       // SPI2 Interrupt
    CAN0_ORed_MB_VECTORn                ,       // CAN0 OR'd Message Buffers Interrupt
    CAN0_Bus_Off_VECTORn                ,       // CAN0 Bus Off Interrupt
    CAN0_Error_VECTORn                  ,       // CAN0 Error Interrupt
    CAN0_Tx_Warning_VECTORn             ,       // CAN0 Tx Warning Interrupt
    CAN0_Rx_Warning_VECTORn             ,       // CAN0 Rx Warning Interrupt
    CAN0_Wake_Up_VECTORn                ,       // CAN0 Wake Up Interrupt
    Reserved51_VECTORn                  ,       // 保留 interrupt 51
    Reserved52_VECTORn                  ,       // 保留 interrupt 52
    CAN1_ORed_MB_VECTORn                ,       // CAN1 OR'd Message Buffers Interrupt
    CAN1_Bus_Off_VECTORn                ,       // CAN1 Bus Off Interrupt
    CAN1_Error_VECTORn                  ,       // CAN1 Error Interrupt
    CAN1_Tx_Warning_VECTORn             ,       // CAN1 Tx Warning Interrupt
    CAN1_Rx_Warning_VECTORn             ,       // CAN1 Rx Warning Interrupt
    CAN1_Wake_Up_VECTORn                ,       // CAN1 Wake Up Interrupt
    Reserved59_VECTORn                  ,       // 保留 interrupt 59
    Reserved60_VECTORn                  ,       // 保留 interrupt 60
    UART0_RX_TX_VECTORn                 ,       // UART0 Receive/Transmit interrupt
    UART0_ERR_VECTORn                   ,       // UART0 Error interrupt
    UART1_RX_TX_VECTORn                 ,       // UART1 Receive/Transmit interrupt
    UART1_ERR_VECTORn                   ,       // UART1 Error interrupt
    UART2_RX_TX_VECTORn                 ,       // UART2 Receive/Transmit interrupt
    UART2_ERR_VECTORn                   ,       // UART2 Error interrupt
    UART3_RX_TX_VECTORn                 ,       // UART3 Receive/Transmit interrupt
    UART3_ERR_VECTORn                   ,       // UART3 Error interrupt
    UART4_RX_TX_VECTORn                 ,       // UART4 Receive/Transmit interrupt
    UART4_ERR_VECTORn                   ,       // UART4 Error interrupt
    UART5_RX_TX_VECTORn                 ,       // UART5 Receive/Transmit interrupt
    UART5_ERR_VECTORn                   ,       // UART5 Error interrupt
    ADC0_VECTORn                        ,       // ADC0 interrupt
    ADC1_VECTORn                        ,       // ADC1 interrupt
    CMP0_VECTORn                        ,       // CMP0 interrupt
    CMP1_VECTORn                        ,       // CMP1 interrupt
    CMP2_VECTORn                        ,       // CMP2 interrupt
    FTM0_VECTORn                        ,       // FTM0 fault, overflow and channels interrupt
    FTM1_VECTORn                        ,       // FTM1 fault, overflow and channels interrupt
    FTM2_VECTORn                        ,       // FTM2 fault, overflow and channels interrupt
    CMT_VECTORn                         ,       // CMT interrupt
    RTC_VECTORn                         ,       // RTC interrupt
    Reserved83_VECTORn                  ,       // 保留 interrupt 83
    PIT0_VECTORn                        ,       // PIT timer channel 0 interrupt
    PIT1_VECTORn                        ,       // PIT timer channel 1 interrupt
    PIT2_VECTORn                        ,       // PIT timer channel 2 interrupt
    PIT3_VECTORn                        ,       // PIT timer channel 3 interrupt
    PDB0_VECTORn                        ,       // PDB0 Interrupt
    USB0_VECTORn                        ,       // USB0 interrupt
    USBDCD_VECTORn                      ,       // USBDCD Interrupt
    ENET_1588_Timer_VECTORn             ,       // Ethernet MAC IEEE 1588 Timer Interrupt
    ENET_Transmit_VECTORn               ,       // Ethernet MAC Transmit Interrupt
    ENET_Receive_VECTORn                ,       // Ethernet MAC Receive Interrupt
    ENET_Error_VECTORn                  ,       // Ethernet MAC Error and miscelaneous Interrupt
    I2S0_VECTORn                        ,       // I2S0 Interrupt
    SDHC_VECTORn                        ,       // SDHC Interrupt
    DAC0_VECTORn                        ,       // DAC0 interrupt
    DAC1_VECTORn                        ,       // DAC1 interrupt
    TSI0_VECTORn                        ,       // TSI0 Interrupt
    MCG_VECTORn                         ,       // MCG Interrupt
    LPTMR_VECTORn                       ,       // LPTimer interrupt
    Reserved102_VECTORn                 ,       // 保留 interrupt 102
    PORTA_VECTORn                       ,       // Port A interrupt
    PORTB_VECTORn                       ,       // Port B interrupt
    PORTC_VECTORn                       ,       // Port C interrupt
    PORTD_VECTORn                       ,       // Port D interrupt
    PORTE_VECTORn                       ,       // Port E interrupt
    Reserved108_VECTORn                 ,       // 保留 interrupt 108
    Reserved109_VECTORn                 ,       // 保留 interrupt 109
    Reserved110_VECTORn                 ,       // 保留 interrupt 110
    Reserved111_VECTORn                 ,       // 保留 interrupt 111
    Reserved112_VECTORn                 ,       // 保留 interrupt 112
    Reserved113_VECTORn                 ,       // 保留 interrupt 113
    Reserved114_VECTORn                 ,       // 保留 interrupt 114
    Reserved115_VECTORn                 ,       // 保留 interrupt 115
    Reserved116_VECTORn                 ,       // 保留 interrupt 116
    Reserved117_VECTORn                 ,       // 保留 interrupt 117
    Reserved118_VECTORn                 ,       // 保留 interrupt 118
    Reserved119_VECTORn                 ,       // 保留 interrupt 119
} VECTORn_t;
//中断向量表编号结束

//定义时钟相关变量
typedef enum
{
    PLLUSR      ,  //自定义设置分频系数模式，直接加载 全局变量 mcg_div 的值
    PLL50       ,
    PLL100      ,
    PLL110      ,
    PLL120      ,
    PLL130      ,
    PLL140      ,
    PLL150      ,
    PLL160      ,
    PLL170      ,
    PLL180      ,
    PLL190      ,
    PLL200      ,
    PLL210      ,
    PLL220      ,
    PLL225      ,
    PLL230      ,
    PLL235      ,
    PLL244      ,
    PLL250      ,
    PLL275      ,             //K60FX512LQV15 ,实测最大 275M
    PLL300      ,

    //由于我们函数的时钟是已MHz为单位，不支持小数。
    //所以需要其他频率的朋友，请用自定义分频系数的方法，并自行修改代码

    PLL_MAX,
} PLL_e;

typedef struct
{
    uint16  clk;         //
    uint8   prdiv;       //外部晶振分频因子选项
    uint8   vdiv;        //外部晶振倍频因子选项
} mcg_cfg_t;

//时钟分频因子
typedef struct
{
    uint8 core_div;    //内核时钟分频因子
    uint8 bus_div;     //总线时钟分频因子
    uint8 flex_div;    //flex时钟分频因子
    uint8 flash_div;   //flash时钟分频因子
} mcg_div_t;

//时钟相关变量定义完毕

//定义引脚初始化相关函数
/*! 枚举管脚编号 */
//typedef enum
//{
    /*  PTA端口    */ //0~31
//    PTA0,  PTA1,  PTA2,  PTA3,  PTA4,  PTA5,  PTA6,  PTA7,  PTA8,  PTA9,  PTA10, PTA11, PTA12, PTA13, PTA14, PTA15,
//    PTA16, PTA17, PTA18, PTA19, PTA20, PTA21, PTA22, PTA23, PTA24, PTA25, PTA26, PTA27, PTA28, PTA29, PTA30, PTA31,

    /*  PTB端口    */ //32~63
//    PTB0,  PTB1,  PTB2,  PTB3,  PTB4,  PTB5,  PTB6,  PTB7,  PTB8,  PTB9,  PTB10, PTB11, PTB12, PTB13, PTB14, PTB15,
//    PTB16, PTB17, PTB18, PTB19, PTB20, PTB21, PTB22, PTB23, PTB24, PTB25, PTB26, PTB27, PTB28, PTB29, PTB30, PTB31,

    /*  PTC端口    */
//    PTC0,  PTC1,  PTC2,  PTC3,  PTC4,  PTC5,  PTC6,  PTC7,  PTC8,  PTC9,  PTC10, PTC11, PTC12, PTC13, PTC14, PTC15,
//    PTC16, PTC17, PTC18, PTC19, PTC20, PTC21, PTC22, PTC23, PTC24, PTC25, PTC26, PTC27, PTC28, PTC29, PTC30, PTC31,

    /*  PTD端口    */
//    PTD0,  PTD1,  PTD2,  PTD3,  PTD4,  PTD5,  PTD6,  PTD7,  PTD8,  PTD9,  PTD10, PTD11, PTD12, PTD13, PTD14, PTD15,
//    PTD16, PTD17, PTD18, PTD19, PTD20, PTD21, PTD22, PTD23, PTD24, PTD25, PTD26, PTD27, PTD28, PTD29, PTD30, PTD31,

    /*  PTE端口    */
//    PTE0,  PTE1,  PTE2,  PTE3,  PTE4,  PTE5,  PTE6,  PTE7,  PTE8,  PTE9,  PTE10, PTE11, PTE12, PTE13, PTE14, PTE15,
//    PTE16, PTE17, PTE18, PTE19, PTE20, PTE21, PTE22, PTE23, PTE24, PTE25, PTE26, PTE27, PTE28, PTE29, PTE30, PTE31,
//} PTXn_e;

/*! 枚举端口模块 */
//typedef enum
//{
//    PTA, PTB, PTC, PTD, PTE,
//    PTX_MAX,
//} PTX_e;

/*! 枚举编号 */
//typedef enum
//{
//    PT0 , PT1 , PT2 , PT3 , PT4 , PT5 , PT6 , PT7 ,
//    PT8 , PT9 , PT10, PT11, PT12, PT13, PT14, PT15,
//    PT16, PT17, PT18, PT19, PT20, PT21, PT22, PT23,
//    PT24, PT25, PT26, PT27, PT28, PT29, PT30, PT31,
//} PTn_e;

//根据以上的定义，可以得出：PTx = PTxn / 32 ; PTn = PTxn & 31
//#define PTX(PTxn)           ((PTxn)>>5)
//#define PTn(PTxn)           ((PTxn)&0x1f)
//#define PORTX_BASE(PTxn)     PORTX[PTX(PTxn)]       //PORT模块的地址
//#define GPIOX_BASE(PTxn)     GPIOX[PTX(PTxn)]       //GPIO模块的地址
//extern  GPIO_MemMapPtr      GPIOX[PTX_MAX];
//#define DELAY_MS(ms)    dwt_delay_ms(ms)

/*! 枚举PORT 配置 */
/*
typedef enum
{
    //中断方式和DMA请求方式，两者只能选其中一种（可以不选）
    //中断方式选择
    IRQ_ZERO     = 0x08 << PORT_PCR_IRQC_SHIFT,   //低电平触发
    IRQ_RISING   = 0x09 << PORT_PCR_IRQC_SHIFT,   //上升沿触发
    IRQ_FALLING  = 0x0A << PORT_PCR_IRQC_SHIFT,   //下降沿触发
    IRQ_EITHER   = 0x0B << PORT_PCR_IRQC_SHIFT,   //跳变沿触发
    IRQ_ONE      = 0x0C << PORT_PCR_IRQC_SHIFT,   //高电平触发

    //DMA请求选择
    DMA_RISING   = 0x01 << PORT_PCR_IRQC_SHIFT,   //上升沿触发
    DMA_FALLING  = 0x02 << PORT_PCR_IRQC_SHIFT,   //下降沿触发
    DMA_EITHER   = 0x03 << PORT_PCR_IRQC_SHIFT,   //跳变沿触发


    HDS          = 0x01 << PORT_PCR_DSE_SHIFT,    //输出高驱动能力
    ODO          = 0x01 << PORT_PCR_ODE_SHIFT,    //漏极输出
    PF           = 0x01 << PORT_PCR_PFE_SHIFT,    //带无源滤波器
    SSR          = 0x01 << PORT_PCR_SRE_SHIFT,    //输出慢变化率          Slow slew rate

    //下拉上拉选择
    PULLDOWN     = 0x02 << PORT_PCR_PS_SHIFT,     //下拉
    PULLUP       = 0x03 << PORT_PCR_PS_SHIFT,     //上拉

    //功能复用选择(如果不需要改变功能复用选择，保留原先的功能复用，直接选择ALT0 )
    //需要查 K60 Signal Multiplexing and Pin Assignments
    ALT0         = 0x00 << PORT_PCR_MUX_SHIFT,
    ALT1         = 0x01 << PORT_PCR_MUX_SHIFT,    //GPIO
    ALT2         = 0x02 << PORT_PCR_MUX_SHIFT,
    ALT3         = 0x03 << PORT_PCR_MUX_SHIFT,
    ALT4         = 0x04 << PORT_PCR_MUX_SHIFT,
    ALT5         = 0x05 << PORT_PCR_MUX_SHIFT,
    ALT6         = 0x06 << PORT_PCR_MUX_SHIFT,
    ALT7         = 0x07 << PORT_PCR_MUX_SHIFT,
} port_cfg;
*/
/*
 * 定义管脚方向
 */
//typedef enum GPIO_CFG
//{
    //这里的值不能改！！！
//    GPI         = 0,                                //定义管脚输入方向      GPIOx_PDDRn里，0表示输入，1表示输出
//    GPO         = 1,                                //定义管脚输出方向
//} GPIO_CFG;

//extern PORT_MemMapPtr PORTX[PTX_MAX];

/*****************************以下代码用于PIT中断*************************************/
//定义PIT模块号
typedef enum
{
    PIT0,
    PIT1,
    PIT2,
    PIT3,

    PIT_MAX,
} PITn;
void pit_init(PITn pitn, uint32 cnt);                                           //初始化PITn，并设置定时时间(单位为bus时钟周期)
#define     pit_init_ms(PITn,ms)          pit_init(PITn,ms * bus_clk_khz);         //初始化PITn，并设置定时时间(单位为 ms)
#define     pit_init_us(PITn,us)          pit_init(PITn,us * bus_clk_khz/1000);    //初始化PITn，并设置定时时间(单位为 us)
#define     pit_init_ns(PITn,ns)          pit_init(PITn,ns * bus_clk_khz/1000000); //初始化PITn，并设置定时时间(单位为 ns)



#define     PIT_Flag_Clear(PITn)          PIT_TFLG(PITn)|=PIT_TFLG_TIF_MASK        //清中断标志（写1 清空标志位）
//PIT相关设置完毕

uint8 pll_init(PLL_e pll);
__ramfunc void set_sys_dividers(uint32 outdiv1, uint32 outdiv2, uint32 outdiv3, uint32 outdiv4);
void start(void);
void default_isr(void);
void set_vector_handler(VECTORn_t , void pfunc_handler(void));      //设置中断函数到中断向量表里
#endif