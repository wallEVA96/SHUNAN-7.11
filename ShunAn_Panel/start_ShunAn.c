/*
*文件名：              start_ShunAn.c
*说明：                顺暗2号C语言启动文件
*所用芯片型号：        MK60FX512VQL15
*创建时间：            2014/5/18
*作者：                中南大学弓箭
*/

#include "start_ShunAn.h"
//声明相关数据段
#pragma section = ".data"       
#pragma section = ".data_init"
#pragma section = ".bss"
#pragma section = "CodeRelocate"
#pragma section = "CodeRelocateRam"

//定义中断向量表入口
#pragma location = ".intvec"
const vector_entry  __vector_table[] =          //@ ".intvec" =
{
    VECTOR_000,           /* 此值复位启动时复制到 SP ，即指定栈地址          */
    VECTOR_001,           /* 此值复位启动时复制到 PC ，即启动马上执行的函数  */
    VECTOR_002,
    VECTOR_003,
    VECTOR_004,
    VECTOR_005,
    VECTOR_006,
    VECTOR_007,
    VECTOR_008,
    VECTOR_009,
    VECTOR_010,
    VECTOR_011,
    VECTOR_012,
    VECTOR_013,
    VECTOR_014,
    VECTOR_015,
    VECTOR_016,
    VECTOR_017,
    VECTOR_018,
    VECTOR_019,
    VECTOR_020,
    VECTOR_021,
    VECTOR_022,
    VECTOR_023,
    VECTOR_024,
    VECTOR_025,
    VECTOR_026,
    VECTOR_027,
    VECTOR_028,
    VECTOR_029,
    VECTOR_030,
    VECTOR_031,
    VECTOR_032,
    VECTOR_033,
    VECTOR_034,
    VECTOR_035,
    VECTOR_036,
    VECTOR_037,
    VECTOR_038,
    VECTOR_039,
    VECTOR_040,
    VECTOR_041,
    VECTOR_042,
    VECTOR_043,
    VECTOR_044,
    VECTOR_045,
    VECTOR_046,
    VECTOR_047,
    VECTOR_048,
    VECTOR_049,
    VECTOR_050,
    VECTOR_051,
    VECTOR_052,
    VECTOR_053,
    VECTOR_054,
    VECTOR_055,
    VECTOR_056,
    VECTOR_057,
    VECTOR_058,
    VECTOR_059,
    VECTOR_060,
    VECTOR_061,
    VECTOR_062,
    VECTOR_063,
    VECTOR_064,
    VECTOR_065,
    VECTOR_066,
    VECTOR_067,
    VECTOR_068,
    VECTOR_069,
    VECTOR_070,
    VECTOR_071,
    VECTOR_072,
    VECTOR_073,
    VECTOR_074,
    VECTOR_075,
    VECTOR_076,
    VECTOR_077,
    VECTOR_078,
    VECTOR_079,
    VECTOR_080,
    VECTOR_081,
    VECTOR_082,
    VECTOR_083,
    VECTOR_084,
    VECTOR_085,
    VECTOR_086,
    VECTOR_087,
    VECTOR_088,
    VECTOR_089,
    VECTOR_090,
    VECTOR_091,
    VECTOR_092,
    VECTOR_093,
    VECTOR_094,
    VECTOR_095,
    VECTOR_096,
    VECTOR_097,
    VECTOR_098,
    VECTOR_099,
    VECTOR_100,
    VECTOR_101,
    VECTOR_102,
    VECTOR_103,
    VECTOR_104,
    VECTOR_105,
    VECTOR_106,
    VECTOR_107,
    VECTOR_108,
    VECTOR_109,
    VECTOR_110,
    VECTOR_111,
    VECTOR_112,
    VECTOR_113,
    VECTOR_114,
    VECTOR_115,
    VECTOR_116,
    VECTOR_117,
    VECTOR_118,
    VECTOR_119,
    VECTOR_120,
    VECTOR_121,
    VECTOR_122,
    VECTOR_123,
    VECTOR_124,
    VECTOR_125,
    VECTOR_126,
    VECTOR_127,
    VECTOR_128,
    VECTOR_129,
    VECTOR_130,
    VECTOR_131,
    VECTOR_132,
    VECTOR_133,
    VECTOR_134,
    VECTOR_135,
    VECTOR_136,
    VECTOR_137,
    VECTOR_138,
    VECTOR_139,
    VECTOR_140,
    VECTOR_141,
    VECTOR_142,
    VECTOR_143,
    VECTOR_144,
    VECTOR_145,
    VECTOR_146,
    VECTOR_147,
    VECTOR_148,
    VECTOR_149,
    VECTOR_150,
    VECTOR_151,
    VECTOR_152,
    VECTOR_153,
    VECTOR_154,
    VECTOR_155,
    VECTOR_156,
    VECTOR_157,
    VECTOR_158,
    VECTOR_159,
    VECTOR_160,
    VECTOR_161,
    VECTOR_162,
    VECTOR_163,
    VECTOR_164,
    VECTOR_165,
    VECTOR_166,
    VECTOR_167,
    VECTOR_168,
    VECTOR_169,
    VECTOR_170,
    VECTOR_171,
    VECTOR_172,
    VECTOR_173,
    VECTOR_174,
    VECTOR_175,
    VECTOR_176,
    VECTOR_177,
    VECTOR_178,
    VECTOR_179,
    VECTOR_180,
    VECTOR_181,
    VECTOR_182,
    VECTOR_183,
    VECTOR_184,
    VECTOR_185,
    VECTOR_186,
    VECTOR_187,
    VECTOR_188,
    VECTOR_189,
    VECTOR_190,
    VECTOR_191,
    VECTOR_192,
    VECTOR_193,
    VECTOR_194,
    VECTOR_195,
    VECTOR_196,
    VECTOR_197,
    VECTOR_198,
    VECTOR_199,
    VECTOR_200,
    VECTOR_201,
    VECTOR_202,
    VECTOR_203,
    VECTOR_204,
    VECTOR_205,
    VECTOR_206,
    VECTOR_207,
    VECTOR_208,
    VECTOR_209,
    VECTOR_210,
    VECTOR_211,
    VECTOR_212,
    VECTOR_213,
    VECTOR_214,
    VECTOR_215,
    VECTOR_216,
    VECTOR_217,
    VECTOR_218,
    VECTOR_219,
    VECTOR_220,
    VECTOR_221,
    VECTOR_222,
    VECTOR_223,
    VECTOR_224,
    VECTOR_225,
    VECTOR_226,
    VECTOR_227,
    VECTOR_228,
    VECTOR_229,
    VECTOR_230,
    VECTOR_231,
    VECTOR_232,
    VECTOR_233,
    VECTOR_234,
    VECTOR_235,
    VECTOR_236,
    VECTOR_237,
    VECTOR_238,
    VECTOR_239,
    VECTOR_240,
    VECTOR_241,
    VECTOR_242,
    VECTOR_243,
    VECTOR_244,
    VECTOR_245,
    VECTOR_246,
    VECTOR_247,
    VECTOR_248,
    VECTOR_249,
    VECTOR_250,
    VECTOR_251,
    VECTOR_252,
    VECTOR_253,
    VECTOR_254,
    VECTOR_255,
    CONFIG_1,        /* Flash configuration field values */
    CONFIG_2,        /* Flash configuration field values */
    CONFIG_3,        /* Flash configuration field values */
    CONFIG_4,        /* Flash configuration field values */

};
int core_clk_khz;
int core_clk_mhz;
int bus_clk_khz;
mcg_cfg_t mcg_cfg[PLL_MAX] =
{
    {EXTAL_IN_MHz*(VDIV + 16) / (PRDIV + 1) /2, PRDIV, VDIV}, //PLLUSR
    {50,    7 ,     1       },                          //PLL50
    {100,   7,      16      },                          //PLL100
    {110,   4 ,     6       },                          //PLL110
    {120,   4 ,     8       },                          //PLL120
    {130,   4 ,     10      },                          //PLL130
    {140,   4 ,     12      },                          //PLL140
    {150,   4 ,     14      },                          //PLL150
    {160,   4 ,     16      },                          //PLL160
    {170,   4 ,     18      },                          //PLL170
    {180,   4 ,     20      },                          //PLL180
    {190,   4 ,     22      },                          //PLL190
    {200,   4 ,     24      },                          //PLL200
    {210,   4 ,     26      },                          //PLL210
    {220,   4 ,     28      },                          //PLL220
    {225,   4 ,     29      },                          //PLL225
    {230,   4 ,     30      },                          //PLL230
    {235,   4 ,     31      },                          //PLL235
    {244,   3 ,     23      },                          //PLL244
    {250,   3 ,     24      },                          //PLL250
    {275,   1 ,     6       },                          //PLL275
    {300,   2 ,     20      },                          //PLL300
};
/*!
 *  @brief      芯片上电后运行的第一个C语言函数，紧跟在汇编启动文件之后
 *  @创建时间： 2014/5/18
 *  @作者       中南大学弓箭
 *  @note       此函数是系统启动初期由汇编函数调用，然后执行main函数
 */
