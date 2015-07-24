#include "arm_cm4.h"
#include "MK60F15.h"
#include "ShunAn_Lib.h"
#include "start_ShunAn.h"

#include "IIC.h"

#include "Poet_Navigation.h"
//======================================================================================================//
//======================================================================================================//
//======================================================================================================//
//======================================================================================================//
// ���ٶȵ�����
//============================================================================//
// FXLS8471QR1 - ���ٶȼ�
// 6.1����ʽ����
uint8 b_Accel_Init()
{
    // ģ�������ſ���
    SIM_SCGC4 |= SIM_SCGC4_IIC0_MASK; // SIM_SCGC4_IIC0_MASK
    SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
    PORTB_BASE_PTR->PCR[0] = 0x00000200u; // SCL
    PORTB_BASE_PTR->PCR[1] = 0x00000200u; // SDA
    
    I2C0_BASE_PTR->F = 0; //0x16; // 75MHz ��Ƶ45 0x21 => 400kHz
    I2C0_BASE_PTR->C1 = I2C_C1_IICEN_MASK; // ����IICģʽ
    
    I2C_MemMapPtr iic_num = I2C0_BASE_PTR;
    // ��ʼ������
    uint8 returnNum = 0;
    // ====================================================================== //
    /* Ŀ��ȷ�� */
    if('F' == u8_IIC_ReadReg(iic_num ,ACCELreg_IIC_ADDR_LOW_1E ,&returnNum , ACCELreg_WHO_AM_I_0D)){return 'F';}; // �궨���ٶȼ�
    if(ACCEL_WHOAMI_VAR != returnNum){return 'F';} // Ŀ��ȷ��
    // ====================================================================== //
    /* FIFO ���� */
    if('F' == u8_IIC_WriteReg(iic_num ,ACCELreg_IIC_ADDR_LOW_1E ,0 , 0x09)){return 'F';}; //  //
    if('F' == u8_IIC_ReadReg(iic_num ,ACCELreg_IIC_ADDR_LOW_1E ,&returnNum , 0x09)){return 'F';}; // �궨���ٶȼ�
    if(0 != returnNum){return 'F';} //
    // ====================================================================== //
    /* �������������� */ // ctrl 0x0E
    returnNum = 0;
    if('F' == u8_IIC_WriteReg(iic_num ,ACCELreg_IIC_ADDR_LOW_1E ,0|0 , 0x0E)){return 'F';}; // �ر��˲� // �������
    if('F' == u8_IIC_ReadReg(iic_num ,ACCELreg_IIC_ADDR_LOW_1E ,&returnNum , 0x0E)){return 'F';}; // �궨���ٶȼ�
    if(0 != returnNum){return 'F';} //
    // ====================================================================== //
    /* ��ͨ�˲� */
    if('F' == u8_IIC_WriteReg(iic_num ,ACCELreg_IIC_ADDR_LOW_1E ,0 , 0x0F)){return 'F';};
    if('F' == u8_IIC_ReadReg(iic_num ,ACCELreg_IIC_ADDR_LOW_1E ,&returnNum , 0x0F)){return 'F';}; // �궨���ٶȼ�
    if(0 != returnNum){return 'F';} //    
    
    // ====================================================================== //
    /* оƬ���� */ // ctrl 0x2A -> 0x2E
    if('F' == u8_IIC_WriteReg(iic_num ,ACCELreg_IIC_ADDR_LOW_1E ,(1<<3)|3 , 0x2A)){return 'F';}; //  // 
    if('F' == u8_IIC_ReadReg(iic_num ,ACCELreg_IIC_ADDR_LOW_1E ,&returnNum , 0x2A)){return 'F';}; // �궨���ٶȼ�
    if(3 != returnNum){return 'F';} //    
    if('F' == u8_IIC_WriteReg(iic_num ,ACCELreg_IIC_ADDR_LOW_1E ,0 , 0x2B)){return 'F';}; //  //
    if('F' == u8_IIC_ReadReg(iic_num ,ACCELreg_IIC_ADDR_LOW_1E ,&returnNum , 0x2B)){return 'F';}; // �궨���ٶȼ�
    if(0 != returnNum){return 'F';} //
    /*
    if('F' == u8_IIC_WriteReg(iic_num ,ACCELreg_IIC_ADDR_LOW_1E ,0 , 0x2C)){return 'F';}; //  // 
    if('F' == u8_IIC_WriteReg(iic_num ,ACCELreg_IIC_ADDR_LOW_1E ,0 , 0x2D)){return 'F';}; //  // 
    if('F' == u8_IIC_WriteReg(iic_num ,ACCELreg_IIC_ADDR_LOW_1E ,0 , 0x2E)){return 'F';}; //  // 
    */
    

    // 
    return 'T';
}

