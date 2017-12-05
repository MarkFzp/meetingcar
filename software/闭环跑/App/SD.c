/*

此程序用于开环临时使用



*/


#include "allheader.h" 
#include "receive.h"
#include "control_car.h"
#define BUFF_SIZE   30000//用于把图像 保存到SD卡


char img_file_name[20];
int im_num=0;





  /*******************************/
    FIL     fdst;   //文件
    FATFS   fs;     //文件系统

    uint32 size, sizetmp;
    int res;
    char sd_str[20000];
    char sd_cat[20];
    
    
    uint8 buff[BUFF_SIZE];
    
    
    
  void  SD_saveimg(void)
{
    
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

  
  
  
  
  
  
  
    memset(buff,0,BUFF_SIZE);

    f_mount(0, &fs);                                                               //挂载文件系统

    //初始化 SD卡 在 f_open 上执行,目前代码只支持打开一个文件(由 _FS_SHARE 配置)，频繁打开文件会消耗CPU资源
    
     im_num++;
     
     sprintf(img_file_name, "0:/%d.txt",im_num);
     res = f_open(&fdst,img_file_name, FA_OPEN_ALWAYS | FA_WRITE | FA_READ);  //打开文件，如果没有就创建，带读写打开

    if( res == FR_DISK_ERR)
    {
        printf( "\n没插入SD卡??\n" );
        return;
    }
    else if ( res == FR_OK )
    {
        printf( "\n文件打开成功 \n" );
    }
    else
    {
        printf("\n返回值异常");
        return;
    }

    printf("\n字符串长度为:%d",strlen(sd_str));

    f_puts(sd_str, &fdst);                     //往文件里写入字符串

    f_sync(&fdst);                          //刚才写入了数据，实际上数据并没真正完成写入，需要调用此函数同步或者关闭文件，才会真正写入

    size = f_size(&fdst);                   //获取文件的大小

    printf( "\n文件大小为：%d \n" , size);  //串口打印文件的大小

    if(size > BUFF_SIZE)size = BUFF_SIZE;   //防止溢出

    f_lseek(&fdst, 0);                      //把指针指向文件顶部
    f_read (&fdst, buff, size, &sizetmp);   //读取

    printf("文件内容为：\n%s", (char const *)buff);
    f_close(&fdst);                         //关闭文件
}

