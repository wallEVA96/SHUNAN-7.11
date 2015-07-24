#ifndef __POET_IMAGE_BEHOLDER_
#define __POET_IMAGE_BEHOLDER_


typedef
struct
{
    uint32 FrameNum;
    uint16 LineCounter;
    uint8 errorNum;
    uint8 regRewrite;
    uint8 regRewriteNumber;
    uint16 regReNumber_RegName;
}
s_ImageInfor;

#define Beholder_LineY_MAX              (60)//120
#define Beholder_PixNum_MAX             (185)//376
#define Beholder_PerLine_MaxActivePix   (185)
//#define Beholder_PixALL_Num     (65534)//(Beholder_LineY_MAX*Beholder_PixNum_MAX)
#define setLeftInterVal(L)              do\
                                        {\
                                            L = (L < 3)?3:L;\
                                        }while(0)
#define setRightInterVal(R)             do\
                                        {\
                                            R = (R > 181)?181:R;\
                                        }while(0)
#define setLeftRightInterVal(L,R)       do\
                                        {\
                                            L = (L < 3)?3:L;\
                                            R = (R > 181)?181:R;\
                                        }while(0)
extern s_ImageInfor m_self_Beholder;
extern uint16 view_BeholderDataArray[Beholder_LineY_MAX][Beholder_PixNum_MAX];
//extern uint8 selfjudge_SendMessage[Beholder_LineY_MAX][Beholder_PixNum_MAX];
extern uint8 m_ImageBeholder_Data[Beholder_LineY_MAX][Beholder_PixNum_MAX];
//extern uint8 static_n_markerDatas[Beholder_LineY_MAX][Beholder_PixNum_MAX];

uint8 b_Beholder_Init(); // ����ͷ��ʼ��
uint8 b_Beholder_InteruptInit();// �жϽ��г�ʼ��

#define ENABLE_BEHOLDER_WORK                    do\
                                                {\
                                                    m_system.control_isDone = 0;\
                                                    disable_irq(PIT0_IRQn);\
                                                    enable_irq(PORTD_IRQn);\
                                                }while(0)          //��������ͷ�ж�

//extern void v_user_done_after_ImageCut();//ͼ�����������Ҫ���е�����
extern void v_system_clocked();//ϵͳʱ���Ա仯

void v_Beholder_Interupt_FuncPtr();//�жϺ���
//
uint8 b_Beholder_SetGain_35(uint8 GainSet);
void v_setShutterTime(uint16);
#endif