void start(void)
{ 
    /* 首先要解锁看门狗，然后才能向寄存器写入 */
    /* 注意: 解锁看门狗的几步禁止单步执行!!! */
    /* 解锁的几步必须在20个时钟周期内执行完毕, 因此禁止
     * 中断可以保持代码的原始性，确保时序的正确.
     */
    DisableInterrupts;
    /* 向解锁寄存器写入 0xC520  */
    WDOG_UNLOCK = 0xC520;
    /* 再写入 0xD928 来完成解锁 */
    WDOG_UNLOCK = 0xD928;
    /* 解锁已经完成，重新使能中断 */	
    EnableInterrupts;
    /* 清除 WDOGEN 位来禁止看门狗 */
    WDOG_STCTRLH &= ~WDOG_STCTRLH_WDOGEN_MASK;
    
    /* 将中断向量表和全局变量放置在RAM里 */ 
    /* 定义一个用于循环用的变量 */
    uint32 n;

    /* 定义给不同数据段使用的指针. 这些指针
     * 被linker文件中的值初始化
     */
    uint8 *data_ram, * data_rom, * data_rom_end;
    uint8 *bss_start, * bss_end;


    /*  VECTOR_TABLE 和 VECTOR_RAM 的地址从  linker 文件里获得 （*.icf） */
    extern uint32 __VECTOR_TABLE[];
    extern uint32 __VECTOR_RAM[];

    /* 复制ROM里的中断向量表到RAM里 */
    if (__VECTOR_RAM != __VECTOR_TABLE)             //如果不是RAM启动，则需要复制中断向量表
    {
        for (n = 0; n < 0x410; n++)                 //逐个复制
            __VECTOR_RAM[n] = __VECTOR_TABLE[n];
    }
    /* 指定新的中断向量表地址为 __VECTOR_RAM */
    write_vtor((uint32)__VECTOR_RAM);

    /* 把已赋初值的变量从ROM里复制数据到RAM里 */
    data_ram = __section_begin(".data");            //已赋初值的变量的地址在RAM里
    data_rom = __section_begin(".data_init");       //已赋初值的变量的数据存放在ROM里，需要赋值到RAM里
    data_rom_end = __section_end(".data_init");
    n = data_rom_end - data_rom;

    /* 复制初始化数据到RAM里 */
    while (n--)
        *data_ram++ = *data_rom++;

    /* 没赋初值或者初值为0的变量，需要清除其RAM里的数据，确保值为0 */
    bss_start = __section_begin(".bss");
    bss_end = __section_end(".bss");

    /* 清除没赋初值或者初值为0的变量数据值 */
    n = bss_end - bss_start;
    while(n--)
        *bss_start++ = 0;

    /* 赋值用 __ramfunc 声明的函数的的代码段到 RAM，可以加快代码的运行        */
    uint8 *code_relocate_ram = __section_begin("CodeRelocateRam");
    uint8 *code_relocate = __section_begin("CodeRelocate");
    uint8 *code_relocate_end = __section_end("CodeRelocate");

    /* 从ROM里复制函数代码到RAM里 */
    n = code_relocate_end - code_relocate;
    while (n--)
        *code_relocate_ram++ = *code_relocate++;  
  /* 将中断向量表和全局变量放置在RAM里 完成 */

    
    
    //开始设置时钟
    core_clk_mhz = pll_init(CORE_CLK);     //设置系统时钟
    core_clk_khz = core_clk_mhz * 1000;     //把配置好的时钟都保存在全局变量里，以便后续使用
    bus_clk_khz = core_clk_khz / (((SIM_CLKDIV1 & SIM_CLKDIV1_OUTDIV2_MASK) >> 24) + 1);
    //时钟设置完毕
    main();             // 执行用户主函数

    while(1);           // 死循环
}

