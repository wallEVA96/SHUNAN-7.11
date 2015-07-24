///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     16/Aug/2014  22:11:09 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\pc\Desktop\继续做的事情\四旋翼飞行器 -         /
//                    TM4123G\代码\遥控器\ShunAn2\GodRecognitionx11_12.c      /
//    Command line =  "C:\Users\pc\Desktop\继续做的事情\四旋翼飞行器 -        /
//                    TM4123G\代码\遥控器\ShunAn2\GodRecognitionx11_12.c" -D  /
//                    IAR -D ShunAn2 -lCN "C:\Users\pc\Desktop\继续做的事情\� /
//                    男矸尚衅� - TM4123G\代码\遥控器\FLASH_1M\List\" -lB   /
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
//                    TM4123G\代码\遥控器\FLASH_1M\List\GodRecognitionx11_12. /
//                    s                                                       /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_cdcmple
        EXTERN __aeabi_cdrcmple
        EXTERN __aeabi_cfcmple
        EXTERN __aeabi_cfrcmple
        EXTERN __aeabi_d2f
        EXTERN __aeabi_d2iz
        EXTERN __aeabi_dadd
        EXTERN __aeabi_dmul
        EXTERN __aeabi_f2d
        EXTERN __aeabi_f2iz
        EXTERN __aeabi_fadd
        EXTERN __aeabi_fdiv
        EXTERN __aeabi_fmul
        EXTERN __aeabi_fsub
        EXTERN __aeabi_i2d
        EXTERN __aeabi_i2f
        EXTERN __aeabi_ui2d
        EXTERN __aeabi_ui2f

        PUBLIC CCD1
        PUBLIC CCD1ImageAbstract
        PUBLIC CCD2
        PUBLIC CCD2ImageAbstract
        PUBLIC Con
        PUBLIC DirSpeedGive
        PUBLIC Encoder
        PUBLIC FindCentralLine
        PUBLIC GR_ServerPWM1
        PUBLIC GR_ServerPWM2
        PUBLIC GR_SpeedGive1
        PUBLIC GR_SpeedGive2
        PUBLIC Give
        PUBLIC GodRecognitionInit
        PUBLIC Gyroscope
        PUBLIC Infrared
        PUBLIC SpecialStatus
        PUBLIC SpeedContral
        PUBLIC Trk

// C:\Users\pc\Desktop\继续做的事情\四旋翼飞行器 - TM4123G\代码\遥控器\ShunAn2\GodRecognitionx11_12.c
//    1 /*!
//    2  *  @brief      上帝的双CCD模式识别算法C文件
//    3  *  @author     弓箭
//    4  *  @date       2014-3-17
//    5  */
//    6 #include "GodRecognitionx11_12.h"
//    7 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    8 EncoderInformation Encoder = {0};//编码器相关变量
Encoder:
        DS8 404

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    9 InfraredInformation Infrared = {0};//红外对管相关变量
Infrared:
        DS8 404

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   10 GyroscopeInformation Gyroscope = {0};//陀螺仪相关变量
Gyroscope:
        DS8 404

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   11 CCDInformation CCD1 = {0};//CCD1原始图像相关数据
CCD1:
        DS8 136

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   12 CCDInformation CCD2 = {0};//CCD2原始图像相关数据
CCD2:
        DS8 136

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   13 TrackInformation_v2 Trk = {0};//赛道信息
Trk:
        DS8 1784

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   14 DirSpeedGiveInformation Give = {0};//方向和速度给定
Give:
        DS8 64

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   15 ContralInformation Con = {0};//控制与设置
Con:
        DS8 68
//   16 

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//   17 const unsigned char GR_ServerPWM1[201] =
GR_ServerPWM1:
        DATA
        DC8 0, 2, 4, 6, 8, 10, 12, 13, 14, 15, 16, 17, 20, 25, 30, 35, 40, 45
        DC8 50, 57, 58, 59, 60, 61, 62, 63, 65, 68, 70, 72, 75, 76, 77, 77, 78
        DC8 79, 80, 81, 82, 83, 84, 85, 86, 87, 87, 88, 89, 90, 91, 92, 93, 94
        DC8 95, 96, 97, 98, 99, 99, 100, 100, 100, 100, 100, 100, 100, 100, 100
        DC8 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100
        DC8 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100
        DC8 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100
        DC8 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100
        DC8 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100
        DC8 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100
        DC8 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100
        DC8 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100
        DC8 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100
        DC8 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100
        DC8 100, 100, 100, 100, 0, 0, 0
//   18 //CCD1舵机打角表,横坐标是偏差（中心坐标与100之差的绝对值），任意值不能超过100
//   19 {
//   20     //0    1   2   3   4   5   6   7   8   9 //10  11  12  13  14  15  16  17  18  19 
//   21       0,   2,  4,  6,  8, 10, 12, 13, 14, 15,  16, 17, 20, 25, 30, 35, 40, 45, 50, 57,
//   22         
//   23     //20  21  22  23  24  25  26  27  28  29 //30  31  32  33  34  35  36  37  38  39
//   24       58, 59, 60, 61, 62, 63, 65, 68, 70, 72,  75, 76, 77, 77, 78, 79, 80, 81, 82, 83,
//   25       
//   26     //40  41  42  43  44  45  46  47  48  49 //50  51  52  53  54  55  56  57  58  59
//   27       84, 85, 86, 87, 87, 88, 89, 90, 91, 92,  93, 94, 95, 96, 97, 98, 99, 99, 100,100,    
//   28     
//   29     //60  61  62  63  64  65  66  67  68  69 //70  71  72  73  74  75  76  77  78  79 
//   30       100,100,100,100,100,100,100,100,100,100, 100,100,100,100,100,100,100,100,100,100,   
//   31       
//   32     //80  81  82  83  84  85  86  87  88  89 //90  91  92  93  94  95  96  97  98  99  
//   33       100,100,100,100,100,100,100,100,100,100, 100,100,100,100,100,100,100,100,100,100, 
//   34        
//   35     //100 101 102 103 104 105 106 107 108 109//110 111 112 113 114 115 116 117 118 119
//   36       100,100,100,100,100,100,100,100,100,100, 100,100,100,100,100,100,100,100,100,100, 
//   37      
//   38     //120 121 122 123 124 125 126 127 128 129//130 131 132 133 134 135 136 137 138 139
//   39       100,100,100,100,100,100,100,100,100,100, 100,100,100,100,100,100,100,100,100,100, 
//   40      
//   41     //140 141 142 143 144 145 146 147 148 149//150 151 152 153 154 155 156 157 158 159
//   42       100,100,100,100,100,100,100,100,100,100, 100,100,100,100,100,100,100,100,100,100, 
//   43      
//   44     //160 161 162 163 164 165 166 167 168 169//170 171 172 173 174 175 176 177 178 179
//   45       100,100,100,100,100,100,100,100,100,100, 100,100,100,100,100,100,100,100,100,100, 
//   46      
//   47     //180 181 182 183 184 185 186 187 188 189//190 191 192 193 194 195 196 197 198 199 200
//   48       100,100,100,100,100,100,100,100,100,100, 100,100,100,100,100,100,100,100,100,100,100
//   49          
//   50 };
//   51 

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//   52 const unsigned char GR_ServerPWM2[201] =
GR_ServerPWM2:
        DATA
        DC8 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9, 10, 10, 10, 10, 10, 12, 14, 18
        DC8 18, 19, 20, 21, 22, 23, 24, 30, 32, 34, 35, 36, 37, 38, 39, 40, 41
        DC8 42, 43, 44, 45, 46, 46, 46, 46, 46, 46, 47, 47, 48, 49, 49, 50, 52
        DC8 53, 55, 55, 55, 55, 55, 55, 55, 55, 55, 55, 56, 56, 56, 56, 57, 57
        DC8 57, 58, 58, 58, 58, 59, 59, 59, 59, 60, 60, 60, 61, 61, 61, 62, 62
        DC8 62, 63, 63, 70, 80, 90, 100, 100, 100, 100, 100, 100, 100, 100, 100
        DC8 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100
        DC8 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100
        DC8 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100
        DC8 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100
        DC8 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100
        DC8 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100
        DC8 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100
        DC8 100, 100, 100, 100, 100, 100, 100, 0, 0, 0
//   53 //CCD2舵机打角表,横坐标是偏差（中心坐标与100之差的绝对值），任意值不能超过100！
//   54 {
//   55     //0    1   2   3   4   5   6   7   8   9 //10  11  12  13  14  15  16  17  18  19 
//   56       0,   1,  2,  3,  4,  5,  6,  7,  8,  8,   9,  9, 10, 10, 10, 10, 10, 12, 14, 18,
//   57         
//   58     //20  21  22  23  24  25  26  27  28  29 //30  31  32  33  34  35  36  37  38  39
//   59       18, 19, 20, 21, 22, 23, 24, 30, 32, 34,  35, 36, 37, 38, 39, 40, 41, 42, 43, 44,
//   60       
//   61     //40  41  42  43  44  45  46  47  48  49 //50  51  52  53  54  55  56  57  58  59
//   62       45, 46, 46, 46, 46, 46, 46, 47, 47, 48,  49, 49, 50, 52, 53, 55, 55, 55, 55, 55,    
//   63     
//   64     //60  61  62  63  64  65  66  67  68  69 //70  71  72  73  74  75  76  77  78  79 
//   65       55, 55, 55, 55, 55, 56, 56, 56, 56, 57,  57, 57, 58, 58, 58, 58, 59, 59, 59, 59,   
//   66       
//   67     //80  81  82  83  84  85  86  87  88  89 //90  91  92  93  94  95  96  97  98  99  
//   68       60, 60, 60, 61, 61, 61, 62, 62, 62, 63,  63, 70, 80, 90,100,100,100,100,100,100,
//   69        
//   70     //100 101 102 103 104 105 106 107 108 109//110 111 112 113 114 115 116 117 118 119
//   71       100,100,100,100,100,100,100,100,100,100, 100,100,100,100,100,100,100,100,100,100, 
//   72      
//   73     //120 121 122 123 124 125 126 127 128 129//130 131 132 133 134 135 136 137 138 139
//   74       100,100,100,100,100,100,100,100,100,100, 100,100,100,100,100,100,100,100,100,100, 
//   75      
//   76     //140 141 142 143 144 145 146 147 148 149//150 151 152 153 154 155 156 157 158 159
//   77       100,100,100,100,100,100,100,100,100,100, 100,100,100,100,100,100,100,100,100,100, 
//   78      
//   79     //160 161 162 163 164 165 166 167 168 169//170 171 172 173 174 175 176 177 178 179
//   80       100,100,100,100,100,100,100,100,100,100, 100,100,100,100,100,100,100,100,100,100, 
//   81      
//   82     //180 181 182 183 184 185 186 187 188 189//190 191 192 193 194 195 196 197 198 199 200
//   83       100,100,100,100,100,100,100,100,100,100, 100,100,100,100,100,100,100,100,100,100,100
//   84          
//   85 };
//   86 

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//   87 const unsigned int GR_SpeedGive1[201] =
GR_SpeedGive1:
        DATA
        DC32 210, 210, 210, 210, 210, 210, 210, 210, 210, 210, 205, 200, 195
        DC32 190, 185, 181, 178, 175, 173, 172, 170, 168, 166, 164, 162, 160
        DC32 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 148
        DC32 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 136, 135
        DC32 133, 131, 129, 128, 126, 125, 124, 123, 122, 122, 122, 122, 122
        DC32 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122
        DC32 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122
        DC32 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122
        DC32 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122
        DC32 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122
        DC32 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122
        DC32 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122
        DC32 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122
        DC32 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122
        DC32 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122
        DC32 122, 122, 122, 122, 122, 122
//   88 //CCD1电机给定转速表，横坐标为偏差
//   89 {
//   90     //0   1   2   3   4   5   6   7   8   9 //10  11  12  13  14  15  16  17  18  19 //20  21  22  23  24  25  26  27  28  29 //30  31  32  33  34  35  36  37  38  39//40  41  42  43  44  45  46  47  48  49 //50  51  52  53  54  55  56  57  58  59//60  61  62  63  64  65  66  67  68  69 //70  71  72  73  74  75  76  77  78  79 //80  81  82  83  84  85  86  87  88  89 //90  91  92  93  94  95  96  97  98  99  100 
//   91       210,210,210,210,210,210,210,210,210,210,205,200,195,190,185,181,178,175,173,172, 170,168,166,164,162,160,159,158,157,156, 155,154,153,152,151,150,149,148,148,148,147,146,145,144,143,142,141,140,139,138, 136,135,133,131,129,128,126,125,124,123,122,122,122,122,122,122,122,122,122,122, 122,122,122,122,122,122,122,122,122,122, 122,122,122,122,122,122,122,122,122,122,122,122, 122,122,122,122,122,122,122,122,122,  
//   92     //101 102 103 104 105 106 107 108 109/110 111 112 113 114 115 116 117 118 119/120 121 122 123 124 125 126 127 128 129/130  131 132 133 134 135 136 137 138 139/140 141 142 143 144 145 146 147 148 149/150  151 152 153 154 155 156 157 158 159/160  161 162 163 164 165 166 167 168 169/170  171 172 173 174 175 176 177 178 179/180 181 182 183 184 185 186 187 188 189/190   191 192 193 194 195 196 197 198 199 200 
//   93      122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122, 122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122, 122,122,122,122,122,122,122,122,122,122, 122,122,122,122,122,122,122,122,122,122, 122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,  122,122,122,122,122,122,122,122,122,122
//   94 };
//   95 

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//   96 const unsigned int GR_SpeedGive2[201] =
GR_SpeedGive2:
        DATA
        DC32 270, 270, 270, 270, 270, 270, 270, 270, 270, 270, 268, 267, 265
        DC32 264, 262, 261, 259, 258, 256, 255, 253, 252, 250, 249, 247, 246
        DC32 244, 243, 241, 240, 238, 237, 235, 235, 235, 234, 232, 230, 229
        DC32 228, 226, 225, 223, 221, 219, 218, 216, 214, 212, 209, 198, 188
        DC32 177, 167, 157, 146, 135, 135, 135, 134, 134, 133, 133, 133, 132
        DC32 132, 132, 131, 131, 131, 130, 130, 130, 129, 129, 128, 128, 128
        DC32 127, 127, 127, 126, 126, 125, 125, 125, 124, 123, 122, 122, 122
        DC32 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122
        DC32 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122
        DC32 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122
        DC32 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122
        DC32 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122
        DC32 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122
        DC32 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122
        DC32 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122
        DC32 122, 122, 122, 122, 122, 122
//   97 //CCD2电机给定转速表，横坐标为偏差
//   98 {
//   99     //0   1   2   3   4   5   6   7   8   9 //10  11  12  13  14  15  16  17  18  19 //20  21  22  23  24  25  26  27  28  29 //30  31  32  33  34  35  36  37  38  39//40  41  42  43  44  45  46  47  48  49 //50  51  52  53  54  55  56  57  58  59//60  61  62  63  64  65  66  67  68  69 //70  71  72  73  74  75  76  77  78  79 //80  81  82  83  84  85  86  87  88  89 //90  91  92  93  94  95  96  97  98  99  100 
//  100       270,270,270,270,270,270,270,270,270,270,268,267,265,264,262,261,259,258,256,255, 253,252,250,249,247,246,244,243,241,240, 238,237,235,235,235,234,232,230,229,228,226,225,223,221,219,218,216,214,212,209, 198,188,177,167,157,146,135,135,135,134,134,133,133,133,132,132,132,131,131,131, 130,130,130,129,129,128,128,128,127,127,127,126,126,125,125,125,124,123,122,122, 122,122,122,122,122,122,122,122,122,122,122,        
//  101     //101 102 103 104 105 106 107 108 109/110 111 112 113 114 115 116 117 118 119/120  121 122 123 124 125 126 127 128 129/130  131 132 133 134 135 136 137 138 139/140 141 142 143 144 145 146 147 148 149/150  151 152 153 154 155 156 157 158 159/160  161 162 163 164 165 166 167 168 169/170  171 172 173 174 175 176 177 178 179/180  181 182 183 184 185 186 187 188 189/190  191 192 193 194 195 196 197 198 199 200 
//  102      122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122, 122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122, 122,122,122,122,122,122,122,122,122,122, 122,122,122,122,122,122,122,122,122,122, 122,122,122,122,122,122,122,122,122,122, 122,122,122,122,122,122,122,122,122,122, 122,122,122,122,122,122,122,122,122,122
//  103 };
//  104 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  105 void GodRecognitionInit(void)//算法变量初始化
//  106 {
//  107   for(uint8 i=0;i<maxRAMSaveNum;i++)
GodRecognitionInit:
        MOVS     R0,#+0
        B.N      ??GodRecognitionInit_0
//  108   {
//  109     Encoder.encoder[i] = 0;   
??GodRecognitionInit_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable2
        MOVS     R2,#+0
        STRH     R2,[R1, R0, LSL #+1]
//  110     Trk.cen1[i] = 1000;  
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable2_1
        ADDS     R1,R1,R0, LSL #+1
        MOV      R2,#+1000
        STRH     R2,[R1, #+410]
//  111     Trk.cen2[i] = 1000;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable2_1
        ADDS     R1,R1,R0, LSL #+1
        MOV      R2,#+1000
        STRH     R2,[R1, #+1242]
//  112   }
        ADDS     R0,R0,#+1
??GodRecognitionInit_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+200
        BLT.N    ??GodRecognitionInit_1
//  113   Trk.Width1 = CCD1TrkWidth;//初试CCD1赛道宽度等于默认值
        LDR.N    R0,??DataTable2_1
        MOVS     R1,#+62
        STRB     R1,[R0, #+814]
//  114   Trk.Width2 = CCD2TrkWidth;//初试CCD2赛道宽度等于默认值
        LDR.N    R0,??DataTable2_1
        MOVS     R1,#+68
        STRB     R1,[R0, #+1646]
//  115   Con.SpeedContralPeriod = 1;//初试速度控制周期为1(ms)
        LDR.N    R0,??DataTable2_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+1]
//  116   Con.MainContralPeriod = 5;//初始控制周期等于5(ms)
        LDR.N    R0,??DataTable2_2
        MOVS     R1,#+5
        STRB     R1,[R0, #+3]
//  117   Con.EnableDirectionServer = 1;//使能打角舵机
        LDR.N    R0,??DataTable2_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+49]
//  118   Con.EnableMotor = 1;//使能电机
        LDR.N    R0,??DataTable2_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+50]
//  119   Con.EnableCrash = 1;//使能冲出赛道检测
        LDR.N    R0,??DataTable2_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+55]
//  120   Con.EnableStartline = 1;//使能起跑线检测
        LDR.N    R0,??DataTable2_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+54]
//  121   Con.EnableHerribone = 1;//使能人字检测
        LDR.N    R0,??DataTable2_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+51]
//  122   Con.EnableRoadblock = 1;//使能路障检测
        LDR.N    R0,??DataTable2_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+52]
//  123   Con.EnableRamp = 1;//使能坡道检测
        LDR.N    R0,??DataTable2_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+53]
