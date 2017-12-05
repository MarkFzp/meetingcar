#include<stdio.h>
#include<string.h>
char sd_str[100000];
char sd_cat[20];
int main()
{
	int i,j;
	sd_str[0]='\0';
	for(i=0;i<60;i++)
	{
		for(j=0;j<60;j++)
		{
			if(j==79)
			sprintf(sd_cat,"%d\n",1);
			else
			sprintf(sd_cat,"%d ",1);
			
		   // printf("%s\n",sd_cat);
			strcat(sd_str,sd_cat); 
		}
		    
	 } 
	 printf("%s",sd_str);
	
} 
