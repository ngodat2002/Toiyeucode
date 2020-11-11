#include <stdio.h>
main()
{
	int a[10];
	int i,j;
	for(i=0;i<10;i++)
	{
		printf("Mang a[%d]",i+1);
		scanf("%d",&a[i]);
	}
	for(j=9;j>=0;j--)
	{
		printf("Display in the reversed order:\n");
		printf("%d \t\n",a[j]);
	}
}
