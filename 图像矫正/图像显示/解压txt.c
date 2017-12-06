#include<stdio.h>
int main()
{
	char num;
	int i,j;
	FILE *fpread;
	FILE *fwrite;
	int x;
	fpread=fopen("3.TXT","r");//matlabœ‘
//	fwrite=fopen("write.txt","w");
	
	
	for(i=0;i<60;i++)
	{
		for(j=0;j<80;j++)
		{
		   fscanf(fpread,"%d",&x);
		   printf("%d ",x);	
		}
	}
	fclose(fpread);

 
	
//	printf("%c\n",num);

} 