//  124   Con.Battery = 8.0;//初试设置电池电压为8.0V
        LDR.N    R0,??DataTable2_2
        MOVS     R1,#+1090519040
        STR      R1,[R0, #+60]
//  125   Con.Ce_ = 1.57;//初试设置电动势常数
        LDR.N    R0,??DataTable2_2
        LDR.N    R1,??DataTable2_3  ;; 0x3fc8f5c3
        STR      R1,[R0, #+64]
//  126   Give.DPeriod = 50;//初始微分周期为100（ms）
        LDR.N    R0,??DataTable2_4
        MOVS     R1,#+50
        STRH     R1,[R0, #+12]
//  127   Give.D_motor = 0.5;//设定电机微分系数
        LDR.N    R0,??DataTable2_4
        MOVS     R1,#+1056964608
        STR      R1,[R0, #+28]
//  128   Give.D_server = 0.3;//设定舵机微分系数
        LDR.N    R0,??DataTable2_4
        LDR.N    R1,??DataTable2_5  ;; 0x3e99999a
        STR      R1,[R0, #+20]
//  129   Give.SpeedCoef = 1.0;//设定初始速度系数
        LDR.N    R0,??DataTable2_4
        MOVS     R1,#+1065353216
        STR      R1,[R0, #+40]
//  130   Give.ServerTestPWM = 100;//设定初始舵机调试PWM
        LDR.N    R0,??DataTable2_4
        MOVS     R1,#+100
        STRB     R1,[R0, #+5]
//  131   Trk.Straight1 = 1;//初始置位直道标志
        LDR.N    R0,??DataTable2_1
        MOVS     R1,#+1
        STRB     R1,[R0, #+826]
//  132   Trk.StraightRoad1 = 50000;//初始设置直道累加路程
        LDR.N    R0,??DataTable2_1
        MOVW     R1,#+50000
        STR      R1,[R0, #+828]
//  133 }
        BX       LR               ;; return
//  134 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  135 void CCD1ImageAbstract(void)//CCD1图像基本特征提取
//  136 {
CCD1ImageAbstract:
        PUSH     {R7,LR}
//  137   CCD1.max = 0;CCD1.min = 255;
        LDR.N    R0,??DataTable2_6
        MOVS     R1,#+0
        STRB     R1,[R0, #+128]
        LDR.N    R0,??DataTable2_6
        MOVS     R1,#+255
        STRB     R1,[R0, #+129]
//  138   for(uint8 i=0;i<128;i++)//提取出最大值和最小值
        MOVS     R0,#+0
        B.N      ??CCD1ImageAbstract_0
//  139     {
//  140       if(i>=CCD1illegalArea && i<=127 - CCD1illegalArea)//去除边界无效区域
??CCD1ImageAbstract_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        SUBS     R1,R0,#+10
        CMP      R1,#+108
        BCS.N    ??CCD1ImageAbstract_2
//  141       {
//  142         if(CCD1.img[i]>CCD1.max) CCD1.max = CCD1.img[i];
        LDR.N    R1,??DataTable2_6
        LDRB     R1,[R1, #+128]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable2_6
        LDRB     R2,[R0, R2]
        CMP      R1,R2
        BCS.N    ??CCD1ImageAbstract_3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable2_6
        LDRB     R1,[R0, R1]
        LDR.N    R2,??DataTable2_6
        STRB     R1,[R2, #+128]
//  143         if(CCD1.img[i]<CCD1.min) CCD1.min = CCD1.img[i];
??CCD1ImageAbstract_3:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable2_6
        LDRB     R1,[R0, R1]
        LDR.N    R2,??DataTable2_6
        LDRB     R2,[R2, #+129]
        CMP      R1,R2
        BCS.N    ??CCD1ImageAbstract_4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable2_6
        LDRB     R1,[R0, R1]
        LDR.N    R2,??DataTable2_6
        STRB     R1,[R2, #+129]
//  144         CCD1.aver = CCD1.aver + CCD1.img[i];    // CCD1.aver += CCD1.img[i];
??CCD1ImageAbstract_4:
        LDR.N    R1,??DataTable2_6
        LDRH     R1,[R1, #+130]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable2_6
        LDRB     R2,[R0, R2]
        ADDS     R1,R1,R2
        LDR.N    R2,??DataTable2_6
        STRH     R1,[R2, #+130]
//  145       }
//  146     }      
??CCD1ImageAbstract_2:
        ADDS     R0,R0,#+1
??CCD1ImageAbstract_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+128
        BLT.N    ??CCD1ImageAbstract_1
//  147     CCD1.aver = CCD1.aver/(128 - 2*CCD1illegalArea);//提取出平均值
        LDR.N    R0,??DataTable2_6
        LDRH     R0,[R0, #+130]
        MOVS     R1,#+108
        SDIV     R0,R0,R1
        LDR.N    R1,??DataTable2_6
        STRH     R0,[R1, #+130]
//  148     CCD1.threshold = (uint8)(((float)(CCD1.max - CCD1.min))*0.3);//提取出跳变阈值
        LDR.N    R0,??DataTable2_6
        LDRB     R0,[R0, #+128]
        LDR.N    R1,??DataTable2_6
        LDRB     R1,[R1, #+129]
        SUBS     R0,R0,R1
        BL       __aeabi_i2f
        BL       __aeabi_f2d
        MOVS     R2,#+858993459
        LDR.N    R3,??DataTable2_7  ;; 0x3fd33333
        BL       __aeabi_dmul
        BL       __aeabi_d2iz
        LDR.N    R1,??DataTable2_6
        STRB     R0,[R1, #+132]
//  149 }
        POP      {R0,PC}          ;; return
//  150 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  151 void CCD2ImageAbstract(void)//CCD2图像基本特征提取
//  152 {
CCD2ImageAbstract:
        PUSH     {R7,LR}
//  153   CCD2.max = 0;CCD2.min = 255;
        LDR.N    R0,??DataTable2_8
        MOVS     R1,#+0
        STRB     R1,[R0, #+128]
        LDR.N    R0,??DataTable2_8
        MOVS     R1,#+255
        STRB     R1,[R0, #+129]
//  154   for(uint8 i=0;i<128;i++)//提取出最大值和最小值
        MOVS     R0,#+0
        B.N      ??CCD2ImageAbstract_0
//  155     {
//  156       if(i>=CCD2illegalArea && i<=127 - CCD2illegalArea)//去除边界无效区域
??CCD2ImageAbstract_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        SUBS     R1,R0,#+5
        CMP      R1,#+118
        BCS.N    ??CCD2ImageAbstract_2
//  157       {
//  158         if(CCD2.img[i]>CCD2.max) CCD2.max = CCD2.img[i];
        LDR.N    R1,??DataTable2_8
        LDRB     R1,[R1, #+128]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable2_8
        LDRB     R2,[R0, R2]
        CMP      R1,R2
        BCS.N    ??CCD2ImageAbstract_3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable2_8
        LDRB     R1,[R0, R1]
        LDR.N    R2,??DataTable2_8
        STRB     R1,[R2, #+128]
//  159         if(CCD2.img[i]<CCD2.min) CCD2.min = CCD2.img[i];
??CCD2ImageAbstract_3:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable2_8
        LDRB     R1,[R0, R1]
        LDR.N    R2,??DataTable2_8
        LDRB     R2,[R2, #+129]
        CMP      R1,R2
        BCS.N    ??CCD2ImageAbstract_4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable2_8
        LDRB     R1,[R0, R1]
        LDR.N    R2,??DataTable2_8
        STRB     R1,[R2, #+129]
//  160         CCD2.aver = CCD2.aver + CCD2.img[i];    // CCD2.aver += CCD2.img[i];
??CCD2ImageAbstract_4:
        LDR.N    R1,??DataTable2_8
        LDRH     R1,[R1, #+130]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable2_8
        LDRB     R2,[R0, R2]
        ADDS     R1,R1,R2
        LDR.N    R2,??DataTable2_8
        STRH     R1,[R2, #+130]
//  161       }
//  162     }      
??CCD2ImageAbstract_2:
        ADDS     R0,R0,#+1
??CCD2ImageAbstract_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+128
        BLT.N    ??CCD2ImageAbstract_1
//  163     CCD2.aver = CCD2.aver/(128 - 2*CCD2illegalArea);//提取出平均值
        LDR.N    R0,??DataTable2_8
        LDRH     R0,[R0, #+130]
        MOVS     R1,#+118
        SDIV     R0,R0,R1
        LDR.N    R1,??DataTable2_8
        STRH     R0,[R1, #+130]
//  164     CCD2.threshold = (uint8)(((float)(CCD2.max - CCD2.min))*0.3);//提取出跳变阈值
        LDR.N    R0,??DataTable2_8
        LDRB     R0,[R0, #+128]
        LDR.N    R1,??DataTable2_8
        LDRB     R1,[R1, #+129]
        SUBS     R0,R0,R1
        BL       __aeabi_i2f
        BL       __aeabi_f2d
        MOVS     R2,#+858993459
        LDR.N    R3,??DataTable2_7  ;; 0x3fd33333
        BL       __aeabi_dmul
        BL       __aeabi_d2iz
        LDR.N    R1,??DataTable2_8
        STRB     R0,[R1, #+132]
//  165 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     Encoder

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     Trk

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     Con

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     0x3fc8f5c3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     Give

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DC32     0x3e99999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_6:
        DC32     CCD1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_7:
        DC32     0x3fd33333

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_8:
        DC32     CCD2
//  166 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  167 void FindCentralLine(void)// 找中线
//  168 {
FindCentralLine:
        PUSH     {R4-R8,LR}
//  169     //*****************************************************************************************
//  170     //-----------------------------------------------------------------------------------------
//  171     //-------------------------------------提取CCD1左右黑边------------------------------------
//  172     //-----------------------------------------------------------------------------------------
//  173     //*****************************************************************************************
//  174     
//  175     Trk.lastCen1 = Trk.currentCen1;//暂存上一次的下标
        LDR.W    R0,??DataTable3
        LDR.W    R1,??DataTable3
        LDRH     R1,[R1, #+810]
        STRH     R1,[R0, #+812]
//  176     
//  177     Trk.lastLeft1 = Trk.currentLeft1;
        LDR.W    R0,??DataTable3
        LDR.W    R1,??DataTable3
        LDRH     R1,[R1, #+202]
        STRH     R1,[R0, #+204]
//  178     if(Trk.currentLeft1 == maxRAMSaveNum - 1)
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+202]
        CMP      R0,#+199
        BNE.N    ??FindCentralLine_0
//  179     {
//  180         Trk.currentLeft1 = 0;
        LDR.W    R0,??DataTable3
        MOVS     R1,#+0
        STRH     R1,[R0, #+202]
        B.N      ??FindCentralLine_1
//  181     }
//  182     else
//  183     {
//  184         Trk.currentLeft1 ++;
??FindCentralLine_0:
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+202]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable3
        STRH     R0,[R1, #+202]
//  185     } 
//  186     Trk.left1[Trk.currentLeft1] = 255;
??FindCentralLine_1:
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+202]
        LDR.W    R1,??DataTable3
        ADDS     R0,R0,R1
        MOVS     R1,#+255
        STRB     R1,[R0, #+1]
//  187     //扫描前先初始化当前边沿不存在  
//  188     //若上次的中线不处于CCD1的左视野之外，则可以向左扫描上升沿
//  189     if(Trk.cen1[Trk.lastCen1] >= 937 + CCD1illegalArea + CCD1ScanWidth)
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+812]
        LDR.W    R1,??DataTable3
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+410]
        MOVW     R1,#+955
        CMP      R0,R1
        BLT.W    ??FindCentralLine_2
//  190     {
//  191         uint16 ScanTime,Temp;
//  192         //uint8  IndexBeManyest = 0;
//  193         if(Trk.cen1[Trk.lastCen1] <= 937 + 127 - CCD1illegalArea)//超出图像边界限幅
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+812]
        LDR.W    R1,??DataTable3
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+410]
        MOVW     R1,#+1055
        CMP      R0,R1
        BGE.N    ??FindCentralLine_3
//  194         {
//  195             ScanTime = Trk.cen1[Trk.lastCen1] - 937 - CCD1illegalArea - CCD1ScanWidth + 1;//计算向左扫描次数
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+812]
        LDR.W    R1,??DataTable3
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+410]
        MOVW     R1,#+954
        SUBS     R6,R0,R1
//  196             Temp = Trk.cen1[Trk.lastCen1] - 937;
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+812]
        LDR.W    R1,??DataTable3
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+410]
        MOVW     R1,#+937
        SUBS     R7,R0,R1
        B.N      ??FindCentralLine_4
//  197         }
//  198         else
//  199         {
//  200             ScanTime = 127 - 2*CCD1illegalArea - CCD1ScanWidth + 1;//计算向左扫描次数
??FindCentralLine_3:
        MOVS     R6,#+100
//  201             Temp = 127 - CCD1illegalArea;
        MOVS     R7,#+117
//  202         }
//  203         //依次从中线向左扫描，直到扫描出上升沿或者达到扫描次数
//  204         /*
//  205             上升沿检测
//  206         */
//  207         for(uint8 i = 0;i<ScanTime&&Trk.left1[Trk.currentLeft1]==255;i++)
??FindCentralLine_4:
        MOVS     R8,#+0
        B.N      ??FindCentralLine_5
//  208         { //跳变检测的条件是：相隔CCD1ScanWidth的两个点之差大于阈值，也大于CCD整场图像平均值的0.2倍（?）
//  209             if(CCD1.img[Temp]>CCD1.img[Temp-CCD1ScanWidth] 
//  210                && CCD1.img[Temp]-CCD1.img[Temp-CCD1ScanWidth]>=CCD1.threshold 
//  211                && CCD1.img[Temp]-CCD1.img[Temp-CCD1ScanWidth]>=CCD1.aver*0.2)
??FindCentralLine_6:
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        LDR.W    R0,??DataTable3_1
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #-8]
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        LDR.W    R1,??DataTable3_1
        LDRB     R1,[R7, R1]
        CMP      R0,R1
        BCS.N    ??FindCentralLine_7
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        LDR.W    R0,??DataTable3_1
        LDRB     R0,[R7, R0]
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        LDR.W    R1,??DataTable3_1
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #-8]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable3_1
        LDRB     R1,[R1, #+132]
        CMP      R0,R1
        BLT.N    ??FindCentralLine_7
        LDR.W    R0,??DataTable3_1
        LDRH     R0,[R0, #+130]
        BL       __aeabi_ui2d
        LDR.W    R2,??DataTable3_2  ;; 0x9999999a
        LDR.W    R3,??DataTable3_3  ;; 0x3fc99999
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R4,R2
        MOVS     R5,R3
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        LDR.W    R0,??DataTable3_1
        LDRB     R0,[R7, R0]
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        LDR.W    R1,??DataTable3_1
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #-8]
        SUBS     R0,R0,R1
        BL       __aeabi_i2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_cdrcmple
        BHI.N    ??FindCentralLine_7
//  212             {
//  213                 Trk.left1[Trk.currentLeft1] = Temp-CCD1ScanWidth; 
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+202]
        LDR.W    R1,??DataTable3
        ADDS     R0,R0,R1
        MOVS     R1,R7
        SUBS     R1,R1,#+8
        STRB     R1,[R0, #+1]
//  214                 
//  215                 //Trk.LeftJumpVarStack[IndexBeManyest] = CCD1.img[Temp]-CCD1.img[Temp-CCD1ScanWidth];
//  216                 //IndexBeManyest ++;
//  217             
//  218             }
//  219             Temp--;
??FindCentralLine_7:
        SUBS     R7,R7,#+1
//  220         }
        ADDS     R8,R8,#+1
??FindCentralLine_5:
        MOV      R0,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R0,R6
        BCS.N    ??FindCentralLine_2
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+202]
        LDR.W    R1,??DataTable3
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+1]
        CMP      R0,#+255
        BEQ.N    ??FindCentralLine_6
//  221         //Trk.LeftMaxIndex = IndexBeManyest;
//  222     }
//  223     
//  224     
//  225     Trk.lastRight1 = Trk.currentRight1;
??FindCentralLine_2:
        LDR.W    R0,??DataTable3
        LDR.W    R1,??DataTable3
        LDRH     R1,[R1, #+406]
        STRH     R1,[R0, #+408]
//  226     if(Trk.currentRight1 == maxRAMSaveNum - 1)
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+406]
        CMP      R0,#+199
        BNE.N    ??FindCentralLine_8
//  227     {
//  228         Trk.currentRight1 = 0;
        LDR.W    R0,??DataTable3
        MOVS     R1,#+0
        STRH     R1,[R0, #+406]
        B.N      ??FindCentralLine_9
//  229     }
//  230     else
//  231     {
//  232         Trk.currentRight1 ++;
??FindCentralLine_8:
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+406]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable3
        STRH     R0,[R1, #+406]
//  233     }
//  234     Trk.right1[Trk.currentRight1] = 255;//扫描前先初始化当前边沿不存在
??FindCentralLine_9:
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+406]
        LDR.W    R1,??DataTable3
        ADDS     R0,R0,R1
        MOVS     R1,#+255
        STRB     R1,[R0, #+206]
//  235     //若上次的中线不处于CCD1的右视野之外，则可以向右扫描下降沿
//  236     if(Trk.cen1[Trk.lastCen1] <= 937 + 127 - CCD1illegalArea - CCD1ScanWidth)
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+812]
        LDR.W    R1,??DataTable3
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+410]
        MOVW     R1,#+1047
        CMP      R0,R1
        BGE.W    ??FindCentralLine_10
//  237     {
//  238         uint8 ScanTime,Temp;
//  239         //uint8 IndexBeManyest = 0;
//  240         if(Trk.cen1[Trk.lastCen1] >= 937 + CCD1illegalArea)//超出图像边界限幅
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+812]
        LDR.W    R1,??DataTable3
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+410]
        MOVW     R1,#+947
        CMP      R0,R1
        BLT.N    ??FindCentralLine_11
//  241         {
//  242             ScanTime = 937 + 127 -Trk.cen1[Trk.lastCen1] - CCD1illegalArea - CCD1ScanWidth + 1;//计算向右扫描次数
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+812]
        LDR.W    R1,??DataTable3
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+410]
        RSBS     R6,R0,#+23
//  243             Temp = Trk.cen1[Trk.lastCen1] - 937;
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+812]
        LDR.W    R1,??DataTable3
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+410]
        ADDS     R7,R0,#+87
        B.N      ??FindCentralLine_12
//  244         }
//  245         else
//  246         {
//  247             ScanTime = 127 - 2*CCD1illegalArea - CCD1ScanWidth + 1;//计算向右扫描次数
??FindCentralLine_11:
        MOVS     R6,#+100
//  248             Temp = CCD1illegalArea;
        MOVS     R7,#+10
//  249         }
//  250         //依次从中线向右扫描，直到扫描出下降沿或者达到扫描次数
//  251         for(uint8 i = 0;i<ScanTime&&Trk.right1[Trk.currentRight1]==255;i++)
??FindCentralLine_12:
        MOVS     R8,#+0
        B.N      ??FindCentralLine_13
//  252         {
//  253             //跳变检测的条件是：相隔CCD1ScanWidth的两个点之差大于阈值，也大于CCD整场图像平均值的0.2倍
//  254             if(CCD1.img[Temp]>CCD1.img[Temp+CCD1ScanWidth] 
//  255                && CCD1.img[Temp]-CCD1.img[Temp+CCD1ScanWidth]>=CCD1.threshold 
//  256                && CCD1.img[Temp]-CCD1.img[Temp+CCD1ScanWidth]>=CCD1.aver*0.2)
??FindCentralLine_14:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??DataTable3_1
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #+8]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R1,??DataTable3_1
        LDRB     R1,[R7, R1]
        CMP      R0,R1
        BCS.N    ??FindCentralLine_15
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??DataTable3_1
        LDRB     R0,[R7, R0]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R1,??DataTable3_1
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #+8]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable3_1
        LDRB     R1,[R1, #+132]
        CMP      R0,R1
        BLT.N    ??FindCentralLine_15
        LDR.W    R0,??DataTable3_1
        LDRH     R0,[R0, #+130]
        BL       __aeabi_ui2d
        LDR.W    R2,??DataTable3_2  ;; 0x9999999a
        LDR.W    R3,??DataTable3_3  ;; 0x3fc99999
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R4,R2
        MOVS     R5,R3
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??DataTable3_1
        LDRB     R0,[R7, R0]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R1,??DataTable3_1
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #+8]
        SUBS     R0,R0,R1
        BL       __aeabi_i2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_cdrcmple
        BHI.N    ??FindCentralLine_15
//  257             {
//  258                 Trk.right1[Trk.currentRight1] = Temp+CCD1ScanWidth;
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+406]
        LDR.W    R1,??DataTable3
        ADDS     R0,R0,R1
        ADDS     R1,R7,#+8
        STRB     R1,[R0, #+206]
//  259                 
//  260                 //Trk.RightJumpVarStack[IndexBeManyest] = CCD1.img[Temp]-CCD1.img[Temp+CCD1ScanWidth];
//  261                 //IndexBeManyest ++;
//  262                 
//  263             }      
//  264             Temp++;
??FindCentralLine_15:
        ADDS     R7,R7,#+1
//  265         }
        ADDS     R8,R8,#+1
??FindCentralLine_13:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R8,R6
        BCS.N    ??FindCentralLine_10
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+406]
        LDR.W    R1,??DataTable3
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+206]
        CMP      R0,#+255
        BEQ.N    ??FindCentralLine_14
//  266         //Trk.RightMaxIndex = IndexBeManyest;
//  267     }
//  268     
//  269     // 跳变阈值出现统计（）
//  270     /*
//  271     uint8 LoopForSaveJump = 0;
//  272     Trk.LeftMinJump = 255;
//  273     Trk.LeftMaxJump = 0;
//  274     // 统计左侧
//  275     for ( LoopForSaveJump = 0;LoopForSaveJump < Trk.LeftMaxIndex; LoopForSaveJump++ )
//  276     {
//  277         if ( Trk.LeftJumpVarStack[LoopForSaveJump] > Trk.LeftMaxJump ){Trk.LeftMaxJump = Trk.LeftJumpVarStack[LoopForSaveJump];};
//  278         if ( Trk.LeftJumpVarStack[LoopForSaveJump] < Trk.LeftMinJump ){Trk.LeftMinJump = Trk.LeftJumpVarStack[LoopForSaveJump];};
//  279     }
//  280     // 统计右侧
//  281     Trk.RightMinJump = 255;
//  282     Trk.RightMaxJump = 0;
//  283     for ( LoopForSaveJump = 0;LoopForSaveJump < Trk.RightMaxIndex; LoopForSaveJump++ )
//  284     {
//  285         if ( Trk.RightJumpVarStack[LoopForSaveJump] > Trk.RightMaxJump ){Trk.RightMaxJump = Trk.RightJumpVarStack[LoopForSaveJump];};
//  286         if ( Trk.RightJumpVarStack[LoopForSaveJump] < Trk.RightMinJump ){Trk.RightMinJump = Trk.RightJumpVarStack[LoopForSaveJump];};
//  287     }
//  288     */
//  289     //*****************************************************************************************
//  290     //-----------------------------------------------------------------------------------------
//  291     //----------------------所有CCD1图像边沿提取完毕，开始计算CCD1中线位置---------------------
//  292     //-----------------------------------------------------------------------------------------
//  293     //*****************************************************************************************
//  294     if(Trk.currentCen1 == maxRAMSaveNum - 1)
??FindCentralLine_10:
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+810]
        CMP      R0,#+199
        BNE.N    ??FindCentralLine_16
//  295     {
//  296         Trk.currentCen1 = 0;
        LDR.W    R0,??DataTable3
        MOVS     R1,#+0
        STRH     R1,[R0, #+810]
        B.N      ??FindCentralLine_17
//  297     }
//  298     else
//  299     {
//  300         Trk.currentCen1 ++;
??FindCentralLine_16:
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+810]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable3
        STRH     R0,[R1, #+810]
//  301     }  
//  302     if(Trk.left1[Trk.currentLeft1]!=255 && Trk.right1[Trk.currentRight1]!=255) //CCD1双边都存在
??FindCentralLine_17:
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+202]
        LDR.W    R1,??DataTable3
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+1]
        CMP      R0,#+255
        BEQ.N    ??FindCentralLine_18
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+406]
        LDR.W    R1,??DataTable3
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+206]
        CMP      R0,#+255
        BEQ.N    ??FindCentralLine_18
//  303     {
//  304         Trk.cen1[Trk.currentCen1] = (Trk.left1[Trk.currentLeft1] + Trk.right1[Trk.currentRight1])/2 + 937;//计算CCD1中线位置
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+202]
        LDR.W    R1,??DataTable3
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+1]
        LDR.W    R1,??DataTable3
        LDRH     R1,[R1, #+406]
        LDR.W    R2,??DataTable3
        ADDS     R1,R1,R2
        LDRB     R1,[R1, #+206]
        UXTAB    R0,R1,R0
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        ADDW     R0,R0,#+937
        LDR.W    R1,??DataTable3
        LDRH     R1,[R1, #+810]
        LDR.W    R2,??DataTable3
        ADDS     R1,R2,R1, LSL #+1
        STRH     R0,[R1, #+410]
//  305         Trk.RoadBlockLastWidth1 = Trk.Width1;//记录上一次赛道宽度
        LDR.W    R0,??DataTable3
        LDR.W    R1,??DataTable3
        LDRB     R1,[R1, #+814]
        STRB     R1,[R0, #+1733]
//  306         Trk.Width1 = Trk.right1[Trk.currentRight1] - Trk.left1[Trk.currentLeft1];//计算赛道宽度
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+406]
        LDR.W    R1,??DataTable3
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+206]
        LDR.W    R1,??DataTable3
        LDRH     R1,[R1, #+202]
        LDR.W    R2,??DataTable3
        ADDS     R1,R1,R2
        LDRB     R1,[R1, #+1]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable3
        STRB     R0,[R1, #+814]
//  307         Trk.AllDark1 = 0;//清0全黑标志
        LDR.W    R0,??DataTable3
        MOVS     R1,#+0
        STRB     R1,[R0, #+815]
//  308         Trk.BackCen1 = 0;//清0回正标志
        LDR.W    R0,??DataTable3
        MOVS     R1,#+0
        STRB     R1,[R0, #+816]
        B.N      ??FindCentralLine_19
//  309     }
//  310     else if(Trk.left1[Trk.currentLeft1]!=255 && Trk.right1[Trk.currentRight1]==255) //CCD1只存在左边
??FindCentralLine_18:
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+202]
        LDR.W    R1,??DataTable3
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+1]
        CMP      R0,#+255
        BEQ.N    ??FindCentralLine_20
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+406]
        LDR.W    R1,??DataTable3
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+206]
        CMP      R0,#+255
        BNE.N    ??FindCentralLine_20
//  311     { 
//  312         //中线位置=左边+坐标系转换偏移量+赛道宽度/2
//  313         //Trk.cen1[Trk.currentCen1] = Trk.left1[Trk.currentLeft1] + 937 + Trk.Width1/2;
//  314         Trk.cen1[Trk.currentCen1] = Trk.left1[Trk.currentLeft1] + 937 + CCD1CurveTrkWidth/2;
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+810]
        LDR.W    R1,??DataTable3
        ADDS     R0,R1,R0, LSL #+1
        LDR.W    R1,??DataTable3
        LDRH     R1,[R1, #+202]
        LDR.W    R2,??DataTable3
        ADDS     R1,R1,R2
        LDRB     R1,[R1, #+1]
        ADDW     R1,R1,#+975
        STRH     R1,[R0, #+410]
//  315         if(Trk.cen1[Trk.currentCen1] > 1200)
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+810]
        LDR.W    R1,??DataTable3
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+410]
        CMP      R0,#+1200
        BLE.N    ??FindCentralLine_21
//  316         {
//  317             Trk.cen1[Trk.currentCen1] = 1200;
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+810]
        LDR.W    R1,??DataTable3
        ADDS     R0,R1,R0, LSL #+1
        MOV      R1,#+1200
        STRH     R1,[R0, #+410]
//  318         }//防止越界
//  319         if(Trk.cen1[Trk.currentCen1] < 1000 + CCD1AllDarkThreshold)
??FindCentralLine_21:
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+810]
        LDR.W    R1,??DataTable3
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+410]
        MOVW     R1,#+1030
        CMP      R0,R1
        BGE.N    ??FindCentralLine_22
//  320         {
//  321             Trk.AllDark1 = 0;
        LDR.W    R0,??DataTable3
        MOVS     R1,#+0
        STRB     R1,[R0, #+815]
        B.N      ??FindCentralLine_23
//  322         }//中线位置超过阈值判断为全白
//  323         else
//  324         {
//  325             Trk.AllDark1 = 1;
??FindCentralLine_22:
        LDR.W    R0,??DataTable3
        MOVS     R1,#+1
        STRB     R1,[R0, #+815]
//  326         }
//  327         //本来右边应该存在，但是实际上不存在，说明很可能是十字误判
//  328         //if(Trk.left1[Trk.currentLeft1] < 127 - Trk.Width1 - CCD1illegalArea)
//  329         if(Trk.left1[Trk.currentLeft1] < 127 - CCD1CurveTrkWidth - CCD1illegalArea)
??FindCentralLine_23:
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+202]
        LDR.W    R1,??DataTable3
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+1]
        CMP      R0,#+41
        BGE.N    ??FindCentralLine_24
//  330         {
//  331             Trk.cen1[Trk.currentCen1] = Trk.cen1[Trk.lastCen1];//保持上次打角
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+810]
        LDR.W    R1,??DataTable3
        ADDS     R0,R1,R0, LSL #+1
        LDR.W    R1,??DataTable3
        LDRH     R1,[R1, #+812]
        LDR.W    R2,??DataTable3
        ADDS     R1,R2,R1, LSL #+1
        LDRH     R1,[R1, #+410]
        STRH     R1,[R0, #+410]
//  332         }
//  333         Trk.BackCen1 = 0;//清0回正标志
??FindCentralLine_24:
        LDR.W    R0,??DataTable3
        MOVS     R1,#+0
        STRB     R1,[R0, #+816]
        B.N      ??FindCentralLine_19
//  334     }
//  335     else if(Trk.left1[Trk.currentLeft1]==255 && Trk.right1[Trk.currentRight1]!=255) //CCD1只存在右边
??FindCentralLine_20:
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+202]
        LDR.W    R1,??DataTable3
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+1]
        CMP      R0,#+255
        BNE.N    ??FindCentralLine_25
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+406]
        LDR.W    R1,??DataTable3
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+206]
        CMP      R0,#+255
        BEQ.N    ??FindCentralLine_25
//  336     {
//  337         //中线位置=右边+坐标系转换偏移量-赛道宽度/2
//  338         //Trk.cen1[Trk.currentCen1] = Trk.right1[Trk.currentRight1] + 937 - Trk.Width1/2;
//  339         Trk.cen1[Trk.currentCen1] = Trk.right1[Trk.currentRight1] + 937 - CCD1CurveTrkWidth/2;
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+810]
        LDR.W    R1,??DataTable3
        ADDS     R0,R1,R0, LSL #+1
        LDR.W    R1,??DataTable3
        LDRH     R1,[R1, #+406]
        LDR.W    R2,??DataTable3
        ADDS     R1,R1,R2
        LDRB     R1,[R1, #+206]
        ADDW     R1,R1,#+899
        STRH     R1,[R0, #+410]
//  340         if(Trk.cen1[Trk.currentCen1] > 1200)
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+810]
        LDR.W    R1,??DataTable3
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+410]
        CMP      R0,#+1200
        BLE.N    ??FindCentralLine_26
//  341         {
//  342             Trk.cen1[Trk.currentCen1] = 0;
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+810]
        LDR.W    R1,??DataTable3
        ADDS     R0,R1,R0, LSL #+1
        MOVS     R1,#+0
        STRH     R1,[R0, #+410]
//  343         }//防止越界
//  344         
//  345 
//  346         if(Trk.cen1[Trk.currentCen1] > 1000 - CCD1AllDarkThreshold)
??FindCentralLine_26:
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+810]
        LDR.W    R1,??DataTable3
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+410]
        MOVW     R1,#+971
        CMP      R0,R1
        BLT.N    ??FindCentralLine_27
//  347         {
//  348             Trk.AllDark1 = 0;
        LDR.W    R0,??DataTable3
        MOVS     R1,#+0
        STRB     R1,[R0, #+815]
        B.N      ??FindCentralLine_28
//  349         }//中线位置超过阈值判断为全白
//  350         else
//  351         {
//  352             Trk.AllDark1 = 1;
??FindCentralLine_27:
        LDR.W    R0,??DataTable3
        MOVS     R1,#+1
        STRB     R1,[R0, #+815]
//  353         }
//  354         //
//  355         
//  356         
//  357         
//  358         //本来左边应该存在，但是实际上不存在，说明很可能是十字误判
//  359         //if(Trk.right1[Trk.currentRight1] > Trk.Width1 + CCD1illegalArea)
//  360         if(Trk.right1[Trk.currentRight1] > CCD1CurveTrkWidth + CCD1illegalArea)
??FindCentralLine_28:
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+406]
        LDR.W    R1,??DataTable3
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+206]
        CMP      R0,#+87
        BLT.N    ??FindCentralLine_29
//  361         {
//  362             Trk.cen1[Trk.currentCen1] = Trk.cen1[Trk.lastCen1];//保持上次打角
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+810]
        LDR.W    R1,??DataTable3
        ADDS     R0,R1,R0, LSL #+1
        LDR.W    R1,??DataTable3
        LDRH     R1,[R1, #+812]
        LDR.W    R2,??DataTable3
        ADDS     R1,R2,R1, LSL #+1
        LDRH     R1,[R1, #+410]
        STRH     R1,[R0, #+410]
//  363         }
//  364         Trk.BackCen1 = 0;//清0回正标志
??FindCentralLine_29:
        LDR.W    R0,??DataTable3
        MOVS     R1,#+0
        STRB     R1,[R0, #+816]
        B.N      ??FindCentralLine_19
//  365     }
//  366     else//CCD1双边都不存在
//  367     {
//  368         if(Trk.AllDark1 == 1)
??FindCentralLine_25:
        LDR.W    R0,??DataTable3
        LDRB     R0,[R0, #+815]
        CMP      R0,#+1
        BNE.N    ??FindCentralLine_30
//  369         {
//  370             Trk.cen1[Trk.currentCen1] = Trk.cen1[Trk.lastCen1];
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+810]
        LDR.W    R1,??DataTable3
        ADDS     R0,R1,R0, LSL #+1
        LDR.W    R1,??DataTable3
        LDRH     R1,[R1, #+812]
        LDR.W    R2,??DataTable3
        ADDS     R1,R2,R1, LSL #+1
        LDRH     R1,[R1, #+410]
        STRH     R1,[R0, #+410]
        B.N      ??FindCentralLine_19
//  371         }//若全黑标志为1，保持上次打角
//  372         else if(Trk.BackCen1 == 0)//若回正标志为0
??FindCentralLine_30:
        LDR.W    R0,??DataTable3
        LDRB     R0,[R0, #+816]
        CMP      R0,#+0
        BNE.N    ??FindCentralLine_31
//  373         {
//  374             Trk.BackCen1 = 1;Trk.BackCenRoad1 = Con.TotalRoad;Trk.BcakCenCen1 = Trk.cen1[Trk.lastCen1];//置1回正标志，记录回正开始的变量
        LDR.W    R0,??DataTable3
        MOVS     R1,#+1
        STRB     R1,[R0, #+816]
        LDR.W    R0,??DataTable3
        LDR.W    R1,??DataTable3_4
        LDR      R1,[R1, #+4]
        STR      R1,[R0, #+820]
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+812]
        LDR.W    R1,??DataTable3
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+410]
        LDR.W    R1,??DataTable3
        STRH     R0,[R1, #+824]
//  375             Trk.cen1[Trk.currentCen1] = Trk.cen1[Trk.lastCen1];//保持上次打角    
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+810]
        LDR.W    R1,??DataTable3
        ADDS     R0,R1,R0, LSL #+1
        LDR.W    R1,??DataTable3
        LDRH     R1,[R1, #+812]
        LDR.W    R2,??DataTable3
        ADDS     R1,R2,R1, LSL #+1
        LDRH     R1,[R1, #+410]
        STRH     R1,[R0, #+410]
        B.N      ??FindCentralLine_19
//  376         }
//  377         else//处于回正状态
//  378         {
//  379             Trk.BackCen1 = 1;//置1回正标志
??FindCentralLine_31:
        LDR.W    R0,??DataTable3
        MOVS     R1,#+1
        STRB     R1,[R0, #+816]
//  380             //下面计算回正过程中的中心坐标
//  381             float _float_temp1,_float_temp2;
//  382             _float_temp1 = Con.TotalRoad - Trk.BackCenRoad1;
        LDR.W    R0,??DataTable3_4
        LDR      R0,[R0, #+4]
        LDR.W    R1,??DataTable3
        LDR      R1,[R1, #+820]
        SUBS     R0,R0,R1
        BL       __aeabi_ui2f
        MOVS     R4,R0
//  383             
//  384             
//  385             if(_float_temp1> CCD1BackCenRoad)
        MOVS     R0,R4
        LDR.W    R1,??DataTable3_5  ;; 0x457a0001
        BL       __aeabi_cfrcmple
        BHI.N    ??FindCentralLine_32
//  386             {
//  387                 _float_temp1 = CCD1BackCenRoad;
        LDR.W    R4,??DataTable3_6  ;; 0x457a0000
//  388             }
//  389             _float_temp1 = _float_temp1/CCD1BackCenRoad;
??FindCentralLine_32:
        MOVS     R0,R4
        LDR.W    R1,??DataTable3_6  ;; 0x457a0000
        BL       __aeabi_fdiv
        MOVS     R4,R0
//  390             _float_temp1 = 1- _float_temp1;
        MOVS     R0,#+1065353216
        MOVS     R1,R4
        BL       __aeabi_fsub
        MOVS     R4,R0
//  391             
//  392             
//  393             if(Trk.BcakCenCen1 >= 1000)
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+824]
        CMP      R0,#+1000
        BLT.N    ??FindCentralLine_33
//  394             {
//  395                 _float_temp2 = Trk.BcakCenCen1 - 1000;
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+824]
        SUBS     R0,R0,#+1000
        BL       __aeabi_i2f
//  396                 _float_temp1 = 1000 + _float_temp1 * _float_temp2;
        MOVS     R1,R4
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable3_7  ;; 0x447a0000
        BL       __aeabi_fadd
        MOVS     R4,R0
        B.N      ??FindCentralLine_34
//  397             }
//  398             else
//  399             {
//  400                 _float_temp2 = 1000 - Trk.BcakCenCen1;
??FindCentralLine_33:
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+824]
        RSBS     R0,R0,#+1000
        BL       __aeabi_i2f
//  401                 _float_temp1 = 1000 - _float_temp1 * _float_temp2;
        MOVS     R1,R4
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR.W    R0,??DataTable3_7  ;; 0x447a0000
        BL       __aeabi_fsub
        MOVS     R4,R0
//  402             }
//  403             
//  404             
//  405             Trk.cen1[Trk.currentCen1] = (uint16)_float_temp1;    
??FindCentralLine_34:
        MOVS     R0,R4
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable3
        LDRH     R1,[R1, #+810]
        LDR.W    R2,??DataTable3
        ADDS     R1,R2,R1, LSL #+1
        STRH     R0,[R1, #+410]
//  406         }
//  407     }
//  408   //*****************************************************************************************
//  409   //-----------------------------------------------------------------------------------------
//  410   //-------------------------------------提取CCD2左右黑边------------------------------------
//  411   //-----------------------------------------------------------------------------------------
//  412   //*****************************************************************************************
//  413   Trk.lastCen2 = Trk.currentCen2;//暂存上一次的下标
??FindCentralLine_19:
        LDR.W    R0,??DataTable3
        LDR.W    R1,??DataTable3
        LDRH     R1,[R1, #+1642]
        STRH     R1,[R0, #+1644]
//  414   Trk.lastLeft2 = Trk.currentLeft2;
        LDR.W    R0,??DataTable3
        LDR.W    R1,??DataTable3
        LDRH     R1,[R1, #+1034]
        STRH     R1,[R0, #+1036]
//  415   if(Trk.currentLeft2 == maxRAMSaveNum - 1){Trk.currentLeft2 = 0;}else{Trk.currentLeft2 ++;} 
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+1034]
        CMP      R0,#+199
        BNE.N    ??FindCentralLine_35
        LDR.W    R0,??DataTable3
        MOVS     R1,#+0
        STRH     R1,[R0, #+1034]
        B.N      ??FindCentralLine_36
??FindCentralLine_35:
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+1034]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable3
        STRH     R0,[R1, #+1034]
//  416   Trk.left2[Trk.currentLeft2] = 255;//扫描前先初始化当前边沿不存在  
??FindCentralLine_36:
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+1034]
        LDR.W    R1,??DataTable3
        ADDS     R0,R0,R1
        MOVS     R1,#+255
        STRB     R1,[R0, #+834]
//  417   //若上次的中线不处于CCD2的左视野之外，则可以向左扫描上升沿
//  418   if(Trk.cen2[Trk.lastCen2] >= 937 + CCD2illegalArea + CCD2ScanWidth)
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+1644]
        LDR.W    R1,??DataTable3
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+1242]
        MOVW     R1,#+950
        CMP      R0,R1
        BLT.W    ??FindCentralLine_37
//  419   { uint16 ScanTime,Temp;
//  420     if(Trk.cen2[Trk.lastCen2] <= 937 + 127 - CCD2illegalArea)//超出图像边界限幅
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+1644]
        LDR.W    R1,??DataTable3
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+1242]
        MOVW     R1,#+1060
        CMP      R0,R1
        BGE.N    ??FindCentralLine_38
//  421     { ScanTime = Trk.cen2[Trk.lastCen2] - 937 - CCD2illegalArea - CCD2ScanWidth + 1;//计算向左扫描次数
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+1644]
        LDR.W    R1,??DataTable3
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+1242]
        MOVW     R1,#+949
        SUBS     R6,R0,R1
//  422       Temp = Trk.cen2[Trk.lastCen2] - 937;
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+1644]
        LDR.W    R1,??DataTable3
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+1242]
        MOVW     R1,#+937
        SUBS     R7,R0,R1
        B.N      ??FindCentralLine_39
//  423     }
//  424     else
//  425     { ScanTime = 127 - 2*CCD2illegalArea - CCD2ScanWidth + 1;//计算向左扫描次数
??FindCentralLine_38:
        MOVS     R6,#+110
//  426       Temp = 127 - CCD2illegalArea;
        MOVS     R7,#+122
//  427     }
//  428     //依次从中线向左扫描，直到扫描出上升沿或者达到扫描次数
//  429     for(uint8 i = 0;i<ScanTime&&Trk.left2[Trk.currentLeft2]==255;i++)
??FindCentralLine_39:
        MOVS     R8,#+0
        B.N      ??FindCentralLine_40
//  430     { //跳变检测的条件是：相隔CCD2ScanWidth的两个点之差大于阈值，也大于CCD整场图像平均值的0.2倍
//  431       if(CCD2.img[Temp]>CCD2.img[Temp-CCD2ScanWidth] && CCD2.img[Temp]-CCD2.img[Temp-CCD2ScanWidth]>=CCD2.threshold && CCD2.img[Temp]-CCD2.img[Temp-CCD2ScanWidth]>=CCD2.aver*0.2)
??FindCentralLine_41:
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        LDR.W    R0,??DataTable3_8
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #-8]
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        LDR.W    R1,??DataTable3_8
        LDRB     R1,[R7, R1]
        CMP      R0,R1
        BCS.N    ??FindCentralLine_42
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        LDR.W    R0,??DataTable3_8
        LDRB     R0,[R7, R0]
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        LDR.W    R1,??DataTable3_8
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #-8]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable3_8
        LDRB     R1,[R1, #+132]
        CMP      R0,R1
        BLT.N    ??FindCentralLine_42
        LDR.W    R0,??DataTable3_8
        LDRH     R0,[R0, #+130]
        BL       __aeabi_ui2d
        LDR.W    R2,??DataTable3_2  ;; 0x9999999a
        LDR.W    R3,??DataTable3_3  ;; 0x3fc99999
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R4,R2
        MOVS     R5,R3
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        LDR.W    R0,??DataTable3_8
        LDRB     R0,[R7, R0]
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        LDR.W    R1,??DataTable3_8
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #-8]
        SUBS     R0,R0,R1
        BL       __aeabi_i2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_cdrcmple
        BHI.N    ??FindCentralLine_42
//  432       {  Trk.left2[Trk.currentLeft2] = Temp-CCD2ScanWidth;}
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+1034]
        LDR.W    R1,??DataTable3
        ADDS     R0,R0,R1
        MOVS     R1,R7
        SUBS     R1,R1,#+8
        STRB     R1,[R0, #+834]
//  433       Temp--;
??FindCentralLine_42:
        SUBS     R7,R7,#+1
//  434     }
        ADDS     R8,R8,#+1
??FindCentralLine_40:
        MOV      R0,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R0,R6
        BCS.N    ??FindCentralLine_37
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+1034]
        LDR.W    R1,??DataTable3
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+834]
        CMP      R0,#+255
        BEQ.N    ??FindCentralLine_41
//  435   }
//  436   Trk.lastRight2 = Trk.currentRight2;
??FindCentralLine_37:
        LDR.W    R0,??DataTable3
        LDR.W    R1,??DataTable3
        LDRH     R1,[R1, #+1238]
        STRH     R1,[R0, #+1240]
//  437   if(Trk.currentRight2 == maxRAMSaveNum - 1){Trk.currentRight2 = 0;}else{Trk.currentRight2 ++;}
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+1238]
        CMP      R0,#+199
        BNE.N    ??FindCentralLine_43
        LDR.W    R0,??DataTable3
        MOVS     R1,#+0
        STRH     R1,[R0, #+1238]
        B.N      ??FindCentralLine_44
??FindCentralLine_43:
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+1238]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable3
        STRH     R0,[R1, #+1238]
//  438   Trk.right2[Trk.currentRight2] = 255;//扫描前先初始化当前边沿不存在
??FindCentralLine_44:
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+1238]
        LDR.W    R1,??DataTable3
        ADDS     R0,R0,R1
        MOVS     R1,#+255
        STRB     R1,[R0, #+1038]
//  439   //若上次的中线不处于CCD2的右视野之外，则可以向右扫描下降沿
//  440   if(Trk.cen2[Trk.lastCen2] <= 937 + 127 - CCD2illegalArea - CCD2ScanWidth)
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+1644]
        LDR.W    R1,??DataTable3
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+1242]
        MOVW     R1,#+1052
        CMP      R0,R1
        BGE.W    ??FindCentralLine_45
//  441   { uint8 ScanTime,Temp;
//  442     if(Trk.cen2[Trk.lastCen2] >= 937 + CCD2illegalArea)//超出图像边界限幅
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+1644]
        LDR.W    R1,??DataTable3
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+1242]
        MOVW     R1,#+942
        CMP      R0,R1
        BLT.N    ??FindCentralLine_46
//  443     { ScanTime = 937 + 127 -Trk.cen2[Trk.lastCen2] - CCD2illegalArea - CCD2ScanWidth + 1;//计算向右扫描次数
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+1644]
        LDR.W    R1,??DataTable3
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+1242]
        RSBS     R6,R0,#+28
//  444       Temp = Trk.cen2[Trk.lastCen2] - 937;
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+1644]
        LDR.W    R1,??DataTable3
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+1242]
        ADDS     R7,R0,#+87
        B.N      ??FindCentralLine_47
//  445     }
//  446     else
//  447     { ScanTime = 127 - 2*CCD2illegalArea - CCD2ScanWidth + 1;//计算向右扫描次数
??FindCentralLine_46:
        MOVS     R6,#+110
//  448       Temp = CCD2illegalArea;
        MOVS     R7,#+5
//  449     }
//  450     //依次从中线向右扫描，直到扫描出下降沿或者达到扫描次数
//  451     for(uint8 i = 0;i<ScanTime&&Trk.right2[Trk.currentRight2]==255;i++)
??FindCentralLine_47:
        MOVS     R8,#+0
        B.N      ??FindCentralLine_48
//  452     { //跳变检测的条件是：相隔CCD2ScanWidth的两个点之差大于阈值，也大于CCD整场图像平均值的0.2倍
//  453       if(CCD2.img[Temp]>CCD2.img[Temp+CCD2ScanWidth] && CCD2.img[Temp]-CCD2.img[Temp+CCD2ScanWidth]>=CCD2.threshold && CCD2.img[Temp]-CCD2.img[Temp+CCD2ScanWidth]>=CCD2.aver*0.2)
??FindCentralLine_49:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??DataTable3_8
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #+8]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R1,??DataTable3_8
        LDRB     R1,[R7, R1]
        CMP      R0,R1
        BCS.N    ??FindCentralLine_50
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??DataTable3_8
        LDRB     R0,[R7, R0]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R1,??DataTable3_8
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #+8]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable3_8
        LDRB     R1,[R1, #+132]
        CMP      R0,R1
        BLT.N    ??FindCentralLine_50
        LDR.W    R0,??DataTable3_8
        LDRH     R0,[R0, #+130]
        BL       __aeabi_ui2d
        LDR.W    R2,??DataTable3_2  ;; 0x9999999a
        LDR.W    R3,??DataTable3_3  ;; 0x3fc99999
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R4,R2
        MOVS     R5,R3
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??DataTable3_8
        LDRB     R0,[R7, R0]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R1,??DataTable3_8
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #+8]
        SUBS     R0,R0,R1
        BL       __aeabi_i2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_cdrcmple
        BHI.N    ??FindCentralLine_50
//  454       {  Trk.right2[Trk.currentRight2] = Temp+CCD2ScanWidth;}      
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+1238]
        LDR.W    R1,??DataTable3
        ADDS     R0,R0,R1
        ADDS     R1,R7,#+8
        STRB     R1,[R0, #+1038]
//  455       Temp++;
??FindCentralLine_50:
        ADDS     R7,R7,#+1
//  456     }
        ADDS     R8,R8,#+1
??FindCentralLine_48:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R8,R6
        BCS.N    ??FindCentralLine_45
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+1238]
        LDR.W    R1,??DataTable3
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+1038]
        CMP      R0,#+255
        BEQ.N    ??FindCentralLine_49
//  457   }
//  458 
//  459   //*****************************************************************************************
//  460   //-----------------------------------------------------------------------------------------
//  461   //----------------------所有CCD2图像边沿提取完毕，开始计算CCD2中线位置---------------------
//  462   //-----------------------------------------------------------------------------------------
//  463   //*****************************************************************************************
//  464   if(Trk.currentCen2 == maxRAMSaveNum - 1){Trk.currentCen2 = 0;}else{Trk.currentCen2 ++;}  
??FindCentralLine_45:
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+1642]
        CMP      R0,#+199
        BNE.N    ??FindCentralLine_51
        LDR.W    R0,??DataTable3
        MOVS     R1,#+0
        STRH     R1,[R0, #+1642]
        B.N      ??FindCentralLine_52
??FindCentralLine_51:
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+1642]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable3
        STRH     R0,[R1, #+1642]
//  465   if(Trk.left2[Trk.currentLeft2]!=255 && Trk.right2[Trk.currentRight2]!=255) //CCD2双边都存在
??FindCentralLine_52:
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+1034]
        LDR.W    R1,??DataTable3
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+834]
        CMP      R0,#+255
        BEQ.N    ??FindCentralLine_53
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+1238]
        LDR.W    R1,??DataTable3
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+1038]
        CMP      R0,#+255
        BEQ.N    ??FindCentralLine_53
//  466   { Trk.cen2[Trk.currentCen2] = (Trk.left2[Trk.currentLeft2] + Trk.right2[Trk.currentRight2])/2 + 937;//计算CCD2中线位置
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+1034]
        LDR.W    R1,??DataTable3
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+834]
        LDR.W    R1,??DataTable3
        LDRH     R1,[R1, #+1238]
        LDR.W    R2,??DataTable3
        ADDS     R1,R1,R2
        LDRB     R1,[R1, #+1038]
        UXTAB    R0,R1,R0
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        ADDW     R0,R0,#+937
        LDR.W    R1,??DataTable3
        LDRH     R1,[R1, #+1642]
        LDR.W    R2,??DataTable3
        ADDS     R1,R2,R1, LSL #+1
        STRH     R0,[R1, #+1242]
//  467     Trk.RoadBlockLastWidth2 = Trk.Width2;//记录上一次赛道宽度
        LDR.N    R0,??DataTable3
        LDR.N    R1,??DataTable3
        LDRB     R1,[R1, #+1646]
        STRB     R1,[R0, #+1741]
//  468     Trk.Width2 = Trk.right2[Trk.currentRight2] - Trk.left2[Trk.currentLeft2];//计算赛道宽度
        LDR.N    R0,??DataTable3
        LDRH     R0,[R0, #+1238]
        LDR.N    R1,??DataTable3
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+1038]
        LDR.N    R1,??DataTable3
        LDRH     R1,[R1, #+1034]
        LDR.N    R2,??DataTable3
        ADDS     R1,R1,R2
        LDRB     R1,[R1, #+834]
        SUBS     R0,R0,R1
        LDR.N    R1,??DataTable3
        STRB     R0,[R1, #+1646]
//  469     Trk.AllDark2 = 0;//清0全黑标志
        LDR.N    R0,??DataTable3
        MOVS     R1,#+0
        STRB     R1,[R0, #+1647]
//  470     Trk.BackCen2 = 0;//清0回正标志
        LDR.N    R0,??DataTable3
        MOVS     R1,#+0
        STRB     R1,[R0, #+1648]
        B.N      ??FindCentralLine_54
//  471   }
//  472   else if(Trk.left2[Trk.currentLeft2]!=255 && Trk.right2[Trk.currentRight2]==255) //CCD2只存在左边
??FindCentralLine_53:
        LDR.N    R0,??DataTable3
        LDRH     R0,[R0, #+1034]
        LDR.N    R1,??DataTable3
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+834]
        CMP      R0,#+255
        BEQ.N    ??FindCentralLine_55
        LDR.N    R0,??DataTable3
        LDRH     R0,[R0, #+1238]
        LDR.N    R1,??DataTable3
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+1038]
        CMP      R0,#+255
        BNE.N    ??FindCentralLine_55
//  473   { //中线位置=左边+坐标系转换偏移量+赛道宽度/2
//  474     //Trk.cen2[Trk.currentCen2] = Trk.left2[Trk.currentLeft2] + 937 + Trk.Width2/2;
//  475     Trk.cen2[Trk.currentCen2] = Trk.left2[Trk.currentLeft2] + 937 + CCD2CurveTrkWidth/2;
        LDR.N    R0,??DataTable3
        LDRH     R0,[R0, #+1642]
        LDR.N    R1,??DataTable3
        ADDS     R0,R1,R0, LSL #+1
        LDR.N    R1,??DataTable3
        LDRH     R1,[R1, #+1034]
        LDR.N    R2,??DataTable3
        ADDS     R1,R1,R2
        LDRB     R1,[R1, #+834]
        ADDW     R1,R1,#+978
        STRH     R1,[R0, #+1242]
//  476     if(Trk.cen2[Trk.currentCen2] > 1200){Trk.cen2[Trk.currentCen2] = 1200;}//防止越界
        LDR.N    R0,??DataTable3
        LDRH     R0,[R0, #+1642]
        LDR.N    R1,??DataTable3
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+1242]
        CMP      R0,#+1200
        BLE.N    ??FindCentralLine_56
        LDR.N    R0,??DataTable3
        LDRH     R0,[R0, #+1642]
        LDR.N    R1,??DataTable3
        ADDS     R0,R1,R0, LSL #+1
        MOV      R1,#+1200
        STRH     R1,[R0, #+1242]
//  477     if(Trk.cen2[Trk.currentCen2] < 1000 + CCD2AllDarkThreshold){Trk.AllDark2 = 0;}//中线位置超过阈值判断为全白
??FindCentralLine_56:
        LDR.N    R0,??DataTable3
        LDRH     R0,[R0, #+1642]
        LDR.N    R1,??DataTable3
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+1242]
        MOVW     R1,#+1030
        CMP      R0,R1
        BGE.N    ??FindCentralLine_57
        LDR.N    R0,??DataTable3
        MOVS     R1,#+0
        STRB     R1,[R0, #+1647]
        B.N      ??FindCentralLine_58
//  478     else{Trk.AllDark2 = 1;}
??FindCentralLine_57:
        LDR.N    R0,??DataTable3
        MOVS     R1,#+1
        STRB     R1,[R0, #+1647]
//  479     //本来右边应该存在，但是实际上不存在，说明很可能是十字误判
//  480     //if(Trk.left2[Trk.currentLeft2] < 127 - Trk.Width2 - CCD2illegalArea)
//  481     if(Trk.left2[Trk.currentLeft2] < 127 - CCD2CurveTrkWidth - CCD2illegalArea)
??FindCentralLine_58:
        LDR.N    R0,??DataTable3
        LDRH     R0,[R0, #+1034]
        LDR.N    R1,??DataTable3
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+834]
        CMP      R0,#+39
        BGE.N    ??FindCentralLine_59
//  482     { Trk.cen2[Trk.currentCen2] = Trk.cen2[Trk.lastCen2];//保持上次打角
        LDR.N    R0,??DataTable3
        LDRH     R0,[R0, #+1642]
        LDR.N    R1,??DataTable3
        ADDS     R0,R1,R0, LSL #+1
        LDR.N    R1,??DataTable3
        LDRH     R1,[R1, #+1644]
        LDR.N    R2,??DataTable3
        ADDS     R1,R2,R1, LSL #+1
        LDRH     R1,[R1, #+1242]
        STRH     R1,[R0, #+1242]
//  483     }
//  484     Trk.BackCen2 = 0;//清0回正标志
??FindCentralLine_59:
        LDR.N    R0,??DataTable3
        MOVS     R1,#+0
        STRB     R1,[R0, #+1648]
        B.N      ??FindCentralLine_54
//  485   }
//  486   else if(Trk.left2[Trk.currentLeft2]==255 && Trk.right2[Trk.currentRight2]!=255) //CCD2只存在右边
??FindCentralLine_55:
        LDR.N    R0,??DataTable3
        LDRH     R0,[R0, #+1034]
        LDR.N    R1,??DataTable3
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+834]
        CMP      R0,#+255
        BNE.N    ??FindCentralLine_60
        LDR.N    R0,??DataTable3
        LDRH     R0,[R0, #+1238]
        LDR.N    R1,??DataTable3
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+1038]
        CMP      R0,#+255
        BEQ.N    ??FindCentralLine_60
//  487   { //中线位置=右边+坐标系转换偏移量-赛道宽度/2
//  488     //Trk.cen2[Trk.currentCen2] = Trk.right2[Trk.currentRight2] + 937 - Trk.Width2/2;
//  489     Trk.cen2[Trk.currentCen2] = Trk.right2[Trk.currentRight2] + 937 - CCD2CurveTrkWidth/2;
        LDR.N    R0,??DataTable3
        LDRH     R0,[R0, #+1642]
        LDR.N    R1,??DataTable3
        ADDS     R0,R1,R0, LSL #+1
        LDR.N    R1,??DataTable3
        LDRH     R1,[R1, #+1238]
        LDR.N    R2,??DataTable3
        ADDS     R1,R1,R2
        LDRB     R1,[R1, #+1038]
        ADDS     R1,R1,#+896
        STRH     R1,[R0, #+1242]
//  490     if(Trk.cen2[Trk.currentCen2] > 1200){Trk.cen2[Trk.currentCen2] = 0;}//防止越界
        LDR.N    R0,??DataTable3
        LDRH     R0,[R0, #+1642]
        LDR.N    R1,??DataTable3
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+1242]
        CMP      R0,#+1200
        BLE.N    ??FindCentralLine_61
        LDR.N    R0,??DataTable3
        LDRH     R0,[R0, #+1642]
        LDR.N    R1,??DataTable3
        ADDS     R0,R1,R0, LSL #+1
        MOVS     R1,#+0
        STRH     R1,[R0, #+1242]
//  491     if(Trk.cen2[Trk.currentCen2] > 1000 - CCD2AllDarkThreshold){Trk.AllDark2 = 0;}//中线位置超过阈值判断为全白
??FindCentralLine_61:
        LDR.N    R0,??DataTable3
        LDRH     R0,[R0, #+1642]
        LDR.N    R1,??DataTable3
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+1242]
        MOVW     R1,#+971
        CMP      R0,R1
        BLT.N    ??FindCentralLine_62
        LDR.N    R0,??DataTable3
        MOVS     R1,#+0
        STRB     R1,[R0, #+1647]
        B.N      ??FindCentralLine_63
//  492     else{Trk.AllDark2 = 1;}
??FindCentralLine_62:
        LDR.N    R0,??DataTable3
        MOVS     R1,#+1
        STRB     R1,[R0, #+1647]
//  493     //本来左边应该存在，但是实际上不存在，说明很可能是十字误判
//  494     //if(Trk.right2[Trk.currentRight2] > Trk.Width2 + CCD2illegalArea)
//  495     if(Trk.right2[Trk.currentRight2] > CCD2CurveTrkWidth + CCD2illegalArea)
??FindCentralLine_63:
        LDR.N    R0,??DataTable3
        LDRH     R0,[R0, #+1238]
        LDR.N    R1,??DataTable3
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+1038]
        CMP      R0,#+89
        BLT.N    ??FindCentralLine_64
//  496     { Trk.cen2[Trk.currentCen2] = Trk.cen2[Trk.lastCen2];//保持上次打角
        LDR.N    R0,??DataTable3
        LDRH     R0,[R0, #+1642]
        LDR.N    R1,??DataTable3
        ADDS     R0,R1,R0, LSL #+1
        LDR.N    R1,??DataTable3
        LDRH     R1,[R1, #+1644]
        LDR.N    R2,??DataTable3
        ADDS     R1,R2,R1, LSL #+1
        LDRH     R1,[R1, #+1242]
        STRH     R1,[R0, #+1242]
//  497     }
//  498     Trk.BackCen2 = 0;//清0回正标志
??FindCentralLine_64:
        LDR.N    R0,??DataTable3
        MOVS     R1,#+0
        STRB     R1,[R0, #+1648]
        B.N      ??FindCentralLine_54
//  499   }
//  500   else//CCD2双边都不存在
//  501   {
//  502     if(Trk.AllDark2 == 1){Trk.cen2[Trk.currentCen2] = Trk.cen2[Trk.lastCen2];}//若全黑标志为1，保持上次打角
??FindCentralLine_60:
        LDR.N    R0,??DataTable3
        LDRB     R0,[R0, #+1647]
        CMP      R0,#+1
        BNE.N    ??FindCentralLine_65
        LDR.N    R0,??DataTable3
        LDRH     R0,[R0, #+1642]
        LDR.N    R1,??DataTable3
        ADDS     R0,R1,R0, LSL #+1
        LDR.N    R1,??DataTable3
        LDRH     R1,[R1, #+1644]
        LDR.N    R2,??DataTable3
        ADDS     R1,R2,R1, LSL #+1
        LDRH     R1,[R1, #+1242]
        STRH     R1,[R0, #+1242]
        B.N      ??FindCentralLine_54
//  503     else if(Trk.BackCen2 == 0)//若回正标志为0
??FindCentralLine_65:
        LDR.N    R0,??DataTable3
        LDRB     R0,[R0, #+1648]
        CMP      R0,#+0
        BNE.N    ??FindCentralLine_66
//  504     { Trk.BackCen2 = 1;Trk.BackCenRoad2 = Con.TotalRoad;Trk.BcakCenCen2 = Trk.cen2[Trk.lastCen2];//置1回正标志，记录回正开始的变量
        LDR.N    R0,??DataTable3
        MOVS     R1,#+1
        STRB     R1,[R0, #+1648]
        LDR.N    R0,??DataTable3
        LDR.N    R1,??DataTable3_4
        LDR      R1,[R1, #+4]
        STR      R1,[R0, #+1652]
        LDR.N    R0,??DataTable3
        LDRH     R0,[R0, #+1644]
        LDR.N    R1,??DataTable3
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+1242]
        LDR.N    R1,??DataTable3
        STRH     R0,[R1, #+1656]
//  505       Trk.cen2[Trk.currentCen2] = Trk.cen2[Trk.lastCen2];//保持上次打角   
        LDR.N    R0,??DataTable3
        LDRH     R0,[R0, #+1642]
        LDR.N    R1,??DataTable3
        ADDS     R0,R1,R0, LSL #+1
        LDR.N    R1,??DataTable3
        LDRH     R1,[R1, #+1644]
        LDR.N    R2,??DataTable3
        ADDS     R1,R2,R1, LSL #+1
        LDRH     R1,[R1, #+1242]
        STRH     R1,[R0, #+1242]
        B.N      ??FindCentralLine_54
//  506     }
//  507     else//处于回正状态
//  508     { Trk.BackCen2 = 1;//置1回正标志
??FindCentralLine_66:
        LDR.N    R0,??DataTable3
        MOVS     R1,#+1
        STRB     R1,[R0, #+1648]
//  509       //下面计算回正过程中的中心坐标
//  510       float _float_temp1,_float_temp2;_float_temp1 = Con.TotalRoad - Trk.BackCenRoad2;if(_float_temp1> CCD2BackCenRoad){_float_temp1 = CCD2BackCenRoad;}
        LDR.N    R0,??DataTable3_4
        LDR      R0,[R0, #+4]
        LDR.N    R1,??DataTable3
        LDR      R1,[R1, #+1652]
        SUBS     R0,R0,R1
        BL       __aeabi_ui2f
        MOVS     R4,R0
        MOVS     R0,R4
        LDR.N    R1,??DataTable3_9  ;; 0x459c4001
        BL       __aeabi_cfrcmple
        BHI.N    ??FindCentralLine_67
        LDR.N    R4,??DataTable3_10  ;; 0x459c4000
//  511       _float_temp1 = _float_temp1/CCD2BackCenRoad;_float_temp1 = 1- _float_temp1;
??FindCentralLine_67:
        MOVS     R0,R4
        LDR.N    R1,??DataTable3_10  ;; 0x459c4000
        BL       __aeabi_fdiv
        MOVS     R4,R0
        MOVS     R0,#+1065353216
        MOVS     R1,R4
        BL       __aeabi_fsub
        MOVS     R4,R0
//  512       if(Trk.BcakCenCen2 >= 1000){_float_temp2 = Trk.BcakCenCen2 - 1000;_float_temp1 = 1000 + _float_temp1 * _float_temp2;}
        LDR.N    R0,??DataTable3
        LDRH     R0,[R0, #+1656]
        CMP      R0,#+1000
        BLT.N    ??FindCentralLine_68
        LDR.N    R0,??DataTable3
        LDRH     R0,[R0, #+1656]
        SUBS     R0,R0,#+1000
        BL       __aeabi_i2f
        MOVS     R1,R0
        MOVS     R0,R4
        BL       __aeabi_fmul
        LDR.N    R1,??DataTable3_7  ;; 0x447a0000
        BL       __aeabi_fadd
        MOVS     R4,R0
        B.N      ??FindCentralLine_69
//  513       else{_float_temp2 = 1000 - Trk.BcakCenCen2;_float_temp1 = 1000 - _float_temp1 * _float_temp2;}
??FindCentralLine_68:
        LDR.N    R0,??DataTable3
        LDRH     R0,[R0, #+1656]
        RSBS     R0,R0,#+1000
        BL       __aeabi_i2f
        MOVS     R1,R0
        MOVS     R0,R4
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR.N    R0,??DataTable3_7  ;; 0x447a0000
        BL       __aeabi_fsub
        MOVS     R4,R0
//  514       Trk.cen2[Trk.currentCen2] = (uint16)_float_temp1;    
??FindCentralLine_69:
        MOVS     R0,R4
        BL       __aeabi_f2iz
        LDR.N    R1,??DataTable3
        LDRH     R1,[R1, #+1642]
        LDR.N    R2,??DataTable3
        ADDS     R1,R2,R1, LSL #+1
        STRH     R0,[R1, #+1242]
//  515     }
//  516   }
//  517   //*****************************************************************************************
//  518   //-----------------------------------------------------------------------------------------
//  519   //-------------------------CCD1、CCD2中线计算完毕，开始计算直线系数------------------------
//  520   //-----------------------------------------------------------------------------------------
//  521   //*****************************************************************************************
//  522   /*Trk.lastServerCoef = Trk.ServerCoef;//记录上一次的舵机系数
//  523   uint16 temp_offset1,temp_offset2;
//  524   if(Trk.cen1[Trk.currentCen1] >= 1000){temp_offset1 = Trk.cen1[Trk.currentCen1] - 1000;}//计算CCD1中线偏差
//  525   else {temp_offset1 = 1000 - Trk.cen1[Trk.currentCen1];}
//  526   if(Trk.cen2[Trk.currentCen2] >= 1000){temp_offset2 = Trk.cen2[Trk.currentCen2] - 1000;}//计算CCD2中线偏差
//  527   else {temp_offset2 = 1000 - Trk.cen2[Trk.currentCen2];}
//  528   
//  529   Trk.ServerCoef = 0.7 + (float)temp_offset2/60;//根据偏差计算舵机系数
//  530 
//  531   if(temp_offset2 > 60 && Trk.ServerCoefLock == 0)
//  532   { Trk.ServerCoefLock = 1;//舵机系数锁定标志置1
//  533     Trk.ServerLockRoad = Con.TotalRoad;//记录开始锁定的路程
//  534   }
//  535   if(Trk.ServerCoefLock == 1 && Con.TotalRoad  - Trk.ServerLockRoad > 5000)
//  536   { //CCD1和CCD2偏差均小于某一值，清0舵机系数锁定
//  537     if(temp_offset1 < 30 && temp_offset2 <30){Trk.ServerCoefLock = 0;}
//  538   }
//  539   if(Trk.ServerCoefLock == 1){Trk.ServerCoef = Trk.lastServerCoef;}
//  540   */
//  541   //*****************************************************************************************
//  542   //-----------------------------------------------------------------------------------------
//  543   //------------------------根据计算出来的直线系数重新整定CCD1的中心坐标---------------------
//  544   //-----------------------------------------------------------------------------------------
//  545   //*****************************************************************************************
//  546   /*if(Trk.cen1[Trk.currentCen1] >= 1000)
//  547   { Trk.cen1[Trk.currentCen1] = 1000 + (uint16)(((float)(Trk.cen1[Trk.currentCen1]-1000)) * Trk.ServerCoef);
//  548     if(Trk.cen1[Trk.currentCen1] > 1200){Trk.cen1[Trk.currentCen1] = 1200;}
//  549   }
//  550   else 
//  551   { Trk.cen1[Trk.currentCen1] = 1000 - (uint16)(((float)(1000-Trk.cen1[Trk.currentCen1])) * Trk.ServerCoef);
//  552     if(Trk.cen1[Trk.currentCen1] < 800){Trk.cen1[Trk.currentCen1] = 800;}
//  553   }
//  554   */
//  555 }
??FindCentralLine_54:
        POP      {R4-R8,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     Trk

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     CCD1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     0x9999999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     0x3fc99999

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DC32     Con

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_5:
        DC32     0x457a0001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_6:
        DC32     0x457a0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_7:
        DC32     0x447a0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_8:
        DC32     CCD2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_9:
        DC32     0x459c4001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_10:
        DC32     0x459c4000
//  556 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  557 void SpecialStatus(void)//特殊状态判断
//  558 {
//  559   //*****************************************************************************************
//  560   //-----------------------------------------------------------------------------------------
//  561   //--------------------------------------CCD2人字检测---------------------------------------
//  562   //-----------------------------------------------------------------------------------------
//  563   //*****************************************************************************************
//  564   if(Trk.SpecialStatus == 0 && Con.EnableHerribone == 1 && Con.Run == 2)
SpecialStatus:
        LDR.W    R0,??SpecialStatus_0
        LDRB     R0,[R0, #+1692]
        CMP      R0,#+0
        BNE.W    ??SpecialStatus_1
        LDR.W    R0,??SpecialStatus_0+0x4
        LDRB     R0,[R0, #+51]
        CMP      R0,#+1
        BNE.W    ??SpecialStatus_1
        LDR.W    R0,??SpecialStatus_0+0x4
        LDRB     R0,[R0, #+12]
        CMP      R0,#+2
        BNE.W    ??SpecialStatus_1
//  565   { //CCD2判断直道入人字
//  566     if(Trk.left2[Trk.currentLeft2] == 255 && Trk.right2[Trk.currentRight2] != 255 //CCD2当前丢左边
//  567        && Trk.left2[Trk.lastLeft2] != 255 && Trk.right2[Trk.lastRight2] != 255 //上次CCD2双边存在
//  568        && Trk.cen2[Trk.currentCen2] >= 1000 - 10 && Trk.cen2[Trk.currentCen2] <= 1000 + 10 //当前CCD2中线处于中值附近
//  569        && Trk.cen1[Trk.currentCen1] >= 1000 - 10 && Trk.cen1[Trk.currentCen1] <= 1000 + 10 //当前CCD1中线处于中值附近
//  570        && Trk.cen2[Trk.lastCen2] >= 1000 - 10 && Trk.cen2[Trk.lastCen2] <= 1000 + 10 //上次CCD2中线处于中值附近
//  571        && Trk.cen1[Trk.lastCen1] >= 1000 - 10 && Trk.cen1[Trk.lastCen1] <= 1000 + 10 //上次CCD1中线处于中值附近
//  572        && Trk.Width2 >= 0.9*CCD2TrkWidth //赛道宽度大于等于直道的0.9倍(防止把障碍误判成人字)
//  573        && Trk.Width1 <= 1.1*CCD1TrkWidth //赛道宽度大于等于直道的1.1倍(防止把欧姆弯误判成人字)
//  574        )
        LDR.W    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+1034]
        LDR.W    R1,??SpecialStatus_0
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+834]
        CMP      R0,#+255
        BNE.N    ??SpecialStatus_2
        LDR.W    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+1238]
        LDR.W    R1,??SpecialStatus_0
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+1038]
        CMP      R0,#+255
        BEQ.N    ??SpecialStatus_2
        LDR.W    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+1036]
        LDR.W    R1,??SpecialStatus_0
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+834]
        CMP      R0,#+255
        BEQ.N    ??SpecialStatus_2
        LDR.W    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+1240]
        LDR.W    R1,??SpecialStatus_0
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+1038]
        CMP      R0,#+255
        BEQ.N    ??SpecialStatus_2
        LDR.W    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+1642]
        LDR.W    R1,??SpecialStatus_0
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+1242]
        SUBW     R0,R0,#+990
        CMP      R0,#+21
        BCS.N    ??SpecialStatus_2
        LDR.W    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+810]
        LDR.W    R1,??SpecialStatus_0
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+410]
        SUBW     R0,R0,#+990
        CMP      R0,#+21
        BCS.N    ??SpecialStatus_2
        LDR.W    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+1644]
        LDR.W    R1,??SpecialStatus_0
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+1242]
        SUBW     R0,R0,#+990
        CMP      R0,#+21
        BCS.N    ??SpecialStatus_2
        LDR.W    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+812]
        LDR.W    R1,??SpecialStatus_0
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+410]
        SUBW     R0,R0,#+990
        CMP      R0,#+21
        BCS.N    ??SpecialStatus_2
        LDR.W    R0,??SpecialStatus_0
        LDRB     R0,[R0, #+1646]
        CMP      R0,#+62
        BCC.N    ??SpecialStatus_2
        LDR.W    R0,??SpecialStatus_0
        LDRB     R0,[R0, #+814]
        CMP      R0,#+69
        BCS.N    ??SpecialStatus_2
//  575     { Trk.SpecialStatus = 11;Trk.HerringToConDir2 = 0;//人字状态：21//人字待确认方向为：左
        LDR.W    R0,??SpecialStatus_0
        MOVS     R1,#+11
        STRB     R1,[R0, #+1692]
        LDR.W    R0,??SpecialStatus_0
        MOVS     R1,#+0
        STRB     R1,[R0, #+1720]
//  576       Trk.HerringToConRoad2 = Con.TotalRoad;//记录人字待确认路程 
        LDR.W    R0,??SpecialStatus_0
        LDR.W    R1,??SpecialStatus_0+0x4
        LDR      R1,[R1, #+4]
        STR      R1,[R0, #+1716]
        B.N      ??SpecialStatus_3
//  577     }
//  578     else if(Trk.left2[Trk.currentLeft2] != 255 && Trk.right2[Trk.currentRight2] == 255 //当前丢右边
//  579        && Trk.left2[Trk.lastLeft2] != 255 && Trk.right2[Trk.lastRight2] != 255 //上次CCD2双边存在
//  580        && Trk.cen2[Trk.currentCen2] >= 1000 - 10 && Trk.cen2[Trk.currentCen2] <= 1000 + 10 //当前CCD2中线处于中值附近
//  581        && Trk.cen1[Trk.currentCen1] >= 1000 - 10 && Trk.cen1[Trk.currentCen1] <= 1000 + 10 //当前CCD1中线处于中值附近
//  582        && Trk.cen2[Trk.lastCen2] >= 1000 - 10 && Trk.cen2[Trk.lastCen2] <= 1000 + 10 //上次CCD2中线处于中值附近
//  583        && Trk.cen1[Trk.lastCen1] >= 1000 - 10 && Trk.cen1[Trk.lastCen1] <= 1000 + 10 //上次CCD1中线处于中值附近
//  584        && Trk.Width2 >= 0.9*CCD2TrkWidth //赛道宽度大于等于直道的0.9倍(防止把障碍误判成人字)
//  585        && Trk.Width1 <= 1.1*CCD1TrkWidth //赛道宽度小于直道的1.1倍(防止把欧姆弯误判成人字)
//  586        )
??SpecialStatus_2:
        LDR.W    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+1034]
        LDR.W    R1,??SpecialStatus_0
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+834]
        CMP      R0,#+255
        BEQ.W    ??SpecialStatus_3
        LDR.W    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+1238]
        LDR.W    R1,??SpecialStatus_0
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+1038]
        CMP      R0,#+255
        BNE.W    ??SpecialStatus_3
        LDR.W    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+1036]
        LDR.W    R1,??SpecialStatus_0
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+834]
        CMP      R0,#+255
        BEQ.W    ??SpecialStatus_3
        LDR.W    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+1240]
        LDR.W    R1,??SpecialStatus_0
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+1038]
        CMP      R0,#+255
        BEQ.W    ??SpecialStatus_3
        LDR.W    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+1642]
        LDR.W    R1,??SpecialStatus_0
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+1242]
        SUBW     R0,R0,#+990
        CMP      R0,#+21
        BCS.W    ??SpecialStatus_3
        LDR.W    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+810]
        LDR.W    R1,??SpecialStatus_0
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+410]
        SUBW     R0,R0,#+990
        CMP      R0,#+21
        BCS.W    ??SpecialStatus_3
        LDR.W    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+1644]
        LDR.W    R1,??SpecialStatus_0
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+1242]
        SUBW     R0,R0,#+990
        CMP      R0,#+21
        BCS.W    ??SpecialStatus_3
        LDR.W    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+812]
        LDR.W    R1,??SpecialStatus_0
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+410]
        SUBW     R0,R0,#+990
        CMP      R0,#+21
        BCS.W    ??SpecialStatus_3
        LDR.W    R0,??SpecialStatus_0
        LDRB     R0,[R0, #+1646]
        CMP      R0,#+62
        BCC.W    ??SpecialStatus_3
        LDR.W    R0,??SpecialStatus_0
        LDRB     R0,[R0, #+814]
        CMP      R0,#+69
        BCS.W    ??SpecialStatus_3
//  587     { Trk.SpecialStatus = 11;Trk.HerringToConDir2 = 1;//人字状态：11//人字待确认方向为：右
        LDR.W    R0,??SpecialStatus_0
        MOVS     R1,#+11
        STRB     R1,[R0, #+1692]
        LDR.W    R0,??SpecialStatus_0
        MOVS     R1,#+1
        STRB     R1,[R0, #+1720]
//  588       Trk.HerringToConRoad2 = Con.TotalRoad;//记录人字待确认路程 
        LDR.W    R0,??SpecialStatus_0
        LDR.W    R1,??SpecialStatus_0+0x4
        LDR      R1,[R1, #+4]
        STR      R1,[R0, #+1716]
        B.N      ??SpecialStatus_3
//  589     }
//  590   }
//  591   else if(Trk.SpecialStatus == 11 && Con.TotalRoad - Trk.HerringToConRoad2 >= 2000)//CCD2检测人字待确认，待确认过了2000个脉冲
??SpecialStatus_1:
        LDR.W    R0,??SpecialStatus_0
        LDRB     R0,[R0, #+1692]
        CMP      R0,#+11
        BNE.W    ??SpecialStatus_4
        LDR.W    R0,??SpecialStatus_0+0x4
        LDR      R0,[R0, #+4]
        LDR.W    R1,??SpecialStatus_0
        LDR      R1,[R1, #+1716]
        SUBS     R0,R0,R1
        CMP      R0,#+2000
        BCC.W    ??SpecialStatus_4
//  592   {
//  593     if(Trk.left2[Trk.currentLeft2] == 255 && Trk.right2[Trk.currentRight2] != 255 //CCD2当前丢左边不丢右边
//  594        && Trk.HerringToConDir2 == 0 //人字待确认方向向左
//  595        && Trk.cen2[Trk.currentCen2] >= 1000 - 10 && Trk.cen2[Trk.currentCen2] <= 1000 + 10 //当前CCD2中线处于中值附近
//  596        && Trk.cen1[Trk.currentCen1] >= 1000 - 10 && Trk.cen1[Trk.currentCen1] <= 1000 + 10 //当前CCD1中线处于中值附近
//  597        && Trk.Width2 >= 0.9*CCD2TrkWidth //赛道宽度大于等于直道的0.9倍(防止把障碍误判成人字)
//  598        && Trk.Width1 <= 1.1*CCD1TrkWidth //赛道宽度小于等于直道的1.1倍(防止把欧姆弯误判成人字)
//  599        )
        LDR.W    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+1034]
        LDR.W    R1,??SpecialStatus_0
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+834]
        CMP      R0,#+255
        BNE.W    ??SpecialStatus_5
        LDR.W    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+1238]
        LDR.W    R1,??SpecialStatus_0
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+1038]
        CMP      R0,#+255
        BEQ.W    ??SpecialStatus_5
        LDR.W    R0,??SpecialStatus_0
        LDRB     R0,[R0, #+1720]
        CMP      R0,#+0
        BNE.N    ??SpecialStatus_5
        LDR.W    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+1642]
        LDR.W    R1,??SpecialStatus_0
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+1242]
        SUBW     R0,R0,#+990
        CMP      R0,#+21
        BCS.N    ??SpecialStatus_5
        LDR.W    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+810]
        LDR.W    R1,??SpecialStatus_0
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+410]
        SUBW     R0,R0,#+990
        CMP      R0,#+21
        BCS.N    ??SpecialStatus_5
        LDR.W    R0,??SpecialStatus_0
        LDRB     R0,[R0, #+1646]
        CMP      R0,#+62
        BCC.N    ??SpecialStatus_5
        LDR.W    R0,??SpecialStatus_0
        LDRB     R0,[R0, #+814]
        CMP      R0,#+69
        BCS.N    ??SpecialStatus_5
//  600     { Trk.SpecialStatus = 12;Trk.HerringRoad2 = Con.TotalRoad;//人字状态：2//记录进入人字的路程
        LDR.W    R0,??SpecialStatus_0
        MOVS     R1,#+12
        STRB     R1,[R0, #+1692]
        LDR.W    R0,??SpecialStatus_0
        LDR.W    R1,??SpecialStatus_0+0x4
        LDR      R1,[R1, #+4]
        STR      R1,[R0, #+1724]
//  601       Trk.HerringDir2 = 0;//记录进入人字的方向：左
        LDR.W    R0,??SpecialStatus_0
        MOVS     R1,#+0
        STRB     R1,[R0, #+1732]
//  602       Give.forceSpeed = 1;//强制给定速度：人字
        LDR.W    R0,??SpecialStatus_6
        MOVS     R1,#+1
        STRH     R1,[R0, #+2]
//  603       Give.MotorHerringSpeed = 100;//人字转向给定速度为90
        LDR.W    R0,??SpecialStatus_6
        MOVS     R1,#+100
        STRH     R1,[R0, #+6]
//  604       //计算人字开始转向的路程=0速度转向脉冲数(4500) - 速度/5*190，其中190为舵机打角响应时间190ms
//  605       if(6800 - Encoder.encoder[Encoder.currentEnc]*(5/Con.SpeedContralPeriod)/5*190 >=0)
        MOVW     R0,#+6800
        LDR.W    R1,??SpecialStatus_6+0x4
        LDRH     R1,[R1, #+400]
        LDR.W    R2,??SpecialStatus_6+0x4
        LDRH     R1,[R2, R1, LSL #+1]
        MOVS     R2,#+5
        LDR.W    R3,??SpecialStatus_0+0x4
        LDRB     R3,[R3, #+1]
        SDIV     R2,R2,R3
        MULS     R1,R2,R1
        MOVS     R2,#+5
        SDIV     R1,R1,R2
        MOVS     R2,#+190
        MLS      R0,R2,R1,R0
        CMP      R0,#+0
        BMI.N    ??SpecialStatus_7
//  606       { Trk.HerringTurnRoad2 = 6800 - Encoder.encoder[Encoder.currentEnc]*(5/Con.SpeedContralPeriod)/5*190; 
        MOVW     R0,#+6800
        LDR.W    R1,??SpecialStatus_6+0x4
        LDRH     R1,[R1, #+400]
        LDR.W    R2,??SpecialStatus_6+0x4
        LDRH     R1,[R2, R1, LSL #+1]
        MOVS     R2,#+5
        LDR.W    R3,??SpecialStatus_0+0x4
        LDRB     R3,[R3, #+1]
        SDIV     R2,R2,R3
        MULS     R1,R2,R1
        MOVS     R2,#+5
        SDIV     R1,R1,R2
        MOVS     R2,#+190
        MLS      R0,R2,R1,R0
        LDR.W    R1,??SpecialStatus_0
        STR      R0,[R1, #+1728]
        B.N      ??SpecialStatus_3
//  607       }
//  608       else{Trk.HerringTurnRoad2 = 0;}
??SpecialStatus_7:
        LDR.W    R0,??SpecialStatus_0
        MOVS     R1,#+0
        STR      R1,[R0, #+1728]
        B.N      ??SpecialStatus_3
//  609     }
//  610     else if(Trk.left2[Trk.currentLeft2] != 255 && Trk.right2[Trk.currentRight2] == 255 //当前丢右边不丢左边
//  611         && Trk.HerringToConDir2 == 1 //人字待确认方向向右
//  612         && Trk.cen2[Trk.currentCen2] >= 1000 - 10 && Trk.cen2[Trk.currentCen2] <= 1000 + 10 //当前CCD2中线处于中值附近
//  613         && Trk.cen1[Trk.currentCen1] >= 1000 - 10 && Trk.cen1[Trk.currentCen1] <= 1000 + 10 //当前CCD1中线处于中值附近
//  614         && Trk.Width2 >= 0.9*CCD2TrkWidth //赛道宽度大于等于直道的0.9倍(防止把障碍误判成人字)
//  615         && Trk.Width1 <= 1.1*CCD1TrkWidth //赛道宽度大于等于直道的1.1倍(防止把欧姆弯误判成人字)
//  616         )
??SpecialStatus_5:
        LDR.W    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+1034]
        LDR.W    R1,??SpecialStatus_0
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+834]
        CMP      R0,#+255
        BEQ.W    ??SpecialStatus_8
        LDR.W    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+1238]
        LDR.W    R1,??SpecialStatus_0
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+1038]
        CMP      R0,#+255
        BNE.W    ??SpecialStatus_8
        LDR.W    R0,??SpecialStatus_0
        LDRB     R0,[R0, #+1720]
        CMP      R0,#+1
        BNE.N    ??SpecialStatus_8
        LDR.W    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+1642]
        LDR.W    R1,??SpecialStatus_0
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+1242]
        SUBW     R0,R0,#+990
        CMP      R0,#+21
        BCS.N    ??SpecialStatus_8
        LDR.W    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+810]
        LDR.W    R1,??SpecialStatus_0
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+410]
        SUBW     R0,R0,#+990
        CMP      R0,#+21
        BCS.N    ??SpecialStatus_8
        LDR.W    R0,??SpecialStatus_0
        LDRB     R0,[R0, #+1646]
        CMP      R0,#+62
        BCC.N    ??SpecialStatus_8
        LDR.W    R0,??SpecialStatus_0
        LDRB     R0,[R0, #+814]
        CMP      R0,#+69
        BCS.N    ??SpecialStatus_8
//  617     { Trk.SpecialStatus = 12;Trk.HerringRoad2 = Con.TotalRoad;//人字状态：2//记录进入人字的路程
        LDR.W    R0,??SpecialStatus_0
        MOVS     R1,#+12
        STRB     R1,[R0, #+1692]
        LDR.W    R0,??SpecialStatus_0
        LDR.W    R1,??SpecialStatus_0+0x4
        LDR      R1,[R1, #+4]
        STR      R1,[R0, #+1724]
//  618       Trk.HerringDir2 = 1;//记录进入人字的方向：右
        LDR.W    R0,??SpecialStatus_0
        MOVS     R1,#+1
        STRB     R1,[R0, #+1732]
//  619       Give.forceSpeed = 1;//强制给定速度：人字
        LDR.W    R0,??SpecialStatus_6
        MOVS     R1,#+1
        STRH     R1,[R0, #+2]
//  620       Give.MotorHerringSpeed = 160;//人字转向给定速度为100
        LDR.W    R0,??SpecialStatus_6
        MOVS     R1,#+160
        STRH     R1,[R0, #+6]
//  621       //计算人字开始转向的路程=0速度转向脉冲数(4500) - 速度/5*190，其中190为舵机打角响应时间190ms
//  622       if(6800 - Encoder.encoder[Encoder.currentEnc]*(5/Con.SpeedContralPeriod)/5*190 >=0)
        MOVW     R0,#+6800
        LDR.W    R1,??SpecialStatus_6+0x4
        LDRH     R1,[R1, #+400]
        LDR.W    R2,??SpecialStatus_6+0x4
        LDRH     R1,[R2, R1, LSL #+1]
        MOVS     R2,#+5
        LDR.W    R3,??SpecialStatus_0+0x4
        LDRB     R3,[R3, #+1]
        SDIV     R2,R2,R3
        MULS     R1,R2,R1
        MOVS     R2,#+5
        SDIV     R1,R1,R2
        MOVS     R2,#+190
        MLS      R0,R2,R1,R0
        CMP      R0,#+0
        BMI.N    ??SpecialStatus_9
//  623       { Trk.HerringTurnRoad2 = 6800 - Encoder.encoder[Encoder.currentEnc]*(5/Con.SpeedContralPeriod)/5*190; 
        MOVW     R0,#+6800
        LDR.W    R1,??SpecialStatus_6+0x4
        LDRH     R1,[R1, #+400]
        LDR.W    R2,??SpecialStatus_6+0x4
        LDRH     R1,[R2, R1, LSL #+1]
        MOVS     R2,#+5
        LDR.W    R3,??SpecialStatus_0+0x4
        LDRB     R3,[R3, #+1]
        SDIV     R2,R2,R3
        MULS     R1,R2,R1
        MOVS     R2,#+5
        SDIV     R1,R1,R2
        MOVS     R2,#+190
        MLS      R0,R2,R1,R0
        LDR.W    R1,??SpecialStatus_0
        STR      R0,[R1, #+1728]
        B.N      ??SpecialStatus_3
//  624       }
//  625       else{Trk.HerringTurnRoad2 = 0;}
??SpecialStatus_9:
        LDR.W    R0,??SpecialStatus_0
        MOVS     R1,#+0
        STR      R1,[R0, #+1728]
        B.N      ??SpecialStatus_3
//  626     }
//  627     else{Give.forceDir = 0;Give.forceSpeed = 0;Trk.SpecialStatus = 0;}//未通过CCD2人字检测确认
??SpecialStatus_8:
        LDR.W    R0,??SpecialStatus_6
        MOVS     R1,#+0
        STRB     R1,[R0, #+1]
        LDR.W    R0,??SpecialStatus_6
        MOVS     R1,#+0
        STRH     R1,[R0, #+2]
        LDR.W    R0,??SpecialStatus_0
        MOVS     R1,#+0
        STRB     R1,[R0, #+1692]
        B.N      ??SpecialStatus_3
//  628   }
//  629   else if(Trk.SpecialStatus == 12)//CCD2检测人字已确认，未转向
??SpecialStatus_4:
        LDR.W    R0,??SpecialStatus_0
        LDRB     R0,[R0, #+1692]
        CMP      R0,#+12
        BNE.N    ??SpecialStatus_10
//  630   { if(Con.TotalRoad - Trk.HerringRoad2 >= Trk.HerringTurnRoad2)//CCD2人字确认后一段路程开始转向
        LDR.W    R0,??SpecialStatus_0+0x4
        LDR      R0,[R0, #+4]
        LDR.W    R1,??SpecialStatus_0
        LDR      R1,[R1, #+1724]
        SUBS     R0,R0,R1
        LDR.W    R1,??SpecialStatus_0
        LDR      R1,[R1, #+1728]
        CMP      R0,R1
        BCC.W    ??SpecialStatus_3
//  631     { Trk.SpecialStatus = 13;Give.forceDir = 1;//人字状态：3//强制打角来源：1-人字   
        LDR.W    R0,??SpecialStatus_0
        MOVS     R1,#+13
        STRB     R1,[R0, #+1692]
        LDR.W    R0,??SpecialStatus_6
        MOVS     R1,#+1
        STRB     R1,[R0, #+1]
//  632       if(Trk.HerringDir2 == 0){Give.SerHerringPWM = 0;}else{Give.SerHerringPWM = 200;}//强制给定人字打角PWM
        LDR.W    R0,??SpecialStatus_0
        LDRB     R0,[R0, #+1732]
        CMP      R0,#+0
        BNE.N    ??SpecialStatus_11
        LDR.W    R0,??SpecialStatus_6
        MOVS     R1,#+0
        STRB     R1,[R0, #+4]
        B.N      ??SpecialStatus_3
??SpecialStatus_11:
        LDR.W    R0,??SpecialStatus_6
        MOVS     R1,#+200
        STRB     R1,[R0, #+4]
        B.N      ??SpecialStatus_3
//  633     }
//  634   }
//  635   else if(Trk.SpecialStatus == 13)//CCD2检测人字转向中
??SpecialStatus_10:
        LDR.W    R0,??SpecialStatus_0
        LDRB     R0,[R0, #+1692]
        CMP      R0,#+13
        BNE.N    ??SpecialStatus_12
//  636   { if(Trk.HerringDir2 == 0){Give.SerHerringPWM = 0;}else{Give.SerHerringPWM = 200;}//强制给定人字打角PWM
        LDR.W    R0,??SpecialStatus_0
        LDRB     R0,[R0, #+1732]
        CMP      R0,#+0
        BNE.N    ??SpecialStatus_13
        LDR.W    R0,??SpecialStatus_6
        MOVS     R1,#+0
        STRB     R1,[R0, #+4]
        B.N      ??SpecialStatus_14
??SpecialStatus_13:
        LDR.W    R0,??SpecialStatus_6
        MOVS     R1,#+200
        STRB     R1,[R0, #+4]
//  637     if(Con.TotalRoad - Trk.HerringRoad2 >= Trk.HerringTurnRoad2 + 10000)//CCD2人字转向后一段路程开始重寻中线
??SpecialStatus_14:
        LDR.W    R0,??SpecialStatus_0+0x4
        LDR      R0,[R0, #+4]
        LDR.W    R1,??SpecialStatus_0
        LDR      R1,[R1, #+1724]
        SUBS     R0,R0,R1
        LDR.W    R1,??SpecialStatus_0
        LDR      R1,[R1, #+1728]
        ADD      R1,R1,#+9984
        ADDS     R1,R1,#+16
        CMP      R0,R1
        BCC.N    ??SpecialStatus_3
//  638     { Trk.SpecialStatus = 14;//人字状态：4
        LDR.W    R0,??SpecialStatus_0
        MOVS     R1,#+14
        STRB     R1,[R0, #+1692]
//  639       Trk.cen2[Trk.currentCen2]=1000;//重新给定CCD2中线，让CCD2从中点开始寻找黑边
        LDR.W    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+1642]
        LDR.W    R1,??SpecialStatus_0
        ADDS     R0,R1,R0, LSL #+1
        MOV      R1,#+1000
        STRH     R1,[R0, #+1242]
        B.N      ??SpecialStatus_3
//  640     }
//  641   }
//  642   else if(Trk.SpecialStatus == 14)//CCD2检测人字重寻中线
??SpecialStatus_12:
        LDR.W    R0,??SpecialStatus_0
        LDRB     R0,[R0, #+1692]
        CMP      R0,#+14
        BNE.N    ??SpecialStatus_3
//  643   { if(Trk.cen2[Trk.currentCen2] >= 1000 - 20 && Trk.cen2[Trk.currentCen2] <= 1000 + 20 //CCD2中线处于中值附近
//  644        && Trk.left2[Trk.currentLeft2] != 255 && Trk.right2[Trk.currentRight2] != 255 //CCD2双边存在
//  645        && Trk.Width2 >= 0.9*CCD2TrkWidth && Trk.Width2 <= 1.1*CCD2TrkWidth //CCD2检测到的赛道宽度在正常范围内
//  646        )
        LDR.W    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+1642]
        LDR.W    R1,??SpecialStatus_0
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+1242]
        SUBS     R0,R0,#+980
        CMP      R0,#+41
        BCS.N    ??SpecialStatus_15
        LDR.W    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+1034]
        LDR.W    R1,??SpecialStatus_0
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+834]
        CMP      R0,#+255
        BEQ.N    ??SpecialStatus_15
        LDR.W    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+1238]
        LDR.W    R1,??SpecialStatus_0
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+1038]
        CMP      R0,#+255
        BEQ.N    ??SpecialStatus_15
        LDR.W    R0,??SpecialStatus_0
        LDRB     R0,[R0, #+1646]
        SUBS     R0,R0,#+62
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+13
        BCS.N    ??SpecialStatus_15
//  647     { Give.forceDir = 0;Give.forceSpeed = 0;Trk.SpecialStatus = 0;//取消强制打角来源和给定速度，退出人字
        LDR.W    R0,??SpecialStatus_6
        MOVS     R1,#+0
        STRB     R1,[R0, #+1]
        LDR.W    R0,??SpecialStatus_6
        MOVS     R1,#+0
        STRH     R1,[R0, #+2]
        LDR.W    R0,??SpecialStatus_0
        MOVS     R1,#+0
        STRB     R1,[R0, #+1692]
        B.N      ??SpecialStatus_3
//  648     }
//  649     else 
//  650     { if(Trk.HerringDir2 == 0){Give.SerHerringPWM = 0;}else{Give.SerHerringPWM = 200;}//强制给定人字打角PWM
??SpecialStatus_15:
        LDR.W    R0,??SpecialStatus_0
        LDRB     R0,[R0, #+1732]
        CMP      R0,#+0
        BNE.N    ??SpecialStatus_16
        LDR.W    R0,??SpecialStatus_6
        MOVS     R1,#+0
        STRB     R1,[R0, #+4]
        B.N      ??SpecialStatus_17
??SpecialStatus_16:
        LDR.W    R0,??SpecialStatus_6
        MOVS     R1,#+200
        STRB     R1,[R0, #+4]
//  651       Trk.cen2[Trk.currentCen2]=1000;//重新给定CCD2中线，让CCD2从中点开始寻找黑边
??SpecialStatus_17:
        LDR.W    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+1642]
        LDR.W    R1,??SpecialStatus_0
        ADDS     R0,R1,R0, LSL #+1
        MOV      R1,#+1000
        STRH     R1,[R0, #+1242]
//  652     }
//  653   }
//  654   //*****************************************************************************************
//  655   //-----------------------------------------------------------------------------------------
//  656   //--------------------------------------CCD2路障检测---------------------------------------
//  657   //-----------------------------------------------------------------------------------------
//  658   //*****************************************************************************************
//  659   if(Trk.SpecialStatus == 0 && Con.EnableRoadblock == 1 && Con.Run == 2)
??SpecialStatus_3:
        LDR.W    R0,??SpecialStatus_0
        LDRB     R0,[R0, #+1692]
        CMP      R0,#+0
        BNE.N    ??SpecialStatus_18
        LDR.W    R0,??SpecialStatus_0+0x4
        LDRB     R0,[R0, #+52]
        CMP      R0,#+1
        BNE.N    ??SpecialStatus_18
        LDR.W    R0,??SpecialStatus_0+0x4
        LDRB     R0,[R0, #+12]
        CMP      R0,#+2
        BNE.N    ??SpecialStatus_18
//  660   { if(Trk.left2[Trk.currentLeft2] != 255 && Trk.right2[Trk.currentRight2] != 255 //当前CCD2双边存在
//  661        && Trk.Width2 <= 0.75*CCD2TrkWidth//当前CCD2赛道宽度小于正常直道宽度的0.75倍
//  662        && Trk.Width1 >= 0.9*CCD1TrkWidth//当前CCD1赛道宽度大于等于正常直道宽度的0.9倍(防止与坡道误判)
//  663        && Trk.cen2[Trk.currentCen2] > 1000 - 20 && Trk.cen2[Trk.currentCen2] < 1000 + 20 //当前中心坐标没有偏离中心太多
//  664        )
        LDR.W    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+1034]
        LDR.W    R1,??SpecialStatus_0
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+834]
        CMP      R0,#+255
        BEQ.W    ??SpecialStatus_19
        LDR.W    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+1238]
        LDR.W    R1,??SpecialStatus_0
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+1038]
        CMP      R0,#+255
        BEQ.W    ??SpecialStatus_19
        LDR.W    R0,??SpecialStatus_0
        LDRB     R0,[R0, #+1646]
        CMP      R0,#+52
        BCS.W    ??SpecialStatus_19
        LDR.W    R0,??SpecialStatus_0
        LDRB     R0,[R0, #+814]
        CMP      R0,#+56
        BCC.W    ??SpecialStatus_19
        LDR.W    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+1642]
        LDR.W    R1,??SpecialStatus_0
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+1242]
        SUBW     R0,R0,#+981
        CMP      R0,#+39
        BCS.W    ??SpecialStatus_19
//  665     { Trk.SpecialStatus = 31;//特殊状态：路障待确认
        LDR.W    R0,??SpecialStatus_0
        MOVS     R1,#+31
        STRB     R1,[R0, #+1692]
//  666       Trk.RoadBlockWidth2 = Trk.Width2;Trk.RoadBlockRoad2 = Con.TotalRoad;//记录赛道宽度//记录路障待确认的路程
        LDR.W    R0,??SpecialStatus_0
        LDR.W    R1,??SpecialStatus_0
        LDRB     R1,[R1, #+1646]
        STRB     R1,[R0, #+1742]
        LDR.W    R0,??SpecialStatus_0
        LDR.W    R1,??SpecialStatus_0+0x4
        LDR      R1,[R1, #+4]
        STR      R1,[R0, #+1744]
//  667       if(Trk.cen2[Trk.currentCen2] <= 1000){Trk.RoadBlockDir2 = 0;}else{Trk.RoadBlockDir2 = 1;}//记录路障方向
        LDR.W    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+1642]
        LDR.W    R1,??SpecialStatus_0
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+1242]
        CMP      R0,#+1000
        BGT.N    ??SpecialStatus_20
        LDR.W    R0,??SpecialStatus_0
        MOVS     R1,#+0
        STRB     R1,[R0, #+1748]
        B.N      ??SpecialStatus_19
??SpecialStatus_20:
        LDR.W    R0,??SpecialStatus_0
        MOVS     R1,#+1
        STRB     R1,[R0, #+1748]
        B.N      ??SpecialStatus_19
//  668     }
//  669   }
//  670   else if(Trk.SpecialStatus == 31 && Con.TotalRoad - Trk.RoadBlockRoad2 >= 800)//路障待确认经过800个脉冲
??SpecialStatus_18:
        LDR.W    R0,??SpecialStatus_0
        LDRB     R0,[R0, #+1692]
        CMP      R0,#+31
        BNE.N    ??SpecialStatus_21
        LDR.W    R0,??SpecialStatus_0+0x4
        LDR      R0,[R0, #+4]
        LDR.W    R1,??SpecialStatus_0
        LDR      R1,[R1, #+1744]
        SUBS     R0,R0,R1
        CMP      R0,#+800
        BCC.N    ??SpecialStatus_21
//  671   {
//  672     if(Trk.left2[Trk.currentLeft2] != 255 && Trk.right2[Trk.currentRight2] != 255 //当前CCD2双边存在
//  673        && Trk.Width2 <= 0.75*CCD2TrkWidth//当前赛道宽度小于正常直道宽度的0.75倍
//  674        && Trk.cen2[Trk.currentCen2] > 1000 - 20 && Trk.cen2[Trk.currentCen2] < 1000 + 20 //当前中心坐标没有偏离中心太多
//  675        )
        LDR.W    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+1034]
        LDR.W    R1,??SpecialStatus_0
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+834]
        CMP      R0,#+255
        BEQ.N    ??SpecialStatus_22
        LDR.W    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+1238]
        LDR.W    R1,??SpecialStatus_0
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+1038]
        CMP      R0,#+255
        BEQ.N    ??SpecialStatus_22
        LDR.W    R0,??SpecialStatus_0
        LDRB     R0,[R0, #+1646]
        CMP      R0,#+52
        BCS.N    ??SpecialStatus_22
        LDR.W    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+1642]
        LDR.W    R1,??SpecialStatus_0
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+1242]
        SUBW     R0,R0,#+981
        CMP      R0,#+39
        BCS.N    ??SpecialStatus_22
//  676     { Trk.SpecialStatus = 32;//特殊状态：路障确认
        LDR.W    R0,??SpecialStatus_0
        MOVS     R1,#+32
        STRB     R1,[R0, #+1692]
//  677       Give.forceSpeed = 2;//强制给定速度：2-路障速度
        LDR.W    R0,??SpecialStatus_6
        MOVS     R1,#+2
        STRH     R1,[R0, #+2]
//  678       Give.MotorRoadBlockSpeed = 200;//路障给定速度
        LDR.W    R0,??SpecialStatus_6
        MOVS     R1,#+200
        STRH     R1,[R0, #+8]
        B.N      ??SpecialStatus_19
//  679     }
//  680     else{Trk.SpecialStatus = 0;}//未通过路障确认
??SpecialStatus_22:
        LDR.W    R0,??SpecialStatus_0
        MOVS     R1,#+0
        STRB     R1,[R0, #+1692]
        B.N      ??SpecialStatus_19
//  681   }
//  682   else if(Trk.SpecialStatus == 32)//路障确认
??SpecialStatus_21:
        LDR.W    R0,??SpecialStatus_0
        LDRB     R0,[R0, #+1692]
        CMP      R0,#+32
        BNE.W    ??SpecialStatus_19
//  683   {
//  684     if(Con.TotalRoad - Trk.RoadBlockRoad2 < 16000)//当前处于路障长度之中
        LDR.W    R0,??SpecialStatus_0+0x4
        LDR      R0,[R0, #+4]
        LDR.W    R1,??SpecialStatus_0
        LDR      R1,[R1, #+1744]
        SUBS     R0,R0,R1
        CMP      R0,#+16000
        BCS.W    ??SpecialStatus_23
//  685     { //重新计算CCD2中心坐标
//  686       if(Trk.RoadBlockDir2 == 0 && Trk.left2[Trk.currentLeft2] != 255)//向左走且左边存在
        LDR.W    R0,??SpecialStatus_0
        LDRB     R0,[R0, #+1748]
        CMP      R0,#+0
        BNE.N    ??SpecialStatus_24
        LDR.W    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+1034]
        LDR.W    R1,??SpecialStatus_0
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+834]
        CMP      R0,#+255
        BEQ.N    ??SpecialStatus_24
//  687       { Trk.cen2[Trk.currentCen2] = Trk.left2[Trk.currentLeft2] + Trk.RoadBlockWidth2/2 + 937 - 0;
        LDR.W    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+1034]
        LDR.W    R1,??SpecialStatus_0
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+834]
        LDR.W    R1,??SpecialStatus_0
        LDRB     R1,[R1, #+1742]
        MOVS     R2,#+2
        SDIV     R1,R1,R2
        UXTAB    R0,R1,R0
        ADDW     R0,R0,#+937
        LDR.W    R1,??SpecialStatus_0
        LDRH     R1,[R1, #+1642]
        LDR.W    R2,??SpecialStatus_0
        ADDS     R1,R2,R1, LSL #+1
        STRH     R0,[R1, #+1242]
//  688         if(Trk.cen2[Trk.currentCen2] > 1200){Trk.cen2[Trk.currentCen2] = 1200;}
        LDR.W    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+1642]
        LDR.W    R1,??SpecialStatus_0
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+1242]
        CMP      R0,#+1200
        BLE.N    ??SpecialStatus_25
        LDR.W    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+1642]
        LDR.W    R1,??SpecialStatus_0
        ADDS     R0,R1,R0, LSL #+1
        MOV      R1,#+1200
        STRH     R1,[R0, #+1242]
        B.N      ??SpecialStatus_26
//  689         else if(Trk.cen2[Trk.currentCen2] < 800){Trk.cen2[Trk.currentCen2] = 800;}
??SpecialStatus_25:
        LDR.W    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+1642]
        LDR.W    R1,??SpecialStatus_0
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+1242]
        CMP      R0,#+800
        BGE.W    ??SpecialStatus_26
        LDR.W    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+1642]
        LDR.W    R1,??SpecialStatus_0
        ADDS     R0,R1,R0, LSL #+1
        MOV      R1,#+800
        STRH     R1,[R0, #+1242]
        B.N      ??SpecialStatus_26
//  690       }
//  691       else if(Trk.RoadBlockDir2 == 0 && Trk.left2[Trk.currentLeft2] == 255){Trk.cen2[Trk.currentCen2] = 1000;}//左边不存在
??SpecialStatus_24:
        LDR.W    R0,??SpecialStatus_0
        LDRB     R0,[R0, #+1748]
        CMP      R0,#+0
        BNE.N    ??SpecialStatus_27
        LDR.W    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+1034]
        LDR.W    R1,??SpecialStatus_0
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+834]
        CMP      R0,#+255
        BNE.N    ??SpecialStatus_27
        LDR.W    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+1642]
        LDR.W    R1,??SpecialStatus_0
        ADDS     R0,R1,R0, LSL #+1
        MOV      R1,#+1000
        STRH     R1,[R0, #+1242]
        B.N      ??SpecialStatus_26
//  692       else if(Trk.RoadBlockDir2 == 1 && Trk.right2[Trk.currentRight2] != 255)//向右走且右边存在
??SpecialStatus_27:
        LDR.W    R0,??SpecialStatus_0
        LDRB     R0,[R0, #+1748]
        CMP      R0,#+1
        BNE.N    ??SpecialStatus_28
        LDR.W    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+1238]
        LDR.W    R1,??SpecialStatus_0
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+1038]
        CMP      R0,#+255
        BEQ.N    ??SpecialStatus_28
//  693       { Trk.cen2[Trk.currentCen2] = 937 + Trk.right2[Trk.currentRight2] - Trk.RoadBlockWidth2/2 + 0;//重新计算中心坐标
        LDR.W    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+1238]
        LDR.W    R1,??SpecialStatus_0
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+1038]
        ADDW     R0,R0,#+937
        LDR.W    R1,??SpecialStatus_0
        LDRB     R1,[R1, #+1742]
        MOVS     R2,#+2
        SDIV     R1,R1,R2
        SUBS     R0,R0,R1
        LDR.W    R1,??SpecialStatus_0
        LDRH     R1,[R1, #+1642]
        LDR.W    R2,??SpecialStatus_0
        ADDS     R1,R2,R1, LSL #+1
        STRH     R0,[R1, #+1242]
//  694         if(Trk.cen2[Trk.currentCen2] < 800){Trk.cen2[Trk.currentCen2] = 800;}
        LDR.W    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+1642]
        LDR.W    R1,??SpecialStatus_0
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+1242]
        CMP      R0,#+800
        BGE.N    ??SpecialStatus_29
        LDR.W    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+1642]
        LDR.W    R1,??SpecialStatus_0
        ADDS     R0,R1,R0, LSL #+1
        MOV      R1,#+800
        STRH     R1,[R0, #+1242]
        B.N      ??SpecialStatus_26
//  695         else if(Trk.cen2[Trk.currentCen2] > 1200){Trk.cen2[Trk.currentCen2] = 1200;}
??SpecialStatus_29:
        LDR.W    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+1642]
        LDR.W    R1,??SpecialStatus_0
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+1242]
        CMP      R0,#+1200
        BLE.N    ??SpecialStatus_26
        LDR.W    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+1642]
        LDR.W    R1,??SpecialStatus_0
        ADDS     R0,R1,R0, LSL #+1
        MOV      R1,#+1200
        STRH     R1,[R0, #+1242]
        B.N      ??SpecialStatus_26
//  696       }
//  697       else if(Trk.RoadBlockDir2 == 1 && Trk.right2[Trk.currentRight2] == 255){Trk.cen2[Trk.currentCen2] = 1000;}//右边不存在
??SpecialStatus_28:
        LDR.W    R0,??SpecialStatus_0
        LDRB     R0,[R0, #+1748]
        CMP      R0,#+1
        BNE.N    ??SpecialStatus_26
        LDR.W    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+1238]
        LDR.W    R1,??SpecialStatus_0
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+1038]
        CMP      R0,#+255
        BNE.N    ??SpecialStatus_26
        LDR.W    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+1642]
        LDR.W    R1,??SpecialStatus_0
        ADDS     R0,R1,R0, LSL #+1
        MOV      R1,#+1000
        STRH     R1,[R0, #+1242]
//  698       //重新计算CCD1中心坐标
//  699       if(Trk.RoadBlockDir2 == 0 && Trk.left1[Trk.currentLeft1] != 255)//向左走且左边存在
??SpecialStatus_26:
        LDR.W    R0,??SpecialStatus_0
        LDRB     R0,[R0, #+1748]
        CMP      R0,#+0
        BNE.N    ??SpecialStatus_30
        LDR.W    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+202]
        LDR.W    R1,??SpecialStatus_0
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+1]
        CMP      R0,#+255
        BEQ.N    ??SpecialStatus_30
//  700       { Trk.cen1[Trk.currentCen1] = 937 + Trk.left1[Trk.currentLeft1] + Trk.RoadBlockWidth2/2 - 0;
        LDR.W    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+202]
        LDR.W    R1,??SpecialStatus_0
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+1]
        LDR.W    R1,??SpecialStatus_0
        LDRB     R1,[R1, #+1742]
        MOVS     R2,#+2
        SDIV     R1,R1,R2
        UXTAB    R0,R1,R0
        ADDW     R0,R0,#+937
        LDR.W    R1,??SpecialStatus_0
        LDRH     R1,[R1, #+810]
        LDR.W    R2,??SpecialStatus_0
        ADDS     R1,R2,R1, LSL #+1
        STRH     R0,[R1, #+410]
//  701         if(Trk.cen1[Trk.currentCen1] > 1200){Trk.cen1[Trk.currentCen1] = 1200;}
        LDR.W    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+810]
        LDR.W    R1,??SpecialStatus_0
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+410]
        CMP      R0,#+1200
        BLE.N    ??SpecialStatus_31
        LDR.W    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+810]
        LDR.N    R1,??SpecialStatus_0
        ADDS     R0,R1,R0, LSL #+1
        MOV      R1,#+1200
        STRH     R1,[R0, #+410]
        B.N      ??SpecialStatus_19
//  702         else if(Trk.cen1[Trk.currentCen1] < 800){Trk.cen1[Trk.currentCen1] = 800;}
??SpecialStatus_31:
        LDR.N    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+810]
        LDR.N    R1,??SpecialStatus_0
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+410]
        CMP      R0,#+800
        BGE.W    ??SpecialStatus_19
        LDR.N    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+810]
        LDR.N    R1,??SpecialStatus_0
        ADDS     R0,R1,R0, LSL #+1
        MOV      R1,#+800
        STRH     R1,[R0, #+410]
        B.N      ??SpecialStatus_19
//  703       }
//  704       else if(Trk.RoadBlockDir2 == 0 && Trk.left1[Trk.currentLeft1] == 255){Trk.cen1[Trk.currentCen1] = 1000;}//左边不存在
??SpecialStatus_30:
        LDR.N    R0,??SpecialStatus_0
        LDRB     R0,[R0, #+1748]
        CMP      R0,#+0
        BNE.N    ??SpecialStatus_32
        LDR.N    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+202]
        LDR.N    R1,??SpecialStatus_0
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+1]
        CMP      R0,#+255
        BNE.N    ??SpecialStatus_32
        LDR.N    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+810]
        LDR.N    R1,??SpecialStatus_0
        ADDS     R0,R1,R0, LSL #+1
        MOV      R1,#+1000
        STRH     R1,[R0, #+410]
        B.N      ??SpecialStatus_19
//  705       else if(Trk.RoadBlockDir2 == 1 && Trk.right1[Trk.currentRight1] != 255)//向右走且右边存在
??SpecialStatus_32:
        LDR.N    R0,??SpecialStatus_0
        LDRB     R0,[R0, #+1748]
        CMP      R0,#+1
        BNE.N    ??SpecialStatus_33
        LDR.N    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+406]
        LDR.N    R1,??SpecialStatus_0
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+206]
        CMP      R0,#+255
        BEQ.N    ??SpecialStatus_33
//  706       { Trk.cen1[Trk.currentCen1] = 937 + Trk.right1[Trk.currentRight1] - Trk.RoadBlockWidth2/2 + 0;//重新计算中心坐标
        LDR.N    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+406]
        LDR.N    R1,??SpecialStatus_0
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+206]
        ADDW     R0,R0,#+937
        LDR.N    R1,??SpecialStatus_0
        LDRB     R1,[R1, #+1742]
        MOVS     R2,#+2
        SDIV     R1,R1,R2
        SUBS     R0,R0,R1
        LDR.N    R1,??SpecialStatus_0
        LDRH     R1,[R1, #+810]
        LDR.N    R2,??SpecialStatus_0
        ADDS     R1,R2,R1, LSL #+1
        STRH     R0,[R1, #+410]
//  707         if(Trk.cen1[Trk.currentCen1] < 800){Trk.cen1[Trk.currentCen1] = 800;}
        LDR.N    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+810]
        LDR.N    R1,??SpecialStatus_0
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+410]
        CMP      R0,#+800
        BGE.N    ??SpecialStatus_34
        LDR.N    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+810]
        LDR.N    R1,??SpecialStatus_0
        ADDS     R0,R1,R0, LSL #+1
        MOV      R1,#+800
        STRH     R1,[R0, #+410]
        B.N      ??SpecialStatus_19
//  708         else if(Trk.cen1[Trk.currentCen1] > 1200){Trk.cen1[Trk.currentCen1] = 1200;}
??SpecialStatus_34:
        LDR.N    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+810]
        LDR.N    R1,??SpecialStatus_0
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+410]
        CMP      R0,#+1200
        BLE.N    ??SpecialStatus_19
        LDR.N    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+810]
        LDR.N    R1,??SpecialStatus_0
        ADDS     R0,R1,R0, LSL #+1
        MOV      R1,#+1200
        STRH     R1,[R0, #+410]
        B.N      ??SpecialStatus_19
//  709       }
//  710       else if(Trk.RoadBlockDir2 == 1 && Trk.right1[Trk.currentRight1] == 255){Trk.cen1[Trk.currentCen1] = 1000;}//右边不存在
??SpecialStatus_33:
        LDR.N    R0,??SpecialStatus_0
        LDRB     R0,[R0, #+1748]
        CMP      R0,#+1
        BNE.N    ??SpecialStatus_19
        LDR.N    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+406]
        LDR.N    R1,??SpecialStatus_0
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+206]
        CMP      R0,#+255
        BNE.N    ??SpecialStatus_19
        LDR.N    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+810]
        LDR.N    R1,??SpecialStatus_0
        ADDS     R0,R1,R0, LSL #+1
        MOV      R1,#+1000
        STRH     R1,[R0, #+410]
        B.N      ??SpecialStatus_19
//  711     }
//  712     else{ Give.forceSpeed = 0;Trk.SpecialStatus = 0;}//取消强制给定速度，退出路障
??SpecialStatus_23:
        LDR.W    R0,??SpecialStatus_6
        MOVS     R1,#+0
        STRH     R1,[R0, #+2]
        LDR.N    R0,??SpecialStatus_0
        MOVS     R1,#+0
        STRB     R1,[R0, #+1692]
//  713   }
//  714   //*****************************************************************************************
//  715   //-----------------------------------------------------------------------------------------
//  716   //----------------------------------------坡道检测-----------------------------------------
//  717   //-----------------------------------------------------------------------------------------
//  718   //*****************************************************************************************
//  719   //if(Con.EnableRamp == 1 && Con.Run == 2 && Trk.SpecialStatus == 0)
//  720   if(Con.EnableRamp == 1&& Con.Run == 2 && Trk.SpecialStatus == 0
//  721      && Trk.cen1[Trk.currentCen1] < 1000+10 && Trk.cen1[Trk.currentCen1] > 1000-10 //当前CCD1中线处于中值附近    
//  722      && Trk.cen2[Trk.currentCen2] < 1000+10 && Trk.cen2[Trk.currentCen2] > 1000-10 //当前CCD2中线处于中值附近
//  723      && Trk.left2[Trk.currentLeft2] != 255 && Trk.right2[Trk.currentRight2] != 255 //当前CCD2双边存在
//  724      && Trk.left1[Trk.currentLeft1] != 255 && Trk.right1[Trk.currentRight1] != 255 //当前CCD1双边存在
//  725      && Trk.Width1 >= 1.2*CCD1TrkWidth //CCD1赛道宽度大于1.2倍正常直道宽度
//  726      && Trk.Width2 >= 1.25*CCD2TrkWidth //CCD2赛道宽度大于1.25倍正常直道宽度
//  727      //&& (Trk.RampRoad1 == 0 || (Trk.RampRoad1 != 0 && Con.TotalRoad - Trk.RampRoad1 >= 60000) )//防止坡道上连续检测
//  728      )
??SpecialStatus_19:
        LDR.N    R0,??SpecialStatus_0+0x4
        LDRB     R0,[R0, #+53]
        CMP      R0,#+1
        BNE.N    ??SpecialStatus_35
        LDR.N    R0,??SpecialStatus_0+0x4
        LDRB     R0,[R0, #+12]
        CMP      R0,#+2
        BNE.N    ??SpecialStatus_35
        LDR.N    R0,??SpecialStatus_0
        LDRB     R0,[R0, #+1692]
        CMP      R0,#+0
        BNE.N    ??SpecialStatus_35
        LDR.N    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+810]
        LDR.N    R1,??SpecialStatus_0
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+410]
        SUBW     R0,R0,#+991
        CMP      R0,#+19
        BCS.N    ??SpecialStatus_35
        LDR.N    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+1642]
        LDR.N    R1,??SpecialStatus_0
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+1242]
        SUBW     R0,R0,#+991
        CMP      R0,#+19
        BCS.N    ??SpecialStatus_35
        LDR.N    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+1034]
        LDR.N    R1,??SpecialStatus_0
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+834]
        CMP      R0,#+255
        BEQ.N    ??SpecialStatus_35
        LDR.N    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+1238]
        LDR.N    R1,??SpecialStatus_0
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+1038]
        CMP      R0,#+255
        BEQ.N    ??SpecialStatus_35
        LDR.N    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+202]
        LDR.N    R1,??SpecialStatus_0
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+1]
        CMP      R0,#+255
        BEQ.N    ??SpecialStatus_35
        LDR.N    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+406]
        LDR.N    R1,??SpecialStatus_0
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+206]
        CMP      R0,#+255
        BEQ.N    ??SpecialStatus_35
        LDR.N    R0,??SpecialStatus_0
        LDRB     R0,[R0, #+814]
        CMP      R0,#+75
        BCC.N    ??SpecialStatus_35
        LDR.N    R0,??SpecialStatus_0
        LDRB     R0,[R0, #+1646]
        CMP      R0,#+85
        BCC.N    ??SpecialStatus_35
//  729   {   Trk.SpecialStatus = 41;//特殊状态：坡道
        LDR.N    R0,??SpecialStatus_0
        MOVS     R1,#+41
        STRB     R1,[R0, #+1692]
//  730       Trk.RampRoad1 = Con.TotalRoad;//记录检测到坡道的路程
        LDR.N    R0,??SpecialStatus_0
        LDR.N    R1,??SpecialStatus_0+0x4
        LDR      R1,[R1, #+4]
        STR      R1,[R0, #+1768]
//  731       Trk.RampTime1 = Con.TotalTime;//记录检测到坡道的时间  
        LDR.N    R0,??SpecialStatus_0
        LDR.N    R1,??SpecialStatus_0+0x4
        LDR      R1,[R1, #+8]
        STR      R1,[R0, #+1772]
        B.N      ??SpecialStatus_36
//  732   }
//  733   else if(Trk.SpecialStatus == 41)//坡道待确认
??SpecialStatus_35:
        LDR.N    R0,??SpecialStatus_0
        LDRB     R0,[R0, #+1692]
        CMP      R0,#+41
        BNE.N    ??SpecialStatus_37
//  734   {
//  735     if(Gyroscope.Gyroscope[Gyroscope.currentGyro] < 87 //陀螺仪值小于某一值
//  736        && Trk.Width1 >= 1.1*CCD1TrkWidth //赛道宽度大于等于1.1倍正常直道宽度
//  737        && Trk.cen1[Trk.currentCen1] < 1000+10 && Trk.cen1[Trk.currentCen1] > 1000-10 //当前CCD1中线处于中值附近 
//  738        && Trk.left1[Trk.currentLeft1] != 255 && Trk.right1[Trk.currentRight1] != 255 //当前CCD1双边存在
//  739        )
        LDR.W    R0,??DataTable4
        LDRH     R0,[R0, #+400]
        LDR.W    R1,??DataTable4
        LDRH     R0,[R1, R0, LSL #+1]
        CMP      R0,#+87
        BGE.N    ??SpecialStatus_38
        LDR.N    R0,??SpecialStatus_0
        LDRB     R0,[R0, #+814]
        CMP      R0,#+69
        BCC.N    ??SpecialStatus_38
        LDR.N    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+810]
        LDR.N    R1,??SpecialStatus_0
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+410]
        SUBW     R0,R0,#+991
        CMP      R0,#+19
        BCS.N    ??SpecialStatus_38
        LDR.N    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+202]
        LDR.N    R1,??SpecialStatus_0
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+1]
        CMP      R0,#+255
        BEQ.N    ??SpecialStatus_38
        LDR.N    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+406]
        LDR.N    R1,??SpecialStatus_0
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+206]
        CMP      R0,#+255
        BEQ.N    ??SpecialStatus_38
//  740     { Trk.SpecialStatus = 42;//特殊状态：坡道确认
        LDR.N    R0,??SpecialStatus_0
        MOVS     R1,#+42
        STRB     R1,[R0, #+1692]
//  741       Give.forceSpeed = 3;//强制给定速度来源：坡道速度
        LDR.W    R0,??SpecialStatus_6
        MOVS     R1,#+3
        STRH     R1,[R0, #+2]
//  742       Give.MotorRampSpeed = 150;//强制给定坡道速度150
        LDR.W    R0,??SpecialStatus_6
        MOVS     R1,#+150
        STRH     R1,[R0, #+10]
//  743       if(Trk.cen2[Trk.currentCen2] > 1000+10){Trk.cen2[Trk.currentCen2] = 1010;}//防止坡道乱打角
        LDR.N    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+1642]
        LDR.N    R1,??SpecialStatus_0
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+1242]
        MOVW     R1,#+1011
        CMP      R0,R1
        BLT.N    ??SpecialStatus_39
        LDR.N    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+1642]
        LDR.N    R1,??SpecialStatus_0
        ADDS     R0,R1,R0, LSL #+1
        MOVW     R1,#+1010
        STRH     R1,[R0, #+1242]
//  744       if(Trk.cen2[Trk.currentCen2] < 1000-10){Trk.cen2[Trk.currentCen2] = 990;}//防止坡道乱打角
??SpecialStatus_39:
        LDR.N    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+1642]
        LDR.N    R1,??SpecialStatus_0
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+1242]
        MOVW     R1,#+990
        CMP      R0,R1
        BGE.N    ??SpecialStatus_38
        LDR.N    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+1642]
        LDR.N    R1,??SpecialStatus_0
        ADDS     R0,R1,R0, LSL #+1
        MOVW     R1,#+990
        STRH     R1,[R0, #+1242]
//  745     }
//  746     if(Con.TotalRoad - Trk.RampRoad1 > 4000)//未通过坡道确认
??SpecialStatus_38:
        LDR.N    R0,??SpecialStatus_0+0x4
        LDR      R0,[R0, #+4]
        LDR.N    R1,??SpecialStatus_0
        LDR      R1,[R1, #+1768]
        SUBS     R0,R0,R1
        CMP      R0,#+4000
        BLS.N    ??SpecialStatus_36
//  747     { Trk.SpecialStatus = 0;//清0特殊状态
        LDR.N    R0,??SpecialStatus_0
        MOVS     R1,#+0
        STRB     R1,[R0, #+1692]
        B.N      ??SpecialStatus_36
        Nop      
        DATA
??SpecialStatus_0:
        DC32     Trk
        DC32     Con
        THUMB
//  748     }
//  749   }
//  750   else if(Trk.SpecialStatus == 42)//坡道确认
??SpecialStatus_37:
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+1692]
        CMP      R0,#+42
        BNE.N    ??SpecialStatus_36
//  751   { if(Trk.cen2[Trk.currentCen2] > 1000+10){Trk.cen2[Trk.currentCen2] = 1010;}//防止坡道乱打角
        LDR.W    R0,??DataTable4_1
        LDRH     R0,[R0, #+1642]
        LDR.W    R1,??DataTable4_1
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+1242]
        MOVW     R1,#+1011
        CMP      R0,R1
        BLT.N    ??SpecialStatus_40
        LDR.W    R0,??DataTable4_1
        LDRH     R0,[R0, #+1642]
        LDR.W    R1,??DataTable4_1
        ADDS     R0,R1,R0, LSL #+1
        MOVW     R1,#+1010
        STRH     R1,[R0, #+1242]
//  752     if(Trk.cen2[Trk.currentCen2] < 1000-10){Trk.cen2[Trk.currentCen2] = 990;}//防止坡道乱打角
??SpecialStatus_40:
        LDR.W    R0,??DataTable4_1
        LDRH     R0,[R0, #+1642]
        LDR.W    R1,??DataTable4_1
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+1242]
        MOVW     R1,#+990
        CMP      R0,R1
        BGE.N    ??SpecialStatus_41
        LDR.W    R0,??DataTable4_1
        LDRH     R0,[R0, #+1642]
        LDR.W    R1,??DataTable4_1
        ADDS     R0,R1,R0, LSL #+1
        MOVW     R1,#+990
        STRH     R1,[R0, #+1242]
//  753     if(Con.TotalRoad - Trk.RampRoad1 > 33000 //超过坡道路程
//  754        || (Trk.Width1 >= 1.1*CCD1TrkWidth //赛道宽度大于等于1.1倍正常直道宽度(可能是下坡才检测到，然后入弯)
//  755            &&(Trk.cen1[Trk.currentCen1] > 1000+20 || Trk.cen1[Trk.currentCen1] < 1000-20)) //当前CCD1中线不处于中值附近
//  756        )
??SpecialStatus_41:
        LDR.W    R0,??DataTable4_2
        LDR      R0,[R0, #+4]
        LDR.W    R1,??DataTable4_1
        LDR      R1,[R1, #+1768]
        SUBS     R0,R0,R1
        MOVW     R1,#+33001
        CMP      R0,R1
        BCS.N    ??SpecialStatus_42
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+814]
        CMP      R0,#+69
        BCC.N    ??SpecialStatus_36
        LDR.W    R0,??DataTable4_1
        LDRH     R0,[R0, #+810]
        LDR.W    R1,??DataTable4_1
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+410]
        SUBS     R0,R0,#+980
        CMP      R0,#+41
        BCC.N    ??SpecialStatus_36
//  757     { Trk.SpecialStatus = 0;//清0特殊状态
??SpecialStatus_42:
        LDR.W    R0,??DataTable4_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+1692]
//  758       Give.forceSpeed = 0;//取消强制给定速度
        LDR.N    R0,??SpecialStatus_6
        MOVS     R1,#+0
        STRH     R1,[R0, #+2]
//  759     }
//  760   }
//  761   //*****************************************************************************************
//  762   //-----------------------------------------------------------------------------------------
//  763   //---------------------------------------起跑线检测----------------------------------------
//  764   //-----------------------------------------------------------------------------------------
//  765   //*****************************************************************************************
//  766   if(Con.EnableStartline == 1 && Trk.SpecialStatus != 41 && Trk.SpecialStatus != 42
//  767      && Con.Run == 2 && Trk.StartLine == 0)//第一次检测起跑线
??SpecialStatus_36:
        LDR.W    R0,??DataTable4_2
        LDRB     R0,[R0, #+54]
        CMP      R0,#+1
        BNE.N    ??SpecialStatus_43
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+1692]
        CMP      R0,#+41
        BEQ.N    ??SpecialStatus_43
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+1692]
        CMP      R0,#+42
        BEQ.N    ??SpecialStatus_43
        LDR.W    R0,??DataTable4_2
        LDRB     R0,[R0, #+12]
        CMP      R0,#+2
        BNE.N    ??SpecialStatus_43
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+1749]
        CMP      R0,#+0
        BNE.N    ??SpecialStatus_43
//  768   { //两个红外管同时为低电平判断为检测到起跑线（处于坡道时不检测）
//  769     if(Infrared.Infrared1[Infrared.currentInfrared] == 0 && Infrared.Infrared2[Infrared.currentInfrared] == 0)
        LDR.W    R0,??DataTable4_3
        LDRH     R0,[R0, #+400]
        LDR.W    R1,??DataTable4_3
        LDRB     R0,[R0, R1]
        CMP      R0,#+0
        BNE.N    ??SpecialStatus_43
        LDR.W    R0,??DataTable4_3
        LDRH     R0,[R0, #+400]
        LDR.W    R1,??DataTable4_3
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+200]
        CMP      R0,#+0
        BNE.N    ??SpecialStatus_43
//  770     { //记录第一次检测到起跑线时的时间和路程
//  771       Trk.StartLine1time = Con.TotalTime;
        LDR.W    R0,??DataTable4_1
        LDR.W    R1,??DataTable4_2
        LDR      R1,[R1, #+8]
        STR      R1,[R0, #+1752]
//  772       Trk.StartLine1road = Con.TotalRoad;
        LDR.W    R0,??DataTable4_1
        LDR.W    R1,??DataTable4_2
        LDR      R1,[R1, #+4]
        STR      R1,[R0, #+1760]
//  773       Trk.StartLine = 1;
        LDR.W    R0,??DataTable4_1
        MOVS     R1,#+1
        STRB     R1,[R0, #+1749]
//  774     }
//  775   }
//  776   
//  777   if(Con.EnableStartline == 1 && Trk.SpecialStatus != 41 && Con.Run == 2 && Trk.StartLine == 1)//第二次检测起跑线
??SpecialStatus_43:
        LDR.W    R0,??DataTable4_2
        LDRB     R0,[R0, #+54]
        CMP      R0,#+1
        BNE.N    ??SpecialStatus_44
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+1692]
        CMP      R0,#+41
        BEQ.N    ??SpecialStatus_44
        LDR.W    R0,??DataTable4_2
        LDRB     R0,[R0, #+12]
        CMP      R0,#+2
        BNE.N    ??SpecialStatus_44
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+1749]
        CMP      R0,#+1
        BNE.N    ??SpecialStatus_44
//  778   { //第一次起跑线往后2秒并且路程超过5000个脉冲才检测第二次
//  779     if(Con.TotalRoad - Trk.StartLine1road > 5000 && Con.TotalTime - Trk.StartLine1time > 2000)
        LDR.W    R0,??DataTable4_2
        LDR      R0,[R0, #+4]
        LDR.W    R1,??DataTable4_1
        LDR      R1,[R1, #+1760]
        SUBS     R0,R0,R1
        MOVW     R1,#+5001
        CMP      R0,R1
        BCC.N    ??SpecialStatus_44
        LDR.W    R0,??DataTable4_2
        LDR      R0,[R0, #+8]
        LDR.W    R1,??DataTable4_1
        LDR      R1,[R1, #+1752]
        SUBS     R0,R0,R1
        CMP      R0,#+2000
        BLS.N    ??SpecialStatus_44
//  780     { //两个红外管同时为低电平判断为检测到起跑线（处于坡道时不检测）
//  781       if(Infrared.Infrared1[Infrared.currentInfrared] == 0 && Infrared.Infrared2[Infrared.currentInfrared] == 0)
        LDR.W    R0,??DataTable4_3
        LDRH     R0,[R0, #+400]
        LDR.W    R1,??DataTable4_3
        LDRB     R0,[R0, R1]
        CMP      R0,#+0
        BNE.N    ??SpecialStatus_44
        LDR.W    R0,??DataTable4_3
        LDRH     R0,[R0, #+400]
        LDR.W    R1,??DataTable4_3
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+200]
        CMP      R0,#+0
        BNE.N    ??SpecialStatus_44
//  782       { //记录第二次检测到起跑线时的时间和路程
//  783         Trk.StartLine2time = Con.TotalTime;
        LDR.W    R0,??DataTable4_1
        LDR.W    R1,??DataTable4_2
        LDR      R1,[R1, #+8]
        STR      R1,[R0, #+1756]
//  784         Trk.StartLine2road = Con.TotalRoad;
        LDR.W    R0,??DataTable4_1
        LDR.W    R1,??DataTable4_2
        LDR      R1,[R1, #+4]
        STR      R1,[R0, #+1764]
//  785         Trk.StartLine = 2;
        LDR.W    R0,??DataTable4_1
        MOVS     R1,#+2
        STRB     R1,[R0, #+1749]
//  786         Con.Run = 3;//进入停止阶段
        LDR.W    R0,??DataTable4_2
        MOVS     R1,#+3
        STRB     R1,[R0, #+12]
//  787         Trk.SpecialStatus = 71;//特殊状态标志改为：第二次起跑线停车
        LDR.W    R0,??DataTable4_1
        MOVS     R1,#+71
        STRB     R1,[R0, #+1692]
//  788         Give.forceSpeed = 10;//强制给定速度0
        LDR.N    R0,??SpecialStatus_6
        MOVS     R1,#+10
        STRH     R1,[R0, #+2]
//  789       }
//  790     }
//  791   }
//  792   //*****************************************************************************************
//  793   //-----------------------------------------------------------------------------------------
//  794   //--------------------------------------冲出赛道检测---------------------------------------
//  795   //-----------------------------------------------------------------------------------------
//  796   //*****************************************************************************************
//  797   if(Con.EnableCrash == 1 & Con.Run == 2 && Trk.SpecialStatus != 41 && Trk.SpecialStatus != 42 
//  798      && Trk.SpecialStatus != 71
//  799      && Con.TotalTime - Con.Run2time > 2000
//  800      && Con.TotalRoad - Con.Run2road > 20000)//正式起跑阶段2秒内不检测冲出赛道，防止起跑线误检测
??SpecialStatus_44:
        LDR.W    R0,??DataTable4_2
        LDRB     R0,[R0, #+55]
        CMP      R0,#+1
        BNE.W    ??SpecialStatus_45
        MOVS     R0,#+1
        LDR.W    R1,??DataTable4_2
        LDRB     R1,[R1, #+12]
        CMP      R1,#+2
        BNE.W    ??SpecialStatus_45
        LSLS     R0,R0,#+31
        BPL.W    ??SpecialStatus_45
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+1692]
        CMP      R0,#+41
        BEQ.W    ??SpecialStatus_45
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+1692]
        CMP      R0,#+42
        BEQ.W    ??SpecialStatus_45
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+1692]
        CMP      R0,#+71
        BEQ.W    ??SpecialStatus_45
        LDR.W    R0,??DataTable4_2
        LDR      R0,[R0, #+8]
        LDR.W    R1,??DataTable4_2
        LDR      R1,[R1, #+20]
        SUBS     R0,R0,R1
        CMP      R0,#+2000
        BLS.W    ??SpecialStatus_45
        LDR.W    R0,??DataTable4_2
        LDR      R0,[R0, #+4]
        LDR.W    R1,??DataTable4_2
        LDR      R1,[R1, #+36]
        SUBS     R0,R0,R1
        MOVW     R1,#+20001
        CMP      R0,R1
        BCC.W    ??SpecialStatus_45
//  801   { if(Trk.SpecialStatus == 0)
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+1692]
        CMP      R0,#+0
        BNE.N    ??SpecialStatus_46
//  802     { //若只有左对管检测到低电平
//  803       if(Infrared.Infrared1[Infrared.currentInfrared] == 0 && Infrared.Infrared2[Infrared.currentInfrared] == 1)
        LDR.W    R0,??DataTable4_3
        LDRH     R0,[R0, #+400]
        LDR.W    R1,??DataTable4_3
        LDRB     R0,[R0, R1]
        CMP      R0,#+0
        BNE.N    ??SpecialStatus_47
        LDR.W    R0,??DataTable4_3
        LDRH     R0,[R0, #+400]
        LDR.W    R1,??DataTable4_3
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+200]
        CMP      R0,#+1
        BNE.N    ??SpecialStatus_47
//  804       { Trk.SpecialStatus = 51;//有一个对管检测到低电平，冲出赛道待确认
        LDR.W    R0,??DataTable4_1
        MOVS     R1,#+51
        STRB     R1,[R0, #+1692]
//  805         Trk.CrashFirst = 0;//首先左对管检测到低电平
        LDR.W    R0,??DataTable4_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+1780]
//  806         Trk.CrashRoad = Con.TotalRoad;//记录第一个对管检测到低电平的路程
        LDR.W    R0,??DataTable4_1
        LDR.W    R1,??DataTable4_2
        LDR      R1,[R1, #+4]
        STR      R1,[R0, #+1776]
        B.N      ??SpecialStatus_45
//  807       }
//  808       //若只有右对管检测到低电平
//  809       else if(Infrared.Infrared1[Infrared.currentInfrared] == 1 && Infrared.Infrared2[Infrared.currentInfrared] == 0)
??SpecialStatus_47:
        LDR.W    R0,??DataTable4_3
        LDRH     R0,[R0, #+400]
        LDR.W    R1,??DataTable4_3
        LDRB     R0,[R0, R1]
        CMP      R0,#+1
        BNE.N    ??SpecialStatus_45
        LDR.W    R0,??DataTable4_3
        LDRH     R0,[R0, #+400]
        LDR.W    R1,??DataTable4_3
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+200]
        CMP      R0,#+0
        BNE.N    ??SpecialStatus_45
//  810       { Trk.SpecialStatus = 51;//有一个对管检测到低电平，冲出赛道待确认
        LDR.W    R0,??DataTable4_1
        MOVS     R1,#+51
        STRB     R1,[R0, #+1692]
//  811         Trk.CrashFirst = 1;//首先右对管检测到低电平
        LDR.W    R0,??DataTable4_1
        MOVS     R1,#+1
        STRB     R1,[R0, #+1780]
//  812         Trk.CrashRoad = Con.TotalRoad;//记录第一个对管检测到低电平的路程
        LDR.W    R0,??DataTable4_1
        LDR.W    R1,??DataTable4_2
        LDR      R1,[R1, #+4]
        STR      R1,[R0, #+1776]
        B.N      ??SpecialStatus_45
        DATA
??SpecialStatus_6:
        DC32     Give
        DC32     Encoder
        THUMB
//  813       }
//  814     }
//  815     else if(Trk.SpecialStatus == 51)
??SpecialStatus_46:
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+1692]
        CMP      R0,#+51
        BNE.N    ??SpecialStatus_45
//  816     { //若3000个脉冲过去没有检测到另一个对管低电平，则取消全黑
//  817       if(Con.TotalRoad - Trk.CrashRoad >3000){Trk.SpecialStatus = 0;}
        LDR.W    R0,??DataTable4_2
        LDR      R0,[R0, #+4]
        LDR.W    R1,??DataTable4_1
        LDR      R1,[R1, #+1776]
        SUBS     R0,R0,R1
        MOVW     R1,#+3001
        CMP      R0,R1
        BCC.N    ??SpecialStatus_48
        LDR.W    R0,??DataTable4_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+1692]
//  818       //若另一个对管也检测到低电平
//  819       if(Trk.CrashFirst == 0 
//  820       && Infrared.Infrared1[Infrared.currentInfrared] == 1 && Infrared.Infrared2[Infrared.currentInfrared] == 0)
??SpecialStatus_48:
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+1780]
        CMP      R0,#+0
        BNE.N    ??SpecialStatus_49
        LDR.W    R0,??DataTable4_3
        LDRH     R0,[R0, #+400]
        LDR.W    R1,??DataTable4_3
        LDRB     R0,[R0, R1]
        CMP      R0,#+1
        BNE.N    ??SpecialStatus_49
        LDR.N    R0,??DataTable4_3
        LDRH     R0,[R0, #+400]
        LDR.N    R1,??DataTable4_3
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+200]
        CMP      R0,#+0
        BNE.N    ??SpecialStatus_49
//  821       { Trk.SpecialStatus = 52;//确认冲出赛道
        LDR.N    R0,??DataTable4_1
        MOVS     R1,#+52
        STRB     R1,[R0, #+1692]
//  822         Con.Run = 3;//停车
        LDR.N    R0,??DataTable4_2
        MOVS     R1,#+3
        STRB     R1,[R0, #+12]
//  823         Give.forceSpeed = 10;//强制给定速度0
        LDR.W    R0,??DataTable5
        MOVS     R1,#+10
        STRH     R1,[R0, #+2]
        B.N      ??SpecialStatus_45
//  824       }
//  825       else if(Trk.CrashFirst == 1 
//  826       && Infrared.Infrared1[Infrared.currentInfrared] == 0 && Infrared.Infrared2[Infrared.currentInfrared] == 1)
??SpecialStatus_49:
        LDR.N    R0,??DataTable4_1
        LDRB     R0,[R0, #+1780]
        CMP      R0,#+1
        BNE.N    ??SpecialStatus_45
        LDR.N    R0,??DataTable4_3
        LDRH     R0,[R0, #+400]
        LDR.N    R1,??DataTable4_3
        LDRB     R0,[R0, R1]
        CMP      R0,#+0
        BNE.N    ??SpecialStatus_45
        LDR.N    R0,??DataTable4_3
        LDRH     R0,[R0, #+400]
        LDR.N    R1,??DataTable4_3
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+200]
        CMP      R0,#+1
        BNE.N    ??SpecialStatus_45
//  827       { Trk.SpecialStatus = 52;//确认冲出赛道
        LDR.N    R0,??DataTable4_1
        MOVS     R1,#+52
        STRB     R1,[R0, #+1692]
//  828         Con.Run = 3;//停车
        LDR.N    R0,??DataTable4_2
        MOVS     R1,#+3
        STRB     R1,[R0, #+12]
//  829         Give.forceSpeed = 10;//强制给定速度0
        LDR.W    R0,??DataTable5
        MOVS     R1,#+10
        STRH     R1,[R0, #+2]
//  830       }
//  831     }
//  832   }
//  833   //*****************************************************************************************
//  834   //-----------------------------------------------------------------------------------------
//  835   //-------------------------------------按键起跑、停车--------------------------------------
//  836   //-----------------------------------------------------------------------------------------
//  837   //*****************************************************************************************
//  838   if(Con.Run == 0)
??SpecialStatus_45:
        LDR.N    R0,??DataTable4_2
        LDRB     R0,[R0, #+12]
        CMP      R0,#+0
        BNE.N    ??SpecialStatus_50
//  839   { if(Con.Run_Button == 1){Con.Run = 1;}//起跑按键按下进入预起跑阶段
        LDR.N    R0,??DataTable4_2
        LDRB     R0,[R0, #+48]
        CMP      R0,#+1
        BNE.N    ??SpecialStatus_50
        LDR.N    R0,??DataTable4_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+12]
//  840   }
//  841   if(Con.Run == 2)
??SpecialStatus_50:
        LDR.N    R0,??DataTable4_2
        LDRB     R0,[R0, #+12]
        CMP      R0,#+2
        BNE.N    ??SpecialStatus_51
//  842   { if(Con.Run_Button == 3)
        LDR.N    R0,??DataTable4_2
        LDRB     R0,[R0, #+48]
        CMP      R0,#+3
        BNE.N    ??SpecialStatus_51
//  843     { Con.Run = 3;//起跑按键按下进入停车阶段 
        LDR.N    R0,??DataTable4_2
        MOVS     R1,#+3
        STRB     R1,[R0, #+12]
//  844       Trk.SpecialStatus = 81;//特殊状态标志改为：按键停车
        LDR.N    R0,??DataTable4_1
        MOVS     R1,#+81
        STRB     R1,[R0, #+1692]
//  845       Give.forceSpeed = 10;//强制给定速度0
        LDR.W    R0,??DataTable5
        MOVS     R1,#+10
        STRH     R1,[R0, #+2]
//  846     }
//  847   }
//  848   //*****************************************************************************************
//  849   //-----------------------------------------------------------------------------------------
//  850   //----------------------------------------5 秒试跑-----------------------------------------
//  851   //-----------------------------------------------------------------------------------------
//  852   //*****************************************************************************************
//  853   if(Con.EnableTest5S == 1 && Con.Run == 2 && Con.TotalTime - Con.Run2time >= 5000)
??SpecialStatus_51:
        LDR.N    R0,??DataTable4_2
        LDRB     R0,[R0, #+56]
        CMP      R0,#+1
        BNE.N    ??SpecialStatus_52
        LDR.N    R0,??DataTable4_2
        LDRB     R0,[R0, #+12]
        CMP      R0,#+2
        BNE.N    ??SpecialStatus_52
        LDR.N    R0,??DataTable4_2
        LDR      R0,[R0, #+8]
        LDR.N    R1,??DataTable4_2
        LDR      R1,[R1, #+20]
        SUBS     R0,R0,R1
        MOVW     R1,#+5000
        CMP      R0,R1
        BCC.N    ??SpecialStatus_52
//  854   { Con.Run = 3;//进入停止阶段
        LDR.N    R0,??DataTable4_2
        MOVS     R1,#+3
        STRB     R1,[R0, #+12]
//  855     Trk.SpecialStatus = 61;//特殊状态标志改为：试跑时间到停车
        LDR.N    R0,??DataTable4_1
        MOVS     R1,#+61
        STRB     R1,[R0, #+1692]
//  856     Give.forceSpeed = 10;//强制给定速度0
        LDR.W    R0,??DataTable5
        MOVS     R1,#+10
        STRH     R1,[R0, #+2]
//  857   }
//  858   //*****************************************************************************************
//  859   //-----------------------------------------------------------------------------------------
//  860   //--------------------------------------CCD1直道累加---------------------------------------
//  861   //-----------------------------------------------------------------------------------------
//  862   //*****************************************************************************************
//  863   if(Con.Run == 2)
??SpecialStatus_52:
        LDR.N    R0,??DataTable4_2
        LDRB     R0,[R0, #+12]
        CMP      R0,#+2
        BNE.N    ??SpecialStatus_53
//  864   { if(Trk.cen1[Trk.currentCen1] < 1000+CCD_SwitchTHreshold 
//  865        && Trk.cen1[Trk.currentCen1] > 1000-CCD_SwitchTHreshold //当前CCD1中线处于直道判决范围附近 
//  866        )
        LDR.N    R0,??DataTable4_1
        LDRH     R0,[R0, #+810]
        LDR.N    R1,??DataTable4_1
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+410]
        SUBW     R0,R0,#+961
        CMP      R0,#+79
        BCS.N    ??SpecialStatus_54
//  867     { //上一次处于直道中//累加直道路程
//  868       if(Trk.Straight1 == 1){Trk.StraightRoad1 = Trk.StraightRoad1 + Encoder.encoder[Encoder.currentEnc];}
        LDR.N    R0,??DataTable4_1
        LDRB     R0,[R0, #+826]
        CMP      R0,#+1
        BNE.N    ??SpecialStatus_55
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+828]
        LDR.W    R1,??DataTable5_1
        LDRH     R1,[R1, #+400]
        LDR.W    R2,??DataTable5_1
        LDRH     R1,[R2, R1, LSL #+1]
        UXTAH    R0,R0,R1
        LDR.N    R1,??DataTable4_1
        STR      R0,[R1, #+828]
        B.N      ??SpecialStatus_53
//  869       //上一次不处于直道中
//  870       else {Trk.Straight1 = 1;}//置位直道标志
??SpecialStatus_55:
        LDR.N    R0,??DataTable4_1
        MOVS     R1,#+1
        STRB     R1,[R0, #+826]
        B.N      ??SpecialStatus_53
//  871     }
//  872     else {Trk.Straight1 = 0;Trk.StraightRoad1 = 0;}//清0直道标志和直道路程
??SpecialStatus_54:
        LDR.N    R0,??DataTable4_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+826]
        LDR.N    R0,??DataTable4_1
        MOVS     R1,#+0
        STR      R1,[R0, #+828]
//  873   }
//  874   //*****************************************************************************************
//  875   //-----------------------------------------------------------------------------------------
//  876   //--------------------------------------CCD1弯道累加---------------------------------------
//  877   //-----------------------------------------------------------------------------------------
//  878   //*****************************************************************************************
//  879   
//  880   //*****************************************************************************************
//  881   //-----------------------------------------------------------------------------------------
//  882   //--------------------------------------CCD1弯道锁定---------------------------------------
//  883   //-----------------------------------------------------------------------------------------
//  884   //*****************************************************************************************
//  885   if(Con.Run == 2)
??SpecialStatus_53:
        LDR.N    R0,??DataTable4_2
        LDRB     R0,[R0, #+12]
        CMP      R0,#+2
        BNE.N    ??SpecialStatus_56
//  886   { //若当前处于弯道锁定标志并且上一次与当前中心坐标偏离过大
//  887     if(((Trk.cen1[Trk.currentCen1] > Trk.cen1[Trk.lastCen1] && Trk.cen1[Trk.currentCen1] - Trk.cen1[Trk.lastCen1] >20)
//  888        || (Trk.cen1[Trk.currentCen1] < Trk.cen1[Trk.lastCen1] && Trk.cen1[Trk.lastCen1] - Trk.cen1[Trk.currentCen1]>20))
//  889        && Trk.CurveLock1 == 1
//  890        )
        LDR.N    R0,??DataTable4_1
        LDRH     R0,[R0, #+812]
        LDR.N    R1,??DataTable4_1
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+410]
        LDR.N    R1,??DataTable4_1
        LDRH     R1,[R1, #+810]
        LDR.N    R2,??DataTable4_1
        ADDS     R1,R2,R1, LSL #+1
        LDRH     R1,[R1, #+410]
        CMP      R0,R1
        BCS.N    ??SpecialStatus_57
        LDR.N    R0,??DataTable4_1
        LDRH     R0,[R0, #+810]
        LDR.N    R1,??DataTable4_1
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+410]
        LDR.N    R1,??DataTable4_1
        LDRH     R1,[R1, #+812]
        LDR.N    R2,??DataTable4_1
        ADDS     R1,R2,R1, LSL #+1
        LDRH     R1,[R1, #+410]
        SUBS     R0,R0,R1
        CMP      R0,#+21
        BGE.N    ??SpecialStatus_58
??SpecialStatus_57:
        LDR.N    R0,??DataTable4_1
        LDRH     R0,[R0, #+810]
        LDR.N    R1,??DataTable4_1
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+410]
        LDR.N    R1,??DataTable4_1
        LDRH     R1,[R1, #+812]
        LDR.N    R2,??DataTable4_1
        ADDS     R1,R2,R1, LSL #+1
        LDRH     R1,[R1, #+410]
        CMP      R0,R1
        BCS.N    ??SpecialStatus_59
        LDR.N    R0,??DataTable4_1
        LDRH     R0,[R0, #+812]
        LDR.N    R1,??DataTable4_1
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+410]
        LDR.N    R1,??DataTable4_1
        LDRH     R1,[R1, #+810]
        LDR.N    R2,??DataTable4_1
        ADDS     R1,R2,R1, LSL #+1
        LDRH     R1,[R1, #+410]
        SUBS     R0,R0,R1
        CMP      R0,#+21
        BLT.N    ??SpecialStatus_59
??SpecialStatus_58:
        LDR.N    R0,??DataTable4_1
        LDRB     R0,[R0, #+832]
        CMP      R0,#+1
        BNE.N    ??SpecialStatus_59
//  891     { Trk.cen1[Trk.currentCen1] = Trk.cen1[Trk.lastCen1];}//保持上一次打角
        LDR.N    R0,??DataTable4_1
        LDRH     R0,[R0, #+810]
        LDR.N    R1,??DataTable4_1
        ADDS     R0,R1,R0, LSL #+1
        LDR.N    R1,??DataTable4_1
        LDRH     R1,[R1, #+812]
        LDR.N    R2,??DataTable4_1
        ADDS     R1,R2,R1, LSL #+1
        LDRH     R1,[R1, #+410]
        STRH     R1,[R0, #+410]
//  892     if(Trk.cen1[Trk.currentCen1] > 1000+51 || Trk.cen1[Trk.currentCen1] < 1000-51)//当前CCD1中线偏离过多（超过50cm半径）
??SpecialStatus_59:
        LDR.N    R0,??DataTable4_1
        LDRH     R0,[R0, #+810]
        LDR.N    R1,??DataTable4_1
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+410]
        SUBW     R0,R0,#+949
        CMP      R0,#+103
        BCC.N    ??SpecialStatus_60
//  893     { Trk.CurveLock1 = 1;//置1弯道锁定标志
        LDR.N    R0,??DataTable4_1
        MOVS     R1,#+1
        STRB     R1,[R0, #+832]
        B.N      ??SpecialStatus_56
//  894     }
//  895     else{Trk.CurveLock1 = 0;}//清0弯道锁定标志
??SpecialStatus_60:
        LDR.N    R0,??DataTable4_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+832]
//  896   }
//  897   //*****************************************************************************************
//  898   //-----------------------------------------------------------------------------------------
//  899   //----------------------------------------起跑时序-----------------------------------------
//  900   //-----------------------------------------------------------------------------------------
//  901   //*****************************************************************************************
//  902   if(Con.Run == 1)
??SpecialStatus_56:
        LDR.N    R0,??DataTable4_2
        LDRB     R0,[R0, #+12]
        CMP      R0,#+1
        BNE.N    ??SpecialStatus_61
//  903   { //记录进入预起跑的时间和路程
//  904     if(Con.Run1time == 0){Con.Run1time = Con.TotalTime;Con.Run1road = Con.TotalRoad;}
        LDR.N    R0,??DataTable4_2
        LDR      R0,[R0, #+16]
        CMP      R0,#+0
        BNE.N    ??SpecialStatus_62
        LDR.N    R0,??DataTable4_2
        LDR.N    R1,??DataTable4_2
        LDR      R1,[R1, #+8]
        STR      R1,[R0, #+16]
        LDR.N    R0,??DataTable4_2
        LDR.N    R1,??DataTable4_2
        LDR      R1,[R1, #+4]
        STR      R1,[R0, #+32]
//  905     if(Con.TotalTime - Con.Run1time >= 2000){Con.Run = 2;}//预起跑阶段经过2秒进入正式起跑
??SpecialStatus_62:
        LDR.N    R0,??DataTable4_2
        LDR      R0,[R0, #+8]
        LDR.N    R1,??DataTable4_2
        LDR      R1,[R1, #+16]
        SUBS     R0,R0,R1
        CMP      R0,#+2000
        BCC.N    ??SpecialStatus_61
        LDR.N    R0,??DataTable4_2
        MOVS     R1,#+2
        STRB     R1,[R0, #+12]
//  906   }
//  907   if(Con.Run == 2)
??SpecialStatus_61:
        LDR.N    R0,??DataTable4_2
        LDRB     R0,[R0, #+12]
        CMP      R0,#+2
        BNE.N    ??SpecialStatus_63
//  908   { //记录进入正式起跑的时间和路程
//  909     if(Con.Run2time == 0){Con.Run2time = Con.TotalTime;Con.Run2road = Con.TotalRoad;} 
        LDR.N    R0,??DataTable4_2
        LDR      R0,[R0, #+20]
        CMP      R0,#+0
        BNE.N    ??SpecialStatus_63
        LDR.N    R0,??DataTable4_2
        LDR.N    R1,??DataTable4_2
        LDR      R1,[R1, #+8]
        STR      R1,[R0, #+20]
        LDR.N    R0,??DataTable4_2
        LDR.N    R1,??DataTable4_2
        LDR      R1,[R1, #+4]
        STR      R1,[R0, #+36]
//  910   }
//  911   if(Con.Run == 3)
??SpecialStatus_63:
        LDR.N    R0,??DataTable4_2
        LDRB     R0,[R0, #+12]
        CMP      R0,#+3
        BNE.N    ??SpecialStatus_64
//  912   { //记录进入停止状态的时间和路程
//  913     if(Con.Run3time == 0){Con.Run3time = Con.TotalTime;Con.Run3road = Con.TotalRoad;} 
        LDR.N    R0,??DataTable4_2
        LDR      R0,[R0, #+24]
        CMP      R0,#+0
        BNE.N    ??SpecialStatus_65
        LDR.N    R0,??DataTable4_2
        LDR.N    R1,??DataTable4_2
        LDR      R1,[R1, #+8]
        STR      R1,[R0, #+24]
        LDR.N    R0,??DataTable4_2
        LDR.N    R1,??DataTable4_2
        LDR      R1,[R1, #+4]
        STR      R1,[R0, #+40]
//  914     if(Con.TotalTime - Con.Run3time >= 1000){Con.Run = 4;}//停止阶段经过2秒进入停止后2秒
??SpecialStatus_65:
        LDR.N    R0,??DataTable4_2
        LDR      R0,[R0, #+8]
        LDR.N    R1,??DataTable4_2
        LDR      R1,[R1, #+24]
        SUBS     R0,R0,R1
        CMP      R0,#+1000
        BCC.N    ??SpecialStatus_64
        LDR.N    R0,??DataTable4_2
        MOVS     R1,#+4
        STRB     R1,[R0, #+12]
//  915   }
//  916   if(Con.Run == 4)
??SpecialStatus_64:
        LDR.N    R0,??DataTable4_2
        LDRB     R0,[R0, #+12]
        CMP      R0,#+4
        BNE.N    ??SpecialStatus_66
//  917   { //记录进入停止后2秒的时间和路程
//  918     if(Con.Run4time == 0){Con.Run4time = Con.TotalTime;Con.Run4road = Con.TotalRoad;} 
        LDR.N    R0,??DataTable4_2
        LDR      R0,[R0, #+28]
        CMP      R0,#+0
        BNE.N    ??SpecialStatus_66
        LDR.N    R0,??DataTable4_2
        LDR.N    R1,??DataTable4_2
        LDR      R1,[R1, #+8]
        STR      R1,[R0, #+28]
        LDR.N    R0,??DataTable4_2
        LDR.N    R1,??DataTable4_2
        LDR      R1,[R1, #+4]
        STR      R1,[R0, #+44]
//  919   }
//  920   
//  921 }
??SpecialStatus_66:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     Gyroscope

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     Trk

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     Con

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     Infrared
//  922 
//  923 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  924 void DirSpeedGive(void)//计算方向和给定速度
//  925 {
DirSpeedGive:
        PUSH     {R2-R4,LR}
//  926   //*****************************************************************************************
//  927   //-----------------------------------------------------------------------------------------
//  928   //--------------------------选择CCD1或CCD2作为方向和速度决策来源---------------------------
//  929   //-----------------------------------------------------------------------------------------
//  930   //*****************************************************************************************  
//  931   //CCD1中心坐标偏离过大
//  932   if(Trk.cen1[Trk.currentCen1] > 1000 + CCD_SwitchTHreshold || Trk.cen1[Trk.currentCen1] < 1000 - CCD_SwitchTHreshold
//  933      //|| (Trk.left2[Trk.currentLeft2]==255 
//  934      //    && Trk.right2[Trk.currentRight2]==255 && Trk.AllDark2 == 1)//CCD2丢双边且处于全黑
//  935      || (Trk.Width2 <= 0.75*CCD2TrkWidth //当前CCD2赛道宽度小于正常直道宽度的0.75倍，上坡不稳定时不使用CCD2
//  936          && Trk.SpecialStatus!= 31 && Trk.SpecialStatus!= 32)//路障时可以使用
//  937      || Trk.StraightRoad1 < 10000 //CCD1直道累加路程小于某一值（防止十字CCD2误判）
//  938      || (Encoder.encoder[Encoder.currentEnc]*(5/Con.SpeedContralPeriod) < 140 //当前速度低于某一值且CCD2中线偏离过大
//  939          &&(Trk.cen2[Trk.currentCen2] > 1000+40 || Trk.cen2[Trk.currentCen2] < 1000-40) )//防止低速时因CCD2打角过大偏离
//  940      )
        LDR.W    R0,??DataTable6
        LDRH     R0,[R0, #+810]
        LDR.W    R1,??DataTable6
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+410]
        SUBS     R0,R0,#+960
        CMP      R0,#+81
        BCS.N    ??DirSpeedGive_0
        LDR.W    R0,??DataTable6
        LDRB     R0,[R0, #+1646]
        CMP      R0,#+52
        BCS.N    ??DirSpeedGive_1
        LDR.W    R0,??DataTable6
        LDRB     R0,[R0, #+1692]
        CMP      R0,#+31
        BEQ.N    ??DirSpeedGive_1
        LDR.W    R0,??DataTable6
        LDRB     R0,[R0, #+1692]
        CMP      R0,#+32
        BNE.N    ??DirSpeedGive_0
??DirSpeedGive_1:
        LDR.W    R0,??DataTable6
        LDR      R0,[R0, #+828]
        MOVW     R1,#+10000
        CMP      R0,R1
        BCC.N    ??DirSpeedGive_0
        LDR.W    R0,??DataTable5_1
        LDRH     R0,[R0, #+400]
        LDR.W    R1,??DataTable5_1
        LDRH     R0,[R1, R0, LSL #+1]
        MOVS     R1,#+5
        LDR.W    R2,??DataTable6_1
        LDRB     R2,[R2, #+1]
        SDIV     R1,R1,R2
        MULS     R0,R1,R0
        CMP      R0,#+140
        BGE.N    ??DirSpeedGive_2
        LDR.W    R0,??DataTable6
        LDRH     R0,[R0, #+1642]
        LDR.W    R1,??DataTable6
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+1242]
        SUBS     R0,R0,#+960
        CMP      R0,#+81
        BCC.N    ??DirSpeedGive_2
//  941   { Give.CCDSource = 0;}//使用CCD1
??DirSpeedGive_0:
        LDR.W    R0,??DataTable5
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        B.N      ??DirSpeedGive_3
//  942   else {Give.CCDSource = 1;}//使用CCD2
??DirSpeedGive_2:
        LDR.W    R0,??DataTable5
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  943   Give.CCDSource = 0;
??DirSpeedGive_3:
        LDR.W    R0,??DataTable5
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  944   //*****************************************************************************************
//  945   //-----------------------------------------------------------------------------------------
//  946   //----------------------------------------使用CCD1-----------------------------------------
//  947   //-----------------------------------------------------------------------------------------
//  948   //*****************************************************************************************
//  949   if(Give.CCDSource == 0)//若使用CCD1
        LDR.W    R0,??DataTable5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.W    ??DirSpeedGive_4
//  950   {
//  951     volatile uint16 tempCenRate1;//临时存储变化率
//  952     volatile uint16 lastDCen1;//临时存储历史值的下标
//  953     volatile uint16 tempSerCen1,tempMotorCen1;//临时存储中心坐标
//  954     //计算微分周期历史值的下标
//  955     if(Trk.currentCen1 >= (Give.DPeriod/Con.MainContralPeriod)){lastDCen1 = Trk.currentCen1 - (Give.DPeriod/Con.MainContralPeriod);}
        LDR.W    R0,??DataTable5
        LDRH     R0,[R0, #+12]
        LDR.W    R1,??DataTable6_1
        LDRB     R1,[R1, #+3]
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable6
        LDRH     R1,[R1, #+810]
        CMP      R1,R0
        BLT.N    ??DirSpeedGive_5
        LDR.W    R0,??DataTable6
        LDRH     R0,[R0, #+810]
        LDR.W    R1,??DataTable5
        LDRH     R1,[R1, #+12]
        LDR.W    R2,??DataTable6_1
        LDRB     R2,[R2, #+3]
        SDIV     R1,R1,R2
        SUBS     R0,R0,R1
        STRH     R0,[SP, #+0]
        B.N      ??DirSpeedGive_6
//  956     else {lastDCen1 = maxRAMSaveNum - (Give.DPeriod/Con.MainContralPeriod) + Trk.currentCen1;} 
??DirSpeedGive_5:
        LDR.W    R0,??DataTable5
        LDRH     R0,[R0, #+12]
        LDR.W    R1,??DataTable6_1
        LDRB     R1,[R1, #+3]
        SDIV     R0,R0,R1
        RSBS     R0,R0,#+200
        LDR.W    R1,??DataTable6
        LDRH     R1,[R1, #+810]
        ADDS     R0,R1,R0
        STRH     R0,[SP, #+0]
//  957     //计算最终中心坐标变化率，1000为变化率0，小于1000向左变化，大于1000向右变化
//  958     tempCenRate1 = 1000 + Trk.cen1[Trk.currentCen1] - Trk.cen1[lastDCen1];
??DirSpeedGive_6:
        LDR.W    R0,??DataTable6
        LDRH     R0,[R0, #+810]
        LDR.W    R1,??DataTable6
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+410]
        ADDS     R0,R0,#+1000
        LDRH     R1,[SP, #+0]
        LDR.W    R2,??DataTable6
        ADDS     R1,R2,R1, LSL #+1
        LDRH     R1,[R1, #+410]
        SUBS     R0,R0,R1
        STRH     R0,[SP, #+4]
//  959     Give.CenRate1 = tempCenRate1;
        LDR.W    R0,??DataTable5
        LDRH     R1,[SP, #+4]
        STRH     R1,[R0, #+14]
//  960     //计算微分之后的舵机中心坐标
//  961     tempSerCen1 = Trk.cen1[Trk.currentCen1] + (uint16)(Give.D_server*tempCenRate1) - (uint16)(Give.D_server*1000);
        LDR.W    R0,??DataTable6
        LDRH     R0,[R0, #+810]
        LDR.W    R1,??DataTable6
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R4,[R0, #+410]
        LDRH     R0,[SP, #+4]
        BL       __aeabi_ui2f
        LDR.W    R1,??DataTable5
        LDR      R1,[R1, #+20]
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        ADDS     R4,R0,R4
        LDR.W    R0,??DataTable5
        LDR      R1,[R0, #+20]
        LDR.W    R0,??DataTable6_2  ;; 0x447a0000
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        SUBS     R0,R4,R0
        STRH     R0,[SP, #+2]
//  962     if(tempSerCen1 > 1200){tempSerCen1 = 1200;}else if(tempSerCen1 < 800){tempSerCen1 = 800;}//防止越界
        LDRH     R0,[SP, #+2]
        CMP      R0,#+1200
        BLE.N    ??DirSpeedGive_7
        MOV      R0,#+1200
        STRH     R0,[SP, #+2]
        B.N      ??DirSpeedGive_8
??DirSpeedGive_7:
        LDRH     R0,[SP, #+2]
        CMP      R0,#+800
        BGE.N    ??DirSpeedGive_8
        MOV      R0,#+800
        STRH     R0,[SP, #+2]
//  963     if(Trk.cen1[Trk.currentCen1] <= 1000 && tempSerCen1 >1000){tempSerCen1 = 1000;}//防止微分之后与之前中线方向相反
??DirSpeedGive_8:
        LDR.W    R0,??DataTable6
        LDRH     R0,[R0, #+810]
        LDR.W    R1,??DataTable6
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+410]
        CMP      R0,#+1000
        BGT.N    ??DirSpeedGive_9
        LDRH     R0,[SP, #+2]
        CMP      R0,#+1000
        BLE.N    ??DirSpeedGive_9
        MOV      R0,#+1000
        STRH     R0,[SP, #+2]
//  964     if(Trk.cen1[Trk.currentCen1] >= 1000 && tempSerCen1 <1000){tempSerCen1 = 1000;}//防止微分之后与之前中线方向相反
??DirSpeedGive_9:
        LDR.W    R0,??DataTable6
        LDRH     R0,[R0, #+810]
        LDR.W    R1,??DataTable6
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+410]
        CMP      R0,#+1000
        BLT.N    ??DirSpeedGive_10
        LDRH     R0,[SP, #+2]
        CMP      R0,#+1000
        BGE.N    ??DirSpeedGive_10
        MOV      R0,#+1000
        STRH     R0,[SP, #+2]
//  965     //存储微分之后的舵机中心坐标
//  966     Give.serverDCen = tempSerCen1;
??DirSpeedGive_10:
        LDR.W    R0,??DataTable5
        LDRH     R1,[SP, #+2]
        STRH     R1,[R0, #+24]
//  967     //计算微分之后的电机中心坐标
//  968     tempMotorCen1 = Trk.cen1[Trk.currentCen1] + (uint16)(Give.D_motor*tempCenRate1) - (uint16)(Give.D_motor*1000);
        LDR.W    R0,??DataTable6
        LDRH     R0,[R0, #+810]
        LDR.W    R1,??DataTable6
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R4,[R0, #+410]
        LDRH     R0,[SP, #+4]
        BL       __aeabi_ui2f
        LDR.W    R1,??DataTable5
        LDR      R1,[R1, #+28]
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        ADDS     R4,R0,R4
        LDR.W    R0,??DataTable5
        LDR      R1,[R0, #+28]
        LDR.W    R0,??DataTable6_2  ;; 0x447a0000
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        SUBS     R0,R4,R0
        STRH     R0,[SP, #+0]
//  969     if(tempMotorCen1 > 1200){tempMotorCen1 = 1200;}else if(tempMotorCen1 < 800){tempMotorCen1 = 800;}//防止越界
        LDRH     R0,[SP, #+0]
        CMP      R0,#+1200
        BLE.N    ??DirSpeedGive_11
        MOV      R0,#+1200
        STRH     R0,[SP, #+0]
        B.N      ??DirSpeedGive_12
??DirSpeedGive_11:
        LDRH     R0,[SP, #+0]
        CMP      R0,#+800
        BGE.N    ??DirSpeedGive_12
        MOV      R0,#+800
        STRH     R0,[SP, #+0]
//  970     if(Trk.cen1[Trk.currentCen1] <= 1000 && tempMotorCen1 >1000){tempMotorCen1 = 1000;}//防止微分之后与之前中线方向相反
??DirSpeedGive_12:
        LDR.W    R0,??DataTable6
        LDRH     R0,[R0, #+810]
        LDR.W    R1,??DataTable6
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+410]
        CMP      R0,#+1000
        BGT.N    ??DirSpeedGive_13
        LDRH     R0,[SP, #+0]
        CMP      R0,#+1000
        BLE.N    ??DirSpeedGive_13
        MOV      R0,#+1000
        STRH     R0,[SP, #+0]
//  971     if(Trk.cen1[Trk.currentCen1] >= 1000 && tempMotorCen1 <1000){tempMotorCen1 = 1000;}//防止微分之后与之前中线方向相反
??DirSpeedGive_13:
        LDR.W    R0,??DataTable6
        LDRH     R0,[R0, #+810]
        LDR.W    R1,??DataTable6
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+410]
        CMP      R0,#+1000
        BLT.N    ??DirSpeedGive_14
        LDRH     R0,[SP, #+0]
        CMP      R0,#+1000
        BGE.N    ??DirSpeedGive_14
        MOV      R0,#+1000
        STRH     R0,[SP, #+0]
//  972     //存储微分之后的电机中心坐标
//  973     Give.motorDCen = tempSerCen1;
??DirSpeedGive_14:
        LDR.W    R0,??DataTable5
        LDRH     R1,[SP, #+2]
        STRH     R1,[R0, #+32]
//  974     
//  975     //临时存储舵机原始给定PWM,微分给定PWM
//  976     volatile uint16 temp_ServerOrgPWM1,temp_ServerDPWM1;
//  977     //临时存储原始给定速度、微分给定速度
//  978     volatile uint16 temp_MotorOrgSpeed1,temp_MotorDSpeed1;
//  979     //查表得出原始舵机给定PWM和原始电机给定速度和弯道半径
//  980     if(Trk.cen1[Trk.currentCen1] >= 1000)
        LDR.W    R0,??DataTable6
        LDRH     R0,[R0, #+810]
        LDR.W    R1,??DataTable6
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+410]
        CMP      R0,#+1000
        BLT.N    ??DirSpeedGive_15
//  981     {temp_ServerOrgPWM1 = GR_ServerPWM1[Trk.cen1[Trk.currentCen1]-1000] + 100;
        LDR.W    R0,??DataTable6
        LDRH     R0,[R0, #+810]
        LDR.W    R1,??DataTable6
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+410]
        LDR.W    R1,??DataTable6_3
        ADDS     R0,R0,R1
        SUBS     R0,R0,#+1000
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+100
        STRH     R0,[SP, #+0]
//  982      temp_MotorOrgSpeed1 = GR_SpeedGive1[Trk.cen1[Trk.currentCen1]-1000];
        LDR.W    R0,??DataTable6
        LDRH     R0,[R0, #+810]
        LDR.W    R1,??DataTable6
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+410]
        LDR.W    R1,??DataTable6_4
        ADDS     R0,R1,R0, LSL #+2
        SUBS     R0,R0,#+4000
        LDR      R0,[R0, #+0]
        STRH     R0,[SP, #+2]
        B.N      ??DirSpeedGive_16
//  983     }
//  984     else 
//  985     {temp_ServerOrgPWM1 = 100 - GR_ServerPWM1[1000-Trk.cen1[Trk.currentCen1]];
??DirSpeedGive_15:
        LDR.W    R0,??DataTable6
        LDRH     R0,[R0, #+810]
        LDR.W    R1,??DataTable6
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+410]
        RSBS     R0,R0,#+0
        LDR.W    R1,??DataTable6_3
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+1000]
        RSBS     R0,R0,#+100
        STRH     R0,[SP, #+0]
//  986      temp_MotorOrgSpeed1 = GR_SpeedGive1[1000-Trk.cen1[Trk.currentCen1]];
        LDR.W    R0,??DataTable6
        LDRH     R0,[R0, #+810]
        LDR.W    R1,??DataTable6
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+410]
        RSBS     R0,R0,#+0
        LDR.W    R1,??DataTable6_4
        ADDS     R0,R1,R0, LSL #+2
        LDR      R0,[R0, #+4000]
        STRH     R0,[SP, #+2]
//  987     }
//  988     Give.serverOrgPWM = temp_ServerOrgPWM1;
??DirSpeedGive_16:
        LDR.W    R0,??DataTable5
        LDRH     R1,[SP, #+0]
        STRB     R1,[R0, #+26]
//  989     Give.motorOrgSpeed = (uint16)(temp_MotorOrgSpeed1*Give.SpeedCoef);//乘以速度给定系数
        LDRH     R0,[SP, #+2]
        BL       __aeabi_ui2f
        LDR.W    R1,??DataTable5
        LDR      R1,[R1, #+40]
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable5
        STRH     R0,[R1, #+34]
//  990     Give.lastmotorDSpeed = Give.motorDSpeed;//计算微分给定速度之前先存储上一次的微分给定速度
        LDR.W    R0,??DataTable5
        LDR.W    R1,??DataTable5
        LDRH     R1,[R1, #+36]
        STRH     R1,[R0, #+38]
//  991     //查表得出微分舵机给定PWM和微分电机给定速度
//  992     if(Give.serverDCen >= 1000)
        LDR.W    R0,??DataTable5
        LDRH     R0,[R0, #+24]
        CMP      R0,#+1000
        BLT.N    ??DirSpeedGive_17
//  993     {temp_ServerDPWM1 = GR_ServerPWM1[Give.serverDCen-1000] + 100;
        LDR.W    R0,??DataTable5
        LDRH     R0,[R0, #+24]
        LDR.W    R1,??DataTable6_3
        ADDS     R0,R0,R1
        SUBS     R0,R0,#+1000
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+100
        STRH     R0,[SP, #+0]
//  994      temp_MotorDSpeed1 = GR_SpeedGive1[Give.motorDCen-1000];
        LDR.W    R0,??DataTable5
        LDRH     R0,[R0, #+32]
        LDR.W    R1,??DataTable6_4
        ADDS     R0,R1,R0, LSL #+2
        SUBS     R0,R0,#+4000
        LDR      R0,[R0, #+0]
        STRH     R0,[SP, #+2]
        B.N      ??DirSpeedGive_18
//  995     }
//  996     else 
//  997     {temp_ServerDPWM1 = 100 - GR_ServerPWM1[1000-Give.serverDCen];
??DirSpeedGive_17:
        LDR.W    R0,??DataTable5
        LDRH     R0,[R0, #+24]
        RSBS     R0,R0,#+0
        LDR.W    R1,??DataTable6_3
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+1000]
        RSBS     R0,R0,#+100
        STRH     R0,[SP, #+0]
//  998      temp_MotorDSpeed1 = GR_SpeedGive1[1000-Give.motorDCen];
        LDR.W    R0,??DataTable5
        LDRH     R0,[R0, #+32]
        RSBS     R0,R0,#+0
        LDR.W    R1,??DataTable6_4
        ADDS     R0,R1,R0, LSL #+2
        LDR      R0,[R0, #+4000]
        STRH     R0,[SP, #+2]
//  999     }
// 1000     Give.serverDPWM = temp_ServerDPWM1;
??DirSpeedGive_18:
        LDR.W    R0,??DataTable5
        LDRH     R1,[SP, #+0]
        STRB     R1,[R0, #+27]
// 1001     Give.motorDSpeed = (uint16)(temp_MotorDSpeed1*Give.SpeedCoef);//乘以速度给定系数
        LDRH     R0,[SP, #+2]
        BL       __aeabi_ui2f
        LDR.W    R1,??DataTable5
        LDR      R1,[R1, #+40]
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable5
        STRH     R0,[R1, #+36]
        B.N      ??DirSpeedGive_19
// 1002   }
// 1003   //*****************************************************************************************
// 1004   //-----------------------------------------------------------------------------------------
// 1005   //----------------------------------------使用CCD2-----------------------------------------
// 1006   //-----------------------------------------------------------------------------------------
// 1007   //*****************************************************************************************
// 1008   else//若使用CCD2
// 1009   {
// 1010     volatile uint16 tempCenRate2;//临时存储变化率
// 1011     volatile uint16 lastDcen2;//临时存储历史值的下标
// 1012     volatile uint16 tempSerCen2,tempMotorcen2;//临时存储中心坐标
// 1013     //计算微分周期历史值的下标
// 1014     if(Trk.currentCen2 >= (Give.DPeriod/Con.MainContralPeriod)){lastDcen2 = Trk.currentCen2 - (Give.DPeriod/Con.MainContralPeriod);}
??DirSpeedGive_4:
        LDR.W    R0,??DataTable5
        LDRH     R0,[R0, #+12]
        LDR.W    R1,??DataTable6_1
        LDRB     R1,[R1, #+3]
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable6
        LDRH     R1,[R1, #+1642]
        CMP      R1,R0
        BLT.N    ??DirSpeedGive_20
        LDR.W    R0,??DataTable6
        LDRH     R0,[R0, #+1642]
        LDR.W    R1,??DataTable5
        LDRH     R1,[R1, #+12]
        LDR.W    R2,??DataTable6_1
        LDRB     R2,[R2, #+3]
        SDIV     R1,R1,R2
        SUBS     R0,R0,R1
        STRH     R0,[SP, #+0]
        B.N      ??DirSpeedGive_21
// 1015     else {lastDcen2 = maxRAMSaveNum - (Give.DPeriod/Con.MainContralPeriod) + Trk.currentCen2;} 
??DirSpeedGive_20:
        LDR.W    R0,??DataTable5
        LDRH     R0,[R0, #+12]
        LDR.W    R1,??DataTable6_1
        LDRB     R1,[R1, #+3]
        SDIV     R0,R0,R1
        RSBS     R0,R0,#+200
        LDR.W    R1,??DataTable6
        LDRH     R1,[R1, #+1642]
        ADDS     R0,R1,R0
        STRH     R0,[SP, #+0]
// 1016     //计算最终中心坐标变化率，1000为变化率0，小于1000向左变化，大于1000向右变化
// 1017     tempCenRate2 = 1000 + Trk.cen2[Trk.currentCen2] - Trk.cen2[lastDcen2];
??DirSpeedGive_21:
        LDR.W    R0,??DataTable6
        LDRH     R0,[R0, #+1642]
        LDR.W    R1,??DataTable6
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+1242]
        ADDS     R0,R0,#+1000
        LDRH     R1,[SP, #+0]
        LDR.W    R2,??DataTable6
        ADDS     R1,R2,R1, LSL #+1
        LDRH     R1,[R1, #+1242]
        SUBS     R0,R0,R1
        STRH     R0,[SP, #+2]
// 1018     Give.CenRate2 = tempCenRate2;
        LDR.W    R0,??DataTable5
        LDRH     R1,[SP, #+2]
        STRH     R1,[R0, #+16]
// 1019     //计算微分之后的舵机中心坐标
// 1020     tempSerCen2 = Trk.cen2[Trk.currentCen2] + (uint16)(Give.D_server*tempCenRate2) - (uint16)(Give.D_server*1000);
        LDR.W    R0,??DataTable6
        LDRH     R0,[R0, #+1642]
        LDR.W    R1,??DataTable6
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R4,[R0, #+1242]
        LDRH     R0,[SP, #+2]
        BL       __aeabi_ui2f
        LDR.N    R1,??DataTable5
        LDR      R1,[R1, #+20]
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        ADDS     R4,R0,R4
        LDR.N    R0,??DataTable5
        LDR      R1,[R0, #+20]
        LDR.W    R0,??DataTable6_2  ;; 0x447a0000
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        SUBS     R0,R4,R0
        STRH     R0,[SP, #+4]
// 1021     if(tempSerCen2 > 1200){tempSerCen2 = 1200;}else if(tempSerCen2 < 800){tempSerCen2 = 800;}//防止越界
        LDRH     R0,[SP, #+4]
        CMP      R0,#+1200
        BLE.N    ??DirSpeedGive_22
        MOV      R0,#+1200
        STRH     R0,[SP, #+4]
        B.N      ??DirSpeedGive_23
??DirSpeedGive_22:
        LDRH     R0,[SP, #+4]
        CMP      R0,#+800
        BGE.N    ??DirSpeedGive_23
        MOV      R0,#+800
        STRH     R0,[SP, #+4]
// 1022     if(Trk.cen2[Trk.currentCen2] <= 1000 && tempSerCen2 >1000){tempSerCen2 = 1000;}//防止微分之后与之前中线方向相反
??DirSpeedGive_23:
        LDR.W    R0,??DataTable6
        LDRH     R0,[R0, #+1642]
        LDR.W    R1,??DataTable6
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+1242]
        CMP      R0,#+1000
        BGT.N    ??DirSpeedGive_24
        LDRH     R0,[SP, #+4]
        CMP      R0,#+1000
        BLE.N    ??DirSpeedGive_24
        MOV      R0,#+1000
        STRH     R0,[SP, #+4]
// 1023     if(Trk.cen2[Trk.currentCen2] >= 1000 && tempSerCen2 <1000){tempSerCen2 = 1000;}//防止微分之后与之前中线方向相反
??DirSpeedGive_24:
        LDR.W    R0,??DataTable6
        LDRH     R0,[R0, #+1642]
        LDR.W    R1,??DataTable6
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+1242]
        CMP      R0,#+1000
        BLT.N    ??DirSpeedGive_25
        LDRH     R0,[SP, #+4]
        CMP      R0,#+1000
        BGE.N    ??DirSpeedGive_25
        MOV      R0,#+1000
        STRH     R0,[SP, #+4]
// 1024     //存储微分之后的舵机中心坐标
// 1025     Give.serverDCen = tempSerCen2;
??DirSpeedGive_25:
        LDR.N    R0,??DataTable5
        LDRH     R1,[SP, #+4]
        STRH     R1,[R0, #+24]
// 1026     //计算微分之后的电机中心坐标
// 1027     tempMotorcen2 = Trk.cen2[Trk.currentCen2] + (uint16)(Give.D_motor*tempCenRate2) - (uint16)(Give.D_motor*1000);
        LDR.W    R0,??DataTable6
        LDRH     R0,[R0, #+1642]
        LDR.W    R1,??DataTable6
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R4,[R0, #+1242]
        LDRH     R0,[SP, #+2]
        BL       __aeabi_ui2f
        LDR.N    R1,??DataTable5
        LDR      R1,[R1, #+28]
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        ADDS     R4,R0,R4
        LDR.N    R0,??DataTable5
        LDR      R1,[R0, #+28]
        LDR.W    R0,??DataTable6_2  ;; 0x447a0000
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        SUBS     R0,R4,R0
        STRH     R0,[SP, #+0]
// 1028     if(tempMotorcen2 > 1200){tempMotorcen2 = 1200;}else if(tempMotorcen2 < 800){tempMotorcen2 = 800;}//防止越界
        LDRH     R0,[SP, #+0]
        CMP      R0,#+1200
        BLE.N    ??DirSpeedGive_26
        MOV      R0,#+1200
        STRH     R0,[SP, #+0]
        B.N      ??DirSpeedGive_27
??DirSpeedGive_26:
        LDRH     R0,[SP, #+0]
        CMP      R0,#+800
        BGE.N    ??DirSpeedGive_27
        MOV      R0,#+800
        STRH     R0,[SP, #+0]
// 1029     if(Trk.cen2[Trk.currentCen2] <= 1000 && tempMotorcen2 >1000){tempMotorcen2 = 1000;}//防止微分之后与之前中线方向相反
??DirSpeedGive_27:
        LDR.W    R0,??DataTable6
        LDRH     R0,[R0, #+1642]
        LDR.W    R1,??DataTable6
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+1242]
        CMP      R0,#+1000
        BGT.N    ??DirSpeedGive_28
        LDRH     R0,[SP, #+0]
        CMP      R0,#+1000
        BLE.N    ??DirSpeedGive_28
        MOV      R0,#+1000
        STRH     R0,[SP, #+0]
// 1030     if(Trk.cen2[Trk.currentCen2] >= 1000 && tempMotorcen2 <1000){tempMotorcen2 = 1000;}//防止微分之后与之前中线方向相反
??DirSpeedGive_28:
        LDR.W    R0,??DataTable6
        LDRH     R0,[R0, #+1642]
        LDR.W    R1,??DataTable6
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+1242]
        CMP      R0,#+1000
        BLT.N    ??DirSpeedGive_29
        LDRH     R0,[SP, #+0]
        CMP      R0,#+1000
        BGE.N    ??DirSpeedGive_29
        MOV      R0,#+1000
        STRH     R0,[SP, #+0]
// 1031     //存储微分之后的电机中心坐标
// 1032     Give.motorDCen = tempSerCen2;
??DirSpeedGive_29:
        LDR.N    R0,??DataTable5
        LDRH     R1,[SP, #+4]
        STRH     R1,[R0, #+32]
// 1033     
// 1034     //临时存储舵机原始给定PWM,微分给定PWM
// 1035     volatile uint16 temp_ServerOrgPWM2,temp_ServerDPWM2;
// 1036     //临时存储原始给定速度、微分给定速度
// 1037     volatile uint16 temp_MotorOrgSpeed2,temp_MotorDSpeed2;
// 1038     //查表得出原始舵机给定PWM和原始电机给定速度和弯道半径
// 1039     if(Trk.cen2[Trk.currentCen2] >= 1000)
        LDR.W    R0,??DataTable6
        LDRH     R0,[R0, #+1642]
        LDR.W    R1,??DataTable6
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+1242]
        CMP      R0,#+1000
        BLT.N    ??DirSpeedGive_30
// 1040     {temp_ServerOrgPWM2 = GR_ServerPWM2[Trk.cen2[Trk.currentCen2]-1000] + 100;
        LDR.W    R0,??DataTable6
        LDRH     R0,[R0, #+1642]
        LDR.W    R1,??DataTable6
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+1242]
        LDR.W    R1,??DataTable6_5
        ADDS     R0,R0,R1
        SUBS     R0,R0,#+1000
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+100
        STRH     R0,[SP, #+0]
// 1041      temp_MotorOrgSpeed2 = GR_SpeedGive2[Trk.cen2[Trk.currentCen2]-1000];
        LDR.W    R0,??DataTable6
        LDRH     R0,[R0, #+1642]
        LDR.W    R1,??DataTable6
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+1242]
        LDR.W    R1,??DataTable6_6
        ADDS     R0,R1,R0, LSL #+2
        SUBS     R0,R0,#+4000
        LDR      R0,[R0, #+0]
        STRH     R0,[SP, #+2]
        B.N      ??DirSpeedGive_31
// 1042     }
// 1043     else 
// 1044     {temp_ServerOrgPWM2 = 100 - GR_ServerPWM2[1000-Trk.cen2[Trk.currentCen2]];
??DirSpeedGive_30:
        LDR.W    R0,??DataTable6
        LDRH     R0,[R0, #+1642]
        LDR.W    R1,??DataTable6
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+1242]
        RSBS     R0,R0,#+0
        LDR.W    R1,??DataTable6_5
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+1000]
        RSBS     R0,R0,#+100
        STRH     R0,[SP, #+0]
// 1045      temp_MotorOrgSpeed2 = GR_SpeedGive2[1000-Trk.cen2[Trk.currentCen2]];
        LDR.W    R0,??DataTable6
        LDRH     R0,[R0, #+1642]
        LDR.W    R1,??DataTable6
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+1242]
        RSBS     R0,R0,#+0
        LDR.W    R1,??DataTable6_6
        ADDS     R0,R1,R0, LSL #+2
        LDR      R0,[R0, #+4000]
        STRH     R0,[SP, #+2]
// 1046     }
// 1047     Give.serverOrgPWM = temp_ServerOrgPWM2;
??DirSpeedGive_31:
        LDR.N    R0,??DataTable5
        LDRH     R1,[SP, #+0]
        STRB     R1,[R0, #+26]
// 1048     Give.motorOrgSpeed = (uint16)(temp_MotorOrgSpeed2*Give.SpeedCoef);//乘以速度给定系数
        LDRH     R0,[SP, #+2]
        BL       __aeabi_ui2f
        LDR.N    R1,??DataTable5
        LDR      R1,[R1, #+40]
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        LDR.N    R1,??DataTable5
        STRH     R0,[R1, #+34]
// 1049     Give.lastmotorDSpeed = Give.motorDSpeed;//计算微分给定速度之前先存储上一次的微分给定速度
        LDR.N    R0,??DataTable5
        LDR.N    R1,??DataTable5
        LDRH     R1,[R1, #+36]
        STRH     R1,[R0, #+38]
// 1050     //查表得出微分舵机给定PWM和微分电机给定速度
// 1051     if(Give.serverDCen >= 1000)
        LDR.N    R0,??DataTable5
        LDRH     R0,[R0, #+24]
        CMP      R0,#+1000
        BLT.N    ??DirSpeedGive_32
// 1052     {temp_ServerDPWM2 = GR_ServerPWM2[Give.serverDCen-1000] + 100;
        LDR.N    R0,??DataTable5
        LDRH     R0,[R0, #+24]
        LDR.W    R1,??DataTable6_5
        ADDS     R0,R0,R1
        SUBS     R0,R0,#+1000
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+100
        STRH     R0,[SP, #+0]
// 1053      temp_MotorDSpeed2 = GR_SpeedGive2[Give.motorDCen-1000];
        LDR.N    R0,??DataTable5
        LDRH     R0,[R0, #+32]
        LDR.W    R1,??DataTable6_6
        ADDS     R0,R1,R0, LSL #+2
        SUBS     R0,R0,#+4000
        LDR      R0,[R0, #+0]
        STRH     R0,[SP, #+2]
        B.N      ??DirSpeedGive_33
// 1054     }
// 1055     else 
// 1056     {temp_ServerDPWM2 = 100 - GR_ServerPWM2[1000-Give.serverDCen];
??DirSpeedGive_32:
        LDR.N    R0,??DataTable5
        LDRH     R0,[R0, #+24]
        RSBS     R0,R0,#+0
        LDR.W    R1,??DataTable6_5
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+1000]
        RSBS     R0,R0,#+100
        STRH     R0,[SP, #+0]
// 1057      temp_MotorDSpeed2 = GR_SpeedGive2[1000-Give.motorDCen];
        LDR.N    R0,??DataTable5
        LDRH     R0,[R0, #+32]
        RSBS     R0,R0,#+0
        LDR.W    R1,??DataTable6_6
        ADDS     R0,R1,R0, LSL #+2
        LDR      R0,[R0, #+4000]
        STRH     R0,[SP, #+2]
// 1058     }
// 1059     Give.serverDPWM = temp_ServerDPWM2;
??DirSpeedGive_33:
        LDR.N    R0,??DataTable5
        LDRH     R1,[SP, #+0]
        STRB     R1,[R0, #+27]
// 1060     Give.motorDSpeed = (uint16)(temp_MotorDSpeed2*Give.SpeedCoef);//乘以速度给定系数
        LDRH     R0,[SP, #+2]
        BL       __aeabi_ui2f
        LDR.N    R1,??DataTable5
        LDR      R1,[R1, #+40]
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        LDR.N    R1,??DataTable5
        STRH     R0,[R1, #+36]
// 1061   }
// 1062   
// 1063   Give.motorDSpeed = 180;
??DirSpeedGive_19:
        LDR.N    R0,??DataTable5
        MOVS     R1,#+180
        STRH     R1,[R0, #+36]
// 1064   
// 1065   if(Give.forceDir == 1){Give.serverDPWM = Give.SerHerringPWM;}//人字强制打角
        LDR.N    R0,??DataTable5
        LDRB     R0,[R0, #+1]
        CMP      R0,#+1
        BNE.N    ??DirSpeedGive_34
        LDR.N    R0,??DataTable5
        LDR.N    R1,??DataTable5
        LDRB     R1,[R1, #+4]
        STRB     R1,[R0, #+27]
        B.N      ??DirSpeedGive_35
// 1066   else if(Give.forceDir == 2){Give.serverDPWM = Give.ServerTestPWM;}//舵机测试强制打角
??DirSpeedGive_34:
        LDR.N    R0,??DataTable5
        LDRB     R0,[R0, #+1]
        CMP      R0,#+2
        BNE.N    ??DirSpeedGive_35
        LDR.N    R0,??DataTable5
        LDR.N    R1,??DataTable5
        LDRB     R1,[R1, #+5]
        STRB     R1,[R0, #+27]
// 1067   
// 1068   if(Give.forceSpeed == 1){Give.motorDSpeed = Give.MotorHerringSpeed;}//人字给定速度
??DirSpeedGive_35:
        LDR.N    R0,??DataTable5
        LDRH     R0,[R0, #+2]
        CMP      R0,#+1
        BNE.N    ??DirSpeedGive_36
        LDR.N    R0,??DataTable5
        LDR.N    R1,??DataTable5
        LDRH     R1,[R1, #+6]
        STRH     R1,[R0, #+36]
        B.N      ??DirSpeedGive_37
// 1069   else if(Give.forceSpeed == 2){Give.motorDSpeed = Give.MotorRoadBlockSpeed;}//路障给定速度
??DirSpeedGive_36:
        LDR.N    R0,??DataTable5
        LDRH     R0,[R0, #+2]
        CMP      R0,#+2
        BNE.N    ??DirSpeedGive_38
        LDR.N    R0,??DataTable5
        LDR.N    R1,??DataTable5
        LDRH     R1,[R1, #+8]
        STRH     R1,[R0, #+36]
        B.N      ??DirSpeedGive_37
// 1070   else if(Give.forceSpeed == 3){Give.motorDSpeed = Give.MotorRampSpeed;}//坡道给定速度
??DirSpeedGive_38:
        LDR.N    R0,??DataTable5
        LDRH     R0,[R0, #+2]
        CMP      R0,#+3
        BNE.N    ??DirSpeedGive_39
        LDR.N    R0,??DataTable5
        LDR.N    R1,??DataTable5
        LDRH     R1,[R1, #+10]
        STRH     R1,[R0, #+36]
        B.N      ??DirSpeedGive_37
// 1071   else if(Give.forceSpeed == 10 || Con.Run >=3){Give.motorDSpeed = 0;}//停止给定速度
??DirSpeedGive_39:
        LDR.N    R0,??DataTable5
        LDRH     R0,[R0, #+2]
        CMP      R0,#+10
        BEQ.N    ??DirSpeedGive_40
        LDR.W    R0,??DataTable6_1
        LDRB     R0,[R0, #+12]
        CMP      R0,#+3
        BLT.N    ??DirSpeedGive_37
??DirSpeedGive_40:
        LDR.N    R0,??DataTable5
        MOVS     R1,#+0
        STRH     R1,[R0, #+36]
// 1072 }
??DirSpeedGive_37:
        POP      {R0,R1,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     Give

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DC32     Encoder
// 1073 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1074 void SpeedContral(void)//速度控制
// 1075 { //临时存储当前速度
SpeedContral:
        PUSH     {R3-R7,LR}
// 1076   uint16 temp_currentSpeed,temp_motorPWM; 
// 1077   //用于计算的实际速度必须能屏蔽电机控制周期的变化
// 1078   temp_currentSpeed = Encoder.encoder[Encoder.currentEnc]*(5/Con.SpeedContralPeriod);
        LDR.W    R0,??DataTable6_7
        LDRH     R0,[R0, #+400]
        LDR.W    R1,??DataTable6_7
        LDRH     R0,[R1, R0, LSL #+1]
        MOVS     R1,#+5
        LDR.W    R2,??DataTable6_1
        LDRB     R2,[R2, #+1]
        SDIV     R1,R1,R2
        SMULBB   R6,R0,R1
// 1079   //*****************************************************************************************
// 1080   //-----------------------------------------------------------------------------------------
// 1081   //------------------------------------判断反转减速条件-------------------------------------
// 1082   //-----------------------------------------------------------------------------------------
// 1083   //*****************************************************************************************  
// 1084   //若当前给定速度小于上次给定速度 并且 当前实际速度低于当前给定速度
// 1085   if(Give.motorDSpeed < Give.lastmotorDSpeed && temp_currentSpeed < Give.motorDSpeed)
        LDR.W    R0,??DataTable6_8
        LDRH     R0,[R0, #+36]
        LDR.W    R1,??DataTable6_8
        LDRH     R1,[R1, #+38]
        CMP      R0,R1
        BCS.N    ??SpeedContral_0
        LDR.W    R0,??DataTable6_8
        LDRH     R0,[R0, #+36]
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,R0
        BCS.N    ??SpeedContral_0
// 1086   { Give.motorRowback = 1;//电机反转减速标志置1
        LDR.W    R0,??DataTable6_8
        MOVS     R1,#+1
        STRB     R1,[R0, #+47]
// 1087     Give.motorRowbackRoad = Con.TotalRoad;//记录开始减速时的脉冲数
        LDR.W    R0,??DataTable6_8
        LDR.W    R1,??DataTable6_1
        LDR      R1,[R1, #+4]
        STR      R1,[R0, #+48]
// 1088   }
// 1089   //若当前速度低于给定速度并且超过最短减速路程
// 1090   if(temp_currentSpeed >= Give.motorDSpeed && Con.TotalRoad - Give.motorRowbackRoad > 10000)
??SpeedContral_0:
        LDR.W    R0,??DataTable6_8
        LDRH     R0,[R0, #+36]
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,R0
        BCC.N    ??SpeedContral_1
        LDR.W    R0,??DataTable6_1
        LDR      R0,[R0, #+4]
        LDR.W    R1,??DataTable6_8
        LDR      R1,[R1, #+48]
        SUBS     R0,R0,R1
        MOVW     R1,#+10001
        CMP      R0,R1
        BCC.N    ??SpeedContral_1
// 1091   { Give.motorRowback = 0;//电机反转减速标志清0
        LDR.W    R0,??DataTable6_8
        MOVS     R1,#+0
        STRB     R1,[R0, #+47]
// 1092   }
// 1093   //*****************************************************************************************
// 1094   //-----------------------------------------------------------------------------------------
// 1095   //------------------------------------计算电机输出占空比-------------------------------------
// 1096   //-----------------------------------------------------------------------------------------
// 1097   //*****************************************************************************************  
// 1098 
// 1099   //若当前速度小于给定速度，按恒定最大加速度给占空比
// 1100   if(temp_currentSpeed < Give.motorDSpeed)
??SpeedContral_1:
        LDR.W    R0,??DataTable6_8
        LDRH     R0,[R0, #+36]
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,R0
        BCS.N    ??SpeedContral_2
// 1101   { //电机给定正转PWM(等效电机电压)=恒定最大加速度(已转换成相同量纲)+电机反电动势
// 1102     temp_motorPWM = (uint16)(a_max + Con.Ce_ *temp_currentSpeed);
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        MOVS     R0,R6
        BL       __aeabi_ui2f
        LDR.W    R1,??DataTable6_1
        LDR      R1,[R1, #+64]
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable6_9  ;; 0x43af0000
        BL       __aeabi_fadd
        BL       __aeabi_f2iz
// 1103     if(temp_motorPWM > MotorMaxZhengZhuanPWM){temp_motorPWM = MotorMaxZhengZhuanPWM;}//PWM限幅
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOVW     R1,#+991
        CMP      R0,R1
        BLT.N    ??SpeedContral_3
        MOVW     R0,#+990
// 1104     Give.motorPWM = temp_motorPWM;
??SpeedContral_3:
        LDR.W    R1,??DataTable6_8
        STRH     R0,[R1, #+44]
// 1105     Give.motorDir = 1;//电机方向：正转
        LDR.W    R0,??DataTable6_8
        MOVS     R1,#+1
        STRB     R1,[R0, #+46]
        B.N      ??SpeedContral_4
// 1106   }
// 1107   //若当前速度大于给定速度，根据反转减速标志决定是否进行反转减速
// 1108   else if(temp_currentSpeed >= Give.motorDSpeed && Give.motorDSpeed!=0)
??SpeedContral_2:
        LDR.W    R0,??DataTable6_8
        LDRH     R0,[R0, #+36]
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,R0
        BCC.N    ??SpeedContral_5
        LDR.W    R0,??DataTable6_8
        LDRH     R0,[R0, #+36]
        CMP      R0,#+0
        BEQ.N    ??SpeedContral_5
// 1109   { //若反转减速标志为1或者处于坡道
// 1110     if(Give.motorRowback == 1 || Trk.SpecialStatus == 42 
// 1111        && temp_currentSpeed > Give.motorDSpeed)
        LDR.W    R0,??DataTable6_8
        LDRB     R0,[R0, #+47]
        CMP      R0,#+1
        BEQ.N    ??SpeedContral_6
        LDR.W    R0,??DataTable6
        LDRB     R0,[R0, #+1692]
        CMP      R0,#+42
        BNE.N    ??SpeedContral_7
        LDR.W    R0,??DataTable6_8
        LDRH     R0,[R0, #+36]
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R0,R6
        BCS.N    ??SpeedContral_7
// 1112     { //电机给定反转PWM=恒定最大加速度(已转换成相同量纲)-电机反电动势
// 1113       if(a_max - Con.Ce_ *temp_currentSpeed >= 0){temp_motorPWM = (uint16)(a_max - Con.Ce_ *temp_currentSpeed);}
??SpeedContral_6:
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        MOVS     R0,R6
        BL       __aeabi_ui2f
        LDR.W    R1,??DataTable6_1
        LDR      R1,[R1, #+64]
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR.W    R0,??DataTable6_9  ;; 0x43af0000
        BL       __aeabi_fsub
        MOVS     R1,#+0
        BL       __aeabi_cfrcmple
        BHI.N    ??SpeedContral_8
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        MOVS     R0,R6
        BL       __aeabi_ui2f
        LDR.W    R1,??DataTable6_1
        LDR      R1,[R1, #+64]
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR.W    R0,??DataTable6_9  ;; 0x43af0000
        BL       __aeabi_fsub
        BL       __aeabi_f2iz
        B.N      ??SpeedContral_9
// 1114       else {temp_motorPWM = 0;}
??SpeedContral_8:
        MOVS     R0,#+0
// 1115       Give.motorPWM = temp_motorPWM;
??SpeedContral_9:
        LDR.W    R1,??DataTable6_8
        STRH     R0,[R1, #+44]
// 1116       Give.motorDir = 2;
        LDR.W    R0,??DataTable6_8
        MOVS     R1,#+2
        STRB     R1,[R0, #+46]
        B.N      ??SpeedContral_4
// 1117     }
// 1118     else//若反转减速标志为0或者给定速度等于实际速度，按0加速度给定正转占空比
// 1119     { //temp_motorPWM = (uint16)(Ce*temp_currentSpeed);
// 1120       temp_motorPWM = 0;
??SpeedContral_7:
        MOVS     R0,#+0
// 1121       Give.motorPWM = temp_motorPWM;
        LDR.W    R1,??DataTable6_8
        STRH     R0,[R1, #+44]
// 1122       Give.motorDir = 1;
        LDR.W    R0,??DataTable6_8
        MOVS     R1,#+1
        STRB     R1,[R0, #+46]
        B.N      ??SpeedContral_4
// 1123     }
// 1124   }
// 1125   //若当前给定速度为0
// 1126   else if(Give.motorDSpeed == 0)
??SpeedContral_5:
        LDR.W    R0,??DataTable6_8
        LDRH     R0,[R0, #+36]
        CMP      R0,#+0
        BNE.N    ??SpeedContral_4
// 1127   { if(temp_currentSpeed >=15)
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+15
        BLT.N    ??SpeedContral_10
// 1128     {  //电机给定反转PWM=恒定最大加速度(已转换成相同量纲)-电机反电动势
// 1129       if(a_max - Con.Ce_ *temp_currentSpeed >= 0){temp_motorPWM = (uint16)(a_max - Con.Ce_ *temp_currentSpeed);}
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        MOVS     R0,R6
        BL       __aeabi_ui2f
        LDR.N    R1,??DataTable6_1
        LDR      R1,[R1, #+64]
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR.N    R0,??DataTable6_9  ;; 0x43af0000
        BL       __aeabi_fsub
        MOVS     R1,#+0
        BL       __aeabi_cfrcmple
        BHI.N    ??SpeedContral_11
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        MOVS     R0,R6
        BL       __aeabi_ui2f
        LDR.N    R1,??DataTable6_1
        LDR      R1,[R1, #+64]
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR.N    R0,??DataTable6_9  ;; 0x43af0000
        BL       __aeabi_fsub
        BL       __aeabi_f2iz
        B.N      ??SpeedContral_12
// 1130       else {temp_motorPWM = 0;}
??SpeedContral_11:
        MOVS     R0,#+0
// 1131       Give.motorPWM = temp_motorPWM;
??SpeedContral_12:
        LDR.N    R1,??DataTable6_8
        STRH     R0,[R1, #+44]
// 1132       Give.motorDir = 2; 
        LDR.N    R0,??DataTable6_8
        MOVS     R1,#+2
        STRB     R1,[R0, #+46]
        B.N      ??SpeedContral_4
// 1133     }
// 1134     else
// 1135     { Give.motorPWM = 0;
??SpeedContral_10:
        LDR.N    R0,??DataTable6_8
        MOVS     R1,#+0
        STRH     R1,[R0, #+44]
// 1136       Give.motorDir = 1; 
        LDR.N    R0,??DataTable6_8
        MOVS     R1,#+1
        STRB     R1,[R0, #+46]
// 1137     }
// 1138   }
// 1139   //*****************************************************************************************
// 1140   //-----------------------------------------------------------------------------------------
// 1141   //------------------------------------------PI算法-----------------------------------------
// 1142   //-----------------------------------------------------------------------------------------
// 1143   //***************************************************************************************** 
// 1144   float temp_SpeedOffset,tempfloat_motorPWM;//临时记录速度偏差和电机PWM
// 1145   float temp_i_;//临时记录当前积分项I
// 1146   Give.lastSpeedOffset = Give.SpeedOffset;//记录上一次的偏差
??SpeedContral_4:
        LDR.N    R0,??DataTable6_8
        LDR.N    R1,??DataTable6_8
        LDR      R1,[R1, #+56]
        STR      R1,[R0, #+52]
// 1147   temp_SpeedOffset = (float)Give.motorDSpeed - (float)temp_currentSpeed;//计算当前速度偏差
        LDR.N    R0,??DataTable6_8
        LDRH     R0,[R0, #+36]
        BL       __aeabi_ui2f
        MOVS     R4,R0
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        MOVS     R0,R6
        BL       __aeabi_ui2f
        MOVS     R1,R0
        MOVS     R0,R4
        BL       __aeabi_fsub
        MOVS     R7,R0
// 1148   Give.SpeedOffset = temp_SpeedOffset;
        LDR.N    R0,??DataTable6_8
        STR      R7,[R0, #+56]
// 1149   
// 1150   if(temp_SpeedOffset > 0 && (float)temp_currentSpeed < 0.9*(float)Give.motorDSpeed )
        MOVS     R0,R7
        MOVS     R1,#+0
        BL       __aeabi_cfrcmple
        BCS.N    ??SpeedContral_13
        LDR.N    R0,??DataTable6_8
        LDRH     R0,[R0, #+36]
        BL       __aeabi_ui2f
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable6_10  ;; 0xcccccccd
        LDR.N    R3,??DataTable6_11  ;; 0x3feccccc
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R4,R2
        MOVS     R5,R3
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        MOVS     R0,R6
        BL       __aeabi_ui2f
        BL       __aeabi_f2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_cdcmple
        BCS.N    ??SpeedContral_13
// 1151   {
// 1152     temp_i_ = Give._I_ + 0.08*temp_SpeedOffset;//计算当前积分项
        LDR.N    R0,??DataTable6_8
        LDR      R0,[R0, #+60]
        BL       __aeabi_f2d
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R0,R7
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable6_12  ;; 0x47ae147b
        LDR.N    R3,??DataTable6_13  ;; 0x3fb47ae1
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        MOVS     R4,R0
// 1153     if(temp_i_>0 && temp_i_>a_max + Con.Ce_ *temp_currentSpeed){temp_i_ = a_max + Con.Ce_ *temp_currentSpeed;}//积分项限幅
        MOVS     R0,R4
        MOVS     R1,#+0
        BL       __aeabi_cfrcmple
        BCS.N    ??SpeedContral_14
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        MOVS     R0,R6
        BL       __aeabi_ui2f
        LDR.N    R1,??DataTable6_1
        LDR      R1,[R1, #+64]
        BL       __aeabi_fmul
        LDR.N    R1,??DataTable6_9  ;; 0x43af0000
        BL       __aeabi_fadd
        MOVS     R1,R4
        BL       __aeabi_cfcmple
        BCS.N    ??SpeedContral_14
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        MOVS     R0,R6
        BL       __aeabi_ui2f
        LDR.N    R1,??DataTable6_1
        LDR      R1,[R1, #+64]
        BL       __aeabi_fmul
        LDR.N    R1,??DataTable6_9  ;; 0x43af0000
        BL       __aeabi_fadd
        MOVS     R4,R0
        B.N      ??SpeedContral_15
// 1154     else if(temp_i_<0 && (0-temp_i_)>400){temp_i_ = -400;}
??SpeedContral_14:
        MOVS     R0,R4
        MOVS     R1,#+0
        BL       __aeabi_cfcmple
        BCS.N    ??SpeedContral_15
        MOVS     R0,R4
        EORS     R0,R0,#0x80000000
        LDR.N    R1,??DataTable6_14  ;; 0x43c80001
        BL       __aeabi_cfrcmple
        BHI.N    ??SpeedContral_15
        LDR.N    R4,??DataTable6_15  ;; 0xc3c80000
        B.N      ??SpeedContral_15
// 1155   }
// 1156   //若当前速度小于给定速度并且当前速度已经达到给定速度的0.95倍以上，不再增加积分项，防止超调
// 1157   else if(temp_SpeedOffset > 0 && (float)temp_currentSpeed > 0.95*(float)Give.motorDSpeed )
??SpeedContral_13:
        MOVS     R0,R7
        MOVS     R1,#+0
        BL       __aeabi_cfrcmple
        BCS.N    ??SpeedContral_16
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        MOVS     R0,R6
        BL       __aeabi_ui2f
        BL       __aeabi_f2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R4,R2
        MOVS     R5,R3
        LDR.N    R0,??DataTable6_8
        LDRH     R0,[R0, #+36]
        BL       __aeabi_ui2f
        BL       __aeabi_f2d
        MOVS     R2,#+1717986918
        LDR.N    R3,??DataTable6_16  ;; 0x3fee6666
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_cdcmple
        BCS.N    ??SpeedContral_16
// 1158   {temp_i_ =  Give._I_;}//积分项保持不变 
        LDR.N    R0,??DataTable6_8
        LDR      R4,[R0, #+60]
        B.N      ??SpeedContral_15
// 1159   else 
// 1160   { temp_i_ = Give._I_ + 0.09*temp_SpeedOffset;//计算当前积分项
??SpeedContral_16:
        LDR.N    R0,??DataTable6_8
        LDR      R0,[R0, #+60]
        BL       __aeabi_f2d
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R0,R7
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable6_17  ;; 0x70a3d70a
        LDR.N    R3,??DataTable6_18  ;; 0x3fb70a3d
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        MOVS     R4,R0
// 1161     if(temp_i_>0 && temp_i_>a_max + Con.Ce_ *temp_currentSpeed){temp_i_ = a_max + Con.Ce_ *temp_currentSpeed;}//积分项限幅
        MOVS     R0,R4
        MOVS     R1,#+0
        BL       __aeabi_cfrcmple
        BCS.N    ??SpeedContral_17
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        MOVS     R0,R6
        BL       __aeabi_ui2f
        LDR.N    R1,??DataTable6_1
        LDR      R1,[R1, #+64]
        BL       __aeabi_fmul
        LDR.N    R1,??DataTable6_9  ;; 0x43af0000
        BL       __aeabi_fadd
        MOVS     R1,R4
        BL       __aeabi_cfcmple
        BCS.N    ??SpeedContral_17
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        MOVS     R0,R6
        BL       __aeabi_ui2f
        LDR.N    R1,??DataTable6_1
        LDR      R1,[R1, #+64]
        BL       __aeabi_fmul
        LDR.N    R1,??DataTable6_9  ;; 0x43af0000
        BL       __aeabi_fadd
        MOVS     R4,R0
        B.N      ??SpeedContral_15
// 1162     else if(temp_i_<0 && (0-temp_i_)>400){temp_i_ = -400;}
??SpeedContral_17:
        MOVS     R0,R4
        MOVS     R1,#+0
        BL       __aeabi_cfcmple
        BCS.N    ??SpeedContral_15
        MOVS     R0,R4
        EORS     R0,R0,#0x80000000
        LDR.N    R1,??DataTable6_14  ;; 0x43c80001
        BL       __aeabi_cfrcmple
        BHI.N    ??SpeedContral_15
        LDR.N    R4,??DataTable6_15  ;; 0xc3c80000
// 1163   }
// 1164   Give._I_ = temp_i_;
??SpeedContral_15:
        LDR.N    R0,??DataTable6_8
        STR      R4,[R0, #+60]
// 1165   tempfloat_motorPWM = 0*temp_SpeedOffset + temp_i_;//计算出最终的电机给定PWM
        MOVS     R0,#+0
        MOVS     R1,R7
        BL       __aeabi_fmul
        MOVS     R1,R4
        BL       __aeabi_fadd
        MOVS     R2,R0
// 1166   //最终输出限幅
// 1167   if(tempfloat_motorPWM > 0 && tempfloat_motorPWM > MotorMaxZhengZhuanPWM){tempfloat_motorPWM = MotorMaxZhengZhuanPWM;}
        MOVS     R0,R2
        MOVS     R1,#+0
        BL       __aeabi_cfrcmple
        BCS.N    ??SpeedContral_18
        MOVS     R0,R2
        LDR.N    R1,??DataTable6_19  ;; 0x44778001
        BL       __aeabi_cfrcmple
        BHI.N    ??SpeedContral_18
        LDR.N    R2,??DataTable6_20  ;; 0x44778000
        B.N      ??SpeedContral_19
// 1168   else if(tempfloat_motorPWM < 0 && (0-tempfloat_motorPWM) > MotorMaxFanZhuanPWM ){tempfloat_motorPWM = 0-MotorMaxFanZhuanPWM;}
??SpeedContral_18:
        MOVS     R0,R2
        MOVS     R1,#+0
        BL       __aeabi_cfcmple
        BCS.N    ??SpeedContral_19
        MOVS     R0,R2
        EORS     R0,R0,#0x80000000
        LDR.N    R1,??DataTable6_19  ;; 0x44778001
        BL       __aeabi_cfrcmple
        BHI.N    ??SpeedContral_19
        LDR.N    R2,??DataTable6_21  ;; 0xc4778000
// 1169   
// 1170   if(tempfloat_motorPWM >=0 ){Give.motorPWM = (uint16)tempfloat_motorPWM;Give.motorDir = 1;}
??SpeedContral_19:
        MOVS     R0,R2
        MOVS     R1,#+0
        BL       __aeabi_cfrcmple
        BHI.N    ??SpeedContral_20
        MOVS     R0,R2
        BL       __aeabi_f2iz
        LDR.N    R1,??DataTable6_8
        STRH     R0,[R1, #+44]
        LDR.N    R0,??DataTable6_8
        MOVS     R1,#+1
        STRB     R1,[R0, #+46]
        B.N      ??SpeedContral_21
// 1171   else {Give.motorPWM = (uint16)(0-tempfloat_motorPWM);Give.motorDir = 2;}
??SpeedContral_20:
        EORS     R2,R2,#0x80000000
        MOVS     R0,R2
        BL       __aeabi_f2iz
        LDR.N    R1,??DataTable6_8
        STRH     R0,[R1, #+44]
        LDR.N    R0,??DataTable6_8
        MOVS     R1,#+2
        STRB     R1,[R0, #+46]
// 1172   
// 1173   //若当前给定速度为0
// 1174   if(Give.motorDSpeed == 0)
??SpeedContral_21:
        LDR.N    R0,??DataTable6_8
        LDRH     R0,[R0, #+36]
        CMP      R0,#+0
        BNE.N    ??SpeedContral_22
// 1175   { if(temp_currentSpeed >=15)
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+15
        BLT.N    ??SpeedContral_23
// 1176     {  //电机给定反转PWM=恒定最大加速度(已转换成相同量纲)-电机反电动势
// 1177       if(a_max - Con.Ce_ *temp_currentSpeed >= 0){temp_motorPWM = (uint16)(a_max - Con.Ce_ *temp_currentSpeed);}
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        MOVS     R0,R6
        BL       __aeabi_ui2f
        LDR.N    R1,??DataTable6_1
        LDR      R1,[R1, #+64]
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR.N    R0,??DataTable6_9  ;; 0x43af0000
        BL       __aeabi_fsub
        MOVS     R1,#+0
        BL       __aeabi_cfrcmple
        BHI.N    ??SpeedContral_24
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        MOVS     R0,R6
        BL       __aeabi_ui2f
        LDR.N    R1,??DataTable6_1
        LDR      R1,[R1, #+64]
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR.N    R0,??DataTable6_9  ;; 0x43af0000
        BL       __aeabi_fsub
        BL       __aeabi_f2iz
        B.N      ??SpeedContral_25
// 1178       else {temp_motorPWM = 0;}
??SpeedContral_24:
        MOVS     R0,#+0
// 1179       Give.motorPWM = temp_motorPWM;
??SpeedContral_25:
        LDR.N    R1,??DataTable6_8
        STRH     R0,[R1, #+44]
// 1180       Give.motorDir = 2; 
        LDR.N    R0,??DataTable6_8
        MOVS     R1,#+2
        STRB     R1,[R0, #+46]
        B.N      ??SpeedContral_22
// 1181     }
// 1182     else
// 1183     { Give.motorPWM = 0;
??SpeedContral_23:
        LDR.N    R0,??DataTable6_8
        MOVS     R1,#+0
        STRH     R1,[R0, #+44]
// 1184       Give.motorDir = 1; 
        LDR.N    R0,??DataTable6_8
        MOVS     R1,#+1
        STRB     R1,[R0, #+46]
// 1185     }
// 1186   }
// 1187 
// 1188   if(Con.Run <=1 || Con.Run == 4 || Con.EnableMotor == 0){Give.motorPWM = 0;Give.motorDir = 1;}//停止后2秒或电机被禁止，电机PWM给0
??SpeedContral_22:
        LDR.N    R0,??DataTable6_1
        LDRB     R0,[R0, #+12]
        CMP      R0,#+2
        BLT.N    ??SpeedContral_26
        LDR.N    R0,??DataTable6_1
        LDRB     R0,[R0, #+12]
        CMP      R0,#+4
        BEQ.N    ??SpeedContral_26
        LDR.N    R0,??DataTable6_1
        LDRB     R0,[R0, #+50]
        CMP      R0,#+0
        BNE.N    ??SpeedContral_27
??SpeedContral_26:
        LDR.N    R0,??DataTable6_8
        MOVS     R1,#+0
        STRH     R1,[R0, #+44]
        LDR.N    R0,??DataTable6_8
        MOVS     R1,#+1
        STRB     R1,[R0, #+46]
// 1189 }
??SpeedContral_27:
        POP      {R0,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     Trk

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC32     Con

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_2:
        DC32     0x447a0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_3:
        DC32     GR_ServerPWM1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_4:
        DC32     GR_SpeedGive1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_5:
        DC32     GR_ServerPWM2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_6:
        DC32     GR_SpeedGive2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_7:
        DC32     Encoder

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_8:
        DC32     Give

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_9:
        DC32     0x43af0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_10:
        DC32     0xcccccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_11:
        DC32     0x3feccccc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_12:
        DC32     0x47ae147b

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_13:
        DC32     0x3fb47ae1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_14:
        DC32     0x43c80001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_15:
        DC32     0xc3c80000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_16:
        DC32     0x3fee6666

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_17:
        DC32     0x70a3d70a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_18:
        DC32     0x3fb70a3d

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_19:
        DC32     0x44778001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_20:
        DC32     0x44778000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_21:
        DC32     0xc4778000

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 
//  3 400 bytes in section .bss
//  2 016 bytes in section .rodata
// 12 796 bytes in section .text
// 
// 12 796 bytes of CODE  memory
//  2 016 bytes of CONST memory
//  3 400 bytes of DATA  memory
//
//Errors: none
//Warnings: none
