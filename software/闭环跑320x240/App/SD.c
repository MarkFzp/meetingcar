/*

�˳������ڿ�����ʱʹ��



*/


#include "allheader.h" 
#include "receive.h"
#include "control_car.h"
#define BUFF_SIZE   20000//���ڰ�ͼ�� ���浽SD��


char img_file_name[20];
int im_num=0;





  /*******************************/
    FIL     fdst;   //�ļ�
    FATFS   fs;     //�ļ�ϵͳ

    uint32 size, sizetmp;
    int res;
    char sd_str[20000];//���ڱ���240*180��ͼ��
    char sd_cat[20];
    
    
    uint8 buff[BUFF_SIZE];
 int for_num=0;
void save_img(int x)
{
    /***********************һ��Ϊ��ͼ������ַ�����********************************/    
    int i,j;
    sd_str[0]='\0';
    for(i=(CAMERA_H/for_num)*x;i<((CAMERA_H/for_num)*(x+1));i++)
    {
	for(j=0;j<CAMERA_W;j++)
	{
		if(j==(CAMERA_W-1))
		sprintf(sd_cat,"%d\n",img[i][j]);
		else
		sprintf(sd_cat,"%d ",img[i][j]);
	        // printf("%s\n",sd_cat);
		strcat(sd_str,sd_cat); 
	}
		    
    } 

/********************************************************/  
  
    
    
    memset(buff,0,BUFF_SIZE);

    f_mount(0, &fs);                                                               //�����ļ�ϵͳ

    //��ʼ�� SD�� �� f_open ��ִ��,Ŀǰ����ֻ֧�ִ�һ���ļ�(�� _FS_SHARE ����)��Ƶ�����ļ�������CPU��Դ
    
    
     
     sprintf(img_file_name, "0:/320/%d_%d.txt",im_num,x);
     res = f_open(&fdst,img_file_name, FA_OPEN_ALWAYS | FA_WRITE | FA_READ);  //���ļ������û�оʹ���������д��

    if( res == FR_DISK_ERR)
    {
        printf( "\nû����SD��??\n" );
        return;
    }
    else if ( res == FR_OK )
    {
        printf( "\n�ļ��򿪳ɹ� \n" );
    }
    else
    {
        printf("\n����ֵ�쳣");
        return;
    }

    printf("\n�ַ�������Ϊ:%d",strlen(sd_str));

    f_puts(sd_str, &fdst);                     //���ļ���д���ַ���

    f_sync(&fdst);                          //�ղ�д�������ݣ�ʵ�������ݲ�û�������д�룬��Ҫ���ô˺���ͬ�����߹ر��ļ����Ż�����д��

    size = f_size(&fdst);                   //��ȡ�ļ��Ĵ�С

    printf( "\n�ļ���СΪ��%d \n" , size);  //���ڴ�ӡ�ļ��Ĵ�С
    printf("\n �ļ���Ϊ %s \n",img_file_name);
    if(size > BUFF_SIZE)size = BUFF_SIZE;   //��ֹ���

    f_lseek(&fdst, 0);                      //��ָ��ָ���ļ�����
    f_read (&fdst, buff, size, &sizetmp);   //��ȡ

    //printf("�ļ�����Ϊ��\n%s", (char const *)buff);//���δ˴������ڼӿ��ٶ�
    
    f_close(&fdst);                         //�ر��ļ�
}


void  SD_saveimg(void)
{
    
     int i;
     im_num++;
     for_num=(CAMERA_H/60)*(CAMERA_H/60);
     for(i=0;i<for_num;i++)
     {
         save_img(i);
         DELAY_MS(20);
     }
}

