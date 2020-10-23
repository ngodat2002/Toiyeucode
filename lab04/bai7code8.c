#include <stdio.h>
void main(){
	int productcode;
	float orderamout, rate =0.0;
	printf("\n Please enter the order amout:");
	scanf("%f",&orderamout);
	
	if (productcode ==1)
	{
		if (orderamout >=500)
		 rate = 0.12;
		 else if (orderamout >=300)
		 rate = 0.08;
		 else
		 rate = 0.02;
		 
	}
	else if (productcode ==2)
	{
			if (orderamout >=2000)
		 rate = 0.10;
		 else if (orderamout >=1500)
		 rate = 0.05;
		
	}
	else if (productcode==3)
	{
		if (orderamout>=5000)
		rate = 0.10;
		else if (orderamout >=2500)
		rate = 0.05;
		
	}
	orderamout-= orderamout * rate;
	printf("The net order amout is % .2f \n",orderamout);
	
}
