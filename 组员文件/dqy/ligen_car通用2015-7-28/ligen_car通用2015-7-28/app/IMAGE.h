#ifndef __IMAGE__
#define __IMAGE__
#include "sys.h" 
void GetImageParam(void);			// 提取图像特征参数
void MidLineProcess(void);			// 提取中心线并处理
void RTRecognition(void);  			//赛道识别
void ImageProcess(void);                       //滤波、二值化、滤波
void GetImageParam();                          //提取图像特征值
void GetBlackEndParam();                       //获取黑线截止行
void GetLMR(void);                             //提取左边缘、右边缘和中心线
void MidLineProcess();                         // 提取中心线并处理
void GetEPerCount();                           //求有效偏移量,和平均每列偏移量
void RTRecognition();                          //赛道识别.
void getmidline();
void GetFinalMidLine();
void LAverageFilter();
void RAverageFilter();
void AverageFilter();
void MidLineCompensate();

void GetMidLineVariance();
void GetSpecialError();
void GetSectionParam();
void StoreMidLine();
void UseTemMidLine();
void CheckStartLine();
void HistoryRoadTypeCount();
void HistoryRTProccess();
unsigned char IsStraightToBend();
int fabss(int n);                               //取绝对值

int Find_Endline(int row,int column);
#endif