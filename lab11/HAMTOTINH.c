#include<stdio.h>
int check(char gt,int ns);
int say();
void Break();
void love();
main()
{
	char name[150];
	int age;
	char gt;
	printf("Enter profile::");
	printf("\nEnter name:");
	gets(name);
	printf("Enter age:");
	scanf("%d",&age);
	fflush(stdin);
	printf("Gioi tinh:g/b:");
	scanf("%c",&gt);

	check(gt,age);
}
int check(char gt,int age)
{

	if(gt=='g')
	{
		if(age<=24&&age>=18)
		{
			say();
		}else{
			printf("Xl cta k thuoc ve nhau");
		}
	}else{
		printf("Bye");
	}
}
say()
{
	int i;
	char y;
	for(i=1;i<10;i++)
	{
		printf("\nFall in love %d <3",i);
	}
	fflush(stdin);
	printf("\nDo you love me?\ny/n:");
	scanf("%c",&y);
	if(y=='y')
	{
		love();	
	}else if(y='n')
	{
		Break();
	}else
	{
		printf("Sai ki tu.");
	}
}
love()
{
	int i,j,n=15;
	system("cls");
	for(i=n/2;i<=n;i+=2)
	{
		for(j=1;j<n-i;j+=2)
		{
			printf(" ");
		}
		for(j=1;j<=i;j++)
		{
			printf("*");
		}
		for(j=1;j<=n-i;j++)
		{
			printf(" ");
		}
		for(j=1;j<=i;j++)
		{
			printf("*");
		}
		printf("\n");
	}
		
		
	for(i=n;i>=1;i--)
	{
		for(j=i;j<n;j++)
		{
			printf(" ");
		}
		if(i==n)
		{
			for(j=1;j<=n;j++)
			{
				printf("*");
			}
			for(j=1;j<=n;j++)
			{
				printf("*");
			}
		}
		else
		{
			for(j=1;j<=(i*2)-1;j++)
			{
				printf("*");
			}
		}
		printf("\n");
	}		
}
Break()
{
	printf("\nThank you for the last time\nToT");
}




