#ifndef _FILTER_H_
#define _FILTER_H_
#include "FTM.h"

void Calculate_Distance_FilteringCoefficient(float Time, float Cut_Off);
//void Calculate_ECHO_FilteringCoefficient(float Time, float Cut_Off);// ��Ҫ��ԭ���ע�ͷ����˲������� ������������ڰɡ�
void DITANCE_IIR_Filter(float *distance_in, float *distance_out);
void ECHO_IIR_Filter(struct _echo *echo_in,struct _echo *echo_out);

#endif