/******************************************************************************
* default_isr(void)
*
* Default ISR definition.
*
* In:  n/a
* Out: n/a
******************************************************************************/
void default_isr(void)
{
   #define VECTORNUM                     (*(volatile uint8_t*)(0xE000ED04))
   return;
}

/*!
 *  @brief      时钟分频设置函数
 *  @param      outdiv1    内核分频系数，       core    clk = MCG / (outdiv1 +1)
 *  @param      outdiv2    bus分频系数，        bus     clk = MCG / (outdiv2 +1)
 *  @param      outdiv3    flexbus分频系数，    flexbus clk = MCG / (outdiv3 +1)
 *  @param      outdiv4    flash分频系数，      flash   clk = MCG / (outdiv4 +1)
 *  @since      v1.0
 *  @author     飞思卡尔公司
 *  Sample usage:       set_sys_dividers(0,1, 9,3);     // core clk = MCG ; bus clk = MCG / 2 ; flexbus clk = MCG /10 ; flash clk = MCG / 4;
 */
__ramfunc  void set_sys_dividers(uint32 outdiv1, uint32 outdiv2, uint32 outdiv3, uint32 outdiv4)
{
    /*
    * This routine must be placed in RAM. It is a workaround for errata e2448.
    * Flash prefetch must be disabled when the flash clock divider is changed.
    * This cannot be performed while executing out of flash.
    * There must be a short delay after the clock dividers are changed before prefetch
    * can be re-enabled.
    */
    uint32 temp_reg;
    uint8 i;

    temp_reg = FMC_PFAPR; // store present value of FMC_PFAPR

    // set M0PFD through M7PFD to 1 to disable prefetch
    FMC_PFAPR |= FMC_PFAPR_M7PFD_MASK | FMC_PFAPR_M6PFD_MASK | FMC_PFAPR_M5PFD_MASK
                 | FMC_PFAPR_M4PFD_MASK | FMC_PFAPR_M3PFD_MASK | FMC_PFAPR_M2PFD_MASK
                 | FMC_PFAPR_M1PFD_MASK | FMC_PFAPR_M0PFD_MASK;

    // set clock dividers to desired value
    SIM_CLKDIV1 = SIM_CLKDIV1_OUTDIV1(outdiv1) | SIM_CLKDIV1_OUTDIV2(outdiv2)
                  | SIM_CLKDIV1_OUTDIV3(outdiv3) | SIM_CLKDIV1_OUTDIV4(outdiv4);

    // wait for dividers to change
    for (i = 0 ; i < outdiv4 ; i++)
        {}

    FMC_PFAPR = temp_reg; // re-store original value of FMC_PFAPR

    return;
} // set_sys_dividers

