/*
*文件名：              startup_ShunAn_K60FX512VLQ15.s
*说明：                顺暗2号汇编启动文件
*所用芯片型号：        MK60FX512VLQ15
*创建时间：            2014/5/18
*作者：                中南大学弓箭
*/

/*
*文件名：              startup_ShunAn_K60FX512VLQ15.s
*说明：                顺暗3号汇编启动文件
*所用芯片型号：        MK60FX512VLQ15
*创建时间：            2014/12/18
*作者：                中南大学朱葛峻
*/
//改前瞻
        SECTION .noinit : CODE          ; //指定代码段：.noinit
        EXPORT  Reset_Handler           ; //定义 Reset_Handler 函数
Reset_Handler
        MOV     r0,#0                   ; //初始化寄存器
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
	CPSIE   i                       ; //使能所有中断
        
        LDR.W   R0,=0xE000ED88          ; //浮点
        LDR     R1,[R0]                 ;
        ORR     R1,R1, #(0xF << 20)     ;
        STR     R1,[R0]                 ;
        
        import start
        BL      start                  ; //调用C语言函数start
__done
        B       __done

        END  