// 88us
uint8 b_getAccelVar(s_Navigation * Navigation_ptr)
{
    uint8 temp_H = 0; uint8 temp_L = 0;
    if(('F' == u8_IIC_ReadReg(I2C0_BASE_PTR,ACCELreg_IIC_ADDR_LOW_1E,&temp_H,0x01))||
       ('F' == u8_IIC_ReadReg(I2C0_BASE_PTR,ACCELreg_IIC_ADDR_LOW_1E,&temp_L,0x02)))
    {return 'F';}
    Navigation_ptr->s_Accel.x = ((temp_H << 8)|temp_L);
    Navigation_ptr->s_Accel.x /= 4;
    temp_H = 0; temp_L = 0;
    if(('F' == u8_IIC_ReadReg(I2C0_BASE_PTR,ACCELreg_IIC_ADDR_LOW_1E,&temp_H,0x03))||
       ('F' == u8_IIC_ReadReg(I2C0_BASE_PTR,ACCELreg_IIC_ADDR_LOW_1E,&temp_L,0x04)))
    {return 'F';}
    Navigation_ptr->s_Accel.y = ((temp_H << 8)|temp_L);
    Navigation_ptr->s_Accel.y /= 4;
    temp_H = 0; temp_L = 0;
    if(('F' == u8_IIC_ReadReg(I2C0_BASE_PTR,ACCELreg_IIC_ADDR_LOW_1E,&temp_H,0x05))||
       ('F' == u8_IIC_ReadReg(I2C0_BASE_PTR,ACCELreg_IIC_ADDR_LOW_1E,&temp_L,0x06)))
    {return 'F';}
    Navigation_ptr->s_Accel.z = ((temp_H << 8)|temp_L);
    Navigation_ptr->s_Accel.z /= 4;
    return 'T';
}

//======================================================================================================//
//======================================================================================================//
//======================================================================================================//
//======================================================================================================//
// ���ݵ�����
//======================================================================================================//
/* b_Gyro_Init */ 
#define DEreg_GYRO_WHO_AM_I_0F                          0x0F
#define DEreg_GYRO_CTRL1_20                             0x20
#define DEreg_GYRO_CTRL2_21                             0x21
#define DEreg_GYRO_CTRL3_22                             0x22
#define DEreg_GYRO_CTRL4_23                             0x23
#define DEreg_GYRO_CTRL5_24                             0x24

#define DEreg_GYRO_OutxL_28                             0x28
#define DEreg_GYRO_OutxH_29                             0x29
#define DEreg_GYRO_OutyL_30                             0x2A
#define DEreg_GYRO_OutyH_31                             0x2B
#define DEreg_GYRO_OutzL_32                             0x2C
#define DEreg_GYRO_OutzH_33                             0x2D

#define DEadr_GYRO_ADDR_LOW_6A                          0x6A // CS == 1 // _HIGH => CS + 1