mcg_div_t mcg_div = {CORE_DIV, BUS_DIV, FLEX_DIV, FLASH_DIV};


/*!
 *  @brief      MCG 分频配置
 *  @param      PLL_e       频率设置参数
 *  @since      v5.0
 */
void mcg_div_count(PLL_e pll)
{
    uint16 clk = mcg_cfg[pll].clk;
    if( (pll > PLLUSR) && (pll < PLL_MAX) )
    {
        //设置分频
        mcg_div.core_div    = 0;                                        // core = MCG

        if     (clk <= 1 * MAX_BUS_CLK)   mcg_div.bus_div = 0;          // bus  = MCG
        else if(clk <= 2 * MAX_BUS_CLK)   mcg_div.bus_div = 1;          // bus  = MCG/2
        else if(clk <= 3 * MAX_BUS_CLK)   mcg_div.bus_div = 2;          // bus  = MCG/3
        else if(clk <= 4 * MAX_BUS_CLK)   mcg_div.bus_div = 3;          // bus  = MCG/4
        else if(clk <= 5 * MAX_BUS_CLK)   mcg_div.bus_div = 4;          // bus  = MCG/5
        else if(clk <= 6 * MAX_BUS_CLK)   mcg_div.bus_div = 5;          // bus  = MCG/6
        else if(clk <= 7 * MAX_BUS_CLK)   mcg_div.bus_div = 6;          // bus  = MCG/7
        else if(clk <= 8 * MAX_BUS_CLK)   mcg_div.bus_div = 7;          // bus  = MCG/8
        else if(clk <= 9 * MAX_BUS_CLK)   mcg_div.bus_div = 8;          // bus  = MCG/9
        else if(clk <= 10 * MAX_BUS_CLK)   mcg_div.bus_div = 9;         // bus  = MCG/10
        else if(clk <= 11 * MAX_BUS_CLK)   mcg_div.bus_div = 10;        // bus  = MCG/11
        else if(clk <= 12 * MAX_BUS_CLK)   mcg_div.bus_div = 11;        // bus  = MCG/12
        else if(clk <= 13 * MAX_BUS_CLK)   mcg_div.bus_div = 12;        // bus  = MCG/13
        else if(clk <= 14 * MAX_BUS_CLK)   mcg_div.bus_div = 13;        // bus  = MCG/14
        else if(clk <= 15 * MAX_BUS_CLK)   mcg_div.bus_div = 14;        // bus  = MCG/15
        else                              mcg_div.bus_div = 15;         // bus  = MCG/16

        if     (clk <= 1 * MAX_FLEXBUS_CLK)   mcg_div.flex_div = 0;     // flex bus  = MCG
        else if(clk <= 2 * MAX_FLEXBUS_CLK)   mcg_div.flex_div = 1;     // flex bus  = MCG/2
        else if(clk <= 3 * MAX_FLEXBUS_CLK)   mcg_div.flex_div = 2;     // flex bus  = MCG/3
        else if(clk <= 4 * MAX_FLEXBUS_CLK)   mcg_div.flex_div = 3;     // flex bus  = MCG/4
        else if(clk <= 5 * MAX_FLEXBUS_CLK)   mcg_div.flex_div = 4;     // flex bus  = MCG/5
        else if(clk <= 6 * MAX_FLEXBUS_CLK)   mcg_div.flex_div = 5;     // flex bus  = MCG/6
        else if(clk <= 7 * MAX_FLEXBUS_CLK)   mcg_div.flex_div = 6;     // flex bus  = MCG/7
        else if(clk <= 8 * MAX_FLEXBUS_CLK)   mcg_div.flex_div = 7;     // flex bus  = MCG/8
        else if(clk <= 9 * MAX_FLEXBUS_CLK)   mcg_div.flex_div = 8;     // flex bus  = MCG/9
        else if(clk <= 10 * MAX_FLEXBUS_CLK)   mcg_div.flex_div = 9;    // flex bus  = MCG/10
        else if(clk <= 11 * MAX_FLEXBUS_CLK)   mcg_div.flex_div = 10;   // flex bus  = MCG/11
        else if(clk <= 12 * MAX_FLEXBUS_CLK)   mcg_div.flex_div = 11;   // flex bus  = MCG/12
        else if(clk <= 13 * MAX_FLEXBUS_CLK)   mcg_div.flex_div = 12;   // flex bus  = MCG/13
        else if(clk <= 14 * MAX_FLEXBUS_CLK)   mcg_div.flex_div = 13;   // flex bus  = MCG/14
        else if(clk <= 15 * MAX_FLEXBUS_CLK)   mcg_div.flex_div = 14;   // flex bus  = MCG/15
        else                                  mcg_div.flex_div = 15;    // flex bus  = MCG/16

        if     (clk <= 1 * MAX_FLASH_CLK)   mcg_div.flash_div = 0;      // flash  = MCG
        else if(clk <= 2 * MAX_FLASH_CLK)   mcg_div.flash_div = 1;      // flash  = MCG/2
        else if(clk <= 3 * MAX_FLASH_CLK)   mcg_div.flash_div = 2;      // flash  = MCG/3
        else if(clk <= 4 * MAX_FLASH_CLK)   mcg_div.flash_div = 3;      // flash  = MCG/4
        else if(clk <= 5 * MAX_FLASH_CLK)   mcg_div.flash_div = 4;      // flash  = MCG/5
        else if(clk <= 6 * MAX_FLASH_CLK)   mcg_div.flash_div = 5;      // flash  = MCG/6
        else if(clk <= 7 * MAX_FLASH_CLK)   mcg_div.flash_div = 6;      // flash  = MCG/7
        else if(clk <= 8 * MAX_FLASH_CLK)   mcg_div.flash_div = 7;      // flash  = MCG/8
        else if(clk <= 9 * MAX_FLASH_CLK)   mcg_div.flash_div = 8;      // flash  = MCG/9
        else if(clk <= 10 * MAX_FLASH_CLK)   mcg_div.flash_div = 9;     // flash  = MCG/10
        else if(clk <= 11 * MAX_FLASH_CLK)   mcg_div.flash_div = 10;    // flash  = MCG/11
        else if(clk <= 12 * MAX_FLASH_CLK)   mcg_div.flash_div = 11;    // flash  = MCG/12
        else if(clk <= 13 * MAX_FLASH_CLK)   mcg_div.flash_div = 12;    // flash  = MCG/13
        else if(clk <= 14 * MAX_FLASH_CLK)   mcg_div.flash_div = 13;    // flash  = MCG/14
        else if(clk <= 15 * MAX_FLASH_CLK)   mcg_div.flash_div = 14;    // flash  = MCG/15
        else                                mcg_div.flash_div = 15;     // flash  = MCG/16
    }
}

