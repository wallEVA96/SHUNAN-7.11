///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     03/Sep/2014  20:50:19 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\创作室\飞思卡尔智能小车\调试板\遥控器\ShunAn_Panel\G /
//                    UI.c                                                    /
//    Command line =  D:\创作室\飞思卡尔智能小车\调试板\遥控器\ShunAn_Panel\G /
//                    UI.c -D IAR -D TWR_K60F120M -lCN                        /
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
//                    \GUI.s                                                  /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LCD_Clear
        EXTERN LCD_SetArrow
        EXTERN LCD_SetLine
        EXTERN LCD_SetPath
        EXTERN LCD_SetSquare
        EXTERN __aeabi_f2uiz
        EXTERN __aeabi_fdiv
        EXTERN __aeabi_i2d
        EXTERN __aeabi_i2f
        EXTERN __aeabi_ui2d
        EXTERN __aeabi_ui2f
        EXTERN v_BIOS_6x8Num
        EXTERN v_BIOS_6x8str_Ascii
        EXTERN v_error_axis

        PUBLIC CallBack_Back
        PUBLIC CallBack_Show
        PUBLIC DataScope_Create
        PUBLIC FCN_NULL
        PUBLIC _v_Axis_Create
        PUBLIC _v_Cmd_Create
        PUBLIC _v_Cmd_Idle
        PUBLIC _v_Cmd_OnPend
        PUBLIC _v_Idle
        PUBLIC _v_Window_Create
        PUBLIC timer
        PUBLIC v_allControl_Create

// D:\创作室\飞思卡尔智能小车\调试板\遥控器\ShunAn_Panel\GUI.c
//    1 #include "arm_cm4.h"
//    2 #include "MK60F15.h"
//    3 #include "ShunAn_Lib.h"
//    4 #include "start_ShunAn.h"
//    5 #include "BlessedAlien.h"
//    6 #include "TFT.h"
//    7 #include "BIOS.h"
//    8 #include "GUI.h"
//    9 #include "ControlPads.h"
//   10 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   11 uint8 (_v_Idle)(s_Control **In){return 0;}
_v_Idle:
        MOVS     R0,#+0
        BX       LR               ;; return
//   12 /******************************************************************************/
//   13 /******************************************************************************/
//   14 /******************************************************************************/
//   15 /******************************************************************************/
//   16 /******************************************************************************/
//   17 // 按钮绘制函数

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   18 uint8 _v_Cmd_Idle ( s_Control ** gui_Input )
//   19 {
_v_Cmd_Idle:
        PUSH     {R3-R5,LR}
