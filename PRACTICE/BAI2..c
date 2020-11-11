#include<stdio.h>
int smallest_index(int a[],int n);
main()
{
	int n;
	int a[n];
	int min;
	
	printf("Nhap so phan tu cua mang:");
	scanf("%d",&n);
	printf("\nNhap mang:\n");
	smallest_index(a,n);	
}

int smallest_index(int a[],int n)
{
	int i,min,j;
		for(i=0;i<n;i++)
	{
		printf("a[%d]:",i+1);
		fflush(stdin);
		scanf("%d",&a[i]);
	}
	
	min=a[0];
	for(i=0;i<n;i++)
	{
		if(a[i]<min)
		{
			min=a[i];
			j=i;
		}
	}
	
	printf("Phan tu nho nhat la:%d",min);
	printf("\t xuat hien tai vi tri %d",j+1);
}






