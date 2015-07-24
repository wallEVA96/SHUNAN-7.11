///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     20/Jul/2015  17:20:54 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\创作室\飞思卡尔智能小车\顺暗三号\代码\顺暗三号-华南� /
//                    詈笃咛�-7.11\ShunAn_Panel\main.c                      /
//    Command line =  D:\创作室\飞思卡尔智能小车\顺暗三号\代码\顺暗三号-华南� /
//                    詈笃咛�-7.11\ShunAn_Panel\main.c -D IAR -D            /
//                    TWR_K60F120M -lCN D:\创作室\飞思卡尔智能小车\顺暗三号\� /
//                    隲顺暗三号-华南赛最后七天-7.11\FLASH_1MB\List\ -lB    /
//                    D:\创作室\飞思卡尔智能小车\顺暗三号\代码\顺暗三号-华南� /
//                    詈笃咛�-7.11\FLASH_1MB\List\ -o                       /
//                    D:\创作室\飞思卡尔智能小车\顺暗三号\代码\顺暗三号-华南� /
//                    詈笃咛�-7.11\FLASH_1MB\Obj\ --no_cse --no_unroll      /
//                    --no_inline --no_code_motion --no_tbaa --no_clustering  /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=VFPv4_sp --dlib_config         /
//                    "C:\Program Files (x86)\IAR Systems\Embedded Workbench  /
//                    6.5\arm\INC\c\DLib_Config_Normal.h" -I                  /
//                    D:\创作室\飞思卡尔智能小车\顺暗三号\代码\顺暗三号-华南� /
//                    詈笃咛�-7.11\ -I D:\创作室\飞思卡尔智能小车\顺暗三号\ /
//                    代码\顺暗三号-华南赛最后七天-7.11\Library\ -I           /
//                    D:\创作室\飞思卡尔智能小车\顺暗三号\代码\顺暗三号-华南� /
//                    詈笃咛�-7.11\Library\BlessedAlien\ -I                 /
//                    D:\创作室\飞思卡尔智能小车\顺暗三号\代码\顺暗三号-华南� /
//                    詈笃咛�-7.11\ShunAn_Panel\ -Ol --use_c++_inline       /
//    List file    =  D:\创作室\飞思卡尔智能小车\顺暗三号\代码\顺暗三号-华南� /
//                    詈笃咛�-7.11\FLASH_1MB\List\main.s                    /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN DEBUG_INFORMATION
        EXTERN b_Beholder_Init
        EXTERN b_Beholder_InteruptInit
        EXTERN b_Navigation_Init
        EXTERN bus_clk_khz
        EXTERN disable_irq
        EXTERN enable_irq
        EXTERN m_CarRunningMode
        EXTERN m_Control
        EXTERN m_ImageAbstract
        EXTERN m_ImageTesting
        EXTERN m_ModeMachine
        EXTERN modeMachine_Testing_TurnOnMode
        EXTERN pit_init
        EXTERN set_irq_priority
        EXTERN set_vector_handler
        EXTERN vPtr_CheckLightingChaser
        EXTERN v_Buzzer_Init
        EXTERN v_Buzzer_OutPut
        EXTERN v_ExInterface_Init
        EXTERN v_LightingChaser_Init
        EXTERN v_LoadingControlPara
        EXTERN v_ModeMachine_KeyInput_TurnCut
        EXTERN v_MonoRev_6x8Str
        EXTERN v_MonoShow_BlackBar
        EXTERN v_MonoShow_BlackCutBar
        EXTERN v_MonoShow_BlackRtAngle
        EXTERN v_MonoShow_BlackTurning
        EXTERN v_MonoShow_Buzzer
        EXTERN v_MonoShow_OutOfTheRtAngle
        EXTERN v_MonoShow_isLonly
        EXTERN v_Servo_Init
        EXTERN v_Servo_Out
        EXTERN v_UartInit
        EXTERN v_Uart_GetPicture_InRunning
        EXTERN v_motor_Init
        EXTERN v_motor_doneFunc
        EXTERN v_shudderBeforeReve_Init
        EXTERN v_speed_Give
        EXTERN v_systemPara_Init
        EXTERN v_system_clocked

        PUBLIC MonoColor
        PUBLIC m_system
        PUBLIC main
        PUBLIC v_system_clocker_user_done

