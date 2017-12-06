#include<stdio.h>
int img[60][80];


void input(void)
{
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
		   img[i][j]=x; 
		   //printf("%d ",x);	
		}
	}
	fclose(fpread);
}

void out(void)
{
	FILE *fwrite;
}


int main()
{

	int i,j;
	input();
	for(i=0;i<60;i++)
	{
		for(j=0;j<80;j++)
		{
		   printf("%d ",img[i][j]);	
		}
		printf("\n");
	}
//	fclose(fpread);
//	printf("%c\n",num);

} 
