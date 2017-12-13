#ifndef _ULTRASONIC_H_
#define _ULTRASONIC_H_


void Ultrasonic_init();
void PIT0_IRQHandler(void);
void PORTE_IRQHandler();
void  Ultrasonic_handler();


#endif
