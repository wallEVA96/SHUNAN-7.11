///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     20/Jul/2015  05:44:49 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\¥¥◊˜ “\∑…Àºø®∂˚÷«ƒ‹–°≥µ\À≥∞µ»˝∫≈\¥˙¬Î\À≥∞µ»˝∫≈-ª™ƒœ» /
//                    ¸◊Ó∫Û∆ﬂÃÏ-7.11\ShunAn_Panel\Poet_Servo.c                /
//    Command line =  D:\¥¥◊˜ “\∑…Àºø®∂˚÷«ƒ‹–°≥µ\À≥∞µ»˝∫≈\¥˙¬Î\À≥∞µ»˝∫≈-ª™ƒœ» /
//                    ¸◊Ó∫Û∆ﬂÃÏ-7.11\ShunAn_Panel\Poet_Servo.c -D IAR -D      /
//                    TWR_K60F120M -lCN D:\¥¥◊˜ “\∑…Àºø®∂˚÷«ƒ‹–°≥µ\À≥∞µ»˝∫≈\¥ /
//                    ˙¬Î\À≥∞µ»˝∫≈-ª™ƒœ»¸◊Ó∫Û∆ﬂÃÏ-7.11\FLASH_1MB\List\ -lB    /
//                    D:\¥¥◊˜ “\∑…Àºø®∂˚÷«ƒ‹–°≥µ\À≥∞µ»˝∫≈\¥˙¬Î\À≥∞µ»˝∫≈-ª™ƒœ» /
//                    ¸◊Ó∫Û∆ﬂÃÏ-7.11\FLASH_1MB\List\ -o                       /
//                    D:\¥¥◊˜ “\∑…Àºø®∂˚÷«ƒ‹–°≥µ\À≥∞µ»˝∫≈\¥˙¬Î\À≥∞µ»˝∫≈-ª™ƒœ» /
//                    ¸◊Ó∫Û∆ﬂÃÏ-7.11\FLASH_1MB\Obj\ --no_cse --no_unroll      /
//                    --no_inline --no_code_motion --no_tbaa --no_clustering  /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=VFPv4_sp --dlib_config         /
//                    "C:\Program Files (x86)\IAR Systems\Embedded Workbench  /
//                    6.5\arm\INC\c\DLib_Config_Normal.h" -I                  /
//                    D:\¥¥◊˜ “\∑…Àºø®∂˚÷«ƒ‹–°≥µ\À≥∞µ»˝∫≈\¥˙¬Î\À≥∞µ»˝∫≈-ª™ƒœ» /
//                    ¸◊Ó∫Û∆ﬂÃÏ-7.11\ -I D:\¥¥◊˜ “\∑…Àºø®∂˚÷«ƒ‹–°≥µ\À≥∞µ»˝∫≈\ /
//                    ¥˙¬Î\À≥∞µ»˝∫≈-ª™ƒœ»¸◊Ó∫Û∆ﬂÃÏ-7.11\Library\ -I           /
//                    D:\¥¥◊˜ “\∑…Àºø®∂˚÷«ƒ‹–°≥µ\À≥∞µ»˝∫≈\¥˙¬Î\À≥∞µ»˝∫≈-ª™ƒœ» /
//                    ¸◊Ó∫Û∆ﬂÃÏ-7.11\Library\BlessedAlien\ -I                 /
//                    D:\¥¥◊˜ “\∑…Àºø®∂˚÷«ƒ‹–°≥µ\À≥∞µ»˝∫≈\¥˙¬Î\À≥∞µ»˝∫≈-ª™ƒœ» /
//                    ¸◊Ó∫Û∆ﬂÃÏ-7.11\ShunAn_Panel\ -Ol --use_c++_inline       /
//    List file    =  D:\¥¥◊˜ “\∑…Àºø®∂˚÷«ƒ‹–°≥µ\À≥∞µ»˝∫≈\¥˙¬Î\À≥∞µ»˝∫≈-ª™ƒœ» /
//                    ¸◊Ó∫Û∆ﬂÃÏ-7.11\FLASH_1MB\List\Poet_Servo.s              /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN m_Control
        EXTERN m_ImageAbstract
        EXTERN n_getSteerMiddleLine_UsedAverage
        EXTERN number_ServoGraduated
        EXTERN u8_ExInterface8_get
        EXTERN v_BuzzerBeepSet

        PUBLIC n_GetServoAngle
        PUBLIC n_GetServoGraduated
        PUBLIC v_Servo_Init
        PUBLIC v_Servo_Out
        PUBLIC v_steer_set2pwm

