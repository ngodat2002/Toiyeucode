#include <stdio.h>
main()
{
int x,y,z;
printf("\n NHAP VAO NUM1:");
scanf("%d",&x);
for(y=1;y<=10;y++)

{
	z=x*y;
	printf("\t%d*%d=%d ",x,y,z);
}
}
