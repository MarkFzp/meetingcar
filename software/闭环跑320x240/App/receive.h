
#ifndef _RECEIVE_H_
#define _RECEIVE_H_


void rec_uart(void);
void bluetooth_init(void);//蓝牙初始化s

void translation(void);//接收串口字符串程序
extern char str1[100];//串口最终整理的字符串
extern char receive_char;
extern int flag_stop;

extern int start_mode;
extern int v_mode;
extern int control_duty;

#endif


