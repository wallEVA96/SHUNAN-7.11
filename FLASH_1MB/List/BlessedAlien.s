///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     29/Jun/2015  21:49:20 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\创作室\飞思卡尔智能小车\顺暗三号\代码\顺暗三号-起源- /
//                    第一代板\Library\BlessedAlien\BlessedAlien.c            /
//    Command line =  D:\创作室\飞思卡尔智能小车\顺暗三号\代码\顺暗三号-起源- /
//                    第一代板\Library\BlessedAlien\BlessedAlien.c -D IAR -D  /
//                    TWR_K60F120M -lCN D:\创作室\飞思卡尔智能小车\顺暗三号\� /
//                    隲顺暗三号-起源-第一代板\FLASH_1MB\List\ -lB          /
//                    D:\创作室\飞思卡尔智能小车\顺暗三号\代码\顺暗三号-起源- /
//                    第一代板\FLASH_1MB\List\ -o                             /
//                    D:\创作室\飞思卡尔智能小车\顺暗三号\代码\顺暗三号-起源- /
//                    第一代板\FLASH_1MB\Obj\ --no_cse --no_unroll            /
//                    --no_inline --no_code_motion --no_tbaa --no_clustering  /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=VFPv4_sp --dlib_config         /
//                    "C:\Program Files (x86)\IAR Systems\Embedded Workbench  /
//                    6.5\arm\INC\c\DLib_Config_Normal.h" -I                  /
//                    D:\创作室\飞思卡尔智能小车\顺暗三号\代码\顺暗三号-起源- /
//                    第一代板\ -I D:\创作室\飞思卡尔智能小车\顺暗三号\代码\� /
//                    嘲等�-起源-第一代板\Library\ -I                       /
//                    D:\创作室\飞思卡尔智能小车\顺暗三号\代码\顺暗三号-起源- /
//                    第一代板\Library\BlessedAlien\ -I                       /
//                    D:\创作室\飞思卡尔智能小车\顺暗三号\代码\顺暗三号-起源- /
//                    第一代板\ShunAn_Panel\ -Ol --use_c++_inline             /
//    List file    =  D:\创作室\飞思卡尔智能小车\顺暗三号\代码\顺暗三号-起源- /
//                    第一代板\FLASH_1MB\List\BlessedAlien.s                  /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        PUBLIC C6x8

