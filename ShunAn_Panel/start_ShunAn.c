/*
*�ļ�����              start_ShunAn.c
*˵����                ˳��2��C���������ļ�
*����оƬ�ͺţ�        MK60FX512VQL15
*����ʱ�䣺            2014/5/18
*���ߣ�                ���ϴ�ѧ����
*/

#include "start_ShunAn.h"
//����������ݶ�
#pragma section = ".data"       
#pragma section = ".data_init"
#pragma section = ".bss"
#pragma section = "CodeRelocate"
#pragma section = "CodeRelocateRam"

//�����ж����������
#pragma location = ".intvec"
const vector_entry  __vector_table[] =          //@ ".intvec" =
{
    VECTOR_000,           /* ��ֵ��λ����ʱ���Ƶ� SP ����ָ��ջ��ַ          */
    VECTOR_001,           /* ��ֵ��λ����ʱ���Ƶ� PC ������������ִ�еĺ���  */
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
 *  @brief      оƬ�ϵ�����еĵ�һ��C���Ժ����������ڻ�������ļ�֮��
 *  @����ʱ�䣺 2014/5/18
 *  @����       ���ϴ�ѧ����
 *  @note       �˺�����ϵͳ���������ɻ�ຯ�����ã�Ȼ��ִ��main����
 */
void start(void)
{ 
    /* ����Ҫ�������Ź���Ȼ�������Ĵ���д�� */
    /* ע��: �������Ź��ļ�����ֹ����ִ��!!! */
    /* �����ļ���������20��ʱ��������ִ�����, ��˽�ֹ
     * �жϿ��Ա��ִ����ԭʼ�ԣ�ȷ��ʱ�����ȷ.
     */
    DisableInterrupts;
    /* ������Ĵ���д�� 0xC520  */
    WDOG_UNLOCK = 0xC520;
    /* ��д�� 0xD928 ����ɽ��� */
    WDOG_UNLOCK = 0xD928;
    /* �����Ѿ���ɣ�����ʹ���ж� */	
    EnableInterrupts;
    /* ��� WDOGEN λ����ֹ���Ź� */
    WDOG_STCTRLH &= ~WDOG_STCTRLH_WDOGEN_MASK;
    
    /* ���ж��������ȫ�ֱ���������RAM�� */ 
    /* ����һ������ѭ���õı��� */
    uint32 n;

    /* �������ͬ���ݶ�ʹ�õ�ָ��. ��Щָ��
     * ��linker�ļ��е�ֵ��ʼ��
     */
    uint8 *data_ram, * data_rom, * data_rom_end;
    uint8 *bss_start, * bss_end;


    /*  VECTOR_TABLE �� VECTOR_RAM �ĵ�ַ��  linker �ļ����� ��*.icf�� */
    extern uint32 __VECTOR_TABLE[];
    extern uint32 __VECTOR_RAM[];

    /* ����ROM����ж�������RAM�� */
    if (__VECTOR_RAM != __VECTOR_TABLE)             //�������RAM����������Ҫ�����ж�������
    {
        for (n = 0; n < 0x410; n++)                 //�������
            __VECTOR_RAM[n] = __VECTOR_TABLE[n];
    }
    /* ָ���µ��ж��������ַΪ __VECTOR_RAM */
    write_vtor((uint32)__VECTOR_RAM);

    /* ���Ѹ���ֵ�ı�����ROM�︴�����ݵ�RAM�� */
    data_ram = __section_begin(".data");            //�Ѹ���ֵ�ı����ĵ�ַ��RAM��
    data_rom = __section_begin(".data_init");       //�Ѹ���ֵ�ı��������ݴ����ROM���Ҫ��ֵ��RAM��
    data_rom_end = __section_end(".data_init");
    n = data_rom_end - data_rom;

    /* ���Ƴ�ʼ�����ݵ�RAM�� */
    while (n--)
        *data_ram++ = *data_rom++;

    /* û����ֵ���߳�ֵΪ0�ı�������Ҫ�����RAM������ݣ�ȷ��ֵΪ0 */
    bss_start = __section_begin(".bss");
    bss_end = __section_end(".bss");

    /* ���û����ֵ���߳�ֵΪ0�ı�������ֵ */
    n = bss_end - bss_start;
    while(n--)
        *bss_start++ = 0;

    /* ��ֵ�� __ramfunc �����ĺ����ĵĴ���ε� RAM�����Լӿ���������        */
    uint8 *code_relocate_ram = __section_begin("CodeRelocateRam");
    uint8 *code_relocate = __section_begin("CodeRelocate");
    uint8 *code_relocate_end = __section_end("CodeRelocate");

    /* ��ROM�︴�ƺ������뵽RAM�� */
    n = code_relocate_end - code_relocate;
    while (n--)
        *code_relocate_ram++ = *code_relocate++;  
  /* ���ж��������ȫ�ֱ���������RAM�� ��� */

    
    
    //��ʼ����ʱ��
    core_clk_mhz = pll_init(CORE_CLK);     //����ϵͳʱ��
    core_clk_khz = core_clk_mhz * 1000;     //�����úõ�ʱ�Ӷ�������ȫ�ֱ�����Ա����ʹ��
    bus_clk_khz = core_clk_khz / (((SIM_CLKDIV1 & SIM_CLKDIV1_OUTDIV2_MASK) >> 24) + 1);
    //ʱ���������
    main();             // ִ���û�������

    while(1);           // ��ѭ��
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
 *  @brief      ʱ�ӷ�Ƶ���ú���
 *  @param      outdiv1    �ں˷�Ƶϵ����       core    clk = MCG / (outdiv1 +1)
 *  @param      outdiv2    bus��Ƶϵ����        bus     clk = MCG / (outdiv2 +1)
 *  @param      outdiv3    flexbus��Ƶϵ����    flexbus clk = MCG / (outdiv3 +1)
 *  @param      outdiv4    flash��Ƶϵ����      flash   clk = MCG / (outdiv4 +1)
 *  @since      v1.0
 *  @author     ��˼������˾
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
 *  @brief      MCG ��Ƶ����
 *  @param      PLL_e       Ƶ�����ò���
 *  @since      v5.0
 */
void mcg_div_count(PLL_e pll)
{
    uint16 clk = mcg_cfg[pll].clk;
    if( (pll > PLLUSR) && (pll < PLL_MAX) )
    {
        //���÷�Ƶ
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
 *  @brief      PLL��Ƶ
 *  @param      PLL_e       Ƶ�����ò���
 *  @return     ��ƵƵ�ʣ�MHz��
 *  @since      v5.0
 *  @warning    �˺���ֻ���� ��λ��û�����κ�Ƶ����������µ��ã���MCG��FEIģʽ�²ſɵ���
 *  Sample usage:       uint8 clk = pll_init(PLL100);        //��Ƶ
 */
uint8 pll_init(PLL_e pll)
{

    mcg_div_count( pll);

    //�ϵ縴λ�󣬵�Ƭ�����Զ����� FEI ģʽ��ʹ�� �ڲ��ο�ʱ��

    //FEI -> FBE
    MCG_C2 &= ~MCG_C2_LP_MASK;
    MCG_C2 |= MCG_C2_RANGE(1);

    MCG_C1 = MCG_C1_CLKS(2) | MCG_C1_FRDIV(7);

    while (MCG_S & MCG_S_IREFST_MASK) {};                       //�ȴ�FLL�ο�ʱ�� Ϊ �ⲿ�ο�ʱ�ӣ�S[IREFST]=0����ʾʹ���ⲿ�ο�ʱ�ӣ���

    while (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x2) {}; //�ȴ�ѡ���ⲿ�ο�ʱ��

    //�����Ѿ������� FBEģʽ

    //FBE -> PBE
    set_sys_dividers(mcg_div.core_div, mcg_div.bus_div, mcg_div.flex_div, mcg_div.flash_div); //����ϵͳ��Ƶ����ѡ��

    MCG_C5 = MCG_C5_PRDIV(mcg_cfg[pll].prdiv);                      //��Ƶ�� EXTAL_IN_MHz/( PRDIV+1)
    MCG_C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(mcg_cfg[pll].vdiv) ;    //��Ƶ�� EXTAL_IN_MHz/( PRDIV+1)  * (VDIV+24)

    while (!(MCG_S & MCG_S_PLLST_MASK)) {};                         //�ȴ�ʱ��Դѡ��PLL

    while (!(MCG_S & MCG_S_LOCK_MASK)) {};                          //�ȴ� PLL���ˣ����໷��

    // �����Ѿ������� PBE ģʽ

    // PBE -> PEE
    MCG_C1 &= ~MCG_C1_CLKS_MASK;

    while (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x3) {};//�ȴ�ѡ�����PLL

    // �����Ѿ������� PEE ģʽ

    return mcg_cfg[pll].clk;
} //pll_init

/*!
 *  @brief      PITn��ʱ�ж�
 *  @param      PITn        ģ��ţ�PIT0~PIT3��
 *  @param      cnt         ��ʱ�ж�ʱ��(��λΪbusʱ������)
 *  @since      v5.0
 *  Sample usage:
                    pit_init(PIT0, 1000);                          //��ʱ 1000 ��busʱ�� ���ж�
                    set_vector_handler(PIT0_VECTORn,pit_hander);   // �����жϸ�λ�������ж���������
                    enable_irq(PIT0_IRQn);                         // ʹ��LPTMR�ж�
 */
void pit_init(PITn pitn, uint32 cnt)
{
    //PIT �õ��� Bus Clock ����Ƶ��
    //������� = ����Ƶ�� * ʱ��
    SIM_SCGC6       |= SIM_SCGC6_PIT_MASK;          //ʹ��PITʱ��

    PIT_MCR         = (0
                       //| PIT_MCR_MDIS_MASK       //����PIT��ʱ��ʱ��ѡ��0��ʾʹ��PIT��1��ʾ��ֹPIT��
                       //| PIT_MCR_FRZ_MASK        //����ģʽ��ֹͣ���У�0��ʾ�������У�1��ʾֹͣ���У�
                      );

    PIT_LDVAL(pitn)  = cnt - 1 ;                    //��������ж�ʱ��

    PIT_Flag_Clear(pitn);                           //���жϱ�־λ

    PIT_TCTRL(pitn) &= ~ PIT_TCTRL_TEN_MASK;        //��ֹPITn��ʱ����������ռ���ֵ��
    PIT_TCTRL(pitn)  = ( 0
                         | PIT_TCTRL_TEN_MASK        //ʹ�� PITn��ʱ��
                         | PIT_TCTRL_TIE_MASK        //��PITn�ж�
                       );

    //enable_irq((int)pitn + PIT0_IRQn);            //���ж�
}

/*!
 *  @brief      �����ж�����������жϸ�λ����
 *  @since      v5.0
 *  @warning    ֻ���ж�������λ��icfָ����RAM����ʱ���˺�������Ч
 *  Sample usage:       set_vector_handler(UART3_RX_TX_VECTORn , uart3_handler);    //�� uart3_handler ������ӵ��ж�������
 */
void set_vector_handler(VECTORn_t vector , void pfunc_handler(void))
{
    extern uint32 __VECTOR_RAM[];
    
    __VECTOR_RAM[vector] = (uint32)pfunc_handler;
}

/*

    // DMA���Դ���
    EnableInterrupts; // ʹ�����ж�

    SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK;
    PORTC_BASE_PTR->PCR[8] = PORT_PCR_MUX(1);          // DMA�������أ�GPIO
    
    PORTC_BASE_PTR->PCR[0] = PORT_PCR_MUX(1);          // GPIO
    PORTC_BASE_PTR->PCR[1] = PORT_PCR_MUX(1);          // GPIO
    PORTC_BASE_PTR->PCR[2] = PORT_PCR_MUX(1);          // GPIO
    PORTC_BASE_PTR->PCR[3] = PORT_PCR_MUX(1);          // GPIO
    PORTC_BASE_PTR->PCR[4] = PORT_PCR_MUX(1);          // GPIO
    PORTC_BASE_PTR->PCR[5] = PORT_PCR_MUX(1);          // GPIO
    PORTC_BASE_PTR->PCR[6] = PORT_PCR_MUX(1);          // GPIO
    PORTC_BASE_PTR->PCR[7] = PORT_PCR_MUX(1);          // GPIO
    
    PTC_BASE_PTR->PDDR = 0x0000001FF;
    
    PORTC_BASE_PTR->PCR[9] = PORT_PCR_MUX(1)|PORT_PCR_IRQC(1);          // GPIO ����
    
    SIM_SCGC7 |= SIM_SCGC7_DMA_MASK; // DMAʱ�ӿ���
    SIM_SCGC6 |= SIM_SCGC6_DMAMUX0_MASK; // DMA����MUX0
    
    DMAMUX0_BASE_PTR ->CHCFG[0] = 0;
    DMAMUX0_BASE_PTR ->CHCFG[0] = DMAMUX_CHCFG_ENBL_MASK | DMAMUX_CHCFG_SOURCE(51); // ѡ��ͨ��

     DMA_BASE_PTR->CR = DMA_CSR_DREQ_MASK;//ACTIVE ����Ϊ 0����д��
    //DMA_BASE_PTR->DCHPRI0;
    //DMA_BASE_PTR->EEI;
    
    PTC_BASE_PTR->PDOR = 0x43;
    DMA_BASE_PTR ->TCD[0].SADDR = (uint32)(void*)&PTC_BASE_PTR->PDOR;
    //DMA_BASE_PTR ->TCD[0].SADDR = (uint32)(void*)&time; // ѡ������Ϊ����
    DMA_BASE_PTR ->TCD[0].SOFF  = 0; // Դ��ַƫ�����
    DMA_BASE_PTR ->TCD[0].DADDR = (uint32)(void*)TargetNum; // ѡ�����λ��
    DMA_BASE_PTR ->TCD[0].DOFF  = 1; // ƫ�� one byte
    //
    DMA_BASE_PTR ->TCD[0].NBYTES_MLNO = 2; // д������
    
    DMA_BASE_PTR ->TCD[0].ATTR  = DMA_ATTR_SSIZE(0) | DMA_ATTR_DSIZE(0); // ��������
    
    DMA_BASE_PTR->ERQ |= DMA_ERQ_ERQ0_MASK;
    //DMA_BASE_PTR->INT |= DMA_INT_INT0_MASK;
    //DMA_BASE_PTR->TCD[0].CSR = 1;//���������
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
    PORTC_BASE_PTR->PCR[8] = PORT_PCR_MUX(1);          // DMA�������أ�GPIO
    
    PORTC_BASE_PTR->PCR[0] = PORT_PCR_MUX(1);          // GPIO
    PORTC_BASE_PTR->PCR[1] = PORT_PCR_MUX(1);          // GPIO
    PORTC_BASE_PTR->PCR[2] = PORT_PCR_MUX(1);          // GPIO
    PORTC_BASE_PTR->PCR[3] = PORT_PCR_MUX(1);          // GPIO
    PORTC_BASE_PTR->PCR[4] = PORT_PCR_MUX(1);          // GPIO
    PORTC_BASE_PTR->PCR[5] = PORT_PCR_MUX(1);          // GPIO
    PORTC_BASE_PTR->PCR[6] = PORT_PCR_MUX(1);          // GPIO
    PORTC_BASE_PTR->PCR[7] = PORT_PCR_MUX(1);          // GPIO
    
    PTC_BASE_PTR->PDDR = 0x0000001FF;
    
    PORTC_BASE_PTR->PCR[9] = PORT_PCR_MUX(1)|PORT_PCR_IRQC(1);          // GPIO ����
    
    SIM_SCGC7 |= SIM_SCGC7_DMA_MASK; // DMAʱ�ӿ���
    SIM_SCGC6 |= SIM_SCGC6_DMAMUX0_MASK; // DMA����MUX0
    
    DMAMUX0_BASE_PTR ->CHCFG[0] = 0;
    DMAMUX0_BASE_PTR ->CHCFG[0] = DMAMUX_CHCFG_ENBL_MASK | DMAMUX_CHCFG_SOURCE(51); // ѡ��ͨ��

     DMA_BASE_PTR->CR = DMA_CSR_DREQ_MASK;//ACTIVE ����Ϊ 0����д��
    //DMA_BASE_PTR->DCHPRI0;
    //DMA_BASE_PTR->EEI;
    
    PTC_BASE_PTR->PDOR = 0x43;
    DMA_BASE_PTR ->TCD[0].SADDR = (uint32)(void*)&PTC_BASE_PTR->PDOR;
    //DMA_BASE_PTR ->TCD[0].SADDR = (uint32)(void*)&time; // ѡ������Ϊ����
    DMA_BASE_PTR ->TCD[0].SOFF  = 0; // Դ��ַƫ�����
    DMA_BASE_PTR ->TCD[0].DADDR = (uint32)(void*)TargetNum; // ѡ�����λ��
    DMA_BASE_PTR ->TCD[0].DOFF  = 1; // ƫ�� one byte
    //
    DMA_BASE_PTR ->TCD[0].NBYTES_MLNO = 1; // д������
    
    DMA_BASE_PTR ->TCD[0].ATTR  = DMA_ATTR_SSIZE(0) | DMA_ATTR_DSIZE(0); // ��������
    
    DMA_BASE_PTR->ERQ |= DMA_ERQ_ERQ0_MASK;
    //DMA_BASE_PTR->INT |= DMA_INT_INT0_MASK;
    //DMA_BASE_PTR->TCD[0].CSR = 1;//���������
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
    
    //pit_init_ms(PIT0,1); // �趨PIT�ж�����
    //set_vector_handler(PIT0_VECTORn,PIT0_IRQHandler); // �趨PIT�жϺ���ָ��
    //enable_irq(PIT0_IRQn);//ʹ��PIT�ж�
    
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
    //__v_Uart_Init_(115200); // UART��ʼ��
    //pit_init_ms(PIT0,1000); // �趨PIT�ж�����
    //set_vector_handler(PIT0_VECTORn,PIT0_IRQHandler); // �趨PIT�жϺ���ָ�� PORTB_VECTORn
    //enable_irq(PIT0_IRQn);//ʹ��PIT�ж�


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
    // ��������
    Flash_SPI_PTR->PUSHR = ( 0
                                 | SPI_PUSHR_CTAS(0)                 //ѡ��CTAR0�Ĵ���
                                 | SPI_PUSHR_PCS(1 << 1)
                                 | (coun << SPI_PUSHR_CONT_SHIFT)                //1Ϊ ����SPI��������
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