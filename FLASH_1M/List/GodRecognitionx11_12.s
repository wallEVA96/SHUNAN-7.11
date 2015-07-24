///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     16/Aug/2014  22:11:09 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\pc\Desktop\¼ÌÐø×öµÄÊÂÇé\ËÄÐýÒí·ÉÐÐÆ÷ -         /
//                    TM4123G\´úÂë\Ò£¿ØÆ÷\ShunAn2\GodRecognitionx11_12.c      /
//    Command line =  "C:\Users\pc\Desktop\¼ÌÐø×öµÄÊÂÇé\ËÄÐýÒí·ÉÐÐÆ÷ -        /
//                    TM4123G\´úÂë\Ò£¿ØÆ÷\ShunAn2\GodRecognitionx11_12.c" -D  /
//                    IAR -D ShunAn2 -lCN "C:\Users\pc\Desktop\¼ÌÐø×öµÄÊÂÇé\Ë /
//                    ÄÐýÒí·ÉÐÐÆ÷ - TM4123G\´úÂë\Ò£¿ØÆ÷\FLASH_1M\List\" -lB   /
//                    "C:\Users\pc\Desktop\¼ÌÐø×öµÄÊÂÇé\ËÄÐýÒí·ÉÐÐÆ÷ -        /
//                    TM4123G\´úÂë\Ò£¿ØÆ÷\FLASH_1M\List\" -o                  /
//                    "C:\Users\pc\Desktop\¼ÌÐø×öµÄÊÂÇé\ËÄÐýÒí·ÉÐÐÆ÷ -        /
//                    TM4123G\´úÂë\Ò£¿ØÆ÷\FLASH_1M\Obj\" --no_cse             /
//                    --no_unroll --no_inline --no_code_motion --no_tbaa      /
//                    --no_clustering --no_scheduling --debug                 /
//                    --endian=little --cpu=Cortex-M4 -e --fpu=None           /
//                    --dlib_config "C:\Program Files (x86)\IAR               /
//                    Systems\Embedded Workbench                              /
//                    6.5\arm\INC\c\DLib_Config_Normal.h" -I                  /
//                    "C:\Users\pc\Desktop\¼ÌÐø×öµÄÊÂÇé\ËÄÐýÒí·ÉÐÐÆ÷ -        /
//                    TM4123G\´úÂë\Ò£¿ØÆ÷\ShunAn2\" -I                        /
//                    "C:\Users\pc\Desktop\¼ÌÐø×öµÄÊÂÇé\ËÄÐýÒí·ÉÐÐÆ÷ -        /
//                    TM4123G\´úÂë\Ò£¿ØÆ÷\Library\" -I                        /
//                    "C:\Users\pc\Desktop\¼ÌÐø×öµÄÊÂÇé\ËÄÐýÒí·ÉÐÐÆ÷ -        /
//                    TM4123G\´úÂë\Ò£¿ØÆ÷\Library\BlessedAlien\" -Ol          /
//                    --use_c++_inline                                        /
//    List file    =  C:\Users\pc\Desktop\¼ÌÐø×öµÄÊÂÇé\ËÄÐýÒí·ÉÐÐÆ÷ -         /
//                    TM4123G\´úÂë\Ò£¿ØÆ÷\FLASH_1M\List\GodRecognitionx11_12. /
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

// C:\Users\pc\Desktop\¼ÌÐø×öµÄÊÂÇé\ËÄÐýÒí·ÉÐÐÆ÷ - TM4123G\´úÂë\Ò£¿ØÆ÷\ShunAn2\GodRecognitionx11_12.c
//    1 /*!
//    2  *  @brief      ÉÏµÛµÄË«CCDÄ£Ê½Ê¶±ðËã·¨CÎÄ¼þ
//    3  *  @author     ¹­¼ý
//    4  *  @date       2014-3-17
//    5  */
//    6 #include "GodRecognitionx11_12.h"
//    7 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    8 EncoderInformation Encoder = {0};//±àÂëÆ÷Ïà¹Ø±äÁ¿
Encoder:
        DS8 404

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    9 InfraredInformation Infrared = {0};//ºìÍâ¶Ô¹ÜÏà¹Ø±äÁ¿
Infrared:
        DS8 404

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   10 GyroscopeInformation Gyroscope = {0};//ÍÓÂÝÒÇÏà¹Ø±äÁ¿
Gyroscope:
        DS8 404

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   11 CCDInformation CCD1 = {0};//CCD1Ô­Ê¼Í¼ÏñÏà¹ØÊý¾Ý
CCD1:
        DS8 136

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   12 CCDInformation CCD2 = {0};//CCD2Ô­Ê¼Í¼ÏñÏà¹ØÊý¾Ý
CCD2:
        DS8 136

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   13 TrackInformation_v2 Trk = {0};//ÈüµÀÐÅÏ¢
Trk:
        DS8 1784

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   14 DirSpeedGiveInformation Give = {0};//·½ÏòºÍËÙ¶È¸ø¶¨
Give:
        DS8 64

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   15 ContralInformation Con = {0};//¿ØÖÆÓëÉèÖÃ
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
//   18 //CCD1¶æ»ú´ò½Ç±í,ºá×ø±êÊÇÆ«²î£¨ÖÐÐÄ×ø±êÓë100Ö®²îµÄ¾ø¶ÔÖµ£©£¬ÈÎÒâÖµ²»ÄÜ³¬¹ý100
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
//   53 //CCD2¶æ»ú´ò½Ç±í,ºá×ø±êÊÇÆ«²î£¨ÖÐÐÄ×ø±êÓë100Ö®²îµÄ¾ø¶ÔÖµ£©£¬ÈÎÒâÖµ²»ÄÜ³¬¹ý100£¡
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
//   88 //CCD1µç»ú¸ø¶¨×ªËÙ±í£¬ºá×ø±êÎªÆ«²î
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
//   97 //CCD2µç»ú¸ø¶¨×ªËÙ±í£¬ºá×ø±êÎªÆ«²î
//   98 {
//   99     //0   1   2   3   4   5   6   7   8   9 //10  11  12  13  14  15  16  17  18  19 //20  21  22  23  24  25  26  27  28  29 //30  31  32  33  34  35  36  37  38  39//40  41  42  43  44  45  46  47  48  49 //50  51  52  53  54  55  56  57  58  59//60  61  62  63  64  65  66  67  68  69 //70  71  72  73  74  75  76  77  78  79 //80  81  82  83  84  85  86  87  88  89 //90  91  92  93  94  95  96  97  98  99  100 
//  100       270,270,270,270,270,270,270,270,270,270,268,267,265,264,262,261,259,258,256,255, 253,252,250,249,247,246,244,243,241,240, 238,237,235,235,235,234,232,230,229,228,226,225,223,221,219,218,216,214,212,209, 198,188,177,167,157,146,135,135,135,134,134,133,133,133,132,132,132,131,131,131, 130,130,130,129,129,128,128,128,127,127,127,126,126,125,125,125,124,123,122,122, 122,122,122,122,122,122,122,122,122,122,122,        
//  101     //101 102 103 104 105 106 107 108 109/110 111 112 113 114 115 116 117 118 119/120  121 122 123 124 125 126 127 128 129/130  131 132 133 134 135 136 137 138 139/140 141 142 143 144 145 146 147 148 149/150  151 152 153 154 155 156 157 158 159/160  161 162 163 164 165 166 167 168 169/170  171 172 173 174 175 176 177 178 179/180  181 182 183 184 185 186 187 188 189/190  191 192 193 194 195 196 197 198 199 200 
//  102      122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122, 122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122, 122,122,122,122,122,122,122,122,122,122, 122,122,122,122,122,122,122,122,122,122, 122,122,122,122,122,122,122,122,122,122, 122,122,122,122,122,122,122,122,122,122, 122,122,122,122,122,122,122,122,122,122
//  103 };
//  104 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  105 void GodRecognitionInit(void)//Ëã·¨±äÁ¿³õÊ¼»¯
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
//  113   Trk.Width1 = CCD1TrkWidth;//³õÊÔCCD1ÈüµÀ¿í¶ÈµÈÓÚÄ¬ÈÏÖµ
        LDR.N    R0,??DataTable2_1
        MOVS     R1,#+62
        STRB     R1,[R0, #+814]
//  114   Trk.Width2 = CCD2TrkWidth;//³õÊÔCCD2ÈüµÀ¿í¶ÈµÈÓÚÄ¬ÈÏÖµ
        LDR.N    R0,??DataTable2_1
        MOVS     R1,#+68
        STRB     R1,[R0, #+1646]
//  115   Con.SpeedContralPeriod = 1;//³õÊÔËÙ¶È¿ØÖÆÖÜÆÚÎª1(ms)
        LDR.N    R0,??DataTable2_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+1]
//  116   Con.MainContralPeriod = 5;//³õÊ¼¿ØÖÆÖÜÆÚµÈÓÚ5(ms)
        LDR.N    R0,??DataTable2_2
        MOVS     R1,#+5
        STRB     R1,[R0, #+3]
//  117   Con.EnableDirectionServer = 1;//Ê¹ÄÜ´ò½Ç¶æ»ú
        LDR.N    R0,??DataTable2_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+49]
//  118   Con.EnableMotor = 1;//Ê¹ÄÜµç»ú
        LDR.N    R0,??DataTable2_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+50]
//  119   Con.EnableCrash = 1;//Ê¹ÄÜ³å³öÈüµÀ¼ì²â
        LDR.N    R0,??DataTable2_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+55]
//  120   Con.EnableStartline = 1;//Ê¹ÄÜÆðÅÜÏß¼ì²â
        LDR.N    R0,??DataTable2_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+54]
//  121   Con.EnableHerribone = 1;//Ê¹ÄÜÈË×Ö¼ì²â
        LDR.N    R0,??DataTable2_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+51]
//  122   Con.EnableRoadblock = 1;//Ê¹ÄÜÂ·ÕÏ¼ì²â
        LDR.N    R0,??DataTable2_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+52]
//  123   Con.EnableRamp = 1;//Ê¹ÄÜÆÂµÀ¼ì²â
        LDR.N    R0,??DataTable2_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+53]