// D:\创作室\飞思卡尔智能小车\顺暗三号\代码\顺暗三号-华南赛最后七天-7.11\ShunAn_Panel\main.c
//    1 /*
//    2 *文件名：              main.c
//    3 *说明：                顺暗main文件
//    4 *所用芯片型号：        MK60FX512VQL15
//    5 *创建时间：            2014/11/29
//    6 *作者：                中南大学朱葛峻
//    7 */
//    8 #include "arm_cm4.h"
//    9 #include "start_ShunAn.h"
//   10 //#include "Bluetooth.h"
//   11 //============================================================================//
//   12 // 以下包含为数学库 2014.12.19
//   13 #include "ShunAn_Lib.h"
//   14 //#include <math.h>
//   15 //============================================================================//
//   16 // 以下包含为外部硬件库 2015.1.12
//   17 #include "Poet_Revelation.h" // 显示屏
//   18 #include "Poet_Servo.h" // 舵机
//   19 #include "Poet_Navigation.h" // 导航
//   20 #include "Poet_Motor.h" // 电机
//   21 #include "Poet_ImageBeholder.h" // 摄像头
//   22 #include "Poet_Bluetooth.h" // 串口
//   23 //#include "Poet_Scourage.h" // Flash
//   24 #include "Poet_Buzzer.h" // 蜂鸣器初始化
//   25 #include "Poet_InputInterface.h" // 按键
//   26 //#include <stdlib.h>
//   27 #include <stdio.h>
//   28 
//   29 #include "ThePoet_ThePendulum.h"//
//   30 #include "Pendulum_EndlessFormsMostBeautiful.h"//
//   31 //
//   32 //============================================================================//
//   33 //#include <math.h>
//   34 //#include "IIC.h"//0x1FFF0410//0x1FFFFFFF
//   35 //s_selftest m_selftest = {.error_occur = 0,.b_imageBeholder_status = 0};//定义外部变量，原变量在ShunAn_Lib.h

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   36 s_system m_system = {.timer = 0,.BuzzerBeep_time = 0,.BuzzerBeep_LastingTime = 0,.control_isDone = 0
m_system:
        DS8 24
//   37                     ,.uarttx_timer = 0};//系统初始化
//   38 
//   39 //uint8 view_BeholderDataArray[Beholder_LineY_MAX][Beholder_PixNum_MAX];
//   40 //uint8 Open_flag = 0;
//   41 
//   42 //uint16 Servo_Var = 0;
//   43 //char tx11[21];
//   44 

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   45 uint16 MonoColor = 0;
MonoColor:
        DS8 2

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   46 void main()
//   47 {
main:
        PUSH     {R7,LR}
//   48     m_CarRunningMode.isCloseTheLightingStop = 0;
        LDR.N    R0,??DataTable0_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+12]
//   49     
//   50     m_CarRunningMode.isUsedDoubleServoPID = 0;
        LDR.N    R0,??DataTable0_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//   51     m_CarRunningMode.DoubleServoPIDRatio = 1.5f;
        LDR.N    R0,??DataTable0_1
        MOVS     R1,#+1069547520
        STR      R1,[R0, #+4]
//   52     
//   53     m_ImageAbstract.RampExist = 0;
        LDR.N    R0,??DataTable0_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+1]
//   54     
//   55     m_ImageAbstract.openTheRamp = 1;
        LDR.N    R0,??DataTable0_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//   56     
