///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     27/Sep/2014  14:54:45 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\创作室\飞思卡尔智能小车\调试板\遥控器\ShunAn_Panel\C /
//                    ontrolPads.c                                            /
//    Command line =  D:\创作室\飞思卡尔智能小车\调试板\遥控器\ShunAn_Panel\C /
//                    ontrolPads.c -D IAR -D TWR_K60F120M -lCN                /
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
//                    \ControlPads.s                                          /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN CallBack_Back
        EXTERN DataScope_Create
        EXTERN FCN_NULL
        EXTERN _v_Cmd_Create
        EXTERN _v_Cmd_Idle
        EXTERN _v_Cmd_OnPend
        EXTERN _v_Window_Create
        EXTERN g_Buttons
        EXTERN g_ExInterfaces
        EXTERN g_RecBuffer
        EXTERN u8_Button_set
        EXTERN u8_uart_getAll
        EXTERN v_BIOS_6x8str_Ascii
        EXTERN v_Tooth_GyroAccel

        PUBLIC NULL_Tick
        PUBLIC ON_BUTTON
        PUBLIC ON_NONE
        PUBLIC ON_SWITCH
        PUBLIC ON_UART
        PUBLIC g_Message
        PUBLIC g_SysTem
        PUBLIC in
        PUBLIC msg_Run
        PUBLIC msg_operation
        PUBLIC v_OriginalSin
        PUBLIC x

// D:\创作室\飞思卡尔智能小车\调试板\遥控器\ShunAn_Panel\ControlPads.c
//    1 #include "MK60F15.h"
//    2 #include "ShunAn_Lib.h"
//    3 #include "start_ShunAn.h"
//    4 #include "BlessedAlien.h"
//    5 #include "ControlPads.h"
//    6 #include "ExInterface.h"
//    7 #include "BIOS.h"
//    8 #include "TFT.h"
//    9 #include "Bluetooth.h"

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   10 s_SysTem g_SysTem ={.TotalTime = 0,.Hardware_error  = 0,.Timer_Tick = &NULL_Tick};
g_SysTem:
        DATA
        DC32 0
        DC16 0
        DC8 0, 0
        DC32 NULL_Tick
//   11 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   12 void NULL_Tick(void)
//   13 {
//   14     return;
NULL_Tick:
        BX       LR               ;; return
//   15 }
//   16 /******************************************************************************/
//   17 /******************************************************************************/
//   18 /******************************************************************************/

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   19 void*(*msg_Run)(Message *);Message g_Message;
msg_Run:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
g_Message:
        DS8 12
//   20 /******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   21 uint8 msg_operation( Message * Msg_In )  // 消息执行函数
//   22 {
msg_operation:
        PUSH     {R7,LR}
