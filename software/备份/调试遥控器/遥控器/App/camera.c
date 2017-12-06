#include "common.h"
#include "include.h"

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