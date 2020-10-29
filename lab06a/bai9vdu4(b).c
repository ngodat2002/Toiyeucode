#include <stdio.h>
main()
{
	int i,j,k;
	i=0;
	printf("NHAP VAO MOT SO:");
	scanf("%d",&i);
	printf("\n");
	for(j=i;j>=0;j--)
	{
		printf("\n");
		for(k=0;k<j;k++)
		printf("%d",k+1);
	}
}
