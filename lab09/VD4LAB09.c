#include<stdio.h>
main()
{
	char name[5][30];
	int i;
	for(i=0;i<5;i++)
	{
		printf("\n Nhap ten%d:",i);
		gets(name[i]);
	}
	for(i=0;i<5;i++)
	{
	
		printf("Hoc vien:%s\n",name[i]);
	}
}