// D:\创作室\飞思卡尔智能小车\顺暗三号\代码\顺暗三号-起源-第一代板\Library\BlessedAlien\BlessedAlien.c
//    1 #include "arm_cm4.h"
//    2 #include "BlessedAlien.h"
//    3 

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//    4 const uint8 C6x8[][6] = // 6代表列，8代表行
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

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//    5 {
//    6     { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 },   // sp 20
//    7     { 0x00, 0x00, 0x00, 0x2f, 0x00, 0x00 },   // !
//    8     { 0x00, 0x00, 0x07, 0x00, 0x07, 0x00 },   // "
//    9     { 0x00, 0x14, 0x7f, 0x14, 0x7f, 0x14 },   // #
//   10     { 0x00, 0x24, 0x2a, 0x7f, 0x2a, 0x12 },   // $
//   11     { 0x00, 0x62, 0x64, 0x08, 0x13, 0x23 },   // %
//   12     { 0x00, 0x36, 0x49, 0x55, 0x22, 0x50 },   // &
//   13     { 0x00, 0x00, 0x05, 0x03, 0x00, 0x00 },   // '
//   14     { 0x00, 0x00, 0x1c, 0x22, 0x41, 0x00 },   // (
//   15     { 0x00, 0x00, 0x41, 0x22, 0x1c, 0x00 },   // )
//   16     { 0x00, 0x14, 0x08, 0x3E, 0x08, 0x14 },   // *
//   17     { 0x00, 0x08, 0x08, 0x3E, 0x08, 0x08 },   // +
//   18     { 0x00, 0x00, 0x00, 0xA0, 0x60, 0x00 },   // ,
//   19     { 0x00, 0x08, 0x08, 0x08, 0x08, 0x08 },   // -
//   20     { 0x00, 0x00, 0x60, 0x60, 0x00, 0x00 },   // .
//   21     { 0x00, 0x20, 0x10, 0x08, 0x04, 0x02 },   // /
//   22     { 0x00, 0x3E, 0x51, 0x49, 0x45, 0x3E },   // 0
//   23     { 0x00, 0x00, 0x42, 0x7F, 0x40, 0x00 },   // 1
//   24     { 0x00, 0x42, 0x61, 0x51, 0x49, 0x46 },   // 2
//   25     { 0x00, 0x21, 0x41, 0x45, 0x4B, 0x31 },   // 3
//   26     { 0x00, 0x18, 0x14, 0x12, 0x7F, 0x10 },   // 4
//   27     { 0x00, 0x27, 0x45, 0x45, 0x45, 0x39 },   // 5
//   28     { 0x00, 0x3C, 0x4A, 0x49, 0x49, 0x30 },   // 6
//   29     { 0x00, 0x01, 0x71, 0x09, 0x05, 0x03 },   // 7
//   30     { 0x00, 0x36, 0x49, 0x49, 0x49, 0x36 },   // 8
//   31     { 0x00, 0x06, 0x49, 0x49, 0x29, 0x1E },   // 9
//   32     { 0x00, 0x00, 0x36, 0x36, 0x00, 0x00 },   // :
//   33     { 0x00, 0x00, 0x56, 0x36, 0x00, 0x00 },   // ;
//   34     { 0x00, 0x08, 0x14, 0x22, 0x41, 0x00 },   // <
//   35     { 0x00, 0x14, 0x14, 0x14, 0x14, 0x14 },   // =
//   36     { 0x00, 0x00, 0x41, 0x22, 0x14, 0x08 },   // >
//   37     { 0x00, 0x02, 0x01, 0x51, 0x09, 0x06 },   // ?
//   38     { 0x00, 0x32, 0x49, 0x59, 0x51, 0x3E },   // @
//   39     { 0x00, 0x7C, 0x12, 0x11, 0x12, 0x7C },   // A
//   40     { 0x00, 0x7F, 0x49, 0x49, 0x49, 0x36 },   // B
//   41     { 0x00, 0x3E, 0x41, 0x41, 0x41, 0x22 },   // C
//   42     { 0x00, 0x7F, 0x41, 0x41, 0x22, 0x1C },   // D
//   43     { 0x00, 0x7F, 0x49, 0x49, 0x49, 0x41 },   // E
//   44     { 0x00, 0x7F, 0x09, 0x09, 0x09, 0x01 },   // F
//   45     { 0x00, 0x3E, 0x41, 0x49, 0x49, 0x7A },   // G
//   46     { 0x00, 0x7F, 0x08, 0x08, 0x08, 0x7F },   // H
//   47     { 0x00, 0x00, 0x41, 0x7F, 0x41, 0x00 },   // I
//   48     { 0x00, 0x20, 0x40, 0x41, 0x3F, 0x01 },   // J
//   49     { 0x00, 0x7F, 0x08, 0x14, 0x22, 0x41 },   // K
//   50     { 0x00, 0x7F, 0x40, 0x40, 0x40, 0x40 },   // L
//   51     { 0x00, 0x7F, 0x02, 0x0C, 0x02, 0x7F },   // M
//   52     { 0x00, 0x7F, 0x04, 0x08, 0x10, 0x7F },   // N
//   53     { 0x00, 0x3E, 0x41, 0x41, 0x41, 0x3E },   // O
//   54     { 0x00, 0x7F, 0x09, 0x09, 0x09, 0x06 },   // P
//   55     { 0x00, 0x3E, 0x41, 0x51, 0x21, 0x5E },   // Q
//   56     { 0x00, 0x7F, 0x09, 0x19, 0x29, 0x46 },   // R
//   57     { 0x00, 0x46, 0x49, 0x49, 0x49, 0x31 },   // S
//   58     { 0x00, 0x01, 0x01, 0x7F, 0x01, 0x01 },   // T
//   59     { 0x00, 0x3F, 0x40, 0x40, 0x40, 0x3F },   // U
//   60     { 0x00, 0x1F, 0x20, 0x40, 0x20, 0x1F },   // V
//   61     { 0x00, 0x3F, 0x40, 0x38, 0x40, 0x3F },   // W
//   62     { 0x00, 0x63, 0x14, 0x08, 0x14, 0x63 },   // X
//   63     { 0x00, 0x07, 0x08, 0x70, 0x08, 0x07 },   // Y
//   64     { 0x00, 0x61, 0x51, 0x49, 0x45, 0x43 },   // Z
//   65     { 0x00, 0x00, 0x7F, 0x41, 0x41, 0x00 },   // [
//   66     { 0x00, 0x55, 0x2A, 0x55, 0x2A, 0x55 },   // 55
//   67     { 0x00, 0x00, 0x41, 0x41, 0x7F, 0x00 },   // ]
//   68     { 0x00, 0x04, 0x02, 0x01, 0x02, 0x04 },   // ^
//   69     { 0x00, 0x40, 0x40, 0x40, 0x40, 0x40 },   // _
//   70     { 0x00, 0x00, 0x01, 0x02, 0x04, 0x00 },   // '
//   71     { 0x00, 0x20, 0x54, 0x54, 0x54, 0x78 },   // a
//   72     { 0x00, 0x7F, 0x48, 0x44, 0x44, 0x38 },   // b
//   73     { 0x00, 0x38, 0x44, 0x44, 0x44, 0x20 },   // c
//   74     { 0x00, 0x38, 0x44, 0x44, 0x48, 0x7F },   // d
//   75     { 0x00, 0x38, 0x54, 0x54, 0x54, 0x18 },   // e
//   76     { 0x00, 0x08, 0x7E, 0x09, 0x01, 0x02 },   // f
//   77     { 0x00, 0x18, 0xA4, 0xA4, 0xA4, 0x7C },   // g
//   78     { 0x00, 0x7F, 0x08, 0x04, 0x04, 0x78 },   // h
//   79     { 0x00, 0x00, 0x44, 0x7D, 0x40, 0x00 },   // i
//   80     { 0x00, 0x40, 0x80, 0x84, 0x7D, 0x00 },   // j
//   81     { 0x00, 0x7F, 0x10, 0x28, 0x44, 0x00 },   // k
//   82     { 0x00, 0x00, 0x41, 0x7F, 0x40, 0x00 },   // l
//   83     { 0x00, 0x7C, 0x04, 0x18, 0x04, 0x78 },   // m
//   84     { 0x00, 0x7C, 0x08, 0x04, 0x04, 0x78 },   // n
//   85     { 0x00, 0x38, 0x44, 0x44, 0x44, 0x38 },   // o
//   86     { 0x00, 0xFC, 0x24, 0x24, 0x24, 0x18 },   // p
//   87     { 0x00, 0x18, 0x24, 0x24, 0x18, 0xFC },   // q
//   88     { 0x00, 0x7C, 0x08, 0x04, 0x04, 0x08 },   // r
//   89     { 0x00, 0x48, 0x54, 0x54, 0x54, 0x20 },   // s
//   90     { 0x00, 0x04, 0x3F, 0x44, 0x40, 0x20 },   // t
//   91     { 0x00, 0x3C, 0x40, 0x40, 0x20, 0x7C },   // u
//   92     { 0x00, 0x1C, 0x20, 0x40, 0x20, 0x1C },   // v
//   93     { 0x00, 0x3C, 0x40, 0x30, 0x40, 0x3C },   // w
//   94     { 0x00, 0x44, 0x28, 0x10, 0x28, 0x44 },   // x
//   95     { 0x00, 0x1C, 0xA0, 0xA0, 0xA0, 0x7C },   // y
//   96     { 0x00, 0x44, 0x64, 0x54, 0x4C, 0x44 },   // z
//   97     { 0x14, 0x14, 0x14, 0x14, 0x14, 0x14 }    // horiz lines
//   98 };
// 
// 552 bytes in section .rodata
// 
// 552 bytes of CONST memory
//
//Errors: none
//Warnings: none