/*!
 *  @brief      PLL超频
 *  @param      PLL_e       频率设置参数
 *  @return     超频频率（MHz）
 *  @since      v5.0
 *  @warning    此函数只能在 复位后没进行任何频率设置情况下调用，即MCG在FEI模式下才可调用
 *  Sample usage:       uint8 clk = pll_init(PLL100);        //超频
 */
uint8 pll_init(PLL_e pll)
{

    mcg_div_count( pll);

    //上电复位后，单片机会自动进入 FEI 模式，使用 内部参考时钟

    //FEI -> FBE
    MCG_C2 &= ~MCG_C2_LP_MASK;
    MCG_C2 |= MCG_C2_RANGE(1);

    MCG_C1 = MCG_C1_CLKS(2) | MCG_C1_FRDIV(7);

    while (MCG_S & MCG_S_IREFST_MASK) {};                       //等待FLL参考时钟 为 外部参考时钟（S[IREFST]=0，表示使用外部参考时钟，）

    while (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x2) {}; //等待选择外部参考时钟

    //现在已经进入了 FBE模式

    //FBE -> PBE
    set_sys_dividers(mcg_div.core_div, mcg_div.bus_div, mcg_div.flex_div, mcg_div.flash_div); //设置系统分频因子选项

    MCG_C5 = MCG_C5_PRDIV(mcg_cfg[pll].prdiv);                      //分频， EXTAL_IN_MHz/( PRDIV+1)
    MCG_C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(mcg_cfg[pll].vdiv) ;    //倍频， EXTAL_IN_MHz/( PRDIV+1)  * (VDIV+24)

    while (!(MCG_S & MCG_S_PLLST_MASK)) {};                         //等待时钟源选择PLL

    while (!(MCG_S & MCG_S_LOCK_MASK)) {};                          //等待 PLL锁了（锁相环）

    // 现在已经进入了 PBE 模式

    // PBE -> PEE
    MCG_C1 &= ~MCG_C1_CLKS_MASK;

    while (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x3) {};//等待选择输出PLL

    // 现在已经进入了 PEE 模式

    return mcg_cfg[pll].clk;
} //pll_init

