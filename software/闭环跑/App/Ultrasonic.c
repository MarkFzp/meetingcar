#include "common.h"
#include "include.h"

#include "Ultrasonic.h"

extern float distence  ;
void Ultrasonic_init()
{
    gpio_init (PTE0, GPO,HIGH);                                         //初始化触发引脚                           
      
    port_init(PTE1, ALT1 | IRQ_RISING  |IRQ_FALLING| PULLDOWN | PF);    //复用功能1|上升沿触发|下降沿触发下拉电阻|无源滤波
    set_vector_handler(PORTE_VECTORn , PORTE_IRQHandler); 
    enable_irq (PORTE_IRQn);
    
    pit_init_us(PIT0,15);                                               //使用 定时器0 触发超声波，设定时间15us
    set_vector_handler(PIT0_VECTORn ,PIT0_IRQHandler);   
    set_irq_priority(PIT0_IRQn,1);
    enable_irq (PIT0_IRQn);
   
}

void PIT0_IRQHandler(void)
{
      gpio_turn(PTE0);                  //触发信号                
    
      PIT_Flag_Clear(PIT0);             //清中断标志位
}


void PORTE_IRQHandler()
{
  PORT_FUNC(E,1, Ultrasonic_handler);   //PORT_FUNC()函数内置清除标志位，Ultrasonic_handler才是计时中断

}


void  Ultrasonic_handler()
{
  if(gpio_get(PTE1) == 1)               //上升沿开始计时
  {
   // pit_time_start (PIT1);
  lptmr_time_start_us();                //使用低功耗定时器
    
  }
    if(gpio_get(PTE1) == 0)             //下降沿停止计时，计算距离
  {
//    distence = pit_time_get_us (PIT1)*0.17f;
    distence = lptmr_time_get_us()*0.17f;
  }

}
