#ifndef __IMAGE__
#define __IMAGE__
#include "sys.h" 
void GetImageParam(void);			// ��ȡͼ����������
void MidLineProcess(void);			// ��ȡ�����߲�����
void RTRecognition(void);  			//����ʶ��
void ImageProcess(void);                       //�˲�����ֵ�����˲�
void GetImageParam();                          //��ȡͼ������ֵ
void GetBlackEndParam();                       //��ȡ���߽�ֹ��
void GetLMR(void);                             //��ȡ���Ե���ұ�Ե��������
void MidLineProcess();                         // ��ȡ�����߲�����
void GetEPerCount();                           //����Чƫ����,��ƽ��ÿ��ƫ����
void RTRecognition();                          //����ʶ��.
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
int fabss(int n);                               //ȡ����ֵ

int Find_Endline(int row,int column);
#endif