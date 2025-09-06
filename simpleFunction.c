#include<stdio.h>

int square(int num){
    int result=num*num;
    return result;
}

int main(){

    int num=0.0;
    printf("Enter the number to be squared ");
    scanf("%d",&num);

    
    int x =square(num);
    printf("the square of %d is = %d " ,num,x);
}