//   23     msg_Run = (void*(*)(Message*))msg_Run(Msg_In); // 代码执行
        LDR.N    R1,??DataTable5_2
        LDR      R1,[R1, #+0]
        BLX      R1
        LDR.N    R1,??DataTable5_2
        STR      R0,[R1, #+0]
//   24     return 0;
        MOVS     R0,#+0
        POP      {R1,PC}          ;; return
//   25 }
//   26 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   27 void* (ON_NONE) (Message * Message_In)// 这里为接收数据
//   28 {
ON_NONE:
        PUSH     {R7,LR}
//   29     // 按键检索
//   30     if(0 == u8_uart_getAll(&g_RecBuffer)){return (void*)ON_UART;}
        LDR.N    R0,??DataTable5_3
        BL       u8_uart_getAll
        CMP      R0,#+0
        BNE.N    ??ON_NONE_0
        ADR.W    R0,ON_UART
        B.N      ??ON_NONE_1
//   31     if(0 == u8_Button_set(&g_Message,&g_Buttons,&g_ExInterfaces)){return (void*)ON_BUTTON;};
??ON_NONE_0:
        LDR.N    R2,??DataTable5_4
        LDR.N    R1,??DataTable5_5
        LDR.N    R0,??DataTable5_6
        BL       u8_Button_set
        CMP      R0,#+0
        BNE.N    ??ON_NONE_2
        ADR.W    R0,ON_BUTTON
        B.N      ??ON_NONE_1
//   32     return (void*)ON_NONE;
??ON_NONE_2:
        LDR.N    R0,??DataTable5_7
??ON_NONE_1:
        POP      {R1,PC}          ;; return
//   33 }
//   34 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   35 void* (ON_SWITCH) (Message * Message_In) // 返回 ON_NONE
//   36 {
ON_SWITCH:
        PUSH     {R7,LR}
        MOVS     R1,R0
//   37     Message_In->Topest->Done(&(Message_In->Topest));// 执行当前函数部分
        ADDS     R0,R1,#+4
        LDR      R1,[R1, #+4]
        LDR      R1,[R1, #+0]
        BLX      R1
//   38    // if( Message_In->Topest->CallBack == Message_In->Topest->Done){Message_In->Topest->Done = Message_In->Topest->OnPend;} // 当为CallBack时候进行Idle
//   39     return (void*)ON_NONE;
        LDR.N    R0,??DataTable5_7
        POP      {R1,PC}          ;; return
//   40 }

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   41 uint16 x = 0;
x:
        DS8 2

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   42 void* (ON_BUTTON) (Message * Message_In) // 返回 ON_SWITCH
//   43 {
ON_BUTTON:
        PUSH     {R2-R6,LR}
        MOVS     R4,R0
//   44     s_Control * Topest = Message_In->Topest;
        LDR      R0,[R4, #+4]
        STR      R0,[SP, #+4]
//   45     ExInterfaces * ExInterfaces_In = (ExInterfaces *)(Message_In->msgGaia); // 外部信息归一化
        LDR      R5,[R4, #+0]
//   46     if(((ExInterfaces_In->ButtonsOn)>>0)&0x01) // 按键1
        LDRB     R0,[R5, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??ON_BUTTON_0
//   47     {v_BIOS_6x8str_Ascii(x,0,Black,White,"1");// 移动上次
        ADR.N    R0,??DataTable5  ;; "1"
        STR      R0,[SP, #+0]
        MOVW     R3,#+65535
        MOVS     R2,#+0
        MOVS     R1,#+0
        LDR.N    R0,??DataTable5_8
        LDRH     R0,[R0, #+0]
        BL       v_BIOS_6x8str_Ascii
//   48         switch(Topest->Tag)
        LDR      R0,[SP, #+4]
        LDRB     R0,[R0, #+4]
        CMP      R0,#+1
        BEQ.N    ??ON_BUTTON_1
        CMP      R0,#+2
        BEQ.N    ??ON_BUTTON_2
        B.N      ??ON_BUTTON_3
//   49         {
//   50             case GUI_Window :
//   51                 Topest = Topest->LeFriend;
??ON_BUTTON_1:
        LDR      R0,[SP, #+4]
        LDR      R0,[R0, #+16]
        STR      R0,[SP, #+4]
//   52                 switch(Topest->Tag)
        LDR      R0,[SP, #+4]
        LDRB     R0,[R0, #+4]
        CMP      R0,#+2
        BEQ.N    ??ON_BUTTON_4
//   53                 {
//   54                     default:
//   55                         Message_In->Topest = Topest;
        LDR      R0,[SP, #+4]
        STR      R0,[R4, #+4]
//   56                     break;
        B.N      ??ON_BUTTON_5
//   57                     case GUI_Cmd :
//   58                         Message_In->Topest = Topest;
??ON_BUTTON_4:
        LDR      R0,[SP, #+4]
        STR      R0,[R4, #+4]
//   59                         Topest ->Done = Topest->OnPend;
        LDR      R0,[SP, #+4]
        LDR      R0,[R0, #+36]
        LDR      R1,[SP, #+4]
        STR      R0,[R1, #+0]
//   60                     break;
//   61                 }
//   62             break;
??ON_BUTTON_5:
        B.N      ??ON_BUTTON_0
//   63             /******************************************************************/
//   64             case GUI_Cmd :
//   65                 {
//   66                     v_BIOS_6x8str_Ascii(x,0,Black,White,"cut the cmd");// 移动上次
??ON_BUTTON_2:
        LDR.N    R0,??DataTable5_9
        STR      R0,[SP, #+0]
        MOVW     R3,#+65535
        MOVS     R2,#+0
        MOVS     R1,#+0
        LDR.N    R0,??DataTable5_8
        LDRH     R0,[R0, #+0]
        BL       v_BIOS_6x8str_Ascii
//   67                     const s_Control * Me = Topest;
        LDR      R6,[SP, #+4]
//   68                     Topest ->Idle(&Topest); // 强行执行函数
        ADD      R0,SP,#+4
        LDR      R1,[SP, #+4]
        LDR      R1,[R1, #+32]
        BLX      R1
//   69                     do
//   70                     {
//   71                         Topest = Topest->LeFriend;
??ON_BUTTON_6:
        LDR      R0,[SP, #+4]
        LDR      R0,[R0, #+16]
        STR      R0,[SP, #+4]
//   72                         if(Me == Topest){break;}
        LDR      R0,[SP, #+4]
        CMP      R6,R0
        BEQ.N    ??ON_BUTTON_7
//   73                     }while(GUI_Cmd != Topest->Tag); // 限制置为 GUI_Cmd
??ON_BUTTON_8:
        LDR      R0,[SP, #+4]
        LDRB     R0,[R0, #+4]
        CMP      R0,#+2
        BNE.N    ??ON_BUTTON_6
//   74                     Message_In->Topest = Topest;
??ON_BUTTON_7:
        LDR      R0,[SP, #+4]
        STR      R0,[R4, #+4]
//   75                     Topest ->Done = Topest->OnPend;
        LDR      R0,[SP, #+4]
        LDR      R0,[R0, #+36]
        LDR      R1,[SP, #+4]
        STR      R0,[R1, #+0]
//   76                 }
//   77             break;
        B.N      ??ON_BUTTON_0
//   78             default:
//   79                 Message_In->Topest = Message_In->Topest->LeFriend;
??ON_BUTTON_3:
        LDR      R0,[R4, #+4]
        LDR      R0,[R0, #+16]
        STR      R0,[R4, #+4]
//   80             break;
//   81         }
//   82     }
//   83     
//   84     if(((ExInterfaces_In->ButtonsOn)>>1)&0x01) // 按键2
??ON_BUTTON_0:
        LDRB     R0,[R5, #+0]
        UBFX     R0,R0,#+1,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??ON_BUTTON_9
//   85     {v_BIOS_6x8str_Ascii(x,0,Black,White,"2");// 移动上次
        ADR.N    R0,??DataTable5_1  ;; "2"
        STR      R0,[SP, #+0]
        MOVW     R3,#+65535
        MOVS     R2,#+0
        MOVS     R1,#+0
        LDR.N    R0,??DataTable5_8
        LDRH     R0,[R0, #+0]
        BL       v_BIOS_6x8str_Ascii
//   86         switch(Topest->Tag)
        LDR      R0,[SP, #+4]
        LDRB     R0,[R0, #+4]
        CMP      R0,#+1
        BEQ.N    ??ON_BUTTON_10
        CMP      R0,#+2
        BEQ.N    ??ON_BUTTON_11
        B.N      ??ON_BUTTON_12
//   87         {
//   88             case GUI_Window :
//   89                 Topest = Topest->RiFriend;
??ON_BUTTON_10:
        LDR      R0,[SP, #+4]
        LDR      R0,[R0, #+20]
        STR      R0,[SP, #+4]
//   90                 switch(Topest->Tag)
        LDR      R0,[SP, #+4]
        LDRB     R0,[R0, #+4]
        CMP      R0,#+2
        BEQ.N    ??ON_BUTTON_13
//   91                 {
//   92                     default:
//   93                         Message_In->Topest = Topest;
        LDR      R0,[SP, #+4]
        STR      R0,[R4, #+4]
//   94                     break;
        B.N      ??ON_BUTTON_14
//   95                     case GUI_Cmd :
//   96                         Message_In->Topest = Topest;
??ON_BUTTON_13:
        LDR      R0,[SP, #+4]
        STR      R0,[R4, #+4]
//   97                         Topest ->Done = Topest->OnPend;
        LDR      R0,[SP, #+4]
        LDR      R0,[R0, #+36]
        LDR      R1,[SP, #+4]
        STR      R0,[R1, #+0]
//   98                     break;
//   99                 }
//  100             break;
??ON_BUTTON_14:
        B.N      ??ON_BUTTON_9
//  101             /******************************************************************/
//  102             case GUI_Cmd :
//  103                 {
//  104                     v_BIOS_6x8str_Ascii(x,0,Black,White,"cut the cmd");// 移动上次
??ON_BUTTON_11:
        LDR.N    R0,??DataTable5_9
        STR      R0,[SP, #+0]
        MOVW     R3,#+65535
        MOVS     R2,#+0
        MOVS     R1,#+0
        LDR.N    R0,??DataTable5_8
        LDRH     R0,[R0, #+0]
        BL       v_BIOS_6x8str_Ascii
//  105                     const s_Control * Me = Topest;
        LDR      R6,[SP, #+4]
//  106                     Topest ->Idle(&Topest); // 强行执行函数
        ADD      R0,SP,#+4
        LDR      R1,[SP, #+4]
        LDR      R1,[R1, #+32]
        BLX      R1
//  107                     do
//  108                     {
//  109                         Topest = Topest->RiFriend;
??ON_BUTTON_15:
        LDR      R0,[SP, #+4]
        LDR      R0,[R0, #+20]
        STR      R0,[SP, #+4]
//  110                         if(Me == Topest){break;}
        LDR      R0,[SP, #+4]
        CMP      R6,R0
        BEQ.N    ??ON_BUTTON_16
//  111                     }while(GUI_Cmd != Topest->Tag); // 限制置为 GUI_Cmd
??ON_BUTTON_17:
        LDR      R0,[SP, #+4]
        LDRB     R0,[R0, #+4]
        CMP      R0,#+2
        BNE.N    ??ON_BUTTON_15
//  112                     Message_In->Topest = Topest;
??ON_BUTTON_16:
        LDR      R0,[SP, #+4]
        STR      R0,[R4, #+4]
//  113                     Topest ->Done = Topest->OnPend;
        LDR      R0,[SP, #+4]
        LDR      R0,[R0, #+36]
        LDR      R1,[SP, #+4]
        STR      R0,[R1, #+0]
//  114                 }
//  115             break;
        B.N      ??ON_BUTTON_9
//  116             default:
//  117                 Message_In->Topest = Message_In->Topest->RiFriend;
??ON_BUTTON_12:
        LDR      R0,[R4, #+4]
        LDR      R0,[R0, #+20]
        STR      R0,[R4, #+4]
//  118             break;
//  119         }
//  120     }
//  121     if( (((ExInterfaces_In->ButtonsOn)>>2)&0x01)||(((ExInterfaces_In->ButtonsOn)>>3)&0x01) ) // 按键3/4 // 确认按键 Enter CallBack
??ON_BUTTON_9:
        LDRB     R0,[R5, #+0]
        MOVS     R1,#+12
        TST      R0,R1
        BEQ.N    ??ON_BUTTON_18
//  122     {//v_BIOS_6x8str_Ascii(x,0,Black,White,"3");
//  123         if(Topest->OnPend == Topest ->Done)
        LDR      R0,[SP, #+4]
        LDR      R0,[R0, #+36]
        LDR      R1,[SP, #+4]
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BNE.N    ??ON_BUTTON_18
//  124         {
//  125             Topest->Done = Topest->CallBack;
        LDR      R0,[SP, #+4]
        LDR      R0,[R0, #+28]
        LDR      R1,[SP, #+4]
        STR      R0,[R1, #+0]
//  126         }// 返回CallBack函数
//  127     }   
//  128     /*
//  129     if(((ExInterfaces_In->ButtonsOn)>>3)&0x01) // 按键4
//  130     {
//  131         v_BIOS_6x8str_Ascii(x,0,Black,White,"4");x+=6;
//  132     }
//  133     */
//  134     return (void*)ON_SWITCH;
??ON_BUTTON_18:
        LDR.N    R0,??DataTable5_10
        POP      {R1,R2,R4-R6,PC}  ;; return
//  135 }

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  136 uint16 in = 0;
in:
        DS8 2

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  137 void* (ON_UART) (Message * Message_In) // 转为 ON_SWITCH
//  138 {
ON_UART:
        PUSH     {R7,LR}
//  139    // v_BIOS_6x8str_Ascii(30,0,Black,White,"Get Message");// 移动上次
//  140     in ++;
        LDR.N    R0,??DataTable5_11
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable5_11
        STRH     R0,[R1, #+0]
//  141     v_Tooth_GyroAccel(&g_RecBuffer);
        LDR.N    R0,??DataTable5_3
        BL       v_Tooth_GyroAccel
//  142     return (void*)ON_SWITCH;
        LDR.N    R0,??DataTable5_10
        POP      {R1,PC}          ;; return
//  143 }
//  144 
//  145 
//  146 /******************************************************************************/
//  147 /******************************************************************************/
//  148 /******************************************************************************/
//  149 /******************************************************************************/
//  150 /******************************************************************************/
//  151 /******************************************************************************/
//  152 /******************************************************************************/
//  153 /******************************************************************************/
//  154 /******************************************************************************/
//  155 /******************************************************************************/
//  156 /******************************************************************************/
//  157 /******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  158 void v_OriginalSin()
//  159 {
//  160     {// 消息初始化
//  161         msg_Run = ON_NONE;
v_OriginalSin:
        LDR.N    R0,??DataTable5_2
        LDR.N    R1,??DataTable5_7
        STR      R1,[R0, #+0]
//  162         g_ExInterfaces.ButtonsOn = 0;g_ExInterfaces.SwitchsOn = 0;
        LDR.N    R0,??DataTable5_4
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        LDR.N    R0,??DataTable5_4
        MOVS     R1,#+0
        STRB     R1,[R0, #+1]
//  163         g_Message.msgGaia = &g_ExInterfaces;
        LDR.N    R0,??DataTable5_6
        LDR.N    R1,??DataTable5_4
        STR      R1,[R0, #+0]
//  164         g_Message.time=0;
        LDR.N    R0,??DataTable5_6
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
//  165     }
//  166     /**************************************************************************/
//  167     /**************************************************************************/
//  168     //**{ **// 第一个窗体
//  169         // 窗体变量
//  170         static _s_GUI_Window  first_Figure_Window ={.Color = Black,
//  171                                                     .Content = "The Islander"};
//  172         static s_Control first_Figure = {.Create = _v_Window_Create,
//  173                                          .CallBack=FCN_NULL,.OnPend=FCN_NULL,.Idle=FCN_NULL,
//  174                                          .Tag=GUI_Window,
//  175                                          .Name=&first_Figure_Window};
//  176         // 按键控件 一
//  177         static _s_GUI_Cmd  first_Figure_Command_GoNext_0 = 
//  178                                                {.Color.fontColor = Red,
//  179                                                 .Color.FrameColor = White,
//  180                                                 .Text.Style = 0,
//  181                                                 .Text.Content = "Data Scope",
//  182                                                 .Text.Long = 0,
//  183                                                 .Position.x = 100,
//  184                                                 .Position.y = 100,
//  185                                                 .Position.width = 80,
//  186                                                 .Position.height = 14};
//  187         static s_Control first_Figure_ctl_Command_GoNext_0 = 
//  188                                                 {.Create = _v_Cmd_Create,.OnPend=_v_Cmd_OnPend,.Idle=_v_Cmd_Idle,
//  189                                                  .CallBack = DataScope_Create,
//  190                                                  .Tag=GUI_Cmd,
//  191                                                  .Name=&first_Figure_Command_GoNext_0};
//  192         // 按键控件 二
//  193         static _s_GUI_Cmd  first_Figure_Command_GoNext_1 = 
//  194                                                {.Color.fontColor = Red,
//  195                                                 .Color.FrameColor = White,
//  196                                                 .Text.Style = 0,
//  197                                                 .Text.Content = "None",
//  198                                                 .Text.Long = 0,
//  199                                                 .Position.x = 100,
//  200                                                 .Position.y = 80,
//  201                                                 .Position.width = 80,
//  202                                                 .Position.height = 14};
//  203         static s_Control first_Figure_ctl_Command_GoNext_1 = 
//  204                                                 {.Create = _v_Cmd_Create,.OnPend=_v_Cmd_OnPend,.Idle=_v_Cmd_Idle,
//  205                                                  .CallBack=FCN_NULL,
//  206                                                  .Tag=GUI_Cmd,
//  207                                                  .Name=&first_Figure_Command_GoNext_1};
//  208     /**************************************************************************/
//  209     /**************************************************************************/   
//  210         // 第二个窗体  
//  211         // 窗体变量
//  212         static _s_GUI_Window  second_Figure_Window ={.Color = Black,
//  213                                                     .Content = "Data Scope"};
//  214         static s_Control second_Figure = {.Create = _v_Window_Create,
//  215                                          .CallBack=FCN_NULL,.OnPend=FCN_NULL,.Idle=FCN_NULL,
//  216                                          .Tag=GUI_Window,
//  217                                          .Name=&second_Figure_Window};
//  218         
//  219         // 按键控件 一
//  220         static _s_GUI_Cmd second_Figure_Command_GoNext_0 = 
//  221                                                {.Color.fontColor = Red,
//  222                                                 .Color.FrameColor = White,
//  223                                                 .Text.Style = 0,
//  224                                                 .Text.Content = "Back",
//  225                                                 .Text.Long = 0,
//  226                                                 .Position.x = 100,
//  227                                                 .Position.y = 100,
//  228                                                 .Position.width = 80,
//  229                                                 .Position.height = 14};
//  230         static s_Control second_Figure_ctl_Command_GoNext_0 = 
//  231                                                 {.Create = _v_Cmd_Create,.OnPend=_v_Cmd_OnPend,.Idle=_v_Cmd_Idle,
//  232                                                  .CallBack = CallBack_Back,
//  233                                                  .Tag=GUI_Cmd,
//  234                                                  .Name=&second_Figure_Command_GoNext_0};
//  235     /**************************************************************************/
//  236     /**************************************************************************/        
//  237         //* 控件间组织关系 => *//
//  238         first_Figure.RiFriend = &first_Figure_ctl_Command_GoNext_0;
        LDR.N    R0,??DataTable5_12
        LDR.N    R1,??DataTable5_13
        STR      R1,[R0, #+20]
//  239         first_Figure_ctl_Command_GoNext_0.RiFriend = &first_Figure_ctl_Command_GoNext_1;
        LDR.N    R0,??DataTable5_13
        LDR.N    R1,??DataTable5_14
        STR      R1,[R0, #+20]
//  240         first_Figure_ctl_Command_GoNext_1.RiFriend = &first_Figure;
        LDR.N    R0,??DataTable5_14
        LDR.N    R1,??DataTable5_12
        STR      R1,[R0, #+20]
//  241         /**********************************************************************/
//  242         second_Figure.RiFriend = &second_Figure_ctl_Command_GoNext_0;
        LDR.N    R0,??DataTable5_15
        LDR.N    R1,??DataTable5_16
        STR      R1,[R0, #+20]
//  243         second_Figure_ctl_Command_GoNext_0.RiFriend = &second_Figure;
        LDR.N    R0,??DataTable5_16
        LDR.N    R1,??DataTable5_15
        STR      R1,[R0, #+20]
//  244         /**********************************************************************/
//  245         //* 控件间组织关系 <= *//
//  246         first_Figure.LeFriend = &first_Figure_ctl_Command_GoNext_1;
        LDR.N    R0,??DataTable5_12
        LDR.N    R1,??DataTable5_14
        STR      R1,[R0, #+16]
//  247         first_Figure_ctl_Command_GoNext_1.LeFriend = &first_Figure_ctl_Command_GoNext_0;
        LDR.N    R0,??DataTable5_14
        LDR.N    R1,??DataTable5_13
        STR      R1,[R0, #+16]
//  248         first_Figure_ctl_Command_GoNext_0.LeFriend = &first_Figure;
        LDR.N    R0,??DataTable5_13
        LDR.N    R1,??DataTable5_12
        STR      R1,[R0, #+16]
//  249         /**********************************************************************/
//  250         second_Figure.LeFriend = &second_Figure_ctl_Command_GoNext_0;
        LDR.N    R0,??DataTable5_15
        LDR.N    R1,??DataTable5_16
        STR      R1,[R0, #+16]
//  251         second_Figure_ctl_Command_GoNext_0.LeFriend = &second_Figure;
        LDR.N    R0,??DataTable5_16
        LDR.N    R1,??DataTable5_15
        STR      R1,[R0, #+16]
//  252         /**********************************************************************/
//  253         //* 控件内部组织关系 <= *//
//  254         first_Figure.Father = &first_Figure;
        LDR.N    R0,??DataTable5_12
        LDR.N    R1,??DataTable5_12
        STR      R1,[R0, #+12]
//  255         first_Figure_ctl_Command_GoNext_0.Father = &first_Figure;
        LDR.N    R0,??DataTable5_13
        LDR.N    R1,??DataTable5_12
        STR      R1,[R0, #+12]
//  256         first_Figure_ctl_Command_GoNext_1.Father = &first_Figure;
        LDR.N    R0,??DataTable5_14
        LDR.N    R1,??DataTable5_12
        STR      R1,[R0, #+12]
//  257         /**********************************************************************/
//  258         second_Figure.Father = &first_Figure;
        LDR.N    R0,??DataTable5_15
        LDR.N    R1,??DataTable5_12
        STR      R1,[R0, #+12]
//  259         second_Figure_ctl_Command_GoNext_0.Father = &first_Figure;
        LDR.N    R0,??DataTable5_16
        LDR.N    R1,??DataTable5_12
        STR      R1,[R0, #+12]
//  260         static s_Control *firstSonsArray[] = {&second_Figure};
//  261         first_Figure_Window.Son_Windows = firstSonsArray;
        LDR.N    R0,??DataTable5_17
        LDR.N    R1,??DataTable5_18
        STR      R1,[R0, #+4]
//  262         first_Figure_Window.SonsNum = 1;
        LDR.N    R0,??DataTable5_17
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  263         /**********************************************************************/
//  264         //* 控件初始函数指定 *//
//  265         first_Figure.Done = first_Figure.Create;
        LDR.N    R0,??DataTable5_12
        LDR      R0,[R0, #+24]
        LDR.N    R1,??DataTable5_12
        STR      R0,[R1, #+0]
//  266         first_Figure_ctl_Command_GoNext_0.Done = first_Figure_ctl_Command_GoNext_0.Create;
        LDR.N    R0,??DataTable5_13
        LDR      R0,[R0, #+24]
        LDR.N    R1,??DataTable5_13
        STR      R0,[R1, #+0]
//  267         first_Figure_ctl_Command_GoNext_1.Done = first_Figure_ctl_Command_GoNext_1.Create;
        LDR.N    R0,??DataTable5_14
        LDR      R0,[R0, #+24]
        LDR.N    R1,??DataTable5_14
        STR      R0,[R1, #+0]
//  268     /**************************************************************************/
//  269     /**************************************************************************/
//  270         //* 消息最顶层 *//
//  271         g_Message.Topest = &first_Figure;
        LDR.N    R0,??DataTable5_6
        LDR.N    R1,??DataTable5_12
        STR      R1,[R0, #+4]
//  272         g_Message.time = 0;
        LDR.N    R0,??DataTable5_6
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
//  273         msg_Run = ON_SWITCH;        
        LDR.N    R0,??DataTable5_2
        LDR.N    R1,??DataTable5_10
        STR      R1,[R0, #+0]
//  274 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC8      "1",0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DC8      "2",0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_2:
        DC32     msg_Run

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_3:
        DC32     g_RecBuffer

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_4:
        DC32     g_ExInterfaces

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_5:
        DC32     g_Buttons

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_6:
        DC32     g_Message

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_7:
        DC32     ON_NONE

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_8:
        DC32     x

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_9:
        DC32     `?<Constant "cut the cmd">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_10:
        DC32     ON_SWITCH

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_11:
        DC32     in

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_12:
        DC32     ??first_Figure

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_13:
        DC32     ??first_Figure_ctl_Command_GoNext_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_14:
        DC32     ??first_Figure_ctl_Command_GoNext_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_15:
        DC32     ??second_Figure

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_16:
        DC32     ??second_Figure_ctl_Command_GoNext_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_17:
        DC32     ??first_Figure_Window

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_18:
        DC32     ??firstSonsArray

        SECTION `.data`:DATA:REORDER:NOROOT(2)
??first_Figure_Window:
        DATA
        DC8 0, 0, 0, 0
        DC32 0H
        DC16 0
        DC8 0, 0
        DC32 `?<Constant "The Islander">`

        SECTION `.data`:DATA:REORDER:NOROOT(2)
??first_Figure:
        DATA
        DC32 0H
        DC8 1, 0, 0, 0
        DC32 ??first_Figure_Window, 0H, 0H, 0H, _v_Window_Create, FCN_NULL
        DC32 FCN_NULL, FCN_NULL

        SECTION `.data`:DATA:REORDER:NOROOT(2)
??first_Figure_Command_GoNext_0:
        DATA
        DC16 100, 100, 80, 14, 63488, 65535
        DC8 0, 0, 0, 0
        DC32 `?<Constant "Data Scope">`

        SECTION `.data`:DATA:REORDER:NOROOT(2)
??first_Figure_ctl_Command_GoNext_0:
        DATA
        DC32 0H
        DC8 2, 0, 0, 0
        DC32 ??first_Figure_Command_GoNext_0, 0H, 0H, 0H, _v_Cmd_Create
        DC32 DataScope_Create, _v_Cmd_Idle, _v_Cmd_OnPend

        SECTION `.data`:DATA:REORDER:NOROOT(2)
??first_Figure_Command_GoNext_1:
        DATA
        DC16 100, 80, 80, 14, 63488, 65535
        DC8 0, 0, 0, 0
        DC32 `?<Constant "None">`

        SECTION `.data`:DATA:REORDER:NOROOT(2)
??first_Figure_ctl_Command_GoNext_1:
        DATA
        DC32 0H
        DC8 2, 0, 0, 0
        DC32 ??first_Figure_Command_GoNext_1, 0H, 0H, 0H, _v_Cmd_Create
        DC32 FCN_NULL, _v_Cmd_Idle, _v_Cmd_OnPend

        SECTION `.data`:DATA:REORDER:NOROOT(2)
??second_Figure_Window:
        DATA
        DC8 0, 0, 0, 0
        DC32 0H
        DC16 0
        DC8 0, 0
        DC32 `?<Constant "Data Scope">`

        SECTION `.data`:DATA:REORDER:NOROOT(2)
??second_Figure:
        DATA
        DC32 0H
        DC8 1, 0, 0, 0
        DC32 ??second_Figure_Window, 0H, 0H, 0H, _v_Window_Create, FCN_NULL
        DC32 FCN_NULL, FCN_NULL

        SECTION `.data`:DATA:REORDER:NOROOT(2)
??second_Figure_Command_GoNext_0:
        DATA
        DC16 100, 100, 80, 14, 63488, 65535
        DC8 0, 0, 0, 0
        DC32 `?<Constant "Back">`

        SECTION `.data`:DATA:REORDER:NOROOT(2)
??second_Figure_ctl_Command_GoNext_0:
        DATA
        DC32 0H
        DC8 2, 0, 0, 0
        DC32 ??second_Figure_Command_GoNext_0, 0H, 0H, 0H, _v_Cmd_Create
        DC32 CallBack_Back, _v_Cmd_Idle, _v_Cmd_OnPend

        SECTION `.data`:DATA:REORDER:NOROOT(2)
??firstSonsArray:
        DATA
        DC32 ??second_Figure

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(1)
        DATA
        DC8 "1"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "cut the cmd">`:
        DATA
        DC8 "cut the cmd"

        SECTION `.rodata`:CONST:REORDER:NOROOT(1)
        DATA
        DC8 "2"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "The Islander">`:
        DATA
        DC8 "The Islander"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Data Scope">`:
        DATA
        DC8 "Data Scope"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "None">`:
        DATA
        DC8 "None"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Back">`:
        DATA
        DC8 "Back"
        DC8 0, 0, 0

        END
// 
//  20 bytes in section .bss
// 308 bytes in section .data
//  60 bytes in section .rodata
// 686 bytes in section .text
// 
// 686 bytes of CODE  memory
//  60 bytes of CONST memory
// 328 bytes of DATA  memory
//
//Errors: none
//Warnings: none
