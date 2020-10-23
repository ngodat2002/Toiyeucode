#include <stdio.h>
#include<conio.h>
void main(){
	
	float com =0, sales_amt;
	printf("Enter the sales Amount:");
	scanf("%f",&sales_amt);
	if (sales_amt >=1000)
	com = sales_amt * 0.1;
	printf("\n Commission = %f",com);
	
}
