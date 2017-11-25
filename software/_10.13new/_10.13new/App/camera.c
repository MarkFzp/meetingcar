#include "common.h"
#include "include.h"

#include "camera.h"


/***********************************
* @brief    摄像头初始化函数   ↓  **                       
************************************/

uint8 imgbuff[CAMERA_SIZE];  //定义存储接收图像的数组
uint8 img[CAMERA_H][CAMERA_W];

void cameraInit()
{
  camera_init(imgbuff);
  set_vector_handler(PORTA_VECTORn , PORTA_IRQHandler);   //设置 PORTA 的中断服务函数为 PORTA_IRQHandler
  set_vector_handler(DMA0_VECTORn , DMA0_IRQHandler);     //设置 DMA0  的中断服务函数为 PORTA_IRQHandler      
}

void PORTA_IRQHandler()
{
    uint8  n;    //引脚号
    uint32 flag;

    while(!PORTA_ISFR);
    flag = PORTA_ISFR;
    PORTA_ISFR  = ~0;                                   //清中断标志位

    n = 29;                                             //场中断
    if(flag & (1 << n))                                 //PTA29触发中断
    {
        camera_vsync();
    }
#if ( CAMERA_USE_HREF == 1 )                            //使用行中断
    n = 28;
    if(flag & (1 << n))                                 //PTA28触发中断
    {
        camera_href();
    }
#endif
}

/*!
 *  @brief      DMA0中断服务函数
 *  @since      v5.0
 */
void DMA0_IRQHandler()
{
    camera_dma();
}

/*
* @brief   以上为摄像头初始化    ↑                    
*/









/*******************************************************************************************
**    压缩二值化图像解压（空间 换 时间 解压）                                              *                       
**    srclen 是二值化图像的占用空间大小                                                    *
**    【鹰眼解压】鹰眼图像解压，转为 二维数组 -                                            * 
**    智能车资料区 - 山外论坛 http://vcan123.com/forum.php?mod=viewthread&tid=17&ctid=6    *
**    解压的时候，里面有个数组，配置黑、白对应的值是多少。                                 *
*******************************************************************************************/
void img_extract(void *dst, void *src, uint32_t srclen)
{
    uint8_t colour[2] = {255, 0}; //0 和 1 分别对应的颜色
    uint8_t * mdst = dst;
    uint8_t * msrc = src;
    //注：山外的摄像头 0 表示 白色，1表示 黑色
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
* @brief   以上为图像解压函数    ↑                    
*/


void imgx_process(int i,int *mid_x,int *length_x,int *LeftLine, int *RightLine)
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
                      subcript_l=j-7;           //滤去单个干扰像素  
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
        if(white_cnt==8)                        //滤去单个干扰像素                        
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
    *length_x  = subcript_r - subcript_l;
}

int midx[60]={0},length[60]={0},left_line[60] = {0}, right_line[60] = {0}, sum = 0, cnt = 0, area = 0;
float mid_12[12] = {0};

char img_process()
{
  int i = 0;
  for(;i<60;i++)
  {
  imgx_process(i,&midx[i],&length[i],&left_line[i], &right_line[i]);    //行处理 找到每行的左边界 右边界 中点 宽度
  if(midx[i] < 80)
    img[i][ midx[i] ] = 0;
  }

  char turn_flag = 0;
  area = 0;
  for(i = 0; i < 60; i++)                                               //计算每 5 行平均值保存在 mid_12[12] 数组中 
  {  
   
    if((length[i] < 80) && midx[i] < 80)
    {
      cnt++;
      sum += midx[i];
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