uint8 b_Gyro_Init()
{
    // ģ�������ſ���
    SIM_SCGC4 |= SIM_SCGC4_IIC0_MASK; // SIM_SCGC4_IIC0_MASK
    SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
    PORTB_BASE_PTR->PCR[0] = 0x00000200u; // SCL
    PORTB_BASE_PTR->PCR[1] = 0x00000200u; // SDA
    
    I2C0_BASE_PTR->F = 0; //0x16; // 75MHz ��Ƶ45
    I2C0_BASE_PTR->C1 = I2C_C1_IICEN_MASK; // ����IICģʽ
    
    I2C_MemMapPtr iic_num = I2C0_BASE_PTR;
    // ��ʼ������
    uint8 returnNum = 0;
    
    // ======================================= //
    if('F' == u8_IIC_ReadReg(iic_num ,DEadr_GYRO_ADDR_LOW_6A ,&returnNum , DEreg_GYRO_WHO_AM_I_0F))
    {return 'F';} // �궨���ٶȼ�
    if(0xD7 != returnNum){return 'F';} // Ŀ��ȷ��
    // ======================================= //
    if('F' == u8_IIC_WriteReg(iic_num ,DEadr_GYRO_ADDR_LOW_6A , 0x0F , DEreg_GYRO_CTRL1_20))
    {return 'F';} // ����1
    returnNum = 0;
    if('F' == u8_IIC_ReadReg(iic_num ,DEadr_GYRO_ADDR_LOW_6A ,&returnNum , DEreg_GYRO_CTRL1_20)){return 'F';} // �������
    if(0x0F != returnNum){return 'F';} // Ŀ��ȷ��
    // ======================================= //
    if('F' == u8_IIC_WriteReg(iic_num ,DEadr_GYRO_ADDR_LOW_6A , 0x29 , DEreg_GYRO_CTRL2_21))
    {return 'F';} // ����2
    returnNum = 0;
    if('F' == u8_IIC_ReadReg(iic_num ,DEadr_GYRO_ADDR_LOW_6A ,&returnNum , DEreg_GYRO_CTRL2_21)){return 'F';} // �������
    if(0x29 != returnNum){return 'F';} // Ŀ��ȷ��
    // ======================================= //
    if('F' == u8_IIC_WriteReg(iic_num ,DEadr_GYRO_ADDR_LOW_6A , 0x20 , DEreg_GYRO_CTRL4_23))
    {return 'F';} // ����4
    returnNum = 0;
    if('F' == u8_IIC_ReadReg(iic_num ,DEadr_GYRO_ADDR_LOW_6A ,&returnNum , DEreg_GYRO_CTRL4_23)){return 'F';} // ��ֵ����
    if(0x20 != returnNum){return 'F';} // Ŀ��ȷ��
    // ======================================= //
    if('F' == u8_IIC_WriteReg(iic_num ,DEadr_GYRO_ADDR_LOW_6A , 0x00 , DEreg_GYRO_CTRL5_24))
    {return 'F';} // ����5
    returnNum = 0;
    if('F' == u8_IIC_ReadReg(iic_num ,DEadr_GYRO_ADDR_LOW_6A ,&returnNum , DEreg_GYRO_CTRL5_24)){return 'F';} // ��ֵ����
    if(0x00 != returnNum){return 'F';} // Ŀ��ȷ��
    // ======================================= //
    
    return 'T';
}

// 0x16 17500 us / 50 => 350 us
// 0x12 11101 us
// 0x10 8450  us
// 0x02 5000  us
// 0x00 4500  us
uint8 b_getGyroVar(s_Gyro * Gyro_ptr)
{
    uint8 temp_H = 0; uint8 temp_L = 0;
    if(('F' == u8_IIC_ReadReg(I2C0_BASE_PTR,DEadr_GYRO_ADDR_LOW_6A,&temp_H,DEreg_GYRO_OutxH_29))||
       ('F' == u8_IIC_ReadReg(I2C0_BASE_PTR,DEadr_GYRO_ADDR_LOW_6A,&temp_L,DEreg_GYRO_OutxL_28)))
    {return 'F';}
    Gyro_ptr->x = ((temp_H << 8)|temp_L);
    temp_H = 0; temp_L = 0;
    if(('F' == u8_IIC_ReadReg(I2C0_BASE_PTR,DEadr_GYRO_ADDR_LOW_6A,&temp_H,DEreg_GYRO_OutyH_31))||
       ('F' == u8_IIC_ReadReg(I2C0_BASE_PTR,DEadr_GYRO_ADDR_LOW_6A,&temp_L,DEreg_GYRO_OutyL_30)))
    {return 'F';}
    Gyro_ptr->y = ((temp_H << 8)|temp_L);
    temp_H = 0; temp_L = 0;
    if(('F' == u8_IIC_ReadReg(I2C0_BASE_PTR,DEadr_GYRO_ADDR_LOW_6A,&temp_H,DEreg_GYRO_OutzH_33))||
       ('F' == u8_IIC_ReadReg(I2C0_BASE_PTR,DEadr_GYRO_ADDR_LOW_6A,&temp_L,DEreg_GYRO_OutzL_32)))
    {return 'F';}
    Gyro_ptr->z = ((temp_H << 8)|temp_L);
    
    //Gyro_ptr->x = Gyro_ptr->x;// >> 1;
    //Gyro_ptr->y = Gyro_ptr->y;// >> 1;
    //Gyro_ptr->z = Gyro_ptr->z;// >> 1;
    return 'T';
}



