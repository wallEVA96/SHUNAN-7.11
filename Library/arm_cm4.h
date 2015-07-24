/*
 * 文件:		arm_cm4.h
 * 目的:		所有ARM Cortex M4 处理器的共同定义
 * 创建时间：            2014/5/18
 * 作者：                中南大学弓箭
 */

#ifndef _CPU_ARM_CM4_H
#define _CPU_ARM_CM4_H

//#include "common.h"  common.h includes arm_cm4.h

/*ARM Cortex M4 implementation for interrupt priority shift*/
#define ARM_INTERRUPT_LEVEL_BITS          4

/***********************************************************************/
// function prototypes for arm_cm4.c
void stop (void);
void wait (void);
void write_vtor (int);
void enable_irq (int);
void disable_irq (int);
void set_irq_priority (int, int);

/***********************************************************************/
  /*!< Macro to enable all interrupts. */
#define EnableInterrupts asm(" CPSIE i");

  /*!< Macro to disable all interrupts. */
#define DisableInterrupts asm(" CPSID i");
/***********************************************************************/

#define PUBLIC
/*
 * Misc. Defines
 */
#ifdef	FALSE
#undef	FALSE
#endif
#define FALSE	(0)

#ifdef	TRUE
#undef	TRUE
#endif
#define	TRUE	(1)

#ifdef	NULL
#undef	NULL
#endif
#define NULL	(0)

#ifdef  ON
#undef  ON
#endif
#define ON      (1)

#ifdef  OFF
#undef  OFF
#endif
#define OFF     (0)

/***********************************************************************/
/*
 * The basic data types
 */
typedef unsigned char		uint8;  /*  8 bits */
typedef unsigned short int	uint16; /* 16 bits */
typedef unsigned long int	uint32; /* 32 bits */

typedef char			int8;   /*  8 bits */
typedef short int	        int16;  /* 16 bits */
typedef int		        int32;  /* 32 bits */

typedef signed char	        sint8;   /*  8 bits */
typedef signed short int	sint16;  /* 16 bits */
typedef signed long int         sint32; /* 32 bits */

typedef volatile int8		vint8;  /*  8 bits */
typedef volatile int16		vint16; /* 16 bits */
typedef volatile int32		vint32; /* 32 bits */

typedef volatile uint8		vuint8;  /*  8 bits */
typedef volatile uint16		vuint16; /* 16 bits */
typedef volatile uint32		vuint32; /* 32 bits */

typedef volatile sint8		vsint8;  /*  8 bits */
typedef volatile sint16		vsint16; /* 16 bits */
typedef volatile sint32		vsint32; /* 32 bits */

typedef	float	                math_f32;
typedef double                  math_f64;
// function prototype for main function
void main(void);

/***********************************************************************/
#endif	/* _CPU_ARM_CM4_H */

