#include<stdio.h>

int main(){

    int choice=0;
    float kilogram=0.0;
    float pounds=0.0;

    printf("Enter 1 for kilogram to pounds \n Enter 2 for pounds to kilogram \n");
    scanf("%d",&choice);

    if(choice==1)
    {
        printf("Enter your kilograms \n ");
        scanf("%f",&kilogram);
        pounds=kilogram * 2.20462;
        printf("your gPounds = %.3f \n",pounds);
    }else if(choice==2)
    {
        printf("Enter your pounds \n ");
        scanf("%f",&pounds);
        kilogram=pounds/2.20462;
        printf("your kilogram = %.3f \n",kilogram);
    }else
    {
        printf("Invalid input \n");
    }
    return 0;
}