// D:\¥¥◊˜ “\∑…Àºø®∂˚÷«ƒ‹–°≥µ\À≥∞µ»˝∫≈\¥˙¬Î\À≥∞µ»˝∫≈-ª™ƒœ»¸◊Ó∫Û∆ﬂÃÏ-7.11\ShunAn_Panel\Poet_Servo.c
//    1 #include "arm_cm4.h"
//    2 #include "MK60F15.h"
//    3 #include "ShunAn_Lib.h"
//    4 #include "start_ShunAn.h"
//    5 
//    6 #include "Poet_Servo.h"
//    7 #include "Poet_Buzzer.h"
//    8 #include "Poet_InputInterface.h"
//    9 
//   10 
//   11 #include "Pendulum_EndlessFormsMostBeautiful.h"
//   12 //==============================================================
//   13 // ∫Ø ˝√˚£∫void v_Servo_Init()
//   14 // 0.5/10 * 46875 =  2343.75 =  2344
//   15 // 1.5/10 * 46875 =  7031.25 =  7031
//   16 // 2.5/10 * 46875 = 11718.75 = 11718
//   17 //==============================================================
//   18 #define DE_Servo_Central                1755//3516//3516//7031//=>1.5ms
//   19 #define DE_Servo_offset                 1169//2343//2343//3000//4687
//   20 #define DE_Servo_Left                   582//(DE_Servo_Central - DE_Servo_offset)
//   21 #define DE_Servo_Right                  (DE_Servo_Central + DE_Servo_offset)
//   22 
//   23 #define DE_Servo_Start_DeadTime         20
//   24 #define DE_Servo_End_0_5ms              586
//   25 #define DE_Servo_End_2_5ms              2924
//   26 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   27 void v_Servo_Init()
//   28 {
//   29     /**************************************************************************/
//   30     // ∂®Œª∆˜≥ı ºªØ // E12 // ADC3_SE17
//   31     SIM_SCGC3 |= SIM_SCGC3_ADC3_MASK;// πƒ‹ADC1ƒ£øÈ ±÷” 
v_Servo_Init:
        LDR.N    R0,??DataTable4_3  ;; 0x40048030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000000
        LDR.N    R1,??DataTable4_3  ;; 0x40048030
        STR      R0,[R1, #+0]
//   32     SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;// πƒ‹PORTE ±÷” 
        LDR.N    R0,??DataTable4_4  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x400
        LDR.N    R1,??DataTable4_4  ;; 0x40048038
        STR      R0,[R1, #+0]
//   33     PORTB_PCR7 |= PORT_PCR_MUX(0);//“˝Ω≈∏¥”√—°‘Òƒ£ƒ‚ ‰»Î
        LDR.N    R0,??DataTable4_5  ;; 0x4004a01c
        LDR.N    R1,??DataTable4_5  ;; 0x4004a01c
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
//   34     /**************************************************************************/
//   35     // PWMø™∆Ù // PTA6£ø
//   36     SIM_SCGC6 |= SIM_SCGC6_FTM0_MASK;// πƒ‹FTM3 ±÷”
        LDR.N    R0,??DataTable4_6  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000000
        LDR.N    R1,??DataTable4_6  ;; 0x4004803c
        STR      R0,[R1, #+0]
//   37     SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;// πƒ‹PORTE ±÷”
        LDR.N    R0,??DataTable4_4  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x200
        LDR.N    R1,??DataTable4_4  ;; 0x40048038
        STR      R0,[R1, #+0]
//   38     //PORTA_PCR5 = PORT_PCR_MUX(3);//“˝Ω≈∏¥”√—°‘ÒALT3(FTM CH3)
//   39     PORTA_PCR6 = PORT_PCR_MUX(3);//“˝Ω≈∏¥”√—°‘ÒALT3(FTM CH3)
        LDR.N    R0,??DataTable4_7  ;; 0x40049018
        MOV      R1,#+768
        STR      R1,[R0, #+0]
//   40     // Ãÿ–‘…Ë∂®
//   41     /**************************************************************************/
//   42     FTM0_MODE = FTM_MODE_FTMEN_MASK | FTM_MODE_PWMSYNC_MASK;//ø™∆ÙPWM“Ï≤Ωƒ£ Ω FTM_MODE_PWMSYNC_MASK
        LDR.N    R0,??DataTable4_8  ;; 0x40038054
        MOVS     R1,#+9
        STR      R1,[R0, #+0]
//   43     
//   44     FTM0_COMBINE = FTM_COMBINE_COMBINE1_MASK | FTM_COMBINE_SYNCEN1_MASK;//FTM_COMBINE_SYNCEN0_MASK
        LDR.N    R0,??DataTable4_9  ;; 0x40038064
        MOV      R1,#+8448
        STR      R1,[R0, #+0]
//   45     
//   46     FTM0_SYNCONF = 0x1F1FB5;
        LDR.N    R0,??DataTable4_10  ;; 0x4003808c
        LDR.N    R1,??DataTable4_11  ;; 0x1f1fb5
        STR      R1,[R0, #+0]
//   47     
//   48     FTM0_C3SC &= ~FTM_CnSC_ELSA_MASK;// MSnB:MSnA = 1x       ±ﬂ—ÿ∂‘∆ÎPWM
        LDR.N    R0,??DataTable4_12  ;; 0x40038024
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x4
        LDR.N    R1,??DataTable4_12  ;; 0x40038024
        STR      R0,[R1, #+0]
//   49     FTM0_C3SC |=  FTM_CnSC_ELSB_MASK;// ELSnB:ELSnA = 10     œ»∏ﬂ∫ÛµÕ
        LDR.N    R0,??DataTable4_12  ;; 0x40038024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8
        LDR.N    R1,??DataTable4_12  ;; 0x40038024
        STR      R0,[R1, #+0]
//   50     FTM0_C2SC &= ~FTM_CnSC_ELSA_MASK;// MSnB:MSnA = 1x       ±ﬂ—ÿ∂‘∆ÎPWM
        LDR.N    R0,??DataTable4_13  ;; 0x4003801c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x4
        LDR.N    R1,??DataTable4_13  ;; 0x4003801c
        STR      R0,[R1, #+0]
//   51     FTM0_C2SC |=  FTM_CnSC_ELSB_MASK;// ELSnB:ELSnA = 10     œ»∏ﬂ∫ÛµÕ
        LDR.N    R0,??DataTable4_13  ;; 0x4003801c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8
        LDR.N    R1,??DataTable4_13  ;; 0x4003801c
        STR      R0,[R1, #+0]
//   52     
//   53     
//   54 //    FTM0_PWMLOAD = FTM_PWMLOAD_LDOK_MASK | FTM_PWMLOAD_CH2SEL_MASK | FTM_PWMLOAD_CH3SEL_MASK;
//   55     
//   56     //FTM0_MOD = 46875;//ƒ£ ˝, EPWMµƒ÷‹∆⁄Œ™ £∫MOD - CNTIN + 0x0001 // 46875 => 35.76333 >> 2 Hz//56ms 20Hz
//   57     FTM0_CNTIN = 0;//¬ˆ≥ÂøÌ∂»£∫(CnV - CNTIN)
        LDR.N    R0,??DataTable4_14  ;; 0x4003804c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   58     FTM0_MOD = 46875;//25Hz => 40ms
        LDR.N    R0,??DataTable4_15  ;; 0x40038008
        MOVW     R1,#+46875
        STR      R1,[R0, #+0]
//   59     // 0.5 / 40 = x / 46875 => 586 1755 2924
//   60     FTM0_C2V = 0;//¬ˆ≥ÂøÌ∂»£∫(CnV - CNTIN)
        LDR.N    R0,??DataTable4_16  ;; 0x40038020
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   61     FTM0_C3V = 1294 + DE_Servo_End_0_5ms;//2408;//¬ˆ≥ÂøÌ∂»£∫(CnV - CNTIN)
        LDR.N    R0,??DataTable4_17  ;; 0x40038028
        MOV      R1,#+1880
        STR      R1,[R0, #+0]
//   62     
//   63     FTM0_CNT = 0;//º∆ ˝∆˜°£÷ª”–µÕ16Œªø…”√£®–¥»Œ∫Œ÷µµΩ¥Àºƒ¥Ê∆˜£¨∂ºª·º”‘ÿ CNTIN µƒ÷µ£©
        LDR.N    R0,??DataTable4_18  ;; 0x40038004
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   64     
//   65     FTM0_SC = 0 | FTM_SC_PS(6) | FTM_SC_CLKS(1);//75MHz / 32 // 1.171875 MHz
        LDR.N    R0,??DataTable4_19  ;; 0x40038000
        MOVS     R1,#+14
        STR      R1,[R0, #+0]
//   66     
//   67     
//   68     
//   69     //FTM0_SYNC &=~ FTM_SYNC_SWSYNC_MASK;
//   70     //FTM0_C3V = 40000;
//   71 }
        BX       LR               ;; return
//   72 
//   73 //==============================================================
//   74 // ∫Ø ˝√˚£∫v_Servo_Out
//   75 // π¶ƒ‹√Ë ˆ£∫◊™œÚ∂Êª˙PWM ‰≥ˆ
//   76 // ≤Œ ˝£∫’ºø’±»(0-200)£¨100Œ™’˝÷–º‰£¨0Œ™◊Ó◊Û±ﬂ£¨200Œ™◊Ó”“±ﬂ
//   77 // ∑µªÿ£∫Œﬁ
//   78 //==============================================================
//   79 // ‰»Î∂Êª˙≤Œøº¡ø =>  ‰≥ˆPWM

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   80 void v_Servo_Out(signed short int dutyNumber)//“Ú◊”Œ™ DE_Servo_offset * 2
//   81 {
v_Servo_Out:
        PUSH     {R4}
//   82     signed short int PWMtemp;
//   83     const unsigned short int div_ratio = 200;
        MOVS     R1,#+200
//   84       
//   85     //1173              3516            5859 <=◊‹¡ø≥Ã
//   86     //          2113       3063     =>œ‡≤Ó950
//   87     //20ms*2113 / 46875 => 0.9ms
//   88     //20ms*3063 / 46875 => 1.3ms
//   89     // 0.9 / 40 = x / 46875
//   90     //153100+211400
//   91     const unsigned short int const_ServoLeftPWM = 1055;//46875*((20*2113 / 46875)/40);//1055;//46875*((3063 / 46875)/40);
        MOVW     R2,#+1055
//   92     const unsigned short int const_offset = 1531 - const_ServoLeftPWM;//46875*((20*3063 / 46875)/40) - const_ServoLeftPWM;
        MOVW     R3,#+1531
        SUBS     R3,R3,R2
//   93     if(dutyNumber > div_ratio) {dutyNumber = div_ratio;}//œﬁ÷∆∑˘∂»
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R1,R0
        BGE.N    ??v_Servo_Out_0
        MOVS     R0,R1
//   94     if(dutyNumber < 0) {dutyNumber = 0;}//œﬁ÷∆∑˘∂»
??v_Servo_Out_0:
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+0
        BPL.N    ??v_Servo_Out_1
        MOVS     R0,#+0
//   95     PWMtemp = (dutyNumber*const_offset + const_ServoLeftPWM*div_ratio)/div_ratio
//   96               + DE_Servo_Left;//∏¯∂® ‰≥ˆ 2603 + DE_Servo_Left
??v_Servo_Out_1:
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MUL      R4,R1,R2
        MLA      R0,R3,R0,R4
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        SDIV     R0,R0,R1
        ADDW     R0,R0,#+582
//   97                                             //2113 3063
//   98     if(PWMtemp > const_offset + const_ServoLeftPWM + DE_Servo_Left)
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        UXTAH    R1,R2,R3
        ADDW     R1,R1,#+582
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R1,R0
        BGE.N    ??v_Servo_Out_2
//   99     {PWMtemp = const_offset + const_ServoLeftPWM + DE_Servo_Left;}//∑˘∂»œﬁ÷∆
        ADDS     R0,R2,R3
        ADDW     R0,R0,#+582
        B.N      ??v_Servo_Out_3
//  100     else if(PWMtemp < const_ServoLeftPWM + DE_Servo_Left){PWMtemp = const_ServoLeftPWM + DE_Servo_Left;}//Õ¨…œ
??v_Servo_Out_2:
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        ADDW     R1,R2,#+582
        CMP      R0,R1
        BGE.N    ??v_Servo_Out_3
        ADDW     R0,R2,#+582
//  101     
//  102     FTM0_C2V = 0;
??v_Servo_Out_3:
        LDR.N    R1,??DataTable4_16  ;; 0x40038020
        MOVS     R2,#+0
        STR      R2,[R1, #+0]
//  103     FTM0_C3V = PWMtemp;// ‰≥ˆ
        LDR.N    R1,??DataTable4_17  ;; 0x40038028
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        STR      R0,[R1, #+0]
//  104     FTM0_SYNC |= FTM_SYNC_SWSYNC_MASK;
        LDR.N    R0,??DataTable4_20  ;; 0x40038058
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.N    R1,??DataTable4_20  ;; 0x40038058
        STR      R0,[R1, #+0]
//  105 }
        POP      {R4}
        BX       LR               ;; return
//  106 
//  107 //==============================================================
//  108 // ∫Ø ˝√˚£∫n_GetServoAngle
//  109 // π¶ƒ‹√Ë ˆ£∫ªÒ»°µ±«∞∂Êª˙µƒΩ«∂»÷µ
//  110 //==============================================================
//  111 #define DE_ServoADC_BASE_PTR            ADC3_BASE_PTR

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  112 uint16 n_GetServoAngle()
//  113 {
//  114     uint16 result = 0;
n_GetServoAngle:
        MOVS     R0,#+0
//  115     DE_ServoADC_BASE_PTR->CFG1 = ADC_CFG1_ADIV(0)      //ADC1…Ë÷√Œ™◊‹œﬂ ±÷”∆µ¬ /8
//  116                         | ADC_CFG1_MODE(1)      //8Œª≤…—˘//8 12 10 16
//  117                         | ADC_CFG1_ADLSMP_MASK;  //≥§≤…—˘ ±º‰
        LDR.N    R1,??DataTable4_21  ;; 0x400bc008
        MOVS     R2,#+20
        STR      R2,[R1, #+0]
//  118     DE_ServoADC_BASE_PTR->CFG2 = ADC_CFG2_ADHSC_MASK;//ADC1…Ë÷√Œ™aÕ®µ¿£¨Ω˚÷π“Ï≤Ω ±÷”£¨∏ﬂÀŸ–Ú¡–◊™ªª£¨◊Ó≥§≤…—˘ ±º‰
        LDR.N    R1,??DataTable4_22  ;; 0x400bc00c
        MOVS     R2,#+4
        STR      R2,[R1, #+0]
//  119     DE_ServoADC_BASE_PTR->SC1[0] = 17;//ADC1…Ë÷√Œ™Ω˚÷π÷–∂œ£¨µ•∂À≤…—˘£¨Õ®µ¿4a≤…—˘£¨’‚∏ˆºƒ¥Ê∆˜–¥»Î∫ÛæÕª·ø™ º◊™ªª
        LDR.N    R1,??DataTable4_23  ;; 0x400bc000
        MOVS     R2,#+17
        STR      R2,[R1, #+0]
//  120     while (ADC_SC1_COCO_MASK != (DE_ServoADC_BASE_PTR->SC1[0] & ADC_SC1_COCO_MASK ));//µ»¥˝µ•¥Œ◊™ªªÕÍ≥…   
??n_GetServoAngle_0:
        LDR.N    R0,??DataTable4_23  ;; 0x400bc000
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??n_GetServoAngle_0
//  121     result = DE_ServoADC_BASE_PTR->R[0];
        LDR.N    R0,??DataTable4_24  ;; 0x400bc010
        LDR      R0,[R0, #+0]
//  122     return result;
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BX       LR               ;; return
//  123 }
//  124 
//  125 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  126 uint16 n_GetServoGraduated(uint16 Angle)
//  127 {
n_GetServoGraduated:
        PUSH     {R7,LR}
        VPUSH    {D8}
//  128     const uint16 nLeftVar = 2182;//
        MOVW     R1,#+2182
//  129     const uint16 nRightVar = 3912;//
        MOVW     R2,#+3912
//  130     float ratio = ((float)(Angle - nLeftVar)/(float)(nRightVar - nLeftVar));
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        SUBS     R0,R0,R1
        VMOV     S0,R0
        VCVT.F32.S32 S0,S0
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        SUBS     R0,R2,R1
        VMOV     S1,R0
        VCVT.F32.S32 S1,S1
        VDIV.F32 S16,S0,S1
//  131     if(ratio < 0.f){ratio = 0.f;v_BuzzerBeepSet(1000);}
        VCMP.F32 S16,#0.0
        FMSTAT   
        BPL.N    ??n_GetServoGraduated_0
        VLDR.W   S16,??DataTable4  ;; 0x0
        MOV      R0,#+1000
        BL       v_BuzzerBeepSet
//  132     if(ratio > 1.f){ratio = 1.f;v_BuzzerBeepSet(1000);}
??n_GetServoGraduated_0:
        VLDR.W   S0,??DataTable4_1  ;; 0x3f800001
        VCMP.F32 S16,S0
        FMSTAT   
        BLT.N    ??n_GetServoGraduated_1
        VMOV.F32 S16,#1.0
        MOV      R0,#+1000
        BL       v_BuzzerBeepSet
//  133     uint16 ServoGraduated = (uint16)(ratio*number_ServoGraduated);
??n_GetServoGraduated_1:
        LDR.N    R0,??DataTable4_25
        LDRH     R0,[R0, #+0]
        VMOV     S0,R0
        VCVT.F32.U32 S0,S0
        VMUL.F32 S0,S0,S16
        VCVT.S32.F32 S0,S0
        VMOV     R0,S0
//  134     return ServoGraduated;
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        VPOP     {D8}
        POP      {R1,PC}          ;; return
//  135 }
//  136 
//  137 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  138 void v_steer_set2pwm()
//  139 {
v_steer_set2pwm:
        PUSH     {R4,LR}
//  140     const sint16 middle_Line_Turn_Average = 86;//83;
        MOVS     R4,#+86
//  141     uint16 servo_middline = n_getSteerMiddleLine_UsedAverage();//m_Control.u16_SteerControlSevro();//µ√»°÷–œﬂ                
        BL       n_getSteerMiddleLine_UsedAverage
//  142     
//  143     m_ImageAbstract.servo_gaiaInfor_image = servo_middline;//Ω´÷–œﬂ∏¯∂®
        LDR.N    R1,??DataTable4_26
        STRB     R0,[R1, #+483]
//  144     
//  145     m_Control.image_control_n_cut_one = m_Control.image_control_n;//–≈œ¢∑¥¿°
        LDR.N    R1,??DataTable4_27
        LDR.N    R2,??DataTable4_27
        LDR      R2,[R2, #+100]
        STR      R2,[R1, #+104]
//  146     m_Control.image_control_n = servo_middline;//∏¯∂®±æ¥Œ–≈œ¢
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        VMOV     S0,R0
        VCVT.F32.U32 S0,S0
        LDR.N    R1,??DataTable4_27
        VSTR     S0,[R1, #+100]
//  147                     
//  148     //P
//  149     servo_middline = servo_middline;
//  150     //m_Control.ServoBeforeDiff = servo_middline;//π€≤‚”√
//  151     //D
//  152     servo_middline += m_Control.ServoDiff*(m_Control.image_control_n - m_Control.image_control_n_cut_one);
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        VMOV     S0,R0
        VCVT.F32.U32 S0,S0
        LDR.N    R0,??DataTable4_27
        VLDR     S1,[R0, #+100]
        LDR.N    R0,??DataTable4_27
        VLDR     S2,[R0, #+104]
        VSUB.F32 S1,S1,S2
        LDR.N    R0,??DataTable4_27
        VLDR     S2,[R0, #+36]
        VMLA.F32 S0,S1,S2
        VCVT.S32.F32 S0,S0
        VMOV     R0,S0
//  153     //m_Control.ServoDiff = servo_middline;//π€≤‚”√
//  154     //servo_middline = servo_middline + 1.f*(m_Control.image_control_n - m_Control.image_control_n_cut_one);
//  155                     
//  156     //m_Control.ServoBeforeDiff = (sint16)(1.2f*(middle_Line_Turn_Average - m_Control.ServoBeforeDiff));//π€≤‚”√
//  157     
//  158     sint16 servo_middline_set = (sint16)(1.28f*(middle_Line_Turn_Average - servo_middline));//∂Êª˙PD
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        SUBS     R0,R4,R0
        VMOV     S0,R0
        VCVT.F32.S32 S0,S0
        VLDR.W   S1,??DataTable4_2  ;; 0x3fa3d70a
        VMUL.F32 S0,S0,S1
        VCVT.S32.F32 S0,S0
        VMOV     R0,S0
//  159     //1.2fªÚ–Ì”–Œ Ã‚£¨∏ƒŒ™1.28 ‘ ‘
//  160     /*
//  161     if((1 == m_CarRunningMode.isUsedDoubleServoPID)
//  162      &&(0 == m_ImageAbstract.RtAngle_isLasting)
//  163      &&(0 == m_ImageTesting.isMeetingHazard))
//  164     {
//  165         if(__ABS(servo_middline_set) > 50)
//  166         {
//  167             servo_middline_set = servo_middline_set * m_CarRunningMode.DoubleServoPIDRatio;
//  168         }//“‘…œ’‚æ‰”√”⁄±‰PID¬∑æ∂
//  169     }
//  170     */
//  171     if(servo_middline_set > 98){servo_middline_set = 98;}
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+99
        BLT.N    ??v_steer_set2pwm_0
        MOVS     R0,#+98
//  172     if(servo_middline_set < -98){servo_middline_set = -98;}
??v_steer_set2pwm_0:
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMN      R0,#+98
        BGE.N    ??v_steer_set2pwm_1
        MVNS     R0,#+97
//  173     servo_middline_set += 100;//«∞¿°
??v_steer_set2pwm_1:
        ADDS     R0,R0,#+100
//  174     //m_Control.ServoBeforeDiff += 100;            
//  175     
//  176     
//  177     //servo_middline_set = (uint16)((float)servo_middline_set);//
//  178     //m_Control.ServoDiff = servo_middline_set;//π€≤‚”√   
//  179     
//  180     if(0 == m_Control.need_Hold)
        LDR.N    R1,??DataTable4_27
        LDRB     R1,[R1, #+17]
        CMP      R1,#+0
        BNE.N    ??v_steer_set2pwm_2
//  181     {
//  182         if((1 == m_Control.need_TurnLeft)&&((198 == servo_middline_set)||(servo_middline_set < 160)))
        LDR.N    R1,??DataTable4_27
        LDRB     R1,[R1, #+15]
        CMP      R1,#+1
        BNE.N    ??v_steer_set2pwm_3
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+198
        BEQ.N    ??v_steer_set2pwm_4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+160
        BGE.N    ??v_steer_set2pwm_3
//  183         {
//  184             servo_middline_set = 198;
??v_steer_set2pwm_4:
        MOVS     R0,#+198
//  185         }
//  186         if((1 == m_Control.need_TurnRight)&&((2 == servo_middline_set)||(servo_middline_set > 40)))
??v_steer_set2pwm_3:
        LDR.N    R1,??DataTable4_27
        LDRB     R1,[R1, #+16]
        CMP      R1,#+1
        BNE.N    ??v_steer_set2pwm_5
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+2
        BEQ.N    ??v_steer_set2pwm_6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+41
        BLT.N    ??v_steer_set2pwm_5
//  187         {
//  188             servo_middline_set = 2;
??v_steer_set2pwm_6:
        MOVS     R0,#+2
//  189         }
//  190         m_Control.ServoDeg = servo_middline_set;//∏≥÷µ◊Ó–¬∂Êª˙ ˝÷µ
??v_steer_set2pwm_5:
        LDR.N    R1,??DataTable4_27
        STRH     R0,[R1, #+32]
//  191     }
//  192     if(1 == m_Control.need_turnRobustly_flag)
??v_steer_set2pwm_2:
        LDR.N    R0,??DataTable4_27
        LDRB     R0,[R0, #+20]
        CMP      R0,#+1
        BNE.N    ??v_steer_set2pwm_7
//  193     {
//  194         m_Control.ServoDeg = m_Control.servo_turn_Robustly;
        LDR.N    R0,??DataTable4_27
        LDR.N    R1,??DataTable4_27
        LDRB     R1,[R1, #+19]
        STRH     R1,[R0, #+32]
//  195     }
//  196                    
//  197     if(1 == switch_3)
??v_steer_set2pwm_7:
        BL       u8_ExInterface8_get
        CMP      R0,#+1
        BNE.N    ??v_steer_set2pwm_8
//  198     {
//  199         v_Servo_Out(m_Control.ServoDeg);
        LDR.N    R0,??DataTable4_27
        LDRSH    R0,[R0, #+32]
        BL       v_Servo_Out
//  200     }
//  201     else
//  202     {//≤ª ‰≥ˆº¥±£÷§…œ¥ŒΩ«∂»
//  203     }
//  204       
//  205     /*
//  206     if((1 == m_CarRunningMode.isUsedDoubleServoPID)
//  207      &&(0 == m_ImageAbstract.RtAngle_isLasting)
//  208      &&(0 == m_ImageTesting.isMeetingHazard))
//  209     {
//  210         if(__ABS(m_Control.ServoDeg) > 30)
//  211         {
//  212             m_Control.ServoDeg = m_Control.ServoDeg * m_CarRunningMode.DoubleServoPIDRatio;
//  213         }//“‘…œ’‚æ‰”√”⁄±‰PID¬∑æ∂
//  214     }
//  215     */
//  216     m_Control.servo_turn_Robustly = 0;
??v_steer_set2pwm_8:
        LDR.N    R0,??DataTable4_27
        MOVS     R1,#+0
        STRB     R1,[R0, #+19]
//  217     m_Control.need_Hold = 0;
        LDR.N    R0,??DataTable4_27
        MOVS     R1,#+0
        STRB     R1,[R0, #+17]
//  218 }
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     0x3f800001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     0x3fa3d70a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     0x40048030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     0x4004a01c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_6:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_7:
        DC32     0x40049018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_8:
        DC32     0x40038054

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_9:
        DC32     0x40038064

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_10:
        DC32     0x4003808c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_11:
        DC32     0x1f1fb5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_12:
        DC32     0x40038024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_13:
        DC32     0x4003801c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_14:
        DC32     0x4003804c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_15:
        DC32     0x40038008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_16:
        DC32     0x40038020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_17:
        DC32     0x40038028

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_18:
        DC32     0x40038004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_19:
        DC32     0x40038000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_20:
        DC32     0x40038058

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_21:
        DC32     0x400bc008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_22:
        DC32     0x400bc00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_23:
        DC32     0x400bc000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_24:
        DC32     0x400bc010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_25:
        DC32     number_ServoGraduated

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_26:
        DC32     m_ImageAbstract

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_27:
        DC32     m_Control

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
// 812 bytes in section .text
// 
// 812 bytes of CODE memory
//
//Errors: none
//Warnings: none
