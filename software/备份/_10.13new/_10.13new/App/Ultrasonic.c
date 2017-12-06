#include "common.h"
#include "include.h"

#include "Ultrasonic.h"

extern float distence  ;
void Ultrasonic_init()
{
    gpio_init (PTE0, GPO,HIGH);                                         //��ʼ����������                           
      
    port_init(PTE1, ALT1 | IRQ_RISING  |IRQ_FALLING| PULLDOWN | PF);    //���ù���1|�����ش���|�½��ش�����������|��Դ�˲�
    set_vector_handler(PORTE_VECTORn , PORTE_IRQHandler); 
    enable_irq (PORTE_IRQn);
    
    pit_init_us(PIT0,15);                                               //ʹ�� ��ʱ��0 �������������趨ʱ��15us
    set_vector_handler(PIT0_VECTORn ,PIT0_IRQHandler);   
    set_irq_priority(PIT0_IRQn,1);
    enable_irq (PIT0_IRQn);
   
}

void PIT0_IRQHandler(void)
{
      gpio_turn(PTE0);                  //�����ź�                
    
      PIT_Flag_Clear(PIT0);             //���жϱ�־λ
}


void PORTE_IRQHandler()
{
  PORT_FUNC(E,1, Ultrasonic_handler);   //PORT_FUNC()�������������־λ��Ultrasonic_handler���Ǽ�ʱ�ж�

}


void  Ultrasonic_handler()
{
  if(gpio_get(PTE1) == 1)               //�����ؿ�ʼ��ʱ
  {
   // pit_time_start (PIT1);
  lptmr_time_start_us();                //ʹ�õ͹��Ķ�ʱ��
    
  }
    if(gpio_get(PTE1) == 0)             //�½���ֹͣ��ʱ���������
  {
//    distence = pit_time_get_us (PIT1)*0.17f;
    distence = lptmr_time_get_us()*0.17f;
  }

}
