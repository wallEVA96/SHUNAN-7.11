///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     27/Aug/2014  11:41:25 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\创作室\飞思卡尔智能小车\调试板\遥控器\ShunAn_Panel\s /
//                    tart_ShunAn.c                                           /
//    Command line =  D:\创作室\飞思卡尔智能小车\调试板\遥控器\ShunAn_Panel\s /
//                    tart_ShunAn.c -D IAR -D TWR_K60F120M -lCN               /
//                    D:\创作室\飞思卡尔智能小车\调试板\遥控器\RAM_128KB\List /
//                    \ -lB D:\创作室\飞思卡尔智能小车\调试板\遥控器\RAM_128K /
//                    B\List\ -o D:\创作室\飞思卡尔智能小车\调试板\遥控器\RAM /
//                    _128KB\Obj\ --no_cse --no_unroll --no_inline            /
//                    --no_code_motion --no_tbaa --no_clustering              /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=None --dlib_config             /
//                    "C:\Program Files (x86)\IAR Systems\Embedded Workbench  /
//                    6.5\arm\INC\c\DLib_Config_Normal.h" -I                  /
//                    D:\创作室\飞思卡尔智能小车\调试板\遥控器\ -I            /
//                    D:\创作室\飞思卡尔智能小车\调试板\遥控器\Library\ -I    /
//                    D:\创作室\飞思卡尔智能小车\调试板\遥控器\Library\Blesse /
//                    dAlien\ -I D:\创作室\飞思卡尔智能小车\调试板\遥控器\Shu /
//                    nAn_Panel\ -Ol --use_c++_inline                         /
//    List file    =  D:\创作室\飞思卡尔智能小车\调试板\遥控器\RAM_128KB\List /
//                    \start_ShunAn.s                                         /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1
        #define SHF_WRITE 0x1
        #define SHF_EXECINSTR 0x4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        SECTION `.data`:DATA:REORDER:NOROOT(0)
        SECTION `.data_init`:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0
        SECTION CodeRelocate:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0
        SECTION CodeRelocateRam:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        EXTERN Reset_Handler
        EXTERN __BOOT_STACK_ADDRESS
        EXTERN __VECTOR_RAM
        EXTERN __VECTOR_TABLE
        EXTERN main
        EXTERN write_vtor

        PUBLIC __vector_table
        PUBLIC bus_clk_khz
        PUBLIC core_clk_khz
        PUBLIC core_clk_mhz
        PUBLIC default_isr
        PUBLIC mcg_cfg
        PUBLIC mcg_div
        PUBLIC mcg_div_count
        PUBLIC pit_init
        PUBLIC pll_init
        PUBLIC set_sys_dividers
        PUBLIC set_vector_handler
        PUBLIC start

// D:\创作室\飞思卡尔智能小车\调试板\遥控器\ShunAn_Panel\start_ShunAn.c
//    1 /*
//    2 *文件名：              start_ShunAn.c
//    3 *说明：                顺暗2号C语言启动文件
//    4 *所用芯片型号：        MK60FX512VQL15
//    5 *创建时间：            2014/5/18
//    6 *作者：                中南大学弓箭
//    7 */
//    8 
//    9 #include "start_ShunAn.h"
//   10 //声明相关数据段
//   11 #pragma section = ".data"       
//   12 #pragma section = ".data_init"
//   13 #pragma section = ".bss"
//   14 #pragma section = "CodeRelocate"
//   15 #pragma section = "CodeRelocateRam"
//   16 
//   17 //定义中断向量表入口
//   18 #pragma location = ".intvec"

        SECTION `.intvec`:CONST:REORDER:NOROOT(2)
//   19 const vector_entry  __vector_table[] =          //@ ".intvec" =
__vector_table:
        DATA
        DC32 __BOOT_STACK_ADDRESS, Reset_Handler, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, 0FFFFFFFFH, 0FFFFFFFFH, 0FFFFFFFFH
        DC32 0FFFFFFFEH