/*!
 *  @brief      PITn定时中断
 *  @param      PITn        模块号（PIT0~PIT3）
 *  @param      cnt         定时中断时间(单位为bus时钟周期)
 *  @since      v5.0
 *  Sample usage:
                    pit_init(PIT0, 1000);                          //定时 1000 个bus时钟 后中断
                    set_vector_handler(PIT0_VECTORn,pit_hander);   // 设置中断复位函数到中断向量表里
                    enable_irq(PIT0_IRQn);                         // 使能LPTMR中断
 */
void pit_init(PITn pitn, uint32 cnt)
{
    //PIT 用的是 Bus Clock 总线频率
    //溢出计数 = 总线频率 * 时间
    SIM_SCGC6       |= SIM_SCGC6_PIT_MASK;          //使能PIT时钟

    PIT_MCR         = (0
                       //| PIT_MCR_MDIS_MASK       //禁用PIT定时器时钟选择（0表示使能PIT，1表示禁止PIT）
                       //| PIT_MCR_FRZ_MASK        //调试模式下停止运行（0表示继续运行，1表示停止运行）
                      );

    PIT_LDVAL(pitn)  = cnt - 1 ;                    //设置溢出中断时间

    PIT_Flag_Clear(pitn);                           //清中断标志位

    PIT_TCTRL(pitn) &= ~ PIT_TCTRL_TEN_MASK;        //禁止PITn定时器（用于清空计数值）
    PIT_TCTRL(pitn)  = ( 0
                         | PIT_TCTRL_TEN_MASK        //使能 PITn定时器
                         | PIT_TCTRL_TIE_MASK        //开PITn中断
                       );

    //enable_irq((int)pitn + PIT0_IRQn);            //开中断
}

/*!
 *  @brief      设置中断向量表里的中断复位函数
 *  @since      v5.0
 *  @warning    只有中断向量表位于icf指定的RAM区域时，此函数才有效
 *  Sample usage:       set_vector_handler(UART3_RX_TX_VECTORn , uart3_handler);    //把 uart3_handler 函数添加到中断向量表
 */
void set_vector_handler(VECTORn_t vector , void pfunc_handler(void))
{
    extern uint32 __VECTOR_RAM[];
    
    __VECTOR_RAM[vector] = (uint32)pfunc_handler;
}

/*

    // DMA测试代码
    EnableInterrupts; // 使能总中断

    SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK;
    PORTC_BASE_PTR->PCR[8] = PORT_PCR_MUX(1);          // DMA在上升沿，GPIO
    
    PORTC_BASE_PTR->PCR[0] = PORT_PCR_MUX(1);          // GPIO
    PORTC_BASE_PTR->PCR[1] = PORT_PCR_MUX(1);          // GPIO
    PORTC_BASE_PTR->PCR[2] = PORT_PCR_MUX(1);          // GPIO
    PORTC_BASE_PTR->PCR[3] = PORT_PCR_MUX(1);          // GPIO
    PORTC_BASE_PTR->PCR[4] = PORT_PCR_MUX(1);          // GPIO
    PORTC_BASE_PTR->PCR[5] = PORT_PCR_MUX(1);          // GPIO
    PORTC_BASE_PTR->PCR[6] = PORT_PCR_MUX(1);          // GPIO
    PORTC_BASE_PTR->PCR[7] = PORT_PCR_MUX(1);          // GPIO
    
    PTC_BASE_PTR->PDDR = 0x0000001FF;
    
    PORTC_BASE_PTR->PCR[9] = PORT_PCR_MUX(1)|PORT_PCR_IRQC(1);          // GPIO 输入
    
    SIM_SCGC7 |= SIM_SCGC7_DMA_MASK; // DMA时钟开启
    SIM_SCGC6 |= SIM_SCGC6_DMAMUX0_MASK; // DMA开启MUX0
    
    DMAMUX0_BASE_PTR ->CHCFG[0] = 0;
    DMAMUX0_BASE_PTR ->CHCFG[0] = DMAMUX_CHCFG_ENBL_MASK | DMAMUX_CHCFG_SOURCE(51); // 选择通道

     DMA_BASE_PTR->CR = DMA_CSR_DREQ_MASK;//ACTIVE 必须为 0才能写入
    //DMA_BASE_PTR->DCHPRI0;
    //DMA_BASE_PTR->EEI;
    
    PTC_BASE_PTR->PDOR = 0x43;
    DMA_BASE_PTR ->TCD[0].SADDR = (uint32)(void*)&PTC_BASE_PTR->PDOR;
    //DMA_BASE_PTR ->TCD[0].SADDR = (uint32)(void*)&time; // 选择像素为输入
    DMA_BASE_PTR ->TCD[0].SOFF  = 0; // 源地址偏移情况
    DMA_BASE_PTR ->TCD[0].DADDR = (uint32)(void*)TargetNum; // 选择输出位置
    DMA_BASE_PTR ->TCD[0].DOFF  = 1; // 偏移 one byte
    //
    DMA_BASE_PTR ->TCD[0].NBYTES_MLNO = 2; // 写数上限
    
    DMA_BASE_PTR ->TCD[0].ATTR  = DMA_ATTR_SSIZE(0) | DMA_ATTR_DSIZE(0); // 传输声明
    
    DMA_BASE_PTR->ERQ |= DMA_ERQ_ERQ0_MASK;
    //DMA_BASE_PTR->INT |= DMA_INT_INT0_MASK;
    //DMA_BASE_PTR->TCD[0].CSR = 1;//软件触发用
    //DMA_BASE_PTR->TCD[0].CSR = 1;
    //DMA_BASE_PTR->TCD[0].CSR = 1;
    
    PTC_BASE_PTR->PDOR &=~ (1<<8);
    PTC_BASE_PTR->PDOR |= (1<<8);
    PTC_BASE_PTR->PDOR &=~ (1<<8);
    PTC_BASE_PTR->PDOR |= (1<<8);
    PTC_BASE_PTR->PDOR &=~ (1<<8);
    PTC_BASE_PTR->PDOR |= (1<<8);
*/
    
