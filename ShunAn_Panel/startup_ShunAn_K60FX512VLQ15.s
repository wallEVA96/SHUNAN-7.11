/*
*�ļ�����              startup_ShunAn_K60FX512VLQ15.s
*˵����                ˳��2�Ż�������ļ�
*����оƬ�ͺţ�        MK60FX512VLQ15
*����ʱ�䣺            2014/5/18
*���ߣ�                ���ϴ�ѧ����
*/

/*
*�ļ�����              startup_ShunAn_K60FX512VLQ15.s
*˵����                ˳��3�Ż�������ļ�
*����оƬ�ͺţ�        MK60FX512VLQ15
*����ʱ�䣺            2014/12/18
*���ߣ�                ���ϴ�ѧ����
*/
//��ǰհ
        SECTION .noinit : CODE          ; //ָ������Σ�.noinit
        EXPORT  Reset_Handler           ; //���� Reset_Handler ����
Reset_Handler
        MOV     r0,#0                   ; //��ʼ���Ĵ���
	MOV     r1,#0
	MOV     r2,#0
	MOV     r3,#0
	MOV     r4,#0
	MOV     r5,#0
	MOV     r6,#0
	MOV     r7,#0
        MOV     r8,#0
	MOV     r9,#0
	MOV     r10,#0
	MOV     r11,#0
	MOV     r12,#0
	CPSIE   i                       ; //ʹ�������ж�
        
        LDR.W   R0,=0xE000ED88          ; //����
        LDR     R1,[R0]                 ;
        ORR     R1,R1, #(0xF << 20)     ;
        STR     R1,[R0]                 ;
        
        import start
        BL      start                  ; //����C���Ժ���start
__done
        B       __done

        END  