//   20     uint16 BackColor = ((_s_GUI_Window * )((*gui_Input)->Father->Name))->Color;
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+12]
        LDR      R1,[R1, #+8]
        LDRH     R4,[R1, #+8]
//   21     _s_GUI_Cmd * gui = (_s_GUI_Cmd *)((*gui_Input)->Name);
        LDR      R0,[R0, #+0]
        LDR      R5,[R0, #+8]
//   22     LCD_SetPath(0);
        MOVS     R0,#+0
        BL       LCD_SetPath
//   23     uint16 X_font = gui->Position.x + gui->Position.width + 1;
        LDRH     R0,[R5, #+0]
        LDRH     R1,[R5, #+4]
        ADDS     R0,R1,R0
        ADDS     R0,R0,#+1
//   24     uint16 Y_font = gui->Position.y + ((gui->Position.height-8)/2);
        LDRH     R1,[R5, #+2]
        LDRH     R2,[R5, #+6]
        SUBS     R2,R2,#+8
        MOVS     R3,#+2
        SDIV     R2,R2,R3
        ADDS     R1,R2,R1
//   25     v_BIOS_6x8str_Ascii(X_font,
//   26                         Y_font,
//   27                         gui->Color.fontColor,
//   28                         BackColor,
//   29                         "  ");
        ADR.N    R2,??DataTable2  ;; 0x20, 0x20, 0x00, 0x00
        STR      R2,[SP, #+0]
        MOVS     R3,R4
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        LDRH     R2,[R5, #+8]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       v_BIOS_6x8str_Ascii
//   30     return 0;
        MOVS     R0,#+0
        POP      {R1,R4,R5,PC}    ;; return
//   31 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   32 uint8 _v_Cmd_OnPend ( s_Control ** gui_Input )
//   33 {
_v_Cmd_OnPend:
        PUSH     {R3-R5,LR}
//   34     uint16 BackColor = ((_s_GUI_Window * )((*gui_Input)->Father->Name))->Color;
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+12]
        LDR      R1,[R1, #+8]
        LDRH     R4,[R1, #+8]
//   35     _s_GUI_Cmd * gui = (_s_GUI_Cmd *)((*gui_Input)->Name);
        LDR      R0,[R0, #+0]
        LDR      R5,[R0, #+8]
//   36     LCD_SetPath(0);
        MOVS     R0,#+0
        BL       LCD_SetPath
//   37     uint16 X_font = gui->Position.x + gui->Position.width + 1;
        LDRH     R0,[R5, #+0]
        LDRH     R1,[R5, #+4]
        ADDS     R0,R1,R0
        ADDS     R0,R0,#+1
//   38     uint16 Y_font = gui->Position.y + ((gui->Position.height-8)/2);
        LDRH     R1,[R5, #+2]
        LDRH     R2,[R5, #+6]
        SUBS     R2,R2,#+8
        MOVS     R3,#+2
        SDIV     R2,R2,R3
        ADDS     R1,R2,R1
//   39     v_BIOS_6x8str_Ascii(X_font,
//   40                         Y_font,
//   41                         gui->Color.fontColor,
//   42                         BackColor,
//   43                         "<=");
        ADR.N    R2,??DataTable2_1  ;; 0x3C, 0x3D, 0x00, 0x00
        STR      R2,[SP, #+0]
        MOVS     R3,R4
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        LDRH     R2,[R5, #+8]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       v_BIOS_6x8str_Ascii
//   44     return 0;
        MOVS     R0,#+0
        POP      {R1,R4,R5,PC}    ;; return
//   45 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   46 uint8 _v_Cmd_Create ( s_Control ** gui_Input )
//   47 {
_v_Cmd_Create:
        PUSH     {R4-R6,LR}
        SUB      SP,SP,#+8
//   48     uint16 BackColor = Black;
        MOVS     R4,#+0
//   49     if(0 != (*gui_Input)->Father)
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+12]
        CMP      R1,#+0
        BEQ.N    ??_v_Cmd_Create_0
//   50     {BackColor = ((_s_GUI_Window * )((*gui_Input)->Father->Name))->Color;}//((_s_GUI_Window * )(gui_Input->Father))->Color;
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+12]
        LDR      R1,[R1, #+8]
        LDRH     R4,[R1, #+8]
//   51     _s_GUI_Cmd * gui = (_s_GUI_Cmd *)((*gui_Input)->Name);
??_v_Cmd_Create_0:
        LDR      R0,[R0, #+0]
        LDR      R5,[R0, #+8]
//   52     LCD_SetSquare(gui->Position.x,
//   53                   gui->Position.y,
//   54                   gui->Position.width,
//   55                   gui->Position.height,
//   56                   gui->Color.FrameColor);
        LDRH     R0,[R5, #+10]
        STR      R0,[SP, #+0]
        LDRH     R3,[R5, #+6]
        LDRH     R2,[R5, #+4]
        LDRH     R1,[R5, #+2]
        LDRH     R0,[R5, #+0]
        BL       LCD_SetSquare
//   57     LCD_SetPath(0);
        MOVS     R0,#+0
        BL       LCD_SetPath
//   58     LCD_SetLine(gui->Position.x + 3,
//   59                 gui->Position.y,
//   60                 gui->Position.height,
//   61                 gui->Color.FrameColor);
        LDRH     R3,[R5, #+10]
        LDRH     R2,[R5, #+6]
        LDRH     R1,[R5, #+2]
        LDRH     R0,[R5, #+0]
        ADDS     R0,R0,#+3
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_SetLine
//   62     LCD_SetLine(gui->Position.x + gui->Position.width - 3,
//   63                 gui->Position.y,
//   64                 gui->Position.height,
//   65                 gui->Color.FrameColor);
        LDRH     R3,[R5, #+10]
        LDRH     R2,[R5, #+6]
        LDRH     R1,[R5, #+2]
        LDRH     R0,[R5, #+0]
        LDRH     R6,[R5, #+4]
        ADDS     R0,R6,R0
        SUBS     R0,R0,#+3
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_SetLine
//   66     // 绘制 文字
//   67     if(0 == gui->Text.Long)
        LDRB     R0,[R5, #+13]
        CMP      R0,#+0
        BNE.N    ??_v_Cmd_Create_1
//   68     {
//   69         uint8 fontNumber = 0;
        MOVS     R0,#+0
        B.N      ??_v_Cmd_Create_2
//   70         while('\0' != gui->Text.Content[fontNumber])
//   71         {
//   72             if(fontNumber > 50)
//   73             {
//   74                 gui->Text.Content = "";
//   75                 gui->Text.Long = 0;
//   76                 break;
//   77             }
//   78             fontNumber++;
??_v_Cmd_Create_3:
        ADDS     R0,R0,#+1
//   79             gui->Text.Long = fontNumber;
        STRB     R0,[R5, #+13]
??_v_Cmd_Create_2:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R1,[R5, #+16]
        LDRB     R1,[R0, R1]
        CMP      R1,#+0
        BEQ.N    ??_v_Cmd_Create_1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+51
        BLT.N    ??_v_Cmd_Create_3
        ADR.N    R0,??DataTable2_2  ;; ""
        STR      R0,[R5, #+16]
        MOVS     R0,#+0
        STRB     R0,[R5, #+13]
//   80         }
//   81     }
//   82     {
//   83         uint16 X_font = 0;uint16 Y_font = 0;
??_v_Cmd_Create_1:
        MOVS     R0,#+0
        MOVS     R1,#+0
//   84         switch(gui->Text.Style&0x03)
        LDRB     R2,[R5, #+12]
        ANDS     R2,R2,#0x3
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BEQ.N    ??_v_Cmd_Create_4
        CMP      R2,#+2
        BEQ.N    ??_v_Cmd_Create_5
        BCC.N    ??_v_Cmd_Create_6
        CMP      R2,#+3
        BNE.N    ??_v_Cmd_Create_7
//   85         {
//   86             case 3:
//   87             case 0:
//   88                 Y_font = gui->Position.y + ((gui->Position.height-8)/2);
??_v_Cmd_Create_4:
        LDRH     R1,[R5, #+2]
        LDRH     R2,[R5, #+6]
        SUBS     R2,R2,#+8
        MOVS     R3,#+2
        SDIV     R2,R2,R3
        ADDS     R1,R2,R1
//   89             break;
        B.N      ??_v_Cmd_Create_7
//   90             case 1:
//   91                 Y_font = gui->Position.y + 1;
??_v_Cmd_Create_6:
        LDRH     R1,[R5, #+2]
        ADDS     R1,R1,#+1
//   92             break;
        B.N      ??_v_Cmd_Create_7
//   93             case 2:
//   94                 Y_font = gui->Position.y + (gui->Position.height-8);
??_v_Cmd_Create_5:
        LDRH     R1,[R5, #+2]
        LDRH     R2,[R5, #+6]
        ADDS     R1,R2,R1
        SUBS     R1,R1,#+8
//   95             break;
//   96         }
//   97         switch((gui->Text.Style&0x0C)>>2)
??_v_Cmd_Create_7:
        LDRB     R2,[R5, #+12]
        UBFX     R2,R2,#+2,#+2
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BEQ.N    ??_v_Cmd_Create_8
        CMP      R2,#+2
        BEQ.N    ??_v_Cmd_Create_9
        BCC.N    ??_v_Cmd_Create_10
        CMP      R2,#+3
        BNE.N    ??_v_Cmd_Create_11
//   98         {
//   99             case 3:
//  100             case 0:
//  101                 X_font = gui->Position.x + ((gui->Position.width-6*gui->Text.Long)/2);
??_v_Cmd_Create_8:
        LDRH     R0,[R5, #+0]
        LDRH     R2,[R5, #+4]
        LDRB     R3,[R5, #+13]
        MOVS     R6,#+6
        MLS      R2,R6,R3,R2
        MOVS     R3,#+2
        SDIV     R2,R2,R3
        ADDS     R0,R2,R0
//  102             break;
        B.N      ??_v_Cmd_Create_11
//  103             case 2:
//  104                 X_font = gui->Position.x + 1;
??_v_Cmd_Create_9:
        LDRH     R0,[R5, #+0]
        ADDS     R0,R0,#+1
//  105             break;
        B.N      ??_v_Cmd_Create_11
//  106             case 1:
//  107                 X_font = gui->Position.x + (gui->Position.width-6*gui->Text.Long);
??_v_Cmd_Create_10:
        LDRH     R0,[R5, #+0]
        LDRH     R2,[R5, #+4]
        UXTAH    R0,R2,R0
        LDRB     R2,[R5, #+13]
        MOVS     R3,#+6
        MLS      R0,R3,R2,R0
//  108             break;
//  109         }
//  110         uint16 show_fontColor = gui->Color.fontColor;
??_v_Cmd_Create_11:
        LDRH     R2,[R5, #+8]
//  111         v_BIOS_6x8str_Ascii(X_font,
//  112                             Y_font,
//  113                             show_fontColor,
//  114                             BackColor,
//  115                             gui->Text.Content);
        LDR      R3,[R5, #+16]
        STR      R3,[SP, #+0]
        MOVS     R3,R4
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       v_BIOS_6x8str_Ascii
//  116     }
//  117     return 0;
        MOVS     R0,#+0
        POP      {R1,R2,R4-R6,PC}  ;; return
//  118 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC8      0x20, 0x20, 0x00, 0x00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC8      0x3C, 0x3D, 0x00, 0x00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC8      "",0x0,0x0,0x0
//  119 
//  120 
//  121 /******************************************************************************/
//  122 /******************************************************************************/
//  123 /******************************************************************************/
//  124 /******************************************************************************/
//  125 /******************************************************************************/
//  126 // 坐标系控件（一条线）

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  127 uint8 (_v_Axis_Create)( void * target_axis_Input ) // 参数修改函数
//  128 {
_v_Axis_Create:
        PUSH     {R4-R7,LR}
        SUB      SP,SP,#+12
//  129     _s_GUI_Axis * target_axis = (_s_GUI_Axis *)(((s_Control*)target_axis_Input)->Name);
        LDR      R4,[R0, #+8]
//  130     // 绘制箭头
//  131     if(0 == target_axis->Position.angle) // 角度为零，以x方向为正方向
        LDRH     R0,[R4, #+4]
        CMP      R0,#+0
        BNE.N    ??_v_Axis_Create_0
//  132     {
//  133         LCD_SetPath(4); // 设定方向
        MOVS     R0,#+4
        BL       LCD_SetPath
//  134         LCD_SetArrow(target_axis->Position.start_x,
//  135                      target_axis->Position.start_y,
//  136                      3,
//  137                      target_axis->Color.axisColor); // ++
        LDRH     R3,[R4, #+8]
        MOVS     R2,#+3
        LDRH     R1,[R4, #+2]
        LDRH     R0,[R4, #+0]
        BL       LCD_SetArrow
//  138         LCD_SetArrow(target_axis->Position.start_x,
//  139                      target_axis->Position.start_y,
//  140                      2,
//  141                      target_axis->Color.axisColor); // +-
        LDRH     R3,[R4, #+8]
        MOVS     R2,#+2
        LDRH     R1,[R4, #+2]
        LDRH     R0,[R4, #+0]
        BL       LCD_SetArrow
//  142     }
//  143     else if(90 == target_axis->Position.angle)
//  144     {
//  145         LCD_SetPath(1);
//  146         LCD_SetArrow(target_axis->Position.start_x,
//  147                      target_axis->Position.start_y,
//  148                      1,
//  149                      target_axis->Color.axisColor); // -+
//  150         LCD_SetArrow(target_axis->Position.start_x,
//  151                      target_axis->Position.start_y,
//  152                      3,
//  153                      target_axis->Color.axisColor); // ++
//  154     }
//  155     else if(180 == target_axis->Position.angle)
//  156     {
//  157         LCD_SetPath(6);
//  158         LCD_SetArrow(target_axis->Position.start_x,
//  159                      target_axis->Position.start_y,
//  160                      0,
//  161                      target_axis->Color.axisColor); // --
//  162         LCD_SetArrow(target_axis->Position.start_x,
//  163                      target_axis->Position.start_y,
//  164                      1,
//  165                      target_axis->Color.axisColor); // -+
//  166     }
//  167     else if(270 == target_axis->Position.angle)
//  168     {
//  169         LCD_SetPath(3);
//  170         LCD_SetArrow(target_axis->Position.start_x,
//  171                      target_axis->Position.start_y,
//  172                      2,
//  173                      target_axis->Color.axisColor); // +-
//  174         LCD_SetArrow(target_axis->Position.start_x,
//  175                      target_axis->Position.start_y,
//  176                      0,
//  177                      target_axis->Color.axisColor); // --
//  178     }
//  179     else
//  180     {
//  181         v_error_axis();return 0xFA;
//  182     }
//  183     // 绘制直线
//  184     LCD_SetLine(target_axis->Position.start_x,
//  185                 target_axis->Position.start_y,
//  186                 target_axis->Position.width,
//  187                 target_axis->Color.axisColor
//  188                 );
??_v_Axis_Create_1:
        LDRH     R3,[R4, #+8]
        LDRH     R2,[R4, #+6]
        LDRH     R1,[R4, #+2]
        LDRH     R0,[R4, #+0]
        BL       LCD_SetLine
//  189     // 绘制坐标格与数字
//  190     if(0 != target_axis->Scale.minScale) // 当最小量程为0时不绘制
        LDR      R0,[R4, #+24]
        CMP      R0,#+0
        BEQ.W    ??_v_Axis_Create_2
//  191     {
//  192         float Step_K = ((float)(target_axis->Scale.max - target_axis->Scale.zero) // 缩小系数K
//  193                        / (float)target_axis->Position.width);
        LDR      R0,[R4, #+20]
        LDR      R1,[R4, #+16]
        SUBS     R0,R0,R1
        BL       __aeabi_i2f
        MOVS     R5,R0
        LDRH     R0,[R4, #+6]
        BL       __aeabi_ui2f
        MOVS     R1,R0
        MOVS     R0,R5
        BL       __aeabi_fdiv
        MOVS     R5,R0
//  194         target_axis->Scale.K = Step_K;
        STR      R5,[R4, #+28]
//  195         uint16 Line_Counter = (target_axis->Scale.max - target_axis->Scale.zero)
//  196                              / target_axis->Scale.minScale; // 计算最小量程数量
        LDR      R0,[R4, #+20]
        LDR      R1,[R4, #+16]
        SUBS     R0,R0,R1
        LDR      R1,[R4, #+24]
        UDIV     R6,R0,R1
//  197         if((target_axis->Scale.max - target_axis->Scale.zero) != Line_Counter*target_axis->Scale.minScale )
        LDR      R0,[R4, #+20]
        LDR      R1,[R4, #+16]
        SUBS     R0,R0,R1
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        LDR      R1,[R4, #+24]
        MUL      R1,R1,R6
        CMP      R0,R1
        BEQ.N    ??_v_Axis_Create_3
//  198         {
//  199             Line_Counter ++;
        ADDS     R6,R6,#+1
//  200         }
//  201         uint32 minScaleInK = (uint32)(target_axis->Scale.minScale/Step_K);
??_v_Axis_Create_3:
        LDR      R0,[R4, #+24]
        BL       __aeabi_ui2f
        MOVS     R1,R5
        BL       __aeabi_fdiv
        BL       __aeabi_f2uiz
        MOVS     R5,R0
//  202         for(uint16 loop = 0;loop < Line_Counter;loop++)
        MOVS     R7,#+0
        B.N      ??_v_Axis_Create_4
??_v_Axis_Create_0:
        LDRH     R0,[R4, #+4]
        CMP      R0,#+90
        BNE.N    ??_v_Axis_Create_5
        MOVS     R0,#+1
        BL       LCD_SetPath
        LDRH     R3,[R4, #+8]
        MOVS     R2,#+1
        LDRH     R1,[R4, #+2]
        LDRH     R0,[R4, #+0]
        BL       LCD_SetArrow
        LDRH     R3,[R4, #+8]
        MOVS     R2,#+3
        LDRH     R1,[R4, #+2]
        LDRH     R0,[R4, #+0]
        BL       LCD_SetArrow
        B.N      ??_v_Axis_Create_1
??_v_Axis_Create_5:
        LDRH     R0,[R4, #+4]
        CMP      R0,#+180
        BNE.N    ??_v_Axis_Create_6
        MOVS     R0,#+6
        BL       LCD_SetPath
        LDRH     R3,[R4, #+8]
        MOVS     R2,#+0
        LDRH     R1,[R4, #+2]
        LDRH     R0,[R4, #+0]
        BL       LCD_SetArrow
        LDRH     R3,[R4, #+8]
        MOVS     R2,#+1
        LDRH     R1,[R4, #+2]
        LDRH     R0,[R4, #+0]
        BL       LCD_SetArrow
        B.N      ??_v_Axis_Create_1
??_v_Axis_Create_6:
        LDRH     R0,[R4, #+4]
        CMP      R0,#+270
        BNE.N    ??_v_Axis_Create_7
        MOVS     R0,#+3
        BL       LCD_SetPath
        LDRH     R3,[R4, #+8]
        MOVS     R2,#+2
        LDRH     R1,[R4, #+2]
        LDRH     R0,[R4, #+0]
        BL       LCD_SetArrow
        LDRH     R3,[R4, #+8]
        MOVS     R2,#+0
        LDRH     R1,[R4, #+2]
        LDRH     R0,[R4, #+0]
        BL       LCD_SetArrow
        B.N      ??_v_Axis_Create_1
??_v_Axis_Create_7:
        BL       v_error_axis
        MOVS     R0,#+250
        B.N      ??_v_Axis_Create_8
//  203         {
//  204             switch(target_axis->Position.angle) // 选定起始方位
//  205             {
//  206                 case 0:LCD_SetPath(0); // 右
//  207                     LCD_SetLine(target_axis->Position.start_x + target_axis->Position.width - loop*minScaleInK,
//  208                                 target_axis->Position.start_y - 3,
//  209                                 7,
//  210                                 target_axis->Color.axisColor
//  211                                 );
//  212                     v_BIOS_6x8Num(target_axis->Position.start_x + 1 + target_axis->Position.width - loop*minScaleInK,
//  213                                   target_axis->Position.start_y - 10,
//  214                                   target_axis->Color.fontColor,
//  215                                   target_axis->Color.backColor,
//  216                                   (target_axis->Scale.zero + (sint32)(loop*target_axis->Scale.minScale))
//  217                                   );
//  218                 break;
//  219                 case 90:LCD_SetPath(4); // 下
//  220                     LCD_SetLine(target_axis->Position.start_x - 3,
//  221                                 target_axis->Position.start_y + target_axis->Position.width - loop*minScaleInK,
//  222                                 7,
//  223                                 target_axis->Color.axisColor
//  224                                 );
//  225                     v_BIOS_6x8Num(target_axis->Position.start_x - 10,
//  226                                   target_axis->Position.start_y + 1 + target_axis->Position.width - loop*minScaleInK,
//  227                                   target_axis->Color.fontColor,
//  228                                   target_axis->Color.backColor,
//  229                                   (target_axis->Scale.zero + (sint32)(loop*target_axis->Scale.minScale))
//  230                                   );
//  231                 break;
//  232                 case 180:LCD_SetPath(0); // 右
//  233                     LCD_SetLine(target_axis->Position.start_x - target_axis->Position.width + loop*minScaleInK,
//  234                                 target_axis->Position.start_y - 3,
//  235                                 7,
//  236                                 target_axis->Color.axisColor
//  237                                 );
//  238                     v_BIOS_6x8Num(target_axis->Position.start_x + 1 - target_axis->Position.width + loop*minScaleInK,
//  239                                   target_axis->Position.start_y - 10,
//  240                                   target_axis->Color.fontColor,
//  241                                   target_axis->Color.backColor,
//  242                                   (target_axis->Scale.zero + (sint32)(loop*target_axis->Scale.minScale))
//  243                                   );
//  244                 break;
//  245                 case 270:LCD_SetPath(4); // 下
??_v_Axis_Create_9:
        MOVS     R0,#+4
        BL       LCD_SetPath
//  246                     LCD_SetLine(target_axis->Position.start_x - 3,
//  247                                 target_axis->Position.start_y - target_axis->Position.width + loop*minScaleInK,
//  248                                 7,
//  249                                 target_axis->Color.axisColor
//  250                                 );
        LDRH     R3,[R4, #+8]
        MOVS     R2,#+7
        LDRH     R0,[R4, #+2]
        LDRH     R1,[R4, #+6]
        SUBS     R0,R0,R1
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        MLA      R1,R5,R7,R0
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDRH     R0,[R4, #+0]
        SUBS     R0,R0,#+3
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_SetLine
//  251                     v_BIOS_6x8Num(target_axis->Position.start_x - 10,
//  252                                   target_axis->Position.start_y + 1 - target_axis->Position.width + loop*minScaleInK,
//  253                                   target_axis->Color.fontColor,
//  254                                   target_axis->Color.backColor,
//  255                                   (target_axis->Scale.zero + (sint32)(loop*target_axis->Scale.minScale))
//  256                                   );
        LDR      R0,[R4, #+16]
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        LDR      R1,[R4, #+24]
        MLA      R0,R1,R7,R0
        BL       __aeabi_i2d
        STRD     R0,R1,[SP, #+0]
        LDRH     R3,[R4, #+12]
        LDRH     R2,[R4, #+10]
        LDRH     R0,[R4, #+2]
        ADDS     R0,R0,#+1
        LDRH     R1,[R4, #+6]
        SUBS     R0,R0,R1
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        MLA      R1,R5,R7,R0
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDRH     R0,[R4, #+0]
        SUBS     R0,R0,#+10
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       v_BIOS_6x8Num
//  257                 break;
??_v_Axis_Create_10:
        ADDS     R7,R7,#+1
??_v_Axis_Create_4:
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R7,R6
        BCS.W    ??_v_Axis_Create_2
        LDRH     R0,[R4, #+4]
        CMP      R0,#+0
        BEQ.N    ??_v_Axis_Create_11
        CMP      R0,#+90
        BEQ.N    ??_v_Axis_Create_12
        CMP      R0,#+180
        BEQ.N    ??_v_Axis_Create_13
        CMP      R0,#+270
        BEQ.N    ??_v_Axis_Create_9
        B.N      ??_v_Axis_Create_10
??_v_Axis_Create_11:
        MOVS     R0,#+0
        BL       LCD_SetPath
        LDRH     R3,[R4, #+8]
        MOVS     R2,#+7
        LDRH     R0,[R4, #+2]
        SUBS     R1,R0,#+3
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDRH     R0,[R4, #+0]
        LDRH     R12,[R4, #+6]
        UXTAH    R0,R12,R0
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        MLS      R0,R5,R7,R0
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_SetLine
        LDR      R0,[R4, #+16]
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        LDR      R1,[R4, #+24]
        MLA      R0,R1,R7,R0
        BL       __aeabi_i2d
        STRD     R0,R1,[SP, #+0]
        LDRH     R3,[R4, #+12]
        LDRH     R2,[R4, #+10]
        LDRH     R0,[R4, #+2]
        SUBS     R1,R0,#+10
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDRH     R0,[R4, #+0]
        LDRH     R12,[R4, #+6]
        UXTAH    R0,R12,R0
        ADDS     R0,R0,#+1
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        MLS      R0,R5,R7,R0
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       v_BIOS_6x8Num
        B.N      ??_v_Axis_Create_10
??_v_Axis_Create_12:
        MOVS     R0,#+4
        BL       LCD_SetPath
        LDRH     R3,[R4, #+8]
        MOVS     R2,#+7
        LDRH     R0,[R4, #+2]
        LDRH     R1,[R4, #+6]
        UXTAH    R0,R1,R0
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        MLS      R1,R5,R7,R0
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDRH     R0,[R4, #+0]
        SUBS     R0,R0,#+3
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_SetLine
        LDR      R0,[R4, #+16]
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        LDR      R1,[R4, #+24]
        MLA      R0,R1,R7,R0
        BL       __aeabi_i2d
        STRD     R0,R1,[SP, #+0]
        LDRH     R3,[R4, #+12]
        LDRH     R2,[R4, #+10]
        LDRH     R0,[R4, #+2]
        LDRH     R1,[R4, #+6]
        UXTAH    R0,R1,R0
        ADDS     R0,R0,#+1
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        MLS      R1,R5,R7,R0
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDRH     R0,[R4, #+0]
        SUBS     R0,R0,#+10
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       v_BIOS_6x8Num
        B.N      ??_v_Axis_Create_10
??_v_Axis_Create_13:
        MOVS     R0,#+0
        BL       LCD_SetPath
        LDRH     R3,[R4, #+8]
        MOVS     R2,#+7
        LDRH     R0,[R4, #+2]
        SUBS     R1,R0,#+3
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDRH     R0,[R4, #+0]
        LDRH     R12,[R4, #+6]
        SUBS     R0,R0,R12
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        MLA      R0,R5,R7,R0
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LCD_SetLine
        LDR      R0,[R4, #+16]
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        LDR      R1,[R4, #+24]
        MLA      R0,R1,R7,R0
        BL       __aeabi_i2d
        STRD     R0,R1,[SP, #+0]
        LDRH     R3,[R4, #+12]
        LDRH     R2,[R4, #+10]
        LDRH     R0,[R4, #+2]
        SUBS     R1,R0,#+10
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDRH     R0,[R4, #+0]
        ADDS     R0,R0,#+1
        LDRH     R12,[R4, #+6]
        SUBS     R0,R0,R12
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        MLA      R0,R5,R7,R0
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       v_BIOS_6x8Num
        B.N      ??_v_Axis_Create_10
//  258             }
//  259         }
//  260     }
//  261     return 0;
??_v_Axis_Create_2:
        MOVS     R0,#+0
??_v_Axis_Create_8:
        POP      {R1-R7,PC}       ;; return
//  262 }
//  263 
//  264 /******************************************************************************/
//  265 /******************************************************************************/
//  266 /******************************************************************************/
//  267 /******************************************************************************/
//  268 /******************************************************************************/
//  269 // 窗体设置

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  270 uint8 (_v_Window_Create)(s_Control ** Window_Input)
//  271 {
_v_Window_Create:
        PUSH     {R3-R5,LR}
        MOVS     R5,R0
//  272     _s_GUI_Window * Window = (_s_GUI_Window *)((*Window_Input)->Name);
        LDR      R0,[R5, #+0]
        LDR      R4,[R0, #+8]
//  273     LCD_Clear(Window->Color);
        LDRH     R0,[R4, #+8]
        BL       LCD_Clear
//  274     v_BIOS_6x8str_Ascii(0,231,~(Window->Color),Window->Color,Window->Content);
        LDR      R0,[R4, #+12]
        STR      R0,[SP, #+0]
        LDRH     R3,[R4, #+8]
        LDRH     R0,[R4, #+8]
        MVNS     R2,R0
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R1,#+231
        MOVS     R0,#+0
        BL       v_BIOS_6x8str_Ascii
//  275     LCD_SetPath(4);
        MOVS     R0,#+4
        BL       LCD_SetPath
//  276     LCD_SetLine(0,230,320,~(Window->Color));
        LDRH     R0,[R4, #+8]
        MVNS     R3,R0
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        MOV      R2,#+320
        MOVS     R1,#+230
        MOVS     R0,#+0
        BL       LCD_SetLine
//  277     s_Control * Me = *Window_Input;
        LDR      R4,[R5, #+0]
//  278     s_Control * Turn = *Window_Input;
        LDR      R0,[R5, #+0]
        STR      R0,[SP, #+0]
//  279     do
//  280     {
//  281         v_allControl_Create(&Turn);
??_v_Window_Create_0:
        ADD      R0,SP,#+0
        BL       v_allControl_Create
//  282         if(GUI_Window != Turn->Tag){Turn->Done(&Turn);}
        LDR      R0,[SP, #+0]
        LDRB     R0,[R0, #+4]
        CMP      R0,#+1
        BEQ.N    ??_v_Window_Create_1
        ADD      R0,SP,#+0
        LDR      R1,[SP, #+0]
        LDR      R1,[R1, #+0]
        BLX      R1
//  283         Turn->Done = Turn->Idle;
??_v_Window_Create_1:
        LDR      R0,[SP, #+0]
        LDR      R0,[R0, #+32]
        LDR      R1,[SP, #+0]
        STR      R0,[R1, #+0]
//  284         Turn = Turn->RiFriend;
        LDR      R0,[SP, #+0]
        LDR      R0,[R0, #+20]
        STR      R0,[SP, #+0]
//  285     }while(Me != Turn);
        LDR      R0,[SP, #+0]
        CMP      R4,R0
        BNE.N    ??_v_Window_Create_0
//  286     return 0;
        MOVS     R0,#+0
        POP      {R1,R4,R5,PC}    ;; return
//  287 }
//  288 
//  289 
//  290 /******************************************************************************/
//  291 /******************************************************************************/
//  292 /******************************************************************************/
//  293 /******************************************************************************/
//  294 /******************************************************************************/
//  295 // 完全控件
//  296 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  297 void v_allControl_Create(s_Control ** guiGaia)
//  298 {
//  299     switch((*guiGaia)->Tag)
v_allControl_Create:
        LDR      R1,[R0, #+0]
        LDRB     R1,[R1, #+4]
        CMP      R1,#+0
        BEQ.N    ??v_allControl_Create_0
        CMP      R1,#+2
        BEQ.N    ??v_allControl_Create_1
        BCC.N    ??v_allControl_Create_2
        CMP      R1,#+4
        BEQ.N    ??v_allControl_Create_3
        BCC.N    ??v_allControl_Create_4
        B.N      ??v_allControl_Create_5
//  300     {
//  301         case GUI_None:
//  302         break;
??v_allControl_Create_0:
        B.N      ??v_allControl_Create_5
//  303         case GUI_Window:
//  304            // guiGaia->Done = _v_Window_Create;
//  305         break;
??v_allControl_Create_2:
        B.N      ??v_allControl_Create_5
//  306         case GUI_Cmd:
//  307             (*guiGaia)->Done = _v_Cmd_Create;
??v_allControl_Create_1:
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable4_1
        STR      R1,[R0, #+0]
//  308         break;
        B.N      ??v_allControl_Create_5
//  309         case GUI_Axis:
//  310            // guiGaia->CreateFcn = _v_Axis_Create;
//  311         break;
??v_allControl_Create_4:
        B.N      ??v_allControl_Create_5
//  312         case GUI_CoorData:
//  313            // ((_s_GUI_CoorData*)guiGaia->Name)->CreateFcn(((_s_GUI_CoorData*)guiGaia->Name));
//  314         break;
//  315     }
//  316 }
??v_allControl_Create_3:
??v_allControl_Create_5:
        BX       LR               ;; return
//  317 /******************************************************************************/
//  318 /******************************************************************************/
//  319 /******************************************************************************/
//  320 /******************************************************************************/
//  321 /******************************************************************************/
//  322 /******************************************************************************/
//  323 /******************************************************************************/
//  324 /******************************************************************************/
//  325 /******************************************************************************/
//  326 /******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  327 uint8 (FCN_NULL) ( s_Control ** guiGaia )
//  328 {
//  329     /*
//  330     switch(guiGaia->Tag)
//  331     {
//  332         case GUI_None:
//  333         break;
//  334         case GUI_Window:
//  335             //(_s_GUI_Window * )guiGaia->Name;
//  336         break;
//  337         case GUI_Cmd:
//  338             //(_s_GUI_Cmd * )guiGaia->Name;
//  339         break;
//  340         case GUI_Axis:
//  341             //(_s_GUI_Axis * )guiGaia->Name;
//  342         break;
//  343         case GUI_CoorData:
//  344             //(_s_GUI_CoorData * )guiGaia->Name;
//  345         break;
//  346     }
//  347     */
//  348     return 0;
FCN_NULL:
        MOVS     R0,#+0
        BX       LR               ;; return
//  349 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  350 uint8(CallBack_Back)( s_Control ** guiGaia ) // 标准CallBack函数
//  351 {
CallBack_Back:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  352     (*guiGaia)->Father->Create(&((*guiGaia)->Father));
        LDR      R0,[R4, #+0]
        ADDS     R0,R0,#+12
        LDR      R1,[R4, #+0]
        LDR      R1,[R1, #+12]
        LDR      R1,[R1, #+24]
        BLX      R1
//  353     (*guiGaia) = (*guiGaia)->Father;
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+12]
        STR      R0,[R4, #+0]
//  354     (*guiGaia)->Done = (*guiGaia)->Idle;
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+32]
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
//  355     return 0;
        MOVS     R0,#+0
        POP      {R4,PC}          ;; return
//  356 }
//  357 /******************************************************************************/

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  358 uint16 timer = 0;
timer:
        DS8 2

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  359 uint8(CallBack_Show)(s_Control ** guiGaia) // 标准CallBack函数
//  360 {
CallBack_Show:
        PUSH     {R4,R5,LR}
        SUB      SP,SP,#+12
//  361     uint16 BackColor = ((_s_GUI_Window * )((*guiGaia)->Father->Name))->Color;
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+12]
        LDR      R1,[R1, #+8]
        LDRH     R4,[R1, #+8]
//  362     _s_GUI_Cmd * gui = (_s_GUI_Cmd *)((*guiGaia)->Name);
        LDR      R0,[R0, #+0]
        LDR      R5,[R0, #+8]
//  363     LCD_SetPath(0);
        MOVS     R0,#+0
        BL       LCD_SetPath
//  364     uint16 X_font = gui->Position.x + gui->Position.width + 1;
        LDRH     R0,[R5, #+0]
        LDRH     R1,[R5, #+4]
        ADDS     R0,R1,R0
        ADDS     R0,R0,#+1
//  365     uint16 Y_font = gui->Position.y + ((gui->Position.height-8)/2);
        LDRH     R1,[R5, #+2]
        LDRH     R2,[R5, #+6]
        SUBS     R2,R2,#+8
        MOVS     R3,#+2
        SDIV     R2,R2,R3
        ADDS     R1,R2,R1
//  366     v_BIOS_6x8str_Ascii(X_font,
//  367                         Y_font,
//  368                         gui->Color.fontColor,
//  369                         BackColor,
//  370                         "OK");
        ADR.N    R2,??DataTable4  ;; 0x4F, 0x4B, 0x00, 0x00
        STR      R2,[SP, #+0]
        MOVS     R3,R4
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        LDRH     R2,[R5, #+8]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       v_BIOS_6x8str_Ascii
//  371     timer ++;
        LDR.N    R0,??DataTable4_2
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable4_2
        STRH     R0,[R1, #+0]
//  372     v_BIOS_6x8Num(200,200,Red,Black,timer);
        LDR.N    R0,??DataTable4_2
        LDRH     R0,[R0, #+0]
        BL       __aeabi_ui2d
        STRD     R0,R1,[SP, #+0]
        MOVS     R3,#+0
        MOV      R2,#+63488
        MOVS     R1,#+200
        MOVS     R0,#+200
        BL       v_BIOS_6x8Num
//  373     return 0;
        MOVS     R0,#+0
        POP      {R1-R5,PC}       ;; return
//  374 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC8      0x4F, 0x4B, 0x00, 0x00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     _v_Cmd_Create

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     timer
//  375 /******************************************************************************/
//  376 // Data Scope CallBack

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  377 uint8(DataScope_Create)(s_Control ** Topest) // 标准CallBack函数
//  378 {
DataScope_Create:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  379     s_Control * Me_Toper = *Topest;
        LDR      R0,[R4, #+0]
        B.N      ??DataScope_Create_0
//  380     while(GUI_Window != Me_Toper->Tag)
//  381     {
//  382         Me_Toper = Me_Toper->RiFriend;
??DataScope_Create_1:
        LDR      R0,[R0, #+20]
//  383     }
??DataScope_Create_0:
        LDRB     R1,[R0, #+4]
        CMP      R1,#+1
        BNE.N    ??DataScope_Create_1
//  384     if( ((_s_GUI_Window*)(Me_Toper->Name))->SonsNum > 0 )
        LDR      R1,[R0, #+8]
        LDRB     R1,[R1, #+0]
        CMP      R1,#+0
        BEQ.N    ??DataScope_Create_2
//  385     {
//  386         (*Topest) = (((_s_GUI_Window*)(Me_Toper->Name))->Son_Windows[0]);
        LDR      R0,[R0, #+8]
        LDR      R0,[R0, #+4]
        LDR      R0,[R0, #+0]
        STR      R0,[R4, #+0]
//  387     }
//  388     (*Topest)->Create(Topest);
??DataScope_Create_2:
        MOVS     R0,R4
        LDR      R1,[R4, #+0]
        LDR      R1,[R1, #+24]
        BLX      R1
//  389     (*Topest)->Done = (*Topest)->Idle;
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+32]
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
//  390     return 0;
        MOVS     R0,#+0
        POP      {R4,PC}          ;; return
//  391 }

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "  "
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "<="
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(0)
        DATA
        DC8 ""

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "OK"
        DC8 0

        END
//  392 /******************************************************************************/
//  393 /******************************************************************************/
//  394 /******************************************************************************/
//  395 /******************************************************************************/
// 
//     2 bytes in section .bss
//    13 bytes in section .rodata
// 1 432 bytes in section .text
// 
// 1 432 bytes of CODE  memory
//    13 bytes of CONST memory
//     2 bytes of DATA  memory
//
//Errors: none
//Warnings: none
