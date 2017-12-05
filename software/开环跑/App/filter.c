#include "common.h"
#include "include.h"
#include "filter.h"


//IIR数字低通滤波器

float DITANCE_IIR_FACTOR = 0,ECHO_IIR_FACTOR = 0;
void Calculate_Distance_FilteringCoefficient(float Time, float Cut_Off) 
{
	DITANCE_IIR_FACTOR = Time /( Time + 1/(2.0f*Pi*Cut_Off) );      //滤波器参数计算
}


//  distence为原始数据        filter_distence为滤波后数据          
// Sample ： DITANCE_IIR_Filter(&distence, &filter_distence);

void DITANCE_IIR_Filter(float *distance_in, float *distance_out)       
{
	*distance_out  = *distance_out  + DITANCE_IIR_FACTOR *(*distance_in - *distance_out); 
	 
}




void Calculate_ECHO_FilteringCoefficient(float Time, float Cut_Off) 
{
	ECHO_IIR_FACTOR = Time /( Time + 1/(2.0f*Pi*Cut_Off) );      //滤波器参数计算
}



void ECHO_IIR_Filter(struct _echo *echo_in,struct _echo *echo_out)
{
	echo_out->left  = (int)(echo_out->left  + ECHO_IIR_FACTOR *(echo_in->left  - echo_out->left)); 
	echo_out->right = (int)(echo_out->right + ECHO_IIR_FACTOR *(echo_in->right - echo_out->right)); 
	 
}