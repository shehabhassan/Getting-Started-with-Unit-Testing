#include <stdio.h>
#include "average.h"

float arr[] = {5,12,-3,1,2,8};

int main(void)
{
	/* code */
	float avarge = avarage_function(arr,6);
	
    printf("avarage : %f \r \n", avarge);
	return 0;
}