//  124   Con.Battery = 8.0;//³õÊÔÉèÖÃµç³ØµçÑ¹Îª8.0V
        LDR.N    R0,??DataTable2_2
        MOVS     R1,#+1090519040
        STR      R1,[R0, #+60]
//  125   Con.Ce_ = 1.57;//³õÊÔÉèÖÃµç¶¯ÊÆ³£Êý
        LDR.N    R0,??DataTable2_2
        LDR.N    R1,??DataTable2_3  ;; 0x3fc8f5c3
        STR      R1,[R0, #+64]
//  126   Give.DPeriod = 50;//³õÊ¼Î¢·ÖÖÜÆÚÎª100£¨ms£©
        LDR.N    R0,??DataTable2_4
        MOVS     R1,#+50
        STRH     R1,[R0, #+12]
//  127   Give.D_motor = 0.5;//Éè¶¨µç»úÎ¢·ÖÏµÊý
        LDR.N    R0,??DataTable2_4
        MOVS     R1,#+1056964608
        STR      R1,[R0, #+28]
//  128   Give.D_server = 0.3;//Éè¶¨¶æ»úÎ¢·ÖÏµÊý
        LDR.N    R0,??DataTable2_4
        LDR.N    R1,??DataTable2_5  ;; 0x3e99999a
        STR      R1,[R0, #+20]
//  129   Give.SpeedCoef = 1.0;//Éè¶¨³õÊ¼ËÙ¶ÈÏµÊý
        LDR.N    R0,??DataTable2_4
        MOVS     R1,#+1065353216
        STR      R1,[R0, #+40]
//  130   Give.ServerTestPWM = 100;//Éè¶¨³õÊ¼¶æ»úµ÷ÊÔPWM
        LDR.N    R0,??DataTable2_4
        MOVS     R1,#+100
        STRB     R1,[R0, #+5]
//  131   Trk.Straight1 = 1;//³õÊ¼ÖÃÎ»Ö±µÀ±êÖ¾
        LDR.N    R0,??DataTable2_1
        MOVS     R1,#+1
        STRB     R1,[R0, #+826]
//  132   Trk.StraightRoad1 = 50000;//³õÊ¼ÉèÖÃÖ±µÀÀÛ¼ÓÂ·³Ì
        LDR.N    R0,??DataTable2_1
        MOVW     R1,#+50000
        STR      R1,[R0, #+828]
//  133 }
        BX       LR               ;; return
//  134 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  135 void CCD1ImageAbstract(void)//CCD1Í¼Ïñ»ù±¾ÌØÕ÷ÌáÈ¡
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
//  138   for(uint8 i=0;i<128;i++)//ÌáÈ¡³ö×î´óÖµºÍ×îÐ¡Öµ
        MOVS     R0,#+0
        B.N      ??CCD1ImageAbstract_0
//  139     {
//  140       if(i>=CCD1illegalArea && i<=127 - CCD1illegalArea)//È¥³ý±ß½çÎÞÐ§ÇøÓò
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
//  147     CCD1.aver = CCD1.aver/(128 - 2*CCD1illegalArea);//ÌáÈ¡³öÆ½¾ùÖµ
        LDR.N    R0,??DataTable2_6
        LDRH     R0,[R0, #+130]
        MOVS     R1,#+108
        SDIV     R0,R0,R1
        LDR.N    R1,??DataTable2_6
        STRH     R0,[R1, #+130]
//  148     CCD1.threshold = (uint8)(((float)(CCD1.max - CCD1.min))*0.3);//ÌáÈ¡³öÌø±äãÐÖµ
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
//  151 void CCD2ImageAbstract(void)//CCD2Í¼Ïñ»ù±¾ÌØÕ÷ÌáÈ¡
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
//  154   for(uint8 i=0;i<128;i++)//ÌáÈ¡³ö×î´óÖµºÍ×îÐ¡Öµ
        MOVS     R0,#+0
        B.N      ??CCD2ImageAbstract_0
//  155     {
//  156       if(i>=CCD2illegalArea && i<=127 - CCD2illegalArea)//È¥³ý±ß½çÎÞÐ§ÇøÓò
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
//  163     CCD2.aver = CCD2.aver/(128 - 2*CCD2illegalArea);//ÌáÈ¡³öÆ½¾ùÖµ
        LDR.N    R0,??DataTable2_8
        LDRH     R0,[R0, #+130]
        MOVS     R1,#+118
        SDIV     R0,R0,R1
        LDR.N    R1,??DataTable2_8
        STRH     R0,[R1, #+130]
//  164     CCD2.threshold = (uint8)(((float)(CCD2.max - CCD2.min))*0.3);//ÌáÈ¡³öÌø±äãÐÖµ
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
//  167 void FindCentralLine(void)// ÕÒÖÐÏß
//  168 {
FindCentralLine:
        PUSH     {R4-R8,LR}
//  169     //*****************************************************************************************
//  170     //-----------------------------------------------------------------------------------------
//  171     //-------------------------------------ÌáÈ¡CCD1×óÓÒºÚ±ß------------------------------------
//  172     //-----------------------------------------------------------------------------------------
//  173     //*****************************************************************************************
//  174     
//  175     Trk.lastCen1 = Trk.currentCen1;//ÔÝ´æÉÏÒ»´ÎµÄÏÂ±ê
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
//  187     //É¨ÃèÇ°ÏÈ³õÊ¼»¯µ±Ç°±ßÑØ²»´æÔÚ  
//  188     //ÈôÉÏ´ÎµÄÖÐÏß²»´¦ÓÚCCD1µÄ×óÊÓÒ°Ö®Íâ£¬Ôò¿ÉÒÔÏò×óÉ¨ÃèÉÏÉýÑØ
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
//  193         if(Trk.cen1[Trk.lastCen1] <= 937 + 127 - CCD1illegalArea)//³¬³öÍ¼Ïñ±ß½çÏÞ·ù
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+812]
        LDR.W    R1,??DataTable3
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+410]
        MOVW     R1,#+1055
        CMP      R0,R1
        BGE.N    ??FindCentralLine_3
//  194         {
//  195             ScanTime = Trk.cen1[Trk.lastCen1] - 937 - CCD1illegalArea - CCD1ScanWidth + 1;//¼ÆËãÏò×óÉ¨Ãè´ÎÊý
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
//  200             ScanTime = 127 - 2*CCD1illegalArea - CCD1ScanWidth + 1;//¼ÆËãÏò×óÉ¨Ãè´ÎÊý
??FindCentralLine_3:
        MOVS     R6,#+100
//  201             Temp = 127 - CCD1illegalArea;
        MOVS     R7,#+117
//  202         }
//  203         //ÒÀ´Î´ÓÖÐÏßÏò×óÉ¨Ãè£¬Ö±µ½É¨Ãè³öÉÏÉýÑØ»òÕß´ïµ½É¨Ãè´ÎÊý
//  204         /*
//  205             ÉÏÉýÑØ¼ì²â
//  206         */
//  207         for(uint8 i = 0;i<ScanTime&&Trk.left1[Trk.currentLeft1]==255;i++)
??FindCentralLine_4:
        MOVS     R8,#+0
        B.N      ??FindCentralLine_5
//  208         { //Ìø±ä¼ì²âµÄÌõ¼þÊÇ£ºÏà¸ôCCD1ScanWidthµÄÁ½¸öµãÖ®²î´óÓÚãÐÖµ£¬Ò²´óÓÚCCDÕû³¡Í¼ÏñÆ½¾ùÖµµÄ0.2±¶£¨?£©
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
//  234     Trk.right1[Trk.currentRight1] = 255;//É¨ÃèÇ°ÏÈ³õÊ¼»¯µ±Ç°±ßÑØ²»´æÔÚ
??FindCentralLine_9:
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+406]
        LDR.W    R1,??DataTable3
        ADDS     R0,R0,R1
        MOVS     R1,#+255
        STRB     R1,[R0, #+206]
//  235     //ÈôÉÏ´ÎµÄÖÐÏß²»´¦ÓÚCCD1µÄÓÒÊÓÒ°Ö®Íâ£¬Ôò¿ÉÒÔÏòÓÒÉ¨ÃèÏÂ½µÑØ
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
//  240         if(Trk.cen1[Trk.lastCen1] >= 937 + CCD1illegalArea)//³¬³öÍ¼Ïñ±ß½çÏÞ·ù
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+812]
        LDR.W    R1,??DataTable3
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+410]
        MOVW     R1,#+947
        CMP      R0,R1
        BLT.N    ??FindCentralLine_11
//  241         {
//  242             ScanTime = 937 + 127 -Trk.cen1[Trk.lastCen1] - CCD1illegalArea - CCD1ScanWidth + 1;//¼ÆËãÏòÓÒÉ¨Ãè´ÎÊý
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
//  247             ScanTime = 127 - 2*CCD1illegalArea - CCD1ScanWidth + 1;//¼ÆËãÏòÓÒÉ¨Ãè´ÎÊý
??FindCentralLine_11:
        MOVS     R6,#+100
//  248             Temp = CCD1illegalArea;
        MOVS     R7,#+10
//  249         }
//  250         //ÒÀ´Î´ÓÖÐÏßÏòÓÒÉ¨Ãè£¬Ö±µ½É¨Ãè³öÏÂ½µÑØ»òÕß´ïµ½É¨Ãè´ÎÊý
//  251         for(uint8 i = 0;i<ScanTime&&Trk.right1[Trk.currentRight1]==255;i++)
??FindCentralLine_12:
        MOVS     R8,#+0
        B.N      ??FindCentralLine_13
//  252         {
//  253             //Ìø±ä¼ì²âµÄÌõ¼þÊÇ£ºÏà¸ôCCD1ScanWidthµÄÁ½¸öµãÖ®²î´óÓÚãÐÖµ£¬Ò²´óÓÚCCDÕû³¡Í¼ÏñÆ½¾ùÖµµÄ0.2±¶
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
//  269     // Ìø±äãÐÖµ³öÏÖÍ³¼Æ£¨£©
//  270     /*
//  271     uint8 LoopForSaveJump = 0;
//  272     Trk.LeftMinJump = 255;
//  273     Trk.LeftMaxJump = 0;
//  274     // Í³¼Æ×ó²à
//  275     for ( LoopForSaveJump = 0;LoopForSaveJump < Trk.LeftMaxIndex; LoopForSaveJump++ )
//  276     {
//  277         if ( Trk.LeftJumpVarStack[LoopForSaveJump] > Trk.LeftMaxJump ){Trk.LeftMaxJump = Trk.LeftJumpVarStack[LoopForSaveJump];};
//  278         if ( Trk.LeftJumpVarStack[LoopForSaveJump] < Trk.LeftMinJump ){Trk.LeftMinJump = Trk.LeftJumpVarStack[LoopForSaveJump];};
//  279     }
//  280     // Í³¼ÆÓÒ²à
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
//  291     //----------------------ËùÓÐCCD1Í¼Ïñ±ßÑØÌáÈ¡Íê±Ï£¬¿ªÊ¼¼ÆËãCCD1ÖÐÏßÎ»ÖÃ---------------------
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
//  302     if(Trk.left1[Trk.currentLeft1]!=255 && Trk.right1[Trk.currentRight1]!=255) //CCD1Ë«±ß¶¼´æÔÚ
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
//  304         Trk.cen1[Trk.currentCen1] = (Trk.left1[Trk.currentLeft1] + Trk.right1[Trk.currentRight1])/2 + 937;//¼ÆËãCCD1ÖÐÏßÎ»ÖÃ
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
//  305         Trk.RoadBlockLastWidth1 = Trk.Width1;//¼ÇÂ¼ÉÏÒ»´ÎÈüµÀ¿í¶È
        LDR.W    R0,??DataTable3
        LDR.W    R1,??DataTable3
        LDRB     R1,[R1, #+814]
        STRB     R1,[R0, #+1733]
//  306         Trk.Width1 = Trk.right1[Trk.currentRight1] - Trk.left1[Trk.currentLeft1];//¼ÆËãÈüµÀ¿í¶È
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
//  307         Trk.AllDark1 = 0;//Çå0È«ºÚ±êÖ¾
        LDR.W    R0,??DataTable3
        MOVS     R1,#+0
        STRB     R1,[R0, #+815]
//  308         Trk.BackCen1 = 0;//Çå0»ØÕý±êÖ¾
        LDR.W    R0,??DataTable3
        MOVS     R1,#+0
        STRB     R1,[R0, #+816]
        B.N      ??FindCentralLine_19
//  309     }
//  310     else if(Trk.left1[Trk.currentLeft1]!=255 && Trk.right1[Trk.currentRight1]==255) //CCD1Ö»´æÔÚ×ó±ß
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
//  312         //ÖÐÏßÎ»ÖÃ=×ó±ß+×ø±êÏµ×ª»»Æ«ÒÆÁ¿+ÈüµÀ¿í¶È/2
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
//  318         }//·ÀÖ¹Ô½½ç
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
//  322         }//ÖÐÏßÎ»ÖÃ³¬¹ýãÐÖµÅÐ¶ÏÎªÈ«°×
//  323         else
//  324         {
//  325             Trk.AllDark1 = 1;
??FindCentralLine_22:
        LDR.W    R0,??DataTable3
        MOVS     R1,#+1
        STRB     R1,[R0, #+815]
//  326         }
//  327         //±¾À´ÓÒ±ßÓ¦¸Ã´æÔÚ£¬µ«ÊÇÊµ¼ÊÉÏ²»´æÔÚ£¬ËµÃ÷ºÜ¿ÉÄÜÊÇÊ®×ÖÎóÅÐ
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
//  331             Trk.cen1[Trk.currentCen1] = Trk.cen1[Trk.lastCen1];//±£³ÖÉÏ´Î´ò½Ç
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
//  333         Trk.BackCen1 = 0;//Çå0»ØÕý±êÖ¾
??FindCentralLine_24:
        LDR.W    R0,??DataTable3
        MOVS     R1,#+0
        STRB     R1,[R0, #+816]
        B.N      ??FindCentralLine_19
//  334     }
//  335     else if(Trk.left1[Trk.currentLeft1]==255 && Trk.right1[Trk.currentRight1]!=255) //CCD1Ö»´æÔÚÓÒ±ß
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
//  337         //ÖÐÏßÎ»ÖÃ=ÓÒ±ß+×ø±êÏµ×ª»»Æ«ÒÆÁ¿-ÈüµÀ¿í¶È/2
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
//  343         }//·ÀÖ¹Ô½½ç
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
//  349         }//ÖÐÏßÎ»ÖÃ³¬¹ýãÐÖµÅÐ¶ÏÎªÈ«°×
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
//  358         //±¾À´×ó±ßÓ¦¸Ã´æÔÚ£¬µ«ÊÇÊµ¼ÊÉÏ²»´æÔÚ£¬ËµÃ÷ºÜ¿ÉÄÜÊÇÊ®×ÖÎóÅÐ
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
//  362             Trk.cen1[Trk.currentCen1] = Trk.cen1[Trk.lastCen1];//±£³ÖÉÏ´Î´ò½Ç
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
//  364         Trk.BackCen1 = 0;//Çå0»ØÕý±êÖ¾
??FindCentralLine_29:
        LDR.W    R0,??DataTable3
        MOVS     R1,#+0
        STRB     R1,[R0, #+816]
        B.N      ??FindCentralLine_19
//  365     }
//  366     else//CCD1Ë«±ß¶¼²»´æÔÚ
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
//  371         }//ÈôÈ«ºÚ±êÖ¾Îª1£¬±£³ÖÉÏ´Î´ò½Ç
//  372         else if(Trk.BackCen1 == 0)//Èô»ØÕý±êÖ¾Îª0
??FindCentralLine_30:
        LDR.W    R0,??DataTable3
        LDRB     R0,[R0, #+816]
        CMP      R0,#+0
        BNE.N    ??FindCentralLine_31
//  373         {
//  374             Trk.BackCen1 = 1;Trk.BackCenRoad1 = Con.TotalRoad;Trk.BcakCenCen1 = Trk.cen1[Trk.lastCen1];//ÖÃ1»ØÕý±êÖ¾£¬¼ÇÂ¼»ØÕý¿ªÊ¼µÄ±äÁ¿
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
//  375             Trk.cen1[Trk.currentCen1] = Trk.cen1[Trk.lastCen1];//±£³ÖÉÏ´Î´ò½Ç    
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
//  377         else//´¦ÓÚ»ØÕý×´Ì¬
//  378         {
//  379             Trk.BackCen1 = 1;//ÖÃ1»ØÕý±êÖ¾
??FindCentralLine_31:
        LDR.W    R0,??DataTable3
        MOVS     R1,#+1
        STRB     R1,[R0, #+816]
//  380             //ÏÂÃæ¼ÆËã»ØÕý¹ý³ÌÖÐµÄÖÐÐÄ×ø±ê
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
//  410   //-------------------------------------ÌáÈ¡CCD2×óÓÒºÚ±ß------------------------------------
//  411   //-----------------------------------------------------------------------------------------
//  412   //*****************************************************************************************
//  413   Trk.lastCen2 = Trk.currentCen2;//ÔÝ´æÉÏÒ»´ÎµÄÏÂ±ê
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
//  416   Trk.left2[Trk.currentLeft2] = 255;//É¨ÃèÇ°ÏÈ³õÊ¼»¯µ±Ç°±ßÑØ²»´æÔÚ  
??FindCentralLine_36:
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+1034]
        LDR.W    R1,??DataTable3
        ADDS     R0,R0,R1
        MOVS     R1,#+255
        STRB     R1,[R0, #+834]
//  417   //ÈôÉÏ´ÎµÄÖÐÏß²»´¦ÓÚCCD2µÄ×óÊÓÒ°Ö®Íâ£¬Ôò¿ÉÒÔÏò×óÉ¨ÃèÉÏÉýÑØ
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
//  420     if(Trk.cen2[Trk.lastCen2] <= 937 + 127 - CCD2illegalArea)//³¬³öÍ¼Ïñ±ß½çÏÞ·ù
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+1644]
        LDR.W    R1,??DataTable3
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+1242]
        MOVW     R1,#+1060
        CMP      R0,R1
        BGE.N    ??FindCentralLine_38
//  421     { ScanTime = Trk.cen2[Trk.lastCen2] - 937 - CCD2illegalArea - CCD2ScanWidth + 1;//¼ÆËãÏò×óÉ¨Ãè´ÎÊý
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
//  425     { ScanTime = 127 - 2*CCD2illegalArea - CCD2ScanWidth + 1;//¼ÆËãÏò×óÉ¨Ãè´ÎÊý
??FindCentralLine_38:
        MOVS     R6,#+110
//  426       Temp = 127 - CCD2illegalArea;
        MOVS     R7,#+122
//  427     }
//  428     //ÒÀ´Î´ÓÖÐÏßÏò×óÉ¨Ãè£¬Ö±µ½É¨Ãè³öÉÏÉýÑØ»òÕß´ïµ½É¨Ãè´ÎÊý
//  429     for(uint8 i = 0;i<ScanTime&&Trk.left2[Trk.currentLeft2]==255;i++)
??FindCentralLine_39:
        MOVS     R8,#+0
        B.N      ??FindCentralLine_40
//  430     { //Ìø±ä¼ì²âµÄÌõ¼þÊÇ£ºÏà¸ôCCD2ScanWidthµÄÁ½¸öµãÖ®²î´óÓÚãÐÖµ£¬Ò²´óÓÚCCDÕû³¡Í¼ÏñÆ½¾ùÖµµÄ0.2±¶
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
//  438   Trk.right2[Trk.currentRight2] = 255;//É¨ÃèÇ°ÏÈ³õÊ¼»¯µ±Ç°±ßÑØ²»´æÔÚ
??FindCentralLine_44:
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+1238]
        LDR.W    R1,??DataTable3
        ADDS     R0,R0,R1
        MOVS     R1,#+255
        STRB     R1,[R0, #+1038]
//  439   //ÈôÉÏ´ÎµÄÖÐÏß²»´¦ÓÚCCD2µÄÓÒÊÓÒ°Ö®Íâ£¬Ôò¿ÉÒÔÏòÓÒÉ¨ÃèÏÂ½µÑØ
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
//  442     if(Trk.cen2[Trk.lastCen2] >= 937 + CCD2illegalArea)//³¬³öÍ¼Ïñ±ß½çÏÞ·ù
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+1644]
        LDR.W    R1,??DataTable3
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+1242]
        MOVW     R1,#+942
        CMP      R0,R1
        BLT.N    ??FindCentralLine_46
//  443     { ScanTime = 937 + 127 -Trk.cen2[Trk.lastCen2] - CCD2illegalArea - CCD2ScanWidth + 1;//¼ÆËãÏòÓÒÉ¨Ãè´ÎÊý
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
//  447     { ScanTime = 127 - 2*CCD2illegalArea - CCD2ScanWidth + 1;//¼ÆËãÏòÓÒÉ¨Ãè´ÎÊý
??FindCentralLine_46:
        MOVS     R6,#+110
//  448       Temp = CCD2illegalArea;
        MOVS     R7,#+5
//  449     }
//  450     //ÒÀ´Î´ÓÖÐÏßÏòÓÒÉ¨Ãè£¬Ö±µ½É¨Ãè³öÏÂ½µÑØ»òÕß´ïµ½É¨Ãè´ÎÊý
//  451     for(uint8 i = 0;i<ScanTime&&Trk.right2[Trk.currentRight2]==255;i++)
??FindCentralLine_47:
        MOVS     R8,#+0
        B.N      ??FindCentralLine_48
//  452     { //Ìø±ä¼ì²âµÄÌõ¼þÊÇ£ºÏà¸ôCCD2ScanWidthµÄÁ½¸öµãÖ®²î´óÓÚãÐÖµ£¬Ò²´óÓÚCCDÕû³¡Í¼ÏñÆ½¾ùÖµµÄ0.2±¶
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
//  461   //----------------------ËùÓÐCCD2Í¼Ïñ±ßÑØÌáÈ¡Íê±Ï£¬¿ªÊ¼¼ÆËãCCD2ÖÐÏßÎ»ÖÃ---------------------
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
//  465   if(Trk.left2[Trk.currentLeft2]!=255 && Trk.right2[Trk.currentRight2]!=255) //CCD2Ë«±ß¶¼´æÔÚ
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
//  466   { Trk.cen2[Trk.currentCen2] = (Trk.left2[Trk.currentLeft2] + Trk.right2[Trk.currentRight2])/2 + 937;//¼ÆËãCCD2ÖÐÏßÎ»ÖÃ
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
//  467     Trk.RoadBlockLastWidth2 = Trk.Width2;//¼ÇÂ¼ÉÏÒ»´ÎÈüµÀ¿í¶È
        LDR.N    R0,??DataTable3
        LDR.N    R1,??DataTable3
        LDRB     R1,[R1, #+1646]
        STRB     R1,[R0, #+1741]
//  468     Trk.Width2 = Trk.right2[Trk.currentRight2] - Trk.left2[Trk.currentLeft2];//¼ÆËãÈüµÀ¿í¶È
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
//  469     Trk.AllDark2 = 0;//Çå0È«ºÚ±êÖ¾
        LDR.N    R0,??DataTable3
        MOVS     R1,#+0
        STRB     R1,[R0, #+1647]
//  470     Trk.BackCen2 = 0;//Çå0»ØÕý±êÖ¾
        LDR.N    R0,??DataTable3
        MOVS     R1,#+0
        STRB     R1,[R0, #+1648]
        B.N      ??FindCentralLine_54
//  471   }
//  472   else if(Trk.left2[Trk.currentLeft2]!=255 && Trk.right2[Trk.currentRight2]==255) //CCD2Ö»´æÔÚ×ó±ß
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
//  473   { //ÖÐÏßÎ»ÖÃ=×ó±ß+×ø±êÏµ×ª»»Æ«ÒÆÁ¿+ÈüµÀ¿í¶È/2
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
//  476     if(Trk.cen2[Trk.currentCen2] > 1200){Trk.cen2[Trk.currentCen2] = 1200;}//·ÀÖ¹Ô½½ç
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
//  477     if(Trk.cen2[Trk.currentCen2] < 1000 + CCD2AllDarkThreshold){Trk.AllDark2 = 0;}//ÖÐÏßÎ»ÖÃ³¬¹ýãÐÖµÅÐ¶ÏÎªÈ«°×
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
//  479     //±¾À´ÓÒ±ßÓ¦¸Ã´æÔÚ£¬µ«ÊÇÊµ¼ÊÉÏ²»´æÔÚ£¬ËµÃ÷ºÜ¿ÉÄÜÊÇÊ®×ÖÎóÅÐ
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
//  482     { Trk.cen2[Trk.currentCen2] = Trk.cen2[Trk.lastCen2];//±£³ÖÉÏ´Î´ò½Ç
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
//  484     Trk.BackCen2 = 0;//Çå0»ØÕý±êÖ¾
??FindCentralLine_59:
        LDR.N    R0,??DataTable3
        MOVS     R1,#+0
        STRB     R1,[R0, #+1648]
        B.N      ??FindCentralLine_54
//  485   }
//  486   else if(Trk.left2[Trk.currentLeft2]==255 && Trk.right2[Trk.currentRight2]!=255) //CCD2Ö»´æÔÚÓÒ±ß
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
//  487   { //ÖÐÏßÎ»ÖÃ=ÓÒ±ß+×ø±êÏµ×ª»»Æ«ÒÆÁ¿-ÈüµÀ¿í¶È/2
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
//  490     if(Trk.cen2[Trk.currentCen2] > 1200){Trk.cen2[Trk.currentCen2] = 0;}//·ÀÖ¹Ô½½ç
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
//  491     if(Trk.cen2[Trk.currentCen2] > 1000 - CCD2AllDarkThreshold){Trk.AllDark2 = 0;}//ÖÐÏßÎ»ÖÃ³¬¹ýãÐÖµÅÐ¶ÏÎªÈ«°×
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
//  493     //±¾À´×ó±ßÓ¦¸Ã´æÔÚ£¬µ«ÊÇÊµ¼ÊÉÏ²»´æÔÚ£¬ËµÃ÷ºÜ¿ÉÄÜÊÇÊ®×ÖÎóÅÐ
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
//  496     { Trk.cen2[Trk.currentCen2] = Trk.cen2[Trk.lastCen2];//±£³ÖÉÏ´Î´ò½Ç
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
//  498     Trk.BackCen2 = 0;//Çå0»ØÕý±êÖ¾
??FindCentralLine_64:
        LDR.N    R0,??DataTable3
        MOVS     R1,#+0
        STRB     R1,[R0, #+1648]
        B.N      ??FindCentralLine_54
//  499   }
//  500   else//CCD2Ë«±ß¶¼²»´æÔÚ
//  501   {
//  502     if(Trk.AllDark2 == 1){Trk.cen2[Trk.currentCen2] = Trk.cen2[Trk.lastCen2];}//ÈôÈ«ºÚ±êÖ¾Îª1£¬±£³ÖÉÏ´Î´ò½Ç
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
//  503     else if(Trk.BackCen2 == 0)//Èô»ØÕý±êÖ¾Îª0
??FindCentralLine_65:
        LDR.N    R0,??DataTable3
        LDRB     R0,[R0, #+1648]
        CMP      R0,#+0
        BNE.N    ??FindCentralLine_66
//  504     { Trk.BackCen2 = 1;Trk.BackCenRoad2 = Con.TotalRoad;Trk.BcakCenCen2 = Trk.cen2[Trk.lastCen2];//ÖÃ1»ØÕý±êÖ¾£¬¼ÇÂ¼»ØÕý¿ªÊ¼µÄ±äÁ¿
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
//  505       Trk.cen2[Trk.currentCen2] = Trk.cen2[Trk.lastCen2];//±£³ÖÉÏ´Î´ò½Ç   
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
//  507     else//´¦ÓÚ»ØÕý×´Ì¬
//  508     { Trk.BackCen2 = 1;//ÖÃ1»ØÕý±êÖ¾
??FindCentralLine_66:
        LDR.N    R0,??DataTable3
        MOVS     R1,#+1
        STRB     R1,[R0, #+1648]
//  509       //ÏÂÃæ¼ÆËã»ØÕý¹ý³ÌÖÐµÄÖÐÐÄ×ø±ê
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
//  519   //-------------------------CCD1¡¢CCD2ÖÐÏß¼ÆËãÍê±Ï£¬¿ªÊ¼¼ÆËãÖ±ÏßÏµÊý------------------------
//  520   //-----------------------------------------------------------------------------------------
//  521   //*****************************************************************************************
//  522   /*Trk.lastServerCoef = Trk.ServerCoef;//¼ÇÂ¼ÉÏÒ»´ÎµÄ¶æ»úÏµÊý
//  523   uint16 temp_offset1,temp_offset2;
//  524   if(Trk.cen1[Trk.currentCen1] >= 1000){temp_offset1 = Trk.cen1[Trk.currentCen1] - 1000;}//¼ÆËãCCD1ÖÐÏßÆ«²î
//  525   else {temp_offset1 = 1000 - Trk.cen1[Trk.currentCen1];}
//  526   if(Trk.cen2[Trk.currentCen2] >= 1000){temp_offset2 = Trk.cen2[Trk.currentCen2] - 1000;}//¼ÆËãCCD2ÖÐÏßÆ«²î
//  527   else {temp_offset2 = 1000 - Trk.cen2[Trk.currentCen2];}
//  528   
//  529   Trk.ServerCoef = 0.7 + (float)temp_offset2/60;//¸ù¾ÝÆ«²î¼ÆËã¶æ»úÏµÊý
//  530 
//  531   if(temp_offset2 > 60 && Trk.ServerCoefLock == 0)
//  532   { Trk.ServerCoefLock = 1;//¶æ»úÏµÊýËø¶¨±êÖ¾ÖÃ1
//  533     Trk.ServerLockRoad = Con.TotalRoad;//¼ÇÂ¼¿ªÊ¼Ëø¶¨µÄÂ·³Ì
//  534   }
//  535   if(Trk.ServerCoefLock == 1 && Con.TotalRoad  - Trk.ServerLockRoad > 5000)
//  536   { //CCD1ºÍCCD2Æ«²î¾ùÐ¡ÓÚÄ³Ò»Öµ£¬Çå0¶æ»úÏµÊýËø¶¨
//  537     if(temp_offset1 < 30 && temp_offset2 <30){Trk.ServerCoefLock = 0;}
//  538   }
//  539   if(Trk.ServerCoefLock == 1){Trk.ServerCoef = Trk.lastServerCoef;}
//  540   */
//  541   //*****************************************************************************************
//  542   //-----------------------------------------------------------------------------------------
//  543   //------------------------¸ù¾Ý¼ÆËã³öÀ´µÄÖ±ÏßÏµÊýÖØÐÂÕû¶¨CCD1µÄÖÐÐÄ×ø±ê---------------------
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
//  557 void SpecialStatus(void)//ÌØÊâ×´Ì¬ÅÐ¶Ï
//  558 {
//  559   //*****************************************************************************************
//  560   //-----------------------------------------------------------------------------------------
//  561   //--------------------------------------CCD2ÈË×Ö¼ì²â---------------------------------------
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
//  565   { //CCD2ÅÐ¶ÏÖ±µÀÈëÈË×Ö
//  566     if(Trk.left2[Trk.currentLeft2] == 255 && Trk.right2[Trk.currentRight2] != 255 //CCD2µ±Ç°¶ª×ó±ß
//  567        && Trk.left2[Trk.lastLeft2] != 255 && Trk.right2[Trk.lastRight2] != 255 //ÉÏ´ÎCCD2Ë«±ß´æÔÚ
//  568        && Trk.cen2[Trk.currentCen2] >= 1000 - 10 && Trk.cen2[Trk.currentCen2] <= 1000 + 10 //µ±Ç°CCD2ÖÐÏß´¦ÓÚÖÐÖµ¸½½ü
//  569        && Trk.cen1[Trk.currentCen1] >= 1000 - 10 && Trk.cen1[Trk.currentCen1] <= 1000 + 10 //µ±Ç°CCD1ÖÐÏß´¦ÓÚÖÐÖµ¸½½ü
//  570        && Trk.cen2[Trk.lastCen2] >= 1000 - 10 && Trk.cen2[Trk.lastCen2] <= 1000 + 10 //ÉÏ´ÎCCD2ÖÐÏß´¦ÓÚÖÐÖµ¸½½ü
//  571        && Trk.cen1[Trk.lastCen1] >= 1000 - 10 && Trk.cen1[Trk.lastCen1] <= 1000 + 10 //ÉÏ´ÎCCD1ÖÐÏß´¦ÓÚÖÐÖµ¸½½ü
//  572        && Trk.Width2 >= 0.9*CCD2TrkWidth //ÈüµÀ¿í¶È´óÓÚµÈÓÚÖ±µÀµÄ0.9±¶(·ÀÖ¹°ÑÕÏ°­ÎóÅÐ³ÉÈË×Ö)
//  573        && Trk.Width1 <= 1.1*CCD1TrkWidth //ÈüµÀ¿í¶È´óÓÚµÈÓÚÖ±µÀµÄ1.1±¶(·ÀÖ¹°ÑÅ·Ä·ÍäÎóÅÐ³ÉÈË×Ö)
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
//  575     { Trk.SpecialStatus = 11;Trk.HerringToConDir2 = 0;//ÈË×Ö×´Ì¬£º21//ÈË×Ö´ýÈ·ÈÏ·½ÏòÎª£º×ó
        LDR.W    R0,??SpecialStatus_0
        MOVS     R1,#+11
        STRB     R1,[R0, #+1692]
        LDR.W    R0,??SpecialStatus_0
        MOVS     R1,#+0
        STRB     R1,[R0, #+1720]
//  576       Trk.HerringToConRoad2 = Con.TotalRoad;//¼ÇÂ¼ÈË×Ö´ýÈ·ÈÏÂ·³Ì 
        LDR.W    R0,??SpecialStatus_0
        LDR.W    R1,??SpecialStatus_0+0x4
        LDR      R1,[R1, #+4]
        STR      R1,[R0, #+1716]
        B.N      ??SpecialStatus_3
//  577     }
//  578     else if(Trk.left2[Trk.currentLeft2] != 255 && Trk.right2[Trk.currentRight2] == 255 //µ±Ç°¶ªÓÒ±ß
//  579        && Trk.left2[Trk.lastLeft2] != 255 && Trk.right2[Trk.lastRight2] != 255 //ÉÏ´ÎCCD2Ë«±ß´æÔÚ
//  580        && Trk.cen2[Trk.currentCen2] >= 1000 - 10 && Trk.cen2[Trk.currentCen2] <= 1000 + 10 //µ±Ç°CCD2ÖÐÏß´¦ÓÚÖÐÖµ¸½½ü
//  581        && Trk.cen1[Trk.currentCen1] >= 1000 - 10 && Trk.cen1[Trk.currentCen1] <= 1000 + 10 //µ±Ç°CCD1ÖÐÏß´¦ÓÚÖÐÖµ¸½½ü
//  582        && Trk.cen2[Trk.lastCen2] >= 1000 - 10 && Trk.cen2[Trk.lastCen2] <= 1000 + 10 //ÉÏ´ÎCCD2ÖÐÏß´¦ÓÚÖÐÖµ¸½½ü
//  583        && Trk.cen1[Trk.lastCen1] >= 1000 - 10 && Trk.cen1[Trk.lastCen1] <= 1000 + 10 //ÉÏ´ÎCCD1ÖÐÏß´¦ÓÚÖÐÖµ¸½½ü
//  584        && Trk.Width2 >= 0.9*CCD2TrkWidth //ÈüµÀ¿í¶È´óÓÚµÈÓÚÖ±µÀµÄ0.9±¶(·ÀÖ¹°ÑÕÏ°­ÎóÅÐ³ÉÈË×Ö)
//  585        && Trk.Width1 <= 1.1*CCD1TrkWidth //ÈüµÀ¿í¶ÈÐ¡ÓÚÖ±µÀµÄ1.1±¶(·ÀÖ¹°ÑÅ·Ä·ÍäÎóÅÐ³ÉÈË×Ö)
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
//  587     { Trk.SpecialStatus = 11;Trk.HerringToConDir2 = 1;//ÈË×Ö×´Ì¬£º11//ÈË×Ö´ýÈ·ÈÏ·½ÏòÎª£ºÓÒ
        LDR.W    R0,??SpecialStatus_0
        MOVS     R1,#+11
        STRB     R1,[R0, #+1692]
        LDR.W    R0,??SpecialStatus_0
        MOVS     R1,#+1
        STRB     R1,[R0, #+1720]
//  588       Trk.HerringToConRoad2 = Con.TotalRoad;//¼ÇÂ¼ÈË×Ö´ýÈ·ÈÏÂ·³Ì 
        LDR.W    R0,??SpecialStatus_0
        LDR.W    R1,??SpecialStatus_0+0x4
        LDR      R1,[R1, #+4]
        STR      R1,[R0, #+1716]
        B.N      ??SpecialStatus_3
//  589     }
//  590   }
//  591   else if(Trk.SpecialStatus == 11 && Con.TotalRoad - Trk.HerringToConRoad2 >= 2000)//CCD2¼ì²âÈË×Ö´ýÈ·ÈÏ£¬´ýÈ·ÈÏ¹ýÁË2000¸öÂö³å
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
//  593     if(Trk.left2[Trk.currentLeft2] == 255 && Trk.right2[Trk.currentRight2] != 255 //CCD2µ±Ç°¶ª×ó±ß²»¶ªÓÒ±ß
//  594        && Trk.HerringToConDir2 == 0 //ÈË×Ö´ýÈ·ÈÏ·½ÏòÏò×ó
//  595        && Trk.cen2[Trk.currentCen2] >= 1000 - 10 && Trk.cen2[Trk.currentCen2] <= 1000 + 10 //µ±Ç°CCD2ÖÐÏß´¦ÓÚÖÐÖµ¸½½ü
//  596        && Trk.cen1[Trk.currentCen1] >= 1000 - 10 && Trk.cen1[Trk.currentCen1] <= 1000 + 10 //µ±Ç°CCD1ÖÐÏß´¦ÓÚÖÐÖµ¸½½ü
//  597        && Trk.Width2 >= 0.9*CCD2TrkWidth //ÈüµÀ¿í¶È´óÓÚµÈÓÚÖ±µÀµÄ0.9±¶(·ÀÖ¹°ÑÕÏ°­ÎóÅÐ³ÉÈË×Ö)
//  598        && Trk.Width1 <= 1.1*CCD1TrkWidth //ÈüµÀ¿í¶ÈÐ¡ÓÚµÈÓÚÖ±µÀµÄ1.1±¶(·ÀÖ¹°ÑÅ·Ä·ÍäÎóÅÐ³ÉÈË×Ö)
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
//  600     { Trk.SpecialStatus = 12;Trk.HerringRoad2 = Con.TotalRoad;//ÈË×Ö×´Ì¬£º2//¼ÇÂ¼½øÈëÈË×ÖµÄÂ·³Ì
        LDR.W    R0,??SpecialStatus_0
        MOVS     R1,#+12
        STRB     R1,[R0, #+1692]
        LDR.W    R0,??SpecialStatus_0
        LDR.W    R1,??SpecialStatus_0+0x4
        LDR      R1,[R1, #+4]
        STR      R1,[R0, #+1724]
//  601       Trk.HerringDir2 = 0;//¼ÇÂ¼½øÈëÈË×ÖµÄ·½Ïò£º×ó
        LDR.W    R0,??SpecialStatus_0
        MOVS     R1,#+0
        STRB     R1,[R0, #+1732]
//  602       Give.forceSpeed = 1;//Ç¿ÖÆ¸ø¶¨ËÙ¶È£ºÈË×Ö
        LDR.W    R0,??SpecialStatus_6
        MOVS     R1,#+1
        STRH     R1,[R0, #+2]
//  603       Give.MotorHerringSpeed = 100;//ÈË×Ö×ªÏò¸ø¶¨ËÙ¶ÈÎª90
        LDR.W    R0,??SpecialStatus_6
        MOVS     R1,#+100
        STRH     R1,[R0, #+6]
//  604       //¼ÆËãÈË×Ö¿ªÊ¼×ªÏòµÄÂ·³Ì=0ËÙ¶È×ªÏòÂö³åÊý(4500) - ËÙ¶È/5*190£¬ÆäÖÐ190Îª¶æ»ú´ò½ÇÏìÓ¦Ê±¼ä190ms
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
//  610     else if(Trk.left2[Trk.currentLeft2] != 255 && Trk.right2[Trk.currentRight2] == 255 //µ±Ç°¶ªÓÒ±ß²»¶ª×ó±ß
//  611         && Trk.HerringToConDir2 == 1 //ÈË×Ö´ýÈ·ÈÏ·½ÏòÏòÓÒ
//  612         && Trk.cen2[Trk.currentCen2] >= 1000 - 10 && Trk.cen2[Trk.currentCen2] <= 1000 + 10 //µ±Ç°CCD2ÖÐÏß´¦ÓÚÖÐÖµ¸½½ü
//  613         && Trk.cen1[Trk.currentCen1] >= 1000 - 10 && Trk.cen1[Trk.currentCen1] <= 1000 + 10 //µ±Ç°CCD1ÖÐÏß´¦ÓÚÖÐÖµ¸½½ü
//  614         && Trk.Width2 >= 0.9*CCD2TrkWidth //ÈüµÀ¿í¶È´óÓÚµÈÓÚÖ±µÀµÄ0.9±¶(·ÀÖ¹°ÑÕÏ°­ÎóÅÐ³ÉÈË×Ö)
//  615         && Trk.Width1 <= 1.1*CCD1TrkWidth //ÈüµÀ¿í¶È´óÓÚµÈÓÚÖ±µÀµÄ1.1±¶(·ÀÖ¹°ÑÅ·Ä·ÍäÎóÅÐ³ÉÈË×Ö)
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
//  617     { Trk.SpecialStatus = 12;Trk.HerringRoad2 = Con.TotalRoad;//ÈË×Ö×´Ì¬£º2//¼ÇÂ¼½øÈëÈË×ÖµÄÂ·³Ì
        LDR.W    R0,??SpecialStatus_0
        MOVS     R1,#+12
        STRB     R1,[R0, #+1692]
        LDR.W    R0,??SpecialStatus_0
        LDR.W    R1,??SpecialStatus_0+0x4
        LDR      R1,[R1, #+4]
        STR      R1,[R0, #+1724]
//  618       Trk.HerringDir2 = 1;//¼ÇÂ¼½øÈëÈË×ÖµÄ·½Ïò£ºÓÒ
        LDR.W    R0,??SpecialStatus_0
        MOVS     R1,#+1
        STRB     R1,[R0, #+1732]
//  619       Give.forceSpeed = 1;//Ç¿ÖÆ¸ø¶¨ËÙ¶È£ºÈË×Ö
        LDR.W    R0,??SpecialStatus_6
        MOVS     R1,#+1
        STRH     R1,[R0, #+2]
//  620       Give.MotorHerringSpeed = 160;//ÈË×Ö×ªÏò¸ø¶¨ËÙ¶ÈÎª100
        LDR.W    R0,??SpecialStatus_6
        MOVS     R1,#+160
        STRH     R1,[R0, #+6]
//  621       //¼ÆËãÈË×Ö¿ªÊ¼×ªÏòµÄÂ·³Ì=0ËÙ¶È×ªÏòÂö³åÊý(4500) - ËÙ¶È/5*190£¬ÆäÖÐ190Îª¶æ»ú´ò½ÇÏìÓ¦Ê±¼ä190ms
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
//  627     else{Give.forceDir = 0;Give.forceSpeed = 0;Trk.SpecialStatus = 0;}//Î´Í¨¹ýCCD2ÈË×Ö¼ì²âÈ·ÈÏ
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
//  629   else if(Trk.SpecialStatus == 12)//CCD2¼ì²âÈË×ÖÒÑÈ·ÈÏ£¬Î´×ªÏò
??SpecialStatus_4:
        LDR.W    R0,??SpecialStatus_0
        LDRB     R0,[R0, #+1692]
        CMP      R0,#+12
        BNE.N    ??SpecialStatus_10
//  630   { if(Con.TotalRoad - Trk.HerringRoad2 >= Trk.HerringTurnRoad2)//CCD2ÈË×ÖÈ·ÈÏºóÒ»¶ÎÂ·³Ì¿ªÊ¼×ªÏò
        LDR.W    R0,??SpecialStatus_0+0x4
        LDR      R0,[R0, #+4]
        LDR.W    R1,??SpecialStatus_0
        LDR      R1,[R1, #+1724]
        SUBS     R0,R0,R1
        LDR.W    R1,??SpecialStatus_0
        LDR      R1,[R1, #+1728]
        CMP      R0,R1
        BCC.W    ??SpecialStatus_3
//  631     { Trk.SpecialStatus = 13;Give.forceDir = 1;//ÈË×Ö×´Ì¬£º3//Ç¿ÖÆ´ò½ÇÀ´Ô´£º1-ÈË×Ö   
        LDR.W    R0,??SpecialStatus_0
        MOVS     R1,#+13
        STRB     R1,[R0, #+1692]
        LDR.W    R0,??SpecialStatus_6
        MOVS     R1,#+1
        STRB     R1,[R0, #+1]
//  632       if(Trk.HerringDir2 == 0){Give.SerHerringPWM = 0;}else{Give.SerHerringPWM = 200;}//Ç¿ÖÆ¸ø¶¨ÈË×Ö´ò½ÇPWM
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
//  635   else if(Trk.SpecialStatus == 13)//CCD2¼ì²âÈË×Ö×ªÏòÖÐ
??SpecialStatus_10:
        LDR.W    R0,??SpecialStatus_0
        LDRB     R0,[R0, #+1692]
        CMP      R0,#+13
        BNE.N    ??SpecialStatus_12
//  636   { if(Trk.HerringDir2 == 0){Give.SerHerringPWM = 0;}else{Give.SerHerringPWM = 200;}//Ç¿ÖÆ¸ø¶¨ÈË×Ö´ò½ÇPWM
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
//  637     if(Con.TotalRoad - Trk.HerringRoad2 >= Trk.HerringTurnRoad2 + 10000)//CCD2ÈË×Ö×ªÏòºóÒ»¶ÎÂ·³Ì¿ªÊ¼ÖØÑ°ÖÐÏß
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
//  638     { Trk.SpecialStatus = 14;//ÈË×Ö×´Ì¬£º4
        LDR.W    R0,??SpecialStatus_0
        MOVS     R1,#+14
        STRB     R1,[R0, #+1692]
//  639       Trk.cen2[Trk.currentCen2]=1000;//ÖØÐÂ¸ø¶¨CCD2ÖÐÏß£¬ÈÃCCD2´ÓÖÐµã¿ªÊ¼Ñ°ÕÒºÚ±ß
        LDR.W    R0,??SpecialStatus_0
        LDRH     R0,[R0, #+1642]
        LDR.W    R1,??SpecialStatus_0
        ADDS     R0,R1,R0, LSL #+1
        MOV      R1,#+1000
        STRH     R1,[R0, #+1242]
        B.N      ??SpecialStatus_3
//  640     }
//  641   }
//  642   else if(Trk.SpecialStatus == 14)//CCD2¼ì²âÈË×ÖÖØÑ°ÖÐÏß
??SpecialStatus_12:
        LDR.W    R0,??SpecialStatus_0
        LDRB     R0,[R0, #+1692]
        CMP      R0,#+14
        BNE.N    ??SpecialStatus_3
//  643   { if(Trk.cen2[Trk.currentCen2] >= 1000 - 20 && Trk.cen2[Trk.currentCen2] <= 1000 + 20 //CCD2ÖÐÏß´¦ÓÚÖÐÖµ¸½½ü
//  644        && Trk.left2[Trk.currentLeft2] != 255 && Trk.right2[Trk.currentRight2] != 255 //CCD2Ë«±ß´æÔÚ
//  645        && Trk.Width2 >= 0.9*CCD2TrkWidth && Trk.Width2 <= 1.1*CCD2TrkWidth //CCD2¼ì²âµ½µÄÈüµÀ¿í¶ÈÔÚÕý³£·¶Î§ÄÚ
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
//  647     { Give.forceDir = 0;Give.forceSpeed = 0;Trk.SpecialStatus = 0;//È¡ÏûÇ¿ÖÆ´ò½ÇÀ´Ô´ºÍ¸ø¶¨ËÙ¶È£¬ÍË³öÈË×Ö
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
//  650     { if(Trk.HerringDir2 == 0){Give.SerHerringPWM = 0;}else{Give.SerHerringPWM = 200;}//Ç¿ÖÆ¸ø¶¨ÈË×Ö´ò½ÇPWM
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
//  651       Trk.cen2[Trk.currentCen2]=1000;//ÖØÐÂ¸ø¶¨CCD2ÖÐÏß£¬ÈÃCCD2´ÓÖÐµã¿ªÊ¼Ñ°ÕÒºÚ±ß
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
//  656   //--------------------------------------CCD2Â·ÕÏ¼ì²â---------------------------------------
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
//  660   { if(Trk.left2[Trk.currentLeft2] != 255 && Trk.right2[Trk.currentRight2] != 255 //µ±Ç°CCD2Ë«±ß´æÔÚ
//  661        && Trk.Width2 <= 0.75*CCD2TrkWidth//µ±Ç°CCD2ÈüµÀ¿í¶ÈÐ¡ÓÚÕý³£Ö±µÀ¿í¶ÈµÄ0.75±¶
//  662        && Trk.Width1 >= 0.9*CCD1TrkWidth//µ±Ç°CCD1ÈüµÀ¿í¶È´óÓÚµÈÓÚÕý³£Ö±µÀ¿í¶ÈµÄ0.9±¶(·ÀÖ¹ÓëÆÂµÀÎóÅÐ)
//  663        && Trk.cen2[Trk.currentCen2] > 1000 - 20 && Trk.cen2[Trk.currentCen2] < 1000 + 20 //µ±Ç°ÖÐÐÄ×ø±êÃ»ÓÐÆ«ÀëÖÐÐÄÌ«¶à
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
//  665     { Trk.SpecialStatus = 31;//ÌØÊâ×´Ì¬£ºÂ·ÕÏ´ýÈ·ÈÏ
        LDR.W    R0,??SpecialStatus_0
        MOVS     R1,#+31
        STRB     R1,[R0, #+1692]
//  666       Trk.RoadBlockWidth2 = Trk.Width2;Trk.RoadBlockRoad2 = Con.TotalRoad;//¼ÇÂ¼ÈüµÀ¿í¶È//¼ÇÂ¼Â·ÕÏ´ýÈ·ÈÏµÄÂ·³Ì
        LDR.W    R0,??SpecialStatus_0
        LDR.W    R1,??SpecialStatus_0
        LDRB     R1,[R1, #+1646]
        STRB     R1,[R0, #+1742]
        LDR.W    R0,??SpecialStatus_0
        LDR.W    R1,??SpecialStatus_0+0x4
        LDR      R1,[R1, #+4]
        STR      R1,[R0, #+1744]
//  667       if(Trk.cen2[Trk.currentCen2] <= 1000){Trk.RoadBlockDir2 = 0;}else{Trk.RoadBlockDir2 = 1;}//¼ÇÂ¼Â·ÕÏ·½Ïò
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
//  670   else if(Trk.SpecialStatus == 31 && Con.TotalRoad - Trk.RoadBlockRoad2 >= 800)//Â·ÕÏ´ýÈ·ÈÏ¾­¹ý800¸öÂö³å
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
//  672     if(Trk.left2[Trk.currentLeft2] != 255 && Trk.right2[Trk.currentRight2] != 255 //µ±Ç°CCD2Ë«±ß´æÔÚ
//  673        && Trk.Width2 <= 0.75*CCD2TrkWidth//µ±Ç°ÈüµÀ¿í¶ÈÐ¡ÓÚÕý³£Ö±µÀ¿í¶ÈµÄ0.75±¶
//  674        && Trk.cen2[Trk.currentCen2] > 1000 - 20 && Trk.cen2[Trk.currentCen2] < 1000 + 20 //µ±Ç°ÖÐÐÄ×ø±êÃ»ÓÐÆ«ÀëÖÐÐÄÌ«¶à
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
//  676     { Trk.SpecialStatus = 32;//ÌØÊâ×´Ì¬£ºÂ·ÕÏÈ·ÈÏ
        LDR.W    R0,??SpecialStatus_0
        MOVS     R1,#+32
        STRB     R1,[R0, #+1692]
//  677       Give.forceSpeed = 2;//Ç¿ÖÆ¸ø¶¨ËÙ¶È£º2-Â·ÕÏËÙ¶È
        LDR.W    R0,??SpecialStatus_6
        MOVS     R1,#+2
        STRH     R1,[R0, #+2]
//  678       Give.MotorRoadBlockSpeed = 200;//Â·ÕÏ¸ø¶¨ËÙ¶È
        LDR.W    R0,??SpecialStatus_6
        MOVS     R1,#+200
        STRH     R1,[R0, #+8]
        B.N      ??SpecialStatus_19
//  679     }
//  680     else{Trk.SpecialStatus = 0;}//Î´Í¨¹ýÂ·ÕÏÈ·ÈÏ
??SpecialStatus_22:
        LDR.W    R0,??SpecialStatus_0
        MOVS     R1,#+0
        STRB     R1,[R0, #+1692]
        B.N      ??SpecialStatus_19
//  681   }
//  682   else if(Trk.SpecialStatus == 32)//Â·ÕÏÈ·ÈÏ
??SpecialStatus_21:
        LDR.W    R0,??SpecialStatus_0
        LDRB     R0,[R0, #+1692]
        CMP      R0,#+32
        BNE.W    ??SpecialStatus_19
//  683   {
//  684     if(Con.TotalRoad - Trk.RoadBlockRoad2 < 16000)//µ±Ç°´¦ÓÚÂ·ÕÏ³¤¶ÈÖ®ÖÐ
        LDR.W    R0,??SpecialStatus_0+0x4
        LDR      R0,[R0, #+4]
        LDR.W    R1,??SpecialStatus_0
        LDR      R1,[R1, #+1744]
        SUBS     R0,R0,R1
        CMP      R0,#+16000
        BCS.W    ??SpecialStatus_23
//  685     { //ÖØÐÂ¼ÆËãCCD2ÖÐÐÄ×ø±ê
//  686       if(Trk.RoadBlockDir2 == 0 && Trk.left2[Trk.currentLeft2] != 255)//Ïò×ó×ßÇÒ×ó±ß´æÔÚ
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
//  691       else if(Trk.RoadBlockDir2 == 0 && Trk.left2[Trk.currentLeft2] == 255){Trk.cen2[Trk.currentCen2] = 1000;}//×ó±ß²»´æÔÚ
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
//  692       else if(Trk.RoadBlockDir2 == 1 && Trk.right2[Trk.currentRight2] != 255)//ÏòÓÒ×ßÇÒÓÒ±ß´æÔÚ
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
//  693       { Trk.cen2[Trk.currentCen2] = 937 + Trk.right2[Trk.currentRight2] - Trk.RoadBlockWidth2/2 + 0;//ÖØÐÂ¼ÆËãÖÐÐÄ×ø±ê
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
//  697       else if(Trk.RoadBlockDir2 == 1 && Trk.right2[Trk.currentRight2] == 255){Trk.cen2[Trk.currentCen2] = 1000;}//ÓÒ±ß²»´æÔÚ
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
//  698       //ÖØÐÂ¼ÆËãCCD1ÖÐÐÄ×ø±ê
//  699       if(Trk.RoadBlockDir2 == 0 && Trk.left1[Trk.currentLeft1] != 255)//Ïò×ó×ßÇÒ×ó±ß´æÔÚ
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
//  704       else if(Trk.RoadBlockDir2 == 0 && Trk.left1[Trk.currentLeft1] == 255){Trk.cen1[Trk.currentCen1] = 1000;}//×ó±ß²»´æÔÚ
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
//  705       else if(Trk.RoadBlockDir2 == 1 && Trk.right1[Trk.currentRight1] != 255)//ÏòÓÒ×ßÇÒÓÒ±ß´æÔÚ
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
//  706       { Trk.cen1[Trk.currentCen1] = 937 + Trk.right1[Trk.currentRight1] - Trk.RoadBlockWidth2/2 + 0;//ÖØÐÂ¼ÆËãÖÐÐÄ×ø±ê
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
//  710       else if(Trk.RoadBlockDir2 == 1 && Trk.right1[Trk.currentRight1] == 255){Trk.cen1[Trk.currentCen1] = 1000;}//ÓÒ±ß²»´æÔÚ
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
//  712     else{ Give.forceSpeed = 0;Trk.SpecialStatus = 0;}//È¡ÏûÇ¿ÖÆ¸ø¶¨ËÙ¶È£¬ÍË³öÂ·ÕÏ
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
//  716   //----------------------------------------ÆÂµÀ¼ì²â-----------------------------------------
//  717   //-----------------------------------------------------------------------------------------
//  718   //*****************************************************************************************
//  719   //if(Con.EnableRamp == 1 && Con.Run == 2 && Trk.SpecialStatus == 0)
//  720   if(Con.EnableRamp == 1&& Con.Run == 2 && Trk.SpecialStatus == 0
//  721      && Trk.cen1[Trk.currentCen1] < 1000+10 && Trk.cen1[Trk.currentCen1] > 1000-10 //µ±Ç°CCD1ÖÐÏß´¦ÓÚÖÐÖµ¸½½ü    
//  722      && Trk.cen2[Trk.currentCen2] < 1000+10 && Trk.cen2[Trk.currentCen2] > 1000-10 //µ±Ç°CCD2ÖÐÏß´¦ÓÚÖÐÖµ¸½½ü
//  723      && Trk.left2[Trk.currentLeft2] != 255 && Trk.right2[Trk.currentRight2] != 255 //µ±Ç°CCD2Ë«±ß´æÔÚ
//  724      && Trk.left1[Trk.currentLeft1] != 255 && Trk.right1[Trk.currentRight1] != 255 //µ±Ç°CCD1Ë«±ß´æÔÚ
//  725      && Trk.Width1 >= 1.2*CCD1TrkWidth //CCD1ÈüµÀ¿í¶È´óÓÚ1.2±¶Õý³£Ö±µÀ¿í¶È
//  726      && Trk.Width2 >= 1.25*CCD2TrkWidth //CCD2ÈüµÀ¿í¶È´óÓÚ1.25±¶Õý³£Ö±µÀ¿í¶È
//  727      //&& (Trk.RampRoad1 == 0 || (Trk.RampRoad1 != 0 && Con.TotalRoad - Trk.RampRoad1 >= 60000) )//·ÀÖ¹ÆÂµÀÉÏÁ¬Ðø¼ì²â
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
//  729   {   Trk.SpecialStatus = 41;//ÌØÊâ×´Ì¬£ºÆÂµÀ
        LDR.N    R0,??SpecialStatus_0
        MOVS     R1,#+41
        STRB     R1,[R0, #+1692]
//  730       Trk.RampRoad1 = Con.TotalRoad;//¼ÇÂ¼¼ì²âµ½ÆÂµÀµÄÂ·³Ì
        LDR.N    R0,??SpecialStatus_0
        LDR.N    R1,??SpecialStatus_0+0x4
        LDR      R1,[R1, #+4]
        STR      R1,[R0, #+1768]
//  731       Trk.RampTime1 = Con.TotalTime;//¼ÇÂ¼¼ì²âµ½ÆÂµÀµÄÊ±¼ä  
        LDR.N    R0,??SpecialStatus_0
        LDR.N    R1,??SpecialStatus_0+0x4
        LDR      R1,[R1, #+8]
        STR      R1,[R0, #+1772]
        B.N      ??SpecialStatus_36
//  732   }
//  733   else if(Trk.SpecialStatus == 41)//ÆÂµÀ´ýÈ·ÈÏ
??SpecialStatus_35:
        LDR.N    R0,??SpecialStatus_0
        LDRB     R0,[R0, #+1692]
        CMP      R0,#+41
        BNE.N    ??SpecialStatus_37
//  734   {
//  735     if(Gyroscope.Gyroscope[Gyroscope.currentGyro] < 87 //ÍÓÂÝÒÇÖµÐ¡ÓÚÄ³Ò»Öµ
//  736        && Trk.Width1 >= 1.1*CCD1TrkWidth //ÈüµÀ¿í¶È´óÓÚµÈÓÚ1.1±¶Õý³£Ö±µÀ¿í¶È
//  737        && Trk.cen1[Trk.currentCen1] < 1000+10 && Trk.cen1[Trk.currentCen1] > 1000-10 //µ±Ç°CCD1ÖÐÏß´¦ÓÚÖÐÖµ¸½½ü 
//  738        && Trk.left1[Trk.currentLeft1] != 255 && Trk.right1[Trk.currentRight1] != 255 //µ±Ç°CCD1Ë«±ß´æÔÚ
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
//  740     { Trk.SpecialStatus = 42;//ÌØÊâ×´Ì¬£ºÆÂµÀÈ·ÈÏ
        LDR.N    R0,??SpecialStatus_0
        MOVS     R1,#+42
        STRB     R1,[R0, #+1692]
//  741       Give.forceSpeed = 3;//Ç¿ÖÆ¸ø¶¨ËÙ¶ÈÀ´Ô´£ºÆÂµÀËÙ¶È
        LDR.W    R0,??SpecialStatus_6
        MOVS     R1,#+3
        STRH     R1,[R0, #+2]
//  742       Give.MotorRampSpeed = 150;//Ç¿ÖÆ¸ø¶¨ÆÂµÀËÙ¶È150
        LDR.W    R0,??SpecialStatus_6
        MOVS     R1,#+150
        STRH     R1,[R0, #+10]
//  743       if(Trk.cen2[Trk.currentCen2] > 1000+10){Trk.cen2[Trk.currentCen2] = 1010;}//·ÀÖ¹ÆÂµÀÂÒ´ò½Ç
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
//  744       if(Trk.cen2[Trk.currentCen2] < 1000-10){Trk.cen2[Trk.currentCen2] = 990;}//·ÀÖ¹ÆÂµÀÂÒ´ò½Ç
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
//  746     if(Con.TotalRoad - Trk.RampRoad1 > 4000)//Î´Í¨¹ýÆÂµÀÈ·ÈÏ
??SpecialStatus_38:
        LDR.N    R0,??SpecialStatus_0+0x4
        LDR      R0,[R0, #+4]
        LDR.N    R1,??SpecialStatus_0
        LDR      R1,[R1, #+1768]
        SUBS     R0,R0,R1
        CMP      R0,#+4000
        BLS.N    ??SpecialStatus_36
//  747     { Trk.SpecialStatus = 0;//Çå0ÌØÊâ×´Ì¬
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
//  750   else if(Trk.SpecialStatus == 42)//ÆÂµÀÈ·ÈÏ
??SpecialStatus_37:
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+1692]
        CMP      R0,#+42
        BNE.N    ??SpecialStatus_36
//  751   { if(Trk.cen2[Trk.currentCen2] > 1000+10){Trk.cen2[Trk.currentCen2] = 1010;}//·ÀÖ¹ÆÂµÀÂÒ´ò½Ç
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
//  752     if(Trk.cen2[Trk.currentCen2] < 1000-10){Trk.cen2[Trk.currentCen2] = 990;}//·ÀÖ¹ÆÂµÀÂÒ´ò½Ç
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
//  753     if(Con.TotalRoad - Trk.RampRoad1 > 33000 //³¬¹ýÆÂµÀÂ·³Ì
//  754        || (Trk.Width1 >= 1.1*CCD1TrkWidth //ÈüµÀ¿í¶È´óÓÚµÈÓÚ1.1±¶Õý³£Ö±µÀ¿í¶È(¿ÉÄÜÊÇÏÂÆÂ²Å¼ì²âµ½£¬È»ºóÈëÍä)
//  755            &&(Trk.cen1[Trk.currentCen1] > 1000+20 || Trk.cen1[Trk.currentCen1] < 1000-20)) //µ±Ç°CCD1ÖÐÏß²»´¦ÓÚÖÐÖµ¸½½ü
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
//  757     { Trk.SpecialStatus = 0;//Çå0ÌØÊâ×´Ì¬
??SpecialStatus_42:
        LDR.W    R0,??DataTable4_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+1692]
//  758       Give.forceSpeed = 0;//È¡ÏûÇ¿ÖÆ¸ø¶¨ËÙ¶È
        LDR.N    R0,??SpecialStatus_6
        MOVS     R1,#+0
        STRH     R1,[R0, #+2]
//  759     }
//  760   }
//  761   //*****************************************************************************************
//  762   //-----------------------------------------------------------------------------------------
//  763   //---------------------------------------ÆðÅÜÏß¼ì²â----------------------------------------
//  764   //-----------------------------------------------------------------------------------------
//  765   //*****************************************************************************************
//  766   if(Con.EnableStartline == 1 && Trk.SpecialStatus != 41 && Trk.SpecialStatus != 42
//  767      && Con.Run == 2 && Trk.StartLine == 0)//µÚÒ»´Î¼ì²âÆðÅÜÏß
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
//  768   { //Á½¸öºìÍâ¹ÜÍ¬Ê±ÎªµÍµçÆ½ÅÐ¶ÏÎª¼ì²âµ½ÆðÅÜÏß£¨´¦ÓÚÆÂµÀÊ±²»¼ì²â£©
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
//  770     { //¼ÇÂ¼µÚÒ»´Î¼ì²âµ½ÆðÅÜÏßÊ±µÄÊ±¼äºÍÂ·³Ì
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
//  777   if(Con.EnableStartline == 1 && Trk.SpecialStatus != 41 && Con.Run == 2 && Trk.StartLine == 1)//µÚ¶þ´Î¼ì²âÆðÅÜÏß
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
//  778   { //µÚÒ»´ÎÆðÅÜÏßÍùºó2Ãë²¢ÇÒÂ·³Ì³¬¹ý5000¸öÂö³å²Å¼ì²âµÚ¶þ´Î
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
//  780     { //Á½¸öºìÍâ¹ÜÍ¬Ê±ÎªµÍµçÆ½ÅÐ¶ÏÎª¼ì²âµ½ÆðÅÜÏß£¨´¦ÓÚÆÂµÀÊ±²»¼ì²â£©
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
//  782       { //¼ÇÂ¼µÚ¶þ´Î¼ì²âµ½ÆðÅÜÏßÊ±µÄÊ±¼äºÍÂ·³Ì
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
//  786         Con.Run = 3;//½øÈëÍ£Ö¹½×¶Î
        LDR.W    R0,??DataTable4_2
        MOVS     R1,#+3
        STRB     R1,[R0, #+12]
//  787         Trk.SpecialStatus = 71;//ÌØÊâ×´Ì¬±êÖ¾¸ÄÎª£ºµÚ¶þ´ÎÆðÅÜÏßÍ£³µ
        LDR.W    R0,??DataTable4_1
        MOVS     R1,#+71
        STRB     R1,[R0, #+1692]
//  788         Give.forceSpeed = 10;//Ç¿ÖÆ¸ø¶¨ËÙ¶È0
        LDR.N    R0,??SpecialStatus_6
        MOVS     R1,#+10
        STRH     R1,[R0, #+2]
//  789       }
//  790     }
//  791   }
//  792   //*****************************************************************************************
//  793   //-----------------------------------------------------------------------------------------
//  794   //--------------------------------------³å³öÈüµÀ¼ì²â---------------------------------------
//  795   //-----------------------------------------------------------------------------------------
//  796   //*****************************************************************************************
//  797   if(Con.EnableCrash == 1 & Con.Run == 2 && Trk.SpecialStatus != 41 && Trk.SpecialStatus != 42 
//  798      && Trk.SpecialStatus != 71
//  799      && Con.TotalTime - Con.Run2time > 2000
//  800      && Con.TotalRoad - Con.Run2road > 20000)//ÕýÊ½ÆðÅÜ½×¶Î2ÃëÄÚ²»¼ì²â³å³öÈüµÀ£¬·ÀÖ¹ÆðÅÜÏßÎó¼ì²â
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
//  802     { //ÈôÖ»ÓÐ×ó¶Ô¹Ü¼ì²âµ½µÍµçÆ½
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
//  804       { Trk.SpecialStatus = 51;//ÓÐÒ»¸ö¶Ô¹Ü¼ì²âµ½µÍµçÆ½£¬³å³öÈüµÀ´ýÈ·ÈÏ
        LDR.W    R0,??DataTable4_1
        MOVS     R1,#+51
        STRB     R1,[R0, #+1692]
//  805         Trk.CrashFirst = 0;//Ê×ÏÈ×ó¶Ô¹Ü¼ì²âµ½µÍµçÆ½
        LDR.W    R0,??DataTable4_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+1780]
//  806         Trk.CrashRoad = Con.TotalRoad;//¼ÇÂ¼µÚÒ»¸ö¶Ô¹Ü¼ì²âµ½µÍµçÆ½µÄÂ·³Ì
        LDR.W    R0,??DataTable4_1
        LDR.W    R1,??DataTable4_2
        LDR      R1,[R1, #+4]
        STR      R1,[R0, #+1776]
        B.N      ??SpecialStatus_45
//  807       }
//  808       //ÈôÖ»ÓÐÓÒ¶Ô¹Ü¼ì²âµ½µÍµçÆ½
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
//  810       { Trk.SpecialStatus = 51;//ÓÐÒ»¸ö¶Ô¹Ü¼ì²âµ½µÍµçÆ½£¬³å³öÈüµÀ´ýÈ·ÈÏ
        LDR.W    R0,??DataTable4_1
        MOVS     R1,#+51
        STRB     R1,[R0, #+1692]
//  811         Trk.CrashFirst = 1;//Ê×ÏÈÓÒ¶Ô¹Ü¼ì²âµ½µÍµçÆ½
        LDR.W    R0,??DataTable4_1
        MOVS     R1,#+1
        STRB     R1,[R0, #+1780]
//  812         Trk.CrashRoad = Con.TotalRoad;//¼ÇÂ¼µÚÒ»¸ö¶Ô¹Ü¼ì²âµ½µÍµçÆ½µÄÂ·³Ì
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
//  816     { //Èô3000¸öÂö³å¹ýÈ¥Ã»ÓÐ¼ì²âµ½ÁíÒ»¸ö¶Ô¹ÜµÍµçÆ½£¬ÔòÈ¡ÏûÈ«ºÚ
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
//  818       //ÈôÁíÒ»¸ö¶Ô¹ÜÒ²¼ì²âµ½µÍµçÆ½
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
//  821       { Trk.SpecialStatus = 52;//È·ÈÏ³å³öÈüµÀ
        LDR.N    R0,??DataTable4_1
        MOVS     R1,#+52
        STRB     R1,[R0, #+1692]
//  822         Con.Run = 3;//Í£³µ
        LDR.N    R0,??DataTable4_2
        MOVS     R1,#+3
        STRB     R1,[R0, #+12]
//  823         Give.forceSpeed = 10;//Ç¿ÖÆ¸ø¶¨ËÙ¶È0
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
//  827       { Trk.SpecialStatus = 52;//È·ÈÏ³å³öÈüµÀ
        LDR.N    R0,??DataTable4_1
        MOVS     R1,#+52
        STRB     R1,[R0, #+1692]
//  828         Con.Run = 3;//Í£³µ
        LDR.N    R0,??DataTable4_2
        MOVS     R1,#+3
        STRB     R1,[R0, #+12]
//  829         Give.forceSpeed = 10;//Ç¿ÖÆ¸ø¶¨ËÙ¶È0
        LDR.W    R0,??DataTable5
        MOVS     R1,#+10
        STRH     R1,[R0, #+2]
//  830       }
//  831     }
//  832   }
//  833   //*****************************************************************************************
//  834   //-----------------------------------------------------------------------------------------
//  835   //-------------------------------------°´¼üÆðÅÜ¡¢Í£³µ--------------------------------------
//  836   //-----------------------------------------------------------------------------------------
//  837   //*****************************************************************************************
//  838   if(Con.Run == 0)
??SpecialStatus_45:
        LDR.N    R0,??DataTable4_2
        LDRB     R0,[R0, #+12]
        CMP      R0,#+0
        BNE.N    ??SpecialStatus_50
//  839   { if(Con.Run_Button == 1){Con.Run = 1;}//ÆðÅÜ°´¼ü°´ÏÂ½øÈëÔ¤ÆðÅÜ½×¶Î
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
//  843     { Con.Run = 3;//ÆðÅÜ°´¼ü°´ÏÂ½øÈëÍ£³µ½×¶Î 
        LDR.N    R0,??DataTable4_2
        MOVS     R1,#+3
        STRB     R1,[R0, #+12]
//  844       Trk.SpecialStatus = 81;//ÌØÊâ×´Ì¬±êÖ¾¸ÄÎª£º°´¼üÍ£³µ
        LDR.N    R0,??DataTable4_1
        MOVS     R1,#+81
        STRB     R1,[R0, #+1692]
//  845       Give.forceSpeed = 10;//Ç¿ÖÆ¸ø¶¨ËÙ¶È0
        LDR.W    R0,??DataTable5
        MOVS     R1,#+10
        STRH     R1,[R0, #+2]
//  846     }
//  847   }
//  848   //*****************************************************************************************
//  849   //-----------------------------------------------------------------------------------------
//  850   //----------------------------------------5 ÃëÊÔÅÜ-----------------------------------------
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
//  854   { Con.Run = 3;//½øÈëÍ£Ö¹½×¶Î
        LDR.N    R0,??DataTable4_2
        MOVS     R1,#+3
        STRB     R1,[R0, #+12]
//  855     Trk.SpecialStatus = 61;//ÌØÊâ×´Ì¬±êÖ¾¸ÄÎª£ºÊÔÅÜÊ±¼äµ½Í£³µ
        LDR.N    R0,??DataTable4_1
        MOVS     R1,#+61
        STRB     R1,[R0, #+1692]
//  856     Give.forceSpeed = 10;//Ç¿ÖÆ¸ø¶¨ËÙ¶È0
        LDR.W    R0,??DataTable5
        MOVS     R1,#+10
        STRH     R1,[R0, #+2]
//  857   }
//  858   //*****************************************************************************************
//  859   //-----------------------------------------------------------------------------------------
//  860   //--------------------------------------CCD1Ö±µÀÀÛ¼Ó---------------------------------------
//  861   //-----------------------------------------------------------------------------------------
//  862   //*****************************************************************************************
//  863   if(Con.Run == 2)
??SpecialStatus_52:
        LDR.N    R0,??DataTable4_2
        LDRB     R0,[R0, #+12]
        CMP      R0,#+2
        BNE.N    ??SpecialStatus_53
//  864   { if(Trk.cen1[Trk.currentCen1] < 1000+CCD_SwitchTHreshold 
//  865        && Trk.cen1[Trk.currentCen1] > 1000-CCD_SwitchTHreshold //µ±Ç°CCD1ÖÐÏß´¦ÓÚÖ±µÀÅÐ¾ö·¶Î§¸½½ü 
//  866        )
        LDR.N    R0,??DataTable4_1
        LDRH     R0,[R0, #+810]
        LDR.N    R1,??DataTable4_1
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+410]
        SUBW     R0,R0,#+961
        CMP      R0,#+79
        BCS.N    ??SpecialStatus_54
//  867     { //ÉÏÒ»´Î´¦ÓÚÖ±µÀÖÐ//ÀÛ¼ÓÖ±µÀÂ·³Ì
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
//  869       //ÉÏÒ»´Î²»´¦ÓÚÖ±µÀÖÐ
//  870       else {Trk.Straight1 = 1;}//ÖÃÎ»Ö±µÀ±êÖ¾
??SpecialStatus_55:
        LDR.N    R0,??DataTable4_1
        MOVS     R1,#+1
        STRB     R1,[R0, #+826]
        B.N      ??SpecialStatus_53
//  871     }
//  872     else {Trk.Straight1 = 0;Trk.StraightRoad1 = 0;}//Çå0Ö±µÀ±êÖ¾ºÍÖ±µÀÂ·³Ì
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
//  876   //--------------------------------------CCD1ÍäµÀÀÛ¼Ó---------------------------------------
//  877   //-----------------------------------------------------------------------------------------
//  878   //*****************************************************************************************
//  879   
//  880   //*****************************************************************************************
//  881   //-----------------------------------------------------------------------------------------
//  882   //--------------------------------------CCD1ÍäµÀËø¶¨---------------------------------------
//  883   //-----------------------------------------------------------------------------------------
//  884   //*****************************************************************************************
//  885   if(Con.Run == 2)
??SpecialStatus_53:
        LDR.N    R0,??DataTable4_2
        LDRB     R0,[R0, #+12]
        CMP      R0,#+2
        BNE.N    ??SpecialStatus_56
//  886   { //Èôµ±Ç°´¦ÓÚÍäµÀËø¶¨±êÖ¾²¢ÇÒÉÏÒ»´ÎÓëµ±Ç°ÖÐÐÄ×ø±êÆ«Àë¹ý´ó
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
//  891     { Trk.cen1[Trk.currentCen1] = Trk.cen1[Trk.lastCen1];}//±£³ÖÉÏÒ»´Î´ò½Ç
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
//  892     if(Trk.cen1[Trk.currentCen1] > 1000+51 || Trk.cen1[Trk.currentCen1] < 1000-51)//µ±Ç°CCD1ÖÐÏßÆ«Àë¹ý¶à£¨³¬¹ý50cm°ë¾¶£©
??SpecialStatus_59:
        LDR.N    R0,??DataTable4_1
        LDRH     R0,[R0, #+810]
        LDR.N    R1,??DataTable4_1
        ADDS     R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+410]
        SUBW     R0,R0,#+949
        CMP      R0,#+103
        BCC.N    ??SpecialStatus_60
//  893     { Trk.CurveLock1 = 1;//ÖÃ1ÍäµÀËø¶¨±êÖ¾
        LDR.N    R0,??DataTable4_1
        MOVS     R1,#+1
        STRB     R1,[R0, #+832]
        B.N      ??SpecialStatus_56
//  894     }
//  895     else{Trk.CurveLock1 = 0;}//Çå0ÍäµÀËø¶¨±êÖ¾
??SpecialStatus_60:
        LDR.N    R0,??DataTable4_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+832]
//  896   }
//  897   //*****************************************************************************************
//  898   //-----------------------------------------------------------------------------------------
//  899   //----------------------------------------ÆðÅÜÊ±Ðò-----------------------------------------
//  900   //-----------------------------------------------------------------------------------------
//  901   //*****************************************************************************************
//  902   if(Con.Run == 1)
??SpecialStatus_56:
        LDR.N    R0,??DataTable4_2
        LDRB     R0,[R0, #+12]
        CMP      R0,#+1
        BNE.N    ??SpecialStatus_61
//  903   { //¼ÇÂ¼½øÈëÔ¤ÆðÅÜµÄÊ±¼äºÍÂ·³Ì
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
//  905     if(Con.TotalTime - Con.Run1time >= 2000){Con.Run = 2;}//Ô¤ÆðÅÜ½×¶Î¾­¹ý2Ãë½øÈëÕýÊ½ÆðÅÜ
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
//  908   { //¼ÇÂ¼½øÈëÕýÊ½ÆðÅÜµÄÊ±¼äºÍÂ·³Ì
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
//  912   { //¼ÇÂ¼½øÈëÍ£Ö¹×´Ì¬µÄÊ±¼äºÍÂ·³Ì
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
//  914     if(Con.TotalTime - Con.Run3time >= 1000){Con.Run = 4;}//Í£Ö¹½×¶Î¾­¹ý2Ãë½øÈëÍ£Ö¹ºó2Ãë
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
//  917   { //¼ÇÂ¼½øÈëÍ£Ö¹ºó2ÃëµÄÊ±¼äºÍÂ·³Ì
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
//  924 void DirSpeedGive(void)//¼ÆËã·½ÏòºÍ¸ø¶¨ËÙ¶È
//  925 {
DirSpeedGive:
        PUSH     {R2-R4,LR}
//  926   //*****************************************************************************************
//  927   //-----------------------------------------------------------------------------------------
//  928   //--------------------------Ñ¡ÔñCCD1»òCCD2×÷Îª·½ÏòºÍËÙ¶È¾ö²ßÀ´Ô´---------------------------
//  929   //-----------------------------------------------------------------------------------------
//  930   //*****************************************************************************************  
//  931   //CCD1ÖÐÐÄ×ø±êÆ«Àë¹ý´ó
//  932   if(Trk.cen1[Trk.currentCen1] > 1000 + CCD_SwitchTHreshold || Trk.cen1[Trk.currentCen1] < 1000 - CCD_SwitchTHreshold
//  933      //|| (Trk.left2[Trk.currentLeft2]==255 
//  934      //    && Trk.right2[Trk.currentRight2]==255 && Trk.AllDark2 == 1)//CCD2¶ªË«±ßÇÒ´¦ÓÚÈ«ºÚ
//  935      || (Trk.Width2 <= 0.75*CCD2TrkWidth //µ±Ç°CCD2ÈüµÀ¿í¶ÈÐ¡ÓÚÕý³£Ö±µÀ¿í¶ÈµÄ0.75±¶£¬ÉÏÆÂ²»ÎÈ¶¨Ê±²»Ê¹ÓÃCCD2
//  936          && Trk.SpecialStatus!= 31 && Trk.SpecialStatus!= 32)//Â·ÕÏÊ±¿ÉÒÔÊ¹ÓÃ
//  937      || Trk.StraightRoad1 < 10000 //CCD1Ö±µÀÀÛ¼ÓÂ·³ÌÐ¡ÓÚÄ³Ò»Öµ£¨·ÀÖ¹Ê®×ÖCCD2ÎóÅÐ£©
//  938      || (Encoder.encoder[Encoder.currentEnc]*(5/Con.SpeedContralPeriod) < 140 //µ±Ç°ËÙ¶ÈµÍÓÚÄ³Ò»ÖµÇÒCCD2ÖÐÏßÆ«Àë¹ý´ó
//  939          &&(Trk.cen2[Trk.currentCen2] > 1000+40 || Trk.cen2[Trk.currentCen2] < 1000-40) )//·ÀÖ¹µÍËÙÊ±ÒòCCD2´ò½Ç¹ý´óÆ«Àë
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
//  941   { Give.CCDSource = 0;}//Ê¹ÓÃCCD1
??DirSpeedGive_0:
        LDR.W    R0,??DataTable5
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        B.N      ??DirSpeedGive_3
//  942   else {Give.CCDSource = 1;}//Ê¹ÓÃCCD2
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
//  946   //----------------------------------------Ê¹ÓÃCCD1-----------------------------------------
//  947   //-----------------------------------------------------------------------------------------
//  948   //*****************************************************************************************
//  949   if(Give.CCDSource == 0)//ÈôÊ¹ÓÃCCD1
        LDR.W    R0,??DataTable5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.W    ??DirSpeedGive_4
//  950   {
//  951     volatile uint16 tempCenRate1;//ÁÙÊ±´æ´¢±ä»¯ÂÊ
//  952     volatile uint16 lastDCen1;//ÁÙÊ±´æ´¢ÀúÊ·ÖµµÄÏÂ±ê
//  953     volatile uint16 tempSerCen1,tempMotorCen1;//ÁÙÊ±´æ´¢ÖÐÐÄ×ø±ê
//  954     //¼ÆËãÎ¢·ÖÖÜÆÚÀúÊ·ÖµµÄÏÂ±ê
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
//  957     //¼ÆËã×îÖÕÖÐÐÄ×ø±ê±ä»¯ÂÊ£¬1000Îª±ä»¯ÂÊ0£¬Ð¡ÓÚ1000Ïò×ó±ä»¯£¬´óÓÚ1000ÏòÓÒ±ä»¯
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
//  960     //¼ÆËãÎ¢·ÖÖ®ºóµÄ¶æ»úÖÐÐÄ×ø±ê
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
//  962     if(tempSerCen1 > 1200){tempSerCen1 = 1200;}else if(tempSerCen1 < 800){tempSerCen1 = 800;}//·ÀÖ¹Ô½½ç
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
//  963     if(Trk.cen1[Trk.currentCen1] <= 1000 && tempSerCen1 >1000){tempSerCen1 = 1000;}//·ÀÖ¹Î¢·ÖÖ®ºóÓëÖ®Ç°ÖÐÏß·½ÏòÏà·´
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
//  964     if(Trk.cen1[Trk.currentCen1] >= 1000 && tempSerCen1 <1000){tempSerCen1 = 1000;}//·ÀÖ¹Î¢·ÖÖ®ºóÓëÖ®Ç°ÖÐÏß·½ÏòÏà·´
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
//  965     //´æ´¢Î¢·ÖÖ®ºóµÄ¶æ»úÖÐÐÄ×ø±ê
//  966     Give.serverDCen = tempSerCen1;
??DirSpeedGive_10:
        LDR.W    R0,??DataTable5
        LDRH     R1,[SP, #+2]
        STRH     R1,[R0, #+24]
//  967     //¼ÆËãÎ¢·ÖÖ®ºóµÄµç»úÖÐÐÄ×ø±ê
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
//  969     if(tempMotorCen1 > 1200){tempMotorCen1 = 1200;}else if(tempMotorCen1 < 800){tempMotorCen1 = 800;}//·ÀÖ¹Ô½½ç
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
//  970     if(Trk.cen1[Trk.currentCen1] <= 1000 && tempMotorCen1 >1000){tempMotorCen1 = 1000;}//·ÀÖ¹Î¢·ÖÖ®ºóÓëÖ®Ç°ÖÐÏß·½ÏòÏà·´
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
//  971     if(Trk.cen1[Trk.currentCen1] >= 1000 && tempMotorCen1 <1000){tempMotorCen1 = 1000;}//·ÀÖ¹Î¢·ÖÖ®ºóÓëÖ®Ç°ÖÐÏß·½ÏòÏà·´
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
//  972     //´æ´¢Î¢·ÖÖ®ºóµÄµç»úÖÐÐÄ×ø±ê
//  973     Give.motorDCen = tempSerCen1;
??DirSpeedGive_14:
        LDR.W    R0,??DataTable5
        LDRH     R1,[SP, #+2]
        STRH     R1,[R0, #+32]
//  974     
//  975     //ÁÙÊ±´æ´¢¶æ»úÔ­Ê¼¸ø¶¨PWM,Î¢·Ö¸ø¶¨PWM
//  976     volatile uint16 temp_ServerOrgPWM1,temp_ServerDPWM1;
//  977     //ÁÙÊ±´æ´¢Ô­Ê¼¸ø¶¨ËÙ¶È¡¢Î¢·Ö¸ø¶¨ËÙ¶È
//  978     volatile uint16 temp_MotorOrgSpeed1,temp_MotorDSpeed1;
//  979     //²é±íµÃ³öÔ­Ê¼¶æ»ú¸ø¶¨PWMºÍÔ­Ê¼µç»ú¸ø¶¨ËÙ¶ÈºÍÍäµÀ°ë¾¶
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
//  989     Give.motorOrgSpeed = (uint16)(temp_MotorOrgSpeed1*Give.SpeedCoef);//³ËÒÔËÙ¶È¸ø¶¨ÏµÊý
        LDRH     R0,[SP, #+2]
        BL       __aeabi_ui2f
        LDR.W    R1,??DataTable5
        LDR      R1,[R1, #+40]
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable5
        STRH     R0,[R1, #+34]
//  990     Give.lastmotorDSpeed = Give.motorDSpeed;//¼ÆËãÎ¢·Ö¸ø¶¨ËÙ¶ÈÖ®Ç°ÏÈ´æ´¢ÉÏÒ»´ÎµÄÎ¢·Ö¸ø¶¨ËÙ¶È
        LDR.W    R0,??DataTable5
        LDR.W    R1,??DataTable5
        LDRH     R1,[R1, #+36]
        STRH     R1,[R0, #+38]
//  991     //²é±íµÃ³öÎ¢·Ö¶æ»ú¸ø¶¨PWMºÍÎ¢·Öµç»ú¸ø¶¨ËÙ¶È
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
// 1001     Give.motorDSpeed = (uint16)(temp_MotorDSpeed1*Give.SpeedCoef);//³ËÒÔËÙ¶È¸ø¶¨ÏµÊý
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
// 1005   //----------------------------------------Ê¹ÓÃCCD2-----------------------------------------
// 1006   //-----------------------------------------------------------------------------------------
// 1007   //*****************************************************************************************
// 1008   else//ÈôÊ¹ÓÃCCD2
// 1009   {
// 1010     volatile uint16 tempCenRate2;//ÁÙÊ±´æ´¢±ä»¯ÂÊ
// 1011     volatile uint16 lastDcen2;//ÁÙÊ±´æ´¢ÀúÊ·ÖµµÄÏÂ±ê
// 1012     volatile uint16 tempSerCen2,tempMotorcen2;//ÁÙÊ±´æ´¢ÖÐÐÄ×ø±ê
// 1013     //¼ÆËãÎ¢·ÖÖÜÆÚÀúÊ·ÖµµÄÏÂ±ê
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
// 1016     //¼ÆËã×îÖÕÖÐÐÄ×ø±ê±ä»¯ÂÊ£¬1000Îª±ä»¯ÂÊ0£¬Ð¡ÓÚ1000Ïò×ó±ä»¯£¬´óÓÚ1000ÏòÓÒ±ä»¯
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
// 1019     //¼ÆËãÎ¢·ÖÖ®ºóµÄ¶æ»úÖÐÐÄ×ø±ê
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
// 1021     if(tempSerCen2 > 1200){tempSerCen2 = 1200;}else if(tempSerCen2 < 800){tempSerCen2 = 800;}//·ÀÖ¹Ô½½ç
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
// 1022     if(Trk.cen2[Trk.currentCen2] <= 1000 && tempSerCen2 >1000){tempSerCen2 = 1000;}//·ÀÖ¹Î¢·ÖÖ®ºóÓëÖ®Ç°ÖÐÏß·½ÏòÏà·´
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
// 1023     if(Trk.cen2[Trk.currentCen2] >= 1000 && tempSerCen2 <1000){tempSerCen2 = 1000;}//·ÀÖ¹Î¢·ÖÖ®ºóÓëÖ®Ç°ÖÐÏß·½ÏòÏà·´
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
// 1024     //´æ´¢Î¢·ÖÖ®ºóµÄ¶æ»úÖÐÐÄ×ø±ê
// 1025     Give.serverDCen = tempSerCen2;
??DirSpeedGive_25:
        LDR.N    R0,??DataTable5
        LDRH     R1,[SP, #+4]
        STRH     R1,[R0, #+24]
// 1026     //¼ÆËãÎ¢·ÖÖ®ºóµÄµç»úÖÐÐÄ×ø±ê
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
// 1028     if(tempMotorcen2 > 1200){tempMotorcen2 = 1200;}else if(tempMotorcen2 < 800){tempMotorcen2 = 800;}//·ÀÖ¹Ô½½ç
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
// 1029     if(Trk.cen2[Trk.currentCen2] <= 1000 && tempMotorcen2 >1000){tempMotorcen2 = 1000;}//·ÀÖ¹Î¢·ÖÖ®ºóÓëÖ®Ç°ÖÐÏß·½ÏòÏà·´
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
// 1030     if(Trk.cen2[Trk.currentCen2] >= 1000 && tempMotorcen2 <1000){tempMotorcen2 = 1000;}//·ÀÖ¹Î¢·ÖÖ®ºóÓëÖ®Ç°ÖÐÏß·½ÏòÏà·´
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
// 1031     //´æ´¢Î¢·ÖÖ®ºóµÄµç»úÖÐÐÄ×ø±ê
// 1032     Give.motorDCen = tempSerCen2;
??DirSpeedGive_29:
        LDR.N    R0,??DataTable5
        LDRH     R1,[SP, #+4]
        STRH     R1,[R0, #+32]
// 1033     
// 1034     //ÁÙÊ±´æ´¢¶æ»úÔ­Ê¼¸ø¶¨PWM,Î¢·Ö¸ø¶¨PWM
// 1035     volatile uint16 temp_ServerOrgPWM2,temp_ServerDPWM2;
// 1036     //ÁÙÊ±´æ´¢Ô­Ê¼¸ø¶¨ËÙ¶È¡¢Î¢·Ö¸ø¶¨ËÙ¶È
// 1037     volatile uint16 temp_MotorOrgSpeed2,temp_MotorDSpeed2;
// 1038     //²é±íµÃ³öÔ­Ê¼¶æ»ú¸ø¶¨PWMºÍÔ­Ê¼µç»ú¸ø¶¨ËÙ¶ÈºÍÍäµÀ°ë¾¶
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
// 1048     Give.motorOrgSpeed = (uint16)(temp_MotorOrgSpeed2*Give.SpeedCoef);//³ËÒÔËÙ¶È¸ø¶¨ÏµÊý
        LDRH     R0,[SP, #+2]
        BL       __aeabi_ui2f
        LDR.N    R1,??DataTable5
        LDR      R1,[R1, #+40]
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        LDR.N    R1,??DataTable5
        STRH     R0,[R1, #+34]
// 1049     Give.lastmotorDSpeed = Give.motorDSpeed;//¼ÆËãÎ¢·Ö¸ø¶¨ËÙ¶ÈÖ®Ç°ÏÈ´æ´¢ÉÏÒ»´ÎµÄÎ¢·Ö¸ø¶¨ËÙ¶È
        LDR.N    R0,??DataTable5
        LDR.N    R1,??DataTable5
        LDRH     R1,[R1, #+36]
        STRH     R1,[R0, #+38]
// 1050     //²é±íµÃ³öÎ¢·Ö¶æ»ú¸ø¶¨PWMºÍÎ¢·Öµç»ú¸ø¶¨ËÙ¶È
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
// 1060     Give.motorDSpeed = (uint16)(temp_MotorDSpeed2*Give.SpeedCoef);//³ËÒÔËÙ¶È¸ø¶¨ÏµÊý
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
// 1065   if(Give.forceDir == 1){Give.serverDPWM = Give.SerHerringPWM;}//ÈË×ÖÇ¿ÖÆ´ò½Ç
        LDR.N    R0,??DataTable5
        LDRB     R0,[R0, #+1]
        CMP      R0,#+1
        BNE.N    ??DirSpeedGive_34
        LDR.N    R0,??DataTable5
        LDR.N    R1,??DataTable5
        LDRB     R1,[R1, #+4]
        STRB     R1,[R0, #+27]
        B.N      ??DirSpeedGive_35
// 1066   else if(Give.forceDir == 2){Give.serverDPWM = Give.ServerTestPWM;}//¶æ»ú²âÊÔÇ¿ÖÆ´ò½Ç
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
// 1068   if(Give.forceSpeed == 1){Give.motorDSpeed = Give.MotorHerringSpeed;}//ÈË×Ö¸ø¶¨ËÙ¶È
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
// 1069   else if(Give.forceSpeed == 2){Give.motorDSpeed = Give.MotorRoadBlockSpeed;}//Â·ÕÏ¸ø¶¨ËÙ¶È
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
// 1070   else if(Give.forceSpeed == 3){Give.motorDSpeed = Give.MotorRampSpeed;}//ÆÂµÀ¸ø¶¨ËÙ¶È
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
// 1071   else if(Give.forceSpeed == 10 || Con.Run >=3){Give.motorDSpeed = 0;}//Í£Ö¹¸ø¶¨ËÙ¶È
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
// 1074 void SpeedContral(void)//ËÙ¶È¿ØÖÆ
// 1075 { //ÁÙÊ±´æ´¢µ±Ç°ËÙ¶È
SpeedContral:
        PUSH     {R3-R7,LR}
// 1076   uint16 temp_currentSpeed,temp_motorPWM; 
// 1077   //ÓÃÓÚ¼ÆËãµÄÊµ¼ÊËÙ¶È±ØÐëÄÜÆÁ±Îµç»ú¿ØÖÆÖÜÆÚµÄ±ä»¯
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
// 1081   //------------------------------------ÅÐ¶Ï·´×ª¼õËÙÌõ¼þ-------------------------------------
// 1082   //-----------------------------------------------------------------------------------------
// 1083   //*****************************************************************************************  
// 1084   //Èôµ±Ç°¸ø¶¨ËÙ¶ÈÐ¡ÓÚÉÏ´Î¸ø¶¨ËÙ¶È ²¢ÇÒ µ±Ç°Êµ¼ÊËÙ¶ÈµÍÓÚµ±Ç°¸ø¶¨ËÙ¶È
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
// 1086   { Give.motorRowback = 1;//µç»ú·´×ª¼õËÙ±êÖ¾ÖÃ1
        LDR.W    R0,??DataTable6_8
        MOVS     R1,#+1
        STRB     R1,[R0, #+47]
// 1087     Give.motorRowbackRoad = Con.TotalRoad;//¼ÇÂ¼¿ªÊ¼¼õËÙÊ±µÄÂö³åÊý
        LDR.W    R0,??DataTable6_8
        LDR.W    R1,??DataTable6_1
        LDR      R1,[R1, #+4]
        STR      R1,[R0, #+48]
// 1088   }
// 1089   //Èôµ±Ç°ËÙ¶ÈµÍÓÚ¸ø¶¨ËÙ¶È²¢ÇÒ³¬¹ý×î¶Ì¼õËÙÂ·³Ì
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
// 1091   { Give.motorRowback = 0;//µç»ú·´×ª¼õËÙ±êÖ¾Çå0
        LDR.W    R0,??DataTable6_8
        MOVS     R1,#+0
        STRB     R1,[R0, #+47]
// 1092   }
// 1093   //*****************************************************************************************
// 1094   //-----------------------------------------------------------------------------------------
// 1095   //------------------------------------¼ÆËãµç»úÊä³öÕ¼¿Õ±È-------------------------------------
// 1096   //-----------------------------------------------------------------------------------------
// 1097   //*****************************************************************************************  
// 1098 
// 1099   //Èôµ±Ç°ËÙ¶ÈÐ¡ÓÚ¸ø¶¨ËÙ¶È£¬°´ºã¶¨×î´ó¼ÓËÙ¶È¸øÕ¼¿Õ±È
// 1100   if(temp_currentSpeed < Give.motorDSpeed)
??SpeedContral_1:
        LDR.W    R0,??DataTable6_8
        LDRH     R0,[R0, #+36]
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,R0
        BCS.N    ??SpeedContral_2
// 1101   { //µç»ú¸ø¶¨Õý×ªPWM(µÈÐ§µç»úµçÑ¹)=ºã¶¨×î´ó¼ÓËÙ¶È(ÒÑ×ª»»³ÉÏàÍ¬Á¿¸Ù)+µç»ú·´µç¶¯ÊÆ
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
// 1103     if(temp_motorPWM > MotorMaxZhengZhuanPWM){temp_motorPWM = MotorMaxZhengZhuanPWM;}//PWMÏÞ·ù
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOVW     R1,#+991
        CMP      R0,R1
        BLT.N    ??SpeedContral_3
        MOVW     R0,#+990
// 1104     Give.motorPWM = temp_motorPWM;
??SpeedContral_3:
        LDR.W    R1,??DataTable6_8
        STRH     R0,[R1, #+44]
// 1105     Give.motorDir = 1;//µç»ú·½Ïò£ºÕý×ª
        LDR.W    R0,??DataTable6_8
        MOVS     R1,#+1
        STRB     R1,[R0, #+46]
        B.N      ??SpeedContral_4
// 1106   }
// 1107   //Èôµ±Ç°ËÙ¶È´óÓÚ¸ø¶¨ËÙ¶È£¬¸ù¾Ý·´×ª¼õËÙ±êÖ¾¾ö¶¨ÊÇ·ñ½øÐÐ·´×ª¼õËÙ
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
// 1109   { //Èô·´×ª¼õËÙ±êÖ¾Îª1»òÕß´¦ÓÚÆÂµÀ
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
// 1112     { //µç»ú¸ø¶¨·´×ªPWM=ºã¶¨×î´ó¼ÓËÙ¶È(ÒÑ×ª»»³ÉÏàÍ¬Á¿¸Ù)-µç»ú·´µç¶¯ÊÆ
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
// 1118     else//Èô·´×ª¼õËÙ±êÖ¾Îª0»òÕß¸ø¶¨ËÙ¶ÈµÈÓÚÊµ¼ÊËÙ¶È£¬°´0¼ÓËÙ¶È¸ø¶¨Õý×ªÕ¼¿Õ±È
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
// 1125   //Èôµ±Ç°¸ø¶¨ËÙ¶ÈÎª0
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
// 1128     {  //µç»ú¸ø¶¨·´×ªPWM=ºã¶¨×î´ó¼ÓËÙ¶È(ÒÑ×ª»»³ÉÏàÍ¬Á¿¸Ù)-µç»ú·´µç¶¯ÊÆ
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
// 1141   //------------------------------------------PIËã·¨-----------------------------------------
// 1142   //-----------------------------------------------------------------------------------------
// 1143   //***************************************************************************************** 
// 1144   float temp_SpeedOffset,tempfloat_motorPWM;//ÁÙÊ±¼ÇÂ¼ËÙ¶ÈÆ«²îºÍµç»úPWM
// 1145   float temp_i_;//ÁÙÊ±¼ÇÂ¼µ±Ç°»ý·ÖÏîI
// 1146   Give.lastSpeedOffset = Give.SpeedOffset;//¼ÇÂ¼ÉÏÒ»´ÎµÄÆ«²î
??SpeedContral_4:
        LDR.N    R0,??DataTable6_8
        LDR.N    R1,??DataTable6_8
        LDR      R1,[R1, #+56]
        STR      R1,[R0, #+52]
// 1147   temp_SpeedOffset = (float)Give.motorDSpeed - (float)temp_currentSpeed;//¼ÆËãµ±Ç°ËÙ¶ÈÆ«²î
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
// 1152     temp_i_ = Give._I_ + 0.08*temp_SpeedOffset;//¼ÆËãµ±Ç°»ý·ÖÏî
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
// 1153     if(temp_i_>0 && temp_i_>a_max + Con.Ce_ *temp_currentSpeed){temp_i_ = a_max + Con.Ce_ *temp_currentSpeed;}//»ý·ÖÏîÏÞ·ù
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
// 1156   //Èôµ±Ç°ËÙ¶ÈÐ¡ÓÚ¸ø¶¨ËÙ¶È²¢ÇÒµ±Ç°ËÙ¶ÈÒÑ¾­´ïµ½¸ø¶¨ËÙ¶ÈµÄ0.95±¶ÒÔÉÏ£¬²»ÔÙÔö¼Ó»ý·ÖÏî£¬·ÀÖ¹³¬µ÷
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
// 1158   {temp_i_ =  Give._I_;}//»ý·ÖÏî±£³Ö²»±ä 
        LDR.N    R0,??DataTable6_8
        LDR      R4,[R0, #+60]
        B.N      ??SpeedContral_15
// 1159   else 
// 1160   { temp_i_ = Give._I_ + 0.09*temp_SpeedOffset;//¼ÆËãµ±Ç°»ý·ÖÏî
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
// 1161     if(temp_i_>0 && temp_i_>a_max + Con.Ce_ *temp_currentSpeed){temp_i_ = a_max + Con.Ce_ *temp_currentSpeed;}//»ý·ÖÏîÏÞ·ù
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
// 1165   tempfloat_motorPWM = 0*temp_SpeedOffset + temp_i_;//¼ÆËã³ö×îÖÕµÄµç»ú¸ø¶¨PWM
        MOVS     R0,#+0
        MOVS     R1,R7
        BL       __aeabi_fmul
        MOVS     R1,R4
        BL       __aeabi_fadd
        MOVS     R2,R0
// 1166   //×îÖÕÊä³öÏÞ·ù
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
// 1173   //Èôµ±Ç°¸ø¶¨ËÙ¶ÈÎª0
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
// 1176     {  //µç»ú¸ø¶¨·´×ªPWM=ºã¶¨×î´ó¼ÓËÙ¶È(ÒÑ×ª»»³ÉÏàÍ¬Á¿¸Ù)-µç»ú·´µç¶¯ÊÆ
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
// 1188   if(Con.Run <=1 || Con.Run == 4 || Con.EnableMotor == 0){Give.motorPWM = 0;Give.motorDir = 1;}//Í£Ö¹ºó2Ãë»òµç»ú±»½ûÖ¹£¬µç»úPWM¸ø0
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
