/*

�˳������ڿ�����ʱʹ��



*/


#include "allheader.h" 
#include "receive.h"
#include "control_car.h"
#define BUFF_SIZE   30000//���ڰ�ͼ�� ���浽SD��


char img_file_name[20];
int im_num=0;





  /*******************************/
    FIL     fdst;   //�ļ�
    FATFS   fs;     //�ļ�ϵͳ

    uint32 size, sizetmp;
    int res;
    char sd_str[20000];
    char sd_cat[20];
    
    
    uint8 buff[BUFF_SIZE];
    
    
    
  void  SD_saveimg(void)
{
/***********************һ��Ϊ��ͼ������ַ�����********************************/    
    int i,j;
    sd_str[0]='\0';
    for(i=0;i<60;i++)
    {
	for(j=0;j<80;j++)
	{
		if(j==79)
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
    
     im_num++;
     
     sprintf(img_file_name, "0:/day1/%d.txt",im_num);
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

    if(size > BUFF_SIZE)size = BUFF_SIZE;   //��ֹ���
    printf("��%d��ͼƬ\n",im_num);

    f_lseek(&fdst, 0);                      //��ָ��ָ���ļ�����
    f_read (&fdst, buff, size, &sizetmp);   //��ȡ

    //printf("�ļ�����Ϊ��\n%s", (char const *)buff);//���δ˴������ڼӿ��ٶ�
    
    f_close(&fdst);                         //�ر��ļ�
}

