
#ifndef _RECEIVE_H_
#define _RECEIVE_H_


void rec_uart(void);
void bluetooth_init(void);//������ʼ��s

void translation(void);//���մ����ַ�������
extern char str1[100];//��������������ַ���
extern char receive_char;
extern int flag_stop;

extern int start_mode;
extern int v_mode;
extern int control_duty;

#endif


