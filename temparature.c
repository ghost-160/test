#include<stdio.h>
#include<ctype.h>

int main(){


    char choice ='\0';
    float celsius=0.0;
    float fahrenheit=0.0;

    printf("Enter C for celsius and F for fahrenheit \n");
    scanf("%c",&choice);
    choice=toupper(choice);

    if(choice == 'C'){
        printf("Enter the celsius \n");
        scanf("%f",&celsius);
        fahrenheit=(celsius*9/5)+32;
        printf("Your Fahrenheit= %f ",fahrenheit);
    }else if(choice=='F')
    {
         printf("Enter the Fahrenheit \n");
        scanf("%f",&fahrenheit);
        celsius=(fahrenheit-32)*5/9;
        printf("Your celsius = %f ",celsius);
    }else{
        printf("Invalid choice ");
    }
    return 0;
}