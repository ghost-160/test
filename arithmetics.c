#include <stdio.h>
#include <string.h>

int main(){

    int operation=0;
    float variable1=0.0;
    float variable2=0.0;
    float result=0.0;

    printf("Enter your two numbers :\n");
    scanf("%f%f",&variable1,&variable2);
    printf("Enter 1 for addition ,2 for subtraction ,3 for division,4 for multiplication :");
    scanf("%d",&operation);

    switch(operation)
    {
        case 1:
        printf("The added result=%.02f : ",variable1+variable2);
        break;
        case 2:
        printf("The subtracted result=%.02f : ",variable1-variable2);
        break;
        case 3:
        printf("The divided result=%.02f : ",variable1/variable2);
        break;
        case 4:
        printf("The multiplied result=%.02f : ",variable1*variable2);
        break;
    }
    
    return 0;
}