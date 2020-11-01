#include <stdio.h>
main()
{
	int a,b,c;
	printf("\n Nhap a:");
	scanf("%d",&a);
	printf("\n Nhap b:");
	scanf("%d",&b);
	for(c=a;c<=b;c++)
	{
		if(c%50==0)
		printf("\t %d",c);
	}
}
