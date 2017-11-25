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
   //lptmr_timing_ms(10);                                        //定时器初始化,定时10ms
 
  //set_vector_handler(LPTMR_VECTORn  ,uart5_handler);            //设置LPTMR的中断服务函数为 uart5_handler
    uart_rx_irq_en(UART5);
   set_vector_handler(UART5_RX_TX_VECTORn,uart5_handler);
   enable_irq (UART5_RX_TX_IRQn);                        
}




/***********************************
* @brief    定时器中断初始化   ↓  **                       
************************************/
void timer_interrupt()    
{   pit_init_ms(PIT0, 5);    //暂定编码器为5ms中断 后期看需要自己改
    set_vector_handler(PIT0_VECTORn ,PIT0_IRQHandler);  //编码器中断
    //enable_irq (PIT0_IRQn);   //使能PIT0中断     用编码器的时候记得使能
    set_irq_priority(PIT0_IRQn,2);
    
    pit_init_ms(PIT1, 20);                                   // 50ms中断
    set_vector_handler(PIT1_VECTORn ,PIT1_IRQHandler);      //设置PIT1的中断服务函数为 PIT0_IRQHandler
    enable_irq (PIT1_IRQn);                                 //使能PIT1中断
    set_irq_priority(PIT1_IRQn,2);                     //优先级为2
    
    pit_init_ms(PIT2, 50);                                   // 50ms中断
    set_vector_handler(PIT2_VECTORn ,PIT2_IRQHandler);      //设置PIT2的中断服务函数为 PIT1_IRQHandler
    enable_irq (PIT2_IRQn);                                 //使能PIT22中断
    set_irq_priority(PIT2_IRQn,2);                     //优先级为2
    
//    lptmr_timing_ms(10); 
//    set_vector_handler(LPTMR_VECTORn ,uart5_handler);            //设置LPTMR的中断服务函数为 uart5_handler
//    enable_irq (LPTMR_IRQn);        
}


int16 echo_speed=0;
void PIT0_IRQHandler(void)
{

    
    echo_speed = ftm_quad_get(FTM1);          //获取FTM 正交解码 的脉冲数(负数表示反方向)
    ftm_quad_clean(FTM1);

    if(echo_speed>=0)
    {
        printf("\n正转：%d",echo_speed);
    }
    else
    {
        printf("\n反转：%d",-echo_speed);
    }

    PIT_Flag_Clear(PIT0);       //清中断标志位
}


void PIT1_IRQHandler(void)
{
    gpio_set(PTE0,1);//用于测试 所用时间
    Task_50Hz();
    gpio_set(PTE0,0);
    PIT_Flag_Clear(PIT1);       //清中断标志位
}

void PIT2_IRQHandler(void)
{
    gpio_set(PTE1,1);
    Task_20Hz();
    gpio_set(PTE1,0);
    PIT_Flag_Clear(PIT2);       //清中断标志位
}

/*
* @brief   以上为定时器中断初始化    ↑                    
*/