//    float i = 100.0;
//    error_occur = SquareRootFloat(i);
//    error_occur_1 = sqrt(i);
    /*
    SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK;
    PORTC_BASE_PTR->PCR[8] = PORT_PCR_MUX(1);          // DMA在上升沿，GPIO
    
    PORTC_BASE_PTR->PCR[0] = PORT_PCR_MUX(1);          // GPIO
    PORTC_BASE_PTR->PCR[1] = PORT_PCR_MUX(1);          // GPIO
    PORTC_BASE_PTR->PCR[2] = PORT_PCR_MUX(1);          // GPIO
    PORTC_BASE_PTR->PCR[3] = PORT_PCR_MUX(1);          // GPIO
    PORTC_BASE_PTR->PCR[4] = PORT_PCR_MUX(1);          // GPIO
    PORTC_BASE_PTR->PCR[5] = PORT_PCR_MUX(1);          // GPIO
    PORTC_BASE_PTR->PCR[6] = PORT_PCR_MUX(1);          // GPIO
    PORTC_BASE_PTR->PCR[7] = PORT_PCR_MUX(1);          // GPIO
    
    PTC_BASE_PTR->PDDR = 0x0000001FF;
    
    PORTC_BASE_PTR->PCR[9] = PORT_PCR_MUX(1)|PORT_PCR_IRQC(1);          // GPIO 输入
    
    SIM_SCGC7 |= SIM_SCGC7_DMA_MASK; // DMA时钟开启
    SIM_SCGC6 |= SIM_SCGC6_DMAMUX0_MASK; // DMA开启MUX0
    
    DMAMUX0_BASE_PTR ->CHCFG[0] = 0;
    DMAMUX0_BASE_PTR ->CHCFG[0] = DMAMUX_CHCFG_ENBL_MASK | DMAMUX_CHCFG_SOURCE(51); // 选择通道

     DMA_BASE_PTR->CR = DMA_CSR_DREQ_MASK;//ACTIVE 必须为 0才能写入
    //DMA_BASE_PTR->DCHPRI0;
    //DMA_BASE_PTR->EEI;
    
    PTC_BASE_PTR->PDOR = 0x43;
    DMA_BASE_PTR ->TCD[0].SADDR = (uint32)(void*)&PTC_BASE_PTR->PDOR;
    //DMA_BASE_PTR ->TCD[0].SADDR = (uint32)(void*)&time; // 选择像素为输入
    DMA_BASE_PTR ->TCD[0].SOFF  = 0; // 源地址偏移情况
    DMA_BASE_PTR ->TCD[0].DADDR = (uint32)(void*)TargetNum; // 选择输出位置
    DMA_BASE_PTR ->TCD[0].DOFF  = 1; // 偏移 one byte
    //
    DMA_BASE_PTR ->TCD[0].NBYTES_MLNO = 1; // 写数上限
    
    DMA_BASE_PTR ->TCD[0].ATTR  = DMA_ATTR_SSIZE(0) | DMA_ATTR_DSIZE(0); // 传输声明
    
    DMA_BASE_PTR->ERQ |= DMA_ERQ_ERQ0_MASK;
    //DMA_BASE_PTR->INT |= DMA_INT_INT0_MASK;
    //DMA_BASE_PTR->TCD[0].CSR = 1;//软件触发用
    //DMA_BASE_PTR->TCD[0].CSR = 1;
    //DMA_BASE_PTR->TCD[0].CSR = 1;
    
    //SIM_SCGC5 |= (SIM_SCGC5_PORTA_MASK);
    //PORTA_PCR24  |= 0x00000100u;
    //PORTA_PCR25  |= 0x00000100u;
    
    //PTA_BASE_PTR->PDDR |= (1<<24);
    //PTA_BASE_PTR->PDDR |= (1<<25);
    
    //PTA_BASE_PTR->PDOR &=~(1<<24);
    //PTA_BASE_PTR->PDOR &=~(1<<25);
    */
    /*
    v_OLED_Init();
    v_OLED_6x8Str(0,0,"Beholder ele test!");
    if('T' == b_Beholder_Init())
    {
        v_OLED_6x8Str(0,1,"Beholder is OK!");
    }
    else
    {
        v_OLED_6x8Str(0,2,"Beholder Wrong!");
    }
    b_Beholder_InteruptInit();
    */
    //v_Servo_Init();
    //b_motor_Init();

    //SIM_SCGC5 |= (SIM_SCGC5_PORTC_MASK);
    //PORTC_PCR2  |= 0x00000100u;
    //GPIOC_PDDR  |= (1<<2);
    //PORTC_PCR3  |= 0x00000100u;
    //GPIOC_PDDR  |= (1<<3);
    
    //pit_init_ms(PIT0,1); // 设定PIT中断周期
    //set_vector_handler(PIT0_VECTORn,PIT0_IRQHandler); // 设定PIT中断函数指针
    //enable_irq(PIT0_IRQn);//使能PIT中断
    
    //error_occur = 12;
 //   while(1)
 //   {
        //if('T' == b_GetMotor_electric(ADC1_BASE_PTR,&test_ele_num))
        //{
        //    b_OLED_6x8Num(2,2,10,test_ele_num);
        //}
        //v_Servo_Out(0);
        //for(uint32 loop = 0;loop < 0x7FFFFFF;loop++);
        //v_Servo_Out(100);
        //for(uint32 loop = 0;loop < 0x7FFFFFF;loop++);
        //v_Servo_Out(200);
        //for(uint32 loop = 0;loop < 0x7FFFFFF;loop++);
        //test_ele_num = n_GetMotor_speed(FTM1_BASE_PTR);
        //b_OLED_6x8Num(3,3,7,test_ele_num);
        //GPIOC_PDOR  |= (1<<2);
        //GPIOC_PDOR  &=~ (1<<2);
        //b_OLED_6x8Num(3,3,5,test_ele_num);
   // }
    
    //motionUnit mpu;
    //error_occur = u8_mpu6050_RegInit(&mpu);//b_Accel_Init();
    //if('T' == error_occur)
    //{
    //    v_OLED_6x8Str(1,1,"Accel OK!");
    //}
    //else
    //{
    //    v_OLED_6x8Str(1,1,"Accel Wrong!");
    //}
    //v_OLED_6x8Num(2,2,we_can_See);
    //v_OLED_6x8Num(3,3,we_can_See1);
    //error_occur = u8_mpu6050_RegInit(&mpu);
    //while(1)
    //{
        //u8_IIC_ReadReg(I2C0_BASE_PTR ,0x68 ,&error_occur ,117);
    //}
    //__v_Uart_Init_(115200); // UART初始化
    //pit_init_ms(PIT0,1000); // 设定PIT中断周期
    //set_vector_handler(PIT0_VECTORn,PIT0_IRQHandler); // 设定PIT中断函数指针 PORTB_VECTORn
    //enable_irq(PIT0_IRQn);//使能PIT中断


