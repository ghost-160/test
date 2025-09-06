#include<stdio.h>
int main(){

    char operator ='\0';
    float num1=0.0;
    float  num2=0.0;
    float result=0.0;

    printf("Enter the first number ");
    scanf("%f",&num1);

    printf("Enter the operator (+,-,*,/) ");
    scanf(" %c",&operator);

    printf("Enter the second number ");
    scanf("%f",&num2);

    switch(operator){
        case '+':
        result=num1+num2;
        break;
        case '-':
        result=num1-num2;
        break;
        case '/':
        if(num2==0){
            printf("You can't divide by zero \n");
        }else{
        result=num1/num2;
        }
        break;
        case '*':
        result=num1*num2;
        break;
        default:
        printf("Enter a valid operator ");
    }
    printf("The result = %.4f ",result);
    return 0;
}