//   20 {
//   21     VECTOR_000,           /* 此值复位启动时复制到 SP ，即指定栈地址          */
//   22     VECTOR_001,           /* 此值复位启动时复制到 PC ，即启动马上执行的函数  */
//   23     VECTOR_002,
//   24     VECTOR_003,
//   25     VECTOR_004,
//   26     VECTOR_005,
//   27     VECTOR_006,
//   28     VECTOR_007,
//   29     VECTOR_008,
//   30     VECTOR_009,
//   31     VECTOR_010,
//   32     VECTOR_011,
//   33     VECTOR_012,
//   34     VECTOR_013,
//   35     VECTOR_014,
//   36     VECTOR_015,
//   37     VECTOR_016,
//   38     VECTOR_017,
//   39     VECTOR_018,
//   40     VECTOR_019,
//   41     VECTOR_020,
//   42     VECTOR_021,
//   43     VECTOR_022,
//   44     VECTOR_023,
//   45     VECTOR_024,
//   46     VECTOR_025,
//   47     VECTOR_026,
//   48     VECTOR_027,
//   49     VECTOR_028,
//   50     VECTOR_029,
//   51     VECTOR_030,
//   52     VECTOR_031,
//   53     VECTOR_032,
//   54     VECTOR_033,
//   55     VECTOR_034,
//   56     VECTOR_035,
//   57     VECTOR_036,
//   58     VECTOR_037,
//   59     VECTOR_038,
//   60     VECTOR_039,
//   61     VECTOR_040,
//   62     VECTOR_041,
//   63     VECTOR_042,
//   64     VECTOR_043,
//   65     VECTOR_044,
//   66     VECTOR_045,
//   67     VECTOR_046,
//   68     VECTOR_047,
//   69     VECTOR_048,
//   70     VECTOR_049,
//   71     VECTOR_050,
//   72     VECTOR_051,
//   73     VECTOR_052,
//   74     VECTOR_053,
//   75     VECTOR_054,
//   76     VECTOR_055,
//   77     VECTOR_056,
//   78     VECTOR_057,
//   79     VECTOR_058,
//   80     VECTOR_059,
//   81     VECTOR_060,
//   82     VECTOR_061,
//   83     VECTOR_062,
//   84     VECTOR_063,
//   85     VECTOR_064,
//   86     VECTOR_065,
//   87     VECTOR_066,
//   88     VECTOR_067,
//   89     VECTOR_068,
//   90     VECTOR_069,
//   91     VECTOR_070,
//   92     VECTOR_071,
//   93     VECTOR_072,
//   94     VECTOR_073,
//   95     VECTOR_074,
//   96     VECTOR_075,
//   97     VECTOR_076,
//   98     VECTOR_077,
//   99     VECTOR_078,
//  100     VECTOR_079,
//  101     VECTOR_080,
//  102     VECTOR_081,
//  103     VECTOR_082,
//  104     VECTOR_083,
//  105     VECTOR_084,
//  106     VECTOR_085,
//  107     VECTOR_086,
//  108     VECTOR_087,
//  109     VECTOR_088,
//  110     VECTOR_089,
//  111     VECTOR_090,
//  112     VECTOR_091,
//  113     VECTOR_092,
//  114     VECTOR_093,
//  115     VECTOR_094,
//  116     VECTOR_095,
//  117     VECTOR_096,
//  118     VECTOR_097,
//  119     VECTOR_098,
//  120     VECTOR_099,
//  121     VECTOR_100,
//  122     VECTOR_101,
//  123     VECTOR_102,
//  124     VECTOR_103,
//  125     VECTOR_104,
//  126     VECTOR_105,
//  127     VECTOR_106,
//  128     VECTOR_107,
//  129     VECTOR_108,
//  130     VECTOR_109,
//  131     VECTOR_110,
//  132     VECTOR_111,
//  133     VECTOR_112,
//  134     VECTOR_113,
//  135     VECTOR_114,
//  136     VECTOR_115,
//  137     VECTOR_116,
//  138     VECTOR_117,
//  139     VECTOR_118,
//  140     VECTOR_119,
//  141     VECTOR_120,
//  142     VECTOR_121,
//  143     VECTOR_122,
//  144     VECTOR_123,
//  145     VECTOR_124,
//  146     VECTOR_125,
//  147     VECTOR_126,
//  148     VECTOR_127,
//  149     VECTOR_128,
//  150     VECTOR_129,
//  151     VECTOR_130,
//  152     VECTOR_131,
//  153     VECTOR_132,
//  154     VECTOR_133,
//  155     VECTOR_134,
//  156     VECTOR_135,
//  157     VECTOR_136,
//  158     VECTOR_137,
//  159     VECTOR_138,
//  160     VECTOR_139,
//  161     VECTOR_140,
//  162     VECTOR_141,
//  163     VECTOR_142,
//  164     VECTOR_143,
//  165     VECTOR_144,
//  166     VECTOR_145,
//  167     VECTOR_146,
//  168     VECTOR_147,
//  169     VECTOR_148,
//  170     VECTOR_149,
//  171     VECTOR_150,
//  172     VECTOR_151,
//  173     VECTOR_152,
//  174     VECTOR_153,
//  175     VECTOR_154,
//  176     VECTOR_155,
//  177     VECTOR_156,
//  178     VECTOR_157,
//  179     VECTOR_158,
//  180     VECTOR_159,
//  181     VECTOR_160,
//  182     VECTOR_161,
//  183     VECTOR_162,
//  184     VECTOR_163,
//  185     VECTOR_164,
//  186     VECTOR_165,
//  187     VECTOR_166,
//  188     VECTOR_167,
//  189     VECTOR_168,
//  190     VECTOR_169,
//  191     VECTOR_170,
//  192     VECTOR_171,
//  193     VECTOR_172,
//  194     VECTOR_173,
//  195     VECTOR_174,
//  196     VECTOR_175,
//  197     VECTOR_176,
//  198     VECTOR_177,
//  199     VECTOR_178,
//  200     VECTOR_179,
//  201     VECTOR_180,
//  202     VECTOR_181,
//  203     VECTOR_182,
//  204     VECTOR_183,
//  205     VECTOR_184,
//  206     VECTOR_185,
//  207     VECTOR_186,
//  208     VECTOR_187,
//  209     VECTOR_188,
//  210     VECTOR_189,
//  211     VECTOR_190,
//  212     VECTOR_191,
//  213     VECTOR_192,
//  214     VECTOR_193,
//  215     VECTOR_194,
//  216     VECTOR_195,
//  217     VECTOR_196,
//  218     VECTOR_197,
//  219     VECTOR_198,
//  220     VECTOR_199,
//  221     VECTOR_200,
//  222     VECTOR_201,
//  223     VECTOR_202,
//  224     VECTOR_203,
//  225     VECTOR_204,
//  226     VECTOR_205,
//  227     VECTOR_206,
//  228     VECTOR_207,
//  229     VECTOR_208,
//  230     VECTOR_209,
//  231     VECTOR_210,
//  232     VECTOR_211,
//  233     VECTOR_212,
//  234     VECTOR_213,
//  235     VECTOR_214,
//  236     VECTOR_215,
//  237     VECTOR_216,
//  238     VECTOR_217,
//  239     VECTOR_218,
//  240     VECTOR_219,
//  241     VECTOR_220,
//  242     VECTOR_221,
//  243     VECTOR_222,
//  244     VECTOR_223,
//  245     VECTOR_224,
//  246     VECTOR_225,
//  247     VECTOR_226,
//  248     VECTOR_227,
//  249     VECTOR_228,
//  250     VECTOR_229,
//  251     VECTOR_230,
//  252     VECTOR_231,
//  253     VECTOR_232,
//  254     VECTOR_233,
//  255     VECTOR_234,
//  256     VECTOR_235,
//  257     VECTOR_236,
//  258     VECTOR_237,
//  259     VECTOR_238,
//  260     VECTOR_239,
//  261     VECTOR_240,
//  262     VECTOR_241,
//  263     VECTOR_242,
//  264     VECTOR_243,
//  265     VECTOR_244,
//  266     VECTOR_245,
//  267     VECTOR_246,
//  268     VECTOR_247,
//  269     VECTOR_248,
//  270     VECTOR_249,
//  271     VECTOR_250,
//  272     VECTOR_251,
//  273     VECTOR_252,
//  274     VECTOR_253,
//  275     VECTOR_254,
//  276     VECTOR_255,
//  277     CONFIG_1,        /* Flash configuration field values */
//  278     CONFIG_2,        /* Flash configuration field values */
//  279     CONFIG_3,        /* Flash configuration field values */
//  280     CONFIG_4,        /* Flash configuration field values */
//  281 
//  282 };

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  283 int core_clk_khz;
core_clk_khz:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  284 int core_clk_mhz;
core_clk_mhz:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  285 int bus_clk_khz;
bus_clk_khz:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  286 mcg_cfg_t mcg_cfg[PLL_MAX] =
mcg_cfg:
        DATA
        DC16 102
        DC8 10, 29
        DC16 50
        DC8 7, 1
        DC16 100
        DC8 7, 16
        DC16 110
        DC8 4, 6
        DC16 120
        DC8 4, 8
        DC16 130
        DC8 4, 10
        DC16 140
        DC8 4, 12
        DC16 150
        DC8 4, 14
        DC16 160
        DC8 4, 16
        DC16 170
        DC8 4, 18
        DC16 180
        DC8 4, 20
        DC16 190
        DC8 4, 22
        DC16 200
        DC8 4, 24
        DC16 210
        DC8 4, 26
        DC16 220
        DC8 4, 28
        DC16 225
        DC8 4, 29
        DC16 230
        DC8 4, 30
        DC16 235
        DC8 4, 31
        DC16 244
        DC8 3, 23
        DC16 250
        DC8 3, 24
        DC16 275
        DC8 1, 6
        DC16 300
        DC8 2, 20