/*���Ե���*/
//���ٶ� => ��Թ��Կռ�Ľ��ٶ�
//���ٶ� => ���Լ��ٶ�

uint8 b_Navigation_Init()
{
    //������������ʼ��
    SIM_SCGC4 |= SIM_SCGC4_IIC0_MASK; // SIM_SCGC4_IIC0_MASK
    SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK; // ����
    PORTB_BASE_PTR->PCR[0] = 0x00000200u; // SCL
    PORTB_BASE_PTR->PCR[1] = 0x00000200u; // SDA
    //�ж�����
    
    PORTB_BASE_PTR->PCR[2] = PORT_PCR_MUX(1);//GPIO
    PORTB_BASE_PTR->PCR[3] = PORT_PCR_MUX(1);//GPIO
    PORTB_BASE_PTR->PCR[4] = PORT_PCR_MUX(1);//GPIO
    PORTB_BASE_PTR->PCR[5] = PORT_PCR_MUX(1);//GPIO
    
    PTB_BASE_PTR->PDDR &=~ (1 << 2);
    PTB_BASE_PTR->PDDR &=~ (1 << 3);
    PTB_BASE_PTR->PDDR &=~ (1 << 4);
    PTB_BASE_PTR->PDDR &=~ (1 << 5);
    
    I2C0_BASE_PTR->F = 0x16; //0x16; // 75MHz ��Ƶ45
    I2C0_BASE_PTR->C1 = I2C_C1_IICEN_MASK; // ����IICģʽ
    
    const I2C_MemMapPtr iic_num = I2C0_BASE_PTR; // �������
    // ��ʼ������
    uint8 returnNum = 0;
    
    // ====================================================================== //
    /* Ŀ��ȷ�� */
    if('F' == u8_IIC_ReadReg(iic_num ,ACCELreg_IIC_ADDR_LOW_1E ,&returnNum , ACCELreg_WHO_AM_I_0D))
    {return 'F';}; // ȷ�����ٶȼ�
    if(ACCEL_WHOAMI_VAR != returnNum){return 'F';} // Ŀ��ȷ��
    if('F' == u8_IIC_ReadReg(iic_num ,DEadr_GYRO_ADDR_LOW_6A ,&returnNum , DEreg_GYRO_WHO_AM_I_0F))
    {return 'F';} // ȷ��������
    if(0xD7 != returnNum){return 'F';} // Ŀ��ȷ��
    
    
    // ====================================================================== //
    /* �ԼĴ������и��� */ // Ҫ����LowODR
    if('F' == u8_IIC_WriteReg(iic_num ,DEadr_GYRO_ADDR_LOW_6A , 0xCF , DEreg_GYRO_CTRL1_20))
    {return 'F';} // ����ȷ�� = 20ms�������ڣ���ѡ��ODR = 50Hz => Cut-Off 16.6Hz
    if('F' == u8_IIC_WriteReg(iic_num ,DEadr_GYRO_ADDR_LOW_6A , 0x29 , DEreg_GYRO_CTRL2_21))
    {return 'F';} // Normal Mode // ��ͨ�˲���ֹƵ�ʣ�0.005 Hz
    if('F' == u8_IIC_WriteReg(iic_num ,DEadr_GYRO_ADDR_LOW_6A , 0x08 , DEreg_GYRO_CTRL3_22))
    {return 'F';} // Date Ready on DRDY/INT2 pin.
    //if('F' == u8_IIC_WriteReg(iic_num ,DEadr_GYRO_ADDR_LOW_6A , 0x00 , DEreg_GYRO_CTRL4_23))
    //{return 'F';} //
    if('F' == u8_IIC_WriteReg(iic_num ,DEadr_GYRO_ADDR_LOW_6A , 0x10 , DEreg_GYRO_CTRL5_24))
    {return 'F';} // δ���ú�
    if('F' == u8_IIC_WriteReg(iic_num ,DEadr_GYRO_ADDR_LOW_6A , 0x01 , 0x39))
    {return 'F';} // ����ʹ��
    
    
    
    return 'T';
}