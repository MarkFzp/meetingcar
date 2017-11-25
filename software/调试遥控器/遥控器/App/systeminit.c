#include "common.h" 
#include "include.h"
#include "camera.h"
#include "systeminit.h"
#include "task.h"
#include <stdio.h>

#include <string.h>


 



           
void systemInit()
{        
  
  IO_init();
  FTM_init();
 // OLED_Init();
 // cameraInit();
  timer_interrupt();

   uart_init(UART5,115200);
   //lptmr_timing_ms(10);                                        //��ʱ����ʼ��,��ʱ10ms
 
  //set_vector_handler(LPTMR_VECTORn  ,uart5_handler);            //����LPTMR���жϷ�����Ϊ uart5_handler
    uart_rx_irq_en(UART5);
   set_vector_handler(UART5_RX_TX_VECTORn,uart5_handler);
   enable_irq (UART5_RX_TX_IRQn);                        
}




/***********************************
* @brief    ��ʱ���жϳ�ʼ��   ��  **                       
************************************/
void timer_interrupt()    
{   pit_init_ms(PIT0, 5);    //�ݶ�������Ϊ5ms�ж� ���ڿ���Ҫ�Լ���
    set_vector_handler(PIT0_VECTORn ,PIT0_IRQHandler);  //�������ж�
    //enable_irq (PIT0_IRQn);   //ʹ��PIT0�ж�     �ñ�������ʱ��ǵ�ʹ��
    set_irq_priority(PIT0_IRQn,2);
    
    pit_init_ms(PIT1, 20);                                   // 50ms�ж�
    set_vector_handler(PIT1_VECTORn ,PIT1_IRQHandler);      //����PIT1���жϷ�����Ϊ PIT0_IRQHandler
    enable_irq (PIT1_IRQn);                                 //ʹ��PIT1�ж�
    set_irq_priority(PIT1_IRQn,2);                     //���ȼ�Ϊ2
    
    pit_init_ms(PIT2, 50);                                   // 50ms�ж�
    set_vector_handler(PIT2_VECTORn ,PIT2_IRQHandler);      //����PIT2���жϷ�����Ϊ PIT1_IRQHandler
    enable_irq (PIT2_IRQn);                                 //ʹ��PIT22�ж�
    set_irq_priority(PIT2_IRQn,2);                     //���ȼ�Ϊ2
    
//    lptmr_timing_ms(10); 
//    set_vector_handler(LPTMR_VECTORn ,uart5_handler);            //����LPTMR���жϷ�����Ϊ uart5_handler
//    enable_irq (LPTMR_IRQn);        
}


int16 echo_speed=0;
void PIT0_IRQHandler(void)
{

    
    echo_speed = ftm_quad_get(FTM1);          //��ȡFTM �������� ��������(������ʾ������)
    ftm_quad_clean(FTM1);

    if(echo_speed>=0)
    {
        printf("\n��ת��%d",echo_speed);
    }
    else
    {
        printf("\n��ת��%d",-echo_speed);
    }

    PIT_Flag_Clear(PIT0);       //���жϱ�־λ
}


void PIT1_IRQHandler(void)
{
    gpio_set(PTE0,1);//���ڲ��� ����ʱ��
    Task_50Hz();
    gpio_set(PTE0,0);
    PIT_Flag_Clear(PIT1);       //���жϱ�־λ
}

void PIT2_IRQHandler(void)
{
    gpio_set(PTE1,1);
    Task_20Hz();
    gpio_set(PTE1,0);
    PIT_Flag_Clear(PIT2);       //���жϱ�־λ
}

/*
* @brief   ����Ϊ��ʱ���жϳ�ʼ��    ��                    
*/