//  287 {
//  288     {EXTAL_IN_MHz*(VDIV + 16) / (PRDIV + 1) /2, PRDIV, VDIV}, //PLLUSR
//  289     {50,    7 ,     1       },                          //PLL50
//  290     {100,   7,      16      },                          //PLL100
//  291     {110,   4 ,     6       },                          //PLL110
//  292     {120,   4 ,     8       },                          //PLL120
//  293     {130,   4 ,     10      },                          //PLL130
//  294     {140,   4 ,     12      },                          //PLL140
//  295     {150,   4 ,     14      },                          //PLL150
//  296     {160,   4 ,     16      },                          //PLL160
//  297     {170,   4 ,     18      },                          //PLL170
//  298     {180,   4 ,     20      },                          //PLL180
//  299     {190,   4 ,     22      },                          //PLL190
//  300     {200,   4 ,     24      },                          //PLL200
//  301     {210,   4 ,     26      },                          //PLL210
//  302     {220,   4 ,     28      },                          //PLL220
//  303     {225,   4 ,     29      },                          //PLL225
//  304     {230,   4 ,     30      },                          //PLL230
//  305     {235,   4 ,     31      },                          //PLL235
//  306     {244,   3 ,     23      },                          //PLL244
//  307     {250,   3 ,     24      },                          //PLL250
//  308     {275,   1 ,     6       },                          //PLL275
//  309     {300,   2 ,     20      },                          //PLL300
//  310 };
//  311 /*!
//  312  *  @brief      芯片上电后运行的第一个C语言函数，紧跟在汇编启动文件之后
//  313  *  @创建时间： 2014/5/18
//  314  *  @作者       中南大学弓箭
//  315  *  @note       此函数是系统启动初期由汇编函数调用，然后执行main函数
//  316  */

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  317 void start(void)
//  318 { 
start:
        PUSH     {R7,LR}
//  319     /* 首先要解锁看门狗，然后才能向寄存器写入 */
//  320     /* 注意: 解锁看门狗的几步禁止单步执行!!! */
//  321     /* 解锁的几步必须在20个时钟周期内执行完毕, 因此禁止
//  322      * 中断可以保持代码的原子性，确保时序的正确.
//  323      */
//  324     DisableInterrupts;
        CPSID i
