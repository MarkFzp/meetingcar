#ifndef _SYSTEMINIT_H_
#define _SISTEMINIT_H_

void systemInit(void);

void timer_interrupt(void);

extern int16 echo_speed;
void PIT0_IRQHandler(void);
void PIT1_IRQHandler(void);
void PIT2_IRQHandler(void);
void uart5_handler(void);


#endif
