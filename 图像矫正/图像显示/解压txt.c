#include<stdio.h>
int main()
{
	char num;
	int i,j;
	FILE *fpread;
	FILE *fwrite;
	
	fpread=fopen("i.txt","r");//matlabœ‘
	fwrite=fopen("write.txt","w");
	
	
	for(i=0;i<60;i++)
	{
		for(j=0;j<80;j++)
		{
				
			fprintf(fwrite,"%d ",i);
		}
		//fscanf(fpread,"%c",&num);
	    fprintf(fwrite,"\n");
	}
	

	
//	printf("%c\n",num);

} 