//   57     m_ImageTesting.Back2Angel_LineCounter = 10;
        LDR.N    R0,??DataTable0_3
        MOVS     R1,#+10
        STRB     R1,[R0, #+134]
//   58     
//   59     vPtr_CheckLightingChaser = 0;
        LDR.N    R0,??DataTable0_4
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   60     
//   61     m_ImageAbstract.LonlyLine_VeryStraightGetCorner_AboutDeadLine_Val_Y = 255;
        LDR.N    R0,??DataTable0_2
        MOVS     R1,#+255
        STRB     R1,[R0, #+556]
//   62     m_ImageAbstract.LonlyLine_VeryStraightGetCorner_AboutDeadLine_Var_x = 255;
        LDR.N    R0,??DataTable0_2
        MOVS     R1,#+255
        STRB     R1,[R0, #+555]
//   63     m_Control.LightChaserLogic = 0;
        LDR.N    R0,??DataTable0_5
        MOVS     R1,#+0
        STRB     R1,[R0, #+7]
//   64     v_LightingChaser_Init();//灯塔初始化
        BL       v_LightingChaser_Init
//   65     m_ImageAbstract.LonlyLine_Status = LLT_NaN;
        LDR.N    R0,??DataTable0_2
        MOVS     R1,#+3
        STRB     R1,[R0, #+544]
//   66     v_Uart_GetPicture_InRunning(0,0);
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       v_Uart_GetPicture_InRunning
//   67     m_Control.v_MotorControlSpeed = v_speed_Give;//n_getSteerMiddleLine_UsedAverage;//使用
        LDR.N    R0,??DataTable0_5
        LDR.N    R1,??DataTable0_6
        STR      R1,[R0, #+220]
//   68     EnableInterrupts;//
        CPSIE i
//   69     //测试脚E6 E7
//   70     //OLED
//   71     //D2 D5
//   72     //m_ImageAbstract.LonlyLine_1isLasting2isBacking0isNot = 0;
//   73     m_Control.Motor_ControlPara_P_Number = 41.f;//15//25大了//22.f
        LDR.N    R0,??DataTable0_5
        LDR.N    R1,??DataTable0_7  ;; 0x42240000
        STR      R1,[R0, #+148]
//   74     m_Control.Motor_ControlPara_I_Number = 1.2f;//1//5大了
        LDR.N    R0,??DataTable0_5
        LDR.N    R1,??DataTable0_8  ;; 0x3f99999a
        STR      R1,[R0, #+152]
//   75     m_Control.Motor_ControlPara_D_Number = 0;
        LDR.N    R0,??DataTable0_5
        MOVS     R1,#+0
        STR      R1,[R0, #+156]
//   76     m_Control.P_Curve = 4.08f;////
        LDR.N    R0,??DataTable0_5
        LDR.N    R1,??DataTable0_9  ;; 0x40828f5c
        STR      R1,[R0, #+136]
//   77     m_Control.K_Curve = 2.f;
        LDR.N    R0,??DataTable0_5
        MOVS     R1,#+1073741824
        STR      R1,[R0, #+140]
//   78     m_Control.ServoDiff = 1.7f;//1.6f为出弯正好，入弯慢//1.9f//不加舵机微分将会有100ms的延迟
        LDR.N    R0,??DataTable0_5
        LDR.N    R1,??DataTable0_10  ;; 0x3fd9999a
        STR      R1,[R0, #+36]
//   79     m_Control.servo_imageYstopLine = 40;//35;
        LDR.N    R0,??DataTable0_5
        MOVS     R1,#+40
        STRB     R1,[R0, #+132]
//   80     //2.3f=>大约有90~120ms的舵机超前作用，但相对中线仍滞后100ms
//   81     //3.2f=>剧烈振荡在转角之前
//   82     v_systemPara_Init();//参数初始化
        BL       v_systemPara_Init
//   83     /*----------------------系统时间初始化------------------------*/
//   84     pit_init_ms(PIT0,100); // 设定PIT中断周期 100ms
        LDR.N    R0,??DataTable0_11
        LDR      R0,[R0, #+0]
        MOVS     R1,#+100
        MUL      R1,R1,R0
        MOVS     R0,#+0
        BL       pit_init
//   85     m_system.time_ratio = 100;
        LDR.N    R0,??DataTable0_12
        MOVS     R1,#+100
        STR      R1,[R0, #+4]
//   86     set_vector_handler(PIT0_VECTORn,v_system_clocked); // 设定PIT中断函数指针 v_system_clocked
        LDR.N    R1,??DataTable0_13
        MOVS     R0,#+84
        BL       set_vector_handler
//   87     //enable_irq(PIT0_IRQn);//使能PIT中断
//   88     //系统时钟初始化
//   89     //
//   90     v_shudderBeforeReve_Init();//屏幕初始化
        BL       v_shudderBeforeReve_Init
//   91     v_ExInterface_Init();//按键初始化
        BL       v_ExInterface_Init
//   92     m_Control.ServoDeg = 100;//2603
        LDR.N    R0,??DataTable0_5
        MOVS     R1,#+100
        STRH     R1,[R0, #+32]
//   93     
//   94     m_Control.GiveSpeed = 180;//速度设定//200 => 速度大约是2m左右
        LDR.N    R0,??DataTable0_5
        MOVS     R1,#+180
        STRH     R1,[R0, #+108]
//   95     
//   96     m_Control.speed_max = 190;
        LDR.N    R0,??DataTable0_5
        MOVS     R1,#+190
        STRH     R1,[R0, #+0]
//   97     m_Control.speed_min = 175;
        LDR.N    R0,??DataTable0_5
        MOVS     R1,#+175
        STRH     R1,[R0, #+4]
//   98     m_Control.speed_cut = 185;
        LDR.N    R0,??DataTable0_5
        MOVS     R1,#+185
        STRH     R1,[R0, #+2]
//   99     
//  100     m_Control.speedCut = 80.f;
        LDR.N    R0,??DataTable0_5
        LDR.N    R1,??DataTable0_14  ;; 0x42a00000
        STR      R1,[R0, #+112]
//  101     m_Control.speedCutRatio = 4.f;
        LDR.N    R0,??DataTable0_5
        MOVS     R1,#+1082130432
        STR      R1,[R0, #+116]
//  102     m_Control.changeSpeedRatio = 100.f;
        LDR.N    R0,??DataTable0_5
        LDR.N    R1,??DataTable0_15  ;; 0x42c80000
        STR      R1,[R0, #+120]
//  103     
//  104     m_Control.motor_control_time = 0;
        LDR.N    R0,??DataTable0_5
        MOVS     R1,#+0
        STR      R1,[R0, #+124]
//  105     m_Control.image_Be2control_time = 0;
        LDR.N    R0,??DataTable0_5
        MOVS     R1,#+0
        STR      R1,[R0, #+128]
//  106     
//  107     v_Buzzer_Init();//音响初始化
        BL       v_Buzzer_Init
//  108     
//  109     v_Servo_Init();//舵机初始化
        BL       v_Servo_Init
//  110     v_Servo_Out(m_Control.ServoDeg);
        LDR.N    R0,??DataTable0_5
        LDRSH    R0,[R0, #+32]
        BL       v_Servo_Out
//  111     
//  112     v_motor_Init();//电机初始化
        BL       v_motor_Init
//  113     v_UartInit(115200);//蓝牙初始化
        MOVS     R0,#+115200
        BL       v_UartInit
//  114     DEBUG_INFORMATION("Someting Done.");//提示进程
        LDR.N    R0,??DataTable0_16
        BL       DEBUG_INFORMATION
//  115     if('F' == b_Beholder_Init()){DEBUG_INFORMATION("It's image init.");}//摄像头引脚及寄存器初始化
        BL       b_Beholder_Init
        CMP      R0,#+70
        BNE.N    ??main_0
        LDR.N    R0,??DataTable0_17
        BL       DEBUG_INFORMATION
//  116     if('F' == b_Beholder_InteruptInit()){DEBUG_INFORMATION("It's image int init.");}////摄像头中断进行初始化
??main_0:
        BL       b_Beholder_InteruptInit
        CMP      R0,#+70
        BNE.N    ??main_1
        LDR.N    R0,??DataTable0_18
        BL       DEBUG_INFORMATION
//  117     if('F' == b_Navigation_Init()){DEBUG_INFORMATION("It's navigation init.");}////惯性导航初始化
??main_1:
        BL       b_Navigation_Init
        CMP      R0,#+70
        BNE.N    ??main_2
        LDR.N    R0,??DataTable0_19
        BL       DEBUG_INFORMATION
//  118     
//  119     m_system.time_ratio = 20;//50Hz//200Hz
??main_2:
        LDR.N    R0,??DataTable0_12
        MOVS     R1,#+20
        STR      R1,[R0, #+4]
//  120     
//  121     pit_init_ms(PIT1,2);//500us间隔时间
        LDR.N    R0,??DataTable0_11
        LDR      R0,[R0, #+0]
        LSLS     R1,R0,#+1
        MOVS     R0,#+1
        BL       pit_init
//  122     set_vector_handler(PIT1_VECTORn,v_motor_doneFunc);//控制周期更换
        LDR.N    R1,??DataTable0_20
        MOVS     R0,#+85
        BL       set_vector_handler
//  123     
//  124     set_irq_priority(PORTD_IRQn,3);//设置摄像头中断优先级
        MOVS     R1,#+3
        MOVS     R0,#+90
        BL       set_irq_priority
//  125     set_irq_priority(PIT1_IRQn,4);//设置中断优先级
        MOVS     R1,#+4
        MOVS     R0,#+69
        BL       set_irq_priority
//  126     
//  127     ENABLE_BEHOLDER_WORK;//开启摄像头工作
        LDR.N    R0,??DataTable0_12
        MOVS     R1,#+0
        STRB     R1,[R0, #+17]
        MOVS     R0,#+68
        BL       disable_irq
        MOVS     R0,#+90
        BL       enable_irq
//  128     
//  129     modeMachine_Testing_TurnOnMode();//设定当前状态机情况
        BL       modeMachine_Testing_TurnOnMode
//  130     
//  131     if(1 != DEBUG_INFORMATION("")){for(;;);}//死循环控制//有错误信息
        ADR.N    R0,??DataTable0  ;; ""
        BL       DEBUG_INFORMATION
        CMP      R0,#+1
        BEQ.N    ??main_3
??main_4:
        B.N      ??main_4
//  132     
//  133     v_LoadingControlPara(&m_Control,&m_ImageAbstract);//更新参数表
??main_3:
        LDR.N    R1,??DataTable0_2
        LDR.N    R0,??DataTable0_5
        BL       v_LoadingControlPara
        B.N      ??main_5
//  134     
//  135     
//  136     
//  137     while(1)//死循环
//  138     {
//  139         BuzzerBeep_Process();
??main_6:
        MOVS     R0,#+0
        BL       v_Buzzer_OutPut
//  140         
//  141         v_ModeMachine_KeyInput_TurnCut();//按键事件驱动
??main_7:
        BL       v_ModeMachine_KeyInput_TurnCut
//  142         if(0 != m_ModeMachine.always_done){m_ModeMachine.always_done();}
        LDR.N    R0,??DataTable0_21
        LDR      R0,[R0, #+28]
        CMP      R0,#+0
        BEQ.N    ??main_8
        LDR.N    R0,??DataTable0_21
        LDR      R0,[R0, #+28]
        BLX      R0
//  143         
//  144         v_MonoShow_BlackRtAngle(m_ModeMachine.showRtBlackAngle);
??main_8:
        LDR.N    R0,??DataTable0_21
        LDRB     R0,[R0, #+35]
        BL       v_MonoShow_BlackRtAngle
//  145         v_MonoShow_Buzzer(m_ModeMachine.showBuzzerInformation);
        LDR.N    R0,??DataTable0_21
        LDRB     R0,[R0, #+32]
        BL       v_MonoShow_Buzzer
//  146         v_MonoShow_isLonly(m_ModeMachine.showLonlyInformation);
        LDR.N    R0,??DataTable0_21
        LDRB     R0,[R0, #+33]
        BL       v_MonoShow_isLonly
//  147         v_MonoShow_BlackBar(m_ModeMachine.showBlackBar);
        LDR.N    R0,??DataTable0_21
        LDRB     R0,[R0, #+34]
        BL       v_MonoShow_BlackBar
//  148         v_MonoShow_BlackTurning(m_ModeMachine.showYcutDown);
        LDR.N    R0,??DataTable0_21
        LDRB     R0,[R0, #+36]
        BL       v_MonoShow_BlackTurning
//  149         v_MonoShow_BlackCutBar(m_ModeMachine.showBlackCutBar);
        LDR.N    R0,??DataTable0_21
        LDRB     R0,[R0, #+37]
        BL       v_MonoShow_BlackCutBar
//  150         v_MonoShow_OutOfTheRtAngle(m_ModeMachine.becauseThisOutOfTheBlackRtAngle);
        LDR.N    R0,??DataTable0_21
        LDRB     R0,[R0, #+38]
        BL       v_MonoShow_OutOfTheRtAngle
//  151         //v_MonoShow_BlackRtAngle(m_ModeMachine.showRtBlackAngle);
//  152         char ch = (m_Control.LightChaserLogic) + '0';
        LDR.N    R0,??DataTable0_5
        LDRB     R0,[R0, #+7]
        ADDS     R0,R0,#+48
        STRB     R0,[SP, #+0]
//  153         v_MonoRev_6x8Str(80,7,&ch,0);
        MOVS     R3,#+0
        ADD      R2,SP,#+0
        MOVS     R1,#+7
        MOVS     R0,#+80
        BL       v_MonoRev_6x8Str
??main_5:
        LDR.N    R0,??DataTable0_12
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable0_12
        LDR      R1,[R1, #+8]
        SUBS     R0,R0,R1
        LDR.N    R1,??DataTable0_12
        LDR      R1,[R1, #+12]
        CMP      R0,R1
        BCS.N    ??main_6
        MOVS     R0,#+1
        BL       v_Buzzer_OutPut
        B.N      ??main_7
//  154         //v_MonoRev_Number(98,7,m_ImageAbstract.Rt_Var,10);
//  155     }
//  156 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0:
        DC8      "",0x0,0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_1:
        DC32     m_CarRunningMode

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_2:
        DC32     m_ImageAbstract

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_3:
        DC32     m_ImageTesting

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_4:
        DC32     vPtr_CheckLightingChaser

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_5:
        DC32     m_Control

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_6:
        DC32     v_speed_Give

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_7:
        DC32     0x42240000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_8:
        DC32     0x3f99999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_9:
        DC32     0x40828f5c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_10:
        DC32     0x3fd9999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_11:
        DC32     bus_clk_khz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_12:
        DC32     m_system

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_13:
        DC32     v_system_clocked

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_14:
        DC32     0x42a00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_15:
        DC32     0x42c80000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_16:
        DC32     `?<Constant "Someting Done.">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_17:
        DC32     `?<Constant "It\\'s image init.">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_18:
        DC32     `?<Constant "It\\'s image int init.">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_19:
        DC32     `?<Constant "It\\'s navigation init.">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_20:
        DC32     v_motor_doneFunc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_21:
        DC32     m_ModeMachine
//  157 
//  158 /*
//  159 void v_user_done_after_ImageCut()
//  160 {
//  161     return;
//  162 }
//  163 */
//  164 /*
//  165 uint16 Angle = 0;
//  166 uint16 counter = 240;
//  167 uint16 AngleArray[800];
//  168 uint16 ServoCounter[800];
//  169 uint16 ArrayCounter = 0;
//  170 sint16 delta = 1;
//  171 */
//  172 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  173 void v_system_clocker_user_done()//用户执行部分
//  174 {
//  175     /*
//  176     m_Control.ServoAngle = n_GetServoAngle();//获取当前的角度信息
//  177     m_Control.LeftMotorSpeed = n_GetMotor_speed(FTM1_BASE_PTR);
//  178     m_Control.RightMotorSpeed = n_GetMotor_speed(FTM2_BASE_PTR);
//  179     v_Servo_Out(m_Control.ServoDeg);//输出角度
//  180     */
//  181 }
v_system_clocker_user_done:
        BX       LR               ;; return

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Someting Done.">`:
        DATA
        DC8 "Someting Done."
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "It\\'s image init.">`:
        DATA
        DC8 "It's image init."
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "It\\'s image int init.">`:
        DATA
        DC8 "It's image int init."
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "It\\'s navigation init.">`:
        DATA
        DC8 "It's navigation init."
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(0)
        DATA
        DC8 ""

        END
//  182 /*
//  183 The deepest solace lies in understanding
//  184 This ancient unseen stream
//  185 A shudder before the beautiful
//  186 
//  187 Awake Oceanborn
//  188 Behold this force
//  189 Bring the outside in
//  190 Explore the self to epiphany
//  191 
//  192 The very core of life
//  193 Is soaring higher of truth and light
//  194 
//  195 The music of this awe
//  196 Deep silence between the notes
//  197 Deafens me with endless love
//  198 This vagrant island Earth
//  199 A pilgrim shining bright
//  200 We are shuddering
//  201 Before the beautiful
//  202 Before the plentiful
//  203 We're the voyagers
//  204 
//  205 Tales from the seas
//  206 Cathedral of greed
//  207 
//  208 The very core of life
//  209 Is soaring higher of truth and light
//  210 
//  211 The music of this awe
//  212 Deep silence between the notes
//  213 Deafens me with endless love
//  214 This vagrant island Earth
//  215 A pilgrim shining bright
//  216 We are shuddering
//  217 Before the beautiful
//  218 Before the plentiful
//  219 We're the voyagers
//  220 
//  221 The unkown
//  222 The grand show
//  223 The choir of the stars
//  224 Interstellar
//  225 Theatre play
//  226 The nebula curtain falls
//  227 Imagination
//  228 Evolution
//  229 A species from the veil
//  230 As we wander
//  231 In search of
//  232 The source of the tale
//  233 
//  234 The music of this awe
//  235 Deep silence between the notes
//  236 Deafens me with endless love
//  237 This vagrant island Earth
//  238 A pilgrim shining bright
//  239 We are shuddering
//  240 Before the beautiful
//  241 Before the plentiful
//  242 We're the voyagers
//  243 */
// 
//  26 bytes in section .bss
//  85 bytes in section .rodata
// 660 bytes in section .text
// 
// 660 bytes of CODE  memory
//  85 bytes of CONST memory
//  26 bytes of DATA  memory
//
//Errors: none
//Warnings: none
