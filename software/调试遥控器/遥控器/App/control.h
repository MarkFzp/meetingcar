#ifndef _CONTROL_H_
#define _CONTROL_H_

void uart5_handler();

void key_read(void);
extern int key_last[6],key_now[6];
extern int angle_err,angle_dif,angle_last,aim_angle,angle_now;
extern int aim_r,aim_l;
#endif