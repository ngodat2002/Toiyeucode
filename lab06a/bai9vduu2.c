#include <stdio.h>
main()
{
	int num1,num2,sum,i;
	sum=0;
	printf("\n Nhap num1:");
	scanf("%d",&num1);
	printf("\n Nhap num2:");
	scanf("%d",&num2);
	for(i=num1;i<=num2;i++)
	{
	
		if(i%2 !=0)
		sum+=i;
		
	}
			printf("Tong giua cac so le nam giua%d va %d la:%d",num1,num2,sum);
	}
		




