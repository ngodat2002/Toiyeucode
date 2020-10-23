#include <stdio.h>
void main(){
	printf("The number 555.55 in various forms: \n");
	printf("In float forn without modifier: \n");
	printf("[%f]\n",555.55);
	printf("In exponential form with - modifier: \n");
	printf("[%e]\n",555.55);
	printf("In float forn without- modifier: \n");
    printf("[%-f]\n",555.55);
    printf("In float form with digit string 10.3 as modifier \n");
    printf("[%10.3f]\n",555.55);
    printf("In float form with 0  as modifier:\n");
    printf("[%0f]\n",555.55);
    printf("In float form with 0 and digit string 10.3:\n");
    printf("as modifier : \n");
    printf("[%010.3f]\n",555.55);
    printf("In float form with -,0");
    printf("and digit string 10.3 as modifier :\n");
    printf("[%-010.3f]\n",555.55);
    printf("In exponential form with 0");
    printf("and gifit string 10.3 as modifier: \n");
    printf(" [%010.3e]\n",555.55);
    printf("In exponential form with -, 0");
    printf("and digit string 10.3 as modifier : \n");
    printf("[%-010.3e]\n\n",555.55);
    

}