//*/

/*

uint8 b_Flash_RxByte(uint8 * returnNum)
{
    uint8 time = 255;
    while( !((Flash_SPI_PTR->SR) & SPI_SR_RFDF_MASK) )
    {
       if(!(time--)){return 'F';}  
    }
    *returnNum = (uint8)Flash_SPI_PTR->POPR;
    Flash_SPI_PTR->SR |= SPI_SR_RFDF_MASK;
    return 'T';
}

uint8 b_Flash_TxByte(uint8 returnNum,uint8 coun)
{
    uint8 time = 255;
    do
    {
        Flash_SPI_PTR->SR  = SPI_SR_EOQF_MASK | SPI_SR_TFUF_MASK | SPI_SR_TFFF_MASK
                            | SPI_SR_RFOF_MASK | SPI_SR_RFDF_MASK;
        Flash_SPI_PTR->MCR |= SPI_MCR_CLR_TXF_MASK | SPI_MCR_CLR_RXF_MASK;
        if(!(time--)){return 'F';} 
    } while( (Flash_SPI_PTR->SR) & SPI_SR_RFDF_MASK );
    // 发送数据
    Flash_SPI_PTR->PUSHR = ( 0
                                 | SPI_PUSHR_CTAS(0)                 //选择CTAR0寄存器
                                 | SPI_PUSHR_PCS(1 << 1)
                                 | (coun << SPI_PUSHR_CONT_SHIFT)                //1为 传输SPI最后的数据
                                 | SPI_PUSHR_TXDATA( returnNum )
                                // | SPI_PUSHR_EOQ_MASK
                                 );
    time = 255;
    while( Flash_SPI_PTR->SR & SPI_SR_TCF_MASK )
    {
        time ++;
        if(!(time--)){return 'F';} 
    }
    return 'T';
}
*/