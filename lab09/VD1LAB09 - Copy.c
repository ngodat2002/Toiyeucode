#include <stdio.h>
main()
{
	int intarr[10];
	int i;
	for(i=0;i<10;i++)
	{
		printf("\n Nhap mang[%d]:",i);
		scanf("%d",&intarr[i]);
		
	}
	for(i=0;i<10;i+=2)
	{
		printf("\n arr[%d]",i);	}
}
