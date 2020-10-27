#include <stdio.h>
int main(){
	int a,b,c;
	printf("\n Nhap vao so a:");
	scanf("%d",&a);
	printf("\n Nhap vao so b:");
	scanf("%d",&b);
	c=a-b;
	if(c==a)
		printf("\n c=a");
	else if(c==b)
	    printf("\n c=b");
	else
	printf("\n c#a#b");
}
