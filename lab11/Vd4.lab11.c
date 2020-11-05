#include <stdio.h>

main()
{
	int i;
	int min;
	int arr[10];
	for(i=0;i<10;i++)
	{
			printf("\Nhap %d:",i);
		scanf("%d",&arr[i]);
	}
	min=arr[0];
	for(i=0;i<10;i++)
	{
		
	if(arr[i]<min)
	min=arr[i];

}
	indexMin(min);
	
}
int indexMin(min)
{
printf("Min :%d",min);
}

