#include <stdio.h>
main()
{
	int age,a;
	char name[150];
	printf("\n Nhap Ten :");
	gets(name);
	printf("\n Nhap Tuoi:");
	scanf("%d",&age);
	for(a=0;a<=age;a++)
	{
		printf("Hello %s Time %d \n",name,a+1);
	}
}
