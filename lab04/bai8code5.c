#include<stdio.h>
void main(){
	int num1, num2, res;
	char op;
	num1=90;
	num2=33;
	op = '-';
	switch (op)
	{
		case'+':
			res=num1+num2;
			printf("\n The sum is: %d",res);
			break;
			case '-':
			res= num1-num2;
			printf("\n Number after subtraction: %d", res);
			break;
			case'/':
			res = num1/num2;
			printf("\n Number after division: %d",res);
			break;
			case'*':
			res = num1*num2;
			printf("\n Number after multiplipcation: %d",res);
			break;
			default:
			printf("\n Invalid");
			break;
			
			
	}
}
