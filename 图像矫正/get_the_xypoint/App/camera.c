#include "common.h"
#include "include.h"
#include "receive.h"
#include "camera.h"


/***********************************
* @brief    ����ͷ��ʼ������   ��  **                       
************************************/

uint8 imgbuff[CAMERA_SIZE];  //����洢����ͼ�������
uint8 img[CAMERA_H][CAMERA_W];

void cameraInit()
{
  camera_init(imgbuff);
  set_vector_handler(PORTA_VECTORn , PORTA_IRQHandler);   //���� PORTA ���жϷ�����Ϊ PORTA_IRQHandler
  set_vector_handler(DMA0_VECTORn , DMA0_IRQHandler);     //���� DMA0  ���жϷ�����Ϊ PORTA_IRQHandler      
}

void PORTA_IRQHandler()
{
    uint8  n;    //���ź�
    uint32 flag;

    while(!PORTA_ISFR);
    flag = PORTA_ISFR;
    PORTA_ISFR  = ~0;                                   //���жϱ�־λ

    n = 29;                                             //���ж�
    if(flag & (1 << n))                                 //PTA29�����ж�
    {
        camera_vsync();
    }
#if ( CAMERA_USE_HREF == 1 )                            //ʹ�����ж�
    n = 28;
    if(flag & (1 << n))                                 //PTA28�����ж�
    {
        camera_href();
    }
#endif
}

/*!
 *  @brief      DMA0�жϷ�����
 *  @since      v5.0
 */
void DMA0_IRQHandler()
{
    camera_dma();
}

/*
* @brief   ����Ϊ����ͷ��ʼ��    ��                    
*/









/*******************************************************************************************
**    ѹ����ֵ��ͼ���ѹ���ռ� �� ʱ�� ��ѹ��                                              *                       
**    srclen �Ƕ�ֵ��ͼ���ռ�ÿռ��С                                                    *
**    ��ӥ�۽�ѹ��ӥ��ͼ���ѹ��תΪ ��ά���� -                                            * 
**    ���ܳ������� - ɽ����̳ http://vcan123.com/forum.php?mod=viewthread&tid=17&ctid=6    *
**    ��ѹ��ʱ�������и����飬���úڡ��׶�Ӧ��ֵ�Ƕ��١�                                 *
*******************************************************************************************/
void img_extract(void *dst, void *src, uint32_t srclen)
{
    uint8_t colour[2] = {255, 0}; //0 �� 1 �ֱ��Ӧ����ɫ
    uint8_t * mdst = dst;
    uint8_t * msrc = src;
    //ע��ɽ�������ͷ 0 ��ʾ ��ɫ��1��ʾ ��ɫ
    uint8_t tmpsrc;
    while(srclen --)
    {
        tmpsrc = *msrc++;
        *mdst++ = colour[ (tmpsrc >> 7 ) & 0x01 ];
        *mdst++ = colour[ (tmpsrc >> 6 ) & 0x01 ];
        *mdst++ = colour[ (tmpsrc >> 5 ) & 0x01 ];
        *mdst++ = colour[ (tmpsrc >> 4 ) & 0x01 ];
        *mdst++ = colour[ (tmpsrc >> 3 ) & 0x01 ];
        *mdst++ = colour[ (tmpsrc >> 2 ) & 0x01 ];
        *mdst++ = colour[ (tmpsrc >> 1 ) & 0x01 ];
        *mdst++ = colour[ (tmpsrc >> 0 ) & 0x01 ];
    }
}
/*
* @brief   ����Ϊͼ���ѹ����    ��                    
*/


void imgx_process(int i,int *mid_x,int *length_x,int *LeftLine, int *RightLine,int *right_mid)
{
    int  j = 0;
    int subcript_l = 255, subcript_r = 255;
    unsigned char white_cnt=0;

    for(;j<80;j++)
    {       
        if (img[i][j] == WHITE1)
            {
              white_cnt++;
              if(white_cnt==8)
              {
                      subcript_l=j-7;           //��ȥ������������ ��������...... 
                      white_cnt=0;
                      break;
              }
            }
        else
            white_cnt=0;
    }

    for(j=79;j >= 0;j--)
    {
      if (img[i][j] == WHITE1)
      {
        white_cnt++;
        if(white_cnt==8)                        //��ȥ������������                        
        {
                subcript_r=j+7;
                white_cnt=0;
                break;
        }
      }
      else
        white_cnt=0;
    }
    *LeftLine  = subcript_l;
    *RightLine = subcript_r;
    *mid_x     = (subcript_l+subcript_r)/2;
    *right_mid=(subcript_r+ *mid_x )/2;
    *length_x  = subcript_r - subcript_l;
}

int midx[60]={0},length[60]={0},left_line[60] = {0}, right_line[60] = {0}, sum = 0, cnt = 0, area = 0;
int right_mid[60]={0};//���ڳ����������������
float mid_12[12] = {0};

char img_process()
{
  int i = 0;
  for(;i<60;i++)
  {
  imgx_process(i,&midx[i],&length[i],&left_line[i], &right_line[i],&right_mid[i]);    //�д��� �ҵ�ÿ�е���߽� �ұ߽� �е� ���
  //if(midx[i] < 80)
   // img[i][ midx[i] ] = 0;//���Ļ�����OLED����ʾ����
   // img[i][right_mid[i]]=0;
  }
  translation();
  
  img[r_x][r_y]=1;
  
  img[r_x-1][r_y-1]=0;
  img[r_x-1][r_y]=0;
  img[r_x-1][r_y+1]=0;
  
  img[r_x][r_y-1]=0;
  img[r_x][r_y+1]=0;
  
  
  img[r_x+1][r_y-1]=0;
  img[r_x+1][r_y]=0;
  img[r_x+1][r_y+1]=0;
  char turn_flag = 0;
  area = 0;
  
  
  
  
  
  
for(i = 0; i < 60; i++)                                               //����ÿ 5 ��ƽ��ֵ������ mid_12[12] ������ 
{  
   
    if((length[i] < 80) && right_mid[i] < 80)
    {
      cnt++;
      sum += right_mid[i];
      area += length[i];
      
    }
    if( ((i+1)%5) == 0 )
    {
      if(cnt != 0)
      mid_12[ ((i+1)/5)-1 ] =  ((float)sum)/(float)cnt ;
      else
      {
        mid_12[ ((i+1)/5)-1 ] =255;
        turn_flag = i ;
      }
      sum = 0;
      cnt = 0;
    }   
}
return turn_flag;
}