#include "average.h"



float avarage_function(float arr[],int size){
   
    float total = 0;
    for (unsigned int i = 0; i < size; ++i)
    {
    	/* code */
        total+=arr[i];  
    }
	return total/(float)size;
}