//  325     /* 向解锁寄存器写入 0xC520  */
//  326     WDOG_UNLOCK = 0xC520;
        LDR.W    R0,??DataTable4  ;; 0x4005200e
        MOVW     R1,#+50464
        STRH     R1,[R0, #+0]
//  327     /* 再写入 0xD928 来完成解锁 */
//  328     WDOG_UNLOCK = 0xD928;
        LDR.W    R0,??DataTable4  ;; 0x4005200e
        MOVW     R1,#+55592
        STRH     R1,[R0, #+0]
//  329     /* 解锁已经完成，重新使能中断 */	
//  330     EnableInterrupts;
        CPSIE i
//  331     /* 清除 WDOGEN 位来禁止看门狗 */
//  332     WDOG_STCTRLH &= ~WDOG_STCTRLH_WDOGEN_MASK;
        LDR.W    R0,??DataTable4_1  ;; 0x40052000
        LDRH     R0,[R0, #+0]
        MOVW     R1,#+65534
        ANDS     R0,R1,R0
        LDR.W    R1,??DataTable4_1  ;; 0x40052000
        STRH     R0,[R1, #+0]
//  333     
//  334     /* 将中断向量表和全局变量放置在RAM里 */ 
//  335     /* 定义一个用于循环用的变量 */
//  336     uint32 n;
//  337 
//  338     /* 定义给不同数据段使用的指针. 这些指针
//  339      * 被linker文件中的值初始化
//  340      */
//  341     uint8 *data_ram, * data_rom, * data_rom_end;
//  342     uint8 *bss_start, * bss_end;
//  343 
//  344 
//  345     /*  VECTOR_TABLE 和 VECTOR_RAM 的地址从  linker 文件里获得 （*.icf） */
//  346     extern uint32 __VECTOR_TABLE[];
//  347     extern uint32 __VECTOR_RAM[];
//  348 
//  349     /* 复制ROM里的中断向量表到RAM里 */
//  350     if (__VECTOR_RAM != __VECTOR_TABLE)             //如果不是RAM启动，则需要复制中断向量表
        LDR.W    R0,??DataTable4_2
        LDR.W    R1,??DataTable4_3
        CMP      R0,R1
        BEQ.N    ??start_0
//  351     {
//  352         for (n = 0; n < 0x410; n++)                 //逐个复制
        MOVS     R0,#+0
        B.N      ??start_1
//  353             __VECTOR_RAM[n] = __VECTOR_TABLE[n];
??start_2:
        LDR.W    R1,??DataTable4_2
        LDR.W    R2,??DataTable4_3
        LDR      R2,[R2, R0, LSL #+2]
        STR      R2,[R1, R0, LSL #+2]
        ADDS     R0,R0,#+1
??start_1:
        CMP      R0,#+1040
        BCC.N    ??start_2
//  354     }
//  355     /* 指定新的中断向量表地址为 __VECTOR_RAM */
//  356     write_vtor((uint32)__VECTOR_RAM);
??start_0:
        LDR.W    R0,??DataTable4_2
        BL       write_vtor
//  357 
//  358     /* 把已赋初值的变量从ROM里复制数据到RAM里 */
//  359     data_ram = __section_begin(".data");            //已赋初值的变量的地址在RAM里
        LDR.W    R1,??DataTable4_4
//  360     data_rom = __section_begin(".data_init");       //已赋初值的变量的数据存放在ROM里，需要赋值到RAM里
        LDR.W    R2,??DataTable4_5
//  361     data_rom_end = __section_end(".data_init");
        LDR.W    R0,??DataTable4_6
//  362     n = data_rom_end - data_rom;
        SUBS     R0,R0,R2
        B.N      ??start_3
//  363 
//  364     /* 复制初始化数据到RAM里 */
//  365     while (n--)
//  366         *data_ram++ = *data_rom++;
??start_4:
        LDRB     R3,[R2, #+0]
        STRB     R3,[R1, #+0]
        ADDS     R2,R2,#+1
        ADDS     R1,R1,#+1
??start_3:
        MOVS     R3,R0
        SUBS     R0,R3,#+1
        CMP      R3,#+0
        BNE.N    ??start_4
//  367 
//  368     /* 没赋初值或者初值为0的变量，需要清除其RAM里的数据，确保值为0 */
//  369     bss_start = __section_begin(".bss");
        LDR.W    R1,??DataTable4_7
//  370     bss_end = __section_end(".bss");
        LDR.W    R0,??DataTable4_8
//  371 
//  372     /* 清除没赋初值或者初值为0的变量数据值 */
//  373     n = bss_end - bss_start;
        SUBS     R0,R0,R1
        B.N      ??start_5
//  374     while(n--)
//  375         *bss_start++ = 0;
??start_6:
        MOVS     R2,#+0
        STRB     R2,[R1, #+0]
        ADDS     R1,R1,#+1
??start_5:
        MOVS     R2,R0
        SUBS     R0,R2,#+1
        CMP      R2,#+0
        BNE.N    ??start_6
//  376 
//  377     /* 赋值用 __ramfunc 声明的函数的的代码段到 RAM，可以加快代码的运行        */
//  378     uint8 *code_relocate_ram = __section_begin("CodeRelocateRam");
        LDR.W    R1,??DataTable4_9
//  379     uint8 *code_relocate = __section_begin("CodeRelocate");
        LDR.W    R2,??DataTable4_10
//  380     uint8 *code_relocate_end = __section_end("CodeRelocate");
        LDR.W    R0,??DataTable4_11
//  381 
//  382     /* 从ROM里复制函数代码到RAM里 */
//  383     n = code_relocate_end - code_relocate;
        SUBS     R0,R0,R2
        B.N      ??start_7
//  384     while (n--)
//  385         *code_relocate_ram++ = *code_relocate++;  
??start_8:
        LDRB     R3,[R2, #+0]
        STRB     R3,[R1, #+0]
        ADDS     R2,R2,#+1
        ADDS     R1,R1,#+1
??start_7:
        MOVS     R3,R0
        SUBS     R0,R3,#+1
        CMP      R3,#+0
        BNE.N    ??start_8
//  386   /* 将中断向量表和全局变量放置在RAM里 完成 */
//  387 
//  388     
//  389     
//  390     //开始设置时钟
//  391     core_clk_mhz = pll_init(CORE_CLK);     //设置系统时钟
        MOVS     R0,#+7
        BL       pll_init
        LDR.W    R1,??DataTable4_12
        STR      R0,[R1, #+0]
//  392     core_clk_khz = core_clk_mhz * 1000;     //把配置好的时钟都保存在全局变量里，以便后续使用
        LDR.W    R0,??DataTable4_12
        LDR      R0,[R0, #+0]
        MOV      R1,#+1000
        MULS     R0,R1,R0
        LDR.W    R1,??DataTable4_13
        STR      R0,[R1, #+0]
//  393     bus_clk_khz = core_clk_khz / (((SIM_CLKDIV1 & SIM_CLKDIV1_OUTDIV2_MASK) >> 24) + 1);
        LDR.W    R0,??DataTable4_13
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable4_14  ;; 0x40048044
        LDR      R1,[R1, #+0]
        UBFX     R1,R1,#+24,#+4
        ADDS     R1,R1,#+1
        UDIV     R0,R0,R1
        LDR.W    R1,??DataTable4_15
        STR      R0,[R1, #+0]
//  394     //时钟设置完毕
//  395     main();             // 执行用户主函数
        BL       main
//  396 
//  397     while(1);           // 死循环
??start_9:
        B.N      ??start_9
//  398 }
//  399 
//  400 /******************************************************************************
//  401 * default_isr(void)
//  402 *
//  403 * Default ISR definition.
//  404 *
//  405 * In:  n/a
//  406 * Out: n/a
//  407 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  408 void default_isr(void)
//  409 {
//  410    #define VECTORNUM                     (*(volatile uint8_t*)(0xE000ED04))
//  411    return;
default_isr:
        BX       LR               ;; return
//  412 }
//  413 
//  414 /*!
//  415  *  @brief      时钟分频设置函数
//  416  *  @param      outdiv1    内核分频系数，       core    clk = MCG / (outdiv1 +1)
//  417  *  @param      outdiv2    bus分频系数，        bus     clk = MCG / (outdiv2 +1)
//  418  *  @param      outdiv3    flexbus分频系数，    flexbus clk = MCG / (outdiv3 +1)
//  419  *  @param      outdiv4    flash分频系数，      flash   clk = MCG / (outdiv4 +1)
//  420  *  @since      v1.0
//  421  *  @author     飞思卡尔公司
//  422  *  Sample usage:       set_sys_dividers(0,1, 9,3);     // core clk = MCG ; bus clk = MCG / 2 ; flexbus clk = MCG /10 ; flash clk = MCG / 4;
//  423  */

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
        THUMB
//  424 __ramfunc  void set_sys_dividers(uint32 outdiv1, uint32 outdiv2, uint32 outdiv3, uint32 outdiv4)
//  425 {
set_sys_dividers:
        PUSH     {R4-R6}
//  426     /*
//  427     * This routine must be placed in RAM. It is a workaround for errata e2448.
//  428     * Flash prefetch must be disabled when the flash clock divider is changed.
//  429     * This cannot be performed while executing out of flash.
//  430     * There must be a short delay after the clock dividers are changed before prefetch
//  431     * can be re-enabled.
//  432     */
//  433     uint32 temp_reg;
//  434     uint8 i;
//  435 
//  436     temp_reg = FMC_PFAPR; // store present value of FMC_PFAPR
        LDR.N    R4,??set_sys_dividers_0  ;; 0x4001f000
        LDR      R4,[R4, #+0]
//  437 
//  438     // set M0PFD through M7PFD to 1 to disable prefetch
//  439     FMC_PFAPR |= FMC_PFAPR_M7PFD_MASK | FMC_PFAPR_M6PFD_MASK | FMC_PFAPR_M5PFD_MASK
//  440                  | FMC_PFAPR_M4PFD_MASK | FMC_PFAPR_M3PFD_MASK | FMC_PFAPR_M2PFD_MASK
//  441                  | FMC_PFAPR_M1PFD_MASK | FMC_PFAPR_M0PFD_MASK;
        LDR.N    R5,??set_sys_dividers_0  ;; 0x4001f000
        LDR      R5,[R5, #+0]
        ORRS     R5,R5,#0xFF0000
        LDR.N    R6,??set_sys_dividers_0  ;; 0x4001f000
        STR      R5,[R6, #+0]
//  442 
//  443     // set clock dividers to desired value
//  444     SIM_CLKDIV1 = SIM_CLKDIV1_OUTDIV1(outdiv1) | SIM_CLKDIV1_OUTDIV2(outdiv2)
//  445                   | SIM_CLKDIV1_OUTDIV3(outdiv3) | SIM_CLKDIV1_OUTDIV4(outdiv4);
        LSLS     R1,R1,#+24
        ANDS     R1,R1,#0xF000000
        ORRS     R0,R1,R0, LSL #+28
        LSLS     R1,R2,#+20
        ANDS     R1,R1,#0xF00000
        ORRS     R0,R1,R0
        LSLS     R1,R3,#+16
        ANDS     R1,R1,#0xF0000
        ORRS     R0,R1,R0
        LDR.N    R1,??set_sys_dividers_0+0x4  ;; 0x40048044
        STR      R0,[R1, #+0]
//  446 
//  447     // wait for dividers to change
//  448     for (i = 0 ; i < outdiv4 ; i++)
        MOVS     R0,#+0
        B.N      ??set_sys_dividers_1
??set_sys_dividers_2:
        ADDS     R0,R0,#+1
??set_sys_dividers_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,R3
        BCC.N    ??set_sys_dividers_2
//  449         {}
//  450 
//  451     FMC_PFAPR = temp_reg; // re-store original value of FMC_PFAPR
        LDR.N    R0,??set_sys_dividers_0  ;; 0x4001f000
        STR      R4,[R0, #+0]
//  452 
//  453     return;
        POP      {R4-R6}
        BX       LR               ;; return
        DATA
??set_sys_dividers_0:
        DC32     0x4001f000
        DC32     0x40048044
//  454 } // set_sys_dividers
//  455 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  456 mcg_div_t mcg_div = {CORE_DIV, BUS_DIV, FLEX_DIV, FLASH_DIV};
mcg_div:
        DATA
        DC8 0, 1, 9, 8

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//  457 
//  458 
//  459 /*!
//  460  *  @brief      MCG 分频配置
//  461  *  @param      PLL_e       频率设置参数
//  462  *  @since      v5.0
//  463  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  464 void mcg_div_count(PLL_e pll)
//  465 {
//  466     uint16 clk = mcg_cfg[pll].clk;
mcg_div_count:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable4_16
        LDRH     R1,[R1, R0, LSL #+2]
//  467     if( (pll > PLLUSR) && (pll < PLL_MAX) )
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.W    ??mcg_div_count_0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+22
        BGE.W    ??mcg_div_count_0
//  468     {
//  469         //设置分频
//  470         mcg_div.core_div    = 0;                                        // core = MCG
        LDR.W    R0,??DataTable4_17
        MOVS     R2,#+0
        STRB     R2,[R0, #+0]
//  471 
//  472         if     (clk <= 1 * MAX_BUS_CLK)   mcg_div.bus_div = 0;          // bus  = MCG
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+76
        BGE.N    ??mcg_div_count_1
        LDR.W    R0,??DataTable4_17
        MOVS     R2,#+0
        STRB     R2,[R0, #+1]
        B.N      ??mcg_div_count_2
//  473         else if(clk <= 2 * MAX_BUS_CLK)   mcg_div.bus_div = 1;          // bus  = MCG/2
??mcg_div_count_1:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+151
        BGE.N    ??mcg_div_count_3
        LDR.W    R0,??DataTable4_17
        MOVS     R2,#+1
        STRB     R2,[R0, #+1]
        B.N      ??mcg_div_count_2
//  474         else if(clk <= 3 * MAX_BUS_CLK)   mcg_div.bus_div = 2;          // bus  = MCG/3
??mcg_div_count_3:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+226
        BGE.N    ??mcg_div_count_4
        LDR.W    R0,??DataTable4_17
        MOVS     R2,#+2
        STRB     R2,[R0, #+1]
        B.N      ??mcg_div_count_2
//  475         else if(clk <= 4 * MAX_BUS_CLK)   mcg_div.bus_div = 3;          // bus  = MCG/4
??mcg_div_count_4:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+300
        BGT.N    ??mcg_div_count_5
        LDR.W    R0,??DataTable4_17
        MOVS     R2,#+3
        STRB     R2,[R0, #+1]
        B.N      ??mcg_div_count_2
//  476         else if(clk <= 5 * MAX_BUS_CLK)   mcg_div.bus_div = 4;          // bus  = MCG/5
??mcg_div_count_5:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+376
        BGE.N    ??mcg_div_count_6
        LDR.W    R0,??DataTable4_17
        MOVS     R2,#+4
        STRB     R2,[R0, #+1]
        B.N      ??mcg_div_count_2
//  477         else if(clk <= 6 * MAX_BUS_CLK)   mcg_div.bus_div = 5;          // bus  = MCG/6
??mcg_div_count_6:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+450
        BGT.N    ??mcg_div_count_7
        LDR.W    R0,??DataTable4_17
        MOVS     R2,#+5
        STRB     R2,[R0, #+1]
        B.N      ??mcg_div_count_2
//  478         else if(clk <= 7 * MAX_BUS_CLK)   mcg_div.bus_div = 6;          // bus  = MCG/7
??mcg_div_count_7:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVW     R0,#+526
        CMP      R1,R0
        BGE.N    ??mcg_div_count_8
        LDR.W    R0,??DataTable4_17
        MOVS     R2,#+6
        STRB     R2,[R0, #+1]
        B.N      ??mcg_div_count_2
//  479         else if(clk <= 8 * MAX_BUS_CLK)   mcg_div.bus_div = 7;          // bus  = MCG/8
??mcg_div_count_8:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+600
        BGT.N    ??mcg_div_count_9
        LDR.W    R0,??DataTable4_17
        MOVS     R2,#+7
        STRB     R2,[R0, #+1]
        B.N      ??mcg_div_count_2
//  480         else if(clk <= 9 * MAX_BUS_CLK)   mcg_div.bus_div = 8;          // bus  = MCG/9
??mcg_div_count_9:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+676
        BGE.N    ??mcg_div_count_10
        LDR.W    R0,??DataTable4_17
        MOVS     R2,#+8
        STRB     R2,[R0, #+1]
        B.N      ??mcg_div_count_2
//  481         else if(clk <= 10 * MAX_BUS_CLK)   mcg_div.bus_div = 9;         // bus  = MCG/10
??mcg_div_count_10:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVW     R0,#+751
        CMP      R1,R0
        BGE.N    ??mcg_div_count_11
        LDR.W    R0,??DataTable4_17
        MOVS     R2,#+9
        STRB     R2,[R0, #+1]
        B.N      ??mcg_div_count_2
//  482         else if(clk <= 11 * MAX_BUS_CLK)   mcg_div.bus_div = 10;        // bus  = MCG/11
??mcg_div_count_11:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVW     R0,#+826
        CMP      R1,R0
        BGE.N    ??mcg_div_count_12
        LDR.W    R0,??DataTable4_17
        MOVS     R2,#+10
        STRB     R2,[R0, #+1]
        B.N      ??mcg_div_count_2
//  483         else if(clk <= 12 * MAX_BUS_CLK)   mcg_div.bus_div = 11;        // bus  = MCG/12
??mcg_div_count_12:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+900
        BGT.N    ??mcg_div_count_13
        LDR.W    R0,??DataTable4_17
        MOVS     R2,#+11
        STRB     R2,[R0, #+1]
        B.N      ??mcg_div_count_2
//  484         else if(clk <= 13 * MAX_BUS_CLK)   mcg_div.bus_div = 12;        // bus  = MCG/13
??mcg_div_count_13:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+976
        BGE.N    ??mcg_div_count_14
        LDR.W    R0,??DataTable4_17
        MOVS     R2,#+12
        STRB     R2,[R0, #+1]
        B.N      ??mcg_div_count_2
//  485         else if(clk <= 14 * MAX_BUS_CLK)   mcg_div.bus_div = 13;        // bus  = MCG/14
??mcg_div_count_14:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVW     R0,#+1051
        CMP      R1,R0
        BGE.N    ??mcg_div_count_15
        LDR.W    R0,??DataTable4_17
        MOVS     R2,#+13
        STRB     R2,[R0, #+1]
        B.N      ??mcg_div_count_2
//  486         else if(clk <= 15 * MAX_BUS_CLK)   mcg_div.bus_div = 14;        // bus  = MCG/15
??mcg_div_count_15:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVW     R0,#+1126
        CMP      R1,R0
        BGE.N    ??mcg_div_count_16
        LDR.W    R0,??DataTable4_17
        MOVS     R2,#+14
        STRB     R2,[R0, #+1]
        B.N      ??mcg_div_count_2
//  487         else                              mcg_div.bus_div = 15;         // bus  = MCG/16
??mcg_div_count_16:
        LDR.W    R0,??DataTable4_17
        MOVS     R2,#+15
        STRB     R2,[R0, #+1]
//  488 
//  489         if     (clk <= 1 * MAX_FLEXBUS_CLK)   mcg_div.flex_div = 0;     // flex bus  = MCG
??mcg_div_count_2:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+26
        BGE.N    ??mcg_div_count_17
        LDR.W    R0,??DataTable4_17
        MOVS     R2,#+0
        STRB     R2,[R0, #+2]
        B.N      ??mcg_div_count_18
//  490         else if(clk <= 2 * MAX_FLEXBUS_CLK)   mcg_div.flex_div = 1;     // flex bus  = MCG/2
??mcg_div_count_17:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+51
        BGE.N    ??mcg_div_count_19
        LDR.W    R0,??DataTable4_17
        MOVS     R2,#+1
        STRB     R2,[R0, #+2]
        B.N      ??mcg_div_count_18
//  491         else if(clk <= 3 * MAX_FLEXBUS_CLK)   mcg_div.flex_div = 2;     // flex bus  = MCG/3
??mcg_div_count_19:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+76
        BGE.N    ??mcg_div_count_20
        LDR.W    R0,??DataTable4_17
        MOVS     R2,#+2
        STRB     R2,[R0, #+2]
        B.N      ??mcg_div_count_18
//  492         else if(clk <= 4 * MAX_FLEXBUS_CLK)   mcg_div.flex_div = 3;     // flex bus  = MCG/4
??mcg_div_count_20:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+101
        BGE.N    ??mcg_div_count_21
        LDR.N    R0,??DataTable4_17
        MOVS     R2,#+3
        STRB     R2,[R0, #+2]
        B.N      ??mcg_div_count_18
//  493         else if(clk <= 5 * MAX_FLEXBUS_CLK)   mcg_div.flex_div = 4;     // flex bus  = MCG/5
??mcg_div_count_21:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+126
        BGE.N    ??mcg_div_count_22
        LDR.N    R0,??DataTable4_17
        MOVS     R2,#+4
        STRB     R2,[R0, #+2]
        B.N      ??mcg_div_count_18
//  494         else if(clk <= 6 * MAX_FLEXBUS_CLK)   mcg_div.flex_div = 5;     // flex bus  = MCG/6
??mcg_div_count_22:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+151
        BGE.N    ??mcg_div_count_23
        LDR.N    R0,??DataTable4_17
        MOVS     R2,#+5
        STRB     R2,[R0, #+2]
        B.N      ??mcg_div_count_18
//  495         else if(clk <= 7 * MAX_FLEXBUS_CLK)   mcg_div.flex_div = 6;     // flex bus  = MCG/7
??mcg_div_count_23:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+176
        BGE.N    ??mcg_div_count_24
        LDR.N    R0,??DataTable4_17
        MOVS     R2,#+6
        STRB     R2,[R0, #+2]
        B.N      ??mcg_div_count_18
//  496         else if(clk <= 8 * MAX_FLEXBUS_CLK)   mcg_div.flex_div = 7;     // flex bus  = MCG/8
??mcg_div_count_24:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+201
        BGE.N    ??mcg_div_count_25
        LDR.N    R0,??DataTable4_17
        MOVS     R2,#+7
        STRB     R2,[R0, #+2]
        B.N      ??mcg_div_count_18
//  497         else if(clk <= 9 * MAX_FLEXBUS_CLK)   mcg_div.flex_div = 8;     // flex bus  = MCG/9
??mcg_div_count_25:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+226
        BGE.N    ??mcg_div_count_26
        LDR.N    R0,??DataTable4_17
        MOVS     R2,#+8
        STRB     R2,[R0, #+2]
        B.N      ??mcg_div_count_18
//  498         else if(clk <= 10 * MAX_FLEXBUS_CLK)   mcg_div.flex_div = 9;    // flex bus  = MCG/10
??mcg_div_count_26:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+251
        BGE.N    ??mcg_div_count_27
        LDR.N    R0,??DataTable4_17
        MOVS     R2,#+9
        STRB     R2,[R0, #+2]
        B.N      ??mcg_div_count_18
//  499         else if(clk <= 11 * MAX_FLEXBUS_CLK)   mcg_div.flex_div = 10;   // flex bus  = MCG/11
??mcg_div_count_27:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+276
        BGE.N    ??mcg_div_count_28
        LDR.N    R0,??DataTable4_17
        MOVS     R2,#+10
        STRB     R2,[R0, #+2]
        B.N      ??mcg_div_count_18
//  500         else if(clk <= 12 * MAX_FLEXBUS_CLK)   mcg_div.flex_div = 11;   // flex bus  = MCG/12
??mcg_div_count_28:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+300
        BGT.N    ??mcg_div_count_29
        LDR.N    R0,??DataTable4_17
        MOVS     R2,#+11
        STRB     R2,[R0, #+2]
        B.N      ??mcg_div_count_18
//  501         else if(clk <= 13 * MAX_FLEXBUS_CLK)   mcg_div.flex_div = 12;   // flex bus  = MCG/13
??mcg_div_count_29:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+326
        BGE.N    ??mcg_div_count_30
        LDR.N    R0,??DataTable4_17
        MOVS     R2,#+12
        STRB     R2,[R0, #+2]
        B.N      ??mcg_div_count_18
//  502         else if(clk <= 14 * MAX_FLEXBUS_CLK)   mcg_div.flex_div = 13;   // flex bus  = MCG/14
??mcg_div_count_30:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+350
        BGT.N    ??mcg_div_count_31
        LDR.N    R0,??DataTable4_17
        MOVS     R2,#+13
        STRB     R2,[R0, #+2]
        B.N      ??mcg_div_count_18
//  503         else if(clk <= 15 * MAX_FLEXBUS_CLK)   mcg_div.flex_div = 14;   // flex bus  = MCG/15
??mcg_div_count_31:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+376
        BGE.N    ??mcg_div_count_32
        LDR.N    R0,??DataTable4_17
        MOVS     R2,#+14
        STRB     R2,[R0, #+2]
        B.N      ??mcg_div_count_18
//  504         else                                  mcg_div.flex_div = 15;    // flex bus  = MCG/16
??mcg_div_count_32:
        LDR.N    R0,??DataTable4_17
        MOVS     R2,#+15
        STRB     R2,[R0, #+2]
//  505 
//  506         if     (clk <= 1 * MAX_FLASH_CLK)   mcg_div.flash_div = 0;      // flash  = MCG
??mcg_div_count_18:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+26
        BGE.N    ??mcg_div_count_33
        LDR.N    R0,??DataTable4_17
        MOVS     R1,#+0
        STRB     R1,[R0, #+3]
        B.N      ??mcg_div_count_0
//  507         else if(clk <= 2 * MAX_FLASH_CLK)   mcg_div.flash_div = 1;      // flash  = MCG/2
??mcg_div_count_33:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+51
        BGE.N    ??mcg_div_count_34
        LDR.N    R0,??DataTable4_17
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        B.N      ??mcg_div_count_0
//  508         else if(clk <= 3 * MAX_FLASH_CLK)   mcg_div.flash_div = 2;      // flash  = MCG/3
??mcg_div_count_34:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+76
        BGE.N    ??mcg_div_count_35
        LDR.N    R0,??DataTable4_17
        MOVS     R1,#+2
        STRB     R1,[R0, #+3]
        B.N      ??mcg_div_count_0
//  509         else if(clk <= 4 * MAX_FLASH_CLK)   mcg_div.flash_div = 3;      // flash  = MCG/4
??mcg_div_count_35:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+101
        BGE.N    ??mcg_div_count_36
        LDR.N    R0,??DataTable4_17
        MOVS     R1,#+3
        STRB     R1,[R0, #+3]
        B.N      ??mcg_div_count_0
//  510         else if(clk <= 5 * MAX_FLASH_CLK)   mcg_div.flash_div = 4;      // flash  = MCG/5
??mcg_div_count_36:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+126
        BGE.N    ??mcg_div_count_37
        LDR.N    R0,??DataTable4_17
        MOVS     R1,#+4
        STRB     R1,[R0, #+3]
        B.N      ??mcg_div_count_0
//  511         else if(clk <= 6 * MAX_FLASH_CLK)   mcg_div.flash_div = 5;      // flash  = MCG/6
??mcg_div_count_37:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+151
        BGE.N    ??mcg_div_count_38
        LDR.N    R0,??DataTable4_17
        MOVS     R1,#+5
        STRB     R1,[R0, #+3]
        B.N      ??mcg_div_count_0
//  512         else if(clk <= 7 * MAX_FLASH_CLK)   mcg_div.flash_div = 6;      // flash  = MCG/7
??mcg_div_count_38:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+176
        BGE.N    ??mcg_div_count_39
        LDR.N    R0,??DataTable4_17
        MOVS     R1,#+6
        STRB     R1,[R0, #+3]
        B.N      ??mcg_div_count_0
//  513         else if(clk <= 8 * MAX_FLASH_CLK)   mcg_div.flash_div = 7;      // flash  = MCG/8
??mcg_div_count_39:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+201
        BGE.N    ??mcg_div_count_40
        LDR.N    R0,??DataTable4_17
        MOVS     R1,#+7
        STRB     R1,[R0, #+3]
        B.N      ??mcg_div_count_0
//  514         else if(clk <= 9 * MAX_FLASH_CLK)   mcg_div.flash_div = 8;      // flash  = MCG/9
??mcg_div_count_40:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+226
        BGE.N    ??mcg_div_count_41
        LDR.N    R0,??DataTable4_17
        MOVS     R1,#+8
        STRB     R1,[R0, #+3]
        B.N      ??mcg_div_count_0
//  515         else if(clk <= 10 * MAX_FLASH_CLK)   mcg_div.flash_div = 9;     // flash  = MCG/10
??mcg_div_count_41:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+251
        BGE.N    ??mcg_div_count_42
        LDR.N    R0,??DataTable4_17
        MOVS     R1,#+9
        STRB     R1,[R0, #+3]
        B.N      ??mcg_div_count_0
//  516         else if(clk <= 11 * MAX_FLASH_CLK)   mcg_div.flash_div = 10;    // flash  = MCG/11
??mcg_div_count_42:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+276
        BGE.N    ??mcg_div_count_43
        LDR.N    R0,??DataTable4_17
        MOVS     R1,#+10
        STRB     R1,[R0, #+3]
        B.N      ??mcg_div_count_0
//  517         else if(clk <= 12 * MAX_FLASH_CLK)   mcg_div.flash_div = 11;    // flash  = MCG/12
??mcg_div_count_43:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+300
        BGT.N    ??mcg_div_count_44
        LDR.N    R0,??DataTable4_17
        MOVS     R1,#+11
        STRB     R1,[R0, #+3]
        B.N      ??mcg_div_count_0
//  518         else if(clk <= 13 * MAX_FLASH_CLK)   mcg_div.flash_div = 12;    // flash  = MCG/13
??mcg_div_count_44:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+326
        BGE.N    ??mcg_div_count_45
        LDR.N    R0,??DataTable4_17
        MOVS     R1,#+12
        STRB     R1,[R0, #+3]
        B.N      ??mcg_div_count_0
//  519         else if(clk <= 14 * MAX_FLASH_CLK)   mcg_div.flash_div = 13;    // flash  = MCG/14
??mcg_div_count_45:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+350
        BGT.N    ??mcg_div_count_46
        LDR.N    R0,??DataTable4_17
        MOVS     R1,#+13
        STRB     R1,[R0, #+3]
        B.N      ??mcg_div_count_0
//  520         else if(clk <= 15 * MAX_FLASH_CLK)   mcg_div.flash_div = 14;    // flash  = MCG/15
??mcg_div_count_46:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+376
        BGE.N    ??mcg_div_count_47
        LDR.N    R0,??DataTable4_17
        MOVS     R1,#+14
        STRB     R1,[R0, #+3]
        B.N      ??mcg_div_count_0
//  521         else                                mcg_div.flash_div = 15;     // flash  = MCG/16
??mcg_div_count_47:
        LDR.N    R0,??DataTable4_17
        MOVS     R1,#+15
        STRB     R1,[R0, #+3]
//  522     }
//  523 }
??mcg_div_count_0:
        BX       LR               ;; return
//  524 
//  525 /*!
//  526  *  @brief      PLL超频
//  527  *  @param      PLL_e       频率设置参数
//  528  *  @return     超频频率（MHz）
//  529  *  @since      v5.0
//  530  *  @warning    此函数只能在 复位后没进行任何频率设置情况下调用，即MCG在FEI模式下才可调用
//  531  *  Sample usage:       uint8 clk = pll_init(PLL100);        //超频
//  532  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  533 uint8 pll_init(PLL_e pll)
//  534 {
pll_init:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  535 
//  536     mcg_div_count( pll);
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       mcg_div_count
//  537 
//  538     //上电复位后，单片机会自动进入 FEI 模式，使用 内部参考时钟
//  539 
//  540     //FEI -> FBE
//  541     MCG_C2 &= ~MCG_C2_LP_MASK;
        LDR.N    R0,??DataTable4_18  ;; 0x40064001
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0xFD
        LDR.N    R1,??DataTable4_18  ;; 0x40064001
        STRB     R0,[R1, #+0]
//  542     MCG_C2 |= MCG_C2_RANGE(1);
        LDR.N    R0,??DataTable4_18  ;; 0x40064001
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x10
        LDR.N    R1,??DataTable4_18  ;; 0x40064001
        STRB     R0,[R1, #+0]
//  543 
//  544     MCG_C1 = MCG_C1_CLKS(2) | MCG_C1_FRDIV(7);
        LDR.N    R0,??DataTable4_19  ;; 0x40064000
        MOVS     R1,#+184
        STRB     R1,[R0, #+0]
//  545 
//  546     while (MCG_S & MCG_S_IREFST_MASK) {};                       //等待FLL参考时钟 为 外部参考时钟（S[IREFST]=0，表示使用外部参考时钟，）
??pll_init_0:
        LDR.N    R0,??DataTable4_20  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+27
        BMI.N    ??pll_init_0
//  547 
//  548     while (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x2) {}; //等待选择外部参考时钟
??pll_init_1:
        LDR.N    R0,??DataTable4_20  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        UBFX     R0,R0,#+2,#+2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??pll_init_1
//  549 
//  550     //现在已经进入了 FBE模式
//  551 
//  552     //FBE -> PBE
//  553     set_sys_dividers(mcg_div.core_div, mcg_div.bus_div, mcg_div.flex_div, mcg_div.flash_div); //设置系统分频因子选项
        LDR.N    R0,??DataTable4_17
        LDRB     R3,[R0, #+3]
        LDR.N    R0,??DataTable4_17
        LDRB     R2,[R0, #+2]
        LDR.N    R0,??DataTable4_17
        LDRB     R1,[R0, #+1]
        LDR.N    R0,??DataTable4_17
        LDRB     R0,[R0, #+0]
        BL       set_sys_dividers
//  554 
//  555     MCG_C5 = MCG_C5_PRDIV(mcg_cfg[pll].prdiv);                      //分频， EXTAL_IN_MHz/( PRDIV+1)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable4_16
        ADDS     R0,R0,R4, LSL #+2
        LDRB     R0,[R0, #+2]
        ANDS     R0,R0,#0x7
        LDR.N    R1,??DataTable4_21  ;; 0x40064004
        STRB     R0,[R1, #+0]
//  556     MCG_C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(mcg_cfg[pll].vdiv) ;    //倍频， EXTAL_IN_MHz/( PRDIV+1)  * (VDIV+24)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable4_16
        ADDS     R0,R0,R4, LSL #+2
        LDRB     R0,[R0, #+3]
        ANDS     R0,R0,#0x1F
        ORRS     R0,R0,#0x40
        LDR.N    R1,??DataTable4_22  ;; 0x40064005
        STRB     R0,[R1, #+0]
//  557 
//  558     while (!(MCG_S & MCG_S_PLLST_MASK)) {};                         //等待时钟源选择PLL
??pll_init_2:
        LDR.N    R0,??DataTable4_20  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??pll_init_2
//  559 
//  560     while (!(MCG_S & MCG_S_LOCK_MASK)) {};                          //等待 PLL锁了（锁相环）
??pll_init_3:
        LDR.N    R0,??DataTable4_20  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+25
        BPL.N    ??pll_init_3
//  561 
//  562     // 现在已经进入了 PBE 模式
//  563 
//  564     // PBE -> PEE
//  565     MCG_C1 &= ~MCG_C1_CLKS_MASK;
        LDR.N    R0,??DataTable4_19  ;; 0x40064000
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0x3F
        LDR.N    R1,??DataTable4_19  ;; 0x40064000
        STRB     R0,[R1, #+0]
//  566 
//  567     while (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x3) {};//等待选择输出PLL
??pll_init_4:
        LDR.N    R0,??DataTable4_20  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        UBFX     R0,R0,#+2,#+2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+3
        BNE.N    ??pll_init_4
//  568 
//  569     // 现在已经进入了 PEE 模式
//  570 
//  571     return mcg_cfg[pll].clk;
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable4_16
        LDRH     R0,[R0, R4, LSL #+2]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4,PC}          ;; return
//  572 } //pll_init
//  573 
//  574 /*!
//  575  *  @brief      PITn定时中断
//  576  *  @param      PITn        模块号（PIT0~PIT3）
//  577  *  @param      cnt         定时中断时间(单位为bus时钟周期)
//  578  *  @since      v5.0
//  579  *  Sample usage:
//  580                     pit_init(PIT0, 1000);                          //定时 1000 个bus时钟 后中断
//  581                     set_vector_handler(PIT0_VECTORn,pit_hander);   // 设置中断复位函数到中断向量表里
//  582                     enable_irq(PIT0_IRQn);                         // 使能LPTMR中断
//  583  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  584 void pit_init(PITn pitn, uint32 cnt)
//  585 {
//  586     //PIT 用的是 Bus Clock 总线频率
//  587     //溢出计数 = 总线频率 * 时间
//  588     SIM_SCGC6       |= SIM_SCGC6_PIT_MASK;          //使能PIT时钟
pit_init:
        LDR.N    R2,??DataTable4_23  ;; 0x4004803c
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x800000
        LDR.N    R3,??DataTable4_23  ;; 0x4004803c
        STR      R2,[R3, #+0]
//  589 
//  590     PIT_MCR         = (0
//  591                        //| PIT_MCR_MDIS_MASK       //禁用PIT定时器时钟选择（0表示使能PIT，1表示禁止PIT）
//  592                        //| PIT_MCR_FRZ_MASK        //调试模式下停止运行（0表示继续运行，1表示停止运行）
//  593                       );
        LDR.N    R2,??DataTable4_24  ;; 0x40037000
        MOVS     R3,#+0
        STR      R3,[R2, #+0]
//  594 
//  595     PIT_LDVAL(pitn)  = cnt - 1 ;                    //设置溢出中断时间
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R2,R0,#+4
        LDR.N    R3,??DataTable4_25  ;; 0x40037100
        SUBS     R1,R1,#+1
        STR      R1,[R2, R3]
//  596 
//  597     PIT_Flag_Clear(pitn);                           //清中断标志位
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable4_25  ;; 0x40037100
        ADDS     R1,R1,R0, LSL #+4
        LDR      R1,[R1, #+12]
        ORRS     R1,R1,#0x1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable4_25  ;; 0x40037100
        ADDS     R2,R2,R0, LSL #+4
        STR      R1,[R2, #+12]
//  598 
//  599     PIT_TCTRL(pitn) &= ~ PIT_TCTRL_TEN_MASK;        //禁止PITn定时器（用于清空计数值）
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable4_25  ;; 0x40037100
        ADDS     R1,R1,R0, LSL #+4
        LDR      R1,[R1, #+8]
        LSRS     R1,R1,#+1
        LSLS     R1,R1,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable4_25  ;; 0x40037100
        ADDS     R2,R2,R0, LSL #+4
        STR      R1,[R2, #+8]
//  600     PIT_TCTRL(pitn)  = ( 0
//  601                          | PIT_TCTRL_TEN_MASK        //使能 PITn定时器
//  602                          | PIT_TCTRL_TIE_MASK        //开PITn中断
//  603                        );
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable4_25  ;; 0x40037100
        ADDS     R0,R1,R0, LSL #+4
        MOVS     R1,#+3
        STR      R1,[R0, #+8]
//  604 
//  605     //enable_irq((int)pitn + PIT0_IRQn);            //开中断
//  606 }
        BX       LR               ;; return
//  607 
//  608 /*!
//  609  *  @brief      设置中断向量表里的中断复位函数
//  610  *  @since      v5.0
//  611  *  @warning    只有中断向量表位于icf指定的RAM区域时，此函数才有效
//  612  *  Sample usage:       set_vector_handler(UART3_RX_TX_VECTORn , uart3_handler);    //把 uart3_handler 函数添加到中断向量表
//  613  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  614 void set_vector_handler(VECTORn_t vector , void pfunc_handler(void))
//  615 {
//  616     extern uint32 __VECTOR_RAM[];
//  617     
//  618     __VECTOR_RAM[vector] = (uint32)pfunc_handler;
set_vector_handler:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable4_2
        STR      R1,[R2, R0, LSL #+2]
//  619 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     0x4005200e

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     0x40052000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     __VECTOR_RAM

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     __VECTOR_TABLE

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     SFB(`.data`)

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     SFB(`.data_init`)

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_6:
        DC32     SFE(`.data_init`)

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_7:
        DC32     SFB(`.bss`)

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_8:
        DC32     SFE(`.bss`)

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_9:
        DC32     SFB(CodeRelocateRam)

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_10:
        DC32     SFB(CodeRelocate)

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_11:
        DC32     SFE(CodeRelocate)

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_12:
        DC32     core_clk_mhz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_13:
        DC32     core_clk_khz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_14:
        DC32     0x40048044

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_15:
        DC32     bus_clk_khz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_16:
        DC32     mcg_cfg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_17:
        DC32     mcg_div

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_18:
        DC32     0x40064001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_19:
        DC32     0x40064000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_20:
        DC32     0x40064006

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_21:
        DC32     0x40064004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_22:
        DC32     0x40064005

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_23:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_24:
        DC32     0x40037000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_25:
        DC32     0x40037100

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.data_init`:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION CodeRelocate:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION CodeRelocateRam:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 
//    12 bytes in section .bss
//    92 bytes in section .data
// 1 040 bytes in section .intvec
// 1 406 bytes in section .text
//    76 bytes in section .textrw
// 
// 1 482 bytes of CODE  memory
// 1 040 bytes of CONST memory
//   104 bytes of DATA  memory
//
//Errors: none